/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2019-03-17 19:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for big_class
-- ----------------------------
DROP TABLE IF EXISTS `big_class`;
CREATE TABLE `big_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of big_class
-- ----------------------------
INSERT INTO `big_class` VALUES ('1', '龙泉供电所', '1', '2019-02-20 14:05:43', '2019-02-20 14:05:43');
INSERT INTO `big_class` VALUES ('2', '城东供电所', '1', '2019-02-20 14:06:03', '2019-02-20 14:06:03');
INSERT INTO `big_class` VALUES ('3', '集电供电所', '1', '2019-02-20 14:06:15', '2019-02-20 14:06:15');
INSERT INTO `big_class` VALUES ('4', '店上供电所', '1', '2019-02-20 14:06:26', '2019-02-20 14:06:26');
INSERT INTO `big_class` VALUES ('5', '晋庄供电所', '1', '2019-02-20 14:06:46', '2019-02-20 14:06:46');
INSERT INTO `big_class` VALUES ('6', '百尺供电所', '1', '2019-02-20 14:06:57', '2019-02-20 14:06:57');
INSERT INTO `big_class` VALUES ('7', '东井岭供电所', '1', '2019-02-20 14:07:15', '2019-02-20 14:07:15');
INSERT INTO `big_class` VALUES ('8', '石坡供电所', '1', '2019-02-20 14:07:40', '2019-02-20 14:07:40');
INSERT INTO `big_class` VALUES ('9', '大峡谷供电所', '1', '2019-02-20 14:07:49', '2019-02-20 14:07:49');

-- ----------------------------
-- Table structure for file_data
-- ----------------------------
DROP TABLE IF EXISTS `file_data`;
CREATE TABLE `file_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL COMMENT '文件id',
  `small_id` int(11) NOT NULL COMMENT '台区id',
  `name_cn` varchar(100) NOT NULL DEFAULT '' COMMENT '户名',
  `accid` varchar(100) NOT NULL DEFAULT '' COMMENT '户号',
  `tele_no` varchar(32) NOT NULL DEFAULT '' COMMENT '电话',
  `cid` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证号',
  `is_join` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否入户, 1表示入户',
  `is_join_cause` varchar(1024) NOT NULL DEFAULT '' COMMENT '是否入原户因',
  `four_tele_know` varchar(1024) NOT NULL DEFAULT '' COMMENT '4个电话知晓情况',
  `tele_conn` varchar(1024) NOT NULL DEFAULT '' COMMENT '是否电话沟通',
  `tele_true` varchar(1024) NOT NULL DEFAULT '' COMMENT '电话是否正确',
  `join_wechat` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否加入微信群, 1表示已加入',
  `payment` varchar(100) NOT NULL DEFAULT '' COMMENT '缴费方式',
  `comment` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `complete_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否完善，1表示完善',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据有效',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_data
-- ----------------------------
INSERT INTO `file_data` VALUES ('1', '1', '1', '陈俊志', '1', '18702538661', '120224199005191716', '0', '1', 'sd', '', 'sd', '0', '', 'asdf ', '1', '1', '2019-02-20 14:09:26', '2019-03-12 11:29:22');
INSERT INTO `file_data` VALUES ('2', '1', '1', '陈俊志', '1', '18702538661', '120224199005191716', '0', '', '', '', '', '0', '', '', '0', '1', '2019-02-28 09:34:13', '2019-02-28 09:34:13');
INSERT INTO `file_data` VALUES ('3', '1', '1', '陈俊志', '1', '18702538661', '120224199005191716', '0', '', '', '', '', '0', '', '', '0', '1', '2019-02-28 09:34:31', '2019-02-28 09:34:31');
INSERT INTO `file_data` VALUES ('4', '1', '1', '陈俊志', '1', '18702538661', '120224199005191716', '0', '', '', '', '', '0', '', '', '0', '1', '2019-02-28 09:39:10', '2019-02-28 09:39:10');
INSERT INTO `file_data` VALUES ('5', '1', '1', '陈俊志', '1', '18702538661', '120224199005191716', '0', '', '', '', '', '0', '', '', '0', '1', '2019-02-28 09:42:05', '2019-02-28 09:42:05');

-- ----------------------------
-- Table structure for file_relation
-- ----------------------------
DROP TABLE IF EXISTS `file_relation`;
CREATE TABLE `file_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `small_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_relation
-- ----------------------------
INSERT INTO `file_relation` VALUES ('1', '1', '1', '1', '2019-02-20 14:09:26', '2019-02-20 14:09:26');

-- ----------------------------
-- Table structure for front_user
-- ----------------------------
DROP TABLE IF EXISTS `front_user`;
CREATE TABLE `front_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `big_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of front_user
-- ----------------------------
INSERT INTO `front_user` VALUES ('1', 'user1', 'user1', '1', '1', '2019-02-20 14:13:32', '2019-02-20 14:13:32');

-- ----------------------------
-- Table structure for small_class
-- ----------------------------
DROP TABLE IF EXISTS `small_class`;
CREATE TABLE `small_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(1024) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of small_class
-- ----------------------------
INSERT INTO `small_class` VALUES ('1', '1', '台区1', '1', '2019-02-20 14:08:31', '2019-02-20 14:08:31');

-- ----------------------------
-- Table structure for upload_file
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(1024) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0表示无效',
  `sync_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示文件中的数据同步到file_data中',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_file
-- ----------------------------
INSERT INTO `upload_file` VALUES ('1', 'demo文件.xlsx', '1', '0', '2019-02-20 14:09:11', '2019-02-20 14:09:11');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0表示管理后台权限，1表示前台权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', 'admin', 'admin', '1', '2019-01-18 07:55:59', '2019-01-20 15:11:25', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userName` varchar(32) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(32) DEFAULT NULL COMMENT '密码',
  `user_sex` varchar(32) DEFAULT NULL,
  `nick_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', 'MAN', '1');
