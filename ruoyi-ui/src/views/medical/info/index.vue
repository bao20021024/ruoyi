<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="金额" prop="money">
        <el-input v-model="queryParams.money" placeholder="请输入金额" clearable size="small"
                  @keyup.enter.native="handleQuery"/>
      </el-form-item>
      <el-form-item label="启用日期" prop="enableTime">
        <el-date-picker clearable size="small" v-model="queryParams.enableTime" type="date" value-format="yyyy-MM-dd"
                        placeholder="选择启用日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="挂失日期" prop="lossTime">
        <el-date-picker clearable size="small" v-model="queryParams.lossTime" type="date" value-format="yyyy-MM-dd"
                        placeholder="选择挂失日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="作废日期" prop="deadTime">
        <el-date-picker clearable size="small" v-model="queryParams.deadTime" type="date" value-format="yyyy-MM-dd"
                        placeholder="选择卡作废日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="退卡日期" prop="returnTime">
        <el-date-picker clearable size="small" v-model="queryParams.returnTime" type="date" value-format="yyyy-MM-dd"
                        placeholder="选择退卡日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="卡状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择卡状态" clearable size="small">
          <el-option v-for="dict in dict.type.medical_outpatient_status" :key="dict.value" :label="dict.label"
                     :value="dict.value"/>
        </el-select>
      </el-form-item>
      <el-form-item label="操作人" prop="personid">
        <el-input v-model="queryParams.personid" placeholder="请输入操作人" clearable size="small"
                  @keyup.enter.native="handleQuery"/>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">

      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate(1)"
                   v-hasPermi="['medical:info:edit']">启用
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate(2)"
                   v-hasPermi="['medical:info:edit']">挂失
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate(3)"
                   v-hasPermi="['medical:info:edit']">作废
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate(4)"
                   v-hasPermi="['medical:info:edit']">退卡
        </el-button>
      </el-col>

      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="single" @click="handleChong"
                   v-hasPermi="['medical:info:remove']">充值
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="single" @click="handleQu"
                   v-hasPermi="['medical:info:remove']">取现
        </el-button>
      </el-col>

      <el-col :span="1.5">
        <el-button type="warning" plain icon="el-icon-download" size="mini" :loading="exportLoading"
                   @click="handleExport" v-hasPermi="['medical:info:export']">导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="infoList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="门诊卡信息id" align="center" prop="id"/>
      <el-table-column label="金额" align="center" prop="money"/>
      <el-table-column label="启用日期" align="center" prop="enableTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.enableTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="挂失日期" align="center" prop="lossTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.lossTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="作废日期" align="center" prop="deadTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.deadTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="退卡日期" align="center" prop="returnTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.returnTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="卡状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.medical_outpatient_status" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="押金" align="center" prop="deposit"/>
      <el-table-column label="个人档案id" align="center" prop="personid"/>
      <el-table-column label="操作人" align="center" prop="tmd.doUser"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(1,scope.row)"
                     v-hasPermi="['medical:info:remove']">启用
          </el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(2,scope.row)"
                     v-hasPermi="['medical:info:remove']">挂失
          </el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(3,scope.row)"
                     v-hasPermi="['medical:info:remove']">作废
          </el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(4,scope.row)"
                     v-hasPermi="['medical:info:remove']">退卡
          </el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleChong(scope.row)"
                     v-hasPermi="['medical:info:remove']">充值
          </el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleQu(scope.row)"
                     v-hasPermi="['medical:info:remove']">取现
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize"
                @pagination="getList"/>

    <!-- 添加或修改门诊卡信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="金额" prop="money">
          <el-input v-model="form.money" placeholder="请输入金额"/>
        </el-form-item>
        <el-form-item v-show="show" label="启用日期" prop="enableTime">
          <el-date-picker clearable size="small" v-model="form.enableTime" type="date" value-format="yyyy-MM-dd"
                          placeholder="选择启用日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item v-show="show" label="挂失日期" prop="lossTime">
          <el-date-picker clearable size="small" v-model="form.lossTime" type="date" value-format="yyyy-MM-dd"
                          placeholder="选择挂失日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item v-show="show" label="卡作废日期" prop="deadTime">
          <el-date-picker clearable size="small" v-model="form.deadTime" type="date" value-format="yyyy-MM-dd"
                          placeholder="选择卡作废日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item v-show="show" label="退卡日期" prop="returnTime">
          <el-date-picker clearable size="small" v-model="form.returnTime" type="date" value-format="yyyy-MM-dd"
                          placeholder="选择退卡日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item v-show="show" label="卡状态">
          <el-radio-group v-model="form.status">
            <el-radio v-for="dict in dict.type.medical_outpatient_status" :key="dict.value"
                      :label="parseInt(dict.value)">{{dict.label}}
            </el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item v-show="show" label="押金" prop="deposit">
          <el-input v-model="form.deposit" placeholder="请输入押金"/>
        </el-form-item>
        <el-form-item v-show="show" label="个人档案id" prop="personid">
          <el-input v-model="form.personid" placeholder="请输入个人档案id"/>
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
    listInfo,
    getInfo,
    delInfo,
    addInfo,
    updateInfo,
    exportInfo,
    getCostInfoArchives,
    moneyArchives
  } from "@/api/medical/info";

  export default {
    name: "Info",
    dicts: ['medical_outpatient_status'],
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
        // 门诊卡信息表格数据
        infoList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          money: null,
          enableTime: null,
          lossTime: null,
          deadTime: null,
          returnTime: null,
          status: null,
          deposit: null,
          personid: null
        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {},
        show: false,
        money: null
      };
    },
    created() {
      this.getList();
    },
    methods: {
      /** 查询门诊卡信息列表 */
      getList() {
        this.loading = true;
        listInfo(this.queryParams).then(response => {
          this.infoList = response.rows;
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
          money: null,
          enableTime: null,
          lossTime: null,
          deadTime: null,
          returnTime: null,
          status: 0,
          deposit: null,
          personid: null
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
        this.title = "添加门诊卡信息";
      },
      /** 修改按钮操作 */
      handleUpdate(status, row) {
        this.reset();
        const id = row.id || this.ids;
        var msg = "";
        if (status == 1) {
          msg = "启用";
        } else if (status == 2) {
          msg = "挂失";
        } else if (status == 3) {
          msg = "作废";
        } else if (status == 4) {
          msg = "退卡";
        }
        getInfo(id).then(response => {
          this.form = response.data;
          getCostInfoArchives(this.form.personid).then(response => {
            if (status == 1 && response.data) {
              this.msgError("该患者有已启用的门诊卡，不可再启用当前门诊卡!");
            } else if (this.form.money != 0 && (status == 3 || status == 4)) {
              this.msgError("卡余额尚未清零，请先取出所有余额再执行" + msg + "操作!");
            } else if (this.form.status == 4) {
              this.msgError("已退卡,不可执行" + msg + "操作!");
            } else if (this.form.status == 3 && status == 2) {
              this.msgError("卡已作废，不可挂失!");
            } else if (this.form.status != status) {
              this.form.status = status;
              updateInfo(this.form).then(response => {
                this.msgSuccess(msg + "成功");
                this.open = false;
                this.getList();
              });
            } else {
              this.msgError("已" + msg + "!");
            }
          });
        });
      },
      /** 充值 */
      handleChong(row) {
        const id = row.id || this.ids[0];
        getInfo(id).then(response => {
          this.form = response.data;
          if (this.form.status != 1) {
            this.msgError("卡未启用，不可充值!");
          } else {
            this.money = this.form.money;
            this.form.money = null;
            this.show = false;
            this.open = true;
            this.title = "充值";
          }
        });
      },
      /** 取现 */
      handleQu(row) {
        const id = row.id || this.ids[0];
        getInfo(id).then(response => {
          this.form = response.data;
          let status = this.form.status;
          if (status == 3) {
            this.msgError("卡已作废，不可取现!");
          } else if (status == 4) {
            this.msgError("已退卡，不可取现!");
          } else {
            this.money = this.form.money;
            this.form.money = null;
            this.show = false;
            this.open = true;
            this.title = "取现";
          }
        });
      },
      /** 提交按钮 */
      submitForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            if (this.form.id != null) {
              let money = this.form.money;
              this.form.money = this.money;
              if (money <= 0) {
                this.msgError("不可" + this.title + "负数或零!");
              } else {
                if ("取现" == this.title && this.money < money) {
                  this.msgError("超出卡余额，不可取现!");
                } else {
                  let type = "";
                  if ("取现" == this.title) {
                    type = "提现";
                  } else {
                    type = "充值";
                  }

                  let form = {
                    "info": this.form,
                    "type": type,
                    "money": money
                  }

                  moneyArchives(form).then(response => {
                    this.msgSuccess(this.title + "成功!");
                    this.open = false;
                    this.getList();
                  });
                }
              }
            } else {
              addInfo(this.form).then(response => {
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
        this.$confirm('是否确认删除门诊卡信息编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function () {
          return delInfo(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(() => {
        });
      },
      /** 导出按钮操作 */
      handleExport() {
        const queryParams = this.queryParams;
        this.$confirm('是否确认导出所有门诊卡信息数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(() => {
          this.exportLoading = true;
          return exportInfo(queryParams);
        }).then(response => {
          this.download(response.msg);
          this.exportLoading = false;
        }).catch(() => {
        });
      }
    }
  };
</script>
