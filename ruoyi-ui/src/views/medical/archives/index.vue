<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="姓名" prop="name">
        <el-input v-model="queryParams.name" placeholder="请输入姓名" clearable size="small"
          @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="操作人" prop="id">
        <el-input v-model="queryParams.id" placeholder="请输入操作人" clearable size="small"
          @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="身份证" prop="code">
        <el-input v-model="queryParams.code" placeholder="请输入身份证" clearable size="small"
          @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="性别" prop="sex">
        <el-select v-model="queryParams.sex" placeholder="请选择性别" clearable size="small">
          <el-option v-for="dict in dict.type.sys_user_sex" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleJd"
          v-hasPermi="['medical:archives:add']">建档</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-plus" size="mini" :disabled="single" @click="handleBk"
          v-hasPermi="['medical:archives:edit']">办卡</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate"
          v-hasPermi="['medical:archives:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="el-icon-download" size="mini" :loading="exportLoading"
          @click="handleExport" v-hasPermi="['medical:archives:export']">导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="archivesList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="个人档案id" align="center" prop="id" />
      <el-table-column label="姓名" align="center" prop="name" />
      <el-table-column label="年龄" align="center" prop="age" />
      <el-table-column label="身份证" align="center" prop="code" />
      <el-table-column label="性别" align="center" prop="sex">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_user_sex" :value="scope.row.sex" />
        </template>
      </el-table-column>
      <el-table-column label="操作人" align="center" prop="tmd.doUser" />
      <el-table-column label="建档日期" align="center" prop="tmd.doTime" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['medical:archives:edit']">修改</el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleBk(scope.row)"
            v-hasPermi="['medical:archives:edit']">办卡</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改个人档案对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item v-show="show" label="姓名" prop="name">
          <el-input v-model="form.name" placeholder="请输入姓名" />
        </el-form-item>
        <el-form-item v-show="show" label="年龄" prop="age">
          <el-input v-model="form.age" placeholder="请输入年龄" />
        </el-form-item>
        <el-form-item v-show="show" label="身份证" prop="code">
          <el-input v-model="form.code" placeholder="请输入身份证" :disabled="!pdMoney" />
        </el-form-item>
        <el-form-item v-show="show" label="性别">
          <el-radio-group v-model="form.sex">
            <el-radio v-for="dict in dict.type.sys_user_sex" :key="dict.value" :label="dict.value">{{dict.label}}
            </el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item v-show="pdMoney" label="金额" prop="money">
          <el-input v-model="money" placeholder="请输入金额" />
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
    listArchives,
    getArchives,
    delArchives,
    updateArchives,
    exportArchives,
    jdArchives,
    getCostInfoArchives
  } from "@/api/medical/archives";

  export default {
    name: "Archives",
    dicts: ['sys_user_sex'],
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
        // 个人档案表格数据
        archivesList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          name: null,
          id: null,
          code: null,
          sex: null
        },
        // 表单参数
        form: {},
        money: null,
        // 表单校验
        rules: {},
        pdMoney: false,
        show: true
      };
    },
    created() {
      this.getList();
    },
    methods: {
      /** 查询个人档案列表 */
      getList() {
        this.loading = true;
        listArchives(this.queryParams).then(response => {
          this.archivesList = response.rows;
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
          name: null,
          age: null,
          code: null,
          sex: "0"
        };
        this.money = null;
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
      /** 建档 */
      handleJd() {
        this.reset();
        this.pdMoney = true;
        this.show = true;
        this.open = true;
        this.title = "建立个人档案";
      },
      /** 办卡 */
      handleBk(row) {
        const id = row.id || this.ids[0];
        getCostInfoArchives(id).then(response => {
          if (response.data) {
            this.msgError("已有启用的门诊卡，不可再办!");
          } else {
            this.reset();
            this.form.id = id;
            this.pdMoney = true;
            this.show = false;
            this.open = true;
            this.title = "办卡 ";
          }
        });
      },
      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset();
        this.pdMoney = false;
        this.show = true;
        const id = row.id || this.ids;
        getArchives(id).then(response => {
          this.form = response.data;
          this.open = true;
          this.title = "修改个人档案";
        });
      },
      /** 提交按钮 */
      submitForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            if (this.form.id != null && this.money == null) {
              updateArchives(this.form).then(response => {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              });
            } else if (this.form.id != null && this.money != null) {
              let form = {
                "archives": this.form,
                "money": this.money
              };
              jdArchives(form).then(response => {
                this.msgSuccess("办卡成功");
                this.open = false;
                this.getList();
              });
            } else {
              let form = {
                "archives": this.form,
                "money": this.money
              };
              jdArchives(form).then(response => {
                this.msgSuccess("建档成功");
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
        this.$confirm('是否确认删除个人档案编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delArchives(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {});
      },
      /** 导出按钮操作 */
      handleExport() {
        const queryParams = this.queryParams;
        this.$confirm('是否确认导出所有个人档案数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportArchives(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {});
      }
    }
  };
</script>
