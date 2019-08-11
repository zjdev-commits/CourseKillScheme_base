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

 Date: 09/08/2019 21:07:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teaId` int(11) NOT NULL,
  `teaName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teaPass` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`teaId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1625111001, '张老师', '1625111001');
INSERT INTO `teacher` VALUES (1625111002, '李老师', '1625111002');
INSERT INTO `teacher` VALUES (1625111003, '王老师', '1625111003');
INSERT INTO `teacher` VALUES (1625111004, '陈老师', '1625111004');
INSERT INTO `teacher` VALUES (1625111005, '高老师', '1625111005');
INSERT INTO `teacher` VALUES (1625111006, '谢老师', '1625111006');
INSERT INTO `teacher` VALUES (1625111007, '黄老师', '1625111007');
INSERT INTO `teacher` VALUES (1625111008, '陆老师', '1625111008');
INSERT INTO `teacher` VALUES (1625111009, '覃老师', '1625111009');

SET FOREIGN_KEY_CHECKS = 1;
