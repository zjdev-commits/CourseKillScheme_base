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

 Date: 09/08/2019 21:06:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_choose
-- ----------------------------
DROP TABLE IF EXISTS `course_choose`;
CREATE TABLE `course_choose`  (
  `stuId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  PRIMARY KEY (`stuId`, `classId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_choose
-- ----------------------------
INSERT INTO `course_choose` VALUES (1625110001, 1002);
INSERT INTO `course_choose` VALUES (1625110001, 1005);
INSERT INTO `course_choose` VALUES (1625110001, 1008);
INSERT INTO `course_choose` VALUES (1625110001, 1009);
INSERT INTO `course_choose` VALUES (1625110002, 1005);
INSERT INTO `course_choose` VALUES (1625110005, 1004);

SET FOREIGN_KEY_CHECKS = 1;
