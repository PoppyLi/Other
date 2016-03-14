/*
Navicat MySQL Data Transfer

Source Server         : dl380
Source Server Version : 50076
Source Host           : 10.0.0.1:3336
Source Database       : TD_OA

Target Server Type    : MYSQL
Target Server Version : 50076
File Encoding         : 65001

Date: 2016-03-14 15:11:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pu_znkh`
-- ----------------------------
DROP TABLE IF EXISTS `pu_znkh`;
CREATE TABLE `pu_znkh` (
  `ZnKhId` int(3) NOT NULL auto_increment,
  `ZnKhName` varchar(20) NOT NULL,
  `state` int(1) NOT NULL default '1',
  PRIMARY KEY  (`ZnKhId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pu_znkh
-- ----------------------------
INSERT INTO `pu_znkh` VALUES ('1', '生产管理职能', '1');
INSERT INTO `pu_znkh` VALUES ('2', '环保管理职能', '1');
INSERT INTO `pu_znkh` VALUES ('3', '采购管理模块', '1');
INSERT INTO `pu_znkh` VALUES ('4', '销售管理模块', '1');
INSERT INTO `pu_znkh` VALUES ('5', '财务管理模块', '1');
INSERT INTO `pu_znkh` VALUES ('6', '项目建设管理模块', '1');
INSERT INTO `pu_znkh` VALUES ('7', '设备管理模块', '1');
INSERT INTO `pu_znkh` VALUES ('8', '总经理管理职责模块', '1');
INSERT INTO `pu_znkh` VALUES ('9', '副总经理管理职责模块', '1');
