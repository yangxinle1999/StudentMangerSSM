/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : xueshengguanli

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-01-08 11:52:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(50) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) DEFAULT NULL,
  `s_num` varchar(255) DEFAULT NULL,
  `c_course` varchar(255) DEFAULT NULL,
  `c_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('3', '张老师', '1', '数据库', '09.10--12.10');
INSERT INTO `course` VALUES ('4', '张老师', '1', 'uml', '09.10--01.10');
INSERT INTO `course` VALUES ('5', '白老师', '2', '大数据', '09.10--12.10');
INSERT INTO `course` VALUES ('7', '孙老师', '3', '软件设计模式与体系结构', '09.30--12.10');
INSERT INTO `course` VALUES ('8', '孙老师', '3', 'python', '09.30--12.10');

-- ----------------------------
-- Table structure for guanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan`;
CREATE TABLE `guanliyuan` (
  `g_id` int(50) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) NOT NULL,
  `g_password` varchar(255) NOT NULL,
  `g_gongHao` varchar(255) NOT NULL,
  `g_lianXiFangShi` varchar(255) DEFAULT NULL,
  `g_touxiang` varchar(255) DEFAULT NULL,
  `g_zhaungTai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guanliyuan
-- ----------------------------
INSERT INTO `guanliyuan` VALUES ('1', 'admin1', '123', '1', '123', 'http://localhost:8080/image/d6dfcd83ecf24c9eba16e6d371014bc3Lighthouse.jpg', null);

-- ----------------------------
-- Table structure for jiafenxiang
-- ----------------------------
DROP TABLE IF EXISTS `jiafenxiang`;
CREATE TABLE `jiafenxiang` (
  `j_id` int(50) NOT NULL AUTO_INCREMENT,
  `j_num` varchar(255) DEFAULT NULL,
  `j_jiaFenXiang` varchar(255) DEFAULT NULL,
  `j_time` datetime DEFAULT NULL,
  `j_zhuangtai` int(2) DEFAULT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiafenxiang
-- ----------------------------
INSERT INTO `jiafenxiang` VALUES ('4', '201722450739', 'http://localhost:8080/image/d24c9564bbdc436bbc1e73d292b5ca46Desert.jpg', '2019-12-06 17:12:15', '1');
INSERT INTO `jiafenxiang` VALUES ('5', '201722450739', 'http://localhost:8080/image/eb36ea3c6d0143c39fabb0a6ef4ecc3cLighthouse.jpg', '2019-12-06 17:12:28', '1');
INSERT INTO `jiafenxiang` VALUES ('6', '201722450733', 'http://localhost:8080/image/249a55b8b89f4cc7b04950d155b958ccHydrangeas.jpg', '2019-12-06 17:13:11', '0');
INSERT INTO `jiafenxiang` VALUES ('7', '201722450733', 'http://localhost:8080/image/8a32b64cfb7044acaabd8b7abcfb1602Penguins.jpg', '2019-12-06 17:13:22', '1');
INSERT INTO `jiafenxiang` VALUES ('8', '201722450739', 'http://localhost:8080/image/ccc0d0357e3f40e5bffb86bdd9475cd8Jellyfish.jpg', '2019-12-06 17:26:34', '0');
INSERT INTO `jiafenxiang` VALUES ('9', '201722450739', 'http://localhost:8080/image/f371bf4c045c45b49b538cb60a24f023Desert.jpg', '2019-12-19 10:15:01', '2');
INSERT INTO `jiafenxiang` VALUES ('10', '201722450739', 'http://localhost:8080/image/e118b6a5643d490abd5c1edb066b935eKoala.jpg', '2019-12-19 10:34:09', '1');
INSERT INTO `jiafenxiang` VALUES ('11', '201722450739', 'http://localhost:8080/image/a8b43eb48355427cb7d23690e233e4d3Koala.jpg', '2019-12-21 16:34:09', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(50) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `s_password` varchar(255) NOT NULL,
  `s_num` varchar(255) NOT NULL,
  `s_sex` varchar(255) DEFAULT NULL,
  `s_xueYuan` varchar(255) DEFAULT NULL,
  `s_nianJi` varchar(255) DEFAULT NULL,
  `s_banJi` varchar(255) DEFAULT NULL,
  `s_touxiang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '杨新乐', '123', '201722450739', '男', '信息技术学院', '大三', '3班', 'http://localhost:8080/image/4fe0d7a99eeb46a4865a3c7e2f79ecbdTulips.jpg');
INSERT INTO `student` VALUES ('3', 'fg', '123', '201722450733', '男', '信息技术学院', '大一', '3班', 'http://localhost:8080/image/7c7e6d45caad496ba7ed059dbd39468aJellyfish.jpg');
INSERT INTO `student` VALUES ('4', '小明', '123', '123', '男', '信息技术学院', '大三', '3班', 'http://localhost:8080/image/83b4482d0da04ef3808c68b4b27070edHydrangeas.jpg');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(50) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) NOT NULL,
  `t_gongHao` varchar(255) NOT NULL,
  `t_password` varchar(255) NOT NULL,
  `t_yuanXi` varchar(255) DEFAULT NULL,
  `t_sex` varchar(255) DEFAULT NULL,
  `t_shouJiHao` varchar(255) DEFAULT NULL,
  `t_touxiang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张老师', '1', '123', '信息技术学院', '男', '12345', 'http://localhost:8080/image/409c39e591c0432a8ee8c8e28d948d8cHydrangeas.jpg');
INSERT INTO `teacher` VALUES ('2', '李老师', '2', '123', '信息技术学院', '男', '123456789', 'http://localhost:8080/image/e70f8d8323e44113a1deee1214d795c2Jellyfish.jpg');
INSERT INTO `teacher` VALUES ('3', '孙老师', '3', '123', '信息技术学院', '男', '12345678', 'http://localhost:8080/image/edd0e0c2fd1347cdb59224fdfb378c19Lighthouse.jpg');

-- ----------------------------
-- Table structure for xuanke
-- ----------------------------
DROP TABLE IF EXISTS `xuanke`;
CREATE TABLE `xuanke` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuanke
-- ----------------------------
INSERT INTO `xuanke` VALUES ('7', '杨新乐', '张老师', 'uml', '09.10--01.10');
INSERT INTO `xuanke` VALUES ('8', '杨新乐', '张老师', '数据库', '09.10--12.10');
INSERT INTO `xuanke` VALUES ('9', '杨新乐', '孙老师', '软件设计模式与体系结构', '09.30--12.10');
