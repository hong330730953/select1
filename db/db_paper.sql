/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_paper

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-12 18:08:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_clazz`
-- ----------------------------
DROP TABLE IF EXISTS `t_clazz`;
CREATE TABLE `t_clazz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dnws7mk7bbr0efkcunx1x2n7o` (`collegeId`),
  CONSTRAINT `FK_dnws7mk7bbr0efkcunx1x2n7o` FOREIGN KEY (`collegeId`) REFERENCES `t_college` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_clazz
-- ----------------------------

-- ----------------------------
-- Table structure for `t_college`
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `managerId` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_s6e6cnmjm8x5xylqq7wy4hhlx` (`managerId`),
  CONSTRAINT `FK_s6e6cnmjm8x5xylqq7wy4hhlx` FOREIGN KEY (`managerId`) REFERENCES `t_controller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_college
-- ----------------------------

-- ----------------------------
-- Table structure for `t_controller`
-- ----------------------------
DROP TABLE IF EXISTS `t_controller`;
CREATE TABLE `t_controller` (
  `id` varchar(40) NOT NULL,
  `degreeId` int(11) NOT NULL,
  `disable` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `officeId` int(11) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `registerdate` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `teachtitleId` int(11) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_controller
-- ----------------------------

-- ----------------------------
-- Table structure for `t_filedownload`
-- ----------------------------
DROP TABLE IF EXISTS `t_filedownload`;
CREATE TABLE `t_filedownload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `senderId` varchar(255) DEFAULT NULL,
  `sendertype` int(11) NOT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_filedownload
-- ----------------------------

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `hasread` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `receivererdisable` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `senderdisable` int(11) NOT NULL,
  `sendtime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for `t_prelection`
-- ----------------------------
DROP TABLE IF EXISTS `t_prelection`;
CREATE TABLE `t_prelection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice` int(11) NOT NULL,
  `disable` int(11) NOT NULL,
  `selectdate` datetime DEFAULT NULL,
  `studentId` varchar(40) DEFAULT NULL,
  `subjectId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7xh3lhrigtb75b96gs8cm16mk` (`studentId`),
  KEY `FK_lhxuldk654k9wd1f9qqtvn35l` (`subjectId`),
  CONSTRAINT `FK_7xh3lhrigtb75b96gs8cm16mk` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`),
  CONSTRAINT `FK_lhxuldk654k9wd1f9qqtvn35l` FOREIGN KEY (`subjectId`) REFERENCES `t_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_prelection
-- ----------------------------

-- ----------------------------
-- Table structure for `t_source`
-- ----------------------------
DROP TABLE IF EXISTS `t_source`;
CREATE TABLE `t_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_source
-- ----------------------------

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` varchar(40) NOT NULL,
  `disable` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `registerdate` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_frxpowmeqnmf3sflhwgq3x0ub` (`classId`),
  CONSTRAINT `FK_frxpowmeqnmf3sflhwgq3x0ub` FOREIGN KEY (`classId`) REFERENCES `t_clazz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------

-- ----------------------------
-- Table structure for `t_subject`
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment1` varchar(255) DEFAULT NULL,
  `comment2` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data1` datetime DEFAULT NULL,
  `data2` datetime DEFAULT NULL,
  `disable` int(11) NOT NULL,
  `feasibility` varchar(255) DEFAULT NULL,
  `first` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `majorId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `necessary` varchar(255) DEFAULT NULL,
  `ordernum` varchar(255) DEFAULT NULL,
  `othermajor` int(11) NOT NULL,
  `person1` varchar(255) DEFAULT NULL,
  `person2` varchar(255) DEFAULT NULL,
  `personcount` int(11) NOT NULL,
  `personlave` int(11) NOT NULL,
  `same` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `studentId` varchar(40) DEFAULT NULL,
  `tea1Id` varchar(40) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_167swwbg0wvfc5e0knke607e1` (`sourceId`),
  KEY `FK_cv7brs1wk3qsgws374mmn8p2l` (`studentId`),
  KEY `FK_f907xmjdavf3mu18f8sb0ttk3` (`tea1Id`),
  KEY `FK_4dfmaevp0tk87ttdaynxdmfjo` (`typeId`),
  CONSTRAINT `FK_167swwbg0wvfc5e0knke607e1` FOREIGN KEY (`sourceId`) REFERENCES `t_source` (`id`),
  CONSTRAINT `FK_4dfmaevp0tk87ttdaynxdmfjo` FOREIGN KEY (`typeId`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK_cv7brs1wk3qsgws374mmn8p2l` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`),
  CONSTRAINT `FK_f907xmjdavf3mu18f8sb0ttk3` FOREIGN KEY (`tea1Id`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_subject
-- ----------------------------

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` varchar(40) NOT NULL,
  `degreeId` int(11) NOT NULL,
  `disable` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `registerdate` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for `t_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
