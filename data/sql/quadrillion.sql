/*
 Navicat Premium Data Transfer

 Source Server         : DFM MySQL
 Source Server Type    : MySQL
 Source Server Version : 50167
 Source Host           : localhost
 Source Database       : news

 Target Server Type    : MySQL
 Target Server Version : 50167
 File Encoding         : utf-8

 Date: 07/17/2013 15:05:13 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ranker_quad`
-- ----------------------------
DROP TABLE IF EXISTS `ranker_quad`;
CREATE TABLE `ranker_quad` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `ranker_id` varchar(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `rank_total` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `ranker_quad`
-- ----------------------------
BEGIN;
INSERT INTO `ranker_quad` VALUES ('1', 'a1', 'Become Batman.', '0'), ('2', 'a2', 'Buy the company you work for and have your boss sweep the floor.', '0'), ('3', 'a3', 'Build a five-star hotel on Mars and take your family there on vacation.', '0'), ('4', 'a4', 'Buy your favorite sports team and its archrival, trade all the good players to yourself.', '0'), ('5', 'a5', 'Buy a mansion for every homeless person on earth.', '0'), ('6', 'a6', 'Pay off the national debt, turn to Uncle Sam and say, \"You\'re welcome.\"', '0');
COMMIT;


SET FOREIGN_KEY_CHECKS = 1;
