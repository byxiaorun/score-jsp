/*
Navicat MySQL Data Transfer

Source Server         : Myconnect
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : score

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-19 15:34:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` char(20) NOT NULL,
  `pwd` char(20) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `admin` VALUES ('xiaorun', '123456');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` char(12) NOT NULL COMMENT '课程编号',
  `cname` char(20) NOT NULL COMMENT '课程名称',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1001', '大学英语');
INSERT INTO `course` VALUES ('1002', 'android studio');
INSERT INTO `course` VALUES ('1003', 'c++');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `sid` char(12) NOT NULL COMMENT '学号',
  `cid` char(12) NOT NULL COMMENT '课程编号',
  `grade` char(8) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`sid`,`cid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('20170101', '1002', '56');
INSERT INTO `score` VALUES ('20170102', '1001', '85');
INSERT INTO `score` VALUES ('20170102', '1003', '95');
INSERT INTO `score` VALUES ('20170103', '1002', '86');
INSERT INTO `score` VALUES ('20170108', '1001', '98');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` char(12) NOT NULL COMMENT '学号',
  `sname` varchar(20) NOT NULL COMMENT '姓名',
  `sex` char(4) NOT NULL COMMENT '性别',
  `borndate` date DEFAULT NULL COMMENT '出生日期',
  `address` varchar(20) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20170101', '小明', '女', '1999-09-16', '珠海');
INSERT INTO `student` VALUES ('20170102', '小王', '女', '1996-07-17', '深圳');
INSERT INTO `student` VALUES ('20170103', '小红', '男', '1998-03-10', '汕头');
INSERT INTO `student` VALUES ('20170104', '小李', '男', '1994-06-29', '上海');
INSERT INTO `student` VALUES ('20170105', '赵倩', '男', '1999-09-08', '广东汕头');
INSERT INTO `student` VALUES ('20170108', '孙俪', '男', '2013-03-25', '广州');
