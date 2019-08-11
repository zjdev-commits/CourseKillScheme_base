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

 Date: 09/08/2019 21:06:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stuId` int(11) NOT NULL,
  `stuName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuPass` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`stuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1625110001, '张三', '1625110001', 1005);
INSERT INTO `student` VALUES (1625110002, '李四', '1625110002', 1001);
INSERT INTO `student` VALUES (1625110003, '王五', '1625110003', 1005);
INSERT INTO `student` VALUES (1625110004, '陈一', '1625110004', 1005);
INSERT INTO `student` VALUES (1625110005, '陈二', '1625110005', 1004);
INSERT INTO `student` VALUES (1625110006, '李一', '1625110006', 1001);
INSERT INTO `student` VALUES (1625110007, '李二', '1625110007', 1004);
INSERT INTO `student` VALUES (1625110008, '王某', '1625110008', 1001);
INSERT INTO `student` VALUES (1625110009, '刘某', '1625110009', 1004);
INSERT INTO `student` VALUES (1625110010, '邓某', '1625110010', 1002);
INSERT INTO `student` VALUES (1625110011, '涂某', '1625110011', 1002);

SET FOREIGN_KEY_CHECKS = 1;
