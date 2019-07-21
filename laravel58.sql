/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : laravel58

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-30 15:04:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ss_file
-- ----------------------------
DROP TABLE IF EXISTS `ss_file`;
CREATE TABLE `ss_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) DEFAULT NULL COMMENT '文件地址',
  `original_name` varchar(200) DEFAULT NULL COMMENT '原始文件名',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_file
-- ----------------------------
INSERT INTO `ss_file` VALUES ('1', '/upload/admin/image/2017-11-09/201711091707527225.jpg', '2fa0ea733aca30d1fd304223b9c049cc.jpg', '1', '1', '2017-11-09 17:07:52', '2017-11-09 17:07:52', null);
INSERT INTO `ss_file` VALUES ('2', '/upload/admin/image/2017-11-09/201711091708451090.jpg', '3ee080fcbc23e503d5c29322f6409d7e.jpg', '1', '1', '2017-11-09 17:08:45', '2017-11-09 17:08:45', null);
INSERT INTO `ss_file` VALUES ('3', '/upload/admin/image/2017-11-09/201711091716376576.jpg', '9810bcdc23f700c822b7c98cc9cc70a0.jpg', '1', '1', '2017-11-09 17:16:37', '2017-11-09 17:16:37', null);
INSERT INTO `ss_file` VALUES ('4', '/upload/admin/image/2017-11-09/201711091943251771.jpg', '2fa0ea733aca30d1fd304223b9c049cc.jpg', '1', '1', '2017-11-09 19:43:25', '2017-11-09 19:43:25', null);
INSERT INTO `ss_file` VALUES ('5', '/upload/admin/image/2017-11-21/201711211711277370.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-21 17:11:27', '2017-11-21 17:11:27', null);
INSERT INTO `ss_file` VALUES ('6', '/upload/admin/image/2017-11-21/201711211716482514.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-21 17:16:48', '2017-11-21 17:16:48', null);
INSERT INTO `ss_file` VALUES ('7', '/upload/admin/image/2017-11-22/201711221010067299.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-22 10:10:06', '2017-11-22 10:10:06', null);
INSERT INTO `ss_file` VALUES ('8', '/upload/admin/image/2017-11-22/201711221011465831.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-22 10:11:46', '2017-11-22 10:11:46', null);
INSERT INTO `ss_file` VALUES ('9', '/upload/admin/image/2017-11-27/201711271609576991.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-27 16:09:57', '2017-11-27 16:09:57', null);
INSERT INTO `ss_file` VALUES ('10', '/upload/admin/image/2017-11-27/201711271653543587.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-27 16:53:54', '2017-11-27 16:53:54', null);
INSERT INTO `ss_file` VALUES ('11', '/upload/admin/image/2017-11-28/201711281048228849.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-28 10:48:23', '2017-11-28 10:48:23', null);
INSERT INTO `ss_file` VALUES ('12', '/upload/admin/image/2017-11-28/201711281105328911.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-28 11:05:32', '2017-11-28 11:05:32', null);
INSERT INTO `ss_file` VALUES ('13', '/upload/admin/image/2017-11-28/201711281127114066.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-28 11:27:11', '2017-11-28 11:27:11', null);
INSERT INTO `ss_file` VALUES ('14', '/upload/admin/image/2017-11-28/201711281402285508.jpg', '2fa0ea733aca30d1fd304223b9c049cc.jpg', '1', '1', '2017-11-28 14:02:28', '2017-11-28 14:02:28', null);
INSERT INTO `ss_file` VALUES ('15', '/upload/admin/image/2017-11-28/201711281557055514.jpg', '2fa0ea733aca30d1fd304223b9c049cc.jpg', '1', '1', '2017-11-28 15:57:05', '2017-11-28 15:57:05', null);
INSERT INTO `ss_file` VALUES ('16', '/upload/admin/image/2017-11-29/201711290904438035.jpg', '企业微信截图_15088269389169.jpg', '1', '1', '2017-11-29 09:04:43', '2017-11-29 09:04:43', null);
INSERT INTO `ss_file` VALUES ('17', '/upload/admin/image/2017-12-12/201712120902448521.jpg', '9810bcdc23f700c822b7c98cc9cc70a0.jpg', '1', '1', '2017-12-12 09:02:44', '2017-12-12 09:02:44', null);
INSERT INTO `ss_file` VALUES ('18', '/upload/admin/image/2017-12-12/201712120903024092.jpg', '9810bcdc23f700c822b7c98cc9cc70a0.jpg', '1', '1', '2017-12-12 09:03:02', '2017-12-12 09:03:02', null);
INSERT INTO `ss_file` VALUES ('19', '/upload/admin/image/2017-12-12/201712120903141013.jpg', '9810bcdc23f700c822b7c98cc9cc70a0.jpg', '1', '1', '2017-12-12 09:03:14', '2017-12-12 09:03:14', null);
INSERT INTO `ss_file` VALUES ('20', '/upload/admin/image/2018-01-10/201801101534269721.jpg', 'u=809943721,3434341815&fm=23&gp=0.jpg', '1', '1', '2018-01-10 15:34:26', '2018-01-10 15:34:26', null);
INSERT INTO `ss_file` VALUES ('21', '/upload/admin/image/2018-01-10/201801101536254035.jpg', '下载.jpg', '1', '1', '2018-01-10 15:36:25', '2018-01-10 15:36:25', null);
INSERT INTO `ss_file` VALUES ('22', '/upload/admin/image/2018-01-10/201801101550028375.jpg', '710305测试图.jpg', '1', '1', '2018-01-10 15:50:02', '2018-01-10 15:50:02', null);
INSERT INTO `ss_file` VALUES ('23', '/upload/admin/image/2018-01-10/201801101551354320.jpg', '710305测试图.jpg', '1', '1', '2018-01-10 15:51:35', '2018-01-10 15:51:35', null);
INSERT INTO `ss_file` VALUES ('24', '/upload/admin/image/2018-01-10/201801101600583130.jpg', '710305测试图.jpg', '1', '1', '2018-01-10 16:00:58', '2018-01-10 16:00:58', null);
INSERT INTO `ss_file` VALUES ('25', '/upload/admin/image/2018-01-10/201801101601131874.jpg', '4625f095893675b615812236e8f314aa.jpg', '1', '1', '2018-01-10 16:01:13', '2018-01-10 16:01:13', null);
INSERT INTO `ss_file` VALUES ('26', '/upload/admin/image/2018-01-10/201801101603234865.jpg', '710305测试图.jpg', '1', '1', '2018-01-10 16:03:23', '2018-01-10 16:03:23', null);
INSERT INTO `ss_file` VALUES ('27', '/upload/admin/image/2018-01-10/201801101604247038.jpg', '710305测试图.jpg', '1', '1', '2018-01-10 16:04:24', '2018-01-10 16:04:24', null);
INSERT INTO `ss_file` VALUES ('28', '/upload/admin/image/2018-01-22/201801221632304935.jpg', '710305测试图.jpg', '1', '1', '2018-01-22 16:32:30', '2018-01-22 16:32:30', null);
INSERT INTO `ss_file` VALUES ('29', '/upload/admin/image/2018-01-22/201801221659065369.jpg', '710305测试图.jpg', '1', '1', '2018-01-22 16:59:06', '2018-01-22 16:59:06', null);
INSERT INTO `ss_file` VALUES ('30', '/upload/admin/image/2018-11-14/201811141129324784.jpg', '3ee080fcbc23e503d5c29322f6409d7e.jpg', '1', '1', '2018-11-14 11:29:32', '2018-11-14 11:29:32', null);
INSERT INTO `ss_file` VALUES ('31', '/upload/admin/image/2018-11-14/201811141136194811.jpg', 'bg_zjsc.jpg', '1', '1', '2018-11-14 11:36:19', '2018-11-14 11:36:19', null);
INSERT INTO `ss_file` VALUES ('32', '/upload/admin/image/2018-11-14/201811141136434216.jpg', 'bg_znfw.jpg', '1', '1', '2018-11-14 11:36:43', '2018-11-14 11:36:43', null);
INSERT INTO `ss_file` VALUES ('33', '/upload/admin/image/2018-11-14/201811141136595200.jpg', 'bg_xcgj.jpg', '1', '1', '2018-11-14 11:36:59', '2018-11-14 11:36:59', null);
INSERT INTO `ss_file` VALUES ('34', '/upload/admin/image/2019-04-24/201904241253009809.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 12:53:00', '2019-04-24 12:53:00', null);
INSERT INTO `ss_file` VALUES ('35', '/upload/admin/image/2019-04-24/201904241536189288.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 15:36:18', '2019-04-24 15:36:18', null);
INSERT INTO `ss_file` VALUES ('36', '/upload/admin/image/2019-04-24/201904241540516439.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 15:40:51', '2019-04-24 15:40:51', null);
INSERT INTO `ss_file` VALUES ('37', '/upload/admin/image/2019-04-24/201904241626508049.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 16:26:50', '2019-04-24 16:26:50', null);
INSERT INTO `ss_file` VALUES ('38', '/upload/admin/image/2019-04-24/201904241628583510.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 16:28:58', '2019-04-24 16:28:58', null);
INSERT INTO `ss_file` VALUES ('39', '/upload/admin/image/2019-04-24/201904241629475602.jpg', 'qrcode.jpg', '1', '1', '2019-04-24 16:29:47', '2019-04-24 16:29:47', null);
INSERT INTO `ss_file` VALUES ('40', '/upload/admin/image/2019-04-24/201904241629591165.jpg', 'u=268957828,3400150158&fm=26&gp=0.jpg', '1', '1', '2019-04-24 16:29:59', '2019-04-24 16:29:59', null);
INSERT INTO `ss_file` VALUES ('41', '/upload/admin/image/2019-04-24/201904241630313664.jpg', 'u=268957828,3400150158&fm=26&gp=0.jpg', '1', '1', '2019-04-24 16:30:31', '2019-04-24 16:30:31', null);
INSERT INTO `ss_file` VALUES ('42', '/upload/admin/image/2019-04-24/201904241630353984.jpg', 'u=2156421975,3337537785&fm=26&gp=0.jpg', '1', '1', '2019-04-24 16:30:35', '2019-04-24 16:30:35', null);
INSERT INTO `ss_file` VALUES ('43', '/upload/admin/image/2019-04-24/201904242217524920.jpg', 'u=2815927206,1392811834&fm=26&gp=0.jpg', '1', '1', '2019-04-24 22:17:52', '2019-04-24 22:17:52', null);
INSERT INTO `ss_file` VALUES ('44', '/upload/admin/image/2019-04-24/201904242220246546.jpg', 'u=2940595763,1394054779&fm=26&gp=0.jpg', '1', '1', '2019-04-24 22:20:24', '2019-04-24 22:20:24', null);
INSERT INTO `ss_file` VALUES ('45', '/upload/admin/image/2019-04-24/201904242225154316.jpg', 'u=2315695518,1427865940&fm=26&gp=0.jpg', '1', '1', '2019-04-24 22:25:15', '2019-04-24 22:25:15', null);
INSERT INTO `ss_file` VALUES ('46', '/upload/admin/image/2019-04-25/201904250217243645.jpg', 'u=268957828,3400150158&fm=26&gp=0.jpg', '1', '1', '2019-04-25 02:17:24', '2019-04-25 02:17:24', null);
INSERT INTO `ss_file` VALUES ('47', '/upload/admin/image/2019-04-25/201904250217278292.jpg', 'u=3486394772,2493686901&fm=200&gp=0.jpg', '1', '1', '2019-04-25 02:17:27', '2019-04-25 02:17:27', null);
INSERT INTO `ss_file` VALUES ('48', '/upload/admin/image/2019-04-25/201904250259346095.jpg', 'u=2940595763,1394054779&fm=26&gp=0.jpg', '1', '1', '2019-04-25 02:59:34', '2019-04-25 02:59:34', null);
INSERT INTO `ss_file` VALUES ('49', '/upload/admin/image/2019-04-25/201904251408124044.jpg', 'u=2242034005,3875740973&fm=26&gp=0.jpg', '1', '1', '2019-04-25 14:08:12', '2019-04-25 14:08:12', null);
INSERT INTO `ss_file` VALUES ('50', '/upload/admin/image/2019-04-25/201904251410081322.jpg', 'u=2375794651,697420034&fm=200&gp=0.jpg', '1', '1', '2019-04-25 14:10:08', '2019-04-25 14:10:08', null);
INSERT INTO `ss_file` VALUES ('51', '/upload/admin/image/2019-04-25/201904251627485650.jpg', 'u=2815927206,1392811834&fm=26&gp=0.jpg', '1', '1', '2019-04-25 16:27:48', '2019-04-25 16:27:48', null);
INSERT INTO `ss_file` VALUES ('52', '/upload/admin/image/2019-04-26/201904261820338423.jpg', 'b1.jpg', '1', '1', '2019-04-26 18:20:33', '2019-04-26 18:20:33', null);
INSERT INTO `ss_file` VALUES ('53', '/upload/admin/image/2019-04-26/201904261821014811.jpg', 'b2.jpg', '1', '1', '2019-04-26 18:21:01', '2019-04-26 18:21:01', null);
INSERT INTO `ss_file` VALUES ('54', '/upload/admin/image/2019-04-26/201904261822089241.jpg', 'b3.jpg', '1', '1', '2019-04-26 18:22:08', '2019-04-26 18:22:08', null);
INSERT INTO `ss_file` VALUES ('55', '/upload/admin/image/2019-04-26/201904261827531486.jpg', 'about.jpg', '1', '1', '2019-04-26 18:27:53', '2019-04-26 18:27:53', null);
INSERT INTO `ss_file` VALUES ('56', '/upload/admin/image/2019-04-26/201904261835227718.jpg', '1-1P2031105360-L.jpg', '1', '1', '2019-04-26 18:35:22', '2019-04-26 18:35:22', null);
INSERT INTO `ss_file` VALUES ('57', '/upload/admin/image/2019-04-26/201904261835279056.jpg', '1-1P2031106010-L.jpg', '1', '1', '2019-04-26 18:35:27', '2019-04-26 18:35:27', null);
INSERT INTO `ss_file` VALUES ('58', '/upload/admin/image/2019-04-26/201904261835302152.jpg', '1-1P2031105490-L.jpg', '1', '1', '2019-04-26 18:35:30', '2019-04-26 18:35:30', null);
INSERT INTO `ss_file` VALUES ('59', '/upload/admin/image/2019-04-26/201904261838451101.jpg', 'cp.jpg', '1', '1', '2019-04-26 18:38:45', '2019-04-26 18:38:45', null);
INSERT INTO `ss_file` VALUES ('60', '/upload/admin/image/2019-04-26/201904261926148096.jpg', '1-1P203160250S9.jpg', '1', '1', '2019-04-26 19:26:14', '2019-04-26 19:26:14', null);
INSERT INTO `ss_file` VALUES ('61', '/upload/admin/image/2019-04-26/201904261926595188.jpg', '1-1P203155K01Z.jpg', '1', '1', '2019-04-26 19:26:59', '2019-04-26 19:26:59', null);
INSERT INTO `ss_file` VALUES ('62', '/upload/admin/image/2019-04-26/201904261927419104.jpg', '1-1P2031601200-L.jpg', '1', '1', '2019-04-26 19:27:41', '2019-04-26 19:27:41', null);
INSERT INTO `ss_file` VALUES ('63', '/upload/admin/image/2019-04-26/201904261928254045.jpg', '1-1P2031600340-L.jpg', '1', '1', '2019-04-26 19:28:25', '2019-04-26 19:28:25', null);
INSERT INTO `ss_file` VALUES ('64', '/upload/admin/image/2019-04-26/201904262039443940.jpg', '1-1P413151F12D.jpg', '1', '1', '2019-04-26 20:39:44', '2019-04-26 20:39:44', null);
INSERT INTO `ss_file` VALUES ('65', '/upload/admin/image/2019-04-26/201904262040385499.jpg', '1-1P4131515290-L.jpg', '1', '1', '2019-04-26 20:40:38', '2019-04-26 20:40:38', null);
INSERT INTO `ss_file` VALUES ('66', '/upload/admin/image/2019-04-26/201904262041494737.jpg', '1-1P2031133440-L.jpg', '1', '1', '2019-04-26 20:41:49', '2019-04-26 20:41:49', null);
INSERT INTO `ss_file` VALUES ('67', '/upload/admin/image/2019-04-26/201904262042117667.jpg', '1-1P4131514120-L.jpg', '1', '1', '2019-04-26 20:42:11', '2019-04-26 20:42:11', null);
INSERT INTO `ss_file` VALUES ('68', '/upload/admin/image/2019-04-26/201904262043559283.jpg', '1-1P203110222G3.jpg', '1', '1', '2019-04-26 20:43:55', '2019-04-26 20:43:55', null);
INSERT INTO `ss_file` VALUES ('69', '/upload/admin/image/2019-04-26/201904262045593708.jpg', '1-1P413150Q00-L.jpg', '1', '1', '2019-04-26 20:45:59', '2019-04-26 20:45:59', null);
INSERT INTO `ss_file` VALUES ('70', '/upload/admin/image/2019-04-26/201904262046337629.jpg', '1-1P203143532422.jpg', '1', '1', '2019-04-26 20:46:33', '2019-04-26 20:46:33', null);
INSERT INTO `ss_file` VALUES ('71', '/upload/admin/image/2019-04-26/201904262047124403.jpg', '1-1P203145332124.jpg', '1', '1', '2019-04-26 20:47:12', '2019-04-26 20:47:12', null);
INSERT INTO `ss_file` VALUES ('72', '/upload/admin/image/2019-04-26/201904262047401576.jpg', '1-1P2031423224W.jpg', '1', '1', '2019-04-26 20:47:40', '2019-04-26 20:47:40', null);
INSERT INTO `ss_file` VALUES ('73', '/upload/admin/image/2019-04-26/201904262048316931.jpg', '1-1P413150H60-L.jpg', '1', '1', '2019-04-26 20:48:31', '2019-04-26 20:48:31', null);
INSERT INTO `ss_file` VALUES ('74', '/upload/admin/image/2019-04-26/201904262048529355.jpg', '1-1P203142452c9.jpg', '1', '1', '2019-04-26 20:48:52', '2019-04-26 20:48:52', null);
INSERT INTO `ss_file` VALUES ('75', '/upload/admin/image/2019-04-26/201904262139012012.jpg', '1-1P4131502390-L.jpg', '1', '1', '2019-04-26 21:39:01', '2019-04-26 21:39:01', null);
INSERT INTO `ss_file` VALUES ('76', '/upload/admin/image/2019-04-26/201904262139496497.jpg', '1-1P2031559180-L.jpg', '1', '1', '2019-04-26 21:39:49', '2019-04-26 21:39:49', null);
INSERT INTO `ss_file` VALUES ('77', '/upload/admin/image/2019-04-26/201904262140566093.jpg', '1-1P2031559180-L.jpg', '1', '1', '2019-04-26 21:40:56', '2019-04-26 21:40:56', null);
INSERT INTO `ss_file` VALUES ('78', '/upload/admin/image/2019-04-26/201904262142127068.jpg', '1-1P4131459530-L.jpg', '1', '1', '2019-04-26 21:42:12', '2019-04-26 21:42:12', null);
INSERT INTO `ss_file` VALUES ('79', '/upload/admin/image/2019-04-26/201904262142449617.jpg', '1-1P2031514100-L.jpg', '1', '1', '2019-04-26 21:42:44', '2019-04-26 21:42:44', null);
INSERT INTO `ss_file` VALUES ('80', '/upload/admin/image/2019-04-26/201904262143062769.jpg', '1-1P2031513140-L.jpg', '1', '1', '2019-04-26 21:43:06', '2019-04-26 21:43:06', null);
INSERT INTO `ss_file` VALUES ('81', '/upload/admin/image/2019-04-26/201904262143339742.jpg', '1-1P203145332124.jpg', '1', '1', '2019-04-26 21:43:33', '2019-04-26 21:43:33', null);
INSERT INTO `ss_file` VALUES ('82', '/upload/admin/image/2019-04-26/201904262144004538.jpg', '1-1P2031513340-L.jpg', '1', '1', '2019-04-26 21:44:00', '2019-04-26 21:44:00', null);
INSERT INTO `ss_file` VALUES ('83', '/upload/admin/image/2019-04-26/201904262156573761.jpg', 'case.jpg', '1', '1', '2019-04-26 21:56:57', '2019-04-26 21:56:57', null);
INSERT INTO `ss_file` VALUES ('84', '/upload/admin/image/2019-04-26/201904262158055956.jpg', 'news.jpg', '1', '1', '2019-04-26 21:58:05', '2019-04-26 21:58:05', null);
INSERT INTO `ss_file` VALUES ('85', '/upload/admin/image/2019-04-26/201904262159018701.jpg', 'lx.jpg', '1', '1', '2019-04-26 21:59:01', '2019-04-26 21:59:01', null);
INSERT INTO `ss_file` VALUES ('86', '/upload/admin/image/2019-04-27/201904270018319544.jpg', '1-1P203160220P1.jpg', '1', '1', '2019-04-27 00:18:31', '2019-04-27 00:18:31', null);
INSERT INTO `ss_file` VALUES ('87', '/upload/admin/image/2019-04-27/201904270022476058.jpg', '1-1P4131509250-L.jpg', '1', '1', '2019-04-27 00:22:47', '2019-04-27 00:22:47', null);
INSERT INTO `ss_file` VALUES ('88', '/upload/admin/image/2019-04-27/201904270057158417.jpg', 'b1.jpg', '1', '1', '2019-04-27 00:57:15', '2019-04-27 00:57:15', null);
INSERT INTO `ss_file` VALUES ('89', '/upload/admin/image/2019-04-27/201904270057396370.jpg', 'b2.jpg', '1', '1', '2019-04-27 00:57:39', '2019-04-27 00:57:39', null);
INSERT INTO `ss_file` VALUES ('90', '/upload/admin/image/2019-04-27/201904270057597552.jpg', 'b3.jpg', '1', '1', '2019-04-27 00:57:59', '2019-04-27 00:57:59', null);
INSERT INTO `ss_file` VALUES ('91', '/upload/admin/image/2019-04-27/201904270058138944.jpg', 'about.jpg', '1', '1', '2019-04-27 00:58:13', '2019-04-27 00:58:13', null);
INSERT INTO `ss_file` VALUES ('92', '/upload/admin/image/2019-04-27/201904270059006264.jpg', 'cp.jpg', '1', '1', '2019-04-27 00:59:00', '2019-04-27 00:59:00', null);
INSERT INTO `ss_file` VALUES ('93', '/upload/admin/image/2019-04-27/201904270059191393.jpg', 'case.jpg', '1', '1', '2019-04-27 00:59:19', '2019-04-27 00:59:19', null);
INSERT INTO `ss_file` VALUES ('94', '/upload/admin/image/2019-04-27/201904270059553510.jpg', 'news.jpg', '1', '1', '2019-04-27 00:59:55', '2019-04-27 00:59:55', null);
INSERT INTO `ss_file` VALUES ('95', '/upload/admin/image/2019-04-27/201904270100213830.jpg', 'lx.jpg', '1', '1', '2019-04-27 01:00:21', '2019-04-27 01:00:21', null);
INSERT INTO `ss_file` VALUES ('96', '/upload/admin/image/2019-04-27/201904271914531158.jpg', '1500274209.jpg', '1', '1', '2019-04-27 19:14:53', '2019-04-27 19:14:53', null);
INSERT INTO `ss_file` VALUES ('97', '/upload/admin/image/2019-04-28/201904282002319847.jpg', '1500274209.jpg', '1', '1', '2019-04-28 20:02:31', '2019-04-28 20:02:31', null);

-- ----------------------------
-- Table structure for ss_manager
-- ----------------------------
DROP TABLE IF EXISTS `ss_manager`;
CREATE TABLE `ss_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `remember_token` varchar(100) DEFAULT NULL COMMENT 'session令牌',
  `gmt_last_login` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后登录ip',
  `parent` int(11) DEFAULT NULL COMMENT '父级管理员id',
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路径',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `is_system` tinyint(4) DEFAULT NULL COMMENT '是否系统用户',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '修改时间',
  `gmt_delete` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_manager
-- ----------------------------
INSERT INTO `ss_manager` VALUES ('1', 'admin', '$2y$10$K9ZqSDPveI6zuQjOgJj3OeWibeAevedhv5E6vOSLCo2qizF1GAUw.', '24wqQJ5cS048gjNJ3xrG6yIq8AR9dZSCU3xKPfI0UpPT1c7VETjVS89hJ2zB', '2019-05-30 00:44:38', '127.0.0.1', '1', '0,1,1,', '1', '1', '2016-11-25 09:40:30', '2019-05-30 00:44:38', null);
INSERT INTO `ss_manager` VALUES ('2', 'test', '$2y$10$K9ZqSDPveI6zuQjOgJj3OeWibeAevedhv5E6vOSLCo2qizF1GAUw.', 'LcIu9FjtB9uapTJXS5HTuMIAn0SgokQKWfjdIv0xBzJudwGvNciF7a0UgQ48', '2019-05-29 06:27:38', '127.0.0.1', '1', '0,1,1,2,', '99', '0', '2017-11-23 09:28:10', '2019-05-29 06:27:38', null);

-- ----------------------------
-- Table structure for ss_menu
-- ----------------------------
DROP TABLE IF EXISTS `ss_menu`;
CREATE TABLE `ss_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `parent` int(11) DEFAULT NULL COMMENT '父级id',
  `path` varchar(100) DEFAULT NULL COMMENT '路径',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单地址',
  `grade` tinyint(4) DEFAULT NULL COMMENT '菜单等级',
  `sort` int(11) DEFAULT NULL COMMENT '菜单排序',
  `status` tinyint(4) DEFAULT NULL COMMENT '菜单状态',
  `module` tinyint(4) DEFAULT NULL COMMENT '所属模块',
  `is_system` tinyint(4) DEFAULT '0' COMMENT '是否系统菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_menu
-- ----------------------------
INSERT INTO `ss_menu` VALUES ('1', '系统配置', 'system', '0', '0,1,1', '/system', '1', '1', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('2', '管理员管理', 'manager', '1', '0,1,2', '/manager', '2', '2', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('3', '角色管理', 'role', '1', '0,1,3', '/role', '2', '3', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('4', '权限管理', 'permission', '1', '0,1,4', '/permission', '2', '4', '1', '1', '1');
INSERT INTO `ss_menu` VALUES ('5', '菜单管理', 'menu', '1', '0,1,5', '/menu', '2', '5', '1', '1', '1');
INSERT INTO `ss_menu` VALUES ('8', '新闻管理', 'news_manage', '0', '0,8', '/news_manage', '1', '2', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('9', '产品管理', 'product_manage', '0', '0,9', '/product_manage', '1', '3', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('10', '新闻列表', 'news', '8', '0,8,10', '/news', '2', '1', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('11', '产品列表', 'product', '9', '0,9,11', '/product', '2', '1', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('13', '案例管理', 'reveal_manage', '0', '0,13', '/reveal_manage', '1', '4', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('14', '案例列表', 'reveal', '13', '0,13,14', '/reveal', '2', '1', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('15', '网站配置', 'config', '1', '0,1,1,15', '/config', '2', '5', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('16', '关于我们', 'about', '1', '0,1,1,16', '/about', '2', '6', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('17', '联系我们', 'contact', '1', '0,1,1,17', '/contact', '2', '7', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('18', '背景图管理', 'banner', '1', '0,1,1,18', '/banner', '2', '8', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('19', '分类管理', 'category', '1', '0,1,1,19', '/category', '2', '9', '1', '1', '0');
INSERT INTO `ss_menu` VALUES ('20', '反馈管理', 'feedback', '1', '0,1,1,20', '/feedback', '2', '10', '1', '1', '0');

-- ----------------------------
-- Table structure for ss_permission
-- ----------------------------
DROP TABLE IF EXISTS `ss_permission`;
CREATE TABLE `ss_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL COMMENT '所属菜单id',
  `module` tinyint(4) DEFAULT NULL COMMENT '所属模块',
  `is_system` tinyint(4) DEFAULT '0' COMMENT '是否系统权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wx_permissions_code_unique` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ss_permission
-- ----------------------------
INSERT INTO `ss_permission` VALUES ('1', '菜单列表', 'menu.index', '', '5', '1', '1');
INSERT INTO `ss_permission` VALUES ('2', '菜单添加', 'menu.create,menu.store', '', '5', '1', '1');
INSERT INTO `ss_permission` VALUES ('3', '菜单修改', 'menu.edit,menu.update', '', '5', '1', '1');
INSERT INTO `ss_permission` VALUES ('4', '菜单查看', 'menu.show', '', '5', '1', '1');
INSERT INTO `ss_permission` VALUES ('5', '菜单删除', 'menu.destroy', '', '5', '1', '1');
INSERT INTO `ss_permission` VALUES ('6', '管理员列表', 'manager.index', '', '2', '1', '0');
INSERT INTO `ss_permission` VALUES ('7', '管理员添加', 'manager.create,manager.store', '', '2', '1', '0');
INSERT INTO `ss_permission` VALUES ('8', '管理员修改', 'manager.edit,manager.update', '', '2', '1', '0');
INSERT INTO `ss_permission` VALUES ('9', '管理员查看', 'manager.show', '', '2', '1', '0');
INSERT INTO `ss_permission` VALUES ('10', '管理员删除', 'manager.destroy', '', '2', '1', '0');
INSERT INTO `ss_permission` VALUES ('11', '权限列表', 'permission.index', '', '4', '1', '1');
INSERT INTO `ss_permission` VALUES ('12', '权限添加', 'permission.create,permission.store', '', '4', '1', '1');
INSERT INTO `ss_permission` VALUES ('13', '权限修改', 'permission.edit,permission.update', '', '4', '1', '1');
INSERT INTO `ss_permission` VALUES ('14', '权限查看', 'permission.show', '', '4', '1', '1');
INSERT INTO `ss_permission` VALUES ('15', '权限删除', 'permission.destroy', '', '4', '1', '1');
INSERT INTO `ss_permission` VALUES ('16', '角色列表', 'role.index', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('17', '角色添加', 'role.create,role.store', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('18', '角色修改', 'role.edit,role.update', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('19', '角色查看', 'role.show', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('20', '角色删除', 'role.destroy', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('21', '角色授权', 'role.authority', '', '3', '1', '0');
INSERT INTO `ss_permission` VALUES ('22', '新闻列表', 'news.index', '', '10', '1', '0');
INSERT INTO `ss_permission` VALUES ('23', '新闻添加', 'news.create,news.store', '', '10', '1', '0');
INSERT INTO `ss_permission` VALUES ('24', '新闻编辑', 'news.edit,news.update', '', '10', '1', '0');
INSERT INTO `ss_permission` VALUES ('25', '新闻删除', 'news.destroy', '', '10', '1', '0');
INSERT INTO `ss_permission` VALUES ('26', '产品列表', 'product.index', '', '11', '1', '0');
INSERT INTO `ss_permission` VALUES ('27', '产品添加', 'product.create,product.store', '', '11', '1', '0');
INSERT INTO `ss_permission` VALUES ('28', '产品编辑', 'product.edit,product.update', '', '11', '1', '0');
INSERT INTO `ss_permission` VALUES ('29', '产品删除', 'product.destroy', '', '11', '1', '0');
INSERT INTO `ss_permission` VALUES ('30', '案例列表', 'reveal.index', '', '14', '1', '0');
INSERT INTO `ss_permission` VALUES ('31', '案例添加', 'reveal.create,reveal.store', '', '14', '1', '0');
INSERT INTO `ss_permission` VALUES ('32', '案例编辑', 'reveal.edit,reveal.update', '', '14', '1', '0');
INSERT INTO `ss_permission` VALUES ('33', '案例删除', 'reveal.destroy', '', '14', '1', '0');
INSERT INTO `ss_permission` VALUES ('34', '网站配置', 'config.index', '', '15', '1', '0');
INSERT INTO `ss_permission` VALUES ('35', '网站配置编辑', 'config.edit,config.update', '', '15', '1', '0');
INSERT INTO `ss_permission` VALUES ('36', '关于我们', 'about.index', '', '16', '1', '0');
INSERT INTO `ss_permission` VALUES ('37', '关于我们编辑', 'about.edit,about.update', '', '16', '1', '0');
INSERT INTO `ss_permission` VALUES ('38', '联系我们', 'contact.index', '', '17', '1', '0');
INSERT INTO `ss_permission` VALUES ('39', '联系我们编辑', 'contact.edit,contact.update', '', '17', '1', '0');
INSERT INTO `ss_permission` VALUES ('40', '背景图列表', 'banner.index', '', '18', '1', '0');
INSERT INTO `ss_permission` VALUES ('41', '背景图添加', 'banner.create,banner.store', '', '18', '1', '0');
INSERT INTO `ss_permission` VALUES ('42', '背景图编辑', 'banner.edit,banner.update', '', '18', '1', '0');
INSERT INTO `ss_permission` VALUES ('43', '背景图删除', 'banner.destroy', '', '18', '1', '0');
INSERT INTO `ss_permission` VALUES ('44', '分类列表', 'category.index', '', '19', '1', '0');
INSERT INTO `ss_permission` VALUES ('45', '分类添加', 'category.create,category.store', '', '19', '1', '0');
INSERT INTO `ss_permission` VALUES ('46', '分类编辑', 'category.edit,category.update', '', '19', '1', '0');
INSERT INTO `ss_permission` VALUES ('47', '分类删除', 'category.destroy', '', '19', '1', '0');
INSERT INTO `ss_permission` VALUES ('48', '反馈管理', 'feedback.index', '', '20', '1', '0');
INSERT INTO `ss_permission` VALUES ('49', '反馈编辑', 'feedback.edit,feedback.update', '', '20', '1', '0');
INSERT INTO `ss_permission` VALUES ('50', '反馈删除', 'feedback.destroy', '', '20', '1', '0');

-- ----------------------------
-- Table structure for ss_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `ss_permission_role`;
CREATE TABLE `ss_permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `module` tinyint(4) DEFAULT NULL COMMENT '所属模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_permission_role
-- ----------------------------
INSERT INTO `ss_permission_role` VALUES ('1', '22', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('2', '23', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('3', '24', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('4', '25', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('5', '26', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('6', '27', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('7', '28', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('8', '29', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('9', '30', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('10', '31', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('11', '32', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('12', '33', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('13', '34', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('14', '35', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('15', '36', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('16', '37', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('17', '39', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('18', '40', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('19', '38', '2', '1');
INSERT INTO `ss_permission_role` VALUES ('20', '16', '3', '1');
INSERT INTO `ss_permission_role` VALUES ('21', '17', '3', '1');
INSERT INTO `ss_permission_role` VALUES ('22', '18', '3', '1');
INSERT INTO `ss_permission_role` VALUES ('23', '19', '3', '1');
INSERT INTO `ss_permission_role` VALUES ('24', '20', '3', '1');
INSERT INTO `ss_permission_role` VALUES ('25', '21', '3', '1');

-- ----------------------------
-- Table structure for ss_role
-- ----------------------------
DROP TABLE IF EXISTS `ss_role`;
CREATE TABLE `ss_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(10) DEFAULT NULL COMMENT '父级角色id',
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路径',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` tinyint(4) DEFAULT NULL COMMENT '所属模块',
  `is_system` tinyint(4) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_role
-- ----------------------------
INSERT INTO `ss_role` VALUES ('1', '1', '0,1,', '超级管理员', '这是超级管理员', '1', '1', '2016-12-02 09:24:01', '2016-12-02 22:53:56');
INSERT INTO `ss_role` VALUES ('2', '1', '0,1,2,', '测试管理员', '', '1', '0', '2017-11-23 09:27:55', '2017-11-23 09:27:55');
INSERT INTO `ss_role` VALUES ('3', '1', '0,1,3,', '测试', '', '1', '0', '2018-12-16 21:58:56', '2018-12-16 21:58:56');

-- ----------------------------
-- Table structure for ss_role_user
-- ----------------------------
DROP TABLE IF EXISTS `ss_role_user`;
CREATE TABLE `ss_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `module` tinyint(4) DEFAULT NULL COMMENT '所属模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_role_user
-- ----------------------------
INSERT INTO `ss_role_user` VALUES ('1', '1', '1', '1');
INSERT INTO `ss_role_user` VALUES ('2', '2', '2', '1');
