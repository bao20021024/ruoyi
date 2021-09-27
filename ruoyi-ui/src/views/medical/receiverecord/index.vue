<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="门诊卡信息id" prop="outpatientId">
        <el-input
          v-model="queryParams.outpatientId"
          placeholder="请输入门诊卡信息id"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生id" prop="doctorId">
        <el-input
          v-model="queryParams.doctorId"
          placeholder="请输入医生id"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
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
      <el-form-item label="创建时间" prop="createTime">
        <el-date-picker clearable size="small"
                        v-model="queryParams.createTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="选择创建时间">
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
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['medical:receiverecord:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['medical:receiverecord:edit']"
        >修改
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['medical:receiverecord:remove']"
        >删除
        </el-button>
      </el-col>
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
      <el-table-column label="接诊记录id" align="center" prop="opDoctorReceiveRecordId"/>
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
              icon="el-icon-edit"
              @click="handleJie(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >接诊
            </el-button>
          </template>
          <template v-if="scope.row.status == 2">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleCheck(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >检查
            </el-button>
          </template>
          <template v-if="scope.row.status == 3">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleAll(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >检查详情
            </el-button>
          </template>
          <template v-if="scope.row.status == 2 || scope.row.status==4">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleZhen(scope.row)"
              v-hasPermi="['medical:receiverecord:edit']"
            >诊断
            </el-button>
          </template>

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['medical:receiverecord:edit']"
          >修改
          </el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['medical:receiverecord:remove']"
          >删除
          </el-button>
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

    <!-- 添加或修改接诊记录对话框 -->
    <!--<el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="门诊卡信息id" prop="outpatientId">
          <el-input v-model="form.outpatientId" placeholder="请输入门诊卡信息id"/>
        </el-form-item>
        <el-form-item label="医生id" prop="doctorId">
          <el-input v-model="form.doctorId" placeholder="请输入医生id"/>
        </el-form-item>
        <el-form-item label="类型">
          <el-radio-group v-model="form.type">
            <el-radio
              v-for="dict in dict.type.medical_bill_type"
              :key="dict.value"
              :label="parseInt(dict.value)"
            >{{dict.label}}
            </el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="状态" prop="status">
          <el-select v-model="form.status" placeholder="请选择状态">
            <el-option
              v-for="dict in dict.type.medical_receiveRecord_status"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>-->

    <!-- 添加或修改医生看病流程对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="消费事项" prop="partName">
          <el-select v-model="form.partName" placeholder="请输入消费事项">
            <el-option
              v-for="dict in dict.type.medical_money_item"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="事项数量" prop="partNumber">
          <el-input v-model="form.partNumber" placeholder="请输入事项数量"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 检查详情 -->
    <el-dialog>

      <!--      <el-table v-loading="loading" :data="actionList" @selection-change="handleSelectionChange">-->
      <!--        <el-table-column type="selection" width="55" align="center" />-->
      <!--        <el-table-column label="医生看病流程id" align="center" prop="id" />-->
      <!--        <el-table-column label="消费事项" align="center" prop="partName" />-->
      <!--        <el-table-column label="事项数量" align="center" prop="partNumber" />-->
      <!--        <el-table-column label="患者类型" align="center" prop="personType">-->
      <!--          <template slot-scope="scope">-->
      <!--            <dict-tag :options="dict.type.medical_bill_type" :value="scope.row.personType"/>-->
      <!--          </template>-->
      <!--        </el-table-column>-->
      <!--        <el-table-column label="单价" align="center" prop="partMoney" />-->
      <!--        <el-table-column label="类型" align="center" prop="type">-->
      <!--          <template slot-scope="scope">-->
      <!--            <dict-tag :options="dict.type.medical_money_type" :value="scope.row.type"/>-->
      <!--          </template>-->
      <!--        </el-table-column>-->
      <!--        <el-table-column label="门诊医生接诊记录id/医嘱记录id" align="center" prop="opDoctorReceiveRecordId" />-->
      <!--        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">-->
      <!--          <template slot-scope="scope">-->
      <!--            <el-button-->
      <!--              size="mini"-->
      <!--              type="text"-->
      <!--              icon="el-icon-edit"-->
      <!--              @click="handleUpdate(scope.row)"-->
      <!--              v-hasPermi="['medical:action:edit']"-->
      <!--            >修改</el-button>-->
      <!--            <el-button-->
      <!--              size="mini"-->
      <!--              type="text"-->
      <!--              icon="el-icon-delete"-->
      <!--              @click="handleDelete(scope.row)"-->
      <!--              v-hasPermi="['medical:action:remove']"-->
      <!--            >删除</el-button>-->
      <!--          </template>-->
      <!--        </el-table-column>-->
      <!--      </el-table>-->

      <!--      <pagination-->
      <!--        v-show="total>0"-->
      <!--        :total="total"-->
      <!--        :page.sync="queryParams.pageNum"-->
      <!--        :limit.sync="queryParams.pageSize"-->
      <!--        @pagination="getList"-->
      <!--      />-->

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
    kanAction
  } from "@/api/medical/receiverecord";

  export default {
    name: "Receiverecord",
    dicts: ['medical_bill_type', 'medical_receiveRecord_status', 'medical_money_item'],
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
        rules: {}
      };
    },
    created() {
      this.getList();
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
      /** 检查 */
      handleCheck(row) {
        this.reset();
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId;
        this.form.opDoctorReceiveRecordId = opDoctorReceiveRecordId;
        this.form.tmor = row;
        this.open = true;
        this.title = "患者需做检查";
      },
      /** 检查详情 */
      handleAll(row) {

      },
      /** 诊断 */
      handleZhen(row) {
        this.reset();
        const opDoctorReceiveRecordId = row.opDoctorReceiveRecordId || this.ids[0];

      },
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
