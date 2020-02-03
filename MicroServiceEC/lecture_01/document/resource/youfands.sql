/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : youfands

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-11-03 17:13:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of youfansd_user
-- ----------------------------
INSERT INTO `youfansd_user` VALUES ('14', 'xiaogao', '123456', 'E10ADC3949BA59ABBE56E057F20F883E', 'xiaogao', '15', '4534', '3434', '13232', '2323', '232323@qq.com', '1', '19760506');
