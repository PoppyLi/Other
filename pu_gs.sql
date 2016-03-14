/*
Navicat MySQL Data Transfer

Source Server         : dl380
Source Server Version : 50076
Source Host           : 10.0.0.1:3336
Source Database       : TD_OA

Target Server Type    : MYSQL
Target Server Version : 50076
File Encoding         : 65001

Date: 2016-03-14 15:10:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pu_gs`
-- ----------------------------
DROP TABLE IF EXISTS `pu_gs`;
CREATE TABLE `pu_gs` (
  `GSId` int(3) NOT NULL auto_increment,
  `GSName` varchar(20) NOT NULL,
  PRIMARY KEY  (`GSId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pu_gs
-- ----------------------------
INSERT INTO `pu_gs` VALUES ('1', '醴陵');
INSERT INTO `pu_gs` VALUES ('2', '漳玻');
INSERT INTO `pu_gs` VALUES ('3', '河源');
INSERT INTO `pu_gs` VALUES ('4', '长兴');
INSERT INTO `pu_gs` VALUES ('5', '绍兴');
INSERT INTO `pu_gs` VALUES ('6', '平湖');
