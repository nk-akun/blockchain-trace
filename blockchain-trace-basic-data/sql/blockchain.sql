/*
 Navicat Premium Data Transfer

 Source Server         : wmb
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 193.112.126.68:3306
 Source Schema         : blockchain

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 27/11/2020 10:06:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fired_time` bigint(0) NOT NULL,
  `sched_time` bigint(0) NOT NULL,
  `priority` int(0) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_checkin_time` bigint(0) NOT NULL,
  `checkin_interval` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'O9B04B4X0B8XMK01605156271048', 1605275312918, 15000);

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `repeat_count` bigint(0) NOT NULL,
  `repeat_interval` bigint(0) NOT NULL,
  `times_triggered` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `int_prop_1` int(0) NULL DEFAULT NULL,
  `int_prop_2` int(0) NULL DEFAULT NULL,
  `long_prop_1` bigint(0) NULL DEFAULT NULL,
  `long_prop_2` bigint(0) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(0) NULL DEFAULT NULL,
  `prev_fire_time` bigint(0) NULL DEFAULT NULL,
  `priority` int(0) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_time` bigint(0) NOT NULL,
  `end_time` bigint(0) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(0) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1605156280000, -1, 5, 'PAUSED', 'CRON', 1605156271000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1605156285000, -1, 5, 'PAUSED', 'CRON', 1605156272000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1605156280000, -1, 5, 'PAUSED', 'CRON', 1605156273000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '???????????????',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'crud' COMMENT '??????????????????crud???????????? tree???????????????',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '?????????????????????0zip????????? 1??????????????????',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '/' COMMENT '??????????????????????????????????????????',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA??????',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA?????????',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '???????????????1??????',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????????????????1??????',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????????????????1??????',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'EQ' COMMENT '???????????????????????????????????????????????????????????????',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????????????????????????????????????????????????????????????????????????????????????????',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `sort` int(0) NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '???????????????Y??? N??????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow');
INSERT INTO `sys_config` VALUES (2, '????????????-??????????????????', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????? 123456');
INSERT INTO `sys_config` VALUES (3, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????theme-dark???????????????theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '?????????id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '????????????',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '????????????', 0, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-05 11:20:18');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '???????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '???????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '????????????', 3, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '????????????', 4, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '????????????', 5, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (110, 100, '0,100', '?????????', 3, '??????', '13657746155', '231949@qq.com', '0', '0', 'admin', '2020-11-03 04:40:39', 'admin', '2020-11-05 11:20:18');
INSERT INTO `sys_dept` VALUES (111, 110, '0,100,110', '???????????????', 1, '??????', '18767675566', '2319492349@qq.com', '0', '0', 'admin', '2020-11-03 04:43:16', '', NULL);
INSERT INTO `sys_dept` VALUES (112, 100, '0,100', '?????????', 4, '??????', '16788990099', '23456@qq.com', '0', '0', 'admin', '2020-11-03 06:54:50', '', NULL);
INSERT INTO `sys_dept` VALUES (113, 112, '0,100,112', '???????????????', 1, '??????', '18789898989', '23456@qq.com', '0', '2', 'admin', '2020-11-03 06:56:17', '', NULL);
INSERT INTO `sys_dept` VALUES (114, 112, '0,100,112', '???????????????', 1, '??????', '18789898989', '23456@qq.com', '0', '2', 'admin', '2020-11-03 06:56:17', '', NULL);
INSERT INTO `sys_dept` VALUES (115, 110, '0,100,110', '???????????????', 2, '??????', '18786456789', '12314@qq.com', '0', '0', 'admin', '2020-11-05 11:18:44', 'admin', '2020-11-05 11:20:18');
INSERT INTO `sys_dept` VALUES (116, 115, '0,100,110,115', '??????????????????????????????', 1, '??????', '15900999900', '34534@qq.com', '0', '0', 'admin', '2020-11-05 11:19:36', 'admin', '2020-11-05 11:20:18');
INSERT INTO `sys_dept` VALUES (117, 100, '0,100', '???????????????????????????', 5, '??????', '18786538989', '2342342@qq.com', '0', '2', 'admin', '2020-11-07 09:21:07', '', NULL);
INSERT INTO `sys_dept` VALUES (118, 100, '0,100', '?????????????????????????????????', 6, '??????', '17689898989', '435345@qq.com', '0', '2', 'admin', '2020-11-08 13:30:11', '', NULL);
INSERT INTO `sys_dept` VALUES (119, 100, '0,100', '????????????', 7, '??????', '18767899900', '18767899900@qq.com', '0', '0', 'admin', '2020-11-10 14:07:47', '', NULL);
INSERT INTO `sys_dept` VALUES (120, 119, '0,100,119', '??????????????????', 1, '??????', '18786789900', '18786789900@qq.com', '0', '0', 'admin', '2020-11-10 14:10:10', '', NULL);
INSERT INTO `sys_dept` VALUES (121, 119, '0,100,119', '??????????????????', 2, '??????', '15988998899', '15988998899@qq.com', '0', '0', 'admin', '2020-11-10 14:17:07', '', NULL);
INSERT INTO `sys_dept` VALUES (122, 119, '0,100,119', '??????????????????', 3, '??????', '13678900978', '13678900978@qq.com', '0', '0', 'admin', '2020-11-10 14:35:08', '', NULL);
INSERT INTO `sys_dept` VALUES (123, 100, '0,100', '????????????', 8, '??????', '18900999900', '18900999900@qq.com', '0', '0', 'admin', '2020-11-10 14:59:43', '', NULL);
INSERT INTO `sys_dept` VALUES (124, 123, '0,100,123', '??????????????????', 1, '??????', '18900999999', '18900999999@qq.com', '0', '0', 'admin', '2020-11-10 15:00:29', '', NULL);
INSERT INTO `sys_dept` VALUES (125, 100, '0,100', '?????????', 9, '??????', '18786535776', '18786535776@qq.com', '0', '0', 'admin', '2020-11-10 15:37:04', '', NULL);
INSERT INTO `sys_dept` VALUES (126, 125, '0,100,125', '???????????????', 1, '??????', '18786535778', '18786535778@qq.com', '0', '0', 'admin', '2020-11-10 15:37:55', '', NULL);
INSERT INTO `sys_dept` VALUES (127, 125, '0,100,125', '???????????????', 2, '??????', '18678900987', '18678900987@qq.com', '0', '0', 'admin', '2020-11-12 04:48:02', '', NULL);
INSERT INTO `sys_dept` VALUES (128, 123, '0,100,123', '??????????????????', 2, '??????', '18789898767', '18789898767@qq.com', '0', '0', 'admin', '2020-11-12 04:49:05', '', NULL);
INSERT INTO `sys_dept` VALUES (129, 119, '0,100,119', '??????????????????', 4, '??????', '13789898989', '13789898989@qq.com', '0', '0', 'admin', '2020-11-12 04:50:12', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '????????????',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????????????????????????????',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '???????????????Y??? N??????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '???', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');
INSERT INTO `sys_dict_data` VALUES (2, 2, '???', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');
INSERT INTO `sys_dict_data` VALUES (3, 3, '??????', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (4, 1, '??????', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (5, 2, '??????', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (6, 1, '??????', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (7, 2, '??????', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (8, 1, '??????', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (9, 2, '??????', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (10, 1, '??????', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (11, 2, '??????', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (12, 1, '???', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '???????????????');
INSERT INTO `sys_dict_data` VALUES (13, 2, '???', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '???????????????');
INSERT INTO `sys_dict_data` VALUES (14, 1, '??????', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????');
INSERT INTO `sys_dict_data` VALUES (15, 2, '??????', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????');
INSERT INTO `sys_dict_data` VALUES (16, 1, '??????', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (17, 2, '??????', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (18, 1, '??????', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (19, 2, '??????', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (20, 3, '??????', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (21, 4, '??????', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (22, 5, '??????', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (23, 6, '??????', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (24, 7, '??????', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (25, 8, '????????????', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (26, 9, '????????????', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (27, 1, '??????', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (28, 2, '??????', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '????????????');
INSERT INTO `sys_dict_data` VALUES (100, 1, '????????????', '????????????', 'crops_plant_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:40:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '????????????', '????????????', 'crops_plant_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:40:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '???', '???', 'crops_bagging', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:42:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '???', '???', 'crops_bagging', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:42:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 1, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:45:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 1, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:45:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 3, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:45:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 4, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:46:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 5, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:46:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 6, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '1', 'admin', '2020-10-24 08:46:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 7, '????????????', '????????????', 'crops_type', NULL, NULL, 'N', '1', 'admin', '2020-10-24 08:47:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '??????', '??????', 'trace_cycle', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:47:51', 'admin', '2020-10-24 08:48:21', NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '??????', '??????', 'trace_cycle', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:48:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 3, '??????', '??????', 'trace_cycle', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:48:40', 'admin', '2020-10-24 08:48:53', NULL);
INSERT INTO `sys_dict_data` VALUES (114, 4, '??????', '??????', 'trace_cycle', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:49:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 5, '??????', '??????', 'trace_cycle', NULL, NULL, 'N', '0', 'admin', '2020-10-24 08:49:21', 'admin', '2020-10-24 08:49:29', NULL);
INSERT INTO `sys_dict_data` VALUES (116, 0, '??????', '??????', 'grow_status', NULL, NULL, 'N', '0', 'admin', '2020-10-29 09:07:22', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '????????????', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (2, '????????????', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (3, '????????????', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (4, '????????????', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (5, '????????????', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (6, '????????????', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (7, '????????????', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (8, '????????????', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (9, '????????????', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (10, '????????????', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_dict_type` VALUES (100, '????????????', 'crops_plant_type', '0', 'admin', '2020-10-24 08:39:21', 'admin', '2020-10-24 08:42:10', NULL);
INSERT INTO `sys_dict_type` VALUES (101, '????????????', 'crops_bagging', '0', 'admin', '2020-10-24 08:41:54', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '????????????', 'crops_type', '0', 'admin', '2020-10-24 08:43:58', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '??????', 'trace_cycle', '0', 'admin', '2020-10-24 08:47:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '????????????', 'grow_status', '0', 'admin', '2020-10-29 09:07:00', '', NULL, '??????????????????');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '????????????',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '?????????????????????',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'cron???????????????',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '3' COMMENT '???????????????????????????1???????????? 2???????????? 3???????????????',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '?????????????????????0?????? 1?????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '????????????????????????', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '????????????????????????', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '????????????????????????', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '????????????ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '?????????????????????',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '??????IP??????',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '???????????????',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 498 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-23 15:26:48');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 03:55:09');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 08:36:00');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 09:11:16');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 09:12:35');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 11:14:46');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 11:21:10');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 12:16:50');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-10-24 13:07:23');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-10-24 13:07:31');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 13:07:38');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 15:54:11');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-24 16:42:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 02:50:11');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 03:58:00');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '??????IP', 'Microsoft Edge', 'Windows 10', '0', '????????????', '2020-10-26 04:31:02');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 04:31:34');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 07:43:06');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 08:28:23');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-26 09:38:05');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 06:28:40');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 07:04:52');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 07:59:57');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 08:38:04');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 08:59:45');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 08:59:49');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 10:52:56');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 13:45:08');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-27 15:48:37');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-28 01:31:51');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-10-28 04:06:38');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-28 04:06:42');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '??????IP', 'Microsoft Edge', 'Windows 10', '0', '????????????', '2020-10-29 02:24:17');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 02:25:46');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 02:37:03');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 02:42:37');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 02:51:58');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 03:08:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 05:52:48');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-10-29 08:47:53');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-10-29 08:47:57');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-29 08:48:03');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 07:18:22');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '??????IP', 'Microsoft Edge', 'Windows 10', '0', '????????????', '2020-10-30 12:09:49');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 12:12:49');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 13:30:22');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 14:34:50');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 15:31:11');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 15:42:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-10-30 15:42:30');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-01 14:50:38');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-01 16:01:40');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-01 16:34:21');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 03:10:06');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 05:25:34');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 08:39:50');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 09:00:21');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 14:02:23');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-02 15:27:47');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 04:32:45');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 06:24:00');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 06:40:55');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '??????????????????', '2020-11-03 06:41:18');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 06:48:26');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 08:19:37');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 11:59:42');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-11-03 12:30:28');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 12:30:31');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 13:55:23');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 14:32:32');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-03 15:42:42');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 02:11:13');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 03:27:06');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 07:22:16');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 12:43:51');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 12:53:41');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 12:55:17');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 13:53:43');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 14:01:20');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 15:08:13');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:38:20');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 15:43:12');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:53:23');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:56:05');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:56:22');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:57:34');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:57:41');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:59:25');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 15:59:36');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 16:00:06');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 16:00:12');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 16:01:54');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-04 16:02:03');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:03:46');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-11-04 16:03:53');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:04:02');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:05:15');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:05:24');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:07:27');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:07:34');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:10:32');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:10:40');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:12:15');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-04 16:12:21');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 02:55:32');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-05 03:03:25');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 03:03:32');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 04:42:41');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 04:58:12');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 09:38:06');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:15:11');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:25:55');
INSERT INTO `sys_logininfor` VALUES (212, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:26:08');
INSERT INTO `sys_logininfor` VALUES (213, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:26:18');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:26:23');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:28:45');
INSERT INTO `sys_logininfor` VALUES (216, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:28:57');
INSERT INTO `sys_logininfor` VALUES (217, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:35:38');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:35:47');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:51:04');
INSERT INTO `sys_logininfor` VALUES (220, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:51:19');
INSERT INTO `sys_logininfor` VALUES (221, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:54:34');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 11:54:40');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 13:35:01');
INSERT INTO `sys_logininfor` VALUES (224, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 14:05:08');
INSERT INTO `sys_logininfor` VALUES (225, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 14:05:27');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 14:05:32');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 14:05:36');
INSERT INTO `sys_logininfor` VALUES (228, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 14:05:45');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 14:47:41');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 14:48:12');
INSERT INTO `sys_logininfor` VALUES (231, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 14:49:08');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 15:58:43');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:02:00');
INSERT INTO `sys_logininfor` VALUES (234, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:02:13');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:09:02');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-05 16:09:23');
INSERT INTO `sys_logininfor` VALUES (237, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:11:58');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:11:59');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:12:51');
INSERT INTO `sys_logininfor` VALUES (240, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-05 16:13:06');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-05 16:43:56');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 02:51:39');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 02:59:25');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 02:59:44');
INSERT INTO `sys_logininfor` VALUES (245, '??????', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????/????????????', '2020-11-06 02:59:58');
INSERT INTO `sys_logininfor` VALUES (246, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 03:00:06');
INSERT INTO `sys_logininfor` VALUES (247, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 03:56:29');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 04:44:38');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 04:49:16');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 04:49:27');
INSERT INTO `sys_logininfor` VALUES (251, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 04:49:43');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 05:38:54');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 05:40:09');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 05:40:21');
INSERT INTO `sys_logininfor` VALUES (255, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 05:40:37');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 06:16:58');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 06:17:10');
INSERT INTO `sys_logininfor` VALUES (258, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 06:17:24');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 06:18:14');
INSERT INTO `sys_logininfor` VALUES (260, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 08:28:56');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 08:45:44');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 11:09:51');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 11:48:14');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 11:48:24');
INSERT INTO `sys_logininfor` VALUES (265, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 11:48:40');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 12:24:26');
INSERT INTO `sys_logininfor` VALUES (267, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 13:50:07');
INSERT INTO `sys_logininfor` VALUES (268, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 13:50:17');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-06 13:50:21');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 13:50:24');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 14:39:09');
INSERT INTO `sys_logininfor` VALUES (272, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '??????????????????', '2020-11-06 14:41:29');
INSERT INTO `sys_logininfor` VALUES (273, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-06 14:41:32');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-06 15:09:01');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 02:46:44');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 03:15:38');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 03:15:46');
INSERT INTO `sys_logininfor` VALUES (278, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 03:15:58');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 04:51:30');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 08:19:58');
INSERT INTO `sys_logininfor` VALUES (281, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 08:53:42');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 08:58:46');
INSERT INTO `sys_logininfor` VALUES (283, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 08:59:02');
INSERT INTO `sys_logininfor` VALUES (284, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 08:59:19');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '??????????????????', '2020-11-07 09:01:00');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 09:01:09');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 09:24:02');
INSERT INTO `sys_logininfor` VALUES (288, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 09:24:13');
INSERT INTO `sys_logininfor` VALUES (289, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 09:40:37');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 09:40:57');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-07 12:16:15');
INSERT INTO `sys_logininfor` VALUES (292, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 15:05:50');
INSERT INTO `sys_logininfor` VALUES (293, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-07 15:06:31');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '??????IP', 'Microsoft Edge', 'Windows 10', '0', '????????????', '2020-11-08 02:19:18');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 02:22:45');
INSERT INTO `sys_logininfor` VALUES (296, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 02:30:22');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 02:45:45');
INSERT INTO `sys_logininfor` VALUES (298, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 02:45:55');
INSERT INTO `sys_logininfor` VALUES (299, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '??????????????????', '2020-11-08 03:17:29');
INSERT INTO `sys_logininfor` VALUES (300, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 03:17:33');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 12:31:59');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 12:38:40');
INSERT INTO `sys_logininfor` VALUES (303, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 12:38:48');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 12:44:20');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 12:44:48');
INSERT INTO `sys_logininfor` VALUES (306, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 12:44:57');
INSERT INTO `sys_logininfor` VALUES (307, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 12:52:57');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-08 12:53:17');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 12:53:22');
INSERT INTO `sys_logininfor` VALUES (310, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 13:08:45');
INSERT INTO `sys_logininfor` VALUES (311, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 13:08:59');
INSERT INTO `sys_logininfor` VALUES (312, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 13:09:13');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-08 14:01:20');
INSERT INTO `sys_logininfor` VALUES (314, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-11-08 14:12:51');
INSERT INTO `sys_logininfor` VALUES (315, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-08 14:12:54');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 01:08:20');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 02:05:12');
INSERT INTO `sys_logininfor` VALUES (318, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 02:36:58');
INSERT INTO `sys_logininfor` VALUES (319, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 02:38:25');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 04:02:48');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 04:14:30');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 05:09:04');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 07:02:30');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 09:05:28');
INSERT INTO `sys_logininfor` VALUES (325, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-09 10:13:46');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 11:55:19');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 13:59:10');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:25:06');
INSERT INTO `sys_logininfor` VALUES (329, 'chenglong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:25:18');
INSERT INTO `sys_logininfor` VALUES (330, 'chenglong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:26:17');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:26:21');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:26:55');
INSERT INTO `sys_logininfor` VALUES (333, 'lijie', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:27:02');
INSERT INTO `sys_logininfor` VALUES (334, 'lijie', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:27:33');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 14:27:38');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-09 15:52:10');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 00:49:31');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 04:41:40');
INSERT INTO `sys_logininfor` VALUES (339, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 04:45:14');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 06:51:07');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 06:51:14');
INSERT INTO `sys_logininfor` VALUES (342, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 06:51:27');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:18:17');
INSERT INTO `sys_logininfor` VALUES (344, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:18:28');
INSERT INTO `sys_logininfor` VALUES (345, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:26:28');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:27:30');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:38:49');
INSERT INTO `sys_logininfor` VALUES (348, 'chenglong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 07:38:59');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-10 07:53:49');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 07:53:57');
INSERT INTO `sys_logininfor` VALUES (351, 'chenglong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:33:35');
INSERT INTO `sys_logininfor` VALUES (352, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:33:45');
INSERT INTO `sys_logininfor` VALUES (353, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:34:02');
INSERT INTO `sys_logininfor` VALUES (354, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:34:23');
INSERT INTO `sys_logininfor` VALUES (355, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:40:23');
INSERT INTO `sys_logininfor` VALUES (356, 'lijie', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:40:32');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 08:44:22');
INSERT INTO `sys_logininfor` VALUES (358, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 08:44:32');
INSERT INTO `sys_logininfor` VALUES (359, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 08:46:17');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 08:46:20');
INSERT INTO `sys_logininfor` VALUES (361, 'lijie', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:46:51');
INSERT INTO `sys_logininfor` VALUES (362, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 08:47:03');
INSERT INTO `sys_logininfor` VALUES (363, 'chenhong', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 09:12:45');
INSERT INTO `sys_logininfor` VALUES (364, 'chenliang', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 09:12:57');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:06:41');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 11:15:24');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:19:28');
INSERT INTO `sys_logininfor` VALUES (368, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:20:00');
INSERT INTO `sys_logininfor` VALUES (369, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:41:22');
INSERT INTO `sys_logininfor` VALUES (370, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:41:31');
INSERT INTO `sys_logininfor` VALUES (371, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:42:17');
INSERT INTO `sys_logininfor` VALUES (372, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:42:29');
INSERT INTO `sys_logininfor` VALUES (373, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:53:46');
INSERT INTO `sys_logininfor` VALUES (374, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:53:56');
INSERT INTO `sys_logininfor` VALUES (375, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:56:49');
INSERT INTO `sys_logininfor` VALUES (376, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:56:57');
INSERT INTO `sys_logininfor` VALUES (377, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:57:53');
INSERT INTO `sys_logininfor` VALUES (378, 'chenhong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 11:58:09');
INSERT INTO `sys_logininfor` VALUES (379, 'chenhong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:00:42');
INSERT INTO `sys_logininfor` VALUES (380, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:01:02');
INSERT INTO `sys_logininfor` VALUES (381, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:02:12');
INSERT INTO `sys_logininfor` VALUES (382, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-10 12:02:20');
INSERT INTO `sys_logininfor` VALUES (383, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:02:25');
INSERT INTO `sys_logininfor` VALUES (384, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:07:41');
INSERT INTO `sys_logininfor` VALUES (385, 'staff1', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:08:01');
INSERT INTO `sys_logininfor` VALUES (386, 'staff1', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:11:30');
INSERT INTO `sys_logininfor` VALUES (387, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:11:39');
INSERT INTO `sys_logininfor` VALUES (388, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:12:10');
INSERT INTO `sys_logininfor` VALUES (389, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:12:56');
INSERT INTO `sys_logininfor` VALUES (390, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:13:18');
INSERT INTO `sys_logininfor` VALUES (391, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:14:16');
INSERT INTO `sys_logininfor` VALUES (392, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:14:25');
INSERT INTO `sys_logininfor` VALUES (393, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:15:11');
INSERT INTO `sys_logininfor` VALUES (394, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:15:17');
INSERT INTO `sys_logininfor` VALUES (395, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:20:40');
INSERT INTO `sys_logininfor` VALUES (396, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:22:46');
INSERT INTO `sys_logininfor` VALUES (397, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 12:22:59');
INSERT INTO `sys_logininfor` VALUES (398, 'chenhong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 13:30:17');
INSERT INTO `sys_logininfor` VALUES (399, 'chenhong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 13:33:52');
INSERT INTO `sys_logininfor` VALUES (400, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 13:34:01');
INSERT INTO `sys_logininfor` VALUES (401, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 13:34:10');
INSERT INTO `sys_logininfor` VALUES (402, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-10 13:34:19');
INSERT INTO `sys_logininfor` VALUES (403, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 13:34:25');
INSERT INTO `sys_logininfor` VALUES (404, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-10 14:31:29');
INSERT INTO `sys_logininfor` VALUES (405, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 14:31:33');
INSERT INTO `sys_logininfor` VALUES (406, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 14:46:38');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-11-10 15:17:05');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-10 15:17:13');
INSERT INTO `sys_logininfor` VALUES (409, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:18:13');
INSERT INTO `sys_logininfor` VALUES (410, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:53:32');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:53:50');
INSERT INTO `sys_logininfor` VALUES (412, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:54:02');
INSERT INTO `sys_logininfor` VALUES (413, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:58:08');
INSERT INTO `sys_logininfor` VALUES (414, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 15:58:35');
INSERT INTO `sys_logininfor` VALUES (415, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:01:14');
INSERT INTO `sys_logininfor` VALUES (416, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:01:36');
INSERT INTO `sys_logininfor` VALUES (417, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:04:28');
INSERT INTO `sys_logininfor` VALUES (418, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:04:37');
INSERT INTO `sys_logininfor` VALUES (419, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:12:11');
INSERT INTO `sys_logininfor` VALUES (420, 'lixiang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:12:26');
INSERT INTO `sys_logininfor` VALUES (421, 'lixiang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:15:14');
INSERT INTO `sys_logininfor` VALUES (422, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:15:23');
INSERT INTO `sys_logininfor` VALUES (423, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:16:08');
INSERT INTO `sys_logininfor` VALUES (424, 'lixiang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:16:23');
INSERT INTO `sys_logininfor` VALUES (425, 'lixiang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:18:22');
INSERT INTO `sys_logininfor` VALUES (426, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:21:37');
INSERT INTO `sys_logininfor` VALUES (427, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:22:58');
INSERT INTO `sys_logininfor` VALUES (428, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:23:10');
INSERT INTO `sys_logininfor` VALUES (429, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:24:35');
INSERT INTO `sys_logininfor` VALUES (430, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:24:45');
INSERT INTO `sys_logininfor` VALUES (431, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:34:20');
INSERT INTO `sys_logininfor` VALUES (432, 'quanzhilong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:34:36');
INSERT INTO `sys_logininfor` VALUES (433, 'quanzhilong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:35:41');
INSERT INTO `sys_logininfor` VALUES (434, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-10 16:35:59');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-11 01:07:25');
INSERT INTO `sys_logininfor` VALUES (436, 'wuyifan', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:10:27');
INSERT INTO `sys_logininfor` VALUES (437, 'wuyifan', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:12:07');
INSERT INTO `sys_logininfor` VALUES (438, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:12:16');
INSERT INTO `sys_logininfor` VALUES (439, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:15:00');
INSERT INTO `sys_logininfor` VALUES (440, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:16:28');
INSERT INTO `sys_logininfor` VALUES (441, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-11 01:16:40');
INSERT INTO `sys_logininfor` VALUES (442, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:16:46');
INSERT INTO `sys_logininfor` VALUES (443, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:20:11');
INSERT INTO `sys_logininfor` VALUES (444, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '??????????????????', '2020-11-11 01:22:24');
INSERT INTO `sys_logininfor` VALUES (445, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:22:28');
INSERT INTO `sys_logininfor` VALUES (446, 'chenglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:24:01');
INSERT INTO `sys_logininfor` VALUES (447, 'quanzhilong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:24:12');
INSERT INTO `sys_logininfor` VALUES (448, 'quanzhilong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:24:32');
INSERT INTO `sys_logininfor` VALUES (449, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:24:44');
INSERT INTO `sys_logininfor` VALUES (450, 'huangzhengshu', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 01:59:56');
INSERT INTO `sys_logininfor` VALUES (451, 'liqing', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 02:00:07');
INSERT INTO `sys_logininfor` VALUES (452, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:02:49');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:03:05');
INSERT INTO `sys_logininfor` VALUES (454, 'liqing', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:03:17');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:36:54');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:37:43');
INSERT INTO `sys_logininfor` VALUES (457, 'liqing', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 03:37:59');
INSERT INTO `sys_logininfor` VALUES (458, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 04:57:48');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 04:58:11');
INSERT INTO `sys_logininfor` VALUES (460, 'liqing', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-11 04:58:21');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-11 06:19:03');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 04:45:33');
INSERT INTO `sys_logininfor` VALUES (463, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 04:51:24');
INSERT INTO `sys_logininfor` VALUES (464, 'lijie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:02:33');
INSERT INTO `sys_logininfor` VALUES (465, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:02:45');
INSERT INTO `sys_logininfor` VALUES (466, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:03:56');
INSERT INTO `sys_logininfor` VALUES (467, 'chenxianglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:05:32');
INSERT INTO `sys_logininfor` VALUES (468, 'chenxianglong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:08:44');
INSERT INTO `sys_logininfor` VALUES (469, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:09:06');
INSERT INTO `sys_logininfor` VALUES (470, 'chenliang', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:09:53');
INSERT INTO `sys_logininfor` VALUES (471, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:11:37');
INSERT INTO `sys_logininfor` VALUES (472, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:20:53');
INSERT INTO `sys_logininfor` VALUES (473, 'anming', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:21:20');
INSERT INTO `sys_logininfor` VALUES (474, 'anming', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:22:05');
INSERT INTO `sys_logininfor` VALUES (475, 'chentao', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-12 05:23:00');
INSERT INTO `sys_logininfor` VALUES (476, 'chentao', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:23:07');
INSERT INTO `sys_logininfor` VALUES (477, 'chentao', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:23:42');
INSERT INTO `sys_logininfor` VALUES (478, 'hanjie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:25:04');
INSERT INTO `sys_logininfor` VALUES (479, 'hanjie', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:26:38');
INSERT INTO `sys_logininfor` VALUES (480, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:26:59');
INSERT INTO `sys_logininfor` VALUES (481, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:28:04');
INSERT INTO `sys_logininfor` VALUES (482, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:28:16');
INSERT INTO `sys_logininfor` VALUES (483, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:29:10');
INSERT INTO `sys_logininfor` VALUES (484, 'yanglei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 05:30:56');
INSERT INTO `sys_logininfor` VALUES (485, 'yanglei', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 06:07:55');
INSERT INTO `sys_logininfor` VALUES (486, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 11:07:15');
INSERT INTO `sys_logininfor` VALUES (487, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 11:08:33');
INSERT INTO `sys_logininfor` VALUES (488, 'yanglei', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '1', '???????????????', '2020-11-12 11:09:15');
INSERT INTO `sys_logininfor` VALUES (489, 'yanglei', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 11:09:21');
INSERT INTO `sys_logininfor` VALUES (490, 'yanglei', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 11:11:30');
INSERT INTO `sys_logininfor` VALUES (491, 'admin', '127.0.0.1', '??????IP', 'Chrome 8', 'Windows 10', '0', '????????????', '2020-11-12 11:11:35');
INSERT INTO `sys_logininfor` VALUES (492, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '1', '???????????????', '2020-11-12 11:12:38');
INSERT INTO `sys_logininfor` VALUES (493, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 11:12:48');
INSERT INTO `sys_logininfor` VALUES (494, 'liuxiaowei', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 11:14:20');
INSERT INTO `sys_logininfor` VALUES (495, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 11:14:29');
INSERT INTO `sys_logininfor` VALUES (496, 'lihong', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 11:15:30');
INSERT INTO `sys_logininfor` VALUES (497, 'liqing', '127.0.0.1', '??????IP', 'Firefox 8', 'Windows 10', '0', '????????????', '2020-11-12 11:15:50');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '?????????ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '????????????',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '??????????????????0??? 1??????',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '???????????????0?????? 1????????????',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '???????????????M?????? C?????? F?????????',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '#' COMMENT '????????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '??????',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2012 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '????????????', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (2, '????????????', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (3, '????????????', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (100, '????????????', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (101, '????????????', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (102, '????????????', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (103, '????????????', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (104, '????????????', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (105, '????????????', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (106, '????????????', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (107, '????????????', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (108, '????????????', 1, 9, 'log', 'system/log/index', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (109, '????????????', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (110, '????????????', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (111, '????????????', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (112, '????????????', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (113, '????????????', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (114, '????????????', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (115, '????????????', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (500, '????????????', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (501, '????????????', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '??????????????????');
INSERT INTO `sys_menu` VALUES (1001, '????????????', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '????????????', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '????????????', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '????????????', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '????????????', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '????????????', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '????????????', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '????????????', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '????????????', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '????????????', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '????????????', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '????????????', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '????????????', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '????????????', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '????????????', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '????????????', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '????????????', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '????????????', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '????????????', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '????????????', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '????????????', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '????????????', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '????????????', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '????????????', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '????????????', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '????????????', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '????????????', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '????????????', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '????????????', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '????????????', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '????????????', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '????????????', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '????????????', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '????????????', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '????????????', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '????????????', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '????????????', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '????????????', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '????????????', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '????????????', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '????????????', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '????????????', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '????????????', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '????????????', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '????????????', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '????????????', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '????????????', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '????????????', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '????????????', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '????????????', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '????????????', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '????????????', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '????????????', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '????????????', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '????????????', 114, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '????????????', 114, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '????????????', 114, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '????????????', 114, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '????????????', 114, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '????????????', 114, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '???????????????', 0, 4, 'farmer', NULL, 1, 0, 'M', '0', '0', NULL, 'build', 'admin', '2020-10-23 15:30:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '???????????????', 2000, 1, 'crops/index', 'trace/farmer/index', 1, 0, 'C', '0', '0', 'farmer:crops:list', 'guide', 'admin', '2020-10-23 15:32:44', 'admin', '2020-10-24 08:37:03', '');
INSERT INTO `sys_menu` VALUES (2002, '??????????????????', 0, 6, 'block/index', 'blockExplorer/index', 1, 0, 'C', '0', '0', 'block:index', 'documentation', 'admin', '2020-10-24 09:23:29', 'admin', '2020-10-24 09:25:21', '');
INSERT INTO `sys_menu` VALUES (2003, '????????????', 0, 7, 'trace', NULL, 1, 0, 'M', '0', '0', '', 'drag', 'admin', '2020-11-03 06:24:49', 'admin', '2020-11-03 06:26:25', '');
INSERT INTO `sys_menu` VALUES (2004, '????????????', 2003, 1, 'driver', 'trace/driver/index', 1, 0, 'C', '0', '0', 'trace:driver:list', 'druid', 'admin', '2020-11-03 06:25:48', 'admin', '2020-11-03 06:26:39', '');
INSERT INTO `sys_menu` VALUES (2005, '????????????', 0, 7, 'material', NULL, 1, 0, 'M', '0', '0', NULL, 'checkbox', 'admin', '2020-11-07 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '????????????', 2005, 1, 'material', 'trace/material/index', 1, 0, 'C', '0', '0', 'maching:index', 'date', 'admin', '2020-11-07 08:25:07', 'admin', '2020-11-07 08:26:33', '');
INSERT INTO `sys_menu` VALUES (2007, '????????????', 0, 8, 'product', NULL, 1, 0, 'M', '0', '0', NULL, 'post', 'admin', '2020-11-08 02:26:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '????????????', 2007, 1, 'maching', 'trace/product/index', 1, 0, 'C', '0', '0', 'pro:list', 'clipboard', 'admin', '2020-11-08 02:28:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '????????????', 2007, 2, 'record', 'trace/product/record', 1, 0, 'C', '0', '0', 'record:list', 'edit', 'admin', '2020-11-09 14:10:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '?????????', 0, 9, 'retailer', NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2020-11-10 12:32:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '????????????', 2010, 1, 'retailer', 'trace/retailer/index', 1, 0, 'C', '0', '0', 'retailer:list', 'documentation', 'admin', '2020-11-10 12:33:41', 'admin', '2020-11-10 12:34:11', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '???????????????1?????? 2?????????',
  `notice_content` longblob NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '???????????????2018-07-01 ????????????????????????', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');
INSERT INTO `sys_notice` VALUES (2, '???????????????2018-07-01 ????????????????????????', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????? 2?????? 3?????????',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '???????????????0?????? 1???????????? 2??????????????????',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '??????URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `status` int(0) NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"4\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"farmer\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-23 15:30:05');
INSERT INTO `sys_oper_log` VALUES (101, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"1\",\"menuName\":\"???????????????\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"farmer/crops/index\",\"component\":\"farmer/crops/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"farmer:crops:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-23 15:32:44');
INSERT INTO `sys_oper_log` VALUES (102, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"1\",\"menuName\":\"???????????????\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"farmer/crops/index\",\"component\":\"trace/farmer/index\",\"children\":[],\"createTime\":1603438364000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"farmer:crops:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-23 15:38:22');
INSERT INTO `sys_oper_log` VALUES (103, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"1\",\"menuName\":\"???????????????\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"crops/index\",\"component\":\"trace/farmer/index\",\"children\":[],\"createTime\":1603438364000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"farmer:crops:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:37:03');
INSERT INTO `sys_oper_log` VALUES (104, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"params\":{},\"dictType\":\"trace_plant_type\",\"createBy\":\"admin\",\"dictName\":\"????????????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:39:22');
INSERT INTO `sys_oper_log` VALUES (105, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":1,\"params\":{},\"dictType\":\"trace_plant_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:40:28');
INSERT INTO `sys_oper_log` VALUES (106, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":2,\"params\":{},\"dictType\":\"trace_plant_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:40:46');
INSERT INTO `sys_oper_log` VALUES (107, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"params\":{},\"dictType\":\"crops_bagging\",\"createBy\":\"admin\",\"dictName\":\"????????????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:41:54');
INSERT INTO `sys_oper_log` VALUES (108, '????????????', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"dictId\":100,\"params\":{},\"dictType\":\"crops_plant_type\",\"createBy\":\"admin\",\"createTime\":1603499961000,\"updateBy\":\"admin\",\"dictName\":\"????????????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:42:10');
INSERT INTO `sys_oper_log` VALUES (109, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":1,\"params\":{},\"dictType\":\"crops_bagging\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:42:29');
INSERT INTO `sys_oper_log` VALUES (110, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"?????????\",\"dictSort\":2,\"params\":{},\"dictType\":\"crops_bagging\",\"dictLabel\":\"?????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:42:41');
INSERT INTO `sys_oper_log` VALUES (111, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"params\":{},\"dictType\":\"crops_type\",\"createBy\":\"admin\",\"dictName\":\"????????????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:43:58');
INSERT INTO `sys_oper_log` VALUES (112, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":1,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:45:04');
INSERT INTO `sys_oper_log` VALUES (113, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":1,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:45:21');
INSERT INTO `sys_oper_log` VALUES (114, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":3,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:45:40');
INSERT INTO `sys_oper_log` VALUES (115, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":4,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:46:04');
INSERT INTO `sys_oper_log` VALUES (116, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":5,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:46:18');
INSERT INTO `sys_oper_log` VALUES (117, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":6,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:46:46');
INSERT INTO `sys_oper_log` VALUES (118, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"????????????\",\"dictSort\":7,\"params\":{},\"dictType\":\"crops_type\",\"dictLabel\":\"????????????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:47:02');
INSERT INTO `sys_oper_log` VALUES (119, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"params\":{},\"dictType\":\"trace_cycle\",\"createBy\":\"admin\",\"dictName\":\"??????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:47:27');
INSERT INTO `sys_oper_log` VALUES (120, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"5???\",\"dictSort\":1,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"5???\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:47:51');
INSERT INTO `sys_oper_log` VALUES (121, '????????????', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":1,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1603500471000,\"dictCode\":111,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:48:22');
INSERT INTO `sys_oper_log` VALUES (122, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":1,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:48:30');
INSERT INTO `sys_oper_log` VALUES (123, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":0,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:48:41');
INSERT INTO `sys_oper_log` VALUES (124, '????????????', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":3,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1603500520000,\"dictCode\":113,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:48:53');
INSERT INTO `sys_oper_log` VALUES (125, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":4,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:49:10');
INSERT INTO `sys_oper_log` VALUES (126, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":0,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:49:21');
INSERT INTO `sys_oper_log` VALUES (127, '????????????', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":5,\"params\":{},\"dictType\":\"trace_cycle\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1603500561000,\"dictCode\":115,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 08:49:29');
INSERT INTO `sys_oper_log` VALUES (128, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"6\",\"menuName\":\"??????????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"block/index\",\"component\":\"block/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"block:index\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 09:23:29');
INSERT INTO `sys_oper_log` VALUES (129, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"6\",\"menuName\":\"??????????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"block/index\",\"component\":\"blockExplorer/index\",\"children\":[],\"createTime\":1603502609000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"block:index\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-24 09:25:21');
INSERT INTO `sys_oper_log` VALUES (130, '????????????', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '??????IP', '', '{\"msg\":\"????????????\",\"imgUrl\":\"/profile/avatar/2020/10/26/a4161ed9-53a4-442a-9e7a-1f6a0a75c20f.jpeg\",\"code\":200}', 0, NULL, '2020-10-26 08:03:02');
INSERT INTO `sys_oper_log` VALUES (131, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '??????IP', '{\"remark\":\"??????????????????\",\"params\":{},\"dictType\":\"grow_status\",\"createBy\":\"admin\",\"dictName\":\"????????????\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-29 09:07:01');
INSERT INTO `sys_oper_log` VALUES (132, '????????????', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '??????IP', '{\"dictValue\":\"??????\",\"dictSort\":0,\"params\":{},\"dictType\":\"grow_status\",\"dictLabel\":\"??????\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-10-29 09:07:22');
INSERT INTO `sys_oper_log` VALUES (133, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"?????????\",\"leader\":\"??????\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"13657746155\",\"ancestors\":\"0,100\",\"email\":\"231949@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 04:40:39');
INSERT INTO `sys_oper_log` VALUES (134, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":110,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18767675566\",\"ancestors\":\"0,100,110\",\"email\":\"2319492349@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 04:43:16');
INSERT INTO `sys_oper_log` VALUES (135, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"drag\",\"orderNum\":\"7\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"trace\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:24:49');
INSERT INTO `sys_oper_log` VALUES (136, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"driver\",\"component\":\"trace/driver/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"trace:driver:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:25:48');
INSERT INTO `sys_oper_log` VALUES (137, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"drag\",\"orderNum\":\"7\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"trace\",\"children\":[],\"createTime\":1604355889000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:26:25');
INSERT INTO `sys_oper_log` VALUES (138, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"driver\",\"component\":\"trace/driver/index\",\"children\":[],\"createTime\":1604355948000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"trace:driver:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:26:39');
INSERT INTO `sys_oper_log` VALUES (139, '????????????', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '??????IP', '{\"postSort\":\"5\",\"flag\":false,\"remark\":\"????????????\",\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"??????\",\"postCode\":\"driver\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:53:31');
INSERT INTO `sys_oper_log` VALUES (140, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"?????????\",\"leader\":\"??????\",\"orderNum\":\"4\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"16788990099\",\"ancestors\":\"0,100\",\"email\":\"23456@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:54:50');
INSERT INTO `sys_oper_log` VALUES (141, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":112,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18789898989\",\"ancestors\":\"0,100,112\",\"email\":\"23456@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:56:17');
INSERT INTO `sys_oper_log` VALUES (142, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":112,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18789898989\",\"ancestors\":\"0,100,112\",\"email\":\"23456@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:56:17');
INSERT INTO `sys_oper_log` VALUES (143, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/114', '127.0.0.1', '??????IP', '{deptId=114}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:56:27');
INSERT INTO `sys_oper_log` VALUES (144, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15878787878\",\"admin\":false,\"password\":\"$2a$10$RKW2JzLbAFbX..4pBx/4FeCkpV2eUhA94NHObiPZ9CgGudaEfWPfq\",\"postIds\":[5],\"email\":\"234567@qq.com\",\"nickName\":\"??????????????????\",\"sex\":\"0\",\"deptId\":113,\"params\":{},\"userName\":\"lijie\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-03 06:58:09');
INSERT INTO `sys_oper_log` VALUES (145, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"2\",\"params\":{},\"parentId\":110,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18786456789\",\"ancestors\":\"0,100,110\",\"email\":\"12314@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:18:44');
INSERT INTO `sys_oper_log` VALUES (146, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":115,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15900999900\",\"ancestors\":\"0,100,110,115\",\"email\":\"34534@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:19:36');
INSERT INTO `sys_oper_log` VALUES (147, '????????????', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????????????????\",\"leader\":\"??????\",\"deptId\":116,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":115,\"createBy\":\"admin\",\"children\":[],\"createTime\":1604546376000,\"phone\":\"15900999900\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,110,115\",\"email\":\"34534@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:20:19');
INSERT INTO `sys_oper_log` VALUES (148, '????????????', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '??????IP', '{\"postSort\":\"6\",\"flag\":false,\"remark\":\"?????????\",\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"?????????\",\"postCode\":\"zhongzhi\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:22:30');
INSERT INTO `sys_oper_log` VALUES (149, '????????????', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/3', '127.0.0.1', '??????IP', '{userIds=3}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:22:53');
INSERT INTO `sys_oper_log` VALUES (150, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18789898989\",\"admin\":false,\"remark\":\"???????????????\",\"password\":\"123456\",\"postIds\":[6],\"email\":\"2342342@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":116,\"params\":{},\"userName\":\"lijie\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"????????????\'lijie\'??????????????????????????????\",\"code\":500}', 0, NULL, '2020-11-05 11:23:54');
INSERT INTO `sys_oper_log` VALUES (151, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18789898989\",\"admin\":false,\"remark\":\"???????????????\",\"password\":\"$2a$10$yXovlMCIjkbnaQGCzpi.GekbNTBpIRFv.93ZDv1mwjzZfcVgq2h4u\",\"postIds\":[6],\"email\":\"2342342@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":116,\"params\":{},\"userName\":\"lijie\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:25:11');
INSERT INTO `sys_oper_log` VALUES (152, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"??????\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhongzhihu\",\"roleName\":\"?????????\",\"deptIds\":[],\"menuIds\":[2000,2001],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:28:13');
INSERT INTO `sys_oper_log` VALUES (153, '????????????', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"????????????\",\"status\":\"0\"}],\"phonenumber\":\"18789898989\",\"admin\":false,\"remark\":\"???????????????\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"\",\"email\":\"2342342@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":116,\"avatar\":\"\",\"dept\":{\"deptName\":\"??????????????????????????????\",\"leader\":\"??????\",\"deptId\":116,\"orderNum\":\"1\",\"params\":{},\"parentId\":115,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lijie\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[3],\"createTime\":1604546710000,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:28:40');
INSERT INTO `sys_oper_log` VALUES (154, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"??????\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"driver\",\"roleName\":\"??????\",\"deptIds\":[],\"menuIds\":[2003,2004],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:36:59');
INSERT INTO `sys_oper_log` VALUES (155, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18786755678\",\"admin\":false,\"remark\":\"????????????\",\"password\":\"$2a$10$IuBZ5zcubso6YOCxwjM0WeMPrOirrySTdavX6Lc8ZMWW0bGUuFvWO\",\"postIds\":[5],\"email\":\"23423423@qq.com\",\"nickName\":\"????????????\",\"sex\":\"0\",\"deptId\":112,\"params\":{},\"userName\":\"chenliang\",\"userId\":5,\"createBy\":\"admin\",\"roleIds\":[4],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:38:34');
INSERT INTO `sys_oper_log` VALUES (156, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18745677654\",\"admin\":false,\"remark\":\"\",\"password\":\"123456\",\"postIds\":[5],\"email\":\"23423423@qq.com\",\"nickName\":\"????????????\",\"sex\":\"0\",\"deptId\":112,\"params\":{},\"userName\":\"lihong\",\"roleIds\":[4],\"status\":\"0\"}', '{\"msg\":\"????????????\'lihong\'??????????????????????????????\",\"code\":500}', 0, NULL, '2020-11-05 11:49:44');
INSERT INTO `sys_oper_log` VALUES (157, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18745677654\",\"admin\":false,\"remark\":\"\",\"password\":\"$2a$10$FnmmN7pL2c2t03j6z.4s1.6n8bx40fWJI7psSbuYcjfyaKNYpZHsy\",\"postIds\":[5],\"email\":\"234263423@qq.com\",\"nickName\":\"????????????\",\"sex\":\"0\",\"deptId\":112,\"params\":{},\"userName\":\"lihong\",\"userId\":6,\"createBy\":\"admin\",\"roleIds\":[4],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:49:54');
INSERT INTO `sys_oper_log` VALUES (158, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/113', '127.0.0.1', '??????IP', '{deptId=113}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:50:25');
INSERT INTO `sys_oper_log` VALUES (159, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"??????\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1604547418000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"driver\",\"roleName\":\"??????\",\"menuIds\":[2002,2003,2004],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:50:53');
INSERT INTO `sys_oper_log` VALUES (160, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"??????\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1604546893000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhongzhihu\",\"roleName\":\"?????????\",\"menuIds\":[2000,2001,2002],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 11:51:00');
INSERT INTO `sys_oper_log` VALUES (161, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '??????IP', '{menuId=4}', '{\"msg\":\"???????????????,???????????????\",\"code\":500}', 0, NULL, '2020-11-05 13:45:17');
INSERT INTO `sys_oper_log` VALUES (162, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"????????????\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1521171180000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"????????????\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,3,113,114,1055,1056,1058,1057,1059,1060,115],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 13:45:47');
INSERT INTO `sys_oper_log` VALUES (163, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '??????IP', '{menuId=4}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-05 13:46:47');
INSERT INTO `sys_oper_log` VALUES (164, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":\"7\",\"menuName\":\"??????????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"material\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 08:22:36');
INSERT INTO `sys_oper_log` VALUES (165, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"date\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2005,\"isCache\":\"0\",\"path\":\"material\",\"component\":\"material/maching/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"maching:index\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 08:25:08');
INSERT INTO `sys_oper_log` VALUES (166, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"date\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2005,\"isCache\":\"0\",\"path\":\"material\",\"component\":\"trace/material/index\",\"children\":[],\"createTime\":1604708707000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"maching:index\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 08:26:33');
INSERT INTO `sys_oper_log` VALUES (167, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????????????????\",\"leader\":\"??????\",\"orderNum\":\"5\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18786538989\",\"ancestors\":\"0,100\",\"email\":\"2342342@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 09:21:07');
INSERT INTO `sys_oper_log` VALUES (168, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"material\",\"roleName\":\"?????????????????????\",\"deptIds\":[],\"menuIds\":[2002,2005,2006],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 09:22:09');
INSERT INTO `sys_oper_log` VALUES (169, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18756786789\",\"admin\":false,\"password\":\"123456\",\"postIds\":[1],\"email\":\"23423423@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":117,\"params\":{},\"userName\":\"chenhong\",\"roleIds\":[5],\"status\":\"0\"}', '{\"msg\":\"????????????\'chenhong\'??????????????????????????????\",\"code\":500}', 0, NULL, '2020-11-07 09:23:46');
INSERT INTO `sys_oper_log` VALUES (170, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18756786789\",\"admin\":false,\"password\":\"$2a$10$LtlYXuvaSs52AB8AuG.Ovu6/0VM8VZ/ixZDMkxyhqfxnLSa/SeuXW\",\"postIds\":[1],\"email\":\"234234237@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":117,\"params\":{},\"userName\":\"chenhong\",\"userId\":7,\"createBy\":\"admin\",\"roleIds\":[5],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-07 09:23:54');
INSERT INTO `sys_oper_log` VALUES (171, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"post\",\"orderNum\":\"8\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"product\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 02:26:55');
INSERT INTO `sys_oper_log` VALUES (172, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"maching\",\"component\":\"trace/product/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pro:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 02:28:21');
INSERT INTO `sys_oper_log` VALUES (173, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"yuangong\",\"roleName\":\"???????????????\",\"deptIds\":[],\"menuIds\":[2002],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 13:28:39');
INSERT INTO `sys_oper_log` VALUES (174, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"?????????????????????????????????\",\"leader\":\"??????\",\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"17689898989\",\"ancestors\":\"0,100\",\"email\":\"435345@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 13:30:11');
INSERT INTO `sys_oper_log` VALUES (175, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18785767989\",\"admin\":false,\"password\":\"$2a$10$5iZbjxfLR9JmuQR5DfI2t.ZRMKt0T0vH5beFO.fLsc/ymudYlK.x.\",\"postIds\":[4],\"email\":\"123123123@qq.com\",\"nickName\":\"???????????????1\",\"sex\":\"0\",\"deptId\":118,\"params\":{},\"userName\":\"staff1\",\"userId\":8,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 13:32:06');
INSERT INTO `sys_oper_log` VALUES (176, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1604813318000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"staff\",\"roleName\":\"???????????????\",\"menuIds\":[2002],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-08 13:32:21');
INSERT INTO `sys_oper_log` VALUES (177, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"2\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"record\",\"component\":\"trace/product/record\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"record:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-09 14:10:37');
INSERT INTO `sys_oper_log` VALUES (178, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"factoryLeader\",\"roleName\":\"?????????????????????\",\"deptIds\":[],\"menuIds\":[2008,2007],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-09 14:22:54');
INSERT INTO `sys_oper_log` VALUES (179, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18787878787\",\"admin\":false,\"password\":\"$2a$10$Q5123oHpXTv3u6T2RS/aT.RCCkT.gqbL2iMyLxOiYadTBwUr/i6Iu\",\"postIds\":[1],\"email\":\"454545@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":118,\"params\":{},\"userName\":\"chenglong\",\"userId\":9,\"createBy\":\"admin\",\"roleIds\":[7],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-09 14:24:29');
INSERT INTO `sys_oper_log` VALUES (180, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1604902973000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"factoryLeader\",\"roleName\":\"?????????????????????\",\"menuIds\":[2008,2007],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-09 14:24:51');
INSERT INTO `sys_oper_log` VALUES (181, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1604813318000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"staff\",\"roleName\":\"???????????????\",\"menuIds\":[2002,2009,2007],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 12:10:04');
INSERT INTO `sys_oper_log` VALUES (182, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1604902973000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"factoryLeader\",\"roleName\":\"?????????????????????\",\"menuIds\":[2002,2008,2007],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 12:16:16');
INSERT INTO `sys_oper_log` VALUES (183, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"9\",\"menuName\":\"?????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"retailer\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 12:32:26');
INSERT INTO `sys_oper_log` VALUES (184, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"path\":\"retailer\",\"component\":\"trace/retailer/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"retailer:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 12:33:41');
INSERT INTO `sys_oper_log` VALUES (185, '????????????', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"1\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"path\":\"retailer\",\"component\":\"trace/retailer/index\",\"children\":[],\"createTime\":1604982821000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"retailer:list\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 12:34:11');
INSERT INTO `sys_oper_log` VALUES (186, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"????????????\",\"leader\":\"??????\",\"orderNum\":\"7\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18767899900\",\"ancestors\":\"0,100\",\"email\":\"18767899900@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:07:47');
INSERT INTO `sys_oper_log` VALUES (187, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":119,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18786789900\",\"ancestors\":\"0,100,119\",\"email\":\"18786789900@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:10:10');
INSERT INTO `sys_oper_log` VALUES (188, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '??????IP', '{deptId=102}', '{\"msg\":\"??????????????????,???????????????\",\"code\":500}', 0, NULL, '2020-11-10 14:14:33');
INSERT INTO `sys_oper_log` VALUES (189, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '??????IP', '{deptId=108}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:14:40');
INSERT INTO `sys_oper_log` VALUES (190, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '??????IP', '{deptId=109}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:14:45');
INSERT INTO `sys_oper_log` VALUES (191, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '??????IP', '{deptId=102}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:14:51');
INSERT INTO `sys_oper_log` VALUES (192, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '??????IP', '{deptId=107}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:14:54');
INSERT INTO `sys_oper_log` VALUES (193, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '??????IP', '{deptId=106}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:14:57');
INSERT INTO `sys_oper_log` VALUES (194, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '??????IP', '{deptId=105}', '{\"msg\":\"??????????????????,???????????????\",\"code\":500}', 0, NULL, '2020-11-10 14:15:01');
INSERT INTO `sys_oper_log` VALUES (195, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '??????IP', '{deptId=104}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:15:04');
INSERT INTO `sys_oper_log` VALUES (196, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '??????IP', '{deptId=103}', '{\"msg\":\"??????????????????,???????????????\",\"code\":500}', 0, NULL, '2020-11-10 14:15:08');
INSERT INTO `sys_oper_log` VALUES (197, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"2\",\"params\":{},\"parentId\":119,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15988998899\",\"ancestors\":\"0,100,119\",\"email\":\"15988998899@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:17:07');
INSERT INTO `sys_oper_log` VALUES (198, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"3\",\"params\":{},\"parentId\":119,\"createBy\":\"admin\",\"children\":[],\"phone\":\"13678900978\",\"ancestors\":\"0,100,119\",\"email\":\"13678900978@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:35:08');
INSERT INTO `sys_oper_log` VALUES (199, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"????????????\",\"leader\":\"??????\",\"orderNum\":\"8\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18900999900\",\"ancestors\":\"0,100\",\"email\":\"18900999900@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 14:59:43');
INSERT INTO `sys_oper_log` VALUES (200, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":123,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18900999999\",\"ancestors\":\"0,100,123\",\"email\":\"18900999999@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 15:00:30');
INSERT INTO `sys_oper_log` VALUES (201, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"?????????\",\"leader\":\"??????\",\"orderNum\":\"9\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18786535776\",\"ancestors\":\"0,100\",\"email\":\"18786535776@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 15:37:04');
INSERT INTO `sys_oper_log` VALUES (202, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"1\",\"params\":{},\"parentId\":125,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18786535778\",\"ancestors\":\"0,100,125\",\"email\":\"18786535778@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 15:37:55');
INSERT INTO `sys_oper_log` VALUES (203, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"13657756898\",\"admin\":false,\"password\":\"$2a$10$J.4RZCn5EyHbSL5Uq2CKYePsbCn2v9IuX4KlFqWZO4G444R4AtMKC\",\"postIds\":[1],\"email\":\"13657756898@qq.com\",\"nickName\":\"??????????????????????????????\",\"sex\":\"0\",\"deptId\":122,\"params\":{},\"userName\":\"lixiang\",\"userId\":10,\"createBy\":\"admin\",\"roleIds\":[5],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 16:11:45');
INSERT INTO `sys_oper_log` VALUES (204, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"19889898989\",\"admin\":false,\"remark\":\"\",\"password\":\"$2a$10$1m2mwjlq/ex90p/xOHFqSuxBtiBm8X4Imm5LQqtaFKJdcYD6AJhju\",\"postIds\":[1],\"email\":\"19889898989@qq.com\",\"nickName\":\"???????????????????????????\",\"sex\":\"0\",\"deptId\":124,\"params\":{},\"userName\":\"huangzhengshu\",\"userId\":11,\"createBy\":\"admin\",\"roleIds\":[7],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 16:20:14');
INSERT INTO `sys_oper_log` VALUES (205, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18212789090\",\"admin\":false,\"password\":\"$2a$10$qsAM8q.wrIafFlfDGeMsjeysqOGMg2grrQhYN8758J1L7k9w5f5fC\",\"postIds\":[4],\"email\":\"18212789090@qq.com\",\"nickName\":\"?????????\",\"sex\":\"0\",\"deptId\":124,\"params\":{},\"userName\":\"quanzhilong\",\"userId\":12,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-10 16:33:52');
INSERT INTO `sys_oper_log` VALUES (206, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18786578989\",\"admin\":false,\"password\":\"$2a$10$MHaPPNqGx9H/DHphrAvArejRmErJ2qdbWFY1.bWH0dsW/QpjAfaSm\",\"postIds\":[4],\"email\":\"18786578989@qq.com\",\"nickName\":\"?????????\",\"sex\":\"0\",\"deptId\":124,\"params\":{},\"userName\":\"wuyifan\",\"userId\":13,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:10:03');
INSERT INTO `sys_oper_log` VALUES (207, '????????????', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/8', '127.0.0.1', '??????IP', '{userIds=8}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:22:59');
INSERT INTO `sys_oper_log` VALUES (208, '????????????', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/9', '127.0.0.1', '??????IP', '{userIds=9}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:23:09');
INSERT INTO `sys_oper_log` VALUES (209, '????????????', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/7', '127.0.0.1', '??????IP', '{userIds=7}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:23:14');
INSERT INTO `sys_oper_log` VALUES (210, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15988776655\",\"admin\":false,\"password\":\"$2a$10$5bit.TPyKJTeUUpMUBbPheQSyCSDwALXFzZO6vRB9kzQYwj3NQx1y\",\"postIds\":[1],\"email\":\"15988776655@qq.com\",\"nickName\":\"?????????????????????\",\"sex\":\"1\",\"deptId\":126,\"params\":{},\"userName\":\"liqing\",\"userId\":14,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:58:20');
INSERT INTO `sys_oper_log` VALUES (211, '????????????', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":8,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"retailer\",\"roleName\":\"?????????\",\"deptIds\":[],\"menuIds\":[2010,2011],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:59:20');
INSERT INTO `sys_oper_log` VALUES (212, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '??????IP', '{\"flag\":false,\"roleId\":8,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"8\",\"deptCheckStrictly\":true,\"createTime\":1605031160000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"retailer\",\"roleName\":\"?????????\",\"menuIds\":[2010,2011],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:59:32');
INSERT INTO `sys_oper_log` VALUES (213, '????????????', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"????????????\",\"status\":\"0\"}],\"phonenumber\":\"15988776655\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"15988776655@qq.com\",\"nickName\":\"?????????????????????\",\"sex\":\"1\",\"deptId\":126,\"avatar\":\"\",\"dept\":{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"deptId\":126,\"orderNum\":\"1\",\"params\":{},\"parentId\":125,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"liqing\",\"userId\":14,\"createBy\":\"admin\",\"roleIds\":[8],\"createTime\":1605031099000,\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-11 01:59:45');
INSERT INTO `sys_oper_log` VALUES (214, '????????????', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '??????IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"6\",\"menuName\":\"????????????\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"trace\",\"component\":\"trace/trace/index\",\"children\":[],\"isFrame\":\"0\",\"menuType\":\"C\",\"perms\":\"trace\",\"status\":\"0\"}', '{\"msg\":\"????????????\'????????????\'????????????????????????http(s)://??????\",\"code\":500}', 0, NULL, '2020-11-11 06:22:39');
INSERT INTO `sys_oper_log` VALUES (215, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/117', '127.0.0.1', '??????IP', '{deptId=117}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 04:46:30');
INSERT INTO `sys_oper_log` VALUES (216, '????????????', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/118', '127.0.0.1', '??????IP', '{deptId=118}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 04:46:37');
INSERT INTO `sys_oper_log` VALUES (217, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"???????????????\",\"leader\":\"??????\",\"orderNum\":\"2\",\"params\":{},\"parentId\":125,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18678900987\",\"ancestors\":\"0,100,125\",\"email\":\"18678900987@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 04:48:03');
INSERT INTO `sys_oper_log` VALUES (218, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"2\",\"params\":{},\"parentId\":123,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18789898767\",\"ancestors\":\"0,100,123\",\"email\":\"18789898767@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 04:49:05');
INSERT INTO `sys_oper_log` VALUES (219, '????????????', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '??????IP', '{\"deptName\":\"??????????????????\",\"leader\":\"??????\",\"orderNum\":\"4\",\"params\":{},\"parentId\":119,\"createBy\":\"admin\",\"children\":[],\"phone\":\"13789898989\",\"ancestors\":\"0,100,119\",\"email\":\"13789898989@qq.com\",\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 04:50:13');
INSERT INTO `sys_oper_log` VALUES (220, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15988990099\",\"admin\":false,\"password\":\"$2a$10$//3FbYAaC7mzWEjBKGaS6O6tjrHEGG8B084ef.D6e7X3nw5ufcXYO\",\"postIds\":[1],\"email\":\"13900999900@qq.com\",\"nickName\":\"?????????\",\"sex\":\"0\",\"deptId\":129,\"params\":{},\"userName\":\"chenxianglong\",\"userId\":15,\"createBy\":\"admin\",\"roleIds\":[5],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:05:18');
INSERT INTO `sys_oper_log` VALUES (221, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18786789900\",\"admin\":false,\"password\":\"$2a$10$a31aStCWjkmzeh6r1efQOudH.GrMVF2LhLwJ5G0jNNl73jcOQ.au.\",\"postIds\":[1],\"email\":\"18786789900@qq.com\",\"nickName\":\"?????????\",\"sex\":\"0\",\"deptId\":128,\"params\":{},\"userName\":\"liuxiaowei\",\"userId\":16,\"createBy\":\"admin\",\"roleIds\":[7],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:11:22');
INSERT INTO `sys_oper_log` VALUES (222, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18787878787\",\"admin\":false,\"password\":\"123456\",\"postIds\":[4],\"email\":\"18787878787@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":128,\"params\":{},\"userName\":\"anming\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\'anming\'??????????????????????????????\",\"code\":500}', 0, NULL, '2020-11-12 05:20:35');
INSERT INTO `sys_oper_log` VALUES (223, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"18787878780\",\"admin\":false,\"password\":\"$2a$10$KlKqkFdm6dM3l2O4PlA3xeCgfU3h8CEw1EE2ilH8Tqte0HsUYT6ze\",\"postIds\":[4],\"email\":\"18787878787@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":128,\"params\":{},\"userName\":\"anming\",\"userId\":17,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:20:45');
INSERT INTO `sys_oper_log` VALUES (224, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15900889900\",\"admin\":false,\"password\":\"$2a$10$VYR/tjUu/UHkSu9fGjvdLeVyN1iqbAFri9AtJshcdvrGvAWmnJYI2\",\"postIds\":[4],\"email\":\"15900889900@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":128,\"params\":{},\"userName\":\"chentao\",\"userId\":18,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:22:49');
INSERT INTO `sys_oper_log` VALUES (225, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15899008899\",\"admin\":false,\"password\":\"$2a$10$FWcUlM3.dKJqOGwIFGHnS.A5wqv3sxnNmPP3XVvcZbogEPsYgA.Pu\",\"postIds\":[4],\"email\":\"15899008899@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":128,\"params\":{},\"userName\":\"hanjie\",\"userId\":19,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:24:53');
INSERT INTO `sys_oper_log` VALUES (226, '????????????', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '??????IP', '{\"phonenumber\":\"15890905678\",\"admin\":false,\"remark\":\"123\",\"password\":\"$2a$10$BU/miCHhWU4m0qrWQehcO.TZeuMIln9eICiTwg29Ey2bl.snL.35e\",\"postIds\":[1],\"email\":\"15890905678@qq.com\",\"nickName\":\"??????\",\"sex\":\"0\",\"deptId\":127,\"params\":{},\"userName\":\"yanglei\",\"userId\":20,\"createBy\":\"admin\",\"roleIds\":[8],\"status\":\"0\"}', '{\"msg\":\"????????????\",\"code\":200}', 0, NULL, '2020-11-12 05:30:39');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `post_sort` int(0) NOT NULL COMMENT '????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '?????????0?????? 1?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '?????????', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '????????????', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '????????????', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '????????????', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (5, 'driver', '??????', 5, '0', 'admin', '2020-11-03 06:53:31', '', NULL, '????????????');
INSERT INTO `sys_post` VALUES (6, 'zhongzhi', '?????????', 6, '0', 'admin', '2020-11-05 11:22:30', '', NULL, '?????????');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '?????????????????????',
  `role_sort` int(0) NOT NULL COMMENT '????????????',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '???????????????1????????????????????? 2????????????????????? 3???????????????????????? 4????????????????????????????????????',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '????????????????????????????????????',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '????????????????????????????????????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '???????????????', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '???????????????');
INSERT INTO `sys_role` VALUES (2, '????????????', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-05 13:45:45', '????????????');
INSERT INTO `sys_role` VALUES (3, '?????????', 'zhongzhihu', 3, '1', 1, 1, '0', '0', 'admin', '2020-11-05 11:28:13', 'admin', '2020-11-05 11:51:00', '??????');
INSERT INTO `sys_role` VALUES (4, '??????', 'driver', 4, '1', 1, 1, '0', '0', 'admin', '2020-11-05 11:36:58', 'admin', '2020-11-05 11:50:51', '??????');
INSERT INTO `sys_role` VALUES (5, '?????????????????????', 'material', 5, '1', 1, 1, '0', '0', 'admin', '2020-11-07 09:22:09', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (6, '???????????????', 'staff', 6, '1', 1, 1, '0', '0', 'admin', '2020-11-08 13:28:38', 'admin', '2020-11-10 12:10:03', NULL);
INSERT INTO `sys_role` VALUES (7, '?????????????????????', 'factoryLeader', 7, '1', 1, 1, '0', '0', 'admin', '2020-11-09 14:22:53', 'admin', '2020-11-10 12:16:14', NULL);
INSERT INTO `sys_role` VALUES (8, '?????????', 'retailer', 8, '1', 1, 1, '0', '0', 'admin', '2020-11-11 01:59:20', 'admin', '2020-11-11 01:59:32', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '??????ID',
  `dept_id` bigint(0) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

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
  `role_id` bigint(0) NOT NULL COMMENT '??????ID',
  `menu_id` bigint(0) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (3, 2000);
INSERT INTO `sys_role_menu` VALUES (3, 2001);
INSERT INTO `sys_role_menu` VALUES (3, 2002);
INSERT INTO `sys_role_menu` VALUES (4, 2002);
INSERT INTO `sys_role_menu` VALUES (4, 2003);
INSERT INTO `sys_role_menu` VALUES (4, 2004);
INSERT INTO `sys_role_menu` VALUES (5, 2002);
INSERT INTO `sys_role_menu` VALUES (5, 2005);
INSERT INTO `sys_role_menu` VALUES (5, 2006);
INSERT INTO `sys_role_menu` VALUES (6, 2002);
INSERT INTO `sys_role_menu` VALUES (6, 2007);
INSERT INTO `sys_role_menu` VALUES (6, 2009);
INSERT INTO `sys_role_menu` VALUES (7, 2002);
INSERT INTO `sys_role_menu` VALUES (7, 2007);
INSERT INTO `sys_role_menu` VALUES (7, 2008);
INSERT INTO `sys_role_menu` VALUES (8, 2010);
INSERT INTO `sys_role_menu` VALUES (8, 2011);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '??????ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '????????????',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '00' COMMENT '???????????????00???????????????',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0??? 1??? 2?????????',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '??????',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0?????? 1?????????',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '???????????????0???????????? 2???????????????',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '????????????IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '??????', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/10/26/a4161ed9-53a4-442a-9e7a-1f6a0a75c20f.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '??????', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '?????????');
INSERT INTO `sys_user` VALUES (4, 116, 'lijie', '??????', '00', '2342342@qq.com', '18789898989', '0', '', '$2a$10$yXovlMCIjkbnaQGCzpi.GekbNTBpIRFv.93ZDv1mwjzZfcVgq2h4u', '0', '0', '', NULL, 'admin', '2020-11-05 11:25:10', 'admin', '2020-11-05 11:28:39', '???????????????');
INSERT INTO `sys_user` VALUES (5, 112, 'chenliang', '????????????', '00', '23423423@qq.com', '18786755678', '0', '', '$2a$10$IuBZ5zcubso6YOCxwjM0WeMPrOirrySTdavX6Lc8ZMWW0bGUuFvWO', '0', '0', '', NULL, 'admin', '2020-11-05 11:38:33', '', NULL, '????????????');
INSERT INTO `sys_user` VALUES (6, 112, 'lihong', '????????????', '00', '234263423@qq.com', '18745677654', '0', '', '$2a$10$FnmmN7pL2c2t03j6z.4s1.6n8bx40fWJI7psSbuYcjfyaKNYpZHsy', '0', '0', '', NULL, 'admin', '2020-11-05 11:49:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (7, 117, 'chenhong', '??????', '00', '234234237@qq.com', '18756786789', '0', '', '$2a$10$LtlYXuvaSs52AB8AuG.Ovu6/0VM8VZ/ixZDMkxyhqfxnLSa/SeuXW', '0', '2', '', NULL, 'admin', '2020-11-07 09:23:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (8, 118, 'staff1', '???????????????1', '00', '123123123@qq.com', '18785767989', '0', '', '$2a$10$5iZbjxfLR9JmuQR5DfI2t.ZRMKt0T0vH5beFO.fLsc/ymudYlK.x.', '0', '2', '', NULL, 'admin', '2020-11-08 13:32:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (9, 118, 'chenglong', '??????', '00', '454545@qq.com', '18787878787', '0', '', '$2a$10$Q5123oHpXTv3u6T2RS/aT.RCCkT.gqbL2iMyLxOiYadTBwUr/i6Iu', '0', '2', '', NULL, 'admin', '2020-11-09 14:24:26', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (10, 122, 'lixiang', '??????????????????????????????', '00', '13657756898@qq.com', '13657756898', '0', '', '$2a$10$J.4RZCn5EyHbSL5Uq2CKYePsbCn2v9IuX4KlFqWZO4G444R4AtMKC', '0', '0', '', NULL, 'admin', '2020-11-10 16:11:44', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (11, 124, 'huangzhengshu', '???????????????????????????', '00', '19889898989@qq.com', '19889898989', '0', '', '$2a$10$1m2mwjlq/ex90p/xOHFqSuxBtiBm8X4Imm5LQqtaFKJdcYD6AJhju', '0', '0', '', NULL, 'admin', '2020-11-10 16:20:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (12, 124, 'quanzhilong', '?????????', '00', '18212789090@qq.com', '18212789090', '0', '', '$2a$10$qsAM8q.wrIafFlfDGeMsjeysqOGMg2grrQhYN8758J1L7k9w5f5fC', '0', '0', '', NULL, 'admin', '2020-11-10 16:33:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (13, 124, 'wuyifan', '?????????', '00', '18786578989@qq.com', '18786578989', '0', '', '$2a$10$MHaPPNqGx9H/DHphrAvArejRmErJ2qdbWFY1.bWH0dsW/QpjAfaSm', '0', '0', '', NULL, 'admin', '2020-11-11 01:10:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (14, 126, 'liqing', '?????????????????????', '00', '15988776655@qq.com', '15988776655', '1', '', '$2a$10$5bit.TPyKJTeUUpMUBbPheQSyCSDwALXFzZO6vRB9kzQYwj3NQx1y', '0', '0', '', NULL, 'admin', '2020-11-11 01:58:19', 'admin', '2020-11-11 01:59:45', NULL);
INSERT INTO `sys_user` VALUES (15, 129, 'chenxianglong', '?????????', '00', '13900999900@qq.com', '15988990099', '0', '', '$2a$10$//3FbYAaC7mzWEjBKGaS6O6tjrHEGG8B084ef.D6e7X3nw5ufcXYO', '0', '0', '', NULL, 'admin', '2020-11-12 05:05:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (16, 128, 'liuxiaowei', '?????????', '00', '18786789900@qq.com', '18786789900', '0', '', '$2a$10$a31aStCWjkmzeh6r1efQOudH.GrMVF2LhLwJ5G0jNNl73jcOQ.au.', '0', '0', '', NULL, 'admin', '2020-11-12 05:11:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (17, 128, 'anming', '??????', '00', '18787878787@qq.com', '18787878780', '0', '', '$2a$10$KlKqkFdm6dM3l2O4PlA3xeCgfU3h8CEw1EE2ilH8Tqte0HsUYT6ze', '0', '0', '', NULL, 'admin', '2020-11-12 05:20:44', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (18, 128, 'chentao', '??????', '00', '15900889900@qq.com', '15900889900', '0', '', '$2a$10$VYR/tjUu/UHkSu9fGjvdLeVyN1iqbAFri9AtJshcdvrGvAWmnJYI2', '0', '0', '', NULL, 'admin', '2020-11-12 05:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (19, 128, 'hanjie', '??????', '00', '15899008899@qq.com', '15899008899', '0', '', '$2a$10$FWcUlM3.dKJqOGwIFGHnS.A5wqv3sxnNmPP3XVvcZbogEPsYgA.Pu', '0', '0', '', NULL, 'admin', '2020-11-12 05:24:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (20, 127, 'yanglei', '??????', '00', '15890905678@qq.com', '15890905678', '0', '', '$2a$10$BU/miCHhWU4m0qrWQehcO.TZeuMIln9eICiTwg29Ey2bl.snL.35e', '0', '0', '', NULL, 'admin', '2020-11-12 05:30:39', '', NULL, '123');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '??????ID',
  `post_id` bigint(0) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (3, 5);
INSERT INTO `sys_user_post` VALUES (4, 6);
INSERT INTO `sys_user_post` VALUES (5, 5);
INSERT INTO `sys_user_post` VALUES (6, 5);
INSERT INTO `sys_user_post` VALUES (7, 1);
INSERT INTO `sys_user_post` VALUES (8, 4);
INSERT INTO `sys_user_post` VALUES (9, 1);
INSERT INTO `sys_user_post` VALUES (10, 1);
INSERT INTO `sys_user_post` VALUES (11, 1);
INSERT INTO `sys_user_post` VALUES (12, 4);
INSERT INTO `sys_user_post` VALUES (13, 4);
INSERT INTO `sys_user_post` VALUES (14, 1);
INSERT INTO `sys_user_post` VALUES (15, 1);
INSERT INTO `sys_user_post` VALUES (16, 1);
INSERT INTO `sys_user_post` VALUES (17, 4);
INSERT INTO `sys_user_post` VALUES (18, 4);
INSERT INTO `sys_user_post` VALUES (19, 4);
INSERT INTO `sys_user_post` VALUES (20, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '??????ID',
  `role_id` bigint(0) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (4, 3);
INSERT INTO `sys_user_role` VALUES (5, 4);
INSERT INTO `sys_user_role` VALUES (6, 4);
INSERT INTO `sys_user_role` VALUES (7, 5);
INSERT INTO `sys_user_role` VALUES (8, 6);
INSERT INTO `sys_user_role` VALUES (9, 7);
INSERT INTO `sys_user_role` VALUES (10, 5);
INSERT INTO `sys_user_role` VALUES (11, 7);
INSERT INTO `sys_user_role` VALUES (12, 6);
INSERT INTO `sys_user_role` VALUES (13, 6);
INSERT INTO `sys_user_role` VALUES (14, 8);
INSERT INTO `sys_user_role` VALUES (15, 5);
INSERT INTO `sys_user_role` VALUES (16, 7);
INSERT INTO `sys_user_role` VALUES (17, 6);
INSERT INTO `sys_user_role` VALUES (18, 6);
INSERT INTO `sys_user_role` VALUES (19, 6);
INSERT INTO `sys_user_role` VALUES (20, 8);

-- ----------------------------
-- Table structure for trace_lng_lat
-- ----------------------------
DROP TABLE IF EXISTS `trace_lng_lat`;
CREATE TABLE `trace_lng_lat`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `lng` float NULL DEFAULT NULL,
  `lat` float NULL DEFAULT NULL,
  `crops_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trace_lng_lat
-- ----------------------------
INSERT INTO `trace_lng_lat` VALUES (91, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (92, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (93, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (94, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (95, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (96, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (97, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (98, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (99, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (100, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (101, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (102, 111.315, 23.4955, '6731960201710145536');
INSERT INTO `trace_lng_lat` VALUES (103, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (104, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (105, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (106, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (107, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (108, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (109, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (110, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (111, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (112, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (113, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (114, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (115, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (116, 111.315, 23.4955, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (117, 111.315, 23.4954, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (118, 111.315, 23.4954, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (119, 111.315, 23.4954, '6732516188095516672');
INSERT INTO `trace_lng_lat` VALUES (120, 111.315, 23.4954, '6732516188095516672');

-- ----------------------------
-- Table structure for trace_task
-- ----------------------------
DROP TABLE IF EXISTS `trace_task`;
CREATE TABLE `trace_task`  (
  `task_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crops_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `task_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `leader_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `leader_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '0????????? ??? 1?????????',
  `task_remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trace_task
-- ----------------------------
INSERT INTO `trace_task` VALUES ('6732521260510613504', '6732516188095516672', '????????????????????????', 'liuxiaowei', '?????????', '2020-11-12 13:15:52', 0, '????????????????????????????????????????????????????????????');

-- ----------------------------
-- Table structure for trace_transport
-- ----------------------------
DROP TABLE IF EXISTS `trace_transport`;
CREATE TABLE `trace_transport`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `crops_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '??????',
  `farmer_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `farmer_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `farmer_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `farmer_dept` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `factory_id` int(0) NULL DEFAULT NULL COMMENT '??????ID',
  `status` int(0) NULL DEFAULT NULL COMMENT '???????????????0???????????????1??????????????????2??????????????????',
  `out_factory_status` int(0) NULL DEFAULT NULL COMMENT '0????????? 1?????????',
  `retailer_receive_status` int(0) NULL DEFAULT NULL COMMENT '?????????????????????',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trace_transport
-- ----------------------------
INSERT INTO `trace_transport` VALUES (18, '6732516188095516672', 'chenliang', '2020-11-12 13:02:24', '??????', 'lijie', '18789898989', '??????????????????????????????', 129, 2, 1, NULL, '???????????????');
INSERT INTO `trace_transport` VALUES (19, '6732516188095516672', 'chenliang', '2020-11-12 13:06:17', '?????????', 'chenxianglong', '15988990099', '??????????????????', 128, 2, 0, NULL, '?????????????????????');
INSERT INTO `trace_transport` VALUES (20, '6732516188095516672', 'lihong', '2020-11-12 13:27:44', '?????????', 'liuxiaowei', '18786789900', '??????????????????', 127, 2, 0, 1, '????????????????????????');
INSERT INTO `trace_transport` VALUES (21, '6732516188095516672', 'lihong', '2020-11-12 19:14:14', '?????????', 'liuxiaowei', '18786789900', '??????????????????', 126, 2, 0, 1, '???');

-- ----------------------------
-- Table structure for trace_user_crops
-- ----------------------------
DROP TABLE IF EXISTS `trace_user_crops`;
CREATE TABLE `trace_user_crops`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crops_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crops_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '(0,????????????1????????????)',
  `maching_status` int(0) NULL DEFAULT NULL COMMENT '0 ????????? 1????????? 2????????????',
  `out_factory_status` int(0) NULL DEFAULT NULL COMMENT '0 ????????? 1?????????',
  `product_write_status` int(0) NULL DEFAULT NULL COMMENT '0 ????????? 1?????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trace_user_crops
-- ----------------------------
INSERT INTO `trace_user_crops` VALUES (20, 'lijie', '6732516188095516672', '????????????', 1, 2, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
