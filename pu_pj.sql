/*
Navicat MySQL Data Transfer

Source Server         : dl380
Source Server Version : 50076
Source Host           : 10.0.0.1:3336
Source Database       : TD_OA

Target Server Type    : MYSQL
Target Server Version : 50076
File Encoding         : 65001

Date: 2016-03-14 15:10:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pu_pj`
-- ----------------------------
DROP TABLE IF EXISTS `pu_pj`;
CREATE TABLE `pu_pj` (
  `PJId` int(10) NOT NULL auto_increment,
  `Time` datetime NOT NULL,
  `GSId` int(5) NOT NULL,
  `ZnKhId` int(5) NOT NULL,
  `KhZbId` int(5) NOT NULL,
  `SjJg` varchar(100) NOT NULL,
  `Pjf` float(5,2) NOT NULL,
  PRIMARY KEY  (`PJId`),
  KEY `GSId` (`GSId`),
  KEY `KhZbId` (`KhZbId`),
  KEY `ZnKhId` (`ZnKhId`)
) ENGINE=MyISAM AUTO_INCREMENT=2676 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pu_pj
-- ----------------------------
INSERT INTO `pu_pj` VALUES ('2670', '2016-02-01 00:00:00', '1', '8', '34', '实际133.75万元，减少31.61%', '15.00');
INSERT INTO `pu_pj` VALUES ('2669', '2016-02-01 00:00:00', '1', '7', '33', '实际29.43%，增加8.32%', '12.48');
INSERT INTO `pu_pj` VALUES ('2667', '2016-02-01 00:00:00', '1', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2668', '2016-02-01 00:00:00', '1', '7', '32', '实际6.55度/wb，减少0.25度/wb', '2.50');
INSERT INTO `pu_pj` VALUES ('2665', '2016-02-01 00:00:00', '1', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2666', '2016-02-01 00:00:00', '1', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2663', '2016-02-01 00:00:00', '1', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2664', '2016-02-01 00:00:00', '1', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2662', '2016-02-01 00:00:00', '1', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2661', '2016-02-01 00:00:00', '1', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2659', '2016-02-01 00:00:00', '1', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2660', '2016-02-01 00:00:00', '1', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2657', '2016-02-01 00:00:00', '1', '4', '18', '实际66.32%，增加26.32%', '0.00');
INSERT INTO `pu_pj` VALUES ('2658', '2016-02-01 00:00:00', '1', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2656', '2016-02-01 00:00:00', '1', '4', '17', '实际114.86%，增加14.86%', '7.50');
INSERT INTO `pu_pj` VALUES ('2655', '2016-02-01 00:00:00', '1', '4', '16', '实际60.71元/wb，增加0.63元/wb', '1.26');
INSERT INTO `pu_pj` VALUES ('2654', '2016-02-01 00:00:00', '1', '4', '15', '实际29477.34重箱，减少50.87%', '-15.00');
INSERT INTO `pu_pj` VALUES ('2652', '2016-02-01 00:00:00', '1', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2653', '2016-02-01 00:00:00', '1', '4', '14', '实际702674.87重箱，减少18.29%', '-27.44');
INSERT INTO `pu_pj` VALUES ('2651', '2016-02-01 00:00:00', '1', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2650', '2016-02-01 00:00:00', '1', '3', '11', '石油焦62.44，纯碱124.46，硅砂49.34，白云石79', '15.00');
INSERT INTO `pu_pj` VALUES ('1941', '2016-03-01 00:00:00', '1', '1', '1', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1942', '2016-03-01 00:00:00', '1', '1', '2', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1943', '2016-03-01 00:00:00', '1', '1', '3', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1944', '2016-03-01 00:00:00', '1', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1945', '2016-03-01 00:00:00', '1', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1946', '2016-03-01 00:00:00', '1', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1947', '2016-03-01 00:00:00', '1', '2', '8', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1948', '2016-03-01 00:00:00', '1', '3', '9', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1949', '2016-03-01 00:00:00', '1', '3', '10', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1950', '2016-03-01 00:00:00', '1', '3', '11', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1951', '2016-03-01 00:00:00', '1', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1952', '2016-03-01 00:00:00', '1', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1953', '2016-03-01 00:00:00', '1', '4', '14', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1954', '2016-03-01 00:00:00', '1', '4', '15', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1955', '2016-03-01 00:00:00', '1', '4', '16', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1956', '2016-03-01 00:00:00', '1', '4', '17', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1957', '2016-03-01 00:00:00', '1', '4', '18', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1958', '2016-03-01 00:00:00', '1', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1959', '2016-03-01 00:00:00', '1', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1960', '2016-03-01 00:00:00', '1', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1961', '2016-03-01 00:00:00', '1', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1962', '2016-03-01 00:00:00', '1', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1963', '2016-03-01 00:00:00', '1', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1964', '2016-03-01 00:00:00', '1', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1965', '2016-03-01 00:00:00', '1', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1966', '2016-03-01 00:00:00', '1', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1967', '2016-03-01 00:00:00', '1', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1968', '2016-03-01 00:00:00', '1', '7', '32', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1969', '2016-03-01 00:00:00', '1', '7', '33', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1970', '2016-03-01 00:00:00', '1', '8', '34', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1971', '2016-03-01 00:00:00', '1', '8', '35', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1972', '2016-03-01 00:00:00', '1', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1973', '2016-03-01 00:00:00', '1', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1974', '2016-03-01 00:00:00', '1', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('1975', '2016-03-01 00:00:00', '1', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2388', '2016-02-01 00:00:00', '6', '7', '32', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2387', '2016-02-01 00:00:00', '6', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2386', '2016-02-01 00:00:00', '6', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2385', '2016-02-01 00:00:00', '6', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2384', '2016-02-01 00:00:00', '6', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2383', '2016-02-01 00:00:00', '6', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2382', '2016-02-01 00:00:00', '6', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2381', '2016-02-01 00:00:00', '6', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2380', '2016-02-01 00:00:00', '6', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2379', '2016-02-01 00:00:00', '6', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2378', '2016-02-01 00:00:00', '6', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2377', '2016-02-01 00:00:00', '6', '4', '18', '实际值25.98', '0.00');
INSERT INTO `pu_pj` VALUES ('2376', '2016-02-01 00:00:00', '6', '4', '17', '实际104.82%，增加4.82%', '7.23');
INSERT INTO `pu_pj` VALUES ('2375', '2016-02-01 00:00:00', '6', '4', '16', '实际61.60元/wb，增加1.62元/wb ', '3.25');
INSERT INTO `pu_pj` VALUES ('2374', '2016-02-01 00:00:00', '6', '4', '15', '实际3400wb，减少84%', '-15.00');
INSERT INTO `pu_pj` VALUES ('2373', '2016-02-01 00:00:00', '6', '4', '14', '实际513100wb，增加21.88%', '30.00');
INSERT INTO `pu_pj` VALUES ('2372', '2016-02-01 00:00:00', '6', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2371', '2016-02-01 00:00:00', '6', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2370', '2016-02-01 00:00:00', '6', '3', '11', '石油焦134.99,纯碱76.44，硅砂18.34，白云石95.62', '15.00');
INSERT INTO `pu_pj` VALUES ('2369', '2016-02-01 00:00:00', '6', '3', '10', '石油焦39.37,纯碱28.91，硅砂25.11，白云石33.74', '-2.99');
INSERT INTO `pu_pj` VALUES ('2368', '2016-02-01 00:00:00', '6', '3', '9', '实际34.68元/wb，减少15.37%', '7.69');
INSERT INTO `pu_pj` VALUES ('2367', '2016-02-01 00:00:00', '6', '2', '8', '实际1.2元/wb，减少33%', '20.00');
INSERT INTO `pu_pj` VALUES ('2366', '2016-02-01 00:00:00', '6', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2365', '2016-02-01 00:00:00', '6', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2364', '2016-02-01 00:00:00', '6', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2363', '2016-02-01 00:00:00', '6', '1', '3', '实际7.29kg/wb，减少0.27kg/wb', '4.11');
INSERT INTO `pu_pj` VALUES ('2532', '2016-02-01 00:00:00', '3', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2533', '2016-02-01 00:00:00', '3', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2531', '2016-02-01 00:00:00', '3', '8', '35', '实际288.99万，增加75.35%', '-15.00');
INSERT INTO `pu_pj` VALUES ('2530', '2016-02-01 00:00:00', '3', '8', '34', '实际26.61%，增加5.68%', '8.51');
INSERT INTO `pu_pj` VALUES ('2529', '2016-02-01 00:00:00', '3', '7', '33', '实际6.31度/wb，减少0.39度/wb', '3.90');
INSERT INTO `pu_pj` VALUES ('2528', '2016-02-01 00:00:00', '3', '7', '32', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2527', '2016-02-01 00:00:00', '3', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2526', '2016-02-01 00:00:00', '3', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2525', '2016-02-01 00:00:00', '3', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2524', '2016-02-01 00:00:00', '3', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2522', '2016-02-01 00:00:00', '3', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2523', '2016-02-01 00:00:00', '3', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2520', '2016-02-01 00:00:00', '3', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2521', '2016-02-01 00:00:00', '3', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2518', '2016-02-01 00:00:00', '3', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2519', '2016-02-01 00:00:00', '3', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2516', '2016-02-01 00:00:00', '3', '4', '17', '实际109.03，增加9.03%', '13.54');
INSERT INTO `pu_pj` VALUES ('2517', '2016-02-01 00:00:00', '3', '4', '18', '实际94.05%，增加44.05%', '0.00');
INSERT INTO `pu_pj` VALUES ('2514', '2016-02-01 00:00:00', '3', '4', '15', '0', '0.00');
INSERT INTO `pu_pj` VALUES ('2603', '2016-02-01 00:00:00', '2', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2602', '2016-02-01 00:00:00', '2', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2601', '2016-02-01 00:00:00', '2', '8', '35', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2599', '2016-02-01 00:00:00', '2', '7', '33', '实际300.91万元，减少11.35%', '15.00');
INSERT INTO `pu_pj` VALUES ('2600', '2016-02-01 00:00:00', '2', '8', '34', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2597', '2016-02-01 00:00:00', '2', '7', '30', '实际7.37度/wb，增加0.57度/wb', '-5.70');
INSERT INTO `pu_pj` VALUES ('2598', '2016-02-01 00:00:00', '2', '7', '32', '实际32.14%，增加0.15%', '0.23');
INSERT INTO `pu_pj` VALUES ('2596', '2016-02-01 00:00:00', '2', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2595', '2016-02-01 00:00:00', '2', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2594', '2016-02-01 00:00:00', '2', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2593', '2016-02-01 00:00:00', '2', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2592', '2016-02-01 00:00:00', '2', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2591', '2016-02-01 00:00:00', '2', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2590', '2016-02-01 00:00:00', '2', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2116', '2016-02-01 00:00:00', '4', '1', '1', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2117', '2016-02-01 00:00:00', '4', '1', '2', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2118', '2016-02-01 00:00:00', '4', '1', '3', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2119', '2016-02-01 00:00:00', '4', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2120', '2016-02-01 00:00:00', '4', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2121', '2016-02-01 00:00:00', '4', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2122', '2016-02-01 00:00:00', '4', '2', '8', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2123', '2016-02-01 00:00:00', '4', '3', '9', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2124', '2016-02-01 00:00:00', '4', '3', '10', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2125', '2016-02-01 00:00:00', '4', '3', '11', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2126', '2016-02-01 00:00:00', '4', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2127', '2016-02-01 00:00:00', '4', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2128', '2016-02-01 00:00:00', '4', '4', '14', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2129', '2016-02-01 00:00:00', '4', '4', '15', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2130', '2016-02-01 00:00:00', '4', '4', '16', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2131', '2016-02-01 00:00:00', '4', '4', '17', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2132', '2016-02-01 00:00:00', '4', '4', '18', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2133', '2016-02-01 00:00:00', '4', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2134', '2016-02-01 00:00:00', '4', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2135', '2016-02-01 00:00:00', '4', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2136', '2016-02-01 00:00:00', '4', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2137', '2016-02-01 00:00:00', '4', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2138', '2016-02-01 00:00:00', '4', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2139', '2016-02-01 00:00:00', '4', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2140', '2016-02-01 00:00:00', '4', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2141', '2016-02-01 00:00:00', '4', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2142', '2016-02-01 00:00:00', '4', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2143', '2016-02-01 00:00:00', '4', '7', '32', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2144', '2016-02-01 00:00:00', '4', '7', '33', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2145', '2016-02-01 00:00:00', '4', '8', '34', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2146', '2016-02-01 00:00:00', '4', '8', '35', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2147', '2016-02-01 00:00:00', '4', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2148', '2016-02-01 00:00:00', '4', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2149', '2016-02-01 00:00:00', '4', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2150', '2016-02-01 00:00:00', '4', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2151', '2016-02-01 00:00:00', '5', '1', '1', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2152', '2016-02-01 00:00:00', '5', '1', '2', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2153', '2016-02-01 00:00:00', '5', '1', '3', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2154', '2016-02-01 00:00:00', '5', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2155', '2016-02-01 00:00:00', '5', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2156', '2016-02-01 00:00:00', '5', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2157', '2016-02-01 00:00:00', '5', '2', '8', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2158', '2016-02-01 00:00:00', '5', '3', '9', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2159', '2016-02-01 00:00:00', '5', '3', '10', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2160', '2016-02-01 00:00:00', '5', '3', '11', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2161', '2016-02-01 00:00:00', '5', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2162', '2016-02-01 00:00:00', '5', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2163', '2016-02-01 00:00:00', '5', '4', '14', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2164', '2016-02-01 00:00:00', '5', '4', '15', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2165', '2016-02-01 00:00:00', '5', '4', '16', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2166', '2016-02-01 00:00:00', '5', '4', '17', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2167', '2016-02-01 00:00:00', '5', '4', '18', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2168', '2016-02-01 00:00:00', '5', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2169', '2016-02-01 00:00:00', '5', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2170', '2016-02-01 00:00:00', '5', '5', '21', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2171', '2016-02-01 00:00:00', '5', '5', '22', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2172', '2016-02-01 00:00:00', '5', '5', '23', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2173', '2016-02-01 00:00:00', '5', '6', '24', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2174', '2016-02-01 00:00:00', '5', '6', '25', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2175', '2016-02-01 00:00:00', '5', '6', '26', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2176', '2016-02-01 00:00:00', '5', '6', '40', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2177', '2016-02-01 00:00:00', '5', '7', '30', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2178', '2016-02-01 00:00:00', '5', '7', '32', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2179', '2016-02-01 00:00:00', '5', '7', '33', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2180', '2016-02-01 00:00:00', '5', '8', '34', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2181', '2016-02-01 00:00:00', '5', '8', '35', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2182', '2016-02-01 00:00:00', '5', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2183', '2016-02-01 00:00:00', '5', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2184', '2016-02-01 00:00:00', '5', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2185', '2016-02-01 00:00:00', '5', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2589', '2016-02-01 00:00:00', '2', '5', '20', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2588', '2016-02-01 00:00:00', '2', '5', '19', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2587', '2016-02-01 00:00:00', '2', '4', '18', '实际71.17%，增加21.17%', '0.00');
INSERT INTO `pu_pj` VALUES ('2586', '2016-02-01 00:00:00', '2', '4', '17', '实际106.2元/wb，增加6.2元/wb', '7.50');
INSERT INTO `pu_pj` VALUES ('2585', '2016-02-01 00:00:00', '2', '4', '16', '实际59.78元/wb，减少4.37元/wb', '-8.74');
INSERT INTO `pu_pj` VALUES ('2584', '2016-02-01 00:00:00', '2', '4', '15', '实际215576.06wb，增加7.79%', '7.79');
INSERT INTO `pu_pj` VALUES ('2583', '2016-02-01 00:00:00', '2', '4', '14', '实际1524641.85wb，增加10.48%', '15.72');
INSERT INTO `pu_pj` VALUES ('2582', '2016-02-01 00:00:00', '2', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2581', '2016-02-01 00:00:00', '2', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2579', '2016-02-01 00:00:00', '2', '3', '10', '石油焦75.59，纯碱16.97，白云石86.51', '-6.52');
INSERT INTO `pu_pj` VALUES ('2362', '2016-02-01 00:00:00', '6', '1', '2', '实际88.44%，增加3.44%', '6.98');
INSERT INTO `pu_pj` VALUES ('2361', '2016-02-01 00:00:00', '6', '1', '1', '实际值763566.98重箱，增加3.33%', '9.98');
INSERT INTO `pu_pj` VALUES ('2389', '2016-02-01 00:00:00', '6', '7', '33', '实际值5.98度/wb，减少0.82度/wb', '8.20');
INSERT INTO `pu_pj` VALUES ('2390', '2016-02-01 00:00:00', '6', '8', '34', '实际34.06%，增加14.34%', '15.00');
INSERT INTO `pu_pj` VALUES ('2391', '2016-02-01 00:00:00', '6', '8', '35', '实际86.71万，减少15.87%', '15.00');
INSERT INTO `pu_pj` VALUES ('2392', '2016-02-01 00:00:00', '6', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2393', '2016-02-01 00:00:00', '6', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2394', '2016-02-01 00:00:00', '6', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2395', '2016-02-01 00:00:00', '6', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2580', '2016-02-01 00:00:00', '2', '3', '11', '石油焦102.66，纯碱33.48，白云石91.98', '15.00');
INSERT INTO `pu_pj` VALUES ('2578', '2016-02-01 00:00:00', '2', '3', '9', '实际35.9元/wb，减少6.31%', '3.15');
INSERT INTO `pu_pj` VALUES ('2577', '2016-02-01 00:00:00', '2', '2', '8', '实际1.63元/wb，减少11.06%', '11.06');
INSERT INTO `pu_pj` VALUES ('2576', '2016-02-01 00:00:00', '2', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2574', '2016-02-01 00:00:00', '2', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2575', '2016-02-01 00:00:00', '2', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2573', '2016-02-01 00:00:00', '2', '1', '3', '实际7.98kg/wb，减少0.04kg/wb', '0.60');
INSERT INTO `pu_pj` VALUES ('2572', '2016-02-01 00:00:00', '2', '1', '2', '实际91.35%，增加6.04%', '12.08');
INSERT INTO `pu_pj` VALUES ('2515', '2016-02-01 00:00:00', '3', '4', '16', '实际57.81元/wb，减少4.19元/wb', '-8.38');
INSERT INTO `pu_pj` VALUES ('2511', '2016-02-01 00:00:00', '3', '3', '12', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2512', '2016-02-01 00:00:00', '3', '3', '13', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2513', '2016-02-01 00:00:00', '3', '4', '14', '实际367603.18重箱，增加5.03%', '7.54');
INSERT INTO `pu_pj` VALUES ('2510', '2016-02-01 00:00:00', '3', '3', '11', '石油焦152.12,纯碱18.7，硅砂45.91，白云石39.88', '15.00');
INSERT INTO `pu_pj` VALUES ('2509', '2016-02-01 00:00:00', '3', '3', '10', '石油焦48.35,纯碱19.79，硅砂3.87，白云石63.22', '-15.58');
INSERT INTO `pu_pj` VALUES ('2507', '2016-02-01 00:00:00', '3', '2', '8', '实际0.97元/wb，减少49.15%', '20.00');
INSERT INTO `pu_pj` VALUES ('2508', '2016-02-01 00:00:00', '3', '3', '9', '实际36.56元/wb，减少12.74%', '6.37');
INSERT INTO `pu_pj` VALUES ('2505', '2016-02-01 00:00:00', '3', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2506', '2016-02-01 00:00:00', '3', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2504', '2016-02-01 00:00:00', '3', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2503', '2016-02-01 00:00:00', '3', '1', '3', '实际7.39kg/wb，减少0.34kg/wb', '5.09');
INSERT INTO `pu_pj` VALUES ('2502', '2016-02-01 00:00:00', '3', '1', '2', '实际87.75%，增加2.75%', '5.50');
INSERT INTO `pu_pj` VALUES ('2501', '2016-02-01 00:00:00', '3', '1', '1', '实际895284.45重箱，增加2.69%', '8.07');
INSERT INTO `pu_pj` VALUES ('2534', '2016-02-01 00:00:00', '3', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2535', '2016-02-01 00:00:00', '3', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2571', '2016-02-01 00:00:00', '2', '1', '1', '实际产量3210950.85重箱，增加2.77%', '8.31');
INSERT INTO `pu_pj` VALUES ('2604', '2016-02-01 00:00:00', '2', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2605', '2016-02-01 00:00:00', '2', '9', '39', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2649', '2016-02-01 00:00:00', '1', '3', '10', '石油焦,30.63，纯碱60.59，硅砂73.37，白云石61.29', '0.00');
INSERT INTO `pu_pj` VALUES ('2648', '2016-02-01 00:00:00', '1', '3', '9', '实际36.5元/wb，减少9.23%', '4.61');
INSERT INTO `pu_pj` VALUES ('2647', '2016-02-01 00:00:00', '1', '2', '8', '实际1.24元/wb，减少32.97%', '20.00');
INSERT INTO `pu_pj` VALUES ('2646', '2016-02-01 00:00:00', '1', '2', '6', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2645', '2016-02-01 00:00:00', '1', '2', '5', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2644', '2016-02-01 00:00:00', '1', '1', '4', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2643', '2016-02-01 00:00:00', '1', '1', '3', '实际7.4kg/wb，减少0.11kg/wb', '1.65');
INSERT INTO `pu_pj` VALUES ('2642', '2016-02-01 00:00:00', '1', '1', '2', '实际90.06%，增加4.62%', '9.24');
INSERT INTO `pu_pj` VALUES ('2641', '2016-02-01 00:00:00', '1', '1', '1', '实际1743605.9重箱，增加2.41%', '7.22');
INSERT INTO `pu_pj` VALUES ('2671', '2016-02-01 00:00:00', '1', '8', '35', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2672', '2016-02-01 00:00:00', '1', '8', '36', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2673', '2016-02-01 00:00:00', '1', '8', '37', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2674', '2016-02-01 00:00:00', '1', '9', '38', '', '0.00');
INSERT INTO `pu_pj` VALUES ('2675', '2016-02-01 00:00:00', '1', '9', '39', '', '0.00');
