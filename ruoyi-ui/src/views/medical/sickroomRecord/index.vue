<template>
  <div class="app-container">

    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="outpatientId">
        <el-input v-model="queryParams.outpatientId" placeholder="请输入患者姓名" clearable size="small"
                  @keyup.enter.native="handleQuery"/>
      </el-form-item>
      <el-form-item label="医生名称" prop="doctorId">
        <el-input v-model="queryParams.doctorId" placeholder="请输入医生名称" clearable size="small"
                  @keyup.enter.native="handleQuery"/>
      </el-form-item>
      <el-form-item label="分床时间" prop="createTime">
        <el-date-picker clearable size="small"
                        v-model="queryParams.createTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="选择分床时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="receiverecordList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="患者名称" align="center" prop="coi.cpa.name"/>
      <el-table-column label="接诊医生" align="center" prop="user.nickName"/>
      <el-table-column label="床位名称" align="center" prop="coi.cpa.cs.cb.name"/>
      <el-table-column label="分床时间" align="center" prop="coi.cpa.cs.createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.coi.cpa.cs.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_receiveRecord_status" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="门诊卡状态" align="center" prop="coi.status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_outpatient_status" :value="scope.row.coi.status"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <template v-if="scope.row.coi.cpa.cs.cb == null && scope.row.status == 5 && scope.row.coi.status == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleFen(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >分床
            </el-button>
          </template>
          <template v-if="(scope.row.status == 8 || scope.row.status == 6) && scope.row.coi.status == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-plus"
              @click="handleKai(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >开药
            </el-button>
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleWan(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >完成开药
            </el-button>
          </template>
          <template v-if="scope.row.status >5 && scope.row.coi.status == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-search"
              @click="handleZhen(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >诊断详情
            </el-button>
            <el-button
              size="mini"
              type="text"
              icon="el-icon-search"
              @click="handleYao(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >用药详情
            </el-button>
          </template>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 分床 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="床位" prop="bedId">
          <el-cascader v-model="form.bedId" :options="options" clearable :show-all-levels="false"/>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input type="textarea" v-model="form.remark" placeholder="请输入备注"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 开药 -->
    <el-dialog title="治疗方案开药" :visible.sync="yaoOpen" width="500px" @close="yaoCancel" append-to-body>
      <el-form ref="yao" :model="yao" :rules="yaoRules" label-width="80px">
        <el-form-item label="药名" prop="drugsId">
          <el-select v-model="yao.drugsId" placeholder="请选择药品">
            <el-option
              v-for="y in yaoList"
              :key="y.id"
              :label="y.name"
              :value="y.id"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="数量" prop="partNumber">
          <el-input v-model.number="yao.partNumber" placeholder="请输入药品数量"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitYao">确 定</el-button>
        <el-button @click="yaoCancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 用药详情 -->
    <el-dialog title="用药详情" :visible.sync="allYaoOpen" width="800px" append-to-body>

      <el-table v-loading="loading" :data="allYao">
        <el-table-column label="药品名称" align="center" prop="di.name"/>
        <el-table-column label="药品规格" align="center" prop="di.specifications"/>
        <el-table-column label="药品单位" align="center" prop="di.unit">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.medical_drugs_unit" :value="scope.row.di.unit"/>
          </template>
        </el-table-column>
        <el-table-column label="单价" align="center" prop="di.money"/>
        <el-table-column label="数量" align="center" prop="partNumber"/>
        <el-table-column label="小计" align="center">
          <template slot-scope="scope">
            <span>{{sum(scope.row.di.money,scope.row.partNumber)}}</span>
          </template>
        </el-table-column>
      </el-table>
    </el-dialog>

    <el-dialog title="诊断详情" :visible.sync="zhenOpen" width="500px" append-to-body>
      <el-form :model="zhen" label-width="80px">
        <el-form-item label="所患病名" prop="name">
          <el-input v-model="zhen.name" disabled/>
        </el-form-item>
        <el-form-item label="症状" prop="description">
          <el-input v-model="zhen.description" disabled/>
        </el-form-item>
        <el-form-item label="医嘱" prop="remark">
          <el-input type="textarea" v-model="zhen.remark" disabled/>
        </el-form-item>
      </el-form>
    </el-dialog>

  </div>
</template>

<script>
  import {
    listReceiverecord,
    getListSickroom,
    addSplitbed,
    getInfoResult,
    getListDrugs,
    kaiResultHandle,
    yaoResultHandle,
    wanResultHandle
  } from "@/api/medical/sickroomRecord";

  export default {
    name: "SickroomRecord",
    dicts: ['medical_receiveRecord_status', 'medical_outpatient_status', 'medical_drugs_unit'],
    data() {
      return {
        // 遮罩层
        loading: true,
        // 导出遮罩层
        exportLoading: false,
        // 选中数组
        ids: [],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 显示搜索条件
        showSearch: true,
        // 总条数
        total: 0,
        // 接诊记录表格数据
        receiverecordList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          outpatientId: null,
          doctorId: null,
          type: null,
          status: null,
          createTime: null
        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {bedId: [{required: true, message: '请选择床位', trigger: 'blur'}]},
        options: [],
        yao: {},
        yaoOpen: false,
        yaoRules: {
          drugsId: [{required: true, message: '请选择药名', trigger: 'blur'}],
          partNumber: [{required: true, message: '数量不能为空', trigger: 'blur'},
            {type: 'number', message: '数量必须为正数'}]
        },
        yaoList: [],
        allYaoOpen: false,
        allYao: [],
        showView: false,
        zhenOpen: false,
        zhen: {}
      };
    },
    created() {
      this.getList();
    },
    computed: {
      sum: function () {
        return (money, num) => {
          return money * num;
        };
      }
    },
    methods: {
      /** 查询接诊记录列表 */
      getList() {
        this.loading = true;
        listReceiverecord(this.queryParams).then(response => {
          this.receiverecordList = response.rows;
          this.total = response.total;
          this.loading = false;
        });
      },
      // 取消按钮
      cancel() {
        this.open = false;
        this.reset();
      },
      // 表单重置
      reset() {
        this.form = {
          id: null,
          personId: null,
          doctorId: null,
          bedId: null,
          createTime: null,
          remark: null
        };
        this.resetForm("form");
      },
      yaoCancel() {
        this.yaoOpen = false;
        this.yaoReset();
      },
      yaoReset() {
        this.yao = {
          drugsId: null,
          partNumber: null,
          opDoctorResultId: null
        };
        this.resetForm("yao");
      },
      /** 搜索按钮操作 */
      handleQuery() {
        this.queryParams.pageNum = 1;
        this.getList();
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm("queryForm");
        this.handleQuery();
      },
      // 多选框选中数据
      handleSelectionChange(selection) {
        this.ids = selection.map(item => item.opDoctorReceiveRecordId)
        this.single = selection.length !== 1
        this.multiple = !selection.length
      },
      /** 新增按钮操作 */
      handleAdd() {
        this.reset();
        this.open = true;
        this.title = "添加接诊记录";
      },
      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset();
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId || this.ids
        getReceiverecord(opDoctorReceiveRecordId).then(response => {
          this.form = response.data;
          this.open = true;
          this.title = "修改接诊记录";
        });
      },
      /** 分床 */
      handleFen(row) {
        this.reset();
        this.form.id = row.opDoctorReceiveRecordId;
        this.form.personId = row.coi.personid;
        this.form.doctorId = row.doctorId;
        getListSickroom().then(resp => {
          this.options = resp.rows;
          this.title = "分床";
          this.open = true;
        });
      },
      /** 开药 */
      handleKai(row) {
        this.yaoReset();
        this.allYaoOpen = false;
        this.showView = true;
        getInfoResult(row.opDoctorReceiveRecordId).then(resp => {
          this.yao.opDoctorResultId = resp.data.opDoctorResultId;
          getListDrugs().then(resp => {
            this.yaoList = resp.rows;
          });

          this.yaoOpen = true;
        });
      },
      submitYao() {
        this.$refs["yao"].validate(valid => {
          if (valid) {
            kaiResultHandle(this.yao).then(resp => {
              this.msgSuccess("开药成功!");
              this.yaoOpen = false;
              this.getList();
            });
          }
        });
      },
      handleYao(row) {
        this.yao = row;
        getInfoResult(row.opDoctorReceiveRecordId).then(resp => {
          let opDoctorResultId = resp.data.opDoctorResultId;
          yaoResultHandle(opDoctorResultId).then(resp => {
            this.allYao = resp.rows;
            this.allYaoOpen = true;
          });
        });
      },
      handleWan(row) {
        getInfoResult(row.opDoctorReceiveRecordId).then(resp => {
          let opDoctorResultId = resp.data.opDoctorResultId;
          wanResultHandle(opDoctorResultId).then(resp => {
            this.msgSuccess("开药已完成!");
            this.allYaoOpen = false;
            this.getList();
          });
        });
      },
      handleZhen(row) {
        getInfoResult(row.opDoctorReceiveRecordId).then(resp => {
          this.zhen = resp.data;
          this.zhenOpen = true;
        });
      },
      /** 提交按钮 */
      submitForm() {
        this.form.bedId = this.form.bedId[2];
        this.$refs["form"].validate(valid => {
          if (valid) {
            addSplitbed(this.form).then(resp => {
              this.msgSuccess("已分配床位!");
              this.open = false;
              this.getList();
            });
          }
        });
      },
      /** 删除按钮操作 */
      handleDelete(row) {
        const opDoctorReceiveRecordIds = row.opDoctorReceiveRecordId || this.ids;
        this.$confirm('是否确认删除接诊记录编号为"' + opDoctorReceiveRecordIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function () {
          return delReceiverecord(opDoctorReceiveRecordIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {
        });
      },
      /** 导出按钮操作 */
      handleExport() {
        const queryParams = this.queryParams;
        this.$confirm('是否确认导出所有接诊记录数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportReceiverecord(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {
        });
      }
    }
  };
</script>
