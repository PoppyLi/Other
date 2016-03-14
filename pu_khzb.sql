/*
Navicat MySQL Data Transfer

Source Server         : dl380
Source Server Version : 50076
Source Host           : 10.0.0.1:3336
Source Database       : TD_OA

Target Server Type    : MYSQL
Target Server Version : 50076
File Encoding         : 65001

Date: 2016-03-14 15:10:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pu_khzb`
-- ----------------------------
DROP TABLE IF EXISTS `pu_khzb`;
CREATE TABLE `pu_khzb` (
  `ZnKhId` int(3) NOT NULL,
  `KhZbId` int(3) NOT NULL auto_increment,
  `KhZbName` varchar(100) NOT NULL,
  `state` int(1) NOT NULL default '1',
  PRIMARY KEY  (`KhZbId`),
  KEY `ZnKhId` (`ZnKhId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pu_khzb
-- ----------------------------
INSERT INTO `pu_khzb` VALUES ('1', '1', '产量', '1');
INSERT INTO `pu_khzb` VALUES ('1', '2', '质量', '1');
INSERT INTO `pu_khzb` VALUES ('1', '3', '油耗', '1');
INSERT INTO `pu_khzb` VALUES ('1', '4', '生产污染物排放指标', '1');
INSERT INTO `pu_khzb` VALUES ('2', '5', '废弃达标率', '1');
INSERT INTO `pu_khzb` VALUES ('2', '6', '环保台帐管理', '1');
INSERT INTO `pu_khzb` VALUES ('2', '7', '环保系统停运时间', '0');
INSERT INTO `pu_khzb` VALUES ('2', '8', '环保运行成本', '1');
INSERT INTO `pu_khzb` VALUES ('3', '9', '综合成本', '1');
INSERT INTO `pu_khzb` VALUES ('3', '10', '大宗原燃材料安全库存', '1');
INSERT INTO `pu_khzb` VALUES ('3', '11', '大宗原燃材料资金使用', '1');
INSERT INTO `pu_khzb` VALUES ('3', '12', '因质量问题造成公司经济损失的处理', '1');
INSERT INTO `pu_khzb` VALUES ('3', '13', '采购满意度', '1');
INSERT INTO `pu_khzb` VALUES ('4', '14', '销量达成率', '1');
INSERT INTO `pu_khzb` VALUES ('4', '15', '优化品种销量达成率', '1');
INSERT INTO `pu_khzb` VALUES ('4', '16', '售价', '1');
INSERT INTO `pu_khzb` VALUES ('4', '17', '货款回笼率', '1');
INSERT INTO `pu_khzb` VALUES ('4', '18', '现汇率', '1');
INSERT INTO `pu_khzb` VALUES ('5', '19', '财务报表编制和报送', '1');
INSERT INTO `pu_khzb` VALUES ('5', '20', '考核指标数据提供', '1');
INSERT INTO `pu_khzb` VALUES ('5', '21', '资金计划', '1');
INSERT INTO `pu_khzb` VALUES ('5', '22', '税务筹划', '1');
INSERT INTO `pu_khzb` VALUES ('5', '23', '外部关系维护', '1');
INSERT INTO `pu_khzb` VALUES ('6', '24', '项目进度', '1');
INSERT INTO `pu_khzb` VALUES ('6', '25', '项目质量', '1');
INSERT INTO `pu_khzb` VALUES ('6', '26', '施工记录及资料管理', '1');
INSERT INTO `pu_khzb` VALUES ('6', '27', '联系单管理', '0');
INSERT INTO `pu_khzb` VALUES ('6', '28', '签证管理', '0');
INSERT INTO `pu_khzb` VALUES ('6', '29', '隐蔽工程验收记录管理', '0');
INSERT INTO `pu_khzb` VALUES ('7', '30', '备用设备完好率（含环保设备）', '1');
INSERT INTO `pu_khzb` VALUES ('7', '31', '每条线在用设备故障直接影响生产时间（含环保设备）', '0');
INSERT INTO `pu_khzb` VALUES ('7', '32', '设备维护保养记录', '1');
INSERT INTO `pu_khzb` VALUES ('7', '33', '电耗', '1');
INSERT INTO `pu_khzb` VALUES ('8', '34', '销售毛利率提高率', '1');
INSERT INTO `pu_khzb` VALUES ('8', '35', '二项费用', '1');
INSERT INTO `pu_khzb` VALUES ('8', '36', '安全管理', '1');
INSERT INTO `pu_khzb` VALUES ('8', '37', '上级领导评分', '1');
INSERT INTO `pu_khzb` VALUES ('9', '38', '安全管理', '1');
INSERT INTO `pu_khzb` VALUES ('9', '39', '直接上级领导评分', '1');
INSERT INTO `pu_khzb` VALUES ('6', '40', '签证制度管理', '1');
