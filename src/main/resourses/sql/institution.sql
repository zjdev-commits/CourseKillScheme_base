/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : course_selection

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 09/08/2019 21:06:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for institution
-- ----------------------------
DROP TABLE IF EXISTS `institution`;
CREATE TABLE `institution`  (
  `insId` int(11) NOT NULL AUTO_INCREMENT,
  `insName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`insId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of institution
-- ----------------------------
INSERT INTO `institution` VALUES (1001, '信息学院');
INSERT INTO `institution` VALUES (1002, '地旅学院');
INSERT INTO `institution` VALUES (1003, '经管学院');
INSERT INTO `institution` VALUES (1004, '法学院');
INSERT INTO `institution` VALUES (1005, '数学学院');

SET FOREIGN_KEY_CHECKS = 1;
