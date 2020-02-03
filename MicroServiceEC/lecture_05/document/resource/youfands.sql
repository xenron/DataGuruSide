/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : youfands

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-11-17 11:27:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('schedulerFactoryBean', '21e9d85b-0300-42be-88da-2781c72a9402', 'com.youfan.timer.OrderTimer', '* 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('schedulerFactoryBean', '33ab44ec-cc62-45b4-ac2f-98158c60b6e1', 'com.youfan.timer.OrderTimer', '*/5 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
INSERT INTO `qrtz_fired_triggers` VALUES ('schedulerFactoryBean', 'USER-20190803HN15733774767981573377476751', '33ab44ec-cc62-45b4-ac2f-98158c60b6e1', 'com.youfan.timer.OrderTimer', 'USER-20190803HN1573377476798', '1573377490047', '1573377495000', '5', 'ACQUIRED', null, null, '0', '0');

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('schedulerFactoryBean', '21e9d85b-0300-42be-88da-2781c72a9402', 'com.youfan.timer.OrderTimer', null, 'com.youfan.timer.OrderTimer', '0', '0', '0', '0', 0x230D0A2353756E204E6F762031302031363A33383A32302043535420323031390D0A);
INSERT INTO `qrtz_job_details` VALUES ('schedulerFactoryBean', '33ab44ec-cc62-45b4-ac2f-98158c60b6e1', 'com.youfan.timer.OrderTimer', null, 'com.youfan.timer.OrderTimer', '0', '0', '0', '0', 0x230D0A2353756E204E6F762031302031363A33393A35322043535420323031390D0A);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('schedulerFactoryBean', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('schedulerFactoryBean', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('schedulerFactoryBean', 'USER-20190803HN1573377476798', '1573377490684', '10000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('schedulerFactoryBean', '21e9d85b-0300-42be-88da-2781c72a9402', 'com.youfan.timer.OrderTimer', '21e9d85b-0300-42be-88da-2781c72a9402', 'com.youfan.timer.OrderTimer', null, '1573378200000', '1573376459000', '5', 'WAITING', 'CRON', '1573375099000', '0', null, '0', '');
INSERT INTO `qrtz_triggers` VALUES ('schedulerFactoryBean', '33ab44ec-cc62-45b4-ac2f-98158c60b6e1', 'com.youfan.timer.OrderTimer', '33ab44ec-cc62-45b4-ac2f-98158c60b6e1', 'com.youfan.timer.OrderTimer', null, '1573377495000', '1573377490000', '5', 'ACQUIRED', 'CRON', '1573375192000', '0', null, '0', '');

-- ----------------------------
-- Table structure for `quartz_entity`
-- ----------------------------
DROP TABLE IF EXISTS `quartz_entity`;
CREATE TABLE `quartz_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `job_class_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `job_group` varchar(20) COLLATE utf8_bin NOT NULL,
  `job_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `old_job_group` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `old_job_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `trigger_group` varchar(50) COLLATE utf8_bin NOT NULL,
  `trigger_name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of quartz_entity
-- ----------------------------

-- ----------------------------
-- Table structure for `youfads_product`
-- ----------------------------
DROP TABLE IF EXISTS `youfads_product`;
CREATE TABLE `youfads_product` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `producttypeid` int(20) DEFAULT NULL COMMENT '商品类别id',
  `producttitle` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标题',
  `productprice` double(20,2) DEFAULT NULL COMMENT '商品价格',
  `mechartid` int(20) DEFAULT NULL COMMENT '商家id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `audittime` datetime DEFAULT NULL COMMENT '审核时间',
  `auditstate` int(2) DEFAULT NULL COMMENT '审核转态',
  `stocknum` int(20) DEFAULT NULL COMMENT '库存',
  `sellnum` int(20) DEFAULT NULL COMMENT '销售数量',
  `productpicurl` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片地址',
  `proudctstatus` int(2) DEFAULT NULL COMMENT '0未上架 1,代表上架，2代表下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfads_product
-- ----------------------------
INSERT INTO `youfads_product` VALUES ('1', '1', '华为笔记本', '3200.00', '1', '2019-11-10 10:11:21', null, '1', '45', null, 'https://img13.360buyimg.com/n7/jfs/t1/77691/1/14792/488406/5dc3f358E77367834/dd8a6f476e1db7a8.jpg', '1');
INSERT INTO `youfads_product` VALUES ('2', '1', '联想台式机', '3400.00', '1', '2019-11-11 10:11:21', null, '1', '60', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '1');
INSERT INTO `youfads_product` VALUES ('34', '4', '好吃的猪肉', '5.50', '1', '2019-11-10 10:11:21', null, '1', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '1');
INSERT INTO `youfads_product` VALUES ('35', '4', '好看的衬衫', '45.00', '1', '2019-11-16 21:45:43', null, '0', '45', null, 'https://img13.360buyimg.com/n7/jfs/t1/77691/1/14792/488406/5dc3f358E77367834/dd8a6f476e1db7a8.jpg', '0');
INSERT INTO `youfads_product` VALUES ('36', '4', '好看的衬衫测试2', '45.00', '1', '2019-11-16 21:54:05', null, '0', '45', null, 'https://img13.360buyimg.com/n7/jfs/t1/77691/1/14792/488406/5dc3f358E77367834/dd8a6f476e1db7a8.jpg', '0');
INSERT INTO `youfads_product` VALUES ('37', '4', '好看的衬衫测试2', '45.00', '1', '2019-11-16 21:54:13', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');
INSERT INTO `youfads_product` VALUES ('38', '4', '好看的皮鞋', '45.00', '1', '2019-11-17 10:53:42', null, '0', '45', null, 'www.youfan.com/zhurou', '0');
INSERT INTO `youfads_product` VALUES ('39', '4', '好看的连衣裙', '45.00', '1', '2019-11-17 10:55:19', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');
INSERT INTO `youfads_product` VALUES ('40', '4', '好看的袜子', '45.00', '1', '2019-11-17 11:04:00', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');
INSERT INTO `youfads_product` VALUES ('41', '4', '好看的袜子', '45.00', '1', '2019-11-17 11:04:59', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');
INSERT INTO `youfads_product` VALUES ('42', '4', '好看的裙子', '45.00', '1', '2019-11-17 11:07:27', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');
INSERT INTO `youfads_product` VALUES ('43', '4', '好看的茶杯', '5.50', '1', '2019-11-17 11:10:21', null, '0', '45', null, 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg', '0');

-- ----------------------------
-- Table structure for `youfands_merchant`
-- ----------------------------
DROP TABLE IF EXISTS `youfands_merchant`;
CREATE TABLE `youfands_merchant` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `merchantname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `merchantaccount` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mechantpassword` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mechantscope` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `auditstatus` int(2) DEFAULT NULL COMMENT '1提交成功，2审核通过，3审核不通过',
  `soldout` int(2) DEFAULT NULL COMMENT '1,正常，2,下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfands_merchant
-- ----------------------------
INSERT INTO `youfands_merchant` VALUES ('1', '小王', 'xiaowang', '123456', null, '2', '2');
INSERT INTO `youfands_merchant` VALUES ('2', '小白', 'xiaobai', '123456', null, '2', '2');

-- ----------------------------
-- Table structure for `youfands_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `youfands_orderdetail`;
CREATE TABLE `youfands_orderdetail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `orderid` int(20) DEFAULT NULL COMMENT '订单id',
  `productid` int(20) DEFAULT NULL COMMENT '商品id',
  `merchantid` int(20) DEFAULT NULL COMMENT '商家id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `tradenum` int(20) DEFAULT NULL COMMENT '交易数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfands_orderdetail
-- ----------------------------
INSERT INTO `youfands_orderdetail` VALUES ('16', '0', '28', '5', '2019-11-10 12:33:20', '7');

-- ----------------------------
-- Table structure for `youfands_ordermain`
-- ----------------------------
DROP TABLE IF EXISTS `youfands_ordermain`;
CREATE TABLE `youfands_ordermain` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `payamount` decimal(20,2) DEFAULT NULL COMMENT '支付金额',
  `userid` int(20) DEFAULT NULL COMMENT '用户id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `paystatus` int(2) DEFAULT NULL COMMENT '支付状态,1未支付 2已支付 3已退款',
  `consigneeadress` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人地址',
  `consigneephone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人电话',
  `consigneename` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人姓名',
  `tradenumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '交易流水号',
  `paytype` int(2) DEFAULT NULL COMMENT '支付类型 1微信支付 2支付宝支付 3银联支付',
  `orderstatus` int(2) DEFAULT NULL COMMENT '订单状态  1、正常 2失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfands_ordermain
-- ----------------------------
INSERT INTO `youfands_ordermain` VALUES ('28', '45.00', '2', '2019-11-10 12:33:20', null, '1', '北京', '1345454545', '友凡', null, null, '2');

-- ----------------------------
-- Table structure for `youfands_productdetail`
-- ----------------------------
DROP TABLE IF EXISTS `youfands_productdetail`;
CREATE TABLE `youfands_productdetail` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productid` int(20) DEFAULT NULL COMMENT '商品id',
  `productplace` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品产地',
  `productdescription` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品详情描述',
  `productbrand` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品品牌',
  `productweight` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品重量',
  `productspecification` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '商品规格说明和包装',
  `productdetaipicurl` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '商品详情图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfands_productdetail
-- ----------------------------
INSERT INTO `youfands_productdetail` VALUES ('14', '34', '北京', '', '绿源', '5kg', '测试', 'www.youfan.detail.com/zhurou');
INSERT INTO `youfands_productdetail` VALUES ('15', '35', '北京', '衬衫大减价', 'ceshi', '5kg', '测试', 'www.youfan.detail.com/zhurou');
INSERT INTO `youfands_productdetail` VALUES ('16', '36', '北京', '衬衫大减价', 'ceshi', '5kg', '测试', 'www.youfan.detail.com/zhurou');
INSERT INTO `youfands_productdetail` VALUES ('17', '37', '北京', '衬衫大减价', 'ceshi', '5kg', '测试', 'www.youfan.detail.com/zhurou');
INSERT INTO `youfands_productdetail` VALUES ('18', '38', '北京', '皮鞋大减价', 'ceshi', '5kg', '皮鞋', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');
INSERT INTO `youfands_productdetail` VALUES ('19', '39', '北京', '连衣裙大减价', '绿源', '5kg', '测试', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');
INSERT INTO `youfands_productdetail` VALUES ('20', '40', '北京', '袜子大减价', '绿源', '5kg', '测试', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');
INSERT INTO `youfands_productdetail` VALUES ('21', '41', '北京', '袜子大减价', '绿源', '5kg', '测试', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');
INSERT INTO `youfands_productdetail` VALUES ('22', '42', '北京', '裙子大减价', '绿源', '5kg', '测试', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');
INSERT INTO `youfands_productdetail` VALUES ('23', '43', '北京', '茶杯大减价', '绿源', '5kg', '测试', 'https://img11.360buyimg.com/n7/jfs/t1/80891/18/1755/133122/5d0226b2E18eaa00a/bc46e3c8cd4341e3.jpg');

-- ----------------------------
-- Table structure for `youfands_producttype`
-- ----------------------------
DROP TABLE IF EXISTS `youfands_producttype`;
CREATE TABLE `youfands_producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producttypename` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `producttypedescription` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `typegrade` int(11) DEFAULT NULL COMMENT '等级比如1,2,3 1是最大的分类',
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of youfands_producttype
-- ----------------------------
INSERT INTO `youfands_producttype` VALUES ('1', '电脑', '电脑', '1', '-1');
INSERT INTO `youfands_producttype` VALUES ('2', '家居', '家居', '1', '-1');
INSERT INTO `youfands_producttype` VALUES ('3', '食品', '食品', '1', '-1');
INSERT INTO `youfands_producttype` VALUES ('4', '男装', '男装', '1', '-1');
INSERT INTO `youfands_producttype` VALUES ('5', '女装', '女装', '1', '-1');
INSERT INTO `youfands_producttype` VALUES ('6', '笔记本', '笔记本', '2', '1');
INSERT INTO `youfands_producttype` VALUES ('7', '台式机', '台式机', '2', '1');
INSERT INTO `youfands_producttype` VALUES ('8', '灯具', '灯具', '2', '2');
INSERT INTO `youfands_producttype` VALUES ('9', '生活日用', '生活日用', '2', '2');
INSERT INTO `youfands_producttype` VALUES ('10', '衬衫', '衬衫', '2', '4');
INSERT INTO `youfands_producttype` VALUES ('11', 'T恤', 'T恤', '2', '4');
INSERT INTO `youfands_producttype` VALUES ('12', '连衣裙', '连衣裙', '2', '5');
INSERT INTO `youfands_producttype` VALUES ('13', '打底裤', '打底裤', '2', '5');
INSERT INTO `youfands_producttype` VALUES ('14', '猪肉', '猪肉', '2', '3');
INSERT INTO `youfands_producttype` VALUES ('15', '羊肉', '羊肉', '2', '3');

-- ----------------------------
-- Table structure for `youfansd_user`
-- ----------------------------
DROP TABLE IF EXISTS `youfansd_user`;
CREATE TABLE `youfansd_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  `passwordplaintext` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `passwordencrypt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `telphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `weixin` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '1,代表男，2，代表女',
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of youfansd_user
-- ----------------------------
INSERT INTO `youfansd_user` VALUES ('14', 'xiaogao', '123456', 'E10ADC3949BA59ABBE56E057F20F883E', 'xiaogao', '15', '4534', '3434', '13232', '2323', '232323@qq.com', '1', '19760506');
INSERT INTO `youfansd_user` VALUES ('15', 'xiaobai', '1234567', 'FCEA920F7412B5DA7BE0CF42B8C93759', '小白', '57', '上海', '15737465787', '123456789', '12345678', '1234567@qq.com', '2', '19880504');
INSERT INTO `youfansd_user` VALUES ('24', 'xiaohong', '123456', 'E10ADC3949BA59ABBE56E057F20F883E', '小红', '0', '上海', '15637465787', '123456', '12345678', '123456@qq.com', null, null);
