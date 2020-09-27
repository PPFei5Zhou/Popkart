/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50637
 Source Host           : localhost:3306
 Source Schema         : popkart

 Target Server Type    : MySQL
 Target Server Version : 50637
 File Encoding         : 65001

 Date: 27/09/2020 12:37:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CarName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `UpdateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `car_ID_uindex`(`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for catcapability
-- ----------------------------
DROP TABLE IF EXISTS `catcapability`;
CREATE TABLE `catcapability`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CarID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GripVelocity` double NULL DEFAULT NULL COMMENT '抓地',
  `Acceleration` double NULL DEFAULT NULL COMMENT '加速',
  `CurveVelocity` double NULL DEFAULT NULL COMMENT '弯道',
  `GripSpitfire` double NULL DEFAULT NULL COMMENT '摇头喷',
  `GasGathering` time(0) NULL DEFAULT NULL COMMENT '集气',
  `LongDrift` double NULL DEFAULT NULL COMMENT '拖飘',
  `AccelerationTime` time(0) NULL DEFAULT NULL COMMENT '加速时间',
  `DeformationSpeed` time(0) NULL DEFAULT NULL COMMENT '变形加速',
  `Spitfire` double NULL DEFAULT NULL COMMENT '小喷',
  `Flexible` double NULL DEFAULT NULL COMMENT '灵活',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `CatCapability_ID_uindex`(`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `roleinfo`;
CREATE TABLE `roleinfo`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Valid` bit(1) NULL DEFAULT b'1',
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `UpdateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roleinfo
-- ----------------------------
INSERT INTO `roleinfo` VALUES (1, 'ROLE_ADMIN', b'1', 'admin', '2020-08-29 21:51:14', NULL, NULL);
INSERT INTO `roleinfo` VALUES (2, 'ROLE_USER', b'1', 'admin', '2020-08-29 21:51:14', NULL, NULL);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `UpdateBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDt` datetime(0) NULL DEFAULT NULL,
  `Valid` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `userinfo_Account_uindex`(`Account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('a0a101ce-e9e4-11ea-a47d-54ee759fd5e5', '超级管理员', 'admin', 'admin', 'admin', '2020-08-29 18:44:08', 'admin', '2020-08-29 18:44:08', b'1');

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RoleID` int(11) NULL DEFAULT NULL,
  `Valid` bit(1) NULL DEFAULT b'1',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES (1, 'a0a101ce-e9e4-11ea-a47d-54ee759fd5e5', 1, b'1');

SET FOREIGN_KEY_CHECKS = 1;
