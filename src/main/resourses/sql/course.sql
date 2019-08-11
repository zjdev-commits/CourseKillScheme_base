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

 Date: 09/08/2019 21:05:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classNum` int(11) NOT NULL,
  `teaId` int(11) NOT NULL,
  `classChooseNum` int(11) NOT NULL,
  PRIMARY KEY (`classId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1001, 'c语言程序设计', 50, 1625111001, 38);
INSERT INTO `course` VALUES (1002, '地球科学概论', 30, 1625111002, 26);
INSERT INTO `course` VALUES (1004, 'java程序设计', 40, 1625111003, 24);
INSERT INTO `course` VALUES (1005, '计算机网络', 66, 1625111004, 62);
INSERT INTO `course` VALUES (1006, '大学英语', 73, 1625111005, 65);
INSERT INTO `course` VALUES (1007, '大学语文', 63, 1625111006, 61);
INSERT INTO `course` VALUES (1008, '高等数学', 62, 1625111007, 62);
INSERT INTO `course` VALUES (1009, '大学英语II', 52, 1625111006, 44);
INSERT INTO `course` VALUES (1010, '数据库', 40, 1625111008, 36);

SET FOREIGN_KEY_CHECKS = 1;
