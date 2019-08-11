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

 Date: 09/08/2019 21:06:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_limit
-- ----------------------------
DROP TABLE IF EXISTS `course_limit`;
CREATE TABLE `course_limit`  (
  `limitId` int(11) NOT NULL AUTO_INCREMENT,
  `classId` int(11) NOT NULL,
  `insId` int(11) NOT NULL,
  PRIMARY KEY (`limitId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1016 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_limit
-- ----------------------------
INSERT INTO `course_limit` VALUES (1001, 1001, 1001);
INSERT INTO `course_limit` VALUES (1002, 1002, 1004);
INSERT INTO `course_limit` VALUES (1003, 1002, 1005);
INSERT INTO `course_limit` VALUES (1005, 1004, 1001);
INSERT INTO `course_limit` VALUES (1006, 1005, 1005);
INSERT INTO `course_limit` VALUES (1007, 1006, 1001);
INSERT INTO `course_limit` VALUES (1008, 1006, 1002);
INSERT INTO `course_limit` VALUES (1009, 1007, 1004);
INSERT INTO `course_limit` VALUES (1010, 1007, 1005);
INSERT INTO `course_limit` VALUES (1011, 1008, 1001);
INSERT INTO `course_limit` VALUES (1012, 1009, 1001);
INSERT INTO `course_limit` VALUES (1013, 1009, 1002);
INSERT INTO `course_limit` VALUES (1014, 1009, 1004);
INSERT INTO `course_limit` VALUES (1015, 1010, 1005);

SET FOREIGN_KEY_CHECKS = 1;
