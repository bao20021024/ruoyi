<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="类型" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择类型" clearable size="small">
          <el-option
            v-for="dict in dict.type.medical_doctorsOrder_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择状态" clearable size="small">
          <el-option
            v-for="dict in dict.type.medical_doctorsOrder_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="生成时间" prop="createTime">
        <el-date-picker clearable size="small"
                        v-model="queryParams.createTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="选择医嘱生成时间">
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
          v-hasPermi="['medical:doctorsorder:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="doctorsorderList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="类型" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_doctorsOrder_type" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="type">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_doctorsOrder_status" :value="scope.row.type"/>
        </template>
      </el-table-column>
      <el-table-column label="医嘱描述" align="center" prop="description">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_money_item" :value="scope.row.description"/>
        </template>
      </el-table-column>
      <el-table-column label="生成时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
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

    <!-- 添加或修改医嘱记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者id" prop="personId">
          <el-input v-model="form.personId" placeholder="请输入患者id"/>
        </el-form-item>
        <el-form-item label="主治医生d" prop="doctorId">
          <el-input v-model="form.doctorId" placeholder="请输入主治医生d"/>
        </el-form-item>
        <el-form-item label="类型">
          <el-radio-group v-model="form.status">
            <el-radio
              v-for="dict in dict.type.medical_doctorsOrder_type"
              :key="dict.value"
              :label="parseInt(dict.value)"
            >{{dict.label}}
            </el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="状态" prop="type">
          <el-select v-model="form.type" placeholder="请选择状态">
            <el-option
              v-for="dict in dict.type.medical_doctorsOrder_status"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="医嘱描述" prop="description">
          <el-input v-model="form.description" placeholder="请输入医嘱描述"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import {
    listDoctorsorder,
    getDoctorsorder,
    delDoctorsorder,
    addDoctorsorder,
    updateDoctorsorder,
    exportDoctorsorder
  } from "@/api/medical/doctorsorder";

  export default {
    name: "Doctorsorder",
    dicts: ['medical_doctorsOrder_type', 'medical_doctorsOrder_status', 'medical_money_item'],
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
        // 医嘱记录表格数据
        doctorsorderList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          personId: null,
          doctorId: null,
          status: null,
          type: null,
          description: null,
          createTime: null
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
      /** 查询医嘱记录列表 */
      getList() {
        this.loading = true;
        listDoctorsorder(this.queryParams).then(response => {
          this.doctorsorderList = response.rows;
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
          status: 0,
          type: null,
          description: null,
          createTime: null
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
        this.ids = selection.map(item => item.id)
        this.single = selection.length !== 1
        this.multiple = !selection.length
      },
      /** 新增按钮操作 */
      handleAdd() {
        this.reset();
        this.open = true;
        this.title = "添加医嘱记录";
      },
      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset();
        const id = row.id || this.ids
        getDoctorsorder(id).then(response => {
          this.form = response.data;
          this.open = true;
          this.title = "修改医嘱记录";
        });
      },
      /** 提交按钮 */
      submitForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            if (this.form.id != null) {
              updateDoctorsorder(this.form).then(response => {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              });
            } else {
              addDoctorsorder(this.form).then(response => {
                this.msgSuccess("新增成功");
                this.open = false;
                this.getList();
              });
            }
          }
        });
      },
      /** 删除按钮操作 */
      handleDelete(row) {
        const ids = row.id || this.ids;
        this.$confirm('是否确认删除医嘱记录编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function () {
          return delDoctorsorder(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {
        });
      },
      /** 导出按钮操作 */
      handleExport() {
        const queryParams = this.queryParams;
        this.$confirm('是否确认导出所有医嘱记录数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportDoctorsorder(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {
        });
      }
    }
  };
</script>
