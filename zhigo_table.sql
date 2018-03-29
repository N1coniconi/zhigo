/*
Navicat MySQL Data Transfer

Source Server         : 星宇
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : zhigo

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-28 09:54:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zhigo_article
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_article`;
CREATE TABLE `zhigo_article` (
  `article_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_title` varchar(255) NOT NULL COMMENT '文章标题',
  `article_content` text COMMENT '文章内容',
  `article_view_count` int(255) DEFAULT NULL COMMENT '文章浏览次数',
  `article_release_time` datetime(6) DEFAULT NULL COMMENT '发布时间',
  `article_image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `n_id` int(4) NOT NULL COMMENT '文章所在导航栏ID',
  `article_sort` int(255) DEFAULT NULL COMMENT '文章排序',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhigo_banner
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_banner`;
CREATE TABLE `zhigo_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
  `banner_path` varchar(255) NOT NULL COMMENT '轮播图路径',
  `banner_title` varchar(255) DEFAULT NULL COMMENT '轮播图标题 ',
  `banner_sort` int(10) DEFAULT NULL COMMENT '轮播图顺序',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhigo_navigator
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_navigator`;
CREATE TABLE `zhigo_navigator` (
  `n_id` smallint(3) NOT NULL AUTO_INCREMENT COMMENT '导航栏',
  `n_value` varchar(255) DEFAULT NULL COMMENT '导航栏名称',
  `n_update_date` datetime(6) DEFAULT NULL COMMENT '导航栏更新时间',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhigo_robot
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_robot`;
CREATE TABLE `zhigo_robot` (
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `product_type` varchar(255) DEFAULT NULL COMMENT '产品系列',
  `product_weight` decimal(10,0) DEFAULT NULL COMMENT '产品重量',
  `product_load` decimal(10,0) DEFAULT NULL COMMENT '产品负载',
  `product_accuracy` decimal(10,0) DEFAULT NULL,
  `product_range` int(255) DEFAULT NULL,
  `product_speed` decimal(10,0) DEFAULT NULL COMMENT '产品速度',
  `n_id` int(11) DEFAULT NULL COMMENT '所属导航栏',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhigo_user
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_user`;
CREATE TABLE `zhigo_user` (
  `user_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_logintime` datetime(6) DEFAULT NULL COMMENT '用户登录时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhigo_video
-- ----------------------------
DROP TABLE IF EXISTS `zhigo_video`;
CREATE TABLE `zhigo_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频ID',
  `video_path` varchar(255) DEFAULT NULL COMMENT '视频所在地址',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
