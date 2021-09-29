<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="personId">
        <el-input v-model="queryParams.personId" placeholder="请输入患者姓名" clearable size="small"
                  @keyup.enter.native="handleQuery"/>
      </el-form-item>
      <el-form-item label="类型" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择类型" clearable size="small">
          <el-option
            v-for="dict in dict.type.medical_bill_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option
            v-for="dict in dict.type.medical_receiveRecord_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="接诊时间" prop="createTime">
        <el-date-picker clearable size="small"
                        v-model="queryParams.createTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="选择接诊时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          :loading="exportLoading"
          @click="handleExport"
          v-hasPermi="['medical:receiverecord:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="receiverecordList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="患者姓名" align="center" prop="coi.cpa.name"/>
      <el-table-column label="接诊医生" align="center" prop="user.nickName"/>
      <el-table-column label="患者类型" align="center" prop="type">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_bill_type" :value="scope.row.type"/>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_receiveRecord_status" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="接诊时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">

          <template v-if="scope.row.status == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-plus"
              @click="handleJie(scope.row)"
              v-hasPermi="['medical:receiverecord:jie']"
            >接诊
            </el-button>
          </template>
          <template v-if="scope.row.status == 2 || scope.row.status == 3 || scope.row.status == 4">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-plus"
              @click="handleCheck(scope.row)"
              v-hasPermi="['medical:receiverecord:jian']"
            >需做检查
            </el-button>
          </template>
          <template v-if="scope.row.status != 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-search"
              @click="handleAll(scope.row)"
              v-hasPermi="['medical:receiverecord:jianxq']"
            >检查详情
            </el-button>
          </template>
          <template v-if="scope.row.status == 2 || scope.row.status==4">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleZhen(scope.row)"
              v-hasPermi="['medical:receiverecord:zhen']"
            >诊断
            </el-button>
          </template>
          <template v-if="(scope.row.status == 5 || scope.row.status == 6) && scope.row.type == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-plus"
              @click="handleKai(scope.row)"
              v-hasPermi="['medical:receiverecord:kai']"
            >开药
            </el-button>
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleWan(scope.row)"
              v-hasPermi="['medical:receiverecord:wan']"
            >完成开药
            </el-button>
          </template>
          <template v-if="scope.row.status > 4 && scope.row.type == 1">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-search"
              @click="handleYao(scope.row)"
              v-hasPermi="['medical:receiverecord:kaixq']"
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

    <!-- 添加或修改医生看病流程对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="需做事项" prop="partName">
          <el-select v-model="form.partName" placeholder="请选择消费事项">
            <el-option
              v-for="dict in dict.type.medical_money_item"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="事项数量" prop="partNumber">
          <el-input v-model.number="form.partNumber" placeholder="请输入事项数量"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 检查详情 -->
    <el-dialog title="检查详情" :visible.sync="allOpen" width="800px" append-to-body>

      <el-button
        v-show="flag"
        type="primary"
        plain
        icon="el-icon-plus"
        size="mini"
        @click="handleCheck(form)"
        v-hasPermi="['medical:receiverecord:add']"
      >新增
      </el-button>

      <el-table v-loading="loading" :data="all">
        <el-table-column label="名称" align="center" prop="name">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.medical_money_item" :value="scope.row.name"/>
          </template>
        </el-table-column>
        <el-table-column label="单价" align="center" prop="money"/>
        <el-table-column label="类型" align="center" prop="type">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.medical_money_type" :value="scope.row.type"/>
          </template>
        </el-table-column>
        <el-table-column label="患者姓名" align="center" prop="personName"/>
        <el-table-column label="时间" align="center" prop="time">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.time, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="状态" align="center" prop="status" width="180">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.medical_money_status" :value="scope.row.status"/>
          </template>
        </el-table-column>
      </el-table>

    </el-dialog>

    <!-- 诊断 -->
    <el-dialog title="诊断结果" :visible.sync="duanOpen" width="500px" @close="duanCancel" append-to-body>
      <el-form ref="duan" :model="duan" :rules="duanRules" label-width="80px">
        <el-form-item label="病名" prop="name">
          <el-input v-model="duan.name" placeholder="请输入病名"/>
        </el-form-item>
        <el-form-item label="描述症状" prop="description">
          <el-input type="textarea" v-model="duan.description" placeholder="请输入描述症状"/>
        </el-form-item>
        <el-form-item label="患者类型" prop="opDoctorResultId">
          <el-radio-group v-model="duan.opDoctorResultId">
            <el-radio
              v-for="dict in dict.type.medical_bill_type"
              :key="dict.value"
              :label="parseInt(dict.value)"
            >{{dict.label}}
            </el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="医嘱" prop="remark">
          <el-input type="textarea" v-model="duan.remark" placeholder="请输入医嘱"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitDuan">确 定</el-button>
        <el-button @click="duanCancel">取 消</el-button>
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

  </div>
</template>

<script>
  import {
    listReceiverecord,
    getReceiverecord,
    delReceiverecord,
    addReceiverecord,
    updateReceiverecord,
    exportReceiverecord,
    kanAction,
    jianAction,
    duanAction,
    getInfoResult,
    getListDrugs,
    kaiResultHandle,
    yaoResultHandle,
    wanResultHandle
  } from "@/api/medical/receiverecord";

  export default {
    name: "Receiverecord",
    dicts: ['medical_bill_type', 'medical_receiveRecord_status', 'medical_money_item', 'medical_money_type', 'medical_money_status', 'medical_drugs_unit'],
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
          createTime: null,
        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {
          partName: [{required: true, message: '请选择事项', trigger: 'blur'}],
          partNumber: [{required: true, message: '数量不能为空', trigger: 'blur'},
            {type: 'number', message: '数量必须为正数'}]
        },
        all: [],
        allOpen: false,
        flag: true,
        duan: {},
        duanOpen: false,
        duanRules: {
          name: [{required: true, message: '请输入病名称', trigger: 'blur'}],
          description: [{required: true, message: '请输入描述症状', trigger: 'blur'}],
          opDoctorResultId: [{required: true, message: '请选择患者类型', trigger: 'blur'}]
        },
        yao: {},
        yaoOpen: false,
        yaoRules: {
          drugsId: [{required: true, message: '请选择药名', trigger: 'blur'}],
          partNumber: [{required: true, message: '数量不能为空', trigger: 'blur'},
            {type: 'number', message: '数量必须为正数'}]
        },
        yaoList: [],
        allYaoOpen: false,
        allYao: []
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
      duanCancel() {
        this.duanOpen = false;
        this.duanReset();
      },
      duanReset() {
        this.duan = {
          opDoctorResultId: null,
          name: null,
          remark: null,
          opDoctorReceiveRecordId: null,
          description: null
        };
        this.resetForm("duan");
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
      // 表单重置
      reset() {
        this.form = {
          id: null,
          partName: null,
          partNumber: null,
          personType: null,
          partMoney: null,
          type: null,
          opDoctorReceiveRecordId: null,
          tmor: null
        };
        this.resetForm("form");
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
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId || this.ids;
        getReceiverecord(opDoctorReceiveRecordId).then(response => {
          this.form = response.data;
          this.open = true;
          this.title = "修改接诊记录";
        });
      },
      /** 接诊 */
      handleJie(row) {
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId;
        updateReceiverecord({
          "opDoctorReceiveRecordId": opDoctorReceiveRecordId, "status": 2
        }).then(resp => {
          this.msgSuccess("接诊成功");
          this.getList();
        });
      },
      /** 需做检查 */
      handleCheck(row) {
        this.reset();
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId;
        this.form.opDoctorReceiveRecordId = opDoctorReceiveRecordId;
        this.form.tmor = row;
        this.allOpen = false;
        this.open = true;
        this.title = "患者需做检查";
      },
      /** 检查详情 */
      handleAll(row) {
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId;
        jianAction(opDoctorReceiveRecordId).then(resp => {
          this.all = resp.rows;

          let flag = true;
          for (let i = 0; i < this.all.length; i++) {
            let status = this.all[i].status;
            if (status == 1) {
              flag = false;
              break;
            }
          }

          if (flag && row.status == 3) {
            updateReceiverecord({
              "opDoctorReceiveRecordId": opDoctorReceiveRecordId, "status": 4
            }).then(resp => {
              this.msgSuccess("现有检查已完成!");
              this.getList();
            });
          }

          this.flag = !flag;

          this.form = row;
          this.allOpen = true;
        });
      },
      /** 诊断 */
      handleZhen(row) {
        this.duanReset();
        this.duan.opDoctorReceiveRecordId = row.opDoctorReceiveRecordId;
        this.duanOpen = true;
      },
      submitDuan() {
        this.$refs["duan"].validate(valid => {
          if (valid) {
            duanAction(this.duan).then(resp => {
              this.msgSuccess("诊断完成!");
              this.duanOpen = false;
              this.getList();
            });
          }
        });
      },
      /** 开药 */
      handleKai(row) {
        this.yaoReset();
        this.allYaoOpen = false;
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
      }
      ,
      handleWan(row) {
        getInfoResult(row.opDoctorReceiveRecordId).then(resp => {
          let opDoctorResultId = resp.data.opDoctorResultId;
          wanResultHandle(opDoctorResultId).then(resp => {
            this.msgSuccess("完成开药!");
            this.allYaoOpen = false;
            this.getList();
          });
        });
      }
      ,
      /** 提交按钮 */
      submitForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            kanAction(this.form).then(resp => {
              this.msgSuccess("已新增检查");
              this.reset();
              this.open = false;
              this.getList();
            });

          }
        });
      }
      ,
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
      }
      ,
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
