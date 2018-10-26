/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost
 Source Database       : auth_test0

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : utf-8

 Date: 10/26/2018 09:02:36 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `SYS_PERMISSION`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_PERMISSION`;
CREATE TABLE `SYS_PERMISSION` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SYS_PERMISSION`
-- ----------------------------
BEGIN;
INSERT INTO `SYS_PERMISSION` VALUES ('1', 'ROLE_HOME', 'home', '/', null), ('2', 'ROLE_ADMIN', 'ABel', '/admin', null);
COMMIT;

-- ----------------------------
--  Table structure for `SYS_PERMISSION_ROLE`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_PERMISSION_ROLE`;
CREATE TABLE `SYS_PERMISSION_ROLE` (
  `id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SYS_PERMISSION_ROLE`
-- ----------------------------
BEGIN;
INSERT INTO `SYS_PERMISSION_ROLE` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `SYS_ROLE`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE`;
CREATE TABLE `SYS_ROLE` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SYS_ROLE`
-- ----------------------------
BEGIN;
INSERT INTO `SYS_ROLE` VALUES ('1', 'ROLE_ADMIN'), ('2', 'ROLE_USER');
COMMIT;

-- ----------------------------
--  Table structure for `SYS_ROLE_USER`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE_USER`;
CREATE TABLE `SYS_ROLE_USER` (
  `sys_user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SYS_ROLE_USER`
-- ----------------------------
BEGIN;
INSERT INTO `SYS_ROLE_USER` VALUES ('1', '1'), ('2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `SYS_USER`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER`;
CREATE TABLE `SYS_USER` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SYS_USER`
-- ----------------------------
BEGIN;
INSERT INTO `SYS_USER` VALUES ('1', 'admin', '6d789d4353c72e4f625d21c6b7ac2982'), ('2', 'dengjq', 'e24df0e08929f78be02fc7bb956c1eed');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
