/*
 Navicat Premium Data Transfer

 Source Server         : Bao
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : myry

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 29/09/2021 15:17:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (92, 't_medical_cost_bill', '患者费用账单表', NULL, NULL, 'CostBill', 'crud', 'com.ruoyi.medical', 'medical', 'bill', '患者费用账单', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:31', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (93, 't_medical_cost_bill_detail', '患者费用明细表', NULL, NULL, 'CostBillDetail', 'crud', 'com.ruoyi.medical', 'medical', 'detail', '患者费用明细', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:31', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (94, 't_medical_cost_dead_bill', '医院烂账记录表', NULL, NULL, 'CostDeadBill', 'crud', 'com.ruoyi.medical', 'medical', 'dead', '医院烂账记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33', NULL);
INSERT INTO `gen_table` VALUES (95, 't_medical_cost_outpatient_info', '门诊卡信息表', NULL, NULL, 'CostOutpatientInfo', 'crud', 'com.ruoyi.medical', 'medical', 'info', '门诊卡信息', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11', NULL);
INSERT INTO `gen_table` VALUES (96, 't_medical_cost_outpatient_recharge_record', '门诊卡充值记录表', NULL, NULL, 'CostOutpatientRechargeRecord', 'crud', 'com.ruoyi.medical', 'medical', 'record', '门诊卡充值记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02', NULL);
INSERT INTO `gen_table` VALUES (97, 't_medical_cost_person_archives', '个人档案表', NULL, NULL, 'CostPersonArchives', 'crud', 'com.ruoyi.medical', 'medical', 'archives', '个人档案', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20', NULL);
INSERT INTO `gen_table` VALUES (98, 't_medical_cpoe_bed', '床位记录表', NULL, NULL, 'CpoeBed', 'crud', 'com.ruoyi.medical', 'medical', 'bed', '床位记录', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:31', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (99, 't_medical_cpoe_doctorsorderhandle', '医嘱执行记录表', NULL, NULL, 'CpoeDoctorsorderhandle', 'crud', 'com.ruoyi.medical', 'medical', 'doctorsorderhandle', '医嘱执行记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:58:40', NULL);
INSERT INTO `gen_table` VALUES (100, 't_medical_cpoe_prescription', '住院治疗处方表', NULL, NULL, 'CpoePrescription', 'crud', 'com.ruoyi.medical', 'medical', 'prescription', '住院治疗处方', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (101, 't_medical_cpoe_prescriptiontotal', '住院治疗处方总表', NULL, NULL, 'CpoePrescriptiontotal', 'crud', 'com.ruoyi.medical', 'medical', 'prescriptiontotal', '住院治疗处方总', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59', NULL);
INSERT INTO `gen_table` VALUES (102, 't_medical_cpoe_sickroom', '病房记录表', NULL, NULL, 'CpoeSickroom', 'crud', 'com.ruoyi.medical', 'medical', 'sickroom', '病房记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06', NULL);
INSERT INTO `gen_table` VALUES (103, 't_medical_cpoe_sickroom_duty', '病房值班记录表', NULL, NULL, 'CpoeSickroomDuty', 'crud', 'com.ruoyi.medical', 'medical', 'duty', '病房值班记录', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (104, 't_medical_cpoe_splitbed', '分床记录表', NULL, NULL, 'CpoeSplitbed', 'crud', 'com.ruoyi.medical', 'medical', 'splitbed', '分床记录', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (105, 't_medical_drugs_info', '药品表', NULL, NULL, 'DrugsInfo', 'crud', 'com.ruoyi.medical', 'medical', 'drugs', '药品', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05', NULL);
INSERT INTO `gen_table` VALUES (106, 't_medical_drugs_inventory_record', '盘点记录表', NULL, NULL, 'DrugsInventoryRecord', 'crud', 'com.ruoyi.medical', 'medical', 'inventory', '盘点记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16', NULL);
INSERT INTO `gen_table` VALUES (107, 't_medical_drugs_pharmacy', '药房库存表', NULL, NULL, 'DrugsPharmacy', 'crud', 'com.ruoyi.medical', 'medical', 'pharmacy', '药房库存', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (108, 't_medical_drugs_purchase', '药品采购信息表', NULL, NULL, 'DrugsPurchase', 'crud', 'com.ruoyi.medical', 'medical', 'purchase', '药品采购信息', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (109, 't_medical_drugs_storage', '药库库存表', NULL, NULL, 'DrugsStorage', 'crud', 'com.ruoyi.medical', 'medical', 'storage', '药库库存', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (110, 't_medical_emr_doctorsorder', '医嘱记录表', NULL, NULL, 'EmrDoctorsorder', 'crud', 'com.ruoyi.medical', 'medical', 'doctorsorder', '医嘱记录', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56', NULL);
INSERT INTO `gen_table` VALUES (111, 't_medical_lis_info', 'Lis检验信息表', NULL, NULL, 'LisInfo', 'crud', 'com.ruoyi.medical', 'medical', 'lis', 'Lis检验信息', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41', NULL);
INSERT INTO `gen_table` VALUES (112, 't_medical_outpatientdoctor_action', '医生看病流程表', NULL, NULL, 'OutpatientdoctorAction', 'crud', 'com.ruoyi.medical', 'medical', 'action', '医生看病流程', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57', NULL);
INSERT INTO `gen_table` VALUES (113, 't_medical_outpatientdoctor_medicalrecord', '门诊病历表', NULL, NULL, 'OutpatientdoctorMedicalrecord', 'crud', 'com.ruoyi.medical', 'medical', 'medicalrecord', '门诊病历', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (115, 't_medical_outpatientdoctor_result', '医生看病结果表', NULL, NULL, 'OutpatientdoctorResult', 'crud', 'com.ruoyi.medical', 'medical', 'result', '医生看病结果', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (116, 't_medical_outpatientdoctor_resulthandle', '医生看病治疗方案表', NULL, NULL, 'OutpatientdoctorResulthandle', 'crud', 'com.ruoyi.medical', 'medical', 'resulthandle', '医生看病治疗方案', 'bao', '0', '/', NULL, 'admin', '2021-09-23 11:37:32', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (117, 't_medical_pacs_info', 'PACS影像信息表', NULL, NULL, 'PacsInfo', 'crud', 'com.ruoyi.medical', 'medical', 'pacs', 'PACS影像信息', 'bao', '0', '/', '{}', 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58', NULL);
INSERT INTO `gen_table` VALUES (118, 't_medical_do', '操作记录表', NULL, NULL, 'TMedicalDo', 'crud', 'com.ruoyi.medical', 'medical', 'do', '操作记录', 'bao', '0', '/', NULL, 'bao', '2021-09-24 15:30:39', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (119, 't_medical_outpatientdoctor_receiverecord', '接诊记录表', NULL, NULL, 'TMedicalOutpatientdoctorReceiverecord', 'crud', 'com.ruoyi.medical', 'medical', 'receiverecord', '接诊记录', 'bao', '0', '/', '{}', 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 755 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (592, '92', 'id', '患者费用账单id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (593, '92', 'outpatientId', '门诊卡信息id', 'varchar(50)', 'String', 'outpatientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (594, '92', 'money', '金额', 'float', 'Long', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (595, '92', 'createTime', '充值取现日期', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (596, '93', 'id', '患者费用明细id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (597, '93', 'billid', '患者费用账单id', 'varchar(50)', 'String', 'billid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (598, '93', 'partName', '消费事项', 'varchar(100)', 'String', 'partName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (599, '93', 'partNumber', '事项数量', 'int', 'Long', 'partNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (600, '93', 'partMoney', '单价', 'float', 'Long', 'partMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (601, '94', 'id', '医院烂账记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33');
INSERT INTO `gen_table_column` VALUES (602, '94', 'realNoney', '实收金额', 'float', 'Long', 'realNoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33');
INSERT INTO `gen_table_column` VALUES (603, '94', 'accountMoney', '账上金额', 'float', 'Long', 'accountMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33');
INSERT INTO `gen_table_column` VALUES (604, '94', 'userName', '用户账号', 'varchar(50)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33');
INSERT INTO `gen_table_column` VALUES (605, '94', 'createTime', '烂账记录日期', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 19:35:33');
INSERT INTO `gen_table_column` VALUES (606, '95', 'id', '门诊卡信息id', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (607, '95', 'money', '金额', 'float', 'Long', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (608, '95', 'enableTime', '启用日期', 'date', 'Date', 'enableTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (609, '95', 'lossTime', '挂失日期', 'date', 'Date', 'lossTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (610, '95', 'deadTime', '卡作废日期', 'date', 'Date', 'deadTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (611, '95', 'returnTime', '退卡日期', 'date', 'Date', 'returnTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (612, '95', 'status', '卡状态', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_outpatient_status', 7, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (613, '95', 'deposit', '押金', 'float', 'Long', 'deposit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (614, '95', 'personid', '个人档案id', 'varchar(50)', 'String', 'personid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:41:11');
INSERT INTO `gen_table_column` VALUES (615, '96', 'id', '门诊卡充值记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02');
INSERT INTO `gen_table_column` VALUES (616, '96', 'money', '金额', 'float', 'Long', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02');
INSERT INTO `gen_table_column` VALUES (617, '96', 'type', '类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_recharge_record_type', 3, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02');
INSERT INTO `gen_table_column` VALUES (618, '96', 'createTime', '充值取现日期', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02');
INSERT INTO `gen_table_column` VALUES (619, '96', 'outpatientId', '门诊卡信息id', 'varchar(50)', 'String', 'outpatientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 11:42:02');
INSERT INTO `gen_table_column` VALUES (620, '97', 'id', '个人档案id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20');
INSERT INTO `gen_table_column` VALUES (621, '97', 'name', '姓名', 'varchar(20)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20');
INSERT INTO `gen_table_column` VALUES (622, '97', 'age', '年龄', 'int', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20');
INSERT INTO `gen_table_column` VALUES (623, '97', 'code', '身份证', 'varchar(18)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20');
INSERT INTO `gen_table_column` VALUES (624, '97', 'sex', '性别', 'varchar(2)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 5, 'admin', '2021-09-23 11:37:31', '', '2021-09-23 17:57:20');
INSERT INTO `gen_table_column` VALUES (625, '98', 'id', '床位记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (626, '98', 'name', '床位名称', 'varchar(20)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (627, '98', 'sickroomId', '病房id', 'varchar(50)', 'String', 'sickroomId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (628, '98', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (629, '99', 'id', '医嘱执行记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (630, '99', 'userId', '操作人', 'varchar(50)', 'String', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (631, '99', 'doctorsOrderId', '医嘱记录id', 'varchar(50)', 'String', 'doctorsOrderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (632, '99', 'createTime', '医嘱执行时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (633, '99', 'result', '状态', 'int', 'Long', 'result', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_do_status', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (634, '99', 'remark', '备注', 'varchar(50)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 17:58:40');
INSERT INTO `gen_table_column` VALUES (635, '100', 'id', '住院治疗处方id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (636, '100', 'prescriptionTotalId', '当天处方汇总id', 'varchar(50)', 'String', 'prescriptionTotalId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (637, '100', 'doctorsOrderId', '医嘱记录id', 'varchar(50)', 'String', 'doctorsOrderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (638, '100', 'partId', '药品id', 'varchar(50)', 'String', 'partId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (639, '100', 'partNo', '用量', 'varchar(20)', 'String', 'partNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (640, '100', 'createTime', '录入时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (641, '100', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (642, '101', 'id', '住院治疗处方总id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (643, '101', 'statue', '状态', 'int', 'Long', 'statue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_prescriptionTotal_status', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (644, '101', 'partId', '药品id', 'varchar(50)', 'String', 'partId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (645, '101', 'partType', '单位', 'varchar(20)', 'String', 'partType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_drugs_unit', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (646, '101', 'partNo', '用量', 'varchar(20)', 'String', 'partNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (647, '101', 'createTime', '录入时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (648, '101', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:10:59');
INSERT INTO `gen_table_column` VALUES (649, '102', 'id', '病房记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06');
INSERT INTO `gen_table_column` VALUES (650, '102', 'name', '病房名称', 'varchar(30)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06');
INSERT INTO `gen_table_column` VALUES (651, '102', 'unit', '规格', 'varchar(10)', 'String', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_sickroom_unit', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06');
INSERT INTO `gen_table_column` VALUES (652, '102', 'attribute', '属性', 'varchar(30)', 'String', 'attribute', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_sickroom_attribute', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06');
INSERT INTO `gen_table_column` VALUES (653, '102', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:14:06');
INSERT INTO `gen_table_column` VALUES (654, '103', 'id', '病房值班记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (655, '103', 'sickroomId', '病房id', 'varchar(50)', 'String', 'sickroomId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (656, '103', 'doctorId', '值班医生', 'varchar(50)', 'String', 'doctorId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (657, '103', 'nurseId', '值班护士', 'varchar(50)', 'String', 'nurseId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (658, '104', 'id', '分床记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (659, '104', 'personId', '患者id', 'varchar(50)', 'String', 'personId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (660, '104', 'doctorId', '主治医师id', 'varchar(50)', 'String', 'doctorId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (661, '104', 'bedId', '床位id', 'varchar(50)', 'String', 'bedId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (662, '104', 'createTime', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (663, '104', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (664, '105', 'id', '药品id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05');
INSERT INTO `gen_table_column` VALUES (665, '105', 'name', '药品名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05');
INSERT INTO `gen_table_column` VALUES (666, '105', 'Specifications', '规格', 'varchar(20)', 'String', 'Specifications', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05');
INSERT INTO `gen_table_column` VALUES (667, '105', 'unit', '单位', 'varchar(20)', 'String', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_drugs_unit', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05');
INSERT INTO `gen_table_column` VALUES (668, '105', 'description', '药品描述', 'varchar(100)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:38:05');
INSERT INTO `gen_table_column` VALUES (669, '106', 'id', '盘点记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (670, '106', 'drugsId', '药品名称id', 'varchar(50)', 'String', 'drugsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (671, '106', 'paperNumber', '账面数量', 'int', 'Long', 'paperNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (672, '106', 'existNumber', '实存数量', 'int', 'Long', 'existNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (673, '106', 'buyUnitPrice', '购进单价', 'float', 'Long', 'buyUnitPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (674, '106', 'sellUnitPrice', '零售单价', 'float', 'Long', 'sellUnitPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (675, '106', 'InventorySurplusNo', '盘盈数量', 'int', 'Long', 'InventorySurplusNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (676, '106', 'createTime', '盘点时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (677, '106', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:39:16');
INSERT INTO `gen_table_column` VALUES (678, '107', 'id', '药房库存id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (679, '107', 'drugsId', '药品名称id', 'varchar(50)', 'String', 'drugsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (680, '107', 'name', '药房名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (681, '107', 'no', '数量', 'int', 'Long', 'no', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (682, '108', 'id', '药品采购信息id', 'varchar(50)', 'String', 'id', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (683, '108', 'drugsId', '药品名称id', 'varchar(50)', 'String', 'drugsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (684, '108', 'source', '药品来源', 'varchar(50)', 'String', 'source', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (685, '108', 'address', '产地', 'varchar(50)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (686, '108', 'batchNumbe', '批号', 'varchar(50)', 'String', 'batchNumbe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (687, '108', 'manufactureTime', '生成日期', 'date', 'Date', 'manufactureTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (688, '108', 'termOfValidity', '有效期', 'date', 'Date', 'termOfValidity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (689, '108', 'myabstract', '摘要', 'varchar(100)', 'String', 'myabstract', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (690, '108', 'FilledBy', '填制人', 'varchar(50)', 'String', 'FilledBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (691, '108', 'Verifier', '核查人', 'varchar(50)', 'String', 'Verifier', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (692, '108', 'VerificationTime', '核查日期', 'date', 'Date', 'VerificationTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (693, '108', 'Reviewer', '审核人', 'varchar(50)', 'String', 'Reviewer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (694, '108', 'AuditTime', '审核日期', 'date', 'Date', 'AuditTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (695, '108', 'no', '数量', 'int', 'Long', 'no', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (696, '109', 'id', '药库库存id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (697, '109', 'drugsId', '药品名称id', 'varchar(50)', 'String', 'drugsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (698, '109', 'no', '数量', 'int', 'Long', 'no', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (699, '110', 'id', '医嘱记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (700, '110', 'personId', '患者id', 'varchar(50)', 'String', 'personId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (701, '110', 'doctorId', '主治医生d', 'varchar(50)', 'String', 'doctorId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (702, '110', 'status', '类型', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_doctorsOrder_type', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (703, '110', 'type', '状态', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_doctorsOrder_status', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (704, '110', 'description', '医嘱描述', 'varchar(100)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (705, '110', 'createTime', '医嘱生成时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:17:56');
INSERT INTO `gen_table_column` VALUES (706, '111', 'id', 'Lis检验信息id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (707, '111', 'name', '消费事项', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (708, '111', 'personId', '患者id', 'varchar(50)', 'String', 'personId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (709, '111', 'doctorid', '医生id', 'varchar(50)', 'String', 'doctorid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (710, '111', 'createTime', '生成时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (711, '111', 'status', '状态', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_money_status', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (712, '111', 'receiveRecordId', '门诊医生接诊记录id', 'varchar(50)', 'String', 'receiveRecordId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:37:41');
INSERT INTO `gen_table_column` VALUES (713, '112', 'id', '医生看病流程id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (714, '112', 'partName', '消费事项', 'varchar(100)', 'String', 'partName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (715, '112', 'partNumber', '事项数量', 'int', 'Long', 'partNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (716, '112', 'personType', '患者类型', 'int', 'Long', 'personType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'medical_bill_type', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (717, '112', 'partMoney', '单价', 'float', 'Long', 'partMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (718, '112', 'type', '类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_money_type', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (719, '112', 'opDoctorReceiveRecordId', '门诊医生接诊记录id/医嘱记录id', 'varchar(50)', 'String', 'opDoctorReceiveRecordId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 18:20:57');
INSERT INTO `gen_table_column` VALUES (720, '113', 'id', '门诊记录id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (721, '113', 'outpatientId', '门诊卡信息id', 'varchar(50)', 'String', 'outpatientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (722, '113', 'medicalRecordURL', '病历URL', 'varchar(50)', 'String', 'medicalRecordURL', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (728, '115', 'opDoctorResultId', '医生看病结果id', 'varchar(50)', 'String', 'opDoctorResultId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (729, '115', 'name', '病名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (730, '115', 'description', '描述症状', 'varchar(200)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (731, '115', 'remark', '医嘱', 'varchar(200)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (732, '115', 'opDoctorReceiveRecordId', '门诊医生接诊记录id', 'varchar(50)', 'String', 'opDoctorReceiveRecordId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (733, '116', 'id', '医生看病治疗方案id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (734, '116', 'partName', '消费事项', 'varchar(100)', 'String', 'partName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (735, '116', 'partNumber', '事项数量', 'int', 'Long', 'partNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (736, '116', 'partMoney', '单价', 'float', 'Long', 'partMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (737, '116', 'opDoctorResultId', '医生治疗结果id', 'varchar(50)', 'String', 'opDoctorResultId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-09-23 11:37:32', '', NULL);
INSERT INTO `gen_table_column` VALUES (738, '117', 'id', 'PACS影像信息id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (739, '117', 'name', '消费事项', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (740, '117', 'personId', '患者id', 'varchar(50)', 'String', 'personId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (741, '117', 'doctorid', '医生id', 'varchar(50)', 'String', 'doctorid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (742, '117', 'createTime', '生成时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (743, '117', 'status', '状态', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_money_status', 6, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (744, '117', 'receiveRecordId', '门诊医生接诊记录id', 'varchar(50)', 'String', 'receiveRecordId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-09-23 11:37:32', '', '2021-09-23 19:36:58');
INSERT INTO `gen_table_column` VALUES (745, '118', 'id', '操作id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'bao', '2021-09-24 15:30:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (746, '118', 'doUser', '操作人', 'varchar(50)', 'String', 'doUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'bao', '2021-09-24 15:30:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (747, '118', 'doTime', '操作时间', 'datetime', 'Date', 'doTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'bao', '2021-09-24 15:30:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (748, '118', 'doId', '操作对象id', 'varchar(50)', 'String', 'doId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'bao', '2021-09-24 15:30:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (749, '118', 'doType', '操作对象类型', 'int', 'Long', 'doType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'bao', '2021-09-24 15:30:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (750, '119', 'opDoctorReceiveRecordId', '接诊记录id', 'varchar(50)', 'String', 'opDoctorReceiveRecordId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');
INSERT INTO `gen_table_column` VALUES (751, '119', 'outpatientId', '门诊卡信息id', 'varchar(50)', 'String', 'outpatientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');
INSERT INTO `gen_table_column` VALUES (752, '119', 'doctorId', '医生id', 'varchar(50)', 'String', 'doctorId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');
INSERT INTO `gen_table_column` VALUES (753, '119', 'type', '类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'medical_bill_type', 4, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');
INSERT INTO `gen_table_column` VALUES (754, '119', 'status', '状态', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'medical_receiveRecord_status', 5, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');
INSERT INTO `gen_table_column` VALUES (755, '119', 'createTime', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'bao', '2021-09-26 12:25:25', '', '2021-09-26 12:30:09');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BF7B724A078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BF7B724A078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BF7B724A078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-BR1UG501632899194106', 1632899709515, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1632899200000, -1, 5, 'PAUSED', 'CRON', 1632899194000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1632899205000, -1, 5, 'PAUSED', 'CRON', 1632899194000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1632899200000, -1, 5, 'PAUSED', 'CRON', 1632899194000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-09-18 15:03:00', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-09-18 15:03:00', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-09-18 15:03:00', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-09-18 15:03:00', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-09-18 15:03:00', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '0', '星梦集团', 0, '宝哥', '17680783834', '2700564384@qq.com', '0', '0', 'bao', '2021-09-23 19:21:34', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 1, '0,1', '门诊部', 1, '宝哥', '17680783834', NULL, '0', '0', 'admin', '2021-09-23 20:22:27', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 1, '0,1', '住院部', 2, '宝哥', '17680783834', NULL, '0', '0', 'admin', '2021-09-23 20:22:46', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 1, '0,1', '护理部', 3, '宝哥', '17680783834', NULL, '0', '0', 'admin', '2021-09-23 20:23:06', '', NULL);
INSERT INTO `sys_dept` VALUES (203, 1, '0,1', '后勤部', 4, '宝哥', '17680783834', NULL, '0', '0', 'admin', '2021-09-23 20:23:42', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', 'danger', 'Y', '0', 'admin', '2021-09-18 15:03:00', 'bao', '2021-09-25 20:50:27', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', 'success', 'N', '0', 'admin', '2021-09-18 15:03:00', 'bao', '2021-09-25 20:50:33', '性别女');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '启用', '1', 'medical_outpatient_status', NULL, 'success', 'N', '0', 'admin', '2021-09-23 10:48:09', 'bao', '2021-09-25 20:48:43', NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '挂失', '2', 'medical_outpatient_status', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 10:48:20', 'bao', '2021-09-25 20:48:50', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '作废', '3', 'medical_outpatient_status', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 10:48:35', 'bao', '2021-09-25 20:48:58', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '退卡', '4', 'medical_outpatient_status', NULL, 'info', 'N', '0', 'admin', '2021-09-23 10:48:43', 'bao', '2021-09-25 20:49:06', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 1, '充值', '1', 'medical_recharge_record_type', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 10:50:52', 'bao', '2021-09-25 20:49:32', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 2, '取现', '2', 'medical_recharge_record_type', NULL, 'info', 'N', '0', 'admin', '2021-09-23 10:51:00', 'bao', '2021-09-25 20:49:39', NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '检查', '1', 'medical_money_type', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 10:57:08', 'bao', '2021-09-27 14:32:27', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 4, '药品', '4', 'medical_money_type', NULL, 'info', 'N', '0', 'admin', '2021-09-23 10:57:16', 'bao', '2021-09-27 14:32:52', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 5, '住院', '5', 'medical_money_type', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 10:57:24', 'bao', '2021-09-27 14:32:58', NULL);
INSERT INTO `sys_dict_data` VALUES (109, 1, '门诊', '1', 'medical_bill_type', NULL, 'success', 'N', '0', 'admin', '2021-09-23 10:58:50', 'bao', '2021-09-26 14:32:50', NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '住院', '2', 'medical_bill_type', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 10:59:00', 'bao', '2021-09-26 14:32:55', NULL);
INSERT INTO `sys_dict_data` VALUES (111, 2, '检验', '2', 'medical_money_type', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 11:07:48', 'bao', '2021-09-27 14:32:36', NULL);
INSERT INTO `sys_dict_data` VALUES (112, 3, '处置', '3', 'medical_money_type', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:07:57', 'bao', '2021-09-27 14:32:46', NULL);
INSERT INTO `sys_dict_data` VALUES (113, 1, '未做', '1', 'medical_money_status', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:14:51', 'bao', '2021-09-27 14:31:38', NULL);
INSERT INTO `sys_dict_data` VALUES (114, 2, '已做', '2', 'medical_money_status', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:14:58', 'bao', '2021-09-27 14:31:49', NULL);
INSERT INTO `sys_dict_data` VALUES (115, 1, '支', '1', 'medical_drugs_unit', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 11:17:29', 'bao', '2021-09-27 19:28:35', NULL);
INSERT INTO `sys_dict_data` VALUES (116, 2, '盒', '2', 'medical_drugs_unit', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:17:39', 'bao', '2021-09-27 19:28:40', NULL);
INSERT INTO `sys_dict_data` VALUES (117, 3, '粒', '3', 'medical_drugs_unit', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:17:53', 'bao', '2021-09-27 19:28:45', NULL);
INSERT INTO `sys_dict_data` VALUES (118, 4, '瓶', '4', 'medical_drugs_unit', NULL, 'info', 'N', '0', 'admin', '2021-09-23 11:18:01', 'bao', '2021-09-27 19:28:51', NULL);
INSERT INTO `sys_dict_data` VALUES (119, 5, '片', '5', 'medical_drugs_unit', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:18:09', 'bao', '2021-09-27 19:28:58', NULL);
INSERT INTO `sys_dict_data` VALUES (120, 1, 'VIP单人房', '1', 'medical_sickroom_unit', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:21:51', 'bao', '2021-09-27 19:29:38', NULL);
INSERT INTO `sys_dict_data` VALUES (121, 2, '双人房', '2', 'medical_sickroom_unit', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 11:22:18', 'bao', '2021-09-27 19:29:43', NULL);
INSERT INTO `sys_dict_data` VALUES (122, 3, '三人房', '3', 'medical_sickroom_unit', NULL, 'info', 'N', '0', 'admin', '2021-09-23 11:22:25', 'bao', '2021-09-27 19:29:52', NULL);
INSERT INTO `sys_dict_data` VALUES (123, 4, '四人房', '4', 'medical_sickroom_unit', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 11:22:36', 'bao', '2021-09-27 19:29:56', NULL);
INSERT INTO `sys_dict_data` VALUES (124, 5, '五人房', '5', 'medical_sickroom_unit', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 11:22:45', 'bao', '2021-09-27 19:30:01', NULL);
INSERT INTO `sys_dict_data` VALUES (125, 6, '六人房', '6', 'medical_sickroom_unit', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:22:52', 'bao', '2021-09-27 19:30:05', NULL);
INSERT INTO `sys_dict_data` VALUES (126, 1, '儿童科', '1', 'medical_sickroom_attribute', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:26:32', 'bao', '2021-09-28 18:38:54', NULL);
INSERT INTO `sys_dict_data` VALUES (127, 2, '耳鼻科', '2', 'medical_sickroom_attribute', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 11:26:41', 'bao', '2021-09-28 18:38:48', NULL);
INSERT INTO `sys_dict_data` VALUES (128, 3, '妇科', '3', 'medical_sickroom_attribute', NULL, 'info', 'N', '0', 'admin', '2021-09-23 11:26:48', 'bao', '2021-09-28 18:38:40', NULL);
INSERT INTO `sys_dict_data` VALUES (129, 4, '男科', '4', 'medical_sickroom_attribute', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:26:56', 'bao', '2021-09-28 18:38:30', NULL);
INSERT INTO `sys_dict_data` VALUES (130, 1, '正常', '1', 'medical_do_status', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:28:27', 'bao', '2021-09-27 19:28:06', NULL);
INSERT INTO `sys_dict_data` VALUES (131, 2, '异常', '2', 'medical_do_status', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:28:33', 'bao', '2021-09-27 19:28:11', NULL);
INSERT INTO `sys_dict_data` VALUES (132, 6, '克', '6', 'medical_drugs_unit', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 11:29:13', 'bao', '2021-09-27 19:29:04', NULL);
INSERT INTO `sys_dict_data` VALUES (133, 1, '长期', '1', 'medical_doctorsOrder_type', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 11:31:58', 'bao', '2021-09-27 19:20:40', NULL);
INSERT INTO `sys_dict_data` VALUES (134, 2, '临时', '2', 'medical_doctorsOrder_type', NULL, 'info', 'N', '0', 'admin', '2021-09-23 11:32:04', 'bao', '2021-09-27 19:20:46', NULL);
INSERT INTO `sys_dict_data` VALUES (135, 3, '出院', '3', 'medical_doctorsOrder_type', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:32:13', 'bao', '2021-09-27 19:20:52', NULL);
INSERT INTO `sys_dict_data` VALUES (136, 1, '未执行', '1', 'medical_doctorsOrder_status', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 11:35:08', 'bao', '2021-09-27 19:23:32', NULL);
INSERT INTO `sys_dict_data` VALUES (137, 2, '执行中', '2', 'medical_doctorsOrder_status', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 11:35:19', 'bao', '2021-09-27 19:23:39', NULL);
INSERT INTO `sys_dict_data` VALUES (138, 3, '执行完成', '3', 'medical_doctorsOrder_status', NULL, 'success', 'N', '0', 'admin', '2021-09-23 11:35:27', 'bao', '2021-09-27 19:23:44', NULL);
INSERT INTO `sys_dict_data` VALUES (139, 4, '暂停', '4', 'medical_doctorsOrder_status', NULL, 'info', 'N', '0', 'admin', '2021-09-23 11:35:34', 'bao', '2021-09-27 19:23:52', NULL);
INSERT INTO `sys_dict_data` VALUES (140, 5, '废弃', '5', 'medical_doctorsOrder_status', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 11:35:42', 'bao', '2021-09-27 19:27:46', NULL);
INSERT INTO `sys_dict_data` VALUES (141, 1, '草稿', '1', 'medical_prescriptionTotal_status', NULL, 'warning', 'N', '0', 'admin', '2021-09-23 18:09:01', 'bao', '2021-09-27 19:30:43', NULL);
INSERT INTO `sys_dict_data` VALUES (142, 2, '已发送', '2', 'medical_prescriptionTotal_status', NULL, 'success', 'N', '0', 'admin', '2021-09-23 18:09:08', 'bao', '2021-09-27 19:30:50', NULL);
INSERT INTO `sys_dict_data` VALUES (143, 3, '已撤回', '3', 'medical_prescriptionTotal_status', NULL, 'info', 'N', '0', 'admin', '2021-09-23 18:09:32', 'bao', '2021-09-27 19:31:02', NULL);
INSERT INTO `sys_dict_data` VALUES (144, 4, '已退回', '4', 'medical_prescriptionTotal_status', NULL, 'danger', 'N', '0', 'admin', '2021-09-23 18:09:42', 'bao', '2021-09-27 19:31:08', NULL);
INSERT INTO `sys_dict_data` VALUES (145, 5, '完成认领', '5', 'medical_prescriptionTotal_status', NULL, 'primary', 'N', '0', 'admin', '2021-09-23 18:09:55', 'bao', '2021-09-27 19:31:13', NULL);
INSERT INTO `sys_dict_data` VALUES (146, 3, '消费', '3', 'medical_recharge_record_type', NULL, 'danger', 'N', '0', 'bao', '2021-09-26 11:45:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (147, 1, '未接诊', '1', 'medical_receiveRecord_status', NULL, 'danger', 'N', '0', 'bao', '2021-09-26 12:28:30', 'bao', '2021-09-26 20:31:32', NULL);
INSERT INTO `sys_dict_data` VALUES (148, 2, '已接诊', '2', 'medical_receiveRecord_status', NULL, 'primary', 'N', '0', 'bao', '2021-09-26 12:28:45', 'bao', '2021-09-26 20:31:45', NULL);
INSERT INTO `sys_dict_data` VALUES (150, 3, '检查中', '3', 'medical_receiveRecord_status', NULL, 'info', 'N', '0', 'bao', '2021-09-26 20:31:05', 'bao', '2021-09-26 20:31:25', NULL);
INSERT INTO `sys_dict_data` VALUES (151, 5, '诊断完毕', '5', 'medical_receiveRecord_status', NULL, 'primary', 'N', '0', 'bao', '2021-09-26 20:32:07', 'bao', '2021-09-28 16:11:11', NULL);
INSERT INTO `sys_dict_data` VALUES (152, 4, '检查完毕', '4', 'medical_receiveRecord_status', NULL, 'warning', 'N', '0', 'bao', '2021-09-26 20:38:07', 'bao', '2021-09-26 20:38:14', NULL);
INSERT INTO `sys_dict_data` VALUES (153, 1, '血常规', '1001', 'medical_money_item', NULL, 'primary', 'N', '0', 'bao', '2021-09-27 08:57:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (154, 2, '尿检', '1002', 'medical_money_item', NULL, 'primary', 'N', '0', 'bao', '2021-09-27 08:57:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (155, 3, 'B超', '2001', 'medical_money_item', NULL, 'primary', 'N', '0', 'bao', '2021-09-27 08:58:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (156, 4, 'CT', '2002', 'medical_money_item', NULL, 'primary', 'N', '0', 'bao', '2021-09-27 08:58:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (157, 6, '开药中', '6', 'medical_receiveRecord_status', NULL, 'info', 'N', '0', 'bao', '2021-09-28 11:39:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (158, 7, '开药完成', '7', 'medical_receiveRecord_status', NULL, 'success', 'N', '0', 'bao', '2021-09-28 11:40:00', 'bao', '2021-09-29 09:32:42', NULL);
INSERT INTO `sys_dict_data` VALUES (159, 1, '未付款', '1', 'medical_bill_status', NULL, 'danger', 'N', '0', 'bao', '2021-09-28 15:53:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (160, 2, '已付款', '2', 'medical_bill_status', NULL, 'success', 'N', '0', 'bao', '2021-09-28 15:54:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (161, 5, '内科', '5', 'medical_sickroom_attribute', NULL, 'primary', 'N', '0', 'bao', '2021-09-28 18:38:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (162, 6, '外科', '6', 'medical_sickroom_attribute', NULL, 'success', 'N', '0', 'bao', '2021-09-28 18:38:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (163, 8, '分床完成', '8', 'medical_receiveRecord_status', NULL, 'danger', 'N', '0', 'bao', '2021-09-28 21:45:57', 'bao', '2021-09-28 21:46:06', NULL);
INSERT INTO `sys_dict_data` VALUES (164, 1, '未分配', '1', 'medical_sickroom_status', NULL, 'danger', 'N', '0', 'bao', '2021-09-29 10:12:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (165, 2, '已分配', '2', 'medical_sickroom_status', NULL, 'success', 'N', '0', 'bao', '2021-09-29 10:13:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (166, 9, '已出院', '9', 'medical_receiveRecord_status', NULL, 'primary', 'N', '0', 'bao', '2021-09-29 13:10:28', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-09-18 15:03:00', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '门诊卡状态', 'medical_outpatient_status', '0', 'admin', '2021-09-23 10:47:18', 'admin', '2021-09-23 11:02:14', '1启用2挂失3作废4退卡');
INSERT INTO `sys_dict_type` VALUES (101, '门诊卡操作类型', 'medical_recharge_record_type', '0', 'admin', '2021-09-23 10:50:37', 'admin', '2021-09-23 11:02:33', '1充值2取现');
INSERT INTO `sys_dict_type` VALUES (102, '消费事项类型', 'medical_money_type', '0', 'admin', '2021-09-23 10:56:54', 'admin', '2021-09-23 11:07:12', '1检查2检验3处置4药品5住院');
INSERT INTO `sys_dict_type` VALUES (103, '患者类型', 'medical_bill_type', '0', 'admin', '2021-09-23 10:58:25', 'admin', '2021-09-23 11:00:43', '1门诊2住院');
INSERT INTO `sys_dict_type` VALUES (104, '消费事项状态', 'medical_money_status', '0', 'admin', '2021-09-23 11:14:41', '', NULL, '1已做2未做');
INSERT INTO `sys_dict_type` VALUES (105, '药品单位', 'medical_drugs_unit', '0', 'admin', '2021-09-23 11:17:13', 'admin', '2021-09-23 11:29:03', '1支2盒3粒4瓶5片6克');
INSERT INTO `sys_dict_type` VALUES (106, '病房规格', 'medical_sickroom_unit', '0', 'admin', '2021-09-23 11:21:15', 'admin', '2021-09-23 11:22:03', '1VIP单人房2双人房3三人房4四人房5五人房6六人房');
INSERT INTO `sys_dict_type` VALUES (107, '病房属性', 'medical_sickroom_attribute', '0', 'admin', '2021-09-23 11:26:15', 'bao', '2021-09-28 18:37:41', '1儿童科2耳鼻科3妇科4男科5内科6外科');
INSERT INTO `sys_dict_type` VALUES (108, '执行状态', 'medical_do_status', '0', 'admin', '2021-09-23 11:28:16', 'admin', '2021-09-23 11:30:29', '1正常2异常');
INSERT INTO `sys_dict_type` VALUES (109, '医嘱类型', 'medical_doctorsOrder_type', '0', 'admin', '2021-09-23 11:31:44', '', NULL, '1长期2临时3出院');
INSERT INTO `sys_dict_type` VALUES (110, '医嘱状态', 'medical_doctorsOrder_status', '0', 'admin', '2021-09-23 11:34:34', 'admin', '2021-09-23 11:34:50', '1未执行2执行中3执行完成4暂停5废弃');
INSERT INTO `sys_dict_type` VALUES (111, '处方状态', 'medical_prescriptionTotal_status', '0', 'admin', '2021-09-23 18:08:39', '', NULL, '1草稿2已发送3已撤回4已退回5完成认领');
INSERT INTO `sys_dict_type` VALUES (112, '医疗操作记录类型', 'medical_doList_type', '0', 'bao', '2021-09-26 11:48:56', 'bao', '2021-09-26 11:51:06', '0个人档案1门诊卡信息2门诊卡充值取现记录3患者账单明细');
INSERT INTO `sys_dict_type` VALUES (113, '接诊状态', 'medical_receiveRecord_status', '0', 'bao', '2021-09-26 12:26:41', 'bao', '2021-09-29 01:37:05', '1未接诊2已接诊3检查中4检查完毕5诊断完毕6开药中7接诊完成8分床完成');
INSERT INTO `sys_dict_type` VALUES (114, '消费事项', 'medical_money_item', '0', 'bao', '2021-09-27 08:54:15', 'bao', '2021-09-27 08:58:40', '1001血常规1002尿检2001B超2002CT');
INSERT INTO `sys_dict_type` VALUES (115, '患者账单状态', 'medical_bill_status', '0', 'bao', '2021-09-28 15:53:14', '', NULL, '1未付款2已付款');
INSERT INTO `sys_dict_type` VALUES (116, '病房状态', 'medical_sickroom_status', '0', 'bao', '2021-09-29 10:12:22', '', NULL, '1未分配2已分配');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-09-18 15:03:00', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 23:13:47');
INSERT INTO `sys_logininfor` VALUES (2, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 00:32:52');
INSERT INTO `sys_logininfor` VALUES (3, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 02:57:41');
INSERT INTO `sys_logininfor` VALUES (4, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 02:57:55');
INSERT INTO `sys_logininfor` VALUES (5, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 02:58:13');
INSERT INTO `sys_logininfor` VALUES (6, 'hong', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 02:58:23');
INSERT INTO `sys_logininfor` VALUES (7, 'hong', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 03:01:18');
INSERT INTO `sys_logininfor` VALUES (8, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 08:33:17');
INSERT INTO `sys_logininfor` VALUES (9, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 13:48:11');
INSERT INTO `sys_logininfor` VALUES (10, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 13:48:29');
INSERT INTO `sys_logininfor` VALUES (11, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 13:50:44');
INSERT INTO `sys_logininfor` VALUES (12, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 13:50:51');
INSERT INTO `sys_logininfor` VALUES (13, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 13:55:26');
INSERT INTO `sys_logininfor` VALUES (14, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-09-29 13:55:39');
INSERT INTO `sys_logininfor` VALUES (15, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-09-29 13:55:42');
INSERT INTO `sys_logininfor` VALUES (16, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 13:55:48');
INSERT INTO `sys_logininfor` VALUES (17, 'yang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-29 13:56:07');
INSERT INTO `sys_logininfor` VALUES (18, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 13:56:16');
INSERT INTO `sys_logininfor` VALUES (19, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-09-29 14:29:25');
INSERT INTO `sys_logininfor` VALUES (20, 'bao', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 14:29:28');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2268 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-09-18 15:03:00', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-09-18 15:03:00', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-09-18 15:03:00', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '门诊管理', 0, 4, 'medical', NULL, NULL, 1, 0, 'M', '0', '0', '', 'textarea', 'bao', '2021-09-23 19:03:00', 'admin', '2021-09-23 20:16:44', '门诊管理目录');
INSERT INTO `sys_menu` VALUES (5, '住院管理', 0, 7, 'home', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'people', 'bao', '2021-09-28 17:27:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6, '库房管理', 0, 6, 'drugs', NULL, NULL, 1, 0, 'M', '0', '0', '', 'table', 'bao', '2021-09-28 11:04:47', 'bao', '2021-09-28 18:28:56', '');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-09-18 15:03:00', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-09-18 15:03:00', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-09-18 15:03:00', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-09-18 15:03:00', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-09-18 15:03:00', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-09-18 15:03:00', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-09-18 15:03:00', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-09-18 15:03:00', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-09-18 15:03:00', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-09-18 15:03:00', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-09-18 15:03:00', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-09-18 15:03:00', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-09-18 15:03:00', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-09-18 15:03:00', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-09-18 15:03:00', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-09-18 15:03:00', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-09-18 15:03:00', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-09-18 15:03:00', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-09-18 15:03:00', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2126, '个人档案', 4, 1, 'archives', 'medical/archives/index', NULL, 1, 0, 'C', '0', '0', 'nurse', 'clipboard', 'bao', '2021-09-23 19:58:48', 'bao', '2021-09-29 14:00:04', '个人档案菜单');
INSERT INTO `sys_menu` VALUES (2127, '个人档案查询', 2126, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:archives:query', '#', 'admin', '2021-09-23 19:58:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2128, '个人档案修改', 2126, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:archives:edit', '#', 'admin', '2021-09-23 19:58:48', 'bao', '2021-09-29 13:31:46', '');
INSERT INTO `sys_menu` VALUES (2129, '个人档案建档', 2126, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:archives:jian', '#', 'admin', '2021-09-23 19:58:48', 'bao', '2021-09-29 13:30:59', '');
INSERT INTO `sys_menu` VALUES (2130, '个人档案办卡', 2126, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:archives:ban', '#', 'admin', '2021-09-23 19:58:48', 'bao', '2021-09-29 13:31:15', '');
INSERT INTO `sys_menu` VALUES (2131, '个人档案导出', 2126, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:archives:export', '#', 'admin', '2021-09-23 19:58:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2132, '门诊卡信息', 4, 2, 'info', 'medical/info/index', NULL, 1, 0, 'C', '0', '0', 'medical:info:list', 'bug', 'admin', '2021-09-24 14:36:02', 'bao', '2021-09-24 15:50:12', '门诊卡信息菜单');
INSERT INTO `sys_menu` VALUES (2133, '门诊卡信息查询', 2132, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:info:query', '#', 'admin', '2021-09-24 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2134, '门诊卡信息新增', 2132, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:info:add', '#', 'admin', '2021-09-24 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2135, '门诊卡信息修改', 2132, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:info:edit', '#', 'admin', '2021-09-24 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2136, '门诊卡信息删除', 2132, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:info:remove', '#', 'admin', '2021-09-24 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2137, '门诊卡信息导出', 2132, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:info:export', '#', 'admin', '2021-09-24 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2138, '操作记录', 4, 3, 'do', 'medical/do/index', NULL, 1, 0, 'C', '1', '0', 'medical:do:list', 'build', 'admin', '2021-09-24 15:49:19', 'bao', '2021-09-29 13:29:47', '操作记录菜单');
INSERT INTO `sys_menu` VALUES (2139, '操作记录查询', 2138, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:do:query', '#', 'admin', '2021-09-24 15:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2140, '操作记录新增', 2138, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:do:add', '#', 'admin', '2021-09-24 15:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2141, '操作记录修改', 2138, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:do:edit', '#', 'admin', '2021-09-24 15:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2142, '操作记录删除', 2138, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:do:remove', '#', 'admin', '2021-09-24 15:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2143, '操作记录导出', 2138, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:do:export', '#', 'admin', '2021-09-24 15:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2144, '门诊卡充值记录', 4, 1, 'record', 'medical/record/index', NULL, 1, 0, 'C', '1', '0', 'nurse', 'dict', 'admin', '2021-09-25 14:29:49', 'bao', '2021-09-29 14:00:16', '门诊卡充值记录菜单');
INSERT INTO `sys_menu` VALUES (2145, '门诊卡充值记录查询', 2144, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:record:query', '#', 'admin', '2021-09-25 14:29:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2146, '门诊卡充值记录新增', 2144, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:record:add', '#', 'admin', '2021-09-25 14:29:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2147, '门诊卡充值记录修改', 2144, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:record:edit', '#', 'admin', '2021-09-25 14:29:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2148, '门诊卡充值记录删除', 2144, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:record:remove', '#', 'admin', '2021-09-25 14:29:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2149, '门诊卡充值记录导出', 2144, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:record:export', '#', 'admin', '2021-09-25 14:29:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2150, '接诊管理', 4, 1, 'receiverecord', 'medical/receiverecord/index', NULL, 1, 0, 'C', '0', '0', 'doctor', 'user', 'admin', '2021-09-26 12:35:12', 'bao', '2021-09-29 13:59:31', '接诊记录菜单');
INSERT INTO `sys_menu` VALUES (2151, '接诊记录查询', 2150, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:query', '#', 'admin', '2021-09-26 12:35:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2152, '接诊记录接诊', 2150, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:jie', '#', 'admin', '2021-09-26 12:35:12', 'bao', '2021-09-29 13:32:31', '');
INSERT INTO `sys_menu` VALUES (2153, '接诊记录需做检查', 2150, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:jian', '#', 'admin', '2021-09-26 12:35:12', 'bao', '2021-09-29 13:32:49', '');
INSERT INTO `sys_menu` VALUES (2154, '接诊记录检查详情', 2150, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:jianxq', '#', 'admin', '2021-09-26 12:35:12', 'bao', '2021-09-29 13:33:10', '');
INSERT INTO `sys_menu` VALUES (2155, '接诊记录导出', 2150, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:export', '#', 'admin', '2021-09-26 12:35:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2156, '检查管理', 2168, 1, 'lis', 'medical/lis/index', NULL, 1, 0, 'C', '0', '0', 'medical:lis:list', 'job', 'admin', '2021-09-27 14:51:28', 'bao', '2021-09-29 02:55:06', 'Lis检验信息菜单');
INSERT INTO `sys_menu` VALUES (2157, 'Lis检验信息查询', 2156, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:lis:query', '#', 'admin', '2021-09-27 14:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2158, 'Lis检验信息新增', 2156, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:lis:add', '#', 'admin', '2021-09-27 14:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2159, 'Lis检验信息修改', 2156, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:lis:edit', '#', 'admin', '2021-09-27 14:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2160, 'Lis检验信息删除', 2156, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:lis:remove', '#', 'admin', '2021-09-27 14:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2161, 'Lis检验信息导出', 2156, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:lis:export', '#', 'admin', '2021-09-27 14:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2162, '检验管理', 2168, 1, 'pacs', 'medical/pacs/index', NULL, 1, 0, 'C', '0', '0', 'medical:pacs:list', 'online', 'admin', '2021-09-27 14:51:56', 'bao', '2021-09-27 14:55:05', 'PACS影像信息菜单');
INSERT INTO `sys_menu` VALUES (2163, 'PACS影像信息查询', 2162, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pacs:query', '#', 'admin', '2021-09-27 14:51:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2164, 'PACS影像信息新增', 2162, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pacs:add', '#', 'admin', '2021-09-27 14:51:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2165, 'PACS影像信息修改', 2162, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pacs:edit', '#', 'admin', '2021-09-27 14:51:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2166, 'PACS影像信息删除', 2162, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pacs:remove', '#', 'admin', '2021-09-27 14:51:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2167, 'PACS影像信息导出', 2162, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pacs:export', '#', 'admin', '2021-09-27 14:51:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2168, '事项管理', 0, 5, 'action', NULL, NULL, 1, 0, 'M', '0', '0', '', 'component', 'bao', '2021-09-27 14:53:27', 'bao', '2021-09-29 02:54:48', '');
INSERT INTO `sys_menu` VALUES (2169, '医嘱记录', 4, 1, 'doctorsorder', 'medical/doctorsorder/index', NULL, 1, 0, 'C', '1', '0', 'medical:doctorsorder:list', 'build', 'admin', '2021-09-27 19:11:42', 'bao', '2021-09-29 13:29:37', '医嘱记录菜单');
INSERT INTO `sys_menu` VALUES (2170, '医嘱记录查询', 2169, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:doctorsorder:query', '#', 'admin', '2021-09-27 19:11:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2171, '医嘱记录新增', 2169, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:doctorsorder:add', '#', 'admin', '2021-09-27 19:11:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2172, '医嘱记录修改', 2169, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:doctorsorder:edit', '#', 'admin', '2021-09-27 19:11:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2173, '医嘱记录删除', 2169, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:doctorsorder:remove', '#', 'admin', '2021-09-27 19:11:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2174, '医嘱记录导出', 2169, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:doctorsorder:export', '#', 'admin', '2021-09-27 19:11:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2176, '药品管理', 6, 1, 'drugs', 'medical/drugs/index', NULL, 1, 0, 'C', '0', '0', 'medical:drugs:list', 'color', 'admin', '2021-09-28 11:05:21', 'bao', '2021-09-29 02:55:29', '药品菜单');
INSERT INTO `sys_menu` VALUES (2177, '药品查询', 2176, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:drugs:query', '#', 'admin', '2021-09-28 11:05:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2178, '药品新增', 2176, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:drugs:add', '#', 'admin', '2021-09-28 11:05:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2179, '药品修改', 2176, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:drugs:edit', '#', 'admin', '2021-09-28 11:05:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2180, '药品删除', 2176, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:drugs:remove', '#', 'admin', '2021-09-28 11:05:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2181, '药品导出', 2176, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:drugs:export', '#', 'admin', '2021-09-28 11:05:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2182, '患者费用账单', 4, 1, 'bill', 'medical/bill/index', NULL, 1, 0, 'C', '0', '0', 'medical:bill:list', 'money', 'admin', '2021-09-28 13:20:14', 'bao', '2021-09-29 02:53:57', '患者费用账单菜单');
INSERT INTO `sys_menu` VALUES (2183, '患者费用账单查询', 2182, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bill:query', '#', 'admin', '2021-09-28 13:20:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2184, '患者费用账单新增', 2182, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bill:add', '#', 'admin', '2021-09-28 13:20:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2185, '患者费用账单修改', 2182, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bill:edit', '#', 'admin', '2021-09-28 13:20:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2186, '患者费用账单删除', 2182, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bill:remove', '#', 'admin', '2021-09-28 13:20:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2187, '患者费用账单导出', 2182, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bill:export', '#', 'admin', '2021-09-28 13:20:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2188, '患者费用明细', 4, 1, 'detail', 'medical/detail/index', NULL, 1, 0, 'C', '1', '0', 'medical:detail:list', 'documentation', 'admin', '2021-09-28 13:20:40', 'bao', '2021-09-29 13:29:42', '患者费用明细菜单');
INSERT INTO `sys_menu` VALUES (2189, '患者费用明细查询', 2188, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:detail:query', '#', 'admin', '2021-09-28 13:20:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2190, '患者费用明细新增', 2188, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:detail:add', '#', 'admin', '2021-09-28 13:20:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2191, '患者费用明细修改', 2188, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:detail:edit', '#', 'admin', '2021-09-28 13:20:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2192, '患者费用明细删除', 2188, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:detail:remove', '#', 'admin', '2021-09-28 13:20:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2193, '患者费用明细导出', 2188, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:detail:export', '#', 'admin', '2021-09-28 13:20:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2195, '病房记录', 5, 1, 'sickroom', 'medical/sickroom/index', NULL, 1, 0, 'C', '0', '0', 'medical:sickroom:list', 'chart', 'admin', '2021-09-28 18:21:12', 'bao', '2021-09-29 02:56:44', '病房记录菜单');
INSERT INTO `sys_menu` VALUES (2196, '病房记录查询', 2195, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:sickroom:query', '#', 'admin', '2021-09-28 18:21:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2197, '病房记录新增', 2195, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:sickroom:add', '#', 'admin', '2021-09-28 18:21:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2198, '病房记录修改', 2195, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:sickroom:edit', '#', 'admin', '2021-09-28 18:21:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2199, '病房记录删除', 2195, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:sickroom:remove', '#', 'admin', '2021-09-28 18:21:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2200, '病房记录导出', 2195, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:sickroom:export', '#', 'admin', '2021-09-28 18:21:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2201, '床位记录', 5, 1, 'bed', 'medical/bed/index', NULL, 1, 0, 'C', '0', '0', 'medical:bed:list', 'clipboard', 'admin', '2021-09-28 18:21:47', 'bao', '2021-09-29 02:56:52', '床位记录菜单');
INSERT INTO `sys_menu` VALUES (2202, '床位记录查询', 2201, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bed:query', '#', 'admin', '2021-09-28 18:21:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2203, '床位记录新增', 2201, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bed:add', '#', 'admin', '2021-09-28 18:21:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2204, '床位记录修改', 2201, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bed:edit', '#', 'admin', '2021-09-28 18:21:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2205, '床位记录删除', 2201, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bed:remove', '#', 'admin', '2021-09-28 18:21:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2206, '床位记录导出', 2201, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:bed:export', '#', 'admin', '2021-09-28 18:21:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2207, '分床记录', 5, 1, 'splitbed', 'medical/splitbed/index', NULL, 1, 0, 'C', '0', '0', 'medical:splitbed:list', 'education', 'admin', '2021-09-28 18:22:15', 'bao', '2021-09-29 02:57:00', '分床记录菜单');
INSERT INTO `sys_menu` VALUES (2208, '分床记录查询', 2207, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:splitbed:query', '#', 'admin', '2021-09-28 18:22:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2209, '分床记录新增', 2207, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:splitbed:add', '#', 'admin', '2021-09-28 18:22:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2210, '分床记录修改', 2207, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:splitbed:edit', '#', 'admin', '2021-09-28 18:22:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2211, '分床记录删除', 2207, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:splitbed:remove', '#', 'admin', '2021-09-28 18:22:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2212, '分床记录导出', 2207, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:splitbed:export', '#', 'admin', '2021-09-28 18:22:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2237, '药品采购信息', 6, 1, 'purchase', 'medical/purchase/index', NULL, 1, 0, 'C', '1', '0', 'medical:purchase:list', 'monitor', 'admin', '2021-09-28 18:25:49', 'bao', '2021-09-29 13:46:13', '药品采购信息菜单');
INSERT INTO `sys_menu` VALUES (2238, '药品采购信息查询', 2237, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:purchase:query', '#', 'admin', '2021-09-28 18:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2239, '药品采购信息新增', 2237, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:purchase:add', '#', 'admin', '2021-09-28 18:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2240, '药品采购信息修改', 2237, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:purchase:edit', '#', 'admin', '2021-09-28 18:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2241, '药品采购信息删除', 2237, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:purchase:remove', '#', 'admin', '2021-09-28 18:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2242, '药品采购信息导出', 2237, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:purchase:export', '#', 'admin', '2021-09-28 18:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2243, '药库库存', 6, 1, 'storage', 'medical/storage/index', NULL, 1, 0, 'C', '1', '0', 'medical:storage:list', 'dict', 'admin', '2021-09-28 18:26:11', 'bao', '2021-09-29 13:46:19', '药库库存菜单');
INSERT INTO `sys_menu` VALUES (2244, '药库库存查询', 2243, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:storage:query', '#', 'admin', '2021-09-28 18:26:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2245, '药库库存新增', 2243, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:storage:add', '#', 'admin', '2021-09-28 18:26:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2246, '药库库存修改', 2243, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:storage:edit', '#', 'admin', '2021-09-28 18:26:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2247, '药库库存删除', 2243, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:storage:remove', '#', 'admin', '2021-09-28 18:26:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2248, '药库库存导出', 2243, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:storage:export', '#', 'admin', '2021-09-28 18:26:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2249, '药房库存', 6, 1, 'pharmacy', 'medical/pharmacy/index', NULL, 1, 0, 'C', '1', '0', 'medical:pharmacy:list', 'input', 'admin', '2021-09-28 18:26:38', 'bao', '2021-09-29 13:46:24', '药房库存菜单');
INSERT INTO `sys_menu` VALUES (2250, '药房库存查询', 2249, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pharmacy:query', '#', 'admin', '2021-09-28 18:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2251, '药房库存新增', 2249, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pharmacy:add', '#', 'admin', '2021-09-28 18:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2252, '药房库存修改', 2249, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pharmacy:edit', '#', 'admin', '2021-09-28 18:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2253, '药房库存删除', 2249, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pharmacy:remove', '#', 'admin', '2021-09-28 18:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2254, '药房库存导出', 2249, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:pharmacy:export', '#', 'admin', '2021-09-28 18:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2255, '盘点记录', 6, 1, 'inventory', 'medical/inventory/index', NULL, 1, 0, 'C', '1', '0', 'medical:inventory:list', 'redis', 'admin', '2021-09-28 18:27:16', 'bao', '2021-09-29 13:46:28', '盘点记录菜单');
INSERT INTO `sys_menu` VALUES (2256, '盘点记录查询', 2255, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:inventory:query', '#', 'admin', '2021-09-28 18:27:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2257, '盘点记录新增', 2255, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:inventory:add', '#', 'admin', '2021-09-28 18:27:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2258, '盘点记录修改', 2255, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:inventory:edit', '#', 'admin', '2021-09-28 18:27:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2259, '盘点记录删除', 2255, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:inventory:remove', '#', 'admin', '2021-09-28 18:27:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2260, '盘点记录导出', 2255, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'medical:inventory:export', '#', 'admin', '2021-09-28 18:27:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2261, '分床管理', 5, 0, 'sickroomRecord', 'medical/sickroomRecord/index', NULL, 1, 0, 'C', '0', '0', 'medical:splitbed:list', 'date-range', 'bao', '2021-09-28 21:05:37', 'bao', '2021-09-28 21:08:16', '');
INSERT INTO `sys_menu` VALUES (2268, '接诊记录开药', 2150, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:kai', '#', 'bao', '2021-09-29 13:34:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2269, '接诊记录用药详情', 2150, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:kaixq', '#', 'bao', '2021-09-29 13:34:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2270, '接诊记录完成开药', 2150, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:wan', '#', 'bao', '2021-09-29 13:35:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2271, '接诊记录诊断', 2150, 9, '', NULL, NULL, 1, 0, 'F', '0', '0', 'medical:receiverecord:zhen', '#', 'bao', '2021-09-29 13:51:42', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'bao', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 20:36:40');
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'bao', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 20:36:45');
INSERT INTO `sys_oper_log` VALUES (3, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"0\",\"menuName\":\"分床管理\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"home\",\"component\":\"medical/sickroomRecord/index\",\"createBy\":\"bao\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"medical:splitbed:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 21:05:37');
INSERT INTO `sys_oper_log` VALUES (4, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"date-range\",\"orderNum\":\"0\",\"menuName\":\"分床管理\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"home\",\"component\":\"medical/sickroomRecord/index\",\"children\":[],\"createTime\":1632834337000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2261,\"menuType\":\"C\",\"perms\":\"medical:splitbed:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 21:07:41');
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"date-range\",\"orderNum\":\"0\",\"menuName\":\"分床管理\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"sickroomRecord\",\"component\":\"medical/sickroomRecord/index\",\"children\":[],\"createTime\":1632834337000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2261,\"menuType\":\"C\",\"perms\":\"medical:splitbed:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 21:08:16');
INSERT INTO `sys_oper_log` VALUES (6, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"8\",\"listClass\":\"success\",\"dictSort\":8,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"dictLabel\":\"分床完成\",\"createBy\":\"bao\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 21:45:57');
INSERT INTO `sys_oper_log` VALUES (7, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"8\",\"listClass\":\"danger\",\"dictSort\":8,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"dictLabel\":\"分床完成\",\"createBy\":\"bao\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1632836757000,\"dictCode\":163,\"updateBy\":\"bao\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-28 21:46:06');
INSERT INTO `sys_oper_log` VALUES (8, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"createTime\":1632849700647,\"doctorId\":\"1\",\"bedId\":\"bao_1632827981332\",\"personId\":\"LiSi_1632571715664\",\"remark\":\"方式辅导费\",\"id\":\"bao_1632849694417\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:21:40');
INSERT INTO `sys_oper_log` VALUES (9, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"createTime\":1632850182628,\"doctorId\":\"1\",\"bedId\":\"bao_1632827981332\",\"personId\":\"LiSi_1632571715664\",\"remark\":\"fasf\",\"id\":\"bao_1632850182624\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:29:42');
INSERT INTO `sys_oper_log` VALUES (10, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"createTime\":1632850227862,\"doctorId\":\"1\",\"bedId\":\"bao_1632827981341\",\"personId\":\"DaShen_1632572316063\",\"remark\":\"哈嘎啊\",\"id\":\"bao_1632850227862\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:30:27');
INSERT INTO `sys_oper_log` VALUES (11, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'bao', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"bao\",\"createTime\":1632630401000,\"updateBy\":\"bao\",\"dictName\":\"接诊状态\",\"remark\":\"1未接诊2已接诊3检查中4检查完毕5诊断完毕6开药中7接诊完成8分床完成\",\"dictId\":113,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:37:05');
INSERT INTO `sys_oper_log` VALUES (12, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":2,\"id\":\"bao_1632851397302\",\"opDoctorResultId\":\"bao_1632746789552\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:49:57');
INSERT INTO `sys_oper_log` VALUES (13, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632798980503\",\"partNumber\":1,\"id\":\"bao_1632851475069\",\"opDoctorResultId\":\"bao_1632746789552\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:51:15');
INSERT INTO `sys_oper_log` VALUES (14, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632798980503\",\"partNumber\":2,\"id\":\"bao_1632851486135\",\"opDoctorResultId\":\"bao_1632746789552\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:51:26');
INSERT INTO `sys_oper_log` VALUES (15, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632821340511\",\"params\":{},\"createTime\":1632851822555,\"opDoctorReceiveRecordId\":\"bao_1632851822555\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:57:02');
INSERT INTO `sys_oper_log` VALUES (16, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632851834911,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632851822555\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:57:14');
INSERT INTO `sys_oper_log` VALUES (17, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"伽师瓜\",\"description\":\"法法发\",\"remark\":\"电话的实施\",\"opDoctorResultId\":\"bao_1632851857299\",\"opDoctorReceiveRecordId\":\"bao_1632851822555\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:57:37');
INSERT INTO `sys_oper_log` VALUES (18, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":2,\"id\":\"bao_1632851885287\",\"opDoctorResultId\":\"bao_1632851857299\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 01:58:05');
INSERT INTO `sys_oper_log` VALUES (19, '患者费用账单', 2, 'com.ruoyi.medical.controller.CostBillController.edit()', 'PUT', 1, 'bao', NULL, '/medical/bill', '127.0.0.1', '内网IP', '{\"money\":80.0,\"createTime\":1632852209654,\"outpatientId\":\"1632821340511\",\"id\":\"bao_1632852117984\",\"coi\":{\"params\":{},\"money\":500.0,\"cpa\":{\"params\":{},\"name\":\"麻球\"},\"id\":1632821340511,\"status\":1},\"params\":{},\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:03:29');
INSERT INTO `sys_oper_log` VALUES (20, '药品', 2, 'com.ruoyi.medical.controller.DrugsInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/drugs', '127.0.0.1', '内网IP', '{\"description\":\"治疗感冒\",\"params\":{},\"specifications\":\"0.25g*4片\",\"unit\":\"2\",\"money\":20.0,\"name\":\"九九感冒灵\",\"id\":\"bao_1632798980503\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:35:33');
INSERT INTO `sys_oper_log` VALUES (21, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"门诊卡充值记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"record\",\"component\":\"medical/record/index\",\"children\":[],\"createTime\":1632551389000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2144,\"menuType\":\"C\",\"perms\":\"medical:record:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:48:18');
INSERT INTO `sys_oper_log` VALUES (22, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"接诊管理\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"receiverecord\",\"component\":\"medical/receiverecord/index\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2150,\"menuType\":\"C\",\"perms\":\"medical:receiverecord:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:48:52');
INSERT INTO `sys_oper_log` VALUES (23, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"患者费用明细\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"detail\",\"component\":\"medical/detail/index\",\"children\":[],\"createTime\":1632806440000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2188,\"menuType\":\"C\",\"perms\":\"medical:detail:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:49:39');
INSERT INTO `sys_oper_log` VALUES (24, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"build\",\"orderNum\":\"3\",\"menuName\":\"操作记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"do\",\"component\":\"medical/do/index\",\"children\":[],\"createTime\":1632469759000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2138,\"menuType\":\"C\",\"perms\":\"medical:do:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:50:12');
INSERT INTO `sys_oper_log` VALUES (25, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'bao', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"医生\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1631948580000,\"updateBy\":\"bao\",\"menuCheckStrictly\":true,\"roleKey\":\"doctor\",\"roleName\":\"医生\",\"menuIds\":[4,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:51:53');
INSERT INTO `sys_oper_log` VALUES (26, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'bao', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"护士\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1632400292000,\"updateBy\":\"bao\",\"menuCheckStrictly\":true,\"roleKey\":\"nurse\",\"roleName\":\"护士\",\"menuIds\":[4,2126,2127,2128,2129,2130,2131,2182,2183,2184,2185,2186,2187,2132,2133,2134,2135,2136,2137,2168,2156,2157,2158,2159,2160,2161,2162,2163,2164,2165,2166,2167,6,2176,2177,2178,2179,2180,2181,2237,2238,2239,2240,2241,2242,2243,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,2257,2258,2259,2260],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:52:30');
INSERT INTO `sys_oper_log` VALUES (27, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"1\",\"menuName\":\"门诊卡充值记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"record\",\"component\":\"medical/record/index\",\"children\":[],\"createTime\":1632551389000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2144,\"menuType\":\"C\",\"perms\":\"medical:record:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:53:19');
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"接诊管理\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"receiverecord\",\"component\":\"medical/receiverecord/index\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2150,\"menuType\":\"C\",\"perms\":\"medical:receiverecord:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:53:30');
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"医嘱记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"doctorsorder\",\"component\":\"medical/doctorsorder/index\",\"children\":[],\"createTime\":1632741102000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2169,\"menuType\":\"C\",\"perms\":\"medical:doctorsorder:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:53:37');
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"money\",\"orderNum\":\"1\",\"menuName\":\"患者费用账单\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"bill\",\"component\":\"medical/bill/index\",\"children\":[],\"createTime\":1632806414000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2182,\"menuType\":\"C\",\"perms\":\"medical:bill:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:53:57');
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"documentation\",\"orderNum\":\"1\",\"menuName\":\"患者费用明细\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"detail\",\"component\":\"medical/detail/index\",\"children\":[],\"createTime\":1632806440000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2188,\"menuType\":\"C\",\"perms\":\"medical:detail:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:54:31');
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"component\",\"orderNum\":\"5\",\"menuName\":\"事项管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"action\",\"children\":[],\"createTime\":1632725607000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2168,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:54:48');
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":\"1\",\"menuName\":\"检查管理\",\"params\":{},\"parentId\":2168,\"isCache\":\"0\",\"path\":\"lis\",\"component\":\"medical/lis/index\",\"children\":[],\"createTime\":1632725488000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2156,\"menuType\":\"C\",\"perms\":\"medical:lis:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:55:06');
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"1\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"drugs\",\"component\":\"medical/drugs/index\",\"children\":[],\"createTime\":1632798321000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2176,\"menuType\":\"C\",\"perms\":\"medical:drugs:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:55:29');
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"monitor\",\"orderNum\":\"1\",\"menuName\":\"药品采购信息\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"purchase\",\"component\":\"medical/purchase/index\",\"children\":[],\"createTime\":1632824749000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2237,\"menuType\":\"C\",\"perms\":\"medical:purchase:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:55:46');
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"dict\",\"orderNum\":\"1\",\"menuName\":\"药库库存\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"storage\",\"component\":\"medical/storage/index\",\"children\":[],\"createTime\":1632824771000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2243,\"menuType\":\"C\",\"perms\":\"medical:storage:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:55:55');
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"input\",\"orderNum\":\"1\",\"menuName\":\"药房库存\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"pharmacy\",\"component\":\"medical/pharmacy/index\",\"children\":[],\"createTime\":1632824798000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2249,\"menuType\":\"C\",\"perms\":\"medical:pharmacy:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:56:09');
INSERT INTO `sys_oper_log` VALUES (38, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"redis\",\"orderNum\":\"1\",\"menuName\":\"盘点记录\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"inventory\",\"component\":\"medical/inventory/index\",\"children\":[],\"createTime\":1632824836000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2255,\"menuType\":\"C\",\"perms\":\"medical:inventory:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:56:32');
INSERT INTO `sys_oper_log` VALUES (39, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"1\",\"menuName\":\"病房记录\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"sickroom\",\"component\":\"medical/sickroom/index\",\"children\":[],\"createTime\":1632824472000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2195,\"menuType\":\"C\",\"perms\":\"medical:sickroom:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:56:44');
INSERT INTO `sys_oper_log` VALUES (40, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"床位记录\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"bed\",\"component\":\"medical/bed/index\",\"children\":[],\"createTime\":1632824507000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2201,\"menuType\":\"C\",\"perms\":\"medical:bed:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:56:52');
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"分床记录\",\"params\":{},\"parentId\":5,\"isCache\":\"0\",\"path\":\"splitbed\",\"component\":\"medical/splitbed/index\",\"children\":[],\"createTime\":1632824535000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2207,\"menuType\":\"C\",\"perms\":\"medical:splitbed:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:57:00');
INSERT INTO `sys_oper_log` VALUES (42, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'hong', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632499200000,\"tmd\":{\"doTime\":1632855564309,\"doId\":\"1632572316079\",\"id\":\"yang_1632572316086\",\"params\":{},\"doType\":1,\"doUser\":\"hong\"},\"params\":{},\"money\":300.0,\"cpa\":{\"code\":\"53523535\",\"params\":{},\"name\":\"大婶\"},\"deposit\":10,\"personid\":\"DaShen_1632572316063\",\"id\":1632572316079,\"lossTime\":1632855564309,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:59:24');
INSERT INTO `sys_oper_log` VALUES (43, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'hong', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632855567661,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632572316079\",\"id\":\"yang_1632572316086\",\"params\":{},\"doType\":1,\"doUser\":\"hong\"},\"params\":{},\"money\":300.0,\"cpa\":{\"code\":\"53523535\",\"params\":{},\"name\":\"大婶\"},\"deposit\":10,\"personid\":\"DaShen_1632572316063\",\"id\":1632572316079,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 02:59:27');
INSERT INTO `sys_oper_log` VALUES (44, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'hong', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632585600000,\"tmd\":{\"doTime\":1632855658467,\"doId\":\"1632571715688\",\"id\":\"bao_1632571715701\",\"params\":{},\"doType\":1,\"doUser\":\"hong\"},\"params\":{},\"money\":1500.0,\"cpa\":{\"code\":\"2535336464\",\"params\":{},\"name\":\"李四\"},\"deposit\":10,\"personid\":\"LiSi_1632571715664\",\"id\":1632571715688,\"lossTime\":1632855658467,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 03:00:58');
INSERT INTO `sys_oper_log` VALUES (45, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'hong', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632855660736,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632571715688\",\"id\":\"bao_1632571715701\",\"params\":{},\"doType\":1,\"doUser\":\"hong\"},\"params\":{},\"money\":1500.0,\"cpa\":{\"code\":\"2535336464\",\"params\":{},\"name\":\"李四\"},\"deposit\":10,\"personid\":\"LiSi_1632571715664\",\"id\":1632571715688,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 03:01:00');
INSERT INTO `sys_oper_log` VALUES (46, '充值/取现', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.editMoney()', 'POST', 1, 'bao', NULL, '/medical/info/money', '127.0.0.1', '内网IP', '{\"money\":100.0,\"type\":\"充值\",\"info\":{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632876420985,\"doId\":\"bao_1632876420985\",\"id\":\"bao_1632876421044\",\"params\":{},\"doType\":2,\"doUser\":\"bao\"},\"params\":{},\"money\":1600.0,\"cpa\":{\"code\":\"2535336464\",\"params\":{},\"name\":\"李四\"},\"deposit\":10,\"personid\":\"LiSi_1632571715664\",\"id\":1632571715688,\"lossTime\":1632844800000,\"status\":1}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 08:47:01');
INSERT INTO `sys_oper_log` VALUES (47, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"43052320021024431X\",\"sex\":\"0\",\"params\":{},\"name\":\"张斯\",\"id\":\"ZhangSi_1632877727227\",\"age\":29}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:08:47');
INSERT INTO `sys_oper_log` VALUES (48, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632877727244\",\"params\":{},\"createTime\":1632878255962,\"opDoctorReceiveRecordId\":\"bao_1632878255962\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:17:35');
INSERT INTO `sys_oper_log` VALUES (49, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632878267569,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632878255962\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:17:47');
INSERT INTO `sys_oper_log` VALUES (50, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":50.0,\"tmor\":{\"outpatientId\":\"1632877727244\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"doctorId\":\"1\",\"personId\":\"ZhangSi_1632877727227\",\"params\":{}},\"name\":\"张斯\"},\"personid\":\"ZhangSi_1632877727227\"},\"opDoctorReceiveRecordId\":\"bao_1632878255962\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":1,\"partName\":\"1001\",\"partNumber\":1,\"id\":\"bao_1632878494457\",\"opDoctorReceiveRecordId\":\"bao_1632878255962\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:21:34');
INSERT INTO `sys_oper_log` VALUES (51, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632878494457\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:22:00');
INSERT INTO `sys_oper_log` VALUES (52, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632878524428,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632878255962\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:22:04');
INSERT INTO `sys_oper_log` VALUES (53, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"感冒\",\"description\":\"发烧\",\"remark\":\"实施股份的\",\"opDoctorResultId\":\"bao_1632878758886\",\"opDoctorReceiveRecordId\":\"bao_1632878255962\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:25:58');
INSERT INTO `sys_oper_log` VALUES (54, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"id\":\"bao_1632878848197\",\"opDoctorResultId\":\"bao_1632878758886\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:27:28');
INSERT INTO `sys_oper_log` VALUES (55, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632798980503\",\"partNumber\":2,\"id\":\"bao_1632879033247\",\"opDoctorResultId\":\"bao_1632878758886\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:30:33');
INSERT INTO `sys_oper_log` VALUES (56, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"7\",\"listClass\":\"success\",\"dictSort\":7,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"dictLabel\":\"账单生成\",\"createBy\":\"bao\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1632800400000,\"dictCode\":158,\"updateBy\":\"bao\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:32:26');
INSERT INTO `sys_oper_log` VALUES (57, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"7\",\"listClass\":\"success\",\"dictSort\":7,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"dictLabel\":\"开药完成\",\"createBy\":\"bao\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1632800400000,\"dictCode\":158,\"updateBy\":\"bao\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:32:42');
INSERT INTO `sys_oper_log` VALUES (58, '药品', 1, 'com.ruoyi.medical.controller.DrugsInfoController.add()', 'POST', 1, 'bao', NULL, '/medical/drugs', '127.0.0.1', '内网IP', '{\"description\":\"抗生素\",\"params\":{},\"specifications\":\"0.6g*3片\",\"unit\":\"3\",\"money\":90.0,\"name\":\"青霉素\",\"id\":\"bao_1632879703419\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:41:43');
INSERT INTO `sys_oper_log` VALUES (59, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632879703419\",\"partNumber\":2,\"id\":\"bao_1632879974336\",\"opDoctorResultId\":\"bao_1632747215570\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:46:14');
INSERT INTO `sys_oper_log` VALUES (60, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632572316079\",\"params\":{},\"createTime\":1632880281987,\"opDoctorReceiveRecordId\":\"bao_1632880281987\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:51:22');
INSERT INTO `sys_oper_log` VALUES (61, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632880290194,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632880281987\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:51:30');
INSERT INTO `sys_oper_log` VALUES (62, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"肝癌\",\"description\":\"肝痛\",\"opDoctorResultId\":\"bao_1632880336366\",\"opDoctorReceiveRecordId\":\"bao_1632880281987\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:52:16');
INSERT INTO `sys_oper_log` VALUES (63, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632571768379\",\"params\":{},\"createTime\":1632880539665,\"opDoctorReceiveRecordId\":\"bao_1632880539665\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:55:39');
INSERT INTO `sys_oper_log` VALUES (64, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632880547329,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632880539665\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:55:47');
INSERT INTO `sys_oper_log` VALUES (65, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"肝癌\",\"description\":\"肝痛\",\"remark\":\"方法是否是\",\"opDoctorResultId\":\"bao_1632880564390\",\"opDoctorReceiveRecordId\":\"bao_1632880539665\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 09:56:04');
INSERT INTO `sys_oper_log` VALUES (66, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'bao', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"bao\",\"dictName\":\"病房状态\",\"remark\":\"1未分配2已分配\",\"params\":{},\"dictType\":\"medical_sickroom_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:12:22');
INSERT INTO `sys_oper_log` VALUES (67, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"danger\",\"dictSort\":1,\"params\":{},\"dictType\":\"medical_sickroom_status\",\"dictLabel\":\"未分配\",\"createBy\":\"bao\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:12:43');
INSERT INTO `sys_oper_log` VALUES (68, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"success\",\"dictSort\":2,\"params\":{},\"dictType\":\"medical_sickroom_status\",\"dictLabel\":\"已分配\",\"createBy\":\"bao\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:13:00');
INSERT INTO `sys_oper_log` VALUES (69, '病房记录', 1, 'com.ruoyi.medical.controller.CpoeSickroomController.add()', 'POST', 1, 'bao', NULL, '/medical/sickroom', '127.0.0.1', '内网IP', '{\"remark\":\"法法发\",\"params\":{},\"unit\":\"1\",\"name\":\"宝哥\",\"attribute\":\"1\",\"id\":\"bao_1632881717156\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:15:17');
INSERT INTO `sys_oper_log` VALUES (70, '床位记录', 2, 'com.ruoyi.medical.controller.CpoeBedController.edit()', 'PUT', 1, 'bao', NULL, '/medical/bed', '127.0.0.1', '内网IP', '{\"sickroomId\":\"bao_1632825651980\",\"name\":\"sickroom_1_001_bed_001\",\"remark\":\"bao分配了床位:bao_sickroom_1_001_bed_001\",\"id\":\"bao_1632827957755\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:20:47');
INSERT INTO `sys_oper_log` VALUES (71, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"医嘱记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"doctorsorder\",\"component\":\"medical/doctorsorder/index\",\"children\":[],\"createTime\":1632741102000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2169,\"menuType\":\"C\",\"perms\":\"medical:doctorsorder:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:22:26');
INSERT INTO `sys_oper_log` VALUES (72, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632571783796\",\"params\":{},\"createTime\":1632883523864,\"opDoctorReceiveRecordId\":\"bao_1632883523861\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:45:23');
INSERT INTO `sys_oper_log` VALUES (73, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632883529544,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632883523861\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:45:29');
INSERT INTO `sys_oper_log` VALUES (74, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":20.0,\"tmor\":{\"outpatientId\":\"1632571783796\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"doctorId\":\"1\",\"personId\":\"RuHua_1632571783773\",\"params\":{}},\"name\":\"如花\"},\"personid\":\"RuHua_1632571783773\"},\"opDoctorReceiveRecordId\":\"bao_1632883523861\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":1,\"partName\":\"1002\",\"partNumber\":2,\"id\":\"bao_1632883542980\",\"opDoctorReceiveRecordId\":\"bao_1632883523861\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:45:43');
INSERT INTO `sys_oper_log` VALUES (75, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632883542980\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:00');
INSERT INTO `sys_oper_log` VALUES (76, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632883543003\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:01');
INSERT INTO `sys_oper_log` VALUES (77, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632883566382,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632883523861\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:06');
INSERT INTO `sys_oper_log` VALUES (78, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"花柳病\",\"description\":\"广东省放多少天\",\"remark\":\"萨法\",\"opDoctorResultId\":\"bao_1632883583519\",\"opDoctorReceiveRecordId\":\"bao_1632883523861\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:23');
INSERT INTO `sys_oper_log` VALUES (79, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632879703419\",\"partNumber\":2,\"id\":\"bao_1632883604378\",\"opDoctorResultId\":\"bao_1632883583519\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:44');
INSERT INTO `sys_oper_log` VALUES (80, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799616936\",\"partNumber\":1,\"id\":\"bao_1632883616520\",\"opDoctorResultId\":\"bao_1632883583519\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:46:56');
INSERT INTO `sys_oper_log` VALUES (81, '患者费用账单', 2, 'com.ruoyi.medical.controller.CostBillController.edit()', 'PUT', 1, 'bao', NULL, '/medical/bill', '127.0.0.1', '内网IP', '{\"money\":300.0,\"createTime\":1632883654407,\"outpatientId\":\"1632571783796\",\"id\":\"bao_1632883621894\",\"coi\":{\"params\":{},\"money\":20000.0,\"cpa\":{\"params\":{},\"name\":\"如花\"},\"id\":1632571783796,\"status\":1},\"params\":{},\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:47:34');
INSERT INTO `sys_oper_log` VALUES (82, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"createTime\":1632883693729,\"doctorId\":\"1\",\"bedId\":\"bao_1632827988245\",\"personId\":\"HeiMaHe_1632571768359\",\"remark\":\"萨法\",\"id\":\"bao_1632883693729\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:48:13');
INSERT INTO `sys_oper_log` VALUES (83, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":1,\"id\":\"bao_1632883700063\",\"opDoctorResultId\":\"bao_1632880564390\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 10:48:20');
INSERT INTO `sys_oper_log` VALUES (84, '病房记录', 1, 'com.ruoyi.medical.controller.CpoeSickroomController.add()', 'POST', 1, 'bao', NULL, '/medical/sickroom', '127.0.0.1', '内网IP', '{\"remark\":\"今年的方法很多\",\"params\":{},\"unit\":\"2\",\"name\":\"二号病房\",\"attribute\":\"2\",\"id\":\"bao_1632887633102\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 11:53:53');
INSERT INTO `sys_oper_log` VALUES (85, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430523200210254321\",\"sex\":\"0\",\"params\":{},\"name\":\"李四\",\"id\":\"LiSi_1632888878115\",\"age\":27},\"money\":200.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:14:38');
INSERT INTO `sys_oper_log` VALUES (86, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430456200310234326\",\"sex\":\"1\",\"params\":{},\"name\":\"张三\",\"id\":\"ZhangSan_1632888928222\",\"age\":32},\"money\":500.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:15:28');
INSERT INTO `sys_oper_log` VALUES (87, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"43254320031214432X\",\"sex\":\"0\",\"params\":{},\"name\":\"王五\",\"id\":\"WangWu_1632888954934\",\"age\":15},\"money\":500.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:15:55');
INSERT INTO `sys_oper_log` VALUES (88, '充值/取现', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.editMoney()', 'POST', 1, 'bao', NULL, '/medical/info/money', '127.0.0.1', '内网IP', '{\"money\":450.0,\"type\":\"提现\",\"info\":{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632888995433,\"doId\":\"bao_1632888995433\",\"id\":\"bao_1632888995449\",\"params\":{},\"doType\":2,\"doUser\":\"bao\"},\"params\":{},\"money\":50.0,\"cpa\":{\"code\":\"430456200310234326\",\"params\":{},\"name\":\"张三\"},\"deposit\":10,\"personid\":\"ZhangSan_1632888928222\",\"id\":1632888928238,\"status\":1}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:16:35');
INSERT INTO `sys_oper_log` VALUES (89, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632888878133\",\"params\":{},\"createTime\":1632889008709,\"opDoctorReceiveRecordId\":\"bao_1632889008709\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:16:48');
INSERT INTO `sys_oper_log` VALUES (90, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632888928238\",\"params\":{},\"createTime\":1632889026082,\"opDoctorReceiveRecordId\":\"bao_1632889026082\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:06');
INSERT INTO `sys_oper_log` VALUES (91, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632889034945,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632889008709\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:14');
INSERT INTO `sys_oper_log` VALUES (92, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":20.0,\"tmor\":{\"outpatientId\":\"1632888878133\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"params\":{},\"doctorId\":\"1\",\"personId\":\"LiSi_1632888878115\"},\"name\":\"李四\"},\"personid\":\"LiSi_1632888878115\"},\"opDoctorReceiveRecordId\":\"bao_1632889008709\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":1,\"partName\":\"1002\",\"partNumber\":2,\"id\":\"bao_1632889042215\",\"opDoctorReceiveRecordId\":\"bao_1632889008709\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:22');
INSERT INTO `sys_oper_log` VALUES (93, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632889042215\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:33');
INSERT INTO `sys_oper_log` VALUES (94, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632889042234\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:34');
INSERT INTO `sys_oper_log` VALUES (95, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632889059265,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632889008709\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:39');
INSERT INTO `sys_oper_log` VALUES (96, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632889061811,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632889026082\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:17:41');
INSERT INTO `sys_oper_log` VALUES (97, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":100.0,\"tmor\":{\"outpatientId\":\"1632888928238\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"params\":{},\"doctorId\":\"1\",\"personId\":\"ZhangSan_1632888928222\"},\"name\":\"张三\"},\"personid\":\"ZhangSan_1632888928222\"},\"opDoctorReceiveRecordId\":\"bao_1632889026082\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":2,\"partName\":\"2002\",\"partNumber\":1,\"id\":\"bao_1632889080776\",\"opDoctorReceiveRecordId\":\"bao_1632889026082\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:18:00');
INSERT INTO `sys_oper_log` VALUES (98, 'PACS影像信息', 2, 'com.ruoyi.medical.controller.PacsInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/pacs', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632889080776\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:18:10');
INSERT INTO `sys_oper_log` VALUES (99, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632889093906,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632889026082\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:18:13');
INSERT INTO `sys_oper_log` VALUES (100, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"感冒\",\"description\":\"头疼\",\"remark\":\"多喝热水\",\"opDoctorResultId\":\"bao_1632889119695\",\"opDoctorReceiveRecordId\":\"bao_1632889008709\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:18:39');
INSERT INTO `sys_oper_log` VALUES (101, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"肝癌\",\"description\":\"肝痛\",\"remark\":\"住院治疗\",\"opDoctorResultId\":\"bao_1632889142847\",\"opDoctorReceiveRecordId\":\"bao_1632889026082\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:19:02');
INSERT INTO `sys_oper_log` VALUES (102, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":2,\"id\":\"bao_1632889166544\",\"opDoctorResultId\":\"bao_1632889119695\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:19:26');
INSERT INTO `sys_oper_log` VALUES (103, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632798980503\",\"partNumber\":1,\"id\":\"bao_1632889174759\",\"opDoctorResultId\":\"bao_1632889119695\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:19:34');
INSERT INTO `sys_oper_log` VALUES (104, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"bedId\":\"bao_1632881725217\",\"remark\":\"好房\",\"params\":{},\"createTime\":1632890173848,\"doctorId\":\"1\",\"personId\":\"ZhangSan_1632888928222\",\"id\":\"bao_1632890173848\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:36:13');
INSERT INTO `sys_oper_log` VALUES (105, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632879703419\",\"partNumber\":2,\"id\":\"bao_1632890344392\",\"opDoctorResultId\":\"bao_1632889142847\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:39:04');
INSERT INTO `sys_oper_log` VALUES (106, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":1,\"id\":\"bao_1632890359536\",\"opDoctorResultId\":\"bao_1632889142847\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:39:19');
INSERT INTO `sys_oper_log` VALUES (107, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799616936\",\"partNumber\":2,\"id\":\"bao_1632890614074\",\"opDoctorResultId\":\"bao_1632889119695\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:43:34');
INSERT INTO `sys_oper_log` VALUES (108, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632888954953\",\"params\":{},\"createTime\":1632891176649,\"opDoctorReceiveRecordId\":\"bao_1632891176649\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:52:56');
INSERT INTO `sys_oper_log` VALUES (109, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632891183574,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632891176649\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:53:03');
INSERT INTO `sys_oper_log` VALUES (110, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":70.0,\"tmor\":{\"outpatientId\":\"1632888954953\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"params\":{},\"doctorId\":\"1\",\"personId\":\"WangWu_1632888954934\"},\"name\":\"王五\"},\"personid\":\"WangWu_1632888954934\"},\"opDoctorReceiveRecordId\":\"bao_1632891176649\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":2,\"partName\":\"2001\",\"partNumber\":1,\"id\":\"bao_1632891191013\",\"opDoctorReceiveRecordId\":\"bao_1632891176649\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:53:11');
INSERT INTO `sys_oper_log` VALUES (111, 'PACS影像信息', 2, 'com.ruoyi.medical.controller.PacsInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/pacs', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632891191013\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:53:20');
INSERT INTO `sys_oper_log` VALUES (112, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632891206586,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632891176649\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:53:26');
INSERT INTO `sys_oper_log` VALUES (113, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"肾虚\",\"description\":\"晚上睡不着\",\"remark\":\"多喝热水\",\"opDoctorResultId\":\"bao_1632891259685\",\"opDoctorReceiveRecordId\":\"bao_1632891176649\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:54:19');
INSERT INTO `sys_oper_log` VALUES (114, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":2,\"id\":\"bao_1632891274190\",\"opDoctorResultId\":\"bao_1632891259685\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:54:34');
INSERT INTO `sys_oper_log` VALUES (115, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":3,\"id\":\"bao_1632891285812\",\"opDoctorResultId\":\"bao_1632891259685\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:54:45');
INSERT INTO `sys_oper_log` VALUES (116, '患者费用账单', 2, 'com.ruoyi.medical.controller.CostBillController.edit()', 'PUT', 1, 'bao', NULL, '/medical/bill', '127.0.0.1', '内网IP', '{\"money\":270.0,\"createTime\":1632891318670,\"outpatientId\":\"1632888954953\",\"id\":\"bao_1632891293341\",\"coi\":{\"params\":{},\"money\":500.0,\"cpa\":{\"params\":{},\"name\":\"王五\"},\"id\":1632888954953,\"status\":1},\"params\":{},\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:55:18');
INSERT INTO `sys_oper_log` VALUES (117, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430523200412214321\",\"sex\":\"1\",\"params\":{},\"name\":\"黑虎\",\"id\":\"HeiHu_1632891466941\",\"age\":28},\"money\":200.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:57:46');
INSERT INTO `sys_oper_log` VALUES (118, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632891466955\",\"params\":{},\"createTime\":1632891473538,\"opDoctorReceiveRecordId\":\"bao_1632891473538\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:57:53');
INSERT INTO `sys_oper_log` VALUES (119, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632891487153,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632891473538\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:58:07');
INSERT INTO `sys_oper_log` VALUES (120, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"脑膜炎\",\"description\":\"脑壳痛\",\"remark\":\"多多关照\",\"opDoctorResultId\":\"bao_1632891514980\",\"opDoctorReceiveRecordId\":\"bao_1632891473538\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:58:35');
INSERT INTO `sys_oper_log` VALUES (121, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"bedId\":\"bao_1632887656896\",\"remark\":\"多注意\",\"params\":{},\"createTime\":1632891550267,\"doctorId\":\"1\",\"personId\":\"HeiHu_1632891466941\",\"id\":\"bao_1632891550267\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:59:10');
INSERT INTO `sys_oper_log` VALUES (122, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799616936\",\"partNumber\":2,\"id\":\"bao_1632891568640\",\"opDoctorResultId\":\"bao_1632891514980\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 12:59:28');
INSERT INTO `sys_oper_log` VALUES (123, '分床记录', 3, 'com.ruoyi.medical.controller.CpoeSplitbedController.remove()', 'DELETE', 1, 'bao', NULL, '/medical/splitbed/bao_1632890173848', '127.0.0.1', '内网IP', '{ids=bao_1632890173848}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:08:46');
INSERT INTO `sys_oper_log` VALUES (124, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'bao', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"9\",\"listClass\":\"primary\",\"dictSort\":9,\"params\":{},\"dictType\":\"medical_receiveRecord_status\",\"dictLabel\":\"已出院\",\"createBy\":\"bao\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:10:28');
INSERT INTO `sys_oper_log` VALUES (125, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"bedId\":\"bao_1632887656896\",\"remark\":\"多多关照\",\"params\":{},\"createTime\":1632892865387,\"doctorId\":\"1\",\"personId\":\"ZhangSan_1632888928222\",\"id\":\"bao_1632889026082\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:21:05');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"医嘱记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"doctorsorder\",\"component\":\"medical/doctorsorder/index\",\"children\":[],\"createTime\":1632741102000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2169,\"menuType\":\"C\",\"perms\":\"medical:doctorsorder:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:27:54');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"1\",\"menuName\":\"患者费用明细\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"detail\",\"component\":\"medical/detail/index\",\"children\":[],\"createTime\":1632806440000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2188,\"menuType\":\"C\",\"perms\":\"medical:detail:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:28:01');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"3\",\"menuName\":\"操作记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"do\",\"component\":\"medical/do/index\",\"children\":[],\"createTime\":1632469759000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2138,\"menuType\":\"C\",\"perms\":\"medical:do:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:28:06');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"医嘱记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"doctorsorder\",\"component\":\"medical/doctorsorder/index\",\"children\":[],\"createTime\":1632741102000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2169,\"menuType\":\"C\",\"perms\":\"medical:doctorsorder:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:29:37');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"documentation\",\"orderNum\":\"1\",\"menuName\":\"患者费用明细\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"detail\",\"component\":\"medical/detail/index\",\"children\":[],\"createTime\":1632806440000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2188,\"menuType\":\"C\",\"perms\":\"medical:detail:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:29:42');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"build\",\"orderNum\":\"3\",\"menuName\":\"操作记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"do\",\"component\":\"medical/do/index\",\"children\":[],\"createTime\":1632469759000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2138,\"menuType\":\"C\",\"perms\":\"medical:do:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:29:47');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"个人档案建档\",\"params\":{},\"parentId\":2126,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632398328000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2129,\"menuType\":\"F\",\"perms\":\"medical:archives:jian\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:30:59');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"个人档案办卡\",\"params\":{},\"parentId\":2126,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632398328000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2130,\"menuType\":\"F\",\"perms\":\"medical:archives:ban\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:31:15');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"个人档案修改\",\"params\":{},\"parentId\":2126,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632398328000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2128,\"menuType\":\"F\",\"perms\":\"medical:archives:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:31:46');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"接诊记录接诊\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2152,\"menuType\":\"F\",\"perms\":\"medical:receiverecord:jie\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:32:31');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"接诊记录需做检查\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2153,\"menuType\":\"F\",\"perms\":\"medical:receiverecord:jian\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:32:49');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"接诊记录检查详情\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2154,\"menuType\":\"F\",\"perms\":\"medical:receiverecord:jianxq\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:33:10');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"6\",\"menuName\":\"接诊记录开药\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"createBy\":\"bao\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"medical:receiverecord:kai\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:34:10');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"7\",\"menuName\":\"接诊记录用药详情\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"createBy\":\"bao\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"medical:receiverecord:kaixq\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:34:47');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"8\",\"menuName\":\"接诊记录完成开药\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"createBy\":\"bao\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"medical:receiverecord:wan\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:35:20');
INSERT INTO `sys_oper_log` VALUES (141, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888928238\",\"id\":\"bao_1632888928246\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":50.0,\"cpa\":{\"code\":\"430456200310234326\",\"params\":{},\"name\":\"张三\"},\"deposit\":10,\"personid\":\"ZhangSan_1632888928222\",\"id\":1632888928238,\"lossTime\":1632893881789,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:38:01');
INSERT INTO `sys_oper_log` VALUES (142, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632893885690,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888928238\",\"id\":\"bao_1632888928246\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":50.0,\"cpa\":{\"code\":\"430456200310234326\",\"params\":{},\"name\":\"张三\"},\"deposit\":10,\"personid\":\"ZhangSan_1632888928222\",\"id\":1632888928238,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:38:05');
INSERT INTO `sys_oper_log` VALUES (143, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888928238\",\"id\":\"bao_1632888928246\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":50.0,\"cpa\":{\"code\":\"430456200310234326\",\"params\":{},\"name\":\"张三\"},\"deposit\":10,\"personid\":\"ZhangSan_1632888928222\",\"id\":1632888928238,\"lossTime\":1632893904904,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:38:24');
INSERT INTO `sys_oper_log` VALUES (144, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632893921363,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888928238\",\"id\":\"bao_1632888928246\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":50.0,\"cpa\":{\"code\":\"430456200310234326\",\"params\":{},\"name\":\"张三\"},\"deposit\":10,\"personid\":\"ZhangSan_1632888928222\",\"id\":1632888928238,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:38:41');
INSERT INTO `sys_oper_log` VALUES (145, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430523200304234321\",\"sex\":\"1\",\"params\":{},\"name\":\"所长\",\"id\":\"SuoZhang_1632893964839\",\"age\":24},\"money\":10.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:39:24');
INSERT INTO `sys_oper_log` VALUES (146, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632893964860\",\"params\":{},\"createTime\":1632893974184,\"opDoctorReceiveRecordId\":\"bao_1632893974184\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:39:34');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"monitor\",\"orderNum\":\"1\",\"menuName\":\"药品采购信息\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"purchase\",\"component\":\"medical/purchase/index\",\"children\":[],\"createTime\":1632824749000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2237,\"menuType\":\"C\",\"perms\":\"medical:purchase:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:46:13');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"1\",\"menuName\":\"药库库存\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"storage\",\"component\":\"medical/storage/index\",\"children\":[],\"createTime\":1632824771000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2243,\"menuType\":\"C\",\"perms\":\"medical:storage:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:46:19');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"input\",\"orderNum\":\"1\",\"menuName\":\"药房库存\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"pharmacy\",\"component\":\"medical/pharmacy/index\",\"children\":[],\"createTime\":1632824798000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2249,\"menuType\":\"C\",\"perms\":\"medical:pharmacy:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:46:24');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"redis\",\"orderNum\":\"1\",\"menuName\":\"盘点记录\",\"params\":{},\"parentId\":6,\"isCache\":\"0\",\"path\":\"inventory\",\"component\":\"medical/inventory/index\",\"children\":[],\"createTime\":1632824836000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2255,\"menuType\":\"C\",\"perms\":\"medical:inventory:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:46:28');
INSERT INTO `sys_oper_log` VALUES (151, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'bao', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"医生\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1631948580000,\"updateBy\":\"bao\",\"menuCheckStrictly\":true,\"roleKey\":\"doctor\",\"roleName\":\"医生\",\"menuIds\":[4,5,2150,2151,2152,2153,2154,2155,2268,2269,2270,2261],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:47:29');
INSERT INTO `sys_oper_log` VALUES (152, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'bao', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"护士\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1632400292000,\"updateBy\":\"bao\",\"menuCheckStrictly\":true,\"roleKey\":\"nurse\",\"roleName\":\"护士\",\"menuIds\":[4,2126,2127,2128,2129,2130,2131,2144,2145,2146,2147,2148,2149,2169,2170,2171,2172,2173,2174,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2168,2156,2157,2158,2159,2160,2161,2162,2163,2164,2165,2166,2167,6,2176,2177,2178,2179,2180,2181,2237,2238,2239,2240,2241,2242,2243,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,2257,2258,2259,2260,5,2261,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:48:04');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"9\",\"menuName\":\"接诊记录诊断\",\"params\":{},\"parentId\":2150,\"isCache\":\"0\",\"createBy\":\"bao\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"medical:receiverecord:zhen\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:51:42');
INSERT INTO `sys_oper_log` VALUES (154, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'bao', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"医生\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1631948580000,\"updateBy\":\"bao\",\"menuCheckStrictly\":true,\"roleKey\":\"doctor\",\"roleName\":\"医生\",\"menuIds\":[4,5,2150,2151,2152,2153,2154,2155,2268,2269,2270,2271,2261],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:56:42');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'bao', NULL, '/system/menu/2127', '127.0.0.1', '内网IP', '{menuId=2127}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-09-29 13:58:05');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'bao', NULL, '/system/menu/2128', '127.0.0.1', '内网IP', '{menuId=2128}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-09-29 13:58:16');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"个人档案\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"archives\",\"component\":\"medical/archives/index\",\"children\":[],\"createTime\":1632398328000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2126,\"menuType\":\"C\",\"perms\":\"doctor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:59:10');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"接诊管理\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"receiverecord\",\"component\":\"medical/receiverecord/index\",\"children\":[],\"createTime\":1632630912000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2150,\"menuType\":\"C\",\"perms\":\"doctor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 13:59:31');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"个人档案\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"archives\",\"component\":\"medical/archives/index\",\"children\":[],\"createTime\":1632398328000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2126,\"menuType\":\"C\",\"perms\":\"nurse\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:00:04');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'bao', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"1\",\"menuName\":\"门诊卡充值记录\",\"params\":{},\"parentId\":4,\"isCache\":\"0\",\"path\":\"record\",\"component\":\"medical/record/index\",\"children\":[],\"createTime\":1632551389000,\"updateBy\":\"bao\",\"isFrame\":\"1\",\"menuId\":2144,\"menuType\":\"C\",\"perms\":\"nurse\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:00:16');
INSERT INTO `sys_oper_log` VALUES (161, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430523200103234321\",\"sex\":\"1\",\"params\":{},\"name\":\"百里长空\",\"id\":\"BaiLiZhangKong_1632895278350\",\"age\":25},\"money\":500.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:01:18');
INSERT INTO `sys_oper_log` VALUES (162, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"43052320021024431X\",\"sex\":\"0\",\"params\":{},\"name\":\"张宝\",\"id\":\"ZhangBao_1632897458339\",\"age\":15},\"money\":500.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:37:38');
INSERT INTO `sys_oper_log` VALUES (163, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632897458353\",\"id\":\"bao_1632897458361\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":500.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632897502012,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:38:22');
INSERT INTO `sys_oper_log` VALUES (164, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632897552367,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632897458353\",\"id\":\"bao_1632897458361\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":500.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:39:12');
INSERT INTO `sys_oper_log` VALUES (165, '充值/取现', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.editMoney()', 'POST', 1, 'bao', NULL, '/medical/info/money', '127.0.0.1', '内网IP', '{\"money\":500.0,\"type\":\"提现\",\"info\":{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632897580544,\"doId\":\"bao_1632897580544\",\"id\":\"bao_1632897580574\",\"params\":{},\"doType\":2,\"doUser\":\"bao\"},\"params\":{},\"money\":0.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632844800000,\"status\":1}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:39:40');
INSERT INTO `sys_oper_log` VALUES (166, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"deadTime\":1632897592750,\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632897458353\",\"id\":\"bao_1632897458361\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":0.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632844800000,\"status\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:39:52');
INSERT INTO `sys_oper_log` VALUES (167, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"deadTime\":1632844800000,\"enableTime\":1632897600519,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632897458353\",\"id\":\"bao_1632897458361\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":0.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:40:00');
INSERT INTO `sys_oper_log` VALUES (168, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"deadTime\":1632844800000,\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632897458353\",\"id\":\"bao_1632897458361\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"returnTime\":1632897608086,\"money\":0.0,\"cpa\":{\"code\":\"43052320021024431X\",\"params\":{},\"name\":\"张宝\"},\"deposit\":10,\"personid\":\"ZhangBao_1632897458339\",\"id\":1632897458353,\"lossTime\":1632844800000,\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:40:08');
INSERT INTO `sys_oper_log` VALUES (169, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430523200210234321\",\"sex\":\"0\",\"params\":{},\"name\":\"李伍\",\"id\":\"LiWu_1632897704783\",\"age\":18},\"money\":400.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:41:44');
INSERT INTO `sys_oper_log` VALUES (170, '接诊记录', 1, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.add()', 'POST', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"outpatientId\":\"1632897704798\",\"params\":{},\"createTime\":1632897716562,\"opDoctorReceiveRecordId\":\"bao_1632897716562\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:41:56');
INSERT INTO `sys_oper_log` VALUES (171, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632897726839,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632893974184\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:42:06');
INSERT INTO `sys_oper_log` VALUES (172, '医生看病流程', 1, 'com.ruoyi.medical.controller.OutpatientdoctorActionController.add()', 'POST', 1, 'bao', NULL, '/medical/action', '127.0.0.1', '内网IP', '{\"partMoney\":20.0,\"tmor\":{\"outpatientId\":\"1632893964860\",\"params\":{},\"createTime\":1632844800000,\"doctorId\":\"1\",\"coi\":{\"params\":{},\"cpa\":{\"params\":{},\"cs\":{\"params\":{},\"doctorId\":\"1\",\"personId\":\"SuoZhang_1632893964839\"},\"name\":\"所长\"},\"personid\":\"SuoZhang_1632893964839\"},\"opDoctorReceiveRecordId\":\"bao_1632893974184\",\"user\":{\"admin\":false,\"nickName\":\"宝哥\",\"params\":{}},\"status\":2},\"params\":{},\"type\":1,\"partName\":\"1002\",\"partNumber\":2,\"id\":\"bao_1632897750071\",\"opDoctorReceiveRecordId\":\"bao_1632893974184\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:42:30');
INSERT INTO `sys_oper_log` VALUES (173, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632897750071\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:42:48');
INSERT INTO `sys_oper_log` VALUES (174, 'Lis检验信息', 2, 'com.ruoyi.medical.controller.LisInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/lis', '127.0.0.1', '内网IP', '{\"params\":{},\"id\":\"bao_1632897750097\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:42:49');
INSERT INTO `sys_oper_log` VALUES (175, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632897773641,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632893974184\",\"status\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:42:53');
INSERT INTO `sys_oper_log` VALUES (176, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"感冒\",\"description\":\"发发撒\",\"remark\":\"郭德纲\",\"opDoctorResultId\":\"bao_1632897795601\",\"opDoctorReceiveRecordId\":\"bao_1632893974184\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:43:15');
INSERT INTO `sys_oper_log` VALUES (177, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799140275\",\"partNumber\":2,\"id\":\"bao_1632897805684\",\"opDoctorResultId\":\"bao_1632897795601\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:43:25');
INSERT INTO `sys_oper_log` VALUES (178, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799696037\",\"partNumber\":1,\"id\":\"bao_1632897816408\",\"opDoctorResultId\":\"bao_1632897795601\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:43:36');
INSERT INTO `sys_oper_log` VALUES (179, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632844800000,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888878133\",\"id\":\"bao_1632888878145\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":200.0,\"cpa\":{\"code\":\"430523200210254321\",\"params\":{},\"name\":\"李四\"},\"deposit\":10,\"personid\":\"LiSi_1632888878115\",\"id\":1632888878133,\"lossTime\":1632897867903,\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:44:27');
INSERT INTO `sys_oper_log` VALUES (180, '门诊卡信息', 2, 'com.ruoyi.medical.controller.CostOutpatientInfoController.edit()', 'PUT', 1, 'bao', NULL, '/medical/info', '127.0.0.1', '内网IP', '{\"enableTime\":1632897884346,\"tmd\":{\"doTime\":1632844800000,\"doId\":\"1632888878133\",\"id\":\"bao_1632888878145\",\"params\":{},\"doType\":1,\"doUser\":\"bao\"},\"params\":{},\"money\":200.0,\"cpa\":{\"code\":\"430523200210254321\",\"params\":{},\"name\":\"李四\"},\"deposit\":10,\"personid\":\"LiSi_1632888878115\",\"id\":1632888878133,\"lossTime\":1632844800000,\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:44:44');
INSERT INTO `sys_oper_log` VALUES (181, '患者费用账单', 2, 'com.ruoyi.medical.controller.CostBillController.edit()', 'PUT', 1, 'bao', NULL, '/medical/bill', '127.0.0.1', '内网IP', '{\"money\":140.0,\"createTime\":1632897888996,\"outpatientId\":\"1632888878133\",\"id\":\"bao_1632889180236\",\"coi\":{\"params\":{},\"money\":200.0,\"cpa\":{\"params\":{},\"name\":\"李四\"},\"id\":1632888878133,\"status\":1},\"params\":{},\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:44:49');
INSERT INTO `sys_oper_log` VALUES (182, '接诊记录', 2, 'com.ruoyi.medical.controller.TMedicalOutpatientdoctorReceiverecordController.edit()', 'PUT', 1, 'bao', NULL, '/medical/receiverecord', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1632897910065,\"doctorId\":\"1\",\"opDoctorReceiveRecordId\":\"bao_1632897716562\",\"status\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:45:10');
INSERT INTO `sys_oper_log` VALUES (183, '医生看病结果', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResultController.add()', 'POST', 1, 'bao', NULL, '/medical/result', '127.0.0.1', '内网IP', '{\"name\":\"癌症\",\"description\":\"打发\",\"remark\":\"大大\",\"opDoctorResultId\":\"bao_1632897933128\",\"opDoctorReceiveRecordId\":\"bao_1632897716562\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:45:33');
INSERT INTO `sys_oper_log` VALUES (184, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"bedId\":\"bao_1632881725217\",\"remark\":\"大萨达\",\"params\":{},\"createTime\":1632897967791,\"doctorId\":\"1\",\"personId\":\"LiWu_1632897704783\",\"id\":\"bao_1632897716562\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:46:07');
INSERT INTO `sys_oper_log` VALUES (185, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799616936\",\"partNumber\":2,\"id\":\"bao_1632897986298\",\"opDoctorResultId\":\"bao_1632897933128\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:46:26');
INSERT INTO `sys_oper_log` VALUES (186, '医生看病治疗方案', 1, 'com.ruoyi.medical.controller.OutpatientdoctorResulthandleController.add()', 'POST', 1, 'bao', NULL, '/medical/resulthandle', '127.0.0.1', '内网IP', '{\"drugsId\":\"bao_1632799696037\",\"partNumber\":3,\"id\":\"bao_1632898001404\",\"opDoctorResultId\":\"bao_1632897933128\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:46:41');
INSERT INTO `sys_oper_log` VALUES (187, '分床记录', 1, 'com.ruoyi.medical.controller.CpoeSplitbedController.add()', 'POST', 1, 'bao', NULL, '/medical/splitbed', '127.0.0.1', '内网IP', '{\"bedId\":\"bao_1632881725217\",\"remark\":\"鼎折覆餗\",\"params\":{},\"createTime\":1632898054188,\"doctorId\":\"1\",\"personId\":\"HeiHu_1632891466941\",\"id\":\"bao_1632891473538\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 14:47:34');
INSERT INTO `sys_oper_log` VALUES (188, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"sex\":\"0\",\"params\":{},\"id\":\"ZhangBao_1632897458339\"},\"money\":500.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 15:13:32');
INSERT INTO `sys_oper_log` VALUES (189, '个人档案', 1, 'com.ruoyi.medical.controller.CostPersonArchivesController.jd()', 'POST', 1, 'bao', NULL, '/medical/archives/jd', '127.0.0.1', '内网IP', '{\"archives\":{\"code\":\"430345200210244321\",\"sex\":\"0\",\"params\":{},\"name\":\"风韵\",\"id\":\"FengYun_1632899648443\",\"age\":27},\"money\":200.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-29 15:14:08');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-09-18 15:03:00', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'bz', '部长', 2, '0', 'admin', '2021-09-18 15:03:00', 'admin', '2021-09-23 20:25:11', '');
INSERT INTO `sys_post` VALUES (3, 'kszr', '科室主任', 3, '0', 'admin', '2021-09-18 15:03:00', 'admin', '2021-09-23 20:25:32', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-09-18 15:03:00', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', 1, 1, '0', '0', 'bao', '2021-09-18 15:03:00', 'bao', NULL, '管理员');
INSERT INTO `sys_role` VALUES (2, '医生', 'doctor', 2, '2', 1, 1, '0', '0', 'bao', '2021-09-18 15:03:00', 'bao', '2021-09-29 13:56:42', '医生');
INSERT INTO `sys_role` VALUES (100, '护士', 'nurse', 3, '1', 1, 1, '0', '0', 'bao', '2021-09-23 20:31:32', 'bao', '2021-09-29 13:48:04', '护士');
INSERT INTO `sys_role` VALUES (101, '患者', 'patient', 4, '1', 1, 1, '0', '0', 'bao', '2021-09-23 20:32:56', 'bao', NULL, '患者');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 2150);
INSERT INTO `sys_role_menu` VALUES (2, 2151);
INSERT INTO `sys_role_menu` VALUES (2, 2152);
INSERT INTO `sys_role_menu` VALUES (2, 2153);
INSERT INTO `sys_role_menu` VALUES (2, 2154);
INSERT INTO `sys_role_menu` VALUES (2, 2155);
INSERT INTO `sys_role_menu` VALUES (2, 2261);
INSERT INTO `sys_role_menu` VALUES (2, 2268);
INSERT INTO `sys_role_menu` VALUES (2, 2269);
INSERT INTO `sys_role_menu` VALUES (2, 2270);
INSERT INTO `sys_role_menu` VALUES (2, 2271);
INSERT INTO `sys_role_menu` VALUES (100, 4);
INSERT INTO `sys_role_menu` VALUES (100, 5);
INSERT INTO `sys_role_menu` VALUES (100, 6);
INSERT INTO `sys_role_menu` VALUES (100, 2126);
INSERT INTO `sys_role_menu` VALUES (100, 2127);
INSERT INTO `sys_role_menu` VALUES (100, 2128);
INSERT INTO `sys_role_menu` VALUES (100, 2129);
INSERT INTO `sys_role_menu` VALUES (100, 2130);
INSERT INTO `sys_role_menu` VALUES (100, 2131);
INSERT INTO `sys_role_menu` VALUES (100, 2132);
INSERT INTO `sys_role_menu` VALUES (100, 2133);
INSERT INTO `sys_role_menu` VALUES (100, 2134);
INSERT INTO `sys_role_menu` VALUES (100, 2135);
INSERT INTO `sys_role_menu` VALUES (100, 2136);
INSERT INTO `sys_role_menu` VALUES (100, 2137);
INSERT INTO `sys_role_menu` VALUES (100, 2138);
INSERT INTO `sys_role_menu` VALUES (100, 2139);
INSERT INTO `sys_role_menu` VALUES (100, 2140);
INSERT INTO `sys_role_menu` VALUES (100, 2141);
INSERT INTO `sys_role_menu` VALUES (100, 2142);
INSERT INTO `sys_role_menu` VALUES (100, 2143);
INSERT INTO `sys_role_menu` VALUES (100, 2144);
INSERT INTO `sys_role_menu` VALUES (100, 2145);
INSERT INTO `sys_role_menu` VALUES (100, 2146);
INSERT INTO `sys_role_menu` VALUES (100, 2147);
INSERT INTO `sys_role_menu` VALUES (100, 2148);
INSERT INTO `sys_role_menu` VALUES (100, 2149);
INSERT INTO `sys_role_menu` VALUES (100, 2156);
INSERT INTO `sys_role_menu` VALUES (100, 2157);
INSERT INTO `sys_role_menu` VALUES (100, 2158);
INSERT INTO `sys_role_menu` VALUES (100, 2159);
INSERT INTO `sys_role_menu` VALUES (100, 2160);
INSERT INTO `sys_role_menu` VALUES (100, 2161);
INSERT INTO `sys_role_menu` VALUES (100, 2162);
INSERT INTO `sys_role_menu` VALUES (100, 2163);
INSERT INTO `sys_role_menu` VALUES (100, 2164);
INSERT INTO `sys_role_menu` VALUES (100, 2165);
INSERT INTO `sys_role_menu` VALUES (100, 2166);
INSERT INTO `sys_role_menu` VALUES (100, 2167);
INSERT INTO `sys_role_menu` VALUES (100, 2168);
INSERT INTO `sys_role_menu` VALUES (100, 2169);
INSERT INTO `sys_role_menu` VALUES (100, 2170);
INSERT INTO `sys_role_menu` VALUES (100, 2171);
INSERT INTO `sys_role_menu` VALUES (100, 2172);
INSERT INTO `sys_role_menu` VALUES (100, 2173);
INSERT INTO `sys_role_menu` VALUES (100, 2174);
INSERT INTO `sys_role_menu` VALUES (100, 2176);
INSERT INTO `sys_role_menu` VALUES (100, 2177);
INSERT INTO `sys_role_menu` VALUES (100, 2178);
INSERT INTO `sys_role_menu` VALUES (100, 2179);
INSERT INTO `sys_role_menu` VALUES (100, 2180);
INSERT INTO `sys_role_menu` VALUES (100, 2181);
INSERT INTO `sys_role_menu` VALUES (100, 2182);
INSERT INTO `sys_role_menu` VALUES (100, 2183);
INSERT INTO `sys_role_menu` VALUES (100, 2184);
INSERT INTO `sys_role_menu` VALUES (100, 2185);
INSERT INTO `sys_role_menu` VALUES (100, 2186);
INSERT INTO `sys_role_menu` VALUES (100, 2187);
INSERT INTO `sys_role_menu` VALUES (100, 2188);
INSERT INTO `sys_role_menu` VALUES (100, 2189);
INSERT INTO `sys_role_menu` VALUES (100, 2190);
INSERT INTO `sys_role_menu` VALUES (100, 2191);
INSERT INTO `sys_role_menu` VALUES (100, 2192);
INSERT INTO `sys_role_menu` VALUES (100, 2193);
INSERT INTO `sys_role_menu` VALUES (100, 2195);
INSERT INTO `sys_role_menu` VALUES (100, 2196);
INSERT INTO `sys_role_menu` VALUES (100, 2197);
INSERT INTO `sys_role_menu` VALUES (100, 2198);
INSERT INTO `sys_role_menu` VALUES (100, 2199);
INSERT INTO `sys_role_menu` VALUES (100, 2200);
INSERT INTO `sys_role_menu` VALUES (100, 2201);
INSERT INTO `sys_role_menu` VALUES (100, 2202);
INSERT INTO `sys_role_menu` VALUES (100, 2203);
INSERT INTO `sys_role_menu` VALUES (100, 2204);
INSERT INTO `sys_role_menu` VALUES (100, 2205);
INSERT INTO `sys_role_menu` VALUES (100, 2206);
INSERT INTO `sys_role_menu` VALUES (100, 2207);
INSERT INTO `sys_role_menu` VALUES (100, 2208);
INSERT INTO `sys_role_menu` VALUES (100, 2209);
INSERT INTO `sys_role_menu` VALUES (100, 2210);
INSERT INTO `sys_role_menu` VALUES (100, 2211);
INSERT INTO `sys_role_menu` VALUES (100, 2212);
INSERT INTO `sys_role_menu` VALUES (100, 2237);
INSERT INTO `sys_role_menu` VALUES (100, 2238);
INSERT INTO `sys_role_menu` VALUES (100, 2239);
INSERT INTO `sys_role_menu` VALUES (100, 2240);
INSERT INTO `sys_role_menu` VALUES (100, 2241);
INSERT INTO `sys_role_menu` VALUES (100, 2242);
INSERT INTO `sys_role_menu` VALUES (100, 2243);
INSERT INTO `sys_role_menu` VALUES (100, 2244);
INSERT INTO `sys_role_menu` VALUES (100, 2245);
INSERT INTO `sys_role_menu` VALUES (100, 2246);
INSERT INTO `sys_role_menu` VALUES (100, 2247);
INSERT INTO `sys_role_menu` VALUES (100, 2248);
INSERT INTO `sys_role_menu` VALUES (100, 2249);
INSERT INTO `sys_role_menu` VALUES (100, 2250);
INSERT INTO `sys_role_menu` VALUES (100, 2251);
INSERT INTO `sys_role_menu` VALUES (100, 2252);
INSERT INTO `sys_role_menu` VALUES (100, 2253);
INSERT INTO `sys_role_menu` VALUES (100, 2254);
INSERT INTO `sys_role_menu` VALUES (100, 2255);
INSERT INTO `sys_role_menu` VALUES (100, 2256);
INSERT INTO `sys_role_menu` VALUES (100, 2257);
INSERT INTO `sys_role_menu` VALUES (100, 2258);
INSERT INTO `sys_role_menu` VALUES (100, 2259);
INSERT INTO `sys_role_menu` VALUES (100, 2260);
INSERT INTO `sys_role_menu` VALUES (100, 2261);
INSERT INTO `sys_role_menu` VALUES (101, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 1, 'bao', '宝哥', '00', '2700564384@qq.com', '17680783834', '0', '/profile/avatar/2021/09/24/e0005466-f8f1-4f2d-9f84-89a67752f426.jpeg', '$2a$10$6acRKR6TYbYYzE4ig7w3GeJZPaP53KY445cn5UTRqBg7AEGibSWEG', '0', '0', '127.0.0.1', '2021-09-29 14:29:29', 'bao', '2021-09-22 08:46:46', '', '2021-09-29 14:29:28', '管理员');
INSERT INTO `sys_user` VALUES (101, 201, 'yang', '小扬', '00', 'yang@qq.com', '13634566432', '0', '', '$2a$10$gTOjIHw9d/aCgiUYtVgqHOdKzstIvN9jWz1.w9OFUQYcb0azutvvW', '0', '0', '127.0.0.1', '2021-09-29 13:55:49', 'bao', '2021-09-24 13:57:30', 'bao', '2021-09-29 13:55:48', NULL);
INSERT INTO `sys_user` VALUES (102, 200, 'hang', '小航', '00', 'hang@qq.com', '13645343456', '0', '', '$2a$10$r5qAzwGT/zYS/5/gGbUHfuHmNPNNuPQJnLjwS664IOfrUR93hCZ0y', '0', '0', '', NULL, 'bao', '2021-09-24 13:59:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, 202, 'hong', '小红', '00', 'hong@qq.com', '13434543345', '1', '', '$2a$10$lWasRH4oeQY6l.EHxHcogORezps1Yk8clACKlepRIrwMF7.sTP3NK', '0', '0', '127.0.0.1', '2021-09-29 02:58:24', 'bao', '2021-09-24 13:59:56', '', '2021-09-29 02:58:23', NULL);
INSERT INTO `sys_user` VALUES (104, 203, 'yong', '小勇', '00', 'yong@qq.com', '13654345436', '0', '', '$2a$10$cDxfLJeraNoiIyEDqfvJ0up.QNWyUXK1wJ8eRnyh7kEhycOxRZg52', '0', '0', '', NULL, 'bao', '2021-09-24 14:00:48', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 203, 'kai', '小凯', '00', 'kai@qq.com', '13434543234', '0', '', '$2a$10$I9gDXIuCw4Zt.3EceCVWNe9dFM1APl5FGfp3HnsIvB/9kboTb/oJu', '0', '0', '', NULL, 'bao', '2021-09-24 14:01:26', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (101, 2);
INSERT INTO `sys_user_post` VALUES (102, 2);
INSERT INTO `sys_user_post` VALUES (103, 2);
INSERT INTO `sys_user_post` VALUES (104, 2);
INSERT INTO `sys_user_post` VALUES (105, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (101, 2);
INSERT INTO `sys_user_role` VALUES (102, 2);
INSERT INTO `sys_user_role` VALUES (103, 100);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (105, 100);

-- ----------------------------
-- Table structure for t_medical_base_data_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_data_dict`;
CREATE TABLE `t_medical_base_data_dict`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dataSource` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_data_dict
-- ----------------------------
INSERT INTO `t_medical_base_data_dict` VALUES ('dateDetail1630594504', 'dateDetail', '1上午2下午');
INSERT INTO `t_medical_base_data_dict` VALUES ('leve1630593671', 'level', '1菜单2子菜单3按钮');
INSERT INTO `t_medical_base_data_dict` VALUES ('status1630593958', 'status', '1启用2挂失3作废4退卡');
INSERT INTO `t_medical_base_data_dict` VALUES ('type1630594055', 'type', '1充值2取现');

-- ----------------------------
-- Table structure for t_medical_base_data_item
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_data_item`;
CREATE TABLE `t_medical_base_data_item`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dataSource` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textVal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_data_item
-- ----------------------------
INSERT INTO `t_medical_base_data_item` VALUES ('cd1630594317', 'level', '1', '菜单');
INSERT INTO `t_medical_base_data_item` VALUES ('zcd1630594317', 'level', '2', '子菜单');
INSERT INTO `t_medical_base_data_item` VALUES ('an1630594317', 'level', '3', '按钮');
INSERT INTO `t_medical_base_data_item` VALUES ('qy1630594326', 'status', '1', '启用');
INSERT INTO `t_medical_base_data_item` VALUES ('gs1630594326', 'status', '2', '挂失');
INSERT INTO `t_medical_base_data_item` VALUES ('zf1630594326', 'status', '3', '作废');
INSERT INTO `t_medical_base_data_item` VALUES ('tk1630594326', 'status', '4', '退卡');
INSERT INTO `t_medical_base_data_item` VALUES ('cz1630594348', 'type', '1', '充值');
INSERT INTO `t_medical_base_data_item` VALUES ('qx1630594348', 'type', '2', '取现');
INSERT INTO `t_medical_base_data_item` VALUES ('sw1630594567', 'dateDetail', '1', '上午');
INSERT INTO `t_medical_base_data_item` VALUES ('xw1630594567', 'dateDetail', '2', '下午');

-- ----------------------------
-- Table structure for t_medical_base_group
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_group`;
CREATE TABLE `t_medical_base_group`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `natureId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_group
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_group_permission`;
CREATE TABLE `t_medical_base_group_permission`  (
  `gid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_group_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_group_scheduler
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_group_scheduler`;
CREATE TABLE `t_medical_base_group_scheduler`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mondayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mondayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuesdayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuesdayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wednesdayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wednesdayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thursdayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thursdayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fridayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fridayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saturdayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saturdayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sundayMorning` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sundayAfternoon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_group_scheduler
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_nature
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_nature`;
CREATE TABLE `t_medical_base_nature`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_nature
-- ----------------------------
INSERT INTO `t_medical_base_nature` VALUES (1, '临床', '直接给病人诊断并决定治疗方案的部门，按服务对象分为门诊科室和住院科室，按 \r\n医学学科范围分为内科、外科等。本系统中挂号应诊科室、门诊病人就诊的科室、 \r\n住院病人收治科室通常都是该类科室。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (2, '检查', '一般指通过特定医疗设备对病人进行辅助诊断的科室，如透视、超声等，是医技科 \r\n室的一类。本系统中关于检查类项目的执行科室，如不特别指定，就是指该类科室。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (3, '检验 ', '一般指通过化学手段处理分析体液、排泄分泌物等对病人进行辅助诊断的科室，是\r\n医技科室的一类。本系统中关于检查类项目的执行科室，如不特别指定，就是指该 \r\n类科室。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (4, '手术 ', '一般指使用医疗器械对病人身体进行的切除、缝合等治疗的科室，是医技科室的一 \r\n类。具有该特性的科室是本系统中手术类项目的执行科室选择范围。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (5, '治疗 ', '指对病人实施疾病控制治疗康复操作的科室，有很多科室(包括临床、检查、检验、 \r\n手术、护理)都具有该功能，是医技科室的一类，本系统中是特指不具备其他功能性 \r\n质的治疗部门，共同成为治疗类项目的可选执行科室。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (6, '护理', '指根据病人病情和医生指令对病人实施护理操作的部门。只有具备护理特性的部门 \r\n(也就是病区)，才能下设床位，也是护理操作的执行科室之一。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (7, '产科', '是特指给产妇提供医疗服务的临床科室，在本系统中只有对具备产科特性的住院临 \r\n床科室的病人，才允许费用记账中，进行新生婴儿费用登记(记入产妇费用中，但区 \r\n别该费用为婴儿发生)。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (8, '中药库 ', '特指管理中草药品的部门，本系统中用于控制部门是否能进行中草药品种的入出领 \r\n用和库存管理控制。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (9, '西药库', '特指管理西药的部门，本系统中用于控制部门是否能进行西药品种的入出领用和库 \r\n存管理控制。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (10, '成药库 ', '特指管理中成药品的部门，本系统中用于控制部门是否能进行中成药品种的入出领 \r\n用和库存管理控制。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (11, '制剂室 ', '特指具有原料领用，自制药品配制生产职能的部门，本系统中用于自制药品入库的 \r\n控制。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (12, '领药部门 ', '特指具有向药库(或药房)领取药品权利的部门，其领用药品直接用于医疗服务消耗， \r\n不管理库存。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (13, '营养 ', '给病人提供膳食营养供应的科室，是医技科室的一类。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (14, '物资库房 ', '对物资进行收发的管理部门 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (15, '供应室', '对物资进行消毒处理的部门', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (16, '成本核算 ', '对成本效益进行核算管理的部门 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (17, '设备科 ', '对设备进行收发的管理部门 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (18, '维修部 ', '对设备进行维修的部门 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (19, '人事科 ', '对人员档案进行维护（包括工资档案）。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (20, '财务室 ', '处理人员每月的工资发放等。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (21, '卫材库 ', '对卫生材料进行收发的管理部门。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (22, '发料部门 ', '能够申领和发放卫材的部门。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (23, '中医科 ', '不服务于部门，与临床性质组合后，属于中医科性质科室的病人可以下达中医诊断。', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (24, '配置中心 ', '该部门性质为附属性质(一般附属于药房设置)，不直接服务于病人。这类部门是专门 \r\n进行输液或其它专项药品的配置（比如抗肿瘤药品）的配置。如果一并医嘱的药品 \r\n中包括这类科室时，所有药品的执行科室都为该科室。 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (25, '物资领用 ', '主要用于设置部门物资领用人员，如果此部门没有设置物资领用人员，则在物资领 \r\n用模块中不允许领用', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (26, '设备领用 ', '主要用于设置部门设备领用人员，如果此部门没有设置设备领用人员，则在设备领\r\n用模块中不允许领用 ', '部门', NULL);
INSERT INTO `t_medical_base_nature` VALUES (27, '门诊挂号员', '将作为挂号日报打印时人员选择缺省范围', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (28, '门诊收费员', '将作为收费日报打印时人员选择缺省范围。', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (29, '预交收款员', '将作为预交日报打印时人员选择缺省范围。', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (30, '住院结帐员', '将作为结帐日报打印时人员选择缺省范围。', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (31, '药房发药人', '将作为药房工作量报表打印时人员选择缺省范围', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (32, '入院登记员', '将作为预交日报打印时人员选择缺省范围之一。', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (33, '入院登记员', '将作为就诊卡日报打印时人员选择缺省范围。', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (34, '医生', '能被病人诊疗和费用登记以及住院过程中医生的选择范围。分配权限后可以操作医生工作站功能', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (35, '护士', '能被分配为病人住院时的责任护理的选择范围。分配权限后可以操作护士工作站功能', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (36, '采样人', '能被分配为检验标本核收的采样人的选择范围', '人员', NULL);
INSERT INTO `t_medical_base_nature` VALUES (37, '检验人', '能被分配为检验标本检验的检验人的选择范围', '人员', NULL);

-- ----------------------------
-- Table structure for t_medical_base_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_operator_log`;
CREATE TABLE `t_medical_base_operator_log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatorType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `methodName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatorUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatorMethod` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requestParam` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `responseParam` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `errorMsg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatorTime` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_operator_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_permission`;
CREATE TABLE `t_medical_base_permission`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `state` int NULL DEFAULT 1 COMMENT '0企业实际菜单，1学校开发菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_permission
-- ----------------------------
INSERT INTO `t_medical_base_permission` VALUES ('4', '接待', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A001', '日常业务', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1001', '处方计价', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1002', '处方发药', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1003', '处方退药', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1004', '处方查询', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1005', '医嘱发药', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1006', '医嘱退药', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1007', '记账发药', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1008', '退药确认', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1009', '确认入库', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1010', '调拨入库', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1011', '调拨出库', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1012', '领药申请', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1013', '药品调价', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1014', '药品库存', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1015', '库存合并', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('A1016', '药品盘点', 'A001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('AB001', '系统设置', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('ABC001', '统计分析', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C001', '设置', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001', '项目查询及维护', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c01', '仓库药(物)品维护', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c02', '物品项目维护', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c03', '医疗项目维护', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c04', '匹配BP项目', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c05', '项目状态设置', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c06', '项目新开与屏蔽记录', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1001c07', '项目查询', 'C1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1002', '套餐维护', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1003', '临床路径维护', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1004', '发票管理', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1005', '基本表维护', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1006', '权限管理及查询', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1007', '角色权限设置', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1008', '人事与权限管理', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1009', '批量屏蔽病人', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1010', '解锁设置', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1011', '修改密码', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1012', '系统参数设置', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1013', '维护DI报表', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1014', '设置报表分类', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1015', '设置报表打印机', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1016', '设置门诊西药房所有科室打印到默认窗口', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1017', '设置本机自动检测的间隔时间', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1018', '系统导向图', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1019', '系统操作自测题', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1020', '系统操作记录查询', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1021', '更新版本并重新登入', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1022', '动态数据匹配', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1023', '导入导出工具', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1024', '自动更新文件', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1025', '切换当前科室', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('C1026', '退出', 'C001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D001', '门诊挂号', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1001', '病人管理与导诊', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1002', '门诊咨询与预约', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1003', '门诊挂号', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1004', '门诊分诊', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1005', '挂号周计划', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1006', '日排班维护', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1007', '病人查询', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('D1008', '挂号票据查询', 'D001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E001', '门诊医生', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1001', '门诊就诊', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1002', '科室叫号屏', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1003', '医生查询处方', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1004', '就诊病人查询', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1005', '报告卡审核', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1006', '传染病报告卡汇总查询', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1007', '模板维护', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('E1008', '门诊病历模板维护', 'E001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('F001', '门诊收费', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('F1001', '门诊收费', 'F001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('F1002', '门诊发票查询', 'F001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('F1003', '门诊费用明细查询(冲减)', 'F001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G001', '出入院', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1001', '入院灯具', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1002', '按金管理', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1003', '费用透支登记', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1004', '中途结算', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1005', '出院结算', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1006', '医保费用审核', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1007', '欠费病人查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1008', '出入院病人查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1009', '转科病人查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1010', '住院按金查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1011', '住院发票查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1012', '住院费用明细查询(冲减)', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('G1013', '惠州医保对数下载查询', 'G001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H001', '护士站', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1001', '床位一览', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1002', '新生儿登记', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1003', '查对医嘱', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1004', '领药记录', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1005', '医嘱执行', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1006', '查对中药处方', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1007', '记账管理', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1008', '欠费医嘱', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1009', '体温单', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1010', '护嘱管理', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1011', '护理记录', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1012', '病房日志维护', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1013', '门诊护士执行单', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1014', '门诊执行记录查询', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1015', '床位查询', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016', '费用查询', 'H001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h01', '辅助科室项目查询', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h02', '医嘱费用查询', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h03', '医嘱费用查询(出院)', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h04', '住院医嘱查询(科室)', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h05', '医保即时费用查询(科室)', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h06', '执行未收费医嘱查询(临床科室)', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('H1016h07', '执行未收费医嘱查询(执行科室)', 'H1016', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I001', '住院医生', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1001', '医嘱管理', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1002', '住院中药处方', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1003', '病历游览(已出院)', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1004', '远程会诊', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1005', '电子病历', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1006', '新电子病历(TX)', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1007', '病历关键字查询', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1008', '评分标准', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1009', '住院医嘱查询', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1010', '病案首页', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1011', '会诊答复', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1012', '会诊申请', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1013', '会诊查询', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1014', '长期医嘱打印', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1015', '临时医嘱打印', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('I1016', '医嘱修改记录查询', 'I001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J001', '辅助科室', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1001', '未发物资申请查询', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1002', '功能科室病人查询', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1003', '手术申请与报告', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1004', '影像申请单登记', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1005', '辅助科室记账', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1006', '住院费用明细查询(辅助科室)', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1007', '门诊费用明细查询(辅助科室)', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1008', '物资库领用申请', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1009', '已发物资单据查询', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1010', '辅助科室发药查询(科室)', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1011', '科室物资有效期警报', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1012', '设备维修记录查询', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1013', 'Ps检查申请与报告', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1014', 'Ps影像服务器', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1015', 'Ps影像服务器', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('J1016', 'Ps检查申请与报告', 'J001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K001', 'LIS', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1001', '标本登记', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1002', '标本采集', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1003', '标本接收', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1004', '仪器流水号匹配', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005', '结果报告', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005k01', '临床生化', 'K1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005k02', '临床血液', 'K1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005k03', '微生物', 'K1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005k04', '临床免疫', 'K1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1005k05', '体液检验', 'K1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1006', 'QC质控图查看', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1007', 'QC结果查询', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1008', 'QC范围值维护', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1009', '检验单查询', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1010', '报告模板导出', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('K1011', '检验项目维护', 'K001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L001', '体检', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1001', '单位体检登记', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1002', '个人体检登记', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1003', '体检报到', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004', '分科体检结果', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l01', '五官科', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l02', '内科', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l03', '外科', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l04', '口腔科', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l05', '常规体验', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l06', '眼科', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l07', '游泳室', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l08', '听力筛查', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l09', '普通儿保', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l10', '眼保健室', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1004l11', '手工结果', 'L1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1005', '体检单总检', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1006', '体检名单查询', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1007', '体检单查询', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1008', '体检结果查询', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1009', '单位体检分支', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('L1010', '体检项目维护', 'L001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M001', '输血', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1001', '血液入库', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1002', '科室退血', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1003', '血站退血', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1004', '血液管理', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1005', '血液库存警报', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1006', '输血申请', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1007', '配血标本接收', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1008', '输血实验', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1009', '输血反应', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1010', '血液发放', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1011', '血液发出(按申请)', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1012', '血液发出(按标本)', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1013', '记录跟踪', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1014', '科室互助献血', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1015', '免交互助金登记', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1016', '用血报销登记', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('M1017', '输血科文件', 'M001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('N001', '养老', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('N1001', '设计床位', 'N001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('N1002', '养老项目维护', 'N001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('N1002n01', '物品项目维护管理', 'N1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('N1002n02', '养老项目维护管理', 'N1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP001', '接待', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1001', '办理预约', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1002', '办理入住', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1003', '办理续约', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1004', '入住签约', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1005', '办理退住', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1006', '协议到期提醒', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1007', '变更管理', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1008', '变更查询', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1009', '担保人变更', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1010', '销控图', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1011', '床位情况查询', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1012', '长者情况', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1013', '长者一览', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('NP1014', '待入住长者', 'NP001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P001', '费用', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1001', '预收款', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1002', '预收月费', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1003', '月费清单', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1004', '月度结算', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1005', '退住结算', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1006', '批量结算', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1007', '月费标准', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('P1008', '委托代扣', 'P001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q001', '总务工作站', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1001', '订餐管理', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1002', '附加仓库', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1003', '仓库日志', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1004', '床位管理', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1005', '水电管理', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1006', '附加费用', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Q1007', '停餐管理', 'Q001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R001', '药房', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1001', '门诊发药', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1002', '门诊配药窗口', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1003', '住院发药', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1004', '住院退药', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1005', '住院中药发药', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006', '业务操作', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r01', '领药申请', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r02', '药房退药', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r03', '报损出房', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r04', '调拨出房', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r05', '调拨申请', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r06', '科室领药', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r07', '科室退药', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r08', '其他入房', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1006r09', '其他出房', 'R1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1007', '出入房审核', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1008', '药房盘点', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1009', '药房初始库存设置', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1010', '药房药品设置', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011', '药房管理查询', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r01', '药房药品库存查询', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r02', '药房单据查询', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r03', '药房历史库存查询', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r04', '药房库存不足报警', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r05', '药房有效期查询', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1011r06', '药房药品明细账查询', 'R1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012', '发药查询', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r01', '进出日志查询', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r02', '药房发药查询(财务)', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r03', '门诊注射发药记录查询', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r04', '门诊注射室为执行的处方', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r05', '住院发药查询', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r06', '住院发药查询(科室病人)', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r07', '住院发药查询(药房)', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r08', '住院中药发药查询', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1012r09', '辅助科室发药查询', 'R1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1013', '工作量查询', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1013r01', '住院中药医生工作量统计', 'R1013', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1013r02', '住院中药工作量统计', 'R1013', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1013r03', '门诊药房工作量统计', 'R1013', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1014', '药房调价查询', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('R1015', '药房药品有效期警报', 'R001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S001', '药库', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1001', '采购申请', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1002', '采购入库', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1003', '领药出库', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1004', '退货出库', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1005', '报损出库', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1006', '药库药品明细账查询', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1007', '出入库审核', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1008', '药库盘点', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1009', '其他操作', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1009s01', '药库初始库存设置', 'S1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1009s02', '药品购进验收记录', 'S1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1009s03', '其他入库', 'S1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1009s04', '其他出库', 'S1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010', '出入库查询', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010s01', '入库发票查询', 'S1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010s02', '品名进出日志', 'S1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010s03', '进出日志查询', 'S1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010s04', '药库单据查询', 'S1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1010s05', '调价历史查询', 'S1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011', '药库管理查询', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s01', '药库药品库存查询', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s02', '药库历史库存查询', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s03', '药房药品库存查询', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s04', '药库有效期查询', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s05', '药库药品有效期报警', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s06', '药库库存不足报警', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s07', '药库库存警报线设置', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s08', '药房滞销药品查询(药库)', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s09', '药房滞销药品查询(药房)', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1011s10', '药房滞销药品查询', 'S1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1012', '定时调价', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('S1013', '药库发管理', 'S001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T001', '物资', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1001', '采购申请', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1002', '采购入库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1003', '物品出库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1004', '退货出库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1005', '报损出库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1006', '其他入库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1007', '科室退库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1008', '其他出库', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1009', '出入库审核', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1010', '仓库盘点', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1011', '物品库存操作统计报表', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1012', '物品月度统计报表', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1013', '仓库月报表', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1014', '仓库物品明细账查询', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1015', '进出日志查询', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1016', '单据查询', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1017', '仓库物品库存查询', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1018', '调价历史查询', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1019', '仓库库存不足警报', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('T1020', '仓库物品有效警报', 'T001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U001', 'CRM', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1001', '会员管理', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1002', '会员查询', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1003', '回访管理', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1004', '会员卡信息查询', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1005', '会员卡明细账', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1006', '介绍人管理', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('U1007', '回访管理团队维护', 'U001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V001', 'OA', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1001', '后勤服务', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1002', '排班管理', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1003', '问卷调查病人查询', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1004', '个人日程管理', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1005', '文档管理(OA)', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('V1006', '办公室OA发文', 'V001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('W001', '设备', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('W1001', '设备维护', 'W001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('W1002', '合同有效期查询', 'W001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('W1003', '设备一览', 'W001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X001', '报表中心', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001', '绩效报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x01', '经营日报', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x02', '门诊病人类别收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x03', '门诊业务科室收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x04', '门诊医生处方人次统计', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x05', '门诊医生收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x06', '门诊执行科室收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x07', '医生项目统计表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x08', '初复诊统计报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x09', '医生收入汇总表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x10', '住院未结算报表(实时)', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x11', '收费员汇总报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x12', '住院业务科室收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x13', '住院医生收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x14', '住院执行科室收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x15', '住院执行医生收入报表', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x16', '住晚中药处方统计', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x17', '科室药品比例', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1001x18', '医生药品比例', 'X1001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002', '成本核算报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x01', '医院各科室其他费用明细表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x02', '医院各科室人员经费明细', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x03', '临床科室业务明细及损益表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x04', '临床分摊医技和医辅科室成本损益表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x05', '医院各科室医疗成本三级分摊表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x06', '医院临床服务类科室全成本构成分析表(医疗成本)', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x07', '医院临床科室工作量及均次费用表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x08', '医院临床服务类科室全成本表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x09', '医院基本情况分析表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x10', '医技分摊行政后勐医疗健助成本损益表', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x11', '医院各科室直接成本表(医疗全成本和医庑全成本)', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x12', '医院临床服务类科室全成本表(医疗成本)', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1002x13', '医院各科室直接成本表(医疗成本)', 'X1002', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003', '门诊挂号', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x01', '挂号收入交款报表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x02', '挂号交款报表清单', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x03', '科室挂号统计报表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x04', '医生挂号统计报表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x05', '门诊日志', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x06', '自助机挂号病人明细表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x07', '预约挂号信息登记报表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x08', '挂号票据使用情况表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x09', '预约门诊工作量统计表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x10', '自助机门诊病人明细表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1003x11', '广东省医疗保险异地就医医疗费用结算申报明妇表', 'X1003', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004', '门诊收费员报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x01', '门诊收费交款表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x02', '门诊交款报表清单', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x03', '门诊收费员统计报表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x04', '门诊病人类别汇总表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x05', '门诊费用类别汇总表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x06', '门诊票据使用情况表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1004x07', '收费员发票统计表', 'X1004', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005', '住院收费员报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x01', '按金交款报表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x02', '住院收费交款报表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x03', '住院交教报表清单', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x04', '住院和按金交款报表清单', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x05', '住院病人类别汇总表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x06', '住院谢款费用类别汇总表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x07', '按金交款收据清单(双列)', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x08', '住院和按金交款报表*', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x09', '住院交款发票清单', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x10', '住院妆费员统计报表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1005x11', '住院票据使用情况表', 'X1005', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006', '出入院情况报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x01', '出入院人次统计表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x02', '出院病人月报表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x03', '入院病人明细表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x04', '出院病人明细表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x05', '临床路径统计', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x06', '广东省医疗保险异地就医医疗费用结算申报汇总表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x07', '门诊医生入院病人数统计', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x08', '门诊医生出院病人数统计', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1006x09', '病人一览表', 'X1006', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1007', '门诊病人费用', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1007x01', '门诊病人明细费用清单', 'X1007', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008', '住院病人费用', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x01', '人费用一日清单(详细)', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x02', '出院病人费用明细表', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x03', '住院商人费用明细汇总', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x04', '出院已结算病人费用分科表', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x05', '出院未结算病人费用分科表', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x06', '出院未结其病人一览表', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x07', '病案统计分类报表*', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1008x08', '出院房人费用明细表', 'X1008', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1009', '护理报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1009x01', '项目统计表', 'X1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1009x02', '护理工作量统计表', 'X1009', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1010', '仓库报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1010x01', '仓库入库汇总表', 'X1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1010x02', '领药出库汇总(按供应商)', 'X1010', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1011', '药房报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1011x01', '领入汇总表', 'X1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1011x02', '门诊药房工作报表(财务用)', 'X1011', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012', '阳光用药', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x01', '阳光用药数据统计', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x02', '抗菌药物DDDs统计', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x03', '住院抗菌药物使用强度统计', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x04', '药品销售金额排名', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x05', '药品销售数量排名', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x06', '抗菌药物品种及品规数统计表', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x07', '医疗费用情况', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x08', '基本药物使用情况表', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x09', '门诊处方金额排名前30位处方明细', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x10', '药物使用金额排名前30及对应使用前3医生', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x11', '使用金额前十位的前三医生与科室(品种)', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1012x12', '使用金额前十位的前三医生与科室', 'X1012', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1013', 'CRM报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1013x01', 'CRM渠道分析报表', 'X1013', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014', '检验报表', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x01', '住院科室检验工作量汇总', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x02', '仪器工作量汇总', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x03', '项目综合统计表', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x04', '定量项目综合分析表', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x05', '定性项目综合分析表', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x06', '检验工作量统计', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1014x07', '人员工作量统计', 'X1014', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('X1015', '上线钱评估报告', 'X001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Y001', '院长查询', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Y1001', '病区床位构成和利用情况', 'Y001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Y1002', '全院业务收入构成', 'Y001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Y1003', '标准化诊疗使用本', 'Y001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Y1004', '确诊住院人次分析', 'Y001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z001', '窗口', NULL, NULL, NULL, 1, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1001', '【在线帮助】宗设', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1002', '【我要投诉】', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1003', '【我有疑问】', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1004', '使用页面窗口', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1005', '层叠', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1006', '水平平铺', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1007', '垂直平铺', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1008', '隐藏导航快捷栏', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1009', '下次自动打开本次窗口', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1010', '操作员锁定屏幕ctrl+K  Ctrl+K', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1011', '计算器Ctrl+L  Ctrl+L', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1012', '现场工程师即时沟通Ctrl+R  Ctrl+R', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('Z1013', '1导航栏', 'Z001', NULL, NULL, 2, 0);
INSERT INTO `t_medical_base_permission` VALUES ('ZB001', '基础数据管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB002', '费用管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB003', '门诊管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB004', 'LIS检验管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB005', 'PACS影像管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB006', '药库药房管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB007', '病房管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB008', '住院管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB009', '医疗卡管理', NULL, NULL, NULL, 1, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB010', '部门管理', 'ZB001', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB011', '人员管理', 'ZB001', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB012', '系统参数', 'ZB001', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB013', '数据字典', 'ZB001', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB014', '系统日志', 'ZB001', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB015', '患者费用账单', 'ZB002', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB016', '烂账记录', 'ZB002', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB017', '接诊记录', 'ZB003', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB018', '看病流程', 'ZB003', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB019', '诊断结果', 'ZB003', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB020', '治疗方案', 'ZB003', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB021', '药品信息', 'ZB006', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB022', '药品采购', 'ZB006', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB023', '药库库存', 'ZB006', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB024', '药房库存', 'ZB006', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB025', '盘点记录', 'ZB006', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB026', '病房记录', 'ZB007', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB027', '床位记录', 'ZB007', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB028', '分床记录', 'ZB007', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB029', '值班记录', 'ZB007', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB030', '医嘱记录', 'ZB008', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB031', '执行记录', 'ZB008', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB032', '治疗处方', 'ZB008', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB033', '汇总记录', 'ZB008', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB034', '个人档案', 'ZB009', NULL, NULL, 2, 1);
INSERT INTO `t_medical_base_permission` VALUES ('ZB035', '医疗卡记录', 'ZB009', NULL, NULL, 2, 1);

-- ----------------------------
-- Table structure for t_medical_base_systemparam
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_systemparam`;
CREATE TABLE `t_medical_base_systemparam`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `testKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testVal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_systemparam
-- ----------------------------
INSERT INTO `t_medical_base_systemparam` VALUES (1, '皮肤', '黑色');
INSERT INTO `t_medical_base_systemparam` VALUES (2, '皮肤', '白色');

-- ----------------------------
-- Table structure for t_medical_base_user
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_user`;
CREATE TABLE `t_medical_base_user`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useFlag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `natureId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_user_group
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_user_group`;
CREATE TABLE `t_medical_base_user_group`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_base_user_scheduler
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_base_user_scheduler`;
CREATE TABLE `t_medical_base_user_scheduler`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `restDate` int NULL DEFAULT NULL,
  `dateDetail` int NULL DEFAULT NULL,
  `groupSchedulerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_base_user_scheduler
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cost_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_bill`;
CREATE TABLE `t_medical_cost_bill`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '患者费用账单id',
  `outpatientId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊卡信息id',
  `money` float NULL DEFAULT NULL COMMENT '金额',
  `createTime` date NULL DEFAULT NULL COMMENT '付款时间',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '患者费用账单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_bill
-- ----------------------------
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632889180236', '1632888878133', 140, '2021-09-29', 2);
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632890378135', '1632888928238', 320, NULL, 1);
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632891293341', '1632888954953', 270, '2021-09-29', 2);
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632891580973', '1632891466955', 160, NULL, 1);
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632897823813', '1632893964860', 135, NULL, 1);
INSERT INTO `t_medical_cost_bill` VALUES ('bao_1632898008981', '1632897704798', 205, NULL, 1);

-- ----------------------------
-- Table structure for t_medical_cost_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_bill_detail`;
CREATE TABLE `t_medical_cost_bill_detail`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '患者费用明细id',
  `billid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者费用账单id',
  `partName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费事项',
  `partNumber` int NULL DEFAULT NULL COMMENT '事项数量',
  `type` int NULL DEFAULT NULL COMMENT '事项类型',
  `partMoney` float NULL DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '患者费用明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_bill_detail
-- ----------------------------
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632889180240', 'bao_1632889180236', '阿莫西林胶囊', 2, 4, 40);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632889180248', 'bao_1632889180236', '九九感冒灵', 1, 4, 20);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632889180261', 'bao_1632889180236', '1002', 2, 1, 20);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632890378138', 'bao_1632890378135', '青霉素', 2, 4, 90);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632890378148', 'bao_1632890378135', '阿莫西林胶囊', 1, 4, 40);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632890378159', 'bao_1632890378135', '2002', 1, 2, 100);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632891293344', 'bao_1632891293341', '阿莫西林胶囊', 5, 4, 40);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632891293355', 'bao_1632891293341', '2001', 1, 2, 70);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632891580976', 'bao_1632891580973', '氨苄西林钠', 2, 4, 80);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632897823822', 'bao_1632897823813', '阿莫西林胶囊', 2, 4, 40);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632897823838', 'bao_1632897823813', '林可霉素', 1, 4, 15);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632897823858', 'bao_1632897823813', '1002', 2, 1, 20);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632898008987', 'bao_1632898008981', '氨苄西林钠', 2, 4, 80);
INSERT INTO `t_medical_cost_bill_detail` VALUES ('bao_1632898008994', 'bao_1632898008981', '林可霉素', 3, 4, 15);

-- ----------------------------
-- Table structure for t_medical_cost_dead_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_dead_bill`;
CREATE TABLE `t_medical_cost_dead_bill`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医院烂账记录id',
  `realNoney` float NULL DEFAULT NULL COMMENT '实收金额',
  `accountMoney` float NULL DEFAULT NULL COMMENT '账上金额',
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `createTime` date NULL DEFAULT NULL COMMENT '烂账记录日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医院烂账记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_dead_bill
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cost_outpatient_info
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_outpatient_info`;
CREATE TABLE `t_medical_cost_outpatient_info`  (
  `id` bigint NOT NULL COMMENT '门诊卡信息id',
  `money` float NULL DEFAULT NULL COMMENT '金额',
  `enableTime` date NULL DEFAULT NULL COMMENT '启用日期',
  `lossTime` date NULL DEFAULT NULL COMMENT '挂失日期',
  `deadTime` date NULL DEFAULT NULL COMMENT '卡作废日期',
  `returnTime` date NULL DEFAULT NULL COMMENT '退卡日期',
  `status` int NULL DEFAULT NULL COMMENT '卡状态',
  `deposit` float NULL DEFAULT NULL COMMENT '押金',
  `personid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人档案id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门诊卡信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_outpatient_info
-- ----------------------------
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632888878133, 60, '2021-09-29', '2021-09-29', NULL, NULL, 1, 10, 'LiSi_1632888878115');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632888928238, 50, '2021-09-29', '2021-09-29', NULL, NULL, 1, 10, 'ZhangSan_1632888928222');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632888954953, 230, '2021-09-29', NULL, NULL, NULL, 1, 10, 'WangWu_1632888954934');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632891466955, 200, '2021-09-29', NULL, NULL, NULL, 1, 10, 'HeiHu_1632891466941');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632893964860, 10, '2021-09-29', NULL, NULL, NULL, 1, 10, 'SuoZhang_1632893964839');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632895278368, 500, '2021-09-29', NULL, NULL, NULL, 1, 10, 'BaiLiZhangKong_1632895278350');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632897458353, 0, '2021-09-29', '2021-09-29', '2021-09-29', '2021-09-29', 4, 10, 'ZhangBao_1632897458339');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632897704798, 400, '2021-09-29', NULL, NULL, NULL, 1, 10, 'LiWu_1632897704783');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632899612599, 500, '2021-09-29', NULL, NULL, NULL, 1, 10, 'ZhangBao_1632897458339');
INSERT INTO `t_medical_cost_outpatient_info` VALUES (1632899648475, 200, '2021-09-29', NULL, NULL, NULL, 1, 10, 'FengYun_1632899648443');

-- ----------------------------
-- Table structure for t_medical_cost_outpatient_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_outpatient_recharge_record`;
CREATE TABLE `t_medical_cost_outpatient_recharge_record`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '门诊卡充值记录id',
  `money` float NULL DEFAULT NULL COMMENT '金额',
  `type` int NULL DEFAULT NULL COMMENT '类型',
  `createTime` date NULL DEFAULT NULL COMMENT '充值取现日期',
  `outpatientId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊卡信息id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门诊卡充值记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_outpatient_recharge_record
-- ----------------------------
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632888878152', 200, 1, '2021-09-29', '1632888878133');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632888928255', 500, 1, '2021-09-29', '1632888928238');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632888954975', 500, 1, '2021-09-29', '1632888954953');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632888995433', 450, 2, '2021-09-29', '1632888928238');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632891318670', 270, 3, '2021-09-29', '1632888954953');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632891466969', 200, 1, '2021-09-29', '1632891466955');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632893964875', 10, 1, '2021-09-29', '1632893964860');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632895278384', 500, 1, '2021-09-29', '1632895278368');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632897458368', 500, 1, '2021-09-29', '1632897458353');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632897580544', 500, 2, '2021-09-29', '1632897458353');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632897704814', 400, 1, '2021-09-29', '1632897704798');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632897888996', 140, 3, '2021-09-29', '1632888878133');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632899612624', 500, 1, '2021-09-29', '1632899612599');
INSERT INTO `t_medical_cost_outpatient_recharge_record` VALUES ('bao_1632899648526', 200, 1, '2021-09-29', '1632899648475');

-- ----------------------------
-- Table structure for t_medical_cost_person_archives
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cost_person_archives`;
CREATE TABLE `t_medical_cost_person_archives`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '个人档案id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `code` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '个人档案表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cost_person_archives
-- ----------------------------
INSERT INTO `t_medical_cost_person_archives` VALUES ('BaiLiZhangKong_1632895278350', '百里长空', 25, '430523200103234321', '1');
INSERT INTO `t_medical_cost_person_archives` VALUES ('FengYun_1632899648443', '风韵', 27, '430345200210244321', '0');
INSERT INTO `t_medical_cost_person_archives` VALUES ('HeiHu_1632891466941', '黑虎', 28, '430523200412214321', '1');
INSERT INTO `t_medical_cost_person_archives` VALUES ('LiSi_1632888878115', '李四', 27, '430523200210254321', '0');
INSERT INTO `t_medical_cost_person_archives` VALUES ('LiWu_1632897704783', '李伍', 18, '430523200210234321', '0');
INSERT INTO `t_medical_cost_person_archives` VALUES ('SuoZhang_1632893964839', '所长', 24, '430523200304234321', '1');
INSERT INTO `t_medical_cost_person_archives` VALUES ('WangWu_1632888954934', '王五', 15, '43254320031214432X', '0');
INSERT INTO `t_medical_cost_person_archives` VALUES ('ZhangBao_1632897458339', '张宝', 15, '43052320021024431X', '0');
INSERT INTO `t_medical_cost_person_archives` VALUES ('ZhangSan_1632888928222', '张三', 32, '430456200310234326', '1');

-- ----------------------------
-- Table structure for t_medical_cpoe_bed
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_bed`;
CREATE TABLE `t_medical_cpoe_bed`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '床位记录id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '床位名称',
  `sickroomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病房id',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '床位记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_bed
-- ----------------------------
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827957755', 'sickroom_1_001_bed_001', 'bao_1632825651980', 'bao分配了床位:bao_sickroom_1_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827978020', 'bao_sickroom_2_001_bed_001', 'bao_1632825680712', 'bao分配了床位:bao_sickroom_2_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827978030', 'bao_sickroom_2_001_bed_002', 'bao_1632825680712', 'bao分配了床位:bao_sickroom_2_001_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827981332', 'bao_sickroom_3_001_bed_001', 'bao_1632825696964', 'bao分配了床位:bao_sickroom_3_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827981341', 'bao_sickroom_3_001_bed_002', 'bao_1632825696964', 'bao分配了床位:bao_sickroom_3_001_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827981350', 'bao_sickroom_3_001_bed_003', 'bao_1632825696964', 'bao分配了床位:bao_sickroom_3_001_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827984712', 'bao_sickroom_4_001_bed_001', 'bao_1632825741763', 'bao分配了床位:bao_sickroom_4_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827984720', 'bao_sickroom_4_001_bed_002', 'bao_1632825741763', 'bao分配了床位:bao_sickroom_4_001_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827984728', 'bao_sickroom_4_001_bed_003', 'bao_1632825741763', 'bao分配了床位:bao_sickroom_4_001_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827984734', 'bao_sickroom_4_001_bed_004', 'bao_1632825741763', 'bao分配了床位:bao_sickroom_4_001_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827986511', 'bao_sickroom_5_001_bed_001', 'bao_1632825811180', 'bao分配了床位:bao_sickroom_5_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827986518', 'bao_sickroom_5_001_bed_002', 'bao_1632825811180', 'bao分配了床位:bao_sickroom_5_001_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827986527', 'bao_sickroom_5_001_bed_003', 'bao_1632825811180', 'bao分配了床位:bao_sickroom_5_001_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827986533', 'bao_sickroom_5_001_bed_004', 'bao_1632825811180', 'bao分配了床位:bao_sickroom_5_001_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827986541', 'bao_sickroom_5_001_bed_005', 'bao_1632825811180', 'bao分配了床位:bao_sickroom_5_001_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988245', 'bao_sickroom_6_001_bed_001', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988253', 'bao_sickroom_6_001_bed_002', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988261', 'bao_sickroom_6_001_bed_003', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988268', 'bao_sickroom_6_001_bed_004', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988275', 'bao_sickroom_6_001_bed_005', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827988281', 'bao_sickroom_6_001_bed_006', 'bao_1632825827674', 'bao分配了床位:bao_sickroom_6_001_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827989278', 'bao_sickroom_1_002_bed_001', 'bao_1632825854659', 'bao分配了床位:bao_sickroom_1_002_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827991647', 'bao_sickroom_1_003_bed_001', 'bao_1632825872513', 'bao分配了床位:bao_sickroom_1_003_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827992795', 'bao_sickroom_1_004_bed_001', 'bao_1632825893156', 'bao分配了床位:bao_sickroom_1_004_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827994153', 'bao_sickroom_1_005_bed_001', 'bao_1632825912357', 'bao分配了床位:bao_sickroom_1_005_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827995225', 'bao_sickroom_1_006_bed_001', 'bao_1632825942304', 'bao分配了床位:bao_sickroom_1_006_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827996609', 'bao_sickroom_2_002_bed_001', 'bao_1632825976096', 'bao分配了床位:bao_sickroom_2_002_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827996633', 'bao_sickroom_2_002_bed_002', 'bao_1632825976096', 'bao分配了床位:bao_sickroom_2_002_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997727', 'bao_sickroom_6_002_bed_001', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997734', 'bao_sickroom_6_002_bed_002', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997743', 'bao_sickroom_6_002_bed_003', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997750', 'bao_sickroom_6_002_bed_004', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997758', 'bao_sickroom_6_002_bed_005', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827997764', 'bao_sickroom_6_002_bed_006', 'bao_1632825997943', 'bao分配了床位:bao_sickroom_6_002_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999476', 'bao_sickroom_6_003_bed_001', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999482', 'bao_sickroom_6_003_bed_002', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999490', 'bao_sickroom_6_003_bed_003', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999495', 'bao_sickroom_6_003_bed_004', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999502', 'bao_sickroom_6_003_bed_005', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632827999509', 'bao_sickroom_6_003_bed_006', 'bao_1632826020110', 'bao分配了床位:bao_sickroom_6_003_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000584', 'bao_sickroom_6_004_bed_001', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000591', 'bao_sickroom_6_004_bed_002', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000597', 'bao_sickroom_6_004_bed_003', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000604', 'bao_sickroom_6_004_bed_004', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000611', 'bao_sickroom_6_004_bed_005', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828000618', 'bao_sickroom_6_004_bed_006', 'bao_1632826030062', 'bao分配了床位:bao_sickroom_6_004_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003853', 'bao_sickroom_6_005_bed_001', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003859', 'bao_sickroom_6_005_bed_002', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003866', 'bao_sickroom_6_005_bed_003', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003873', 'bao_sickroom_6_005_bed_004', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003879', 'bao_sickroom_6_005_bed_005', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828003887', 'bao_sickroom_6_005_bed_006', 'bao_1632826092218', 'bao分配了床位:bao_sickroom_6_005_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004743', 'bao_sickroom_6_006_bed_001', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004750', 'bao_sickroom_6_006_bed_002', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004757', 'bao_sickroom_6_006_bed_003', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004763', 'bao_sickroom_6_006_bed_004', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_004');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004773', 'bao_sickroom_6_006_bed_005', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_005');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828004779', 'bao_sickroom_6_006_bed_006', 'bao_1632826111643', 'bao分配了床位:bao_sickroom_6_006_bed_006');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828006282', 'bao_sickroom_3_002_bed_001', 'bao_1632826137112', 'bao分配了床位:bao_sickroom_3_002_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828006289', 'bao_sickroom_3_002_bed_002', 'bao_1632826137112', 'bao分配了床位:bao_sickroom_3_002_bed_002');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632828006294', 'bao_sickroom_3_002_bed_003', 'bao_1632826137112', 'bao分配了床位:bao_sickroom_3_002_bed_003');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632881725217', '宝哥_bed_001', 'bao_1632881717156', 'bao分配了床位:宝哥_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632887656896', '二号病房_bed_001', 'bao_1632887633102', 'bao分配了床位:二号病房_bed_001');
INSERT INTO `t_medical_cpoe_bed` VALUES ('bao_1632887656905', '二号病房_bed_002', 'bao_1632887633102', 'bao分配了床位:二号病房_bed_002');

-- ----------------------------
-- Table structure for t_medical_cpoe_doctorsorderhandle
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_doctorsorderhandle`;
CREATE TABLE `t_medical_cpoe_doctorsorderhandle`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医嘱执行记录id',
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `doctorsOrderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医嘱记录id',
  `createTime` date NULL DEFAULT NULL COMMENT '医嘱执行时间',
  `result` int NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医嘱执行记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_doctorsorderhandle
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cpoe_prescription
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_prescription`;
CREATE TABLE `t_medical_cpoe_prescription`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '住院治疗处方id',
  `prescriptionTotalId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天处方汇总id',
  `doctorsOrderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医嘱记录id',
  `partId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品id',
  `partNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用量',
  `createTime` date NULL DEFAULT NULL COMMENT '录入时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '住院治疗处方表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_prescription
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cpoe_prescriptiontotal
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_prescriptiontotal`;
CREATE TABLE `t_medical_cpoe_prescriptiontotal`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '住院治疗处方总id',
  `statue` int NULL DEFAULT NULL COMMENT '状态',
  `partId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品id',
  `partType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `partNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用量',
  `createTime` date NULL DEFAULT NULL COMMENT '录入时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '住院治疗处方总表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_prescriptiontotal
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cpoe_sickroom
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_sickroom`;
CREATE TABLE `t_medical_cpoe_sickroom`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病房记录id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病房名称',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `attribute` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NULL DEFAULT NULL COMMENT '病房状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病房记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_sickroom
-- ----------------------------
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825651980', 'bao_sickroom_1_001', '1', '5', '豪华房', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825680712', 'bao_sickroom_2_001', '2', '4', '牛掰', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825696964', 'bao_sickroom_3_001', '3', '1', '刚收到', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825741763', 'bao_sickroom_4_001', '4', '2', '三个红色', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825811180', 'bao_sickroom_5_001', '5', '6', '洪水过后大奉', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825827674', 'bao_sickroom_6_001', '6', '3', '巴适得很实收', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825854659', 'bao_sickroom_1_002', '1', '3', '归属感社工', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825872513', 'bao_sickroom_1_003', '1', '1', '阿傻师傅', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825893156', 'bao_sickroom_1_004', '1', '2', '还是个', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825912357', 'bao_sickroom_1_005', '1', '6', '的根深蒂固', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825942304', 'bao_sickroom_1_006', '1', '4', '格式的格式的风格', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825976096', 'bao_sickroom_2_002', '2', '2', '该事故发生', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632825997943', 'bao_sickroom_6_002', '6', '6', '好办法的身高多少', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632826020110', 'bao_sickroom_6_003', '6', '2', '讽德诵功第三个', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632826030062', 'bao_sickroom_6_004', '6', '1', '固定格式改', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632826092218', 'bao_sickroom_6_005', '6', '5', '还是得赶得上', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632826111643', 'bao_sickroom_6_006', '6', '4', '是根深蒂固', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632826137112', 'bao_sickroom_3_002', '3', '1', '护手霜', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632881717156', '宝哥', '1', '1', '法法发', 2);
INSERT INTO `t_medical_cpoe_sickroom` VALUES ('bao_1632887633102', '二号病房', '2', '2', '今年的方法很多', 2);

-- ----------------------------
-- Table structure for t_medical_cpoe_sickroom_duty
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_sickroom_duty`;
CREATE TABLE `t_medical_cpoe_sickroom_duty`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病房值班记录id',
  `sickroomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病房id',
  `doctorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值班医生',
  `nurseId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值班护士',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病房值班记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_sickroom_duty
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_cpoe_splitbed
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_cpoe_splitbed`;
CREATE TABLE `t_medical_cpoe_splitbed`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分床记录id',
  `personId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者id',
  `doctorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主治医师id',
  `bedId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '床位id',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分床记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_cpoe_splitbed
-- ----------------------------
INSERT INTO `t_medical_cpoe_splitbed` VALUES ('bao_1632891473538', 'HeiHu_1632891466941', '1', 'bao_1632881725217', '2021-09-29', '鼎折覆餗');

-- ----------------------------
-- Table structure for t_medical_do
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_do`;
CREATE TABLE `t_medical_do`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作id',
  `doUser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `doTime` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `doId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作对象id',
  `doType` int NULL DEFAULT NULL COMMENT '操作对象类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_medical_do
-- ----------------------------
INSERT INTO `t_medical_do` VALUES ('bao_1632888878098', 'bao', '2021-09-29 12:14:38', 'LiSi_1632888878115', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632888878145', 'bao', '2021-09-29 12:14:38', '1632888878133', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632888878163', 'bao', '2021-09-29 12:14:38', 'bao_1632888878152', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632888928221', 'bao', '2021-09-29 12:15:28', 'ZhangSan_1632888928222', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632888928246', 'bao', '2021-09-29 12:15:28', '1632888928238', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632888928265', 'bao', '2021-09-29 12:15:28', 'bao_1632888928255', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632888954934', 'bao', '2021-09-29 12:15:55', 'WangWu_1632888954934', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632888954967', 'bao', '2021-09-29 12:15:55', '1632888954953', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632888954984', 'bao', '2021-09-29 12:15:55', 'bao_1632888954975', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632888995449', 'bao', '2021-09-29 12:16:35', 'bao_1632888995433', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632891318687', 'bao', '2021-09-29 12:55:19', 'bao_1632891318670', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632891466941', 'bao', '2021-09-29 12:57:47', 'HeiHu_1632891466941', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632891466962', 'bao', '2021-09-29 12:57:47', '1632891466955', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632891466977', 'bao', '2021-09-29 12:57:47', 'bao_1632891466969', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632893964820', 'bao', '2021-09-29 13:39:25', 'SuoZhang_1632893964839', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632893964868', 'bao', '2021-09-29 13:39:25', '1632893964860', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632893964888', 'bao', '2021-09-29 13:39:25', 'bao_1632893964875', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632895278350', 'bao', '2021-09-29 14:01:18', 'BaiLiZhangKong_1632895278350', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632895278376', 'bao', '2021-09-29 14:01:18', '1632895278368', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632895278393', 'bao', '2021-09-29 14:01:18', 'bao_1632895278384', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632897458339', 'bao', '2021-09-29 14:37:38', 'ZhangBao_1632897458339', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632897458361', 'bao', '2021-09-29 14:37:38', '1632897458353', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632897458376', 'bao', '2021-09-29 14:37:38', 'bao_1632897458368', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632897580574', 'bao', '2021-09-29 14:39:41', 'bao_1632897580544', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632897704783', 'bao', '2021-09-29 14:41:45', 'LiWu_1632897704783', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632897704806', 'bao', '2021-09-29 14:41:45', '1632897704798', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632897704822', 'bao', '2021-09-29 14:41:45', 'bao_1632897704814', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632897889009', 'bao', '2021-09-29 14:44:49', 'bao_1632897888996', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632899612615', 'bao', '2021-09-29 15:13:33', '1632899612599', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632899612635', 'bao', '2021-09-29 15:13:33', 'bao_1632899612624', 2);
INSERT INTO `t_medical_do` VALUES ('bao_1632899648424', 'bao', '2021-09-29 15:14:08', 'FengYun_1632899648443', 0);
INSERT INTO `t_medical_do` VALUES ('bao_1632899648518', 'bao', '2021-09-29 15:14:08', '1632899648475', 1);
INSERT INTO `t_medical_do` VALUES ('bao_1632899648536', 'bao', '2021-09-29 15:14:08', 'bao_1632899648526', 2);

-- ----------------------------
-- Table structure for t_medical_drugs_info
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_drugs_info`;
CREATE TABLE `t_medical_drugs_info`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `money` float NULL DEFAULT NULL COMMENT '药品单价',
  `Specifications` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_drugs_info
-- ----------------------------
INSERT INTO `t_medical_drugs_info` VALUES ('bao_1632798980503', '九九感冒灵', 20, '0.25g*4片', '2', '治疗感冒');
INSERT INTO `t_medical_drugs_info` VALUES ('bao_1632799140275', '阿莫西林胶囊', 40, '0.5g*64', '2', '治疗发炎');
INSERT INTO `t_medical_drugs_info` VALUES ('bao_1632799616936', '氨苄西林钠', 80, '0.5g', '1', '抗生素');
INSERT INTO `t_medical_drugs_info` VALUES ('bao_1632799696037', '林可霉素', 15, '1.25g*1片', '5', '头疼，发烧');
INSERT INTO `t_medical_drugs_info` VALUES ('bao_1632879703419', '青霉素', 90, '0.6g*3片', '3', '抗生素');

-- ----------------------------
-- Table structure for t_medical_drugs_inventory_record
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_drugs_inventory_record`;
CREATE TABLE `t_medical_drugs_inventory_record`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盘点记录id',
  `drugsId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称id',
  `paperNumber` int NULL DEFAULT NULL COMMENT '账面数量',
  `existNumber` int NULL DEFAULT NULL COMMENT '实存数量',
  `buyUnitPrice` float NULL DEFAULT NULL COMMENT '购进单价',
  `sellUnitPrice` float NULL DEFAULT NULL COMMENT '零售单价',
  `InventorySurplusNo` int NULL DEFAULT NULL COMMENT '盘盈数量',
  `createTime` date NULL DEFAULT NULL COMMENT '盘点时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '盘点记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_drugs_inventory_record
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_drugs_pharmacy
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_drugs_pharmacy`;
CREATE TABLE `t_medical_drugs_pharmacy`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药房库存id',
  `drugsId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药房名称',
  `no` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药房库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_drugs_pharmacy
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_drugs_purchase
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_drugs_purchase`;
CREATE TABLE `t_medical_drugs_purchase`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品采购信息id',
  `drugsId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称id',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品来源',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产地',
  `batchNumbe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '批号',
  `manufactureTime` date NULL DEFAULT NULL COMMENT '生成日期',
  `termOfValidity` date NULL DEFAULT NULL COMMENT '有效期',
  `myabstract` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `FilledBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '填制人',
  `Verifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '核查人',
  `VerificationTime` date NULL DEFAULT NULL COMMENT '核查日期',
  `Reviewer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `AuditTime` date NULL DEFAULT NULL COMMENT '审核日期',
  `no` int NULL DEFAULT NULL COMMENT '数量'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品采购信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_drugs_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_drugs_storage
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_drugs_storage`;
CREATE TABLE `t_medical_drugs_storage`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药库库存id',
  `drugsId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称id',
  `no` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药库库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_drugs_storage
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_emr_doctorsorder
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_emr_doctorsorder`;
CREATE TABLE `t_medical_emr_doctorsorder`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医嘱记录id',
  `personId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者id',
  `doctorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主治医生d',
  `status` int NULL DEFAULT NULL COMMENT '类型',
  `type` int NULL DEFAULT NULL COMMENT '状态',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医嘱描述',
  `createTime` date NULL DEFAULT NULL COMMENT '医嘱生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医嘱记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_emr_doctorsorder
-- ----------------------------
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632889042215', 'LiSi_1632888878115', '1', 2, 3, '1002', '2021-09-29');
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632889042234', 'LiSi_1632888878115', '1', 2, 3, '1002', '2021-09-29');
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632889080776', 'ZhangSan_1632888928222', '1', 2, 3, '2002', '2021-09-29');
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632891191013', 'WangWu_1632888954934', '1', 2, 3, '2001', '2021-09-29');
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632897750071', 'SuoZhang_1632893964839', '1', 2, 3, '1002', '2021-09-29');
INSERT INTO `t_medical_emr_doctorsorder` VALUES ('bao_1632897750097', 'SuoZhang_1632893964839', '1', 2, 3, '1002', '2021-09-29');

-- ----------------------------
-- Table structure for t_medical_lis_info
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_lis_info`;
CREATE TABLE `t_medical_lis_info`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Lis检验信息id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费事项',
  `personId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者id',
  `doctorid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `createTime` date NULL DEFAULT NULL COMMENT '生成时间',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `receiveRecordId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊医生接诊记录id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Lis检验信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_lis_info
-- ----------------------------
INSERT INTO `t_medical_lis_info` VALUES ('bao_1632889042215', '1002', 'LiSi_1632888878115', '1', '2021-09-29', 2, 'bao_1632889008709');
INSERT INTO `t_medical_lis_info` VALUES ('bao_1632889042234', '1002', 'LiSi_1632888878115', '1', '2021-09-29', 2, 'bao_1632889008709');
INSERT INTO `t_medical_lis_info` VALUES ('bao_1632897750071', '1002', 'SuoZhang_1632893964839', '1', '2021-09-29', 2, 'bao_1632893974184');
INSERT INTO `t_medical_lis_info` VALUES ('bao_1632897750097', '1002', 'SuoZhang_1632893964839', '1', '2021-09-29', 2, 'bao_1632893974184');

-- ----------------------------
-- Table structure for t_medical_outpatientdoctor_action
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_outpatientdoctor_action`;
CREATE TABLE `t_medical_outpatientdoctor_action`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生看病流程id',
  `partName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费事项',
  `partNumber` int NULL DEFAULT NULL COMMENT '事项数量',
  `partMoney` float NULL DEFAULT NULL COMMENT '单价',
  `type` int NULL DEFAULT NULL COMMENT '类型',
  `opDoctorReceiveRecordId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接诊记录id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生看病流程表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_outpatientdoctor_action
-- ----------------------------
INSERT INTO `t_medical_outpatientdoctor_action` VALUES ('bao_1632889042215', '1002', 2, 20, 1, 'bao_1632889008709');
INSERT INTO `t_medical_outpatientdoctor_action` VALUES ('bao_1632889080776', '2002', 1, 100, 2, 'bao_1632889026082');
INSERT INTO `t_medical_outpatientdoctor_action` VALUES ('bao_1632891191013', '2001', 1, 70, 2, 'bao_1632891176649');
INSERT INTO `t_medical_outpatientdoctor_action` VALUES ('bao_1632897750071', '1002', 2, 20, 1, 'bao_1632893974184');

-- ----------------------------
-- Table structure for t_medical_outpatientdoctor_medicalrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_outpatientdoctor_medicalrecord`;
CREATE TABLE `t_medical_outpatientdoctor_medicalrecord`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '门诊记录id',
  `outpatientId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊卡信息id',
  `medicalRecordURL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病历URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门诊病历表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_outpatientdoctor_medicalrecord
-- ----------------------------

-- ----------------------------
-- Table structure for t_medical_outpatientdoctor_receiverecord
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_outpatientdoctor_receiverecord`;
CREATE TABLE `t_medical_outpatientdoctor_receiverecord`  (
  `opDoctorReceiveRecordId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接诊记录id',
  `outpatientId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊卡信息id',
  `doctorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `type` int NULL DEFAULT NULL COMMENT '类型',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`opDoctorReceiveRecordId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '接诊记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_outpatientdoctor_receiverecord
-- ----------------------------
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632889008709', '1632888878133', '1', 1, 7, '2021-09-29');
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632889026082', '1632888928238', '1', 2, 9, '2021-09-29');
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632891176649', '1632888954953', '1', 1, 7, '2021-09-29');
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632891473538', '1632891466955', '1', 2, 8, '2021-09-29');
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632893974184', '1632893964860', '1', 1, 7, '2021-09-29');
INSERT INTO `t_medical_outpatientdoctor_receiverecord` VALUES ('bao_1632897716562', '1632897704798', '1', 2, 9, '2021-09-29');

-- ----------------------------
-- Table structure for t_medical_outpatientdoctor_result
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_outpatientdoctor_result`;
CREATE TABLE `t_medical_outpatientdoctor_result`  (
  `opDoctorResultId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生看病结果id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病名称',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述症状',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医嘱',
  `opDoctorReceiveRecordId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接诊记录id',
  PRIMARY KEY (`opDoctorResultId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生看病结果表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_outpatientdoctor_result
-- ----------------------------
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632889119695', '感冒', '头疼', '多喝热水', 'bao_1632889008709');
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632889142847', '肝癌', '肝痛', '住院治疗', 'bao_1632889026082');
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632891259685', '肾虚', '晚上睡不着', '多喝热水', 'bao_1632891176649');
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632891514980', '脑膜炎', '脑壳痛', '多多关照', 'bao_1632891473538');
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632897795601', '感冒', '发发撒', '郭德纲', 'bao_1632893974184');
INSERT INTO `t_medical_outpatientdoctor_result` VALUES ('bao_1632897933128', '癌症', '打发', '大大', 'bao_1632897716562');

-- ----------------------------
-- Table structure for t_medical_outpatientdoctor_resulthandle
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_outpatientdoctor_resulthandle`;
CREATE TABLE `t_medical_outpatientdoctor_resulthandle`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生看病治疗方案id',
  `drugsId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品id',
  `partNumber` int NULL DEFAULT NULL COMMENT '药品数量',
  `opDoctorResultId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生治疗结果id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生看病治疗方案表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_outpatientdoctor_resulthandle
-- ----------------------------
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632889166544', 'bao_1632799140275', 2, 'bao_1632889119695');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632889174759', 'bao_1632798980503', 1, 'bao_1632889119695');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632890344392', 'bao_1632879703419', 2, 'bao_1632889142847');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632890359536', 'bao_1632799140275', 1, 'bao_1632889142847');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632891274190', 'bao_1632799140275', 5, 'bao_1632891259685');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632891568640', 'bao_1632799616936', 2, 'bao_1632891514980');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632897805684', 'bao_1632799140275', 2, 'bao_1632897795601');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632897816408', 'bao_1632799696037', 1, 'bao_1632897795601');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632897986298', 'bao_1632799616936', 2, 'bao_1632897933128');
INSERT INTO `t_medical_outpatientdoctor_resulthandle` VALUES ('bao_1632898001404', 'bao_1632799696037', 3, 'bao_1632897933128');

-- ----------------------------
-- Table structure for t_medical_pacs_info
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_pacs_info`;
CREATE TABLE `t_medical_pacs_info`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'PACS影像信息id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费事项',
  `personId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者id',
  `doctorid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `createTime` date NULL DEFAULT NULL COMMENT '生成时间',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `receiveRecordId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门诊医生接诊记录id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'PACS影像信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_medical_pacs_info
-- ----------------------------
INSERT INTO `t_medical_pacs_info` VALUES ('bao_1632889080776', '2002', 'ZhangSan_1632888928222', '1', '2021-09-29', 2, 'bao_1632889026082');
INSERT INTO `t_medical_pacs_info` VALUES ('bao_1632891191013', '2001', 'WangWu_1632888954934', '1', '2021-09-29', 2, 'bao_1632891176649');

SET FOREIGN_KEY_CHECKS = 1;
