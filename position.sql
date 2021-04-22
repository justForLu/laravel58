/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : position

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/04/2021 10:40:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ss_adviser
-- ----------------------------
DROP TABLE IF EXISTS `ss_adviser`;
CREATE TABLE `ss_adviser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '姓名',
  `position` varchar(10) NOT NULL DEFAULT '' COMMENT '职位',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门店就业顾问';

-- ----------------------------
-- Records of ss_adviser
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ss_answer
-- ----------------------------
DROP TABLE IF EXISTS `ss_answer`;
CREATE TABLE `ss_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0' COMMENT '问题ID',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '回答内容',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回答用户',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示用户名',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='问题回答';

-- ----------------------------
-- Records of ss_answer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ss_banner
-- ----------------------------
DROP TABLE IF EXISTS `ss_banner`;
CREATE TABLE `ss_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片标题',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片地址',
  `link` varchar(128) NOT NULL DEFAULT '' COMMENT '链接地址',
  `alt` varchar(50) NOT NULL DEFAULT '' COMMENT 'alt属性信息',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '位置（1首页，2资讯）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_banner
-- ----------------------------
BEGIN;
INSERT INTO `ss_banner` VALUES (1, '幻灯片1', '/upload/admin/image/2020-08-10/202008100141592307.jpg', 'http://www.baidu.com', '幻灯片111', 1, 0, 1, 1596383023, 1596994921);
INSERT INTO `ss_banner` VALUES (2, '幻灯片2', '/upload/admin/image/2020-08-10/202008100142171074.jpg', 'http://www.baidu.com', '幻灯片111', 1, 0, 1, 1596383262, 1596994938);
INSERT INTO `ss_banner` VALUES (3, '幻灯片3', '/upload/admin/image/2020-08-10/202008100142276168.jpg', 'http://www.baidu.com', '幻灯片111', 1, 0, 1, 1596383468, 1596994949);
INSERT INTO `ss_banner` VALUES (4, '幻灯片4', '/upload/admin/image/2020-08-10/202008100142387700.jpg', 'www.baidu.com', '', 1, 0, 1, 1596991748, 1596994959);
COMMIT;

-- ----------------------------
-- Table structure for ss_category
-- ----------------------------
DROP TABLE IF EXISTS `ss_category`;
CREATE TABLE `ss_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级分类ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分类类型',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序。越大越靠前',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态。1正常，99禁用',
  `image` varchar(32) NOT NULL DEFAULT '' COMMENT '分类图标',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='网站分类表';

-- ----------------------------
-- Records of ss_category
-- ----------------------------
BEGIN;
INSERT INTO `ss_category` VALUES (1, '打工攻略', 0, 1, 4, 1, '', 1581737949, 1596465124, 0);
INSERT INTO `ss_category` VALUES (2, '身在职场', 0, 1, 0, 1, '', 1581737974, 1596465140, 0);
INSERT INTO `ss_category` VALUES (3, '生活百态', 0, 1, 3, 1, '', 1597030279, 1597030279, 0);
INSERT INTO `ss_category` VALUES (4, '新闻动态', 0, 1, 0, 1, '', 1597030292, 1597030292, 0);
COMMIT;

-- ----------------------------
-- Table structure for ss_city
-- ----------------------------
DROP TABLE IF EXISTS `ss_city`;
CREATE TABLE `ss_city` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL DEFAULT '',
  `parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) NOT NULL DEFAULT '0',
  `path` varchar(50) DEFAULT '',
  `grade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`title`),
  KEY `depth` (`grade`),
  KEY `topid` (`topid`),
  KEY `parentid` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=3670 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_city
-- ----------------------------
BEGIN;
INSERT INTO `ss_city` VALUES (1, '北京', 0, 1, ',0,1,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (2, '安徽', 0, 2, ',0,2,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (3, '福建', 0, 3, ',0,3,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (4, '甘肃', 0, 4, ',0,4,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (5, '广东', 0, 5, ',0,5,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (6, '广西', 0, 6, ',0,6,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (7, '贵州', 0, 7, ',0,7,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (8, '海南', 0, 8, ',0,8,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (9, '河北', 0, 9, ',0,9,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (10, '河南', 0, 10, ',0,10,', 1, 1, 1);
INSERT INTO `ss_city` VALUES (11, '黑龙江', 0, 11, ',0,11,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (12, '湖北', 0, 12, ',0,12,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (13, '湖南', 0, 13, ',0,13,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (14, '吉林', 0, 14, ',0,14,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (15, '江苏', 0, 15, ',0,15,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (16, '江西', 0, 16, ',0,16,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (17, '辽宁', 0, 17, ',0,17,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (18, '内蒙古', 0, 18, ',0,18,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (19, '宁夏', 0, 19, ',0,19,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (20, '青海', 0, 20, ',0,20,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (21, '山东', 0, 21, ',0,21,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (22, '山西', 0, 22, ',0,22,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (23, '陕西', 0, 23, ',0,23,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (24, '上海', 0, 24, ',0,24,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (25, '四川', 0, 25, ',0,25,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (26, '天津', 0, 26, ',0,26,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (27, '西藏', 0, 27, ',0,27,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (28, '新疆', 0, 28, ',0,28,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (29, '云南', 0, 29, ',0,29,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (30, '浙江', 0, 30, ',0,30,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (31, '重庆', 0, 31, ',0,31,', 1, 0, 1);
INSERT INTO `ss_city` VALUES (32, '香港', 0, 32, ',0,32,', 1, 0, 0);
INSERT INTO `ss_city` VALUES (33, '澳门', 0, 33, ',0,33,', 1, 0, 0);
INSERT INTO `ss_city` VALUES (34, '台湾', 0, 34, ',0,34,', 1, 0, 0);
INSERT INTO `ss_city` VALUES (35, '安庆', 2, 2, ',0,2,35,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (36, '蚌埠', 2, 2, ',0,2,36,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (37, '巢湖市', 3400, 2, ',0,2,3400,37,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (38, '池州', 2, 2, ',0,2,38,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (39, '滁州', 2, 2, ',0,2,39,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (40, '阜阳', 2, 2, ',0,2,40,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (41, '淮北', 2, 2, ',0,2,41,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (42, '淮南', 2, 2, ',0,2,42,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (43, '黄山', 2, 2, ',0,2,43,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (44, '六安', 2, 2, ',0,2,44,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (45, '马鞍山', 2, 2, ',0,2,45,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (46, '宿州', 2, 2, ',0,2,46,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (47, '铜陵', 2, 2, ',0,2,47,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (48, '芜湖', 2, 2, ',0,2,48,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (49, '宣城', 2, 2, ',0,2,49,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (50, '亳州', 2, 2, ',0,2,50,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (52, '福州', 3, 3, ',0,3,52,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (53, '龙岩', 3, 3, ',0,3,53,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (54, '南平', 3, 3, ',0,3,54,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (55, '宁德', 3, 3, ',0,3,55,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (56, '莆田', 3, 3, ',0,3,56,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (57, '泉州', 3, 3, ',0,3,57,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (58, '三明', 3, 3, ',0,3,58,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (59, '厦门', 3, 3, ',0,3,59,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (60, '漳州', 3, 3, ',0,3,60,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (61, '兰州', 4, 4, ',0,4,61,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (62, '白银', 4, 4, ',0,4,62,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (63, '定西', 4, 4, ',0,4,63,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (64, '甘南州', 4, 4, ',0,4,64,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (65, '嘉峪关', 4, 4, ',0,4,65,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (66, '金昌', 4, 4, ',0,4,66,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (67, '酒泉', 4, 4, ',0,4,67,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (68, '临夏', 4, 4, ',0,4,68,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (69, '陇南', 4, 4, ',0,4,69,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (70, '平凉', 4, 4, ',0,4,70,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (71, '庆阳', 4, 4, ',0,4,71,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (72, '天水', 4, 4, ',0,4,72,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (73, '武威', 4, 4, ',0,4,73,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (74, '张掖', 4, 4, ',0,4,74,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (75, '广州', 5, 5, ',0,5,75,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (76, '深圳', 5, 5, ',0,5,76,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (77, '潮州', 5, 5, ',0,5,77,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (78, '东莞', 5, 5, ',0,5,78,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (79, '佛山', 5, 5, ',0,5,79,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (80, '河源', 5, 5, ',0,5,80,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (81, '惠州', 5, 5, ',0,5,81,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (82, '江门', 5, 5, ',0,5,82,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (83, '揭阳', 5, 5, ',0,5,83,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (84, '茂名', 5, 5, ',0,5,84,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (85, '梅州', 5, 5, ',0,5,85,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (86, '清远', 5, 5, ',0,5,86,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (87, '汕头', 5, 5, ',0,5,87,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (88, '汕尾', 5, 5, ',0,5,88,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (89, '韶关', 5, 5, ',0,5,89,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (90, '阳江', 5, 5, ',0,5,90,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (91, '云浮', 5, 5, ',0,5,91,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (92, '湛江', 5, 5, ',0,5,92,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (93, '肇庆', 5, 5, ',0,5,93,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (94, '中山', 5, 5, ',0,5,94,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (95, '珠海', 5, 5, ',0,5,95,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (96, '南宁', 6, 6, ',0,6,96,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (97, '桂林', 6, 6, ',0,6,97,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (98, '百色', 6, 6, ',0,6,98,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (99, '北海', 6, 6, ',0,6,99,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (100, '崇左', 6, 6, ',0,6,100,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (101, '防城港', 6, 6, ',0,6,101,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (102, '贵港', 6, 6, ',0,6,102,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (103, '河池', 6, 6, ',0,6,103,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (104, '贺州', 6, 6, ',0,6,104,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (105, '来宾', 6, 6, ',0,6,105,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (106, '柳州', 6, 6, ',0,6,106,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (107, '钦州', 6, 6, ',0,6,107,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (108, '梧州', 6, 6, ',0,6,108,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (109, '玉林', 6, 6, ',0,6,109,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (110, '贵阳', 7, 7, ',0,7,110,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (111, '安顺', 7, 7, ',0,7,111,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (112, '毕节', 7, 7, ',0,7,112,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (113, '六盘水', 7, 7, ',0,7,113,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (114, '黔东南', 7, 7, ',0,7,114,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (115, '黔南', 7, 7, ',0,7,115,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (116, '黔西南', 7, 7, ',0,7,116,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (117, '铜仁', 7, 7, ',0,7,117,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (118, '遵义', 7, 7, ',0,7,118,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (119, '海口', 8, 8, ',0,8,119,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (120, '三亚', 8, 8, ',0,8,120,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (121, '白沙县', 8, 8, ',0,8,121,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (122, '保亭县', 8, 8, ',0,8,122,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (123, '昌江县', 8, 8, ',0,8,123,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (124, '澄迈县', 8, 8, ',0,8,124,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (125, '定安县', 8, 8, ',0,8,125,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (126, '东方', 8, 8, ',0,8,126,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (127, '乐东县', 8, 8, ',0,8,127,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (128, '临高县', 8, 8, ',0,8,128,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (129, '陵水县', 8, 8, ',0,8,129,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (130, '琼海', 8, 8, ',0,8,130,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (131, '琼中', 8, 8, ',0,8,131,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (132, '屯昌县', 8, 8, ',0,8,132,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (133, '万宁', 8, 8, ',0,8,133,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (134, '文昌', 8, 8, ',0,8,134,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (135, '五指山', 8, 8, ',0,8,135,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (136, '儋州', 8, 8, ',0,8,136,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (137, '石家庄', 9, 9, ',0,9,137,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (138, '保定', 9, 9, ',0,9,138,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (139, '沧州', 9, 9, ',0,9,139,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (140, '承德', 9, 9, ',0,9,140,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (141, '邯郸', 9, 9, ',0,9,141,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (142, '衡水', 9, 9, ',0,9,142,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (143, '廊坊', 9, 9, ',0,9,143,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (144, '秦皇岛', 9, 9, ',0,9,144,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (145, '唐山', 9, 9, ',0,9,145,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (146, '邢台', 9, 9, ',0,9,146,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (147, '张家口', 9, 9, ',0,9,147,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (148, '郑州', 10, 10, ',0,10,148,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (149, '洛阳', 10, 10, ',0,10,149,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (150, '开封', 10, 10, ',0,10,150,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (151, '安阳', 10, 10, ',0,10,151,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (152, '鹤壁', 10, 10, ',0,10,152,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (153, '济源', 10, 10, ',0,10,153,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (154, '焦作', 10, 10, ',0,10,154,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (155, '南阳', 10, 10, ',0,10,155,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (156, '平顶山', 10, 10, ',0,10,156,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (157, '三门峡', 10, 10, ',0,10,157,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (158, '商丘', 10, 10, ',0,10,158,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (159, '新乡', 10, 10, ',0,10,159,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (160, '信阳', 10, 10, ',0,10,160,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (161, '许昌', 10, 10, ',0,10,161,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (162, '周口', 10, 10, ',0,10,162,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (163, '驻马店', 10, 10, ',0,10,163,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (164, '漯河', 10, 10, ',0,10,164,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (165, '濮阳', 10, 10, ',0,10,165,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (166, '哈尔滨', 11, 11, ',0,11,166,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (167, '大庆', 11, 11, ',0,11,167,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (168, '大兴安岭', 11, 11, ',0,11,168,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (169, '鹤岗', 11, 11, ',0,11,169,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (170, '黑河', 11, 11, ',0,11,170,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (171, '鸡西', 11, 11, ',0,11,171,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (172, '佳木斯', 11, 11, ',0,11,172,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (173, '牡丹江', 11, 11, ',0,11,173,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (174, '七台河', 11, 11, ',0,11,174,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (175, '齐齐哈尔', 11, 11, ',0,11,175,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (176, '双鸭山', 11, 11, ',0,11,176,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (177, '绥化', 11, 11, ',0,11,177,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (178, '伊春', 11, 11, ',0,11,178,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (179, '武汉', 12, 12, ',0,12,179,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (180, '仙桃', 12, 12, ',0,12,180,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (181, '鄂州', 12, 12, ',0,12,181,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (182, '黄冈', 12, 12, ',0,12,182,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (183, '黄石', 12, 12, ',0,12,183,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (184, '荆门', 12, 12, ',0,12,184,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (185, '荆州', 12, 12, ',0,12,185,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (186, '潜江', 12, 12, ',0,12,186,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (187, '神农架林区', 12, 12, ',0,12,187,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (188, '十堰', 12, 12, ',0,12,188,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (189, '随州', 12, 12, ',0,12,189,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (190, '天门', 12, 12, ',0,12,190,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (191, '咸宁', 12, 12, ',0,12,191,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (192, '襄阳', 12, 12, ',0,12,192,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (193, '孝感', 12, 12, ',0,12,193,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (194, '宜昌', 12, 12, ',0,12,194,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (195, '恩施', 12, 12, ',0,12,195,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (196, '长沙', 13, 13, ',0,13,196,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (197, '张家界', 13, 13, ',0,13,197,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (198, '常德', 13, 13, ',0,13,198,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (199, '郴州', 13, 13, ',0,13,199,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (200, '衡阳', 13, 13, ',0,13,200,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (201, '怀化', 13, 13, ',0,13,201,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (202, '娄底', 13, 13, ',0,13,202,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (203, '邵阳', 13, 13, ',0,13,203,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (204, '湘潭', 13, 13, ',0,13,204,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (205, '湘西', 13, 13, ',0,13,205,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (206, '益阳', 13, 13, ',0,13,206,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (207, '永州', 13, 13, ',0,13,207,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (208, '岳阳', 13, 13, ',0,13,208,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (209, '株洲', 13, 13, ',0,13,209,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (210, '长春', 14, 14, ',0,14,210,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (211, '吉林市', 14, 14, ',0,14,211,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (212, '白城', 14, 14, ',0,14,212,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (213, '白山', 14, 14, ',0,14,213,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (214, '辽源', 14, 14, ',0,14,214,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (215, '四平', 14, 14, ',0,14,215,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (216, '松原', 14, 14, ',0,14,216,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (217, '通化', 14, 14, ',0,14,217,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (218, '延边', 14, 14, ',0,14,218,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (219, '南京', 15, 15, ',0,15,219,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (220, '苏州', 15, 15, ',0,15,220,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (221, '无锡', 15, 15, ',0,15,221,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (222, '常州', 15, 15, ',0,15,222,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (223, '淮安', 15, 15, ',0,15,223,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (224, '连云港', 15, 15, ',0,15,224,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (225, '南通', 15, 15, ',0,15,225,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (226, '宿迁', 15, 15, ',0,15,226,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (227, '泰州', 15, 15, ',0,15,227,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (228, '徐州', 15, 15, ',0,15,228,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (229, '盐城', 15, 15, ',0,15,229,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (230, '扬州', 15, 15, ',0,15,230,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (231, '镇江', 15, 15, ',0,15,231,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (232, '南昌', 16, 16, ',0,16,232,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (233, '抚州', 16, 16, ',0,16,233,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (234, '赣州', 16, 16, ',0,16,234,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (235, '吉安', 16, 16, ',0,16,235,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (236, '景德镇', 16, 16, ',0,16,236,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (237, '九江', 16, 16, ',0,16,237,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (238, '萍乡', 16, 16, ',0,16,238,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (239, '上饶', 16, 16, ',0,16,239,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (240, '新余', 16, 16, ',0,16,240,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (241, '宜春', 16, 16, ',0,16,241,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (242, '鹰潭', 16, 16, ',0,16,242,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (243, '沈阳', 17, 17, ',0,17,243,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (244, '大连', 17, 17, ',0,17,244,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (245, '鞍山', 17, 17, ',0,17,245,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (246, '本溪', 17, 17, ',0,17,246,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (247, '朝阳', 17, 17, ',0,17,247,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (248, '丹东', 17, 17, ',0,17,248,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (249, '抚顺', 17, 17, ',0,17,249,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (250, '阜新', 17, 17, ',0,17,250,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (251, '葫芦岛', 17, 17, ',0,17,251,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (252, '锦州', 17, 17, ',0,17,252,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (253, '辽阳', 17, 17, ',0,17,253,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (254, '盘锦', 17, 17, ',0,17,254,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (255, '铁岭', 17, 17, ',0,17,255,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (256, '营口', 17, 17, ',0,17,256,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (257, '呼和浩特', 18, 18, ',0,18,257,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (258, '阿拉善盟', 18, 18, ',0,18,258,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (259, '巴彦淖尔', 18, 18, ',0,18,259,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (260, '包头', 18, 18, ',0,18,260,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (261, '赤峰', 18, 18, ',0,18,261,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (262, '鄂尔多斯', 18, 18, ',0,18,262,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (263, '呼伦贝尔', 18, 18, ',0,18,263,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (264, '通辽', 18, 18, ',0,18,264,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (265, '乌海', 18, 18, ',0,18,265,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (266, '乌兰察布', 18, 18, ',0,18,266,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (267, '锡林郭勒', 18, 18, ',0,18,267,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (268, '兴安盟', 18, 18, ',0,18,268,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (269, '银川', 19, 19, ',0,19,269,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (270, '固原', 19, 19, ',0,19,270,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (271, '石嘴山', 19, 19, ',0,19,271,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (272, '吴忠', 19, 19, ',0,19,272,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (273, '中卫', 19, 19, ',0,19,273,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (274, '西宁', 20, 20, ',0,20,274,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (275, '果洛', 20, 20, ',0,20,275,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (276, '海北', 20, 20, ',0,20,276,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (277, '海东', 20, 20, ',0,20,277,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (278, '海南州', 20, 20, ',0,20,278,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (279, '海西', 20, 20, ',0,20,279,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (280, '黄南', 20, 20, ',0,20,280,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (281, '玉树', 20, 20, ',0,20,281,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (282, '济南', 21, 21, ',0,21,282,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (283, '青岛', 21, 21, ',0,21,283,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (284, '滨州', 21, 21, ',0,21,284,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (285, '德州', 21, 21, ',0,21,285,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (286, '东营', 21, 21, ',0,21,286,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (287, '菏泽', 21, 21, ',0,21,287,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (288, '济宁', 21, 21, ',0,21,288,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (289, '莱芜', 21, 21, ',0,21,289,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (290, '聊城', 21, 21, ',0,21,290,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (291, '临沂', 21, 21, ',0,21,291,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (292, '日照', 21, 21, ',0,21,292,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (293, '泰安', 21, 21, ',0,21,293,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (294, '威海', 21, 21, ',0,21,294,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (295, '潍坊', 21, 21, ',0,21,295,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (296, '烟台', 21, 21, ',0,21,296,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (297, '枣庄', 21, 21, ',0,21,297,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (298, '淄博', 21, 21, ',0,21,298,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (299, '太原', 22, 22, ',0,22,299,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (300, '长治', 22, 22, ',0,22,300,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (301, '大同', 22, 22, ',0,22,301,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (302, '晋城', 22, 22, ',0,22,302,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (303, '晋中', 22, 22, ',0,22,303,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (304, '临汾', 22, 22, ',0,22,304,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (305, '吕梁', 22, 22, ',0,22,305,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (306, '朔州', 22, 22, ',0,22,306,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (307, '忻州', 22, 22, ',0,22,307,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (308, '阳泉', 22, 22, ',0,22,308,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (309, '运城', 22, 22, ',0,22,309,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (310, '西安', 23, 23, ',0,23,310,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (311, '安康', 23, 23, ',0,23,311,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (312, '宝鸡', 23, 23, ',0,23,312,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (313, '汉中', 23, 23, ',0,23,313,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (314, '商洛', 23, 23, ',0,23,314,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (315, '铜川', 23, 23, ',0,23,315,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (316, '渭南', 23, 23, ',0,23,316,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (317, '咸阳', 23, 23, ',0,23,317,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (318, '延安', 23, 23, ',0,23,318,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (319, '榆林', 23, 23, ',0,23,319,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (321, '成都', 25, 25, ',0,25,321,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (322, '绵阳', 25, 25, ',0,25,322,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (323, '阿坝', 25, 25, ',0,25,323,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (324, '巴中', 25, 25, ',0,25,324,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (325, '达州', 25, 25, ',0,25,325,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (326, '德阳', 25, 25, ',0,25,326,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (327, '甘孜', 25, 25, ',0,25,327,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (328, '广安', 25, 25, ',0,25,328,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (329, '广元', 25, 25, ',0,25,329,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (330, '乐山', 25, 25, ',0,25,330,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (331, '凉山', 25, 25, ',0,25,331,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (332, '眉山', 25, 25, ',0,25,332,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (333, '南充', 25, 25, ',0,25,333,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (334, '内江', 25, 25, ',0,25,334,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (335, '攀枝花', 25, 25, ',0,25,335,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (336, '遂宁', 25, 25, ',0,25,336,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (337, '雅安', 25, 25, ',0,25,337,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (338, '宜宾', 25, 25, ',0,25,338,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (339, '资阳', 25, 25, ',0,25,339,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (340, '自贡', 25, 25, ',0,25,340,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (341, '泸州', 25, 25, ',0,25,341,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (343, '拉萨', 27, 27, ',0,27,343,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (344, '阿里', 27, 27, ',0,27,344,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (345, '昌都', 27, 27, ',0,27,345,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (346, '林芝', 27, 27, ',0,27,346,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (347, '那曲', 27, 27, ',0,27,347,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (348, '日喀则', 27, 27, ',0,27,348,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (349, '山南', 27, 27, ',0,27,349,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (350, '乌鲁木齐', 28, 28, ',0,28,350,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (351, '阿克苏', 28, 28, ',0,28,351,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (352, '阿拉尔', 28, 28, ',0,28,352,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (353, '巴音郭楞', 28, 28, ',0,28,353,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (354, '博尔塔拉', 28, 28, ',0,28,354,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (355, '昌吉', 28, 28, ',0,28,355,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (356, '哈密', 28, 28, ',0,28,356,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (357, '和田', 28, 28, ',0,28,357,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (358, '喀什', 28, 28, ',0,28,358,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (359, '克拉玛依', 28, 28, ',0,28,359,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (360, '克孜勒苏', 28, 28, ',0,28,360,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (361, '石河子', 28, 28, ',0,28,361,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (362, '图木舒克', 28, 28, ',0,28,362,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (363, '吐鲁番', 28, 28, ',0,28,363,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (364, '五家渠', 28, 28, ',0,28,364,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (365, '伊犁', 28, 28, ',0,28,365,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (366, '昆明', 29, 29, ',0,29,366,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (367, '怒江', 29, 29, ',0,29,367,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (368, '普洱', 29, 29, ',0,29,368,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (369, '丽江', 29, 29, ',0,29,369,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (370, '保山', 29, 29, ',0,29,370,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (371, '楚雄', 29, 29, ',0,29,371,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (372, '大理', 29, 29, ',0,29,372,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (373, '德宏', 29, 29, ',0,29,373,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (374, '迪庆', 29, 29, ',0,29,374,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (375, '红河', 29, 29, ',0,29,375,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (376, '临沧', 29, 29, ',0,29,376,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (377, '曲靖', 29, 29, ',0,29,377,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (378, '文山', 29, 29, ',0,29,378,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (379, '西双版纳', 29, 29, ',0,29,379,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (380, '玉溪', 29, 29, ',0,29,380,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (381, '昭通', 29, 29, ',0,29,381,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (382, '杭州', 30, 30, ',0,30,382,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (383, '湖州', 30, 30, ',0,30,383,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (384, '嘉兴', 30, 30, ',0,30,384,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (385, '金华', 30, 30, ',0,30,385,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (386, '丽水', 30, 30, ',0,30,386,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (387, '宁波', 30, 30, ',0,30,387,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (388, '绍兴', 30, 30, ',0,30,388,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (389, '台州', 30, 30, ',0,30,389,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (390, '温州', 30, 30, ',0,30,390,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (391, '舟山', 30, 30, ',0,30,391,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (392, '衢州', 30, 30, ',0,30,392,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (397, '迎江区', 35, 2, ',0,2,35,397,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (398, '大观区', 35, 2, ',0,2,35,398,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (399, '宜秀区', 35, 2, ',0,2,35,399,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (400, '桐城市', 35, 2, ',0,2,35,400,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (401, '怀宁县', 35, 2, ',0,2,35,401,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (402, '枞阳县', 47, 2, ',0,2,47,402,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (403, '潜山县', 35, 2, ',0,2,35,403,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (404, '太湖县', 35, 2, ',0,2,35,404,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (405, '宿松县', 35, 2, ',0,2,35,405,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (406, '望江县', 35, 2, ',0,2,35,406,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (407, '岳西县', 35, 2, ',0,2,35,407,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3644, '沙湾区', 330, 25, ',0,25,330,3644,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3645, '金口河区', 330, 25, ',0,25,330,3645,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3646, '开发区', 330, 25, ',0,25,330,3646,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3643, '五通桥区', 330, 25, ',0,25,330,3643,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (412, '怀远县', 36, 2, ',0,2,36,412,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (413, '五河县', 36, 2, ',0,2,36,413,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (414, '固镇县', 36, 2, ',0,2,36,414,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (416, '庐江县', 3400, 2, ',0,2,3400,416,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (417, '无为县', 48, 2, ',0,2,48,417,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (418, '含山县', 45, 2, ',0,2,45,418,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (419, '和县', 45, 2, ',0,2,45,419,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (420, '贵池区', 38, 2, ',0,2,38,420,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (421, '东至县', 38, 2, ',0,2,38,421,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (422, '石台县', 38, 2, ',0,2,38,422,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (423, '青阳县', 38, 2, ',0,2,38,423,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (424, '琅琊区', 39, 2, ',0,2,39,424,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (425, '南谯区', 39, 2, ',0,2,39,425,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (426, '天长市', 39, 2, ',0,2,39,426,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (427, '明光市', 39, 2, ',0,2,39,427,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (428, '来安县', 39, 2, ',0,2,39,428,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (429, '全椒县', 39, 2, ',0,2,39,429,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (430, '定远县', 39, 2, ',0,2,39,430,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (431, '凤阳县', 39, 2, ',0,2,39,431,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (432, '蚌山区', 36, 2, ',0,2,36,432,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (433, '龙子湖区', 36, 2, ',0,2,36,433,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (434, '禹会区', 36, 2, ',0,2,36,434,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (435, '淮上区', 36, 2, ',0,2,36,435,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (436, '颍州区', 40, 2, ',0,2,40,436,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (437, '颍东区', 40, 2, ',0,2,40,437,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (438, '颍泉区', 40, 2, ',0,2,40,438,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (439, '界首市', 40, 2, ',0,2,40,439,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (440, '临泉县', 40, 2, ',0,2,40,440,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (441, '太和县', 40, 2, ',0,2,40,441,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (442, '阜南县', 40, 2, ',0,2,40,442,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (443, '颍上县', 40, 2, ',0,2,40,443,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (444, '相山区', 41, 2, ',0,2,41,444,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (445, '杜集区', 41, 2, ',0,2,41,445,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (446, '烈山区', 41, 2, ',0,2,41,446,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (447, '濉溪县', 41, 2, ',0,2,41,447,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (448, '田家庵区', 42, 2, ',0,2,42,448,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (449, '大通区', 42, 2, ',0,2,42,449,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (450, '谢家集区', 42, 2, ',0,2,42,450,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (451, '八公山区', 42, 2, ',0,2,42,451,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (452, '潘集区', 42, 2, ',0,2,42,452,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (453, '凤台县', 42, 2, ',0,2,42,453,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (454, '屯溪区', 43, 2, ',0,2,43,454,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (455, '黄山区', 43, 2, ',0,2,43,455,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (456, '徽州区', 43, 2, ',0,2,43,456,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (457, '歙县', 43, 2, ',0,2,43,457,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (458, '休宁县', 43, 2, ',0,2,43,458,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (459, '黟县', 43, 2, ',0,2,43,459,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (460, '祁门县', 43, 2, ',0,2,43,460,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (461, '金安区', 44, 2, ',0,2,44,461,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (462, '裕安区', 44, 2, ',0,2,44,462,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (463, '寿县', 44, 2, ',0,2,44,463,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (464, '霍邱县', 44, 2, ',0,2,44,464,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (465, '舒城县', 44, 2, ',0,2,44,465,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (466, '金寨县', 44, 2, ',0,2,44,466,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (467, '霍山县', 44, 2, ',0,2,44,467,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (468, '雨山区', 45, 2, ',0,2,45,468,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (469, '花山区', 45, 2, ',0,2,45,469,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (470, '金家庄区', 45, 2, ',0,2,45,470,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (471, '当涂县', 45, 2, ',0,2,45,471,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (472, '埇桥区', 46, 2, ',0,2,46,472,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (473, '砀山县', 46, 2, ',0,2,46,473,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (474, '萧县', 46, 2, ',0,2,46,474,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (475, '灵璧县', 46, 2, ',0,2,46,475,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (476, '泗县', 46, 2, ',0,2,46,476,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (477, '铜官区', 47, 2, ',0,2,47,477,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (479, '郊区', 47, 2, ',0,2,47,479,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (480, '义安区', 47, 2, ',0,2,47,480,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (481, '镜湖区', 48, 2, ',0,2,48,481,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (482, '弋江区', 48, 2, ',0,2,48,482,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (483, '鸠江区', 48, 2, ',0,2,48,483,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (484, '三山区', 48, 2, ',0,2,48,484,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (485, '芜湖县', 48, 2, ',0,2,48,485,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (486, '繁昌县', 48, 2, ',0,2,48,486,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (487, '南陵县', 48, 2, ',0,2,48,487,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (488, '宣州区', 49, 2, ',0,2,49,488,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (489, '宁国市', 49, 2, ',0,2,49,489,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (490, '郎溪县', 49, 2, ',0,2,49,490,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (491, '广德县', 49, 2, ',0,2,49,491,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (492, '泾县', 49, 2, ',0,2,49,492,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (493, '绩溪县', 49, 2, ',0,2,49,493,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (494, '旌德县', 49, 2, ',0,2,49,494,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (495, '涡阳县', 50, 2, ',0,2,50,495,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (496, '蒙城县', 50, 2, ',0,2,50,496,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (497, '利辛县', 50, 2, ',0,2,50,497,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (498, '谯城区', 50, 2, ',0,2,50,498,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (499, '东城区', 1, 1, ',0,1,499,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (500, '西城区', 1, 1, ',0,1,500,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (501, '海淀区', 1, 1, ',0,1,501,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (502, '朝阳区', 1, 1, ',0,1,502,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (505, '丰台区', 1, 1, ',0,1,505,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (506, '石景山区', 1, 1, ',0,1,506,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (507, '房山区', 1, 1, ',0,1,507,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (508, '门头沟区', 1, 1, ',0,1,508,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (509, '通州区', 1, 1, ',0,1,509,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (510, '顺义区', 1, 1, ',0,1,510,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (511, '昌平区', 1, 1, ',0,1,511,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (512, '怀柔区', 1, 1, ',0,1,512,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (513, '平谷区', 1, 1, ',0,1,513,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (514, '大兴区', 1, 1, ',0,1,514,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (515, '密云县', 1, 1, ',0,1,515,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (516, '延庆县', 1, 1, ',0,1,516,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (517, '鼓楼区', 52, 3, ',0,3,52,517,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (518, '台江区', 52, 3, ',0,3,52,518,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (519, '仓山区', 52, 3, ',0,3,52,519,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (520, '马尾区', 52, 3, ',0,3,52,520,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (521, '晋安区', 52, 3, ',0,3,52,521,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (522, '福清市', 52, 3, ',0,3,52,522,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (523, '长乐市', 52, 3, ',0,3,52,523,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (524, '闽侯县', 52, 3, ',0,3,52,524,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (525, '连江县', 52, 3, ',0,3,52,525,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (526, '罗源县', 52, 3, ',0,3,52,526,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (527, '闽清县', 52, 3, ',0,3,52,527,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (528, '永泰县', 52, 3, ',0,3,52,528,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (529, '平潭县', 52, 3, ',0,3,52,529,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (530, '新罗区', 53, 3, ',0,3,53,530,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (531, '漳平市', 53, 3, ',0,3,53,531,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (532, '长汀县', 53, 3, ',0,3,53,532,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (533, '永定县', 53, 3, ',0,3,53,533,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (534, '上杭县', 53, 3, ',0,3,53,534,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (535, '武平县', 53, 3, ',0,3,53,535,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (536, '连城县', 53, 3, ',0,3,53,536,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (537, '延平区', 54, 3, ',0,3,54,537,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (538, '邵武市', 54, 3, ',0,3,54,538,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (539, '武夷山市', 54, 3, ',0,3,54,539,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (540, '建瓯市', 54, 3, ',0,3,54,540,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (541, '建阳市', 54, 3, ',0,3,54,541,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (542, '顺昌县', 54, 3, ',0,3,54,542,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (543, '浦城县', 54, 3, ',0,3,54,543,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (544, '光泽县', 54, 3, ',0,3,54,544,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (545, '松溪县', 54, 3, ',0,3,54,545,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (546, '政和县', 54, 3, ',0,3,54,546,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (547, '蕉城区', 55, 3, ',0,3,55,547,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (548, '福安市', 55, 3, ',0,3,55,548,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (549, '福鼎市', 55, 3, ',0,3,55,549,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (550, '霞浦县', 55, 3, ',0,3,55,550,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (551, '古田县', 55, 3, ',0,3,55,551,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (552, '屏南县', 55, 3, ',0,3,55,552,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (553, '寿宁县', 55, 3, ',0,3,55,553,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (554, '周宁县', 55, 3, ',0,3,55,554,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (555, '柘荣县', 55, 3, ',0,3,55,555,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (556, '城厢区', 56, 3, ',0,3,56,556,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (557, '涵江区', 56, 3, ',0,3,56,557,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (558, '荔城区', 56, 3, ',0,3,56,558,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (559, '秀屿区', 56, 3, ',0,3,56,559,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (560, '仙游县', 56, 3, ',0,3,56,560,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (561, '鲤城区', 57, 3, ',0,3,57,561,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (562, '丰泽区', 57, 3, ',0,3,57,562,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (563, '洛江区', 57, 3, ',0,3,57,563,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (564, '清濛开发区', 57, 3, ',0,3,57,564,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (565, '泉港区', 57, 3, ',0,3,57,565,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (566, '石狮市', 57, 3, ',0,3,57,566,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (567, '晋江市', 57, 3, ',0,3,57,567,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (568, '南安市', 57, 3, ',0,3,57,568,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (569, '惠安县', 57, 3, ',0,3,57,569,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (570, '安溪县', 57, 3, ',0,3,57,570,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (571, '永春县', 57, 3, ',0,3,57,571,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (572, '德化县', 57, 3, ',0,3,57,572,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (573, '金门县', 57, 3, ',0,3,57,573,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (574, '梅列区', 58, 3, ',0,3,58,574,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (575, '三元区', 58, 3, ',0,3,58,575,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (576, '永安市', 58, 3, ',0,3,58,576,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (577, '明溪县', 58, 3, ',0,3,58,577,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (578, '清流县', 58, 3, ',0,3,58,578,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (579, '宁化县', 58, 3, ',0,3,58,579,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (580, '大田县', 58, 3, ',0,3,58,580,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (581, '尤溪县', 58, 3, ',0,3,58,581,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (582, '沙县', 58, 3, ',0,3,58,582,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (583, '将乐县', 58, 3, ',0,3,58,583,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (584, '泰宁县', 58, 3, ',0,3,58,584,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (585, '建宁县', 58, 3, ',0,3,58,585,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (586, '思明区', 59, 3, ',0,3,59,586,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (587, '海沧区', 59, 3, ',0,3,59,587,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (588, '湖里区', 59, 3, ',0,3,59,588,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (589, '集美区', 59, 3, ',0,3,59,589,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (590, '同安区', 59, 3, ',0,3,59,590,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (591, '翔安区', 59, 3, ',0,3,59,591,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (592, '芗城区', 60, 3, ',0,3,60,592,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (593, '龙文区', 60, 3, ',0,3,60,593,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (594, '龙海市', 60, 3, ',0,3,60,594,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (595, '云霄县', 60, 3, ',0,3,60,595,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (596, '漳浦县', 60, 3, ',0,3,60,596,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (597, '诏安县', 60, 3, ',0,3,60,597,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (598, '长泰县', 60, 3, ',0,3,60,598,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (599, '东山县', 60, 3, ',0,3,60,599,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (600, '南靖县', 60, 3, ',0,3,60,600,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (601, '平和县', 60, 3, ',0,3,60,601,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (602, '华安县', 60, 3, ',0,3,60,602,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (603, '皋兰县', 61, 4, ',0,4,61,603,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (604, '城关区', 61, 4, ',0,4,61,604,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (605, '七里河区', 61, 4, ',0,4,61,605,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (606, '西固区', 61, 4, ',0,4,61,606,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (607, '安宁区', 61, 4, ',0,4,61,607,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (608, '红古区', 61, 4, ',0,4,61,608,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (609, '永登县', 61, 4, ',0,4,61,609,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (610, '榆中县', 61, 4, ',0,4,61,610,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (611, '白银区', 62, 4, ',0,4,62,611,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (612, '平川区', 62, 4, ',0,4,62,612,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (613, '会宁县', 62, 4, ',0,4,62,613,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (614, '景泰县', 62, 4, ',0,4,62,614,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (615, '靖远县', 62, 4, ',0,4,62,615,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (616, '临洮县', 63, 4, ',0,4,63,616,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (617, '陇西县', 63, 4, ',0,4,63,617,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (618, '通渭县', 63, 4, ',0,4,63,618,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (619, '渭源县', 63, 4, ',0,4,63,619,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (620, '漳县', 63, 4, ',0,4,63,620,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (621, '岷县', 63, 4, ',0,4,63,621,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (622, '安定区', 63, 4, ',0,4,63,622,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (623, '安定区', 63, 4, ',0,4,63,623,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (624, '合作市', 64, 4, ',0,4,64,624,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (625, '临潭县', 64, 4, ',0,4,64,625,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (626, '卓尼县', 64, 4, ',0,4,64,626,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (627, '舟曲县', 64, 4, ',0,4,64,627,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (628, '迭部县', 64, 4, ',0,4,64,628,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (629, '玛曲县', 64, 4, ',0,4,64,629,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (630, '碌曲县', 64, 4, ',0,4,64,630,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (631, '夏河县', 64, 4, ',0,4,64,631,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (632, '雄关区', 65, 4, ',0,4,65,632,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (633, '金川区', 66, 4, ',0,4,66,633,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (634, '永昌县', 66, 4, ',0,4,66,634,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (635, '肃州区', 67, 4, ',0,4,67,635,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (636, '玉门市', 67, 4, ',0,4,67,636,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (637, '敦煌市', 67, 4, ',0,4,67,637,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (638, '金塔县', 67, 4, ',0,4,67,638,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (639, '瓜州县', 67, 4, ',0,4,67,639,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (640, '肃北县', 67, 4, ',0,4,67,640,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (641, '阿克塞', 67, 4, ',0,4,67,641,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (642, '临夏市', 68, 4, ',0,4,68,642,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (643, '临夏县', 68, 4, ',0,4,68,643,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (644, '康乐县', 68, 4, ',0,4,68,644,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (645, '永靖县', 68, 4, ',0,4,68,645,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (646, '广河县', 68, 4, ',0,4,68,646,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (647, '和政县', 68, 4, ',0,4,68,647,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (648, '东乡族自治县', 68, 4, ',0,4,68,648,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (649, '积石山', 68, 4, ',0,4,68,649,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (650, '成县', 69, 4, ',0,4,69,650,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (651, '徽县', 69, 4, ',0,4,69,651,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (652, '康县', 69, 4, ',0,4,69,652,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (653, '礼县', 69, 4, ',0,4,69,653,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (654, '两当县', 69, 4, ',0,4,69,654,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (655, '文县', 69, 4, ',0,4,69,655,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (656, '西和县', 69, 4, ',0,4,69,656,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (657, '宕昌县', 69, 4, ',0,4,69,657,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (658, '武都区', 69, 4, ',0,4,69,658,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (659, '崇信县', 70, 4, ',0,4,70,659,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (660, '华亭县', 70, 4, ',0,4,70,660,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (661, '静宁县', 70, 4, ',0,4,70,661,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (662, '灵台县', 70, 4, ',0,4,70,662,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (663, '崆峒区', 70, 4, ',0,4,70,663,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (664, '庄浪县', 70, 4, ',0,4,70,664,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (665, '泾川县', 70, 4, ',0,4,70,665,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (666, '合水县', 71, 4, ',0,4,71,666,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (667, '华池县', 71, 4, ',0,4,71,667,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (668, '环县', 71, 4, ',0,4,71,668,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (669, '宁县', 71, 4, ',0,4,71,669,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (670, '庆城县', 71, 4, ',0,4,71,670,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (671, '西峰区', 71, 4, ',0,4,71,671,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (672, '镇原县', 71, 4, ',0,4,71,672,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (673, '正宁县', 71, 4, ',0,4,71,673,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (674, '甘谷县', 72, 4, ',0,4,72,674,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (675, '秦安县', 72, 4, ',0,4,72,675,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (676, '清水县', 72, 4, ',0,4,72,676,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (677, '秦州区', 72, 4, ',0,4,72,677,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (678, '麦积区', 72, 4, ',0,4,72,678,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (679, '武山县', 72, 4, ',0,4,72,679,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (680, '张家川', 72, 4, ',0,4,72,680,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (681, '古浪县', 73, 4, ',0,4,73,681,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (682, '民勤县', 73, 4, ',0,4,73,682,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (683, '天祝县', 73, 4, ',0,4,73,683,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (684, '凉州区', 73, 4, ',0,4,73,684,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (685, '高台县', 74, 4, ',0,4,74,685,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (686, '临泽县', 74, 4, ',0,4,74,686,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (687, '民乐县', 74, 4, ',0,4,74,687,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (688, '山丹县', 74, 4, ',0,4,74,688,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (689, '肃南县', 74, 4, ',0,4,74,689,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (690, '甘州区', 74, 4, ',0,4,74,690,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (691, '从化区', 75, 5, ',0,5,75,691,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (692, '天河区', 75, 5, ',0,5,75,692,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3655, '南沙区', 75, 5, ',0,5,75,3655,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (694, '白云区', 75, 5, ',0,5,75,694,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (695, '海珠区', 75, 5, ',0,5,75,695,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (696, '荔湾区', 75, 5, ',0,5,75,696,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (697, '越秀区', 75, 5, ',0,5,75,697,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (698, '黄埔区', 75, 5, ',0,5,75,698,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (699, '番禺区', 75, 5, ',0,5,75,699,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (700, '花都区', 75, 5, ',0,5,75,700,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (701, '增城区', 75, 5, ',0,5,75,701,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (704, '福田区', 76, 5, ',0,5,76,704,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (705, '罗湖区', 76, 5, ',0,5,76,705,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (706, '南山区', 76, 5, ',0,5,76,706,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (707, '宝安区', 76, 5, ',0,5,76,707,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (708, '龙岗区', 76, 5, ',0,5,76,708,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (709, '盐田区', 76, 5, ',0,5,76,709,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (710, '湘桥区', 77, 5, ',0,5,77,710,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (711, '潮安县', 77, 5, ',0,5,77,711,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (712, '饶平县', 77, 5, ',0,5,77,712,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (713, '南城区', 78, 5, ',0,5,78,713,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (714, '东城区', 78, 5, ',0,5,78,714,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (715, '万江区', 78, 5, ',0,5,78,715,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (716, '莞城区', 78, 5, ',0,5,78,716,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (717, '石龙镇', 78, 5, ',0,5,78,717,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (718, '虎门镇', 78, 5, ',0,5,78,718,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (719, '麻涌镇', 78, 5, ',0,5,78,719,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (720, '道滘镇', 78, 5, ',0,5,78,720,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (721, '石碣镇', 78, 5, ',0,5,78,721,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (722, '沙田镇', 78, 5, ',0,5,78,722,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (723, '望牛墩镇', 78, 5, ',0,5,78,723,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (724, '洪梅镇', 78, 5, ',0,5,78,724,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (725, '茶山镇', 78, 5, ',0,5,78,725,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (726, '寮步镇', 78, 5, ',0,5,78,726,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (727, '大岭山镇', 78, 5, ',0,5,78,727,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (728, '大朗镇', 78, 5, ',0,5,78,728,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (729, '黄江镇', 78, 5, ',0,5,78,729,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (730, '樟木头', 78, 5, ',0,5,78,730,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (731, '凤岗镇', 78, 5, ',0,5,78,731,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (732, '塘厦镇', 78, 5, ',0,5,78,732,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (733, '谢岗镇', 78, 5, ',0,5,78,733,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (734, '厚街镇', 78, 5, ',0,5,78,734,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (735, '清溪镇', 78, 5, ',0,5,78,735,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (736, '常平镇', 78, 5, ',0,5,78,736,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (737, '桥头镇', 78, 5, ',0,5,78,737,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (738, '横沥镇', 78, 5, ',0,5,78,738,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (739, '东坑镇', 78, 5, ',0,5,78,739,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (740, '企石镇', 78, 5, ',0,5,78,740,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (741, '石排镇', 78, 5, ',0,5,78,741,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (742, '长安镇', 78, 5, ',0,5,78,742,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (743, '中堂镇', 78, 5, ',0,5,78,743,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (744, '高埗镇', 78, 5, ',0,5,78,744,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (745, '禅城区', 79, 5, ',0,5,79,745,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (746, '南海区', 79, 5, ',0,5,79,746,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (747, '顺德区', 79, 5, ',0,5,79,747,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (748, '三水区', 79, 5, ',0,5,79,748,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (749, '高明区', 79, 5, ',0,5,79,749,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (750, '东源县', 80, 5, ',0,5,80,750,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (751, '和平县', 80, 5, ',0,5,80,751,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (752, '源城区', 80, 5, ',0,5,80,752,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (753, '连平县', 80, 5, ',0,5,80,753,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (754, '龙川县', 80, 5, ',0,5,80,754,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (755, '紫金县', 80, 5, ',0,5,80,755,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (756, '惠阳区', 81, 5, ',0,5,81,756,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (757, '惠城区', 81, 5, ',0,5,81,757,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (758, '大亚湾', 81, 5, ',0,5,81,758,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (759, '博罗县', 81, 5, ',0,5,81,759,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (760, '惠东县', 81, 5, ',0,5,81,760,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (761, '龙门县', 81, 5, ',0,5,81,761,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (762, '江海区', 82, 5, ',0,5,82,762,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (763, '蓬江区', 82, 5, ',0,5,82,763,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (764, '新会区', 82, 5, ',0,5,82,764,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (765, '台山市', 82, 5, ',0,5,82,765,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (766, '开平市', 82, 5, ',0,5,82,766,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (767, '鹤山市', 82, 5, ',0,5,82,767,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (768, '恩平市', 82, 5, ',0,5,82,768,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (769, '榕城区', 83, 5, ',0,5,83,769,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (770, '普宁市', 83, 5, ',0,5,83,770,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (771, '揭东县', 83, 5, ',0,5,83,771,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (772, '揭西县', 83, 5, ',0,5,83,772,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (773, '惠来县', 83, 5, ',0,5,83,773,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (774, '茂南区', 84, 5, ',0,5,84,774,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (775, '茂港区', 84, 5, ',0,5,84,775,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (776, '高州市', 84, 5, ',0,5,84,776,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (777, '化州市', 84, 5, ',0,5,84,777,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (778, '信宜市', 84, 5, ',0,5,84,778,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (779, '电白县', 84, 5, ',0,5,84,779,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (780, '梅县', 85, 5, ',0,5,85,780,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (781, '梅江区', 85, 5, ',0,5,85,781,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (782, '兴宁市', 85, 5, ',0,5,85,782,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (783, '大埔县', 85, 5, ',0,5,85,783,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (784, '丰顺县', 85, 5, ',0,5,85,784,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (785, '五华县', 85, 5, ',0,5,85,785,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (786, '平远县', 85, 5, ',0,5,85,786,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (787, '蕉岭县', 85, 5, ',0,5,85,787,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (788, '清城区', 86, 5, ',0,5,86,788,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (789, '英德市', 86, 5, ',0,5,86,789,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (790, '连州市', 86, 5, ',0,5,86,790,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (791, '佛冈县', 86, 5, ',0,5,86,791,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (792, '阳山县', 86, 5, ',0,5,86,792,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (793, '清新县', 86, 5, ',0,5,86,793,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (794, '连山县', 86, 5, ',0,5,86,794,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (795, '连南县', 86, 5, ',0,5,86,795,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (796, '南澳县', 87, 5, ',0,5,87,796,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (797, '潮阳区', 87, 5, ',0,5,87,797,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (798, '澄海区', 87, 5, ',0,5,87,798,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (799, '龙湖区', 87, 5, ',0,5,87,799,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (800, '金平区', 87, 5, ',0,5,87,800,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (801, '濠江区', 87, 5, ',0,5,87,801,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (802, '潮南区', 87, 5, ',0,5,87,802,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (803, '城区', 88, 5, ',0,5,88,803,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (804, '陆丰市', 88, 5, ',0,5,88,804,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (805, '海丰县', 88, 5, ',0,5,88,805,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (806, '陆河县', 88, 5, ',0,5,88,806,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (807, '曲江区', 89, 5, ',0,5,89,807,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (808, '浈江区', 89, 5, ',0,5,89,808,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (809, '武江区', 89, 5, ',0,5,89,809,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (810, '曲江区', 89, 5, ',0,5,89,810,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (811, '乐昌市', 89, 5, ',0,5,89,811,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (812, '南雄市', 89, 5, ',0,5,89,812,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (813, '始兴县', 89, 5, ',0,5,89,813,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (814, '仁化县', 89, 5, ',0,5,89,814,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (815, '翁源县', 89, 5, ',0,5,89,815,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (816, '新丰县', 89, 5, ',0,5,89,816,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (817, '乳源县', 89, 5, ',0,5,89,817,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (818, '江城区', 90, 5, ',0,5,90,818,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (819, '阳春市', 90, 5, ',0,5,90,819,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (820, '阳西县', 90, 5, ',0,5,90,820,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (821, '阳东县', 90, 5, ',0,5,90,821,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (822, '云城区', 91, 5, ',0,5,91,822,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (823, '罗定市', 91, 5, ',0,5,91,823,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (824, '新兴县', 91, 5, ',0,5,91,824,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (825, '郁南县', 91, 5, ',0,5,91,825,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (826, '云安县', 91, 5, ',0,5,91,826,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (827, '赤坎区', 92, 5, ',0,5,92,827,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (828, '霞山区', 92, 5, ',0,5,92,828,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (829, '坡头区', 92, 5, ',0,5,92,829,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (830, '麻章区', 92, 5, ',0,5,92,830,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (831, '廉江市', 92, 5, ',0,5,92,831,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (832, '雷州市', 92, 5, ',0,5,92,832,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (833, '吴川市', 92, 5, ',0,5,92,833,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (834, '遂溪县', 92, 5, ',0,5,92,834,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (835, '徐闻县', 92, 5, ',0,5,92,835,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3648, '长城区', 65, 4, ',0,4,65,3648,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3649, '镜铁区', 65, 4, ',0,4,65,3649,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (837, '高要区', 93, 5, ',0,5,93,837,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (838, '四会市', 93, 5, ',0,5,93,838,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (839, '广宁县', 93, 5, ',0,5,93,839,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (840, '怀集县', 93, 5, ',0,5,93,840,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (841, '封开县', 93, 5, ',0,5,93,841,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (842, '德庆县', 93, 5, ',0,5,93,842,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (843, '石岐街道', 94, 5, ',0,5,94,843,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (844, '东区街道', 94, 5, ',0,5,94,844,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (845, '西区街道', 94, 5, ',0,5,94,845,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (846, '环城街道', 94, 5, ',0,5,94,846,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (847, '中山港街道', 94, 5, ',0,5,94,847,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (848, '五桂山街道', 94, 5, ',0,5,94,848,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (849, '香洲区', 95, 5, ',0,5,95,849,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (850, '斗门区', 95, 5, ',0,5,95,850,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (851, '金湾区', 95, 5, ',0,5,95,851,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (852, '邕宁区', 96, 6, ',0,6,96,852,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (853, '青秀区', 96, 6, ',0,6,96,853,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (854, '兴宁区', 96, 6, ',0,6,96,854,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (855, '良庆区', 96, 6, ',0,6,96,855,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (856, '西乡塘区', 96, 6, ',0,6,96,856,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (857, '江南区', 96, 6, ',0,6,96,857,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (858, '武鸣县', 96, 6, ',0,6,96,858,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (859, '隆安县', 96, 6, ',0,6,96,859,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (860, '马山县', 96, 6, ',0,6,96,860,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (861, '上林县', 96, 6, ',0,6,96,861,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (862, '宾阳县', 96, 6, ',0,6,96,862,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (863, '横县', 96, 6, ',0,6,96,863,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (864, '秀峰区', 97, 6, ',0,6,97,864,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (865, '叠彩区', 97, 6, ',0,6,97,865,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (866, '象山区', 97, 6, ',0,6,97,866,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (867, '七星区', 97, 6, ',0,6,97,867,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (868, '雁山区', 97, 6, ',0,6,97,868,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (869, '阳朔县', 97, 6, ',0,6,97,869,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (870, '临桂县', 97, 6, ',0,6,97,870,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (871, '灵川县', 97, 6, ',0,6,97,871,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (872, '全州县', 97, 6, ',0,6,97,872,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (873, '平乐县', 97, 6, ',0,6,97,873,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (874, '兴安县', 97, 6, ',0,6,97,874,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (875, '灌阳县', 97, 6, ',0,6,97,875,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (876, '荔浦县', 97, 6, ',0,6,97,876,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (877, '资源县', 97, 6, ',0,6,97,877,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (878, '永福县', 97, 6, ',0,6,97,878,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (879, '龙胜县', 97, 6, ',0,6,97,879,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (880, '恭城县', 97, 6, ',0,6,97,880,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (881, '右江区', 98, 6, ',0,6,98,881,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (882, '凌云县', 98, 6, ',0,6,98,882,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (883, '平果县', 98, 6, ',0,6,98,883,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (884, '西林县', 98, 6, ',0,6,98,884,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (885, '乐业县', 98, 6, ',0,6,98,885,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (886, '德保县', 98, 6, ',0,6,98,886,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (887, '田林县', 98, 6, ',0,6,98,887,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (888, '田阳县', 98, 6, ',0,6,98,888,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (889, '靖西县', 98, 6, ',0,6,98,889,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (890, '田东县', 98, 6, ',0,6,98,890,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (891, '那坡县', 98, 6, ',0,6,98,891,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (892, '隆林县', 98, 6, ',0,6,98,892,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (893, '海城区', 99, 6, ',0,6,99,893,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (894, '银海区', 99, 6, ',0,6,99,894,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (895, '铁山港区', 99, 6, ',0,6,99,895,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (896, '合浦县', 99, 6, ',0,6,99,896,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (897, '江州区', 100, 6, ',0,6,100,897,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (898, '凭祥市', 100, 6, ',0,6,100,898,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (899, '宁明县', 100, 6, ',0,6,100,899,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (900, '扶绥县', 100, 6, ',0,6,100,900,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (901, '龙州县', 100, 6, ',0,6,100,901,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (902, '大新县', 100, 6, ',0,6,100,902,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (903, '天等县', 100, 6, ',0,6,100,903,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (904, '港口区', 101, 6, ',0,6,101,904,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (905, '防城区', 101, 6, ',0,6,101,905,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (906, '东兴市', 101, 6, ',0,6,101,906,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (907, '上思县', 101, 6, ',0,6,101,907,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (908, '港北区', 102, 6, ',0,6,102,908,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (909, '港南区', 102, 6, ',0,6,102,909,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (910, '覃塘区', 102, 6, ',0,6,102,910,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (911, '桂平市', 102, 6, ',0,6,102,911,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (912, '平南县', 102, 6, ',0,6,102,912,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (913, '金城江区', 103, 6, ',0,6,103,913,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (914, '宜州市', 103, 6, ',0,6,103,914,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (915, '天峨县', 103, 6, ',0,6,103,915,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (916, '凤山县', 103, 6, ',0,6,103,916,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (917, '南丹县', 103, 6, ',0,6,103,917,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (918, '东兰县', 103, 6, ',0,6,103,918,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (919, '都安县', 103, 6, ',0,6,103,919,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (920, '罗城县', 103, 6, ',0,6,103,920,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (921, '巴马县', 103, 6, ',0,6,103,921,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (922, '环江县', 103, 6, ',0,6,103,922,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (923, '大化县', 103, 6, ',0,6,103,923,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (924, '八步区', 104, 6, ',0,6,104,924,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (925, '钟山县', 104, 6, ',0,6,104,925,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (926, '昭平县', 104, 6, ',0,6,104,926,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (927, '富川县', 104, 6, ',0,6,104,927,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (928, '兴宾区', 105, 6, ',0,6,105,928,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (929, '合山市', 105, 6, ',0,6,105,929,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (930, '象州县', 105, 6, ',0,6,105,930,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (931, '武宣县', 105, 6, ',0,6,105,931,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (932, '忻城县', 105, 6, ',0,6,105,932,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (933, '金秀县', 105, 6, ',0,6,105,933,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (934, '城中区', 106, 6, ',0,6,106,934,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (935, '鱼峰区', 106, 6, ',0,6,106,935,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (936, '柳北区', 106, 6, ',0,6,106,936,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (937, '柳南区', 106, 6, ',0,6,106,937,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (938, '柳江县', 106, 6, ',0,6,106,938,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (939, '柳城县', 106, 6, ',0,6,106,939,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (940, '鹿寨县', 106, 6, ',0,6,106,940,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (941, '融安县', 106, 6, ',0,6,106,941,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (942, '融水县', 106, 6, ',0,6,106,942,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (943, '三江县', 106, 6, ',0,6,106,943,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (944, '钦南区', 107, 6, ',0,6,107,944,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (945, '钦北区', 107, 6, ',0,6,107,945,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (946, '灵山县', 107, 6, ',0,6,107,946,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (947, '浦北县', 107, 6, ',0,6,107,947,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (948, '万秀区', 108, 6, ',0,6,108,948,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (949, '蝶山区', 108, 6, ',0,6,108,949,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (950, '长洲区', 108, 6, ',0,6,108,950,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (951, '岑溪市', 108, 6, ',0,6,108,951,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (952, '苍梧县', 108, 6, ',0,6,108,952,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (953, '藤县', 108, 6, ',0,6,108,953,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (954, '蒙山县', 108, 6, ',0,6,108,954,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (955, '玉州区', 109, 6, ',0,6,109,955,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (956, '北流市', 109, 6, ',0,6,109,956,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (957, '容县', 109, 6, ',0,6,109,957,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (958, '陆川县', 109, 6, ',0,6,109,958,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (959, '博白县', 109, 6, ',0,6,109,959,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (960, '兴业县', 109, 6, ',0,6,109,960,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (961, '南明区', 110, 7, ',0,7,110,961,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (962, '云岩区', 110, 7, ',0,7,110,962,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (963, '花溪区', 110, 7, ',0,7,110,963,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (964, '乌当区', 110, 7, ',0,7,110,964,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (965, '白云区', 110, 7, ',0,7,110,965,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (966, '小河区', 110, 7, ',0,7,110,966,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (967, '金阳新区', 110, 7, ',0,7,110,967,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (968, '新天园区', 110, 7, ',0,7,110,968,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (969, '清镇市', 110, 7, ',0,7,110,969,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (970, '开阳县', 110, 7, ',0,7,110,970,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (971, '修文县', 110, 7, ',0,7,110,971,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (972, '息烽县', 110, 7, ',0,7,110,972,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (973, '西秀区', 111, 7, ',0,7,111,973,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (974, '关岭县', 111, 7, ',0,7,111,974,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (975, '镇宁县', 111, 7, ',0,7,111,975,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (976, '紫云县', 111, 7, ',0,7,111,976,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (977, '平坝县', 111, 7, ',0,7,111,977,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (978, '普定县', 111, 7, ',0,7,111,978,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (979, '七星关区', 112, 7, ',0,7,112,979,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (980, '大方县', 112, 7, ',0,7,112,980,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (981, '黔西县', 112, 7, ',0,7,112,981,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (982, '金沙县', 112, 7, ',0,7,112,982,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (983, '织金县', 112, 7, ',0,7,112,983,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (984, '纳雍县', 112, 7, ',0,7,112,984,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (985, '赫章县', 112, 7, ',0,7,112,985,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (986, '威宁县', 112, 7, ',0,7,112,986,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (987, '钟山区', 113, 7, ',0,7,113,987,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (988, '六枝特区', 113, 7, ',0,7,113,988,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (989, '水城县', 113, 7, ',0,7,113,989,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (990, '盘县', 113, 7, ',0,7,113,990,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (991, '凯里市', 114, 7, ',0,7,114,991,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (992, '黄平县', 114, 7, ',0,7,114,992,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (993, '施秉县', 114, 7, ',0,7,114,993,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (994, '三穗县', 114, 7, ',0,7,114,994,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (995, '镇远县', 114, 7, ',0,7,114,995,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (996, '岑巩县', 114, 7, ',0,7,114,996,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (997, '天柱县', 114, 7, ',0,7,114,997,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (998, '锦屏县', 114, 7, ',0,7,114,998,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (999, '剑河县', 114, 7, ',0,7,114,999,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1000, '台江县', 114, 7, ',0,7,114,1000,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1001, '黎平县', 114, 7, ',0,7,114,1001,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1002, '榕江县', 114, 7, ',0,7,114,1002,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1003, '从江县', 114, 7, ',0,7,114,1003,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1004, '雷山县', 114, 7, ',0,7,114,1004,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1005, '麻江县', 114, 7, ',0,7,114,1005,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1006, '丹寨县', 114, 7, ',0,7,114,1006,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1007, '都匀市', 115, 7, ',0,7,115,1007,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1008, '福泉市', 115, 7, ',0,7,115,1008,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1009, '荔波县', 115, 7, ',0,7,115,1009,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1010, '贵定县', 115, 7, ',0,7,115,1010,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1011, '瓮安县', 115, 7, ',0,7,115,1011,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1012, '独山县', 115, 7, ',0,7,115,1012,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1013, '平塘县', 115, 7, ',0,7,115,1013,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1014, '罗甸县', 115, 7, ',0,7,115,1014,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1015, '长顺县', 115, 7, ',0,7,115,1015,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1016, '龙里县', 115, 7, ',0,7,115,1016,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1017, '惠水县', 115, 7, ',0,7,115,1017,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1018, '三都县', 115, 7, ',0,7,115,1018,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1019, '兴义市', 116, 7, ',0,7,116,1019,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1020, '兴仁县', 116, 7, ',0,7,116,1020,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1021, '普安县', 116, 7, ',0,7,116,1021,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1022, '晴隆县', 116, 7, ',0,7,116,1022,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1023, '贞丰县', 116, 7, ',0,7,116,1023,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1024, '望谟县', 116, 7, ',0,7,116,1024,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1025, '册亨县', 116, 7, ',0,7,116,1025,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1026, '安龙县', 116, 7, ',0,7,116,1026,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1027, '铜仁市', 117, 7, ',0,7,117,1027,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1028, '江口县', 117, 7, ',0,7,117,1028,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1029, '石阡县', 117, 7, ',0,7,117,1029,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1030, '思南县', 117, 7, ',0,7,117,1030,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1031, '德江县', 117, 7, ',0,7,117,1031,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1032, '玉屏县', 117, 7, ',0,7,117,1032,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1033, '印江县', 117, 7, ',0,7,117,1033,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1034, '沿河县', 117, 7, ',0,7,117,1034,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1035, '松桃县', 117, 7, ',0,7,117,1035,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1036, '万山特区', 117, 7, ',0,7,117,1036,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1037, '红花岗区', 118, 7, ',0,7,118,1037,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1038, '务川县', 118, 7, ',0,7,118,1038,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1039, '道真县', 118, 7, ',0,7,118,1039,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1040, '汇川区', 118, 7, ',0,7,118,1040,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1041, '赤水市', 118, 7, ',0,7,118,1041,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1042, '仁怀市', 118, 7, ',0,7,118,1042,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1043, '遵义县', 118, 7, ',0,7,118,1043,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1044, '桐梓县', 118, 7, ',0,7,118,1044,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1045, '绥阳县', 118, 7, ',0,7,118,1045,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1046, '正安县', 118, 7, ',0,7,118,1046,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1047, '凤冈县', 118, 7, ',0,7,118,1047,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1048, '湄潭县', 118, 7, ',0,7,118,1048,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1049, '余庆县', 118, 7, ',0,7,118,1049,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1050, '习水县', 118, 7, ',0,7,118,1050,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1053, '秀英区', 119, 8, ',0,8,119,1053,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1054, '龙华区', 119, 8, ',0,8,119,1054,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1055, '琼山区', 119, 8, ',0,8,119,1055,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1056, '美兰区', 119, 8, ',0,8,119,1056,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1057, '市区', 136, 8, ',0,8,136,1057,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1058, '洋浦开发区', 136, 8, ',0,8,136,1058,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1059, '那大镇', 136, 8, ',0,8,136,1059,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1060, '王五镇', 136, 8, ',0,8,136,1060,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1061, '雅星镇', 136, 8, ',0,8,136,1061,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1062, '大成镇', 136, 8, ',0,8,136,1062,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1063, '中和镇', 136, 8, ',0,8,136,1063,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1064, '峨蔓镇', 136, 8, ',0,8,136,1064,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1065, '南丰镇', 136, 8, ',0,8,136,1065,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1066, '白马井镇', 136, 8, ',0,8,136,1066,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1067, '兰洋镇', 136, 8, ',0,8,136,1067,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1068, '和庆镇', 136, 8, ',0,8,136,1068,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1069, '海头镇', 136, 8, ',0,8,136,1069,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1070, '排浦镇', 136, 8, ',0,8,136,1070,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1071, '东成镇', 136, 8, ',0,8,136,1071,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1072, '光村镇', 136, 8, ',0,8,136,1072,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1073, '木棠镇', 136, 8, ',0,8,136,1073,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1074, '新州镇', 136, 8, ',0,8,136,1074,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1075, '三都镇', 136, 8, ',0,8,136,1075,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1077, '长安区', 137, 9, ',0,9,137,1077,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1078, '桥东区', 137, 9, ',0,9,137,1078,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1079, '桥西区', 137, 9, ',0,9,137,1079,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1080, '新华区', 137, 9, ',0,9,137,1080,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1081, '裕华区', 137, 9, ',0,9,137,1081,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1082, '井陉矿区', 137, 9, ',0,9,137,1082,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1083, '高新区', 137, 9, ',0,9,137,1083,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1084, '辛集市', 137, 9, ',0,9,137,1084,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1085, '藁城市', 137, 9, ',0,9,137,1085,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1086, '晋州市', 137, 9, ',0,9,137,1086,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1087, '新乐市', 137, 9, ',0,9,137,1087,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1088, '鹿泉区', 137, 9, ',0,9,137,1088,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1089, '井陉县', 137, 9, ',0,9,137,1089,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1090, '正定县', 137, 9, ',0,9,137,1090,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1091, '栾城区', 137, 9, ',0,9,137,1091,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1092, '行唐县', 137, 9, ',0,9,137,1092,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1093, '灵寿县', 137, 9, ',0,9,137,1093,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1094, '高邑县', 137, 9, ',0,9,137,1094,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1095, '深泽县', 137, 9, ',0,9,137,1095,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1096, '赞皇县', 137, 9, ',0,9,137,1096,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1097, '无极县', 137, 9, ',0,9,137,1097,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1098, '平山县', 137, 9, ',0,9,137,1098,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1099, '元氏县', 137, 9, ',0,9,137,1099,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1100, '赵县', 137, 9, ',0,9,137,1100,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1101, '新市区', 138, 9, ',0,9,138,1101,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1102, '南市区', 138, 9, ',0,9,138,1102,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1103, '北市区', 138, 9, ',0,9,138,1103,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1104, '涿州市', 138, 9, ',0,9,138,1104,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1105, '定州市', 138, 9, ',0,9,138,1105,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1106, '安国市', 138, 9, ',0,9,138,1106,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1107, '高碑店市', 138, 9, ',0,9,138,1107,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1108, '满城县', 138, 9, ',0,9,138,1108,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1109, '清苑县', 138, 9, ',0,9,138,1109,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1110, '涞水县', 138, 9, ',0,9,138,1110,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1111, '阜平县', 138, 9, ',0,9,138,1111,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1112, '徐水县', 138, 9, ',0,9,138,1112,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1113, '定兴县', 138, 9, ',0,9,138,1113,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1114, '唐县', 138, 9, ',0,9,138,1114,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1115, '高阳县', 138, 9, ',0,9,138,1115,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1116, '容城县', 138, 9, ',0,9,138,1116,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1117, '涞源县', 138, 9, ',0,9,138,1117,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1118, '望都县', 138, 9, ',0,9,138,1118,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1119, '安新县', 138, 9, ',0,9,138,1119,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1120, '易县', 138, 9, ',0,9,138,1120,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1121, '曲阳县', 138, 9, ',0,9,138,1121,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1122, '蠡县', 138, 9, ',0,9,138,1122,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1123, '顺平县', 138, 9, ',0,9,138,1123,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1124, '博野县', 138, 9, ',0,9,138,1124,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1125, '雄县', 138, 9, ',0,9,138,1125,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1126, '运河区', 139, 9, ',0,9,139,1126,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1127, '新华区', 139, 9, ',0,9,139,1127,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1128, '泊头市', 139, 9, ',0,9,139,1128,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1129, '任丘市', 139, 9, ',0,9,139,1129,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1130, '黄骅市', 139, 9, ',0,9,139,1130,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1131, '河间市', 139, 9, ',0,9,139,1131,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1132, '沧县', 139, 9, ',0,9,139,1132,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1133, '青县', 139, 9, ',0,9,139,1133,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1134, '东光县', 139, 9, ',0,9,139,1134,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1135, '海兴县', 139, 9, ',0,9,139,1135,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1136, '盐山县', 139, 9, ',0,9,139,1136,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1137, '肃宁县', 139, 9, ',0,9,139,1137,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1138, '南皮县', 139, 9, ',0,9,139,1138,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1139, '吴桥县', 139, 9, ',0,9,139,1139,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1140, '献县', 139, 9, ',0,9,139,1140,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1141, '孟村县', 139, 9, ',0,9,139,1141,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1142, '双桥区', 140, 9, ',0,9,140,1142,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1143, '双滦区', 140, 9, ',0,9,140,1143,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1144, '鹰手营子矿区', 140, 9, ',0,9,140,1144,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1145, '承德县', 140, 9, ',0,9,140,1145,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1146, '兴隆县', 140, 9, ',0,9,140,1146,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1147, '平泉县', 140, 9, ',0,9,140,1147,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1148, '滦平县', 140, 9, ',0,9,140,1148,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1149, '隆化县', 140, 9, ',0,9,140,1149,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1150, '丰宁县', 140, 9, ',0,9,140,1150,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1151, '宽城县', 140, 9, ',0,9,140,1151,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1152, '围场县', 140, 9, ',0,9,140,1152,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1153, '丛台区', 141, 9, ',0,9,141,1153,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1154, '复兴区', 141, 9, ',0,9,141,1154,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1155, '邯山区', 141, 9, ',0,9,141,1155,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1156, '峰峰矿区', 141, 9, ',0,9,141,1156,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1157, '武安市', 141, 9, ',0,9,141,1157,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1158, '邯郸县', 141, 9, ',0,9,141,1158,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1159, '临漳县', 141, 9, ',0,9,141,1159,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1160, '成安县', 141, 9, ',0,9,141,1160,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1161, '大名县', 141, 9, ',0,9,141,1161,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1162, '涉县', 141, 9, ',0,9,141,1162,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1163, '磁县', 141, 9, ',0,9,141,1163,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1164, '肥乡县', 141, 9, ',0,9,141,1164,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1165, '永年县', 141, 9, ',0,9,141,1165,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1166, '邱县', 141, 9, ',0,9,141,1166,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1167, '鸡泽县', 141, 9, ',0,9,141,1167,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1168, '广平县', 141, 9, ',0,9,141,1168,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1169, '馆陶县', 141, 9, ',0,9,141,1169,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1170, '魏县', 141, 9, ',0,9,141,1170,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1171, '曲周县', 141, 9, ',0,9,141,1171,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1172, '桃城区', 142, 9, ',0,9,142,1172,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1173, '冀州市', 142, 9, ',0,9,142,1173,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1174, '深州市', 142, 9, ',0,9,142,1174,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1175, '枣强县', 142, 9, ',0,9,142,1175,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1176, '武邑县', 142, 9, ',0,9,142,1176,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1177, '武强县', 142, 9, ',0,9,142,1177,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1178, '饶阳县', 142, 9, ',0,9,142,1178,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1179, '安平县', 142, 9, ',0,9,142,1179,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1180, '故城县', 142, 9, ',0,9,142,1180,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1181, '景县', 142, 9, ',0,9,142,1181,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1182, '阜城县', 142, 9, ',0,9,142,1182,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1183, '安次区', 143, 9, ',0,9,143,1183,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1184, '广阳区', 143, 9, ',0,9,143,1184,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1185, '霸州市', 143, 9, ',0,9,143,1185,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1186, '三河市', 143, 9, ',0,9,143,1186,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1187, '固安县', 143, 9, ',0,9,143,1187,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1188, '永清县', 143, 9, ',0,9,143,1188,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1189, '香河县', 143, 9, ',0,9,143,1189,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1190, '大城县', 143, 9, ',0,9,143,1190,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1191, '文安县', 143, 9, ',0,9,143,1191,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1192, '大厂县', 143, 9, ',0,9,143,1192,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1193, '海港区', 144, 9, ',0,9,144,1193,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1194, '山海关区', 144, 9, ',0,9,144,1194,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1195, '北戴河区', 144, 9, ',0,9,144,1195,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1196, '昌黎县', 144, 9, ',0,9,144,1196,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1197, '抚宁县', 144, 9, ',0,9,144,1197,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1198, '卢龙县', 144, 9, ',0,9,144,1198,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1199, '青龙县', 144, 9, ',0,9,144,1199,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1200, '路北区', 145, 9, ',0,9,145,1200,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1201, '路南区', 145, 9, ',0,9,145,1201,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1202, '古冶区', 145, 9, ',0,9,145,1202,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1203, '开平区', 145, 9, ',0,9,145,1203,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1204, '丰南区', 145, 9, ',0,9,145,1204,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1205, '丰润区', 145, 9, ',0,9,145,1205,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1206, '遵化市', 145, 9, ',0,9,145,1206,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1207, '迁安市', 145, 9, ',0,9,145,1207,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1208, '滦县', 145, 9, ',0,9,145,1208,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1209, '滦南县', 145, 9, ',0,9,145,1209,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1210, '乐亭县', 145, 9, ',0,9,145,1210,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1211, '迁西县', 145, 9, ',0,9,145,1211,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1212, '玉田县', 145, 9, ',0,9,145,1212,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1213, '唐海县', 145, 9, ',0,9,145,1213,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1214, '桥东区', 146, 9, ',0,9,146,1214,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1215, '桥西区', 146, 9, ',0,9,146,1215,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1216, '南宫市', 146, 9, ',0,9,146,1216,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1217, '沙河市', 146, 9, ',0,9,146,1217,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1218, '邢台县', 146, 9, ',0,9,146,1218,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1219, '临城县', 146, 9, ',0,9,146,1219,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1220, '内丘县', 146, 9, ',0,9,146,1220,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1221, '柏乡县', 146, 9, ',0,9,146,1221,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1222, '隆尧县', 146, 9, ',0,9,146,1222,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1223, '任县', 146, 9, ',0,9,146,1223,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1224, '南和县', 146, 9, ',0,9,146,1224,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1225, '宁晋县', 146, 9, ',0,9,146,1225,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1226, '巨鹿县', 146, 9, ',0,9,146,1226,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1227, '新河县', 146, 9, ',0,9,146,1227,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1228, '广宗县', 146, 9, ',0,9,146,1228,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1229, '平乡县', 146, 9, ',0,9,146,1229,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1230, '威县', 146, 9, ',0,9,146,1230,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1231, '清河县', 146, 9, ',0,9,146,1231,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1232, '临西县', 146, 9, ',0,9,146,1232,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1233, '桥西区', 147, 9, ',0,9,147,1233,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1234, '桥东区', 147, 9, ',0,9,147,1234,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1235, '宣化区', 147, 9, ',0,9,147,1235,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1236, '下花园区', 147, 9, ',0,9,147,1236,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1237, '宣化县', 147, 9, ',0,9,147,1237,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1238, '张北县', 147, 9, ',0,9,147,1238,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1239, '康保县', 147, 9, ',0,9,147,1239,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1240, '沽源县', 147, 9, ',0,9,147,1240,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1241, '尚义县', 147, 9, ',0,9,147,1241,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1242, '蔚县', 147, 9, ',0,9,147,1242,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1243, '阳原县', 147, 9, ',0,9,147,1243,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1244, '怀安县', 147, 9, ',0,9,147,1244,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1245, '万全县', 147, 9, ',0,9,147,1245,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1246, '怀来县', 147, 9, ',0,9,147,1246,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1247, '涿鹿县', 147, 9, ',0,9,147,1247,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1248, '赤城县', 147, 9, ',0,9,147,1248,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1249, '崇礼县', 147, 9, ',0,9,147,1249,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1250, '金水区', 148, 10, ',0,10,148,1250,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1251, '邙山区', 148, 10, ',0,10,148,1251,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1252, '二七区', 148, 10, ',0,10,148,1252,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1253, '管城区', 148, 10, ',0,10,148,1253,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1254, '中原区', 148, 10, ',0,10,148,1254,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1255, '上街区', 148, 10, ',0,10,148,1255,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1256, '惠济区', 148, 10, ',0,10,148,1256,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1257, '郑东新区', 148, 10, ',0,10,148,1257,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1258, '经济技术开发区', 148, 10, ',0,10,148,1258,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1259, '高新开发区', 148, 10, ',0,10,148,1259,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1260, '出口加工区', 148, 10, ',0,10,148,1260,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1261, '巩义市', 148, 10, ',0,10,148,1261,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1262, '荥阳市', 148, 10, ',0,10,148,1262,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1263, '新密市', 148, 10, ',0,10,148,1263,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1264, '新郑市', 148, 10, ',0,10,148,1264,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1265, '登封市', 148, 10, ',0,10,148,1265,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1266, '中牟县', 148, 10, ',0,10,148,1266,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1267, '西工区', 149, 10, ',0,10,149,1267,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1268, '老城区', 149, 10, ',0,10,149,1268,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1269, '涧西区', 149, 10, ',0,10,149,1269,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1270, '瀍河回族区', 149, 10, ',0,10,149,1270,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1271, '洛龙区', 149, 10, ',0,10,149,1271,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1272, '吉利区', 149, 10, ',0,10,149,1272,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1273, '偃师市', 149, 10, ',0,10,149,1273,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1274, '孟津县', 149, 10, ',0,10,149,1274,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1275, '新安县', 149, 10, ',0,10,149,1275,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1276, '栾川县', 149, 10, ',0,10,149,1276,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1277, '嵩县', 149, 10, ',0,10,149,1277,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1278, '汝阳县', 149, 10, ',0,10,149,1278,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1279, '宜阳县', 149, 10, ',0,10,149,1279,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1280, '洛宁县', 149, 10, ',0,10,149,1280,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1281, '伊川县', 149, 10, ',0,10,149,1281,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1282, '鼓楼区', 150, 10, ',0,10,150,1282,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1283, '龙亭区', 150, 10, ',0,10,150,1283,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1284, '顺河区', 150, 10, ',0,10,150,1284,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1285, '金明区', 150, 10, ',0,10,150,1285,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1286, '禹王台区', 150, 10, ',0,10,150,1286,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1287, '杞县', 150, 10, ',0,10,150,1287,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1288, '通许县', 150, 10, ',0,10,150,1288,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1289, '尉氏县', 150, 10, ',0,10,150,1289,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1290, '祥符区', 150, 10, ',0,10,150,1290,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1291, '兰考县', 150, 10, ',0,10,150,1291,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1292, '北关区', 151, 10, ',0,10,151,1292,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1293, '文峰区', 151, 10, ',0,10,151,1293,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1294, '殷都区', 151, 10, ',0,10,151,1294,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1295, '龙安区', 151, 10, ',0,10,151,1295,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1296, '林州市', 151, 10, ',0,10,151,1296,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1297, '安阳县', 151, 10, ',0,10,151,1297,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1298, '汤阴县', 151, 10, ',0,10,151,1298,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1299, '滑县', 151, 10, ',0,10,151,1299,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1300, '内黄县', 151, 10, ',0,10,151,1300,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1301, '淇滨区', 152, 10, ',0,10,152,1301,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1302, '山城区', 152, 10, ',0,10,152,1302,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1303, '鹤山区', 152, 10, ',0,10,152,1303,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1304, '浚县', 152, 10, ',0,10,152,1304,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1305, '淇县', 152, 10, ',0,10,152,1305,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1306, '济源市', 153, 10, ',0,10,153,1306,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1307, '解放区', 154, 10, ',0,10,154,1307,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1308, '中站区', 154, 10, ',0,10,154,1308,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1309, '马村区', 154, 10, ',0,10,154,1309,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1310, '山阳区', 154, 10, ',0,10,154,1310,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1311, '沁阳市', 154, 10, ',0,10,154,1311,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1312, '孟州市', 154, 10, ',0,10,154,1312,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1313, '修武县', 154, 10, ',0,10,154,1313,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1314, '博爱县', 154, 10, ',0,10,154,1314,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1315, '武陟县', 154, 10, ',0,10,154,1315,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1316, '温县', 154, 10, ',0,10,154,1316,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1317, '卧龙区', 155, 10, ',0,10,155,1317,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1318, '宛城区', 155, 10, ',0,10,155,1318,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1319, '邓州市', 155, 10, ',0,10,155,1319,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1320, '南召县', 155, 10, ',0,10,155,1320,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1321, '方城县', 155, 10, ',0,10,155,1321,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1322, '西峡县', 155, 10, ',0,10,155,1322,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1323, '镇平县', 155, 10, ',0,10,155,1323,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1324, '内乡县', 155, 10, ',0,10,155,1324,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1325, '淅川县', 155, 10, ',0,10,155,1325,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1326, '社旗县', 155, 10, ',0,10,155,1326,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1327, '唐河县', 155, 10, ',0,10,155,1327,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1328, '新野县', 155, 10, ',0,10,155,1328,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1329, '桐柏县', 155, 10, ',0,10,155,1329,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1330, '新华区', 156, 10, ',0,10,156,1330,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1331, '卫东区', 156, 10, ',0,10,156,1331,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1332, '湛河区', 156, 10, ',0,10,156,1332,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1333, '石龙区', 156, 10, ',0,10,156,1333,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1334, '舞钢市', 156, 10, ',0,10,156,1334,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1335, '汝州市', 156, 10, ',0,10,156,1335,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1336, '宝丰县', 156, 10, ',0,10,156,1336,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1337, '叶县', 156, 10, ',0,10,156,1337,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1338, '鲁山县', 156, 10, ',0,10,156,1338,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1339, '郏县', 156, 10, ',0,10,156,1339,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1340, '湖滨区', 157, 10, ',0,10,157,1340,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1341, '义马市', 157, 10, ',0,10,157,1341,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1342, '灵宝市', 157, 10, ',0,10,157,1342,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1343, '渑池县', 157, 10, ',0,10,157,1343,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1344, '陕县', 157, 10, ',0,10,157,1344,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1345, '卢氏县', 157, 10, ',0,10,157,1345,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1346, '梁园区', 158, 10, ',0,10,158,1346,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1347, '睢阳区', 158, 10, ',0,10,158,1347,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1348, '永城市', 158, 10, ',0,10,158,1348,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1349, '民权县', 158, 10, ',0,10,158,1349,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1350, '睢县', 158, 10, ',0,10,158,1350,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1351, '宁陵县', 158, 10, ',0,10,158,1351,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1352, '虞城县', 158, 10, ',0,10,158,1352,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1353, '柘城县', 158, 10, ',0,10,158,1353,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1354, '夏邑县', 158, 10, ',0,10,158,1354,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1355, '卫滨区', 159, 10, ',0,10,159,1355,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1356, '红旗区', 159, 10, ',0,10,159,1356,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1357, '凤泉区', 159, 10, ',0,10,159,1357,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1358, '牧野区', 159, 10, ',0,10,159,1358,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1359, '卫辉市', 159, 10, ',0,10,159,1359,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1360, '辉县市', 159, 10, ',0,10,159,1360,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1361, '新乡县', 159, 10, ',0,10,159,1361,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1362, '获嘉县', 159, 10, ',0,10,159,1362,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1363, '原阳县', 159, 10, ',0,10,159,1363,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1364, '延津县', 159, 10, ',0,10,159,1364,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1365, '封丘县', 159, 10, ',0,10,159,1365,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1366, '长垣县', 159, 10, ',0,10,159,1366,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1367, '浉河区', 160, 10, ',0,10,160,1367,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1368, '平桥区', 160, 10, ',0,10,160,1368,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1369, '罗山县', 160, 10, ',0,10,160,1369,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1370, '光山县', 160, 10, ',0,10,160,1370,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1371, '新县', 160, 10, ',0,10,160,1371,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1372, '商城县', 160, 10, ',0,10,160,1372,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1373, '固始县', 160, 10, ',0,10,160,1373,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1374, '潢川县', 160, 10, ',0,10,160,1374,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1375, '淮滨县', 160, 10, ',0,10,160,1375,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1376, '息县', 160, 10, ',0,10,160,1376,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1377, '魏都区', 161, 10, ',0,10,161,1377,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1378, '禹州市', 161, 10, ',0,10,161,1378,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1379, '长葛市', 161, 10, ',0,10,161,1379,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1380, '许昌县', 161, 10, ',0,10,161,1380,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1381, '鄢陵县', 161, 10, ',0,10,161,1381,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1382, '襄城县', 161, 10, ',0,10,161,1382,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1383, '川汇区', 162, 10, ',0,10,162,1383,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1384, '项城市', 162, 10, ',0,10,162,1384,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1385, '扶沟县', 162, 10, ',0,10,162,1385,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1386, '西华县', 162, 10, ',0,10,162,1386,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1387, '商水县', 162, 10, ',0,10,162,1387,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1388, '沈丘县', 162, 10, ',0,10,162,1388,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1389, '郸城县', 162, 10, ',0,10,162,1389,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1390, '淮阳县', 162, 10, ',0,10,162,1390,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1391, '太康县', 162, 10, ',0,10,162,1391,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1392, '鹿邑县', 162, 10, ',0,10,162,1392,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1393, '驿城区', 163, 10, ',0,10,163,1393,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1394, '西平县', 163, 10, ',0,10,163,1394,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1395, '上蔡县', 163, 10, ',0,10,163,1395,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1396, '平舆县', 163, 10, ',0,10,163,1396,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1397, '正阳县', 163, 10, ',0,10,163,1397,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1398, '确山县', 163, 10, ',0,10,163,1398,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1399, '泌阳县', 163, 10, ',0,10,163,1399,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1400, '汝南县', 163, 10, ',0,10,163,1400,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1401, '遂平县', 163, 10, ',0,10,163,1401,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1402, '新蔡县', 163, 10, ',0,10,163,1402,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1403, '郾城区', 164, 10, ',0,10,164,1403,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1404, '源汇区', 164, 10, ',0,10,164,1404,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1405, '召陵区', 164, 10, ',0,10,164,1405,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1406, '舞阳县', 164, 10, ',0,10,164,1406,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1407, '临颍县', 164, 10, ',0,10,164,1407,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1408, '华龙区', 165, 10, ',0,10,165,1408,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1409, '清丰县', 165, 10, ',0,10,165,1409,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1410, '南乐县', 165, 10, ',0,10,165,1410,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1411, '范县', 165, 10, ',0,10,165,1411,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1412, '台前县', 165, 10, ',0,10,165,1412,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1413, '濮阳县', 165, 10, ',0,10,165,1413,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1414, '道里区', 166, 11, ',0,11,166,1414,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1415, '南岗区', 166, 11, ',0,11,166,1415,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1417, '平房区', 166, 11, ',0,11,166,1417,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1418, '香坊区', 166, 11, ',0,11,166,1418,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1420, '道外区', 166, 11, ',0,11,166,1420,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1421, '阿城区', 166, 11, ',0,11,166,1421,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1422, '呼兰区', 166, 11, ',0,11,166,1422,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1423, '松北区', 166, 11, ',0,11,166,1423,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1424, '尚志市', 166, 11, ',0,11,166,1424,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1425, '双城市', 166, 11, ',0,11,166,1425,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1426, '五常市', 166, 11, ',0,11,166,1426,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1427, '方正县', 166, 11, ',0,11,166,1427,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1428, '宾县', 166, 11, ',0,11,166,1428,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1429, '依兰县', 166, 11, ',0,11,166,1429,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1430, '巴彦县', 166, 11, ',0,11,166,1430,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1431, '通河县', 166, 11, ',0,11,166,1431,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1432, '木兰县', 166, 11, ',0,11,166,1432,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1433, '延寿县', 166, 11, ',0,11,166,1433,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1434, '萨尔图区', 167, 11, ',0,11,167,1434,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1435, '红岗区', 167, 11, ',0,11,167,1435,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1436, '龙凤区', 167, 11, ',0,11,167,1436,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1437, '让胡路区', 167, 11, ',0,11,167,1437,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1438, '大同区', 167, 11, ',0,11,167,1438,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1439, '肇州县', 167, 11, ',0,11,167,1439,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1440, '肇源县', 167, 11, ',0,11,167,1440,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1441, '林甸县', 167, 11, ',0,11,167,1441,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1442, '杜尔伯特', 167, 11, ',0,11,167,1442,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1443, '呼玛县', 168, 11, ',0,11,168,1443,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1444, '漠河县', 168, 11, ',0,11,168,1444,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1445, '塔河县', 168, 11, ',0,11,168,1445,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1446, '兴山区', 169, 11, ',0,11,169,1446,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1447, '工农区', 169, 11, ',0,11,169,1447,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1448, '南山区', 169, 11, ',0,11,169,1448,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1449, '兴安区', 169, 11, ',0,11,169,1449,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1450, '向阳区', 169, 11, ',0,11,169,1450,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1451, '东山区', 169, 11, ',0,11,169,1451,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1452, '萝北县', 169, 11, ',0,11,169,1452,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1453, '绥滨县', 169, 11, ',0,11,169,1453,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1454, '爱辉区', 170, 11, ',0,11,170,1454,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1455, '五大连池市', 170, 11, ',0,11,170,1455,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1456, '北安市', 170, 11, ',0,11,170,1456,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1457, '嫩江县', 170, 11, ',0,11,170,1457,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1458, '逊克县', 170, 11, ',0,11,170,1458,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1459, '孙吴县', 170, 11, ',0,11,170,1459,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1460, '鸡冠区', 171, 11, ',0,11,171,1460,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1461, '恒山区', 171, 11, ',0,11,171,1461,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1462, '城子河区', 171, 11, ',0,11,171,1462,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1463, '滴道区', 171, 11, ',0,11,171,1463,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1464, '梨树区', 171, 11, ',0,11,171,1464,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1465, '虎林市', 171, 11, ',0,11,171,1465,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1466, '密山市', 171, 11, ',0,11,171,1466,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1467, '鸡东县', 171, 11, ',0,11,171,1467,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1468, '前进区', 172, 11, ',0,11,172,1468,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1469, '郊区', 172, 11, ',0,11,172,1469,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1470, '向阳区', 172, 11, ',0,11,172,1470,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1471, '东风区', 172, 11, ',0,11,172,1471,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1472, '同江市', 172, 11, ',0,11,172,1472,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1473, '富锦市', 172, 11, ',0,11,172,1473,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1474, '桦南县', 172, 11, ',0,11,172,1474,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1475, '桦川县', 172, 11, ',0,11,172,1475,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1476, '汤原县', 172, 11, ',0,11,172,1476,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1477, '抚远县', 172, 11, ',0,11,172,1477,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1478, '爱民区', 173, 11, ',0,11,173,1478,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1479, '东安区', 173, 11, ',0,11,173,1479,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1480, '阳明区', 173, 11, ',0,11,173,1480,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1481, '西安区', 173, 11, ',0,11,173,1481,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1482, '绥芬河市', 173, 11, ',0,11,173,1482,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1483, '海林市', 173, 11, ',0,11,173,1483,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1484, '宁安市', 173, 11, ',0,11,173,1484,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1485, '穆棱市', 173, 11, ',0,11,173,1485,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1486, '东宁县', 173, 11, ',0,11,173,1486,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1487, '林口县', 173, 11, ',0,11,173,1487,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1488, '桃山区', 174, 11, ',0,11,174,1488,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1489, '新兴区', 174, 11, ',0,11,174,1489,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1490, '茄子河区', 174, 11, ',0,11,174,1490,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1491, '勃利县', 174, 11, ',0,11,174,1491,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1492, '龙沙区', 175, 11, ',0,11,175,1492,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1493, '昂昂溪区', 175, 11, ',0,11,175,1493,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1494, '铁锋区', 175, 11, ',0,11,175,1494,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1495, '建华区', 175, 11, ',0,11,175,1495,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1496, '富拉尔基区', 175, 11, ',0,11,175,1496,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1497, '碾子山区', 175, 11, ',0,11,175,1497,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1498, '梅里斯达斡尔族区', 175, 11, ',0,11,175,1498,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1499, '讷河市', 175, 11, ',0,11,175,1499,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1500, '龙江县', 175, 11, ',0,11,175,1500,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1501, '依安县', 175, 11, ',0,11,175,1501,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1502, '泰来县', 175, 11, ',0,11,175,1502,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1503, '甘南县', 175, 11, ',0,11,175,1503,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1504, '富裕县', 175, 11, ',0,11,175,1504,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1505, '克山县', 175, 11, ',0,11,175,1505,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1506, '克东县', 175, 11, ',0,11,175,1506,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1507, '拜泉县', 175, 11, ',0,11,175,1507,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1508, '尖山区', 176, 11, ',0,11,176,1508,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1509, '岭东区', 176, 11, ',0,11,176,1509,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1510, '四方台区', 176, 11, ',0,11,176,1510,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1511, '宝山区', 176, 11, ',0,11,176,1511,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1512, '集贤县', 176, 11, ',0,11,176,1512,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1513, '友谊县', 176, 11, ',0,11,176,1513,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1514, '宝清县', 176, 11, ',0,11,176,1514,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1515, '饶河县', 176, 11, ',0,11,176,1515,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1516, '北林区', 177, 11, ',0,11,177,1516,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1517, '安达市', 177, 11, ',0,11,177,1517,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1518, '肇东市', 177, 11, ',0,11,177,1518,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1519, '海伦市', 177, 11, ',0,11,177,1519,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1520, '望奎县', 177, 11, ',0,11,177,1520,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1521, '兰西县', 177, 11, ',0,11,177,1521,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1522, '青冈县', 177, 11, ',0,11,177,1522,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1523, '庆安县', 177, 11, ',0,11,177,1523,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1524, '明水县', 177, 11, ',0,11,177,1524,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1525, '绥棱县', 177, 11, ',0,11,177,1525,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1526, '伊春区', 178, 11, ',0,11,178,1526,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1527, '带岭区', 178, 11, ',0,11,178,1527,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1528, '南岔区', 178, 11, ',0,11,178,1528,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1529, '金山屯区', 178, 11, ',0,11,178,1529,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1530, '西林区', 178, 11, ',0,11,178,1530,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1531, '美溪区', 178, 11, ',0,11,178,1531,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1532, '乌马河区', 178, 11, ',0,11,178,1532,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1533, '翠峦区', 178, 11, ',0,11,178,1533,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1534, '友好区', 178, 11, ',0,11,178,1534,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1535, '上甘岭区', 178, 11, ',0,11,178,1535,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1536, '五营区', 178, 11, ',0,11,178,1536,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1537, '红星区', 178, 11, ',0,11,178,1537,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1538, '新青区', 178, 11, ',0,11,178,1538,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1539, '汤旺河区', 178, 11, ',0,11,178,1539,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1540, '乌伊岭区', 178, 11, ',0,11,178,1540,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1541, '铁力市', 178, 11, ',0,11,178,1541,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1542, '嘉荫县', 178, 11, ',0,11,178,1542,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1543, '江岸区', 179, 12, ',0,12,179,1543,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1544, '武昌区', 179, 12, ',0,12,179,1544,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1545, '江汉区', 179, 12, ',0,12,179,1545,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1546, '硚口区', 179, 12, ',0,12,179,1546,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1547, '汉阳区', 179, 12, ',0,12,179,1547,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1548, '青山区', 179, 12, ',0,12,179,1548,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1549, '洪山区', 179, 12, ',0,12,179,1549,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1550, '东西湖区', 179, 12, ',0,12,179,1550,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1551, '汉南区', 179, 12, ',0,12,179,1551,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1552, '蔡甸区', 179, 12, ',0,12,179,1552,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1553, '江夏区', 179, 12, ',0,12,179,1553,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1554, '黄陂区', 179, 12, ',0,12,179,1554,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1555, '新洲区', 179, 12, ',0,12,179,1555,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1556, '经济开发区', 179, 12, ',0,12,179,1556,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1558, '鄂城区', 181, 12, ',0,12,181,1558,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1559, '华容区', 181, 12, ',0,12,181,1559,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1560, '梁子湖区', 181, 12, ',0,12,181,1560,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1561, '黄州区', 182, 12, ',0,12,182,1561,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1562, '麻城市', 182, 12, ',0,12,182,1562,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1563, '武穴市', 182, 12, ',0,12,182,1563,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1564, '团风县', 182, 12, ',0,12,182,1564,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1565, '红安县', 182, 12, ',0,12,182,1565,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1566, '罗田县', 182, 12, ',0,12,182,1566,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1567, '英山县', 182, 12, ',0,12,182,1567,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1568, '浠水县', 182, 12, ',0,12,182,1568,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1569, '蕲春县', 182, 12, ',0,12,182,1569,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1570, '黄梅县', 182, 12, ',0,12,182,1570,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1571, '黄石港区', 183, 12, ',0,12,183,1571,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1572, '西塞山区', 183, 12, ',0,12,183,1572,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1573, '下陆区', 183, 12, ',0,12,183,1573,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1574, '铁山区', 183, 12, ',0,12,183,1574,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1575, '大冶市', 183, 12, ',0,12,183,1575,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1576, '阳新县', 183, 12, ',0,12,183,1576,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1577, '东宝区', 184, 12, ',0,12,184,1577,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1578, '掇刀区', 184, 12, ',0,12,184,1578,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1579, '钟祥市', 184, 12, ',0,12,184,1579,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1580, '京山县', 184, 12, ',0,12,184,1580,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1581, '沙洋县', 184, 12, ',0,12,184,1581,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1582, '沙市区', 185, 12, ',0,12,185,1582,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1583, '荆州区', 185, 12, ',0,12,185,1583,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1584, '石首市', 185, 12, ',0,12,185,1584,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1585, '洪湖市', 185, 12, ',0,12,185,1585,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1586, '松滋市', 185, 12, ',0,12,185,1586,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1587, '公安县', 185, 12, ',0,12,185,1587,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1588, '监利县', 185, 12, ',0,12,185,1588,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1589, '江陵县', 185, 12, ',0,12,185,1589,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1590, '潜江市', 186, 12, ',0,12,186,1590,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1592, '张湾区', 188, 12, ',0,12,188,1592,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1593, '茅箭区', 188, 12, ',0,12,188,1593,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1594, '丹江口市', 188, 12, ',0,12,188,1594,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1595, '郧县', 188, 12, ',0,12,188,1595,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1596, '郧西县', 188, 12, ',0,12,188,1596,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1597, '竹山县', 188, 12, ',0,12,188,1597,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1598, '竹溪县', 188, 12, ',0,12,188,1598,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1599, '房县', 188, 12, ',0,12,188,1599,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1600, '曾都区', 189, 12, ',0,12,189,1600,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1601, '广水市', 189, 12, ',0,12,189,1601,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1602, '天门市', 190, 12, ',0,12,190,1602,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1603, '咸安区', 191, 12, ',0,12,191,1603,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1604, '赤壁市', 191, 12, ',0,12,191,1604,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1605, '嘉鱼县', 191, 12, ',0,12,191,1605,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1606, '通城县', 191, 12, ',0,12,191,1606,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1607, '崇阳县', 191, 12, ',0,12,191,1607,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1608, '通山县', 191, 12, ',0,12,191,1608,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1609, '襄城区', 192, 12, ',0,12,192,1609,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1610, '樊城区', 192, 12, ',0,12,192,1610,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1611, '襄州区', 192, 12, ',0,12,192,1611,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1612, '老河口市', 192, 12, ',0,12,192,1612,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1613, '枣阳市', 192, 12, ',0,12,192,1613,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1614, '宜城市', 192, 12, ',0,12,192,1614,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1615, '南漳县', 192, 12, ',0,12,192,1615,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1616, '谷城县', 192, 12, ',0,12,192,1616,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1617, '保康县', 192, 12, ',0,12,192,1617,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1618, '孝南区', 193, 12, ',0,12,193,1618,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1619, '应城市', 193, 12, ',0,12,193,1619,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1620, '安陆市', 193, 12, ',0,12,193,1620,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1621, '汉川市', 193, 12, ',0,12,193,1621,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1622, '孝昌县', 193, 12, ',0,12,193,1622,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1623, '大悟县', 193, 12, ',0,12,193,1623,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1624, '云梦县', 193, 12, ',0,12,193,1624,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1625, '长阳县', 194, 12, ',0,12,194,1625,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1626, '五峰县', 194, 12, ',0,12,194,1626,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1627, '西陵区', 194, 12, ',0,12,194,1627,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1628, '伍家岗区', 194, 12, ',0,12,194,1628,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1629, '点军区', 194, 12, ',0,12,194,1629,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1630, '猇亭区', 194, 12, ',0,12,194,1630,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1631, '夷陵区', 194, 12, ',0,12,194,1631,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1632, '宜都市', 194, 12, ',0,12,194,1632,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1633, '当阳市', 194, 12, ',0,12,194,1633,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1634, '枝江市', 194, 12, ',0,12,194,1634,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1635, '远安县', 194, 12, ',0,12,194,1635,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1636, '兴山县', 194, 12, ',0,12,194,1636,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1637, '秭归县', 194, 12, ',0,12,194,1637,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1638, '恩施市', 195, 12, ',0,12,195,1638,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1639, '利川市', 195, 12, ',0,12,195,1639,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1640, '建始县', 195, 12, ',0,12,195,1640,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1641, '巴东县', 195, 12, ',0,12,195,1641,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1642, '宣恩县', 195, 12, ',0,12,195,1642,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1643, '咸丰县', 195, 12, ',0,12,195,1643,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1644, '来凤县', 195, 12, ',0,12,195,1644,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1645, '鹤峰县', 195, 12, ',0,12,195,1645,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1646, '岳麓区', 196, 13, ',0,13,196,1646,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1647, '芙蓉区', 196, 13, ',0,13,196,1647,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1648, '天心区', 196, 13, ',0,13,196,1648,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1649, '开福区', 196, 13, ',0,13,196,1649,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1650, '雨花区', 196, 13, ',0,13,196,1650,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1651, '开发区', 196, 13, ',0,13,196,1651,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1652, '浏阳市', 196, 13, ',0,13,196,1652,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1653, '长沙县', 196, 13, ',0,13,196,1653,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1654, '望城县', 196, 13, ',0,13,196,1654,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1655, '宁乡县', 196, 13, ',0,13,196,1655,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1656, '永定区', 197, 13, ',0,13,197,1656,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1657, '武陵源区', 197, 13, ',0,13,197,1657,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1658, '慈利县', 197, 13, ',0,13,197,1658,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1659, '桑植县', 197, 13, ',0,13,197,1659,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1660, '武陵区', 198, 13, ',0,13,198,1660,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1661, '鼎城区', 198, 13, ',0,13,198,1661,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1662, '津市市', 198, 13, ',0,13,198,1662,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1663, '安乡县', 198, 13, ',0,13,198,1663,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1664, '汉寿县', 198, 13, ',0,13,198,1664,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1665, '澧县', 198, 13, ',0,13,198,1665,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1666, '临澧县', 198, 13, ',0,13,198,1666,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1667, '桃源县', 198, 13, ',0,13,198,1667,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1668, '石门县', 198, 13, ',0,13,198,1668,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1669, '北湖区', 199, 13, ',0,13,199,1669,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1670, '苏仙区', 199, 13, ',0,13,199,1670,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1671, '资兴市', 199, 13, ',0,13,199,1671,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1672, '桂阳县', 199, 13, ',0,13,199,1672,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1673, '宜章县', 199, 13, ',0,13,199,1673,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1674, '永兴县', 199, 13, ',0,13,199,1674,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1675, '嘉禾县', 199, 13, ',0,13,199,1675,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1676, '临武县', 199, 13, ',0,13,199,1676,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1677, '汝城县', 199, 13, ',0,13,199,1677,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1678, '桂东县', 199, 13, ',0,13,199,1678,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1679, '安仁县', 199, 13, ',0,13,199,1679,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1680, '雁峰区', 200, 13, ',0,13,200,1680,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1681, '珠晖区', 200, 13, ',0,13,200,1681,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1682, '石鼓区', 200, 13, ',0,13,200,1682,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1683, '蒸湘区', 200, 13, ',0,13,200,1683,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1684, '南岳区', 200, 13, ',0,13,200,1684,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1685, '耒阳市', 200, 13, ',0,13,200,1685,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1686, '常宁市', 200, 13, ',0,13,200,1686,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1687, '衡阳县', 200, 13, ',0,13,200,1687,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1688, '衡南县', 200, 13, ',0,13,200,1688,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1689, '衡山县', 200, 13, ',0,13,200,1689,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1690, '衡东县', 200, 13, ',0,13,200,1690,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1691, '祁东县', 200, 13, ',0,13,200,1691,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1692, '鹤城区', 201, 13, ',0,13,201,1692,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1693, '靖州县', 201, 13, ',0,13,201,1693,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1694, '麻阳县', 201, 13, ',0,13,201,1694,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1695, '通道县', 201, 13, ',0,13,201,1695,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1696, '新晃县', 201, 13, ',0,13,201,1696,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1697, '芷江县', 201, 13, ',0,13,201,1697,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1698, '沅陵县', 201, 13, ',0,13,201,1698,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1699, '辰溪县', 201, 13, ',0,13,201,1699,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1700, '溆浦县', 201, 13, ',0,13,201,1700,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1701, '中方县', 201, 13, ',0,13,201,1701,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1702, '会同县', 201, 13, ',0,13,201,1702,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1703, '洪江市', 201, 13, ',0,13,201,1703,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1704, '娄星区', 202, 13, ',0,13,202,1704,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1705, '冷水江市', 202, 13, ',0,13,202,1705,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1706, '涟源市', 202, 13, ',0,13,202,1706,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1707, '双峰县', 202, 13, ',0,13,202,1707,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1708, '新化县', 202, 13, ',0,13,202,1708,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1709, '城步县', 203, 13, ',0,13,203,1709,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1710, '双清区', 203, 13, ',0,13,203,1710,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1711, '大祥区', 203, 13, ',0,13,203,1711,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1712, '北塔区', 203, 13, ',0,13,203,1712,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1713, '武冈市', 203, 13, ',0,13,203,1713,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1714, '邵东县', 203, 13, ',0,13,203,1714,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1715, '新邵县', 203, 13, ',0,13,203,1715,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1716, '邵阳县', 203, 13, ',0,13,203,1716,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1717, '隆回县', 203, 13, ',0,13,203,1717,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1718, '洞口县', 203, 13, ',0,13,203,1718,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1719, '绥宁县', 203, 13, ',0,13,203,1719,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1720, '新宁县', 203, 13, ',0,13,203,1720,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1721, '岳塘区', 204, 13, ',0,13,204,1721,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1722, '雨湖区', 204, 13, ',0,13,204,1722,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1723, '湘乡市', 204, 13, ',0,13,204,1723,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1724, '韶山市', 204, 13, ',0,13,204,1724,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1725, '湘潭县', 204, 13, ',0,13,204,1725,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1726, '吉首市', 205, 13, ',0,13,205,1726,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1727, '泸溪县', 205, 13, ',0,13,205,1727,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1728, '凤凰县', 205, 13, ',0,13,205,1728,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1729, '花垣县', 205, 13, ',0,13,205,1729,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1730, '保靖县', 205, 13, ',0,13,205,1730,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1731, '古丈县', 205, 13, ',0,13,205,1731,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1732, '永顺县', 205, 13, ',0,13,205,1732,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1733, '龙山县', 205, 13, ',0,13,205,1733,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1734, '赫山区', 206, 13, ',0,13,206,1734,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1735, '资阳区', 206, 13, ',0,13,206,1735,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1736, '沅江市', 206, 13, ',0,13,206,1736,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1737, '南县', 206, 13, ',0,13,206,1737,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1738, '桃江县', 206, 13, ',0,13,206,1738,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1739, '安化县', 206, 13, ',0,13,206,1739,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1740, '江华县', 207, 13, ',0,13,207,1740,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1741, '冷水滩区', 207, 13, ',0,13,207,1741,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1742, '零陵区', 207, 13, ',0,13,207,1742,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1743, '祁阳县', 207, 13, ',0,13,207,1743,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1744, '东安县', 207, 13, ',0,13,207,1744,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1745, '双牌县', 207, 13, ',0,13,207,1745,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1746, '道县', 207, 13, ',0,13,207,1746,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1747, '江永县', 207, 13, ',0,13,207,1747,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1748, '宁远县', 207, 13, ',0,13,207,1748,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1749, '蓝山县', 207, 13, ',0,13,207,1749,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1750, '新田县', 207, 13, ',0,13,207,1750,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1751, '岳阳楼区', 208, 13, ',0,13,208,1751,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1752, '君山区', 208, 13, ',0,13,208,1752,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1753, '云溪区', 208, 13, ',0,13,208,1753,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1754, '汨罗市', 208, 13, ',0,13,208,1754,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1755, '临湘市', 208, 13, ',0,13,208,1755,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1756, '岳阳县', 208, 13, ',0,13,208,1756,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1757, '华容县', 208, 13, ',0,13,208,1757,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1758, '湘阴县', 208, 13, ',0,13,208,1758,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1759, '平江县', 208, 13, ',0,13,208,1759,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1760, '天元区', 209, 13, ',0,13,209,1760,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1761, '荷塘区', 209, 13, ',0,13,209,1761,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1762, '芦淞区', 209, 13, ',0,13,209,1762,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1763, '石峰区', 209, 13, ',0,13,209,1763,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1764, '醴陵市', 209, 13, ',0,13,209,1764,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1765, '株洲县', 209, 13, ',0,13,209,1765,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1766, '攸县', 209, 13, ',0,13,209,1766,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1767, '茶陵县', 209, 13, ',0,13,209,1767,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1768, '炎陵县', 209, 13, ',0,13,209,1768,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1769, '朝阳区', 210, 14, ',0,14,210,1769,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1770, '宽城区', 210, 14, ',0,14,210,1770,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1771, '二道区', 210, 14, ',0,14,210,1771,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1772, '南关区', 210, 14, ',0,14,210,1772,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1773, '绿园区', 210, 14, ',0,14,210,1773,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1774, '双阳区', 210, 14, ',0,14,210,1774,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1775, '净月潭开发区', 210, 14, ',0,14,210,1775,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1776, '高新技术开发区', 210, 14, ',0,14,210,1776,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1777, '经济技术开发区', 210, 14, ',0,14,210,1777,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1778, '汽车产业开发区', 210, 14, ',0,14,210,1778,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1779, '德惠市', 210, 14, ',0,14,210,1779,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1780, '九台市', 210, 14, ',0,14,210,1780,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1781, '榆树市', 210, 14, ',0,14,210,1781,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1782, '农安县', 210, 14, ',0,14,210,1782,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1783, '船营区', 211, 14, ',0,14,211,1783,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1784, '昌邑区', 211, 14, ',0,14,211,1784,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1785, '龙潭区', 211, 14, ',0,14,211,1785,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1786, '丰满区', 211, 14, ',0,14,211,1786,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1787, '蛟河市', 211, 14, ',0,14,211,1787,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1788, '桦甸市', 211, 14, ',0,14,211,1788,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1789, '舒兰市', 211, 14, ',0,14,211,1789,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1790, '磐石市', 211, 14, ',0,14,211,1790,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1791, '永吉县', 211, 14, ',0,14,211,1791,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1792, '洮北区', 212, 14, ',0,14,212,1792,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1793, '洮南市', 212, 14, ',0,14,212,1793,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1794, '大安市', 212, 14, ',0,14,212,1794,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1795, '镇赉县', 212, 14, ',0,14,212,1795,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1796, '通榆县', 212, 14, ',0,14,212,1796,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1797, '江源区', 213, 14, ',0,14,213,1797,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1798, '八道江区', 213, 14, ',0,14,213,1798,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1799, '长白县', 213, 14, ',0,14,213,1799,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1800, '临江市', 213, 14, ',0,14,213,1800,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1801, '抚松县', 213, 14, ',0,14,213,1801,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1802, '靖宇县', 213, 14, ',0,14,213,1802,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1803, '龙山区', 214, 14, ',0,14,214,1803,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1804, '西安区', 214, 14, ',0,14,214,1804,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1805, '东丰县', 214, 14, ',0,14,214,1805,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1806, '东辽县', 214, 14, ',0,14,214,1806,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1807, '铁西区', 215, 14, ',0,14,215,1807,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1808, '铁东区', 215, 14, ',0,14,215,1808,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1809, '伊通县', 215, 14, ',0,14,215,1809,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1810, '公主岭市', 215, 14, ',0,14,215,1810,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1811, '双辽市', 215, 14, ',0,14,215,1811,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1812, '梨树县', 215, 14, ',0,14,215,1812,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1813, '前郭尔罗斯', 216, 14, ',0,14,216,1813,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1814, '宁江区', 216, 14, ',0,14,216,1814,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1815, '长岭县', 216, 14, ',0,14,216,1815,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1816, '乾安县', 216, 14, ',0,14,216,1816,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1817, '扶余市', 216, 14, ',0,14,216,1817,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1818, '东昌区', 217, 14, ',0,14,217,1818,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1819, '二道江区', 217, 14, ',0,14,217,1819,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1820, '梅河口市', 217, 14, ',0,14,217,1820,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1821, '集安市', 217, 14, ',0,14,217,1821,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1822, '通化县', 217, 14, ',0,14,217,1822,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1823, '辉南县', 217, 14, ',0,14,217,1823,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1824, '柳河县', 217, 14, ',0,14,217,1824,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1825, '延吉市', 218, 14, ',0,14,218,1825,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1826, '图们市', 218, 14, ',0,14,218,1826,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1827, '敦化市', 218, 14, ',0,14,218,1827,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1828, '珲春市', 218, 14, ',0,14,218,1828,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1829, '龙井市', 218, 14, ',0,14,218,1829,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1830, '和龙市', 218, 14, ',0,14,218,1830,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1831, '安图县', 218, 14, ',0,14,218,1831,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1832, '汪清县', 218, 14, ',0,14,218,1832,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1833, '玄武区', 219, 15, ',0,15,219,1833,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1834, '鼓楼区', 219, 15, ',0,15,219,1834,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1835, '白下区', 219, 15, ',0,15,219,1835,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1836, '建邺区', 219, 15, ',0,15,219,1836,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1837, '秦淮区', 219, 15, ',0,15,219,1837,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1838, '雨花台区', 219, 15, ',0,15,219,1838,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1839, '下关区', 219, 15, ',0,15,219,1839,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1840, '栖霞区', 219, 15, ',0,15,219,1840,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1841, '浦口区', 219, 15, ',0,15,219,1841,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1842, '江宁区', 219, 15, ',0,15,219,1842,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1843, '六合区', 219, 15, ',0,15,219,1843,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1844, '溧水区', 219, 15, ',0,15,219,1844,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1845, '高淳县', 219, 15, ',0,15,219,1845,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1846, '姑苏区', 220, 15, ',0,15,220,1846,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1849, '虎丘区', 220, 15, ',0,15,220,1849,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1850, '吴中区', 220, 15, ',0,15,220,1850,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1851, '相城区', 220, 15, ',0,15,220,1851,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1852, '苏州工业园区', 220, 15, ',0,15,220,1852,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1853, '昆山市', 220, 15, ',0,15,220,1853,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1854, '常熟市', 220, 15, ',0,15,220,1854,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1855, '张家港市', 220, 15, ',0,15,220,1855,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1867, '吴江区', 220, 15, ',0,15,220,1867,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1868, '太仓市', 220, 15, ',0,15,220,1868,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1869, '崇安区', 221, 15, ',0,15,221,1869,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1870, '北塘区', 221, 15, ',0,15,221,1870,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1871, '南长区', 221, 15, ',0,15,221,1871,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1872, '锡山区', 221, 15, ',0,15,221,1872,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1873, '惠山区', 221, 15, ',0,15,221,1873,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1874, '滨湖区', 221, 15, ',0,15,221,1874,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1875, '新区', 221, 15, ',0,15,221,1875,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1876, '江阴市', 221, 15, ',0,15,221,1876,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1877, '宜兴市', 221, 15, ',0,15,221,1877,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1878, '天宁区', 222, 15, ',0,15,222,1878,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1879, '钟楼区', 222, 15, ',0,15,222,1879,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1880, '戚墅堰区', 222, 15, ',0,15,222,1880,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1881, '郊区', 222, 15, ',0,15,222,1881,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1882, '新北区', 222, 15, ',0,15,222,1882,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1883, '武进区', 222, 15, ',0,15,222,1883,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1884, '溧阳市', 222, 15, ',0,15,222,1884,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1885, '金坛区', 222, 15, ',0,15,222,1885,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1886, '清河区', 223, 15, ',0,15,223,1886,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1887, '清浦区', 223, 15, ',0,15,223,1887,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1888, '楚州区', 223, 15, ',0,15,223,1888,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1889, '淮阴区', 223, 15, ',0,15,223,1889,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1890, '涟水县', 223, 15, ',0,15,223,1890,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1891, '洪泽县', 223, 15, ',0,15,223,1891,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1892, '盱眙县', 223, 15, ',0,15,223,1892,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1893, '金湖县', 223, 15, ',0,15,223,1893,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1894, '新浦区', 224, 15, ',0,15,224,1894,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1895, '连云区', 224, 15, ',0,15,224,1895,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1896, '海州区', 224, 15, ',0,15,224,1896,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1897, '赣榆县', 224, 15, ',0,15,224,1897,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1898, '东海县', 224, 15, ',0,15,224,1898,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1899, '灌云县', 224, 15, ',0,15,224,1899,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1900, '灌南县', 224, 15, ',0,15,224,1900,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1901, '崇川区', 225, 15, ',0,15,225,1901,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1902, '港闸区', 225, 15, ',0,15,225,1902,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1903, '经济开发区', 225, 15, ',0,15,225,1903,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1904, '启东市', 225, 15, ',0,15,225,1904,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1905, '如皋市', 225, 15, ',0,15,225,1905,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1906, '通州区', 225, 15, ',0,15,225,1906,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1907, '海门市', 225, 15, ',0,15,225,1907,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1908, '海安县', 225, 15, ',0,15,225,1908,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1909, '如东县', 225, 15, ',0,15,225,1909,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1910, '宿城区', 226, 15, ',0,15,226,1910,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1911, '宿豫区', 226, 15, ',0,15,226,1911,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1912, '宿豫县', 226, 15, ',0,15,226,1912,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1913, '沭阳县', 226, 15, ',0,15,226,1913,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1914, '泗阳县', 226, 15, ',0,15,226,1914,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1915, '泗洪县', 226, 15, ',0,15,226,1915,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1916, '海陵区', 227, 15, ',0,15,227,1916,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1917, '高港区', 227, 15, ',0,15,227,1917,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1918, '兴化市', 227, 15, ',0,15,227,1918,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1919, '靖江市', 227, 15, ',0,15,227,1919,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1920, '泰兴市', 227, 15, ',0,15,227,1920,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1921, '姜堰区', 227, 15, ',0,15,227,1921,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1922, '云龙区', 228, 15, ',0,15,228,1922,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1923, '鼓楼区', 228, 15, ',0,15,228,1923,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1924, '九里区', 228, 15, ',0,15,228,1924,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1925, '贾汪区', 228, 15, ',0,15,228,1925,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1926, '泉山区', 228, 15, ',0,15,228,1926,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1927, '新沂市', 228, 15, ',0,15,228,1927,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1928, '邳州市', 228, 15, ',0,15,228,1928,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1929, '丰县', 228, 15, ',0,15,228,1929,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1930, '沛县', 228, 15, ',0,15,228,1930,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1931, '铜山区', 228, 15, ',0,15,228,1931,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1932, '睢宁县', 228, 15, ',0,15,228,1932,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1933, '城区', 229, 15, ',0,15,229,1933,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1934, '亭湖区', 229, 15, ',0,15,229,1934,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1935, '盐都区', 229, 15, ',0,15,229,1935,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1937, '东台市', 229, 15, ',0,15,229,1937,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1938, '大丰区', 229, 15, ',0,15,229,1938,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1939, '响水县', 229, 15, ',0,15,229,1939,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1940, '滨海县', 229, 15, ',0,15,229,1940,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1941, '阜宁县', 229, 15, ',0,15,229,1941,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1942, '射阳县', 229, 15, ',0,15,229,1942,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1943, '建湖县', 229, 15, ',0,15,229,1943,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1944, '广陵区', 230, 15, ',0,15,230,1944,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1945, '维扬区', 230, 15, ',0,15,230,1945,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1946, '邗江区', 230, 15, ',0,15,230,1946,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1947, '仪征市', 230, 15, ',0,15,230,1947,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1948, '高邮市', 230, 15, ',0,15,230,1948,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1949, '江都区', 230, 15, ',0,15,230,1949,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1950, '宝应县', 230, 15, ',0,15,230,1950,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1951, '京口区', 231, 15, ',0,15,231,1951,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1952, '润州区', 231, 15, ',0,15,231,1952,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1953, '丹徒区', 231, 15, ',0,15,231,1953,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1954, '丹阳市', 231, 15, ',0,15,231,1954,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1955, '扬中市', 231, 15, ',0,15,231,1955,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1956, '句容市', 231, 15, ',0,15,231,1956,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1957, '东湖区', 232, 16, ',0,16,232,1957,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1958, '西湖区', 232, 16, ',0,16,232,1958,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1959, '青云谱区', 232, 16, ',0,16,232,1959,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1960, '湾里区', 232, 16, ',0,16,232,1960,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1961, '青山湖区', 232, 16, ',0,16,232,1961,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1962, '红谷滩新区', 232, 16, ',0,16,232,1962,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1963, '昌北区', 232, 16, ',0,16,232,1963,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1964, '高新区', 232, 16, ',0,16,232,1964,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1965, '南昌县', 232, 16, ',0,16,232,1965,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1966, '新建县', 232, 16, ',0,16,232,1966,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1967, '安义县', 232, 16, ',0,16,232,1967,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1968, '进贤县', 232, 16, ',0,16,232,1968,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1969, '临川区', 233, 16, ',0,16,233,1969,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1970, '南城县', 233, 16, ',0,16,233,1970,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1971, '黎川县', 233, 16, ',0,16,233,1971,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1972, '南丰县', 233, 16, ',0,16,233,1972,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1973, '崇仁县', 233, 16, ',0,16,233,1973,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1974, '乐安县', 233, 16, ',0,16,233,1974,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1975, '宜黄县', 233, 16, ',0,16,233,1975,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1976, '金溪县', 233, 16, ',0,16,233,1976,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1977, '资溪县', 233, 16, ',0,16,233,1977,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1978, '东乡县', 233, 16, ',0,16,233,1978,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1979, '广昌县', 233, 16, ',0,16,233,1979,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1980, '章贡区', 234, 16, ',0,16,234,1980,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1981, '于都县', 234, 16, ',0,16,234,1981,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1982, '瑞金市', 234, 16, ',0,16,234,1982,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1983, '南康市', 234, 16, ',0,16,234,1983,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1984, '赣县', 234, 16, ',0,16,234,1984,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1985, '信丰县', 234, 16, ',0,16,234,1985,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1986, '大余县', 234, 16, ',0,16,234,1986,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1987, '上犹县', 234, 16, ',0,16,234,1987,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1988, '崇义县', 234, 16, ',0,16,234,1988,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1989, '安远县', 234, 16, ',0,16,234,1989,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1990, '龙南县', 234, 16, ',0,16,234,1990,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1991, '定南县', 234, 16, ',0,16,234,1991,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1992, '全南县', 234, 16, ',0,16,234,1992,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1993, '宁都县', 234, 16, ',0,16,234,1993,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1994, '兴国县', 234, 16, ',0,16,234,1994,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1995, '会昌县', 234, 16, ',0,16,234,1995,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1996, '寻乌县', 234, 16, ',0,16,234,1996,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1997, '石城县', 234, 16, ',0,16,234,1997,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1998, '安福县', 235, 16, ',0,16,235,1998,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1999, '吉州区', 235, 16, ',0,16,235,1999,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2000, '青原区', 235, 16, ',0,16,235,2000,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2001, '井冈山市', 235, 16, ',0,16,235,2001,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2002, '吉安县', 235, 16, ',0,16,235,2002,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2003, '吉水县', 235, 16, ',0,16,235,2003,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2004, '峡江县', 235, 16, ',0,16,235,2004,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2005, '新干县', 235, 16, ',0,16,235,2005,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2006, '永丰县', 235, 16, ',0,16,235,2006,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2007, '泰和县', 235, 16, ',0,16,235,2007,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2008, '遂川县', 235, 16, ',0,16,235,2008,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2009, '万安县', 235, 16, ',0,16,235,2009,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2010, '永新县', 235, 16, ',0,16,235,2010,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2011, '珠山区', 236, 16, ',0,16,236,2011,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2012, '昌江区', 236, 16, ',0,16,236,2012,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2013, '乐平市', 236, 16, ',0,16,236,2013,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2014, '浮梁县', 236, 16, ',0,16,236,2014,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2015, '浔阳区', 237, 16, ',0,16,237,2015,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2016, '庐山区', 237, 16, ',0,16,237,2016,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2017, '瑞昌市', 237, 16, ',0,16,237,2017,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2018, '九江县', 237, 16, ',0,16,237,2018,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2019, '武宁县', 237, 16, ',0,16,237,2019,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2020, '修水县', 237, 16, ',0,16,237,2020,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2021, '永修县', 237, 16, ',0,16,237,2021,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2022, '德安县', 237, 16, ',0,16,237,2022,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2023, '星子县', 237, 16, ',0,16,237,2023,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2024, '都昌县', 237, 16, ',0,16,237,2024,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2025, '湖口县', 237, 16, ',0,16,237,2025,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2026, '彭泽县', 237, 16, ',0,16,237,2026,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2027, '安源区', 238, 16, ',0,16,238,2027,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2028, '湘东区', 238, 16, ',0,16,238,2028,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2029, '莲花县', 238, 16, ',0,16,238,2029,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2030, '芦溪县', 238, 16, ',0,16,238,2030,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2031, '上栗县', 238, 16, ',0,16,238,2031,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2032, '信州区', 239, 16, ',0,16,239,2032,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2033, '德兴市', 239, 16, ',0,16,239,2033,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2034, '上饶县', 239, 16, ',0,16,239,2034,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2035, '广丰县', 239, 16, ',0,16,239,2035,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2036, '玉山县', 239, 16, ',0,16,239,2036,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2037, '铅山县', 239, 16, ',0,16,239,2037,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2038, '横峰县', 239, 16, ',0,16,239,2038,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2039, '弋阳县', 239, 16, ',0,16,239,2039,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2040, '余干县', 239, 16, ',0,16,239,2040,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2041, '鄱阳县', 239, 16, ',0,16,239,2041,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2042, '万年县', 239, 16, ',0,16,239,2042,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2043, '婺源县', 239, 16, ',0,16,239,2043,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2044, '渝水区', 240, 16, ',0,16,240,2044,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2045, '分宜县', 240, 16, ',0,16,240,2045,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2046, '袁州区', 241, 16, ',0,16,241,2046,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2047, '丰城市', 241, 16, ',0,16,241,2047,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2048, '樟树市', 241, 16, ',0,16,241,2048,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2049, '高安市', 241, 16, ',0,16,241,2049,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2050, '奉新县', 241, 16, ',0,16,241,2050,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2051, '万载县', 241, 16, ',0,16,241,2051,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2052, '上高县', 241, 16, ',0,16,241,2052,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2053, '宜丰县', 241, 16, ',0,16,241,2053,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2054, '靖安县', 241, 16, ',0,16,241,2054,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2055, '铜鼓县', 241, 16, ',0,16,241,2055,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2056, '月湖区', 242, 16, ',0,16,242,2056,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2057, '贵溪市', 242, 16, ',0,16,242,2057,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2058, '余江县', 242, 16, ',0,16,242,2058,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2059, '沈河区', 243, 17, ',0,17,243,2059,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2060, '皇姑区', 243, 17, ',0,17,243,2060,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2061, '和平区', 243, 17, ',0,17,243,2061,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2062, '大东区', 243, 17, ',0,17,243,2062,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2063, '铁西区', 243, 17, ',0,17,243,2063,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2064, '苏家屯区', 243, 17, ',0,17,243,2064,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2065, '东陵区', 243, 17, ',0,17,243,2065,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2066, '沈北新区', 243, 17, ',0,17,243,2066,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2067, '于洪区', 243, 17, ',0,17,243,2067,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2068, '浑南新区', 243, 17, ',0,17,243,2068,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2069, '新民市', 243, 17, ',0,17,243,2069,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2070, '辽中县', 243, 17, ',0,17,243,2070,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2071, '康平县', 243, 17, ',0,17,243,2071,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2072, '法库县', 243, 17, ',0,17,243,2072,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2073, '西岗区', 244, 17, ',0,17,244,2073,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2074, '中山区', 244, 17, ',0,17,244,2074,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2075, '沙河口区', 244, 17, ',0,17,244,2075,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2076, '甘井子区', 244, 17, ',0,17,244,2076,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2077, '旅顺口区', 244, 17, ',0,17,244,2077,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2078, '金州区', 244, 17, ',0,17,244,2078,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2079, '开发区', 244, 17, ',0,17,244,2079,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2080, '瓦房店市', 244, 17, ',0,17,244,2080,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2081, '普兰店市', 244, 17, ',0,17,244,2081,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2082, '庄河市', 244, 17, ',0,17,244,2082,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2083, '长海县', 244, 17, ',0,17,244,2083,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2084, '铁东区', 245, 17, ',0,17,245,2084,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2085, '铁西区', 245, 17, ',0,17,245,2085,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2086, '立山区', 245, 17, ',0,17,245,2086,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2087, '千山区', 245, 17, ',0,17,245,2087,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2088, '岫岩县', 245, 17, ',0,17,245,2088,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2089, '海城市', 245, 17, ',0,17,245,2089,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2090, '台安县', 245, 17, ',0,17,245,2090,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2091, '本溪县', 246, 17, ',0,17,246,2091,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2092, '平山区', 246, 17, ',0,17,246,2092,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2093, '明山区', 246, 17, ',0,17,246,2093,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2094, '溪湖区', 246, 17, ',0,17,246,2094,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2095, '南芬区', 246, 17, ',0,17,246,2095,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2096, '桓仁县', 246, 17, ',0,17,246,2096,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2097, '双塔区', 247, 17, ',0,17,247,2097,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2098, '龙城区', 247, 17, ',0,17,247,2098,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2099, '喀喇沁左翼蒙古族自治县', 247, 17, ',0,17,247,2099,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2100, '北票市', 247, 17, ',0,17,247,2100,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2101, '凌源市', 247, 17, ',0,17,247,2101,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2102, '朝阳县', 247, 17, ',0,17,247,2102,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2103, '建平县', 247, 17, ',0,17,247,2103,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2104, '振兴区', 248, 17, ',0,17,248,2104,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2105, '元宝区', 248, 17, ',0,17,248,2105,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2106, '振安区', 248, 17, ',0,17,248,2106,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2107, '宽甸县', 248, 17, ',0,17,248,2107,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2108, '东港市', 248, 17, ',0,17,248,2108,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2109, '凤城市', 248, 17, ',0,17,248,2109,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2110, '顺城区', 249, 17, ',0,17,249,2110,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2111, '新抚区', 249, 17, ',0,17,249,2111,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2112, '东洲区', 249, 17, ',0,17,249,2112,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2113, '望花区', 249, 17, ',0,17,249,2113,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2114, '清原县', 249, 17, ',0,17,249,2114,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2115, '新宾县', 249, 17, ',0,17,249,2115,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2116, '抚顺县', 249, 17, ',0,17,249,2116,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2117, '市辖区', 250, 17, ',0,17,250,2117,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2118, '海州区', 250, 17, ',0,17,250,2118,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2119, '新邱区', 250, 17, ',0,17,250,2119,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2120, '太平区', 250, 17, ',0,17,250,2120,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2121, '清河门区', 250, 17, ',0,17,250,2121,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2122, '细河区', 250, 17, ',0,17,250,2122,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2123, '彰武县', 250, 17, ',0,17,250,2123,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2124, '龙港区', 251, 17, ',0,17,251,2124,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2125, '南票区', 251, 17, ',0,17,251,2125,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2126, '连山区', 251, 17, ',0,17,251,2126,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2127, '兴城市', 251, 17, ',0,17,251,2127,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2128, '绥中县', 251, 17, ',0,17,251,2128,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2129, '建昌县', 251, 17, ',0,17,251,2129,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2130, '太和区', 252, 17, ',0,17,252,2130,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2131, '古塔区', 252, 17, ',0,17,252,2131,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2132, '凌河区', 252, 17, ',0,17,252,2132,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2133, '凌海市', 252, 17, ',0,17,252,2133,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2134, '北镇市', 252, 17, ',0,17,252,2134,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2135, '黑山县', 252, 17, ',0,17,252,2135,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2136, '义县', 252, 17, ',0,17,252,2136,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2137, '白塔区', 253, 17, ',0,17,253,2137,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2138, '文圣区', 253, 17, ',0,17,253,2138,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2139, '宏伟区', 253, 17, ',0,17,253,2139,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2140, '太子河区', 253, 17, ',0,17,253,2140,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2141, '弓长岭区', 253, 17, ',0,17,253,2141,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2142, '灯塔市', 253, 17, ',0,17,253,2142,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2143, '辽阳县', 253, 17, ',0,17,253,2143,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2144, '双台子区', 254, 17, ',0,17,254,2144,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2145, '兴隆台区', 254, 17, ',0,17,254,2145,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2146, '大洼县', 254, 17, ',0,17,254,2146,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2147, '盘山县', 254, 17, ',0,17,254,2147,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2148, '银州区', 255, 17, ',0,17,255,2148,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2149, '清河区', 255, 17, ',0,17,255,2149,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2150, '调兵山市', 255, 17, ',0,17,255,2150,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2151, '开原市', 255, 17, ',0,17,255,2151,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2152, '铁岭县', 255, 17, ',0,17,255,2152,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2153, '西丰县', 255, 17, ',0,17,255,2153,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2154, '昌图县', 255, 17, ',0,17,255,2154,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2155, '站前区', 256, 17, ',0,17,256,2155,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2156, '西市区', 256, 17, ',0,17,256,2156,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2157, '鲅鱼圈区', 256, 17, ',0,17,256,2157,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2158, '老边区', 256, 17, ',0,17,256,2158,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2159, '盖州市', 256, 17, ',0,17,256,2159,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2160, '大石桥市', 256, 17, ',0,17,256,2160,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2161, '回民区', 257, 18, ',0,18,257,2161,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2162, '玉泉区', 257, 18, ',0,18,257,2162,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2163, '新城区', 257, 18, ',0,18,257,2163,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2164, '赛罕区', 257, 18, ',0,18,257,2164,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2165, '清水河县', 257, 18, ',0,18,257,2165,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2166, '土默特左旗', 257, 18, ',0,18,257,2166,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2167, '托克托县', 257, 18, ',0,18,257,2167,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2168, '和林格尔县', 257, 18, ',0,18,257,2168,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2169, '武川县', 257, 18, ',0,18,257,2169,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2170, '阿拉善左旗', 258, 18, ',0,18,258,2170,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2171, '阿拉善右旗', 258, 18, ',0,18,258,2171,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2172, '额济纳旗', 258, 18, ',0,18,258,2172,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2173, '临河区', 259, 18, ',0,18,259,2173,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2174, '五原县', 259, 18, ',0,18,259,2174,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2175, '磴口县', 259, 18, ',0,18,259,2175,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2176, '乌拉特前旗', 259, 18, ',0,18,259,2176,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2177, '乌拉特中旗', 259, 18, ',0,18,259,2177,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2178, '乌拉特后旗', 259, 18, ',0,18,259,2178,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2179, '杭锦后旗', 259, 18, ',0,18,259,2179,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2180, '昆都仑区', 260, 18, ',0,18,260,2180,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2181, '青山区', 260, 18, ',0,18,260,2181,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2182, '东河区', 260, 18, ',0,18,260,2182,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2183, '九原区', 260, 18, ',0,18,260,2183,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2184, '石拐区', 260, 18, ',0,18,260,2184,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2185, '白云鄂博', 260, 18, ',0,18,260,2185,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2186, '土默特右旗', 260, 18, ',0,18,260,2186,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2187, '固阳县', 260, 18, ',0,18,260,2187,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2188, '达尔罕茂明安联合旗', 260, 18, ',0,18,260,2188,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2189, '红山区', 261, 18, ',0,18,261,2189,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2190, '元宝山区', 261, 18, ',0,18,261,2190,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2191, '松山区', 261, 18, ',0,18,261,2191,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2192, '阿鲁科尔沁旗', 261, 18, ',0,18,261,2192,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2193, '巴林左旗', 261, 18, ',0,18,261,2193,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2194, '巴林右旗', 261, 18, ',0,18,261,2194,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2195, '林西县', 261, 18, ',0,18,261,2195,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2196, '克什克腾旗', 261, 18, ',0,18,261,2196,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2197, '翁牛特旗', 261, 18, ',0,18,261,2197,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2198, '喀喇沁旗', 261, 18, ',0,18,261,2198,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2199, '宁城县', 261, 18, ',0,18,261,2199,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2200, '敖汉旗', 261, 18, ',0,18,261,2200,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2201, '东胜区', 262, 18, ',0,18,262,2201,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2202, '达拉特旗', 262, 18, ',0,18,262,2202,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2203, '准格尔旗', 262, 18, ',0,18,262,2203,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2204, '鄂托克前旗', 262, 18, ',0,18,262,2204,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2205, '鄂托克旗', 262, 18, ',0,18,262,2205,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2206, '杭锦旗', 262, 18, ',0,18,262,2206,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2207, '乌审旗', 262, 18, ',0,18,262,2207,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2208, '伊金霍洛旗', 262, 18, ',0,18,262,2208,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2209, '海拉尔区', 263, 18, ',0,18,263,2209,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2210, '莫力达瓦', 263, 18, ',0,18,263,2210,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2211, '满洲里市', 263, 18, ',0,18,263,2211,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2212, '牙克石市', 263, 18, ',0,18,263,2212,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2213, '扎兰屯市', 263, 18, ',0,18,263,2213,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2214, '额尔古纳市', 263, 18, ',0,18,263,2214,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2215, '根河市', 263, 18, ',0,18,263,2215,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2216, '阿荣旗', 263, 18, ',0,18,263,2216,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2217, '鄂伦春自治旗', 263, 18, ',0,18,263,2217,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2218, '鄂温克族自治旗', 263, 18, ',0,18,263,2218,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2219, '陈巴尔虎旗', 263, 18, ',0,18,263,2219,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2220, '新巴尔虎左旗', 263, 18, ',0,18,263,2220,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2221, '新巴尔虎右旗', 263, 18, ',0,18,263,2221,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2222, '科尔沁区', 264, 18, ',0,18,264,2222,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2223, '霍林郭勒市', 264, 18, ',0,18,264,2223,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2224, '科尔沁左翼中旗', 264, 18, ',0,18,264,2224,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2225, '科尔沁左翼后旗', 264, 18, ',0,18,264,2225,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2226, '开鲁县', 264, 18, ',0,18,264,2226,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2227, '库伦旗', 264, 18, ',0,18,264,2227,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2228, '奈曼旗', 264, 18, ',0,18,264,2228,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2229, '扎鲁特旗', 264, 18, ',0,18,264,2229,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2230, '海勃湾区', 265, 18, ',0,18,265,2230,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2231, '乌达区', 265, 18, ',0,18,265,2231,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2232, '海南区', 265, 18, ',0,18,265,2232,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2233, '化德县', 266, 18, ',0,18,266,2233,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2234, '集宁区', 266, 18, ',0,18,266,2234,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2235, '丰镇市', 266, 18, ',0,18,266,2235,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2236, '卓资县', 266, 18, ',0,18,266,2236,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2237, '商都县', 266, 18, ',0,18,266,2237,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2238, '兴和县', 266, 18, ',0,18,266,2238,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2239, '凉城县', 266, 18, ',0,18,266,2239,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2240, '察哈尔右翼前旗', 266, 18, ',0,18,266,2240,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2241, '察哈尔右翼中旗', 266, 18, ',0,18,266,2241,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2242, '察哈尔右翼后旗', 266, 18, ',0,18,266,2242,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2243, '四子王旗', 266, 18, ',0,18,266,2243,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2244, '二连浩特市', 267, 18, ',0,18,267,2244,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2245, '锡林浩特市', 267, 18, ',0,18,267,2245,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2246, '阿巴嘎旗', 267, 18, ',0,18,267,2246,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2247, '苏尼特左旗', 267, 18, ',0,18,267,2247,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2248, '苏尼特右旗', 267, 18, ',0,18,267,2248,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2249, '东乌珠穆沁旗', 267, 18, ',0,18,267,2249,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2250, '西乌珠穆沁旗', 267, 18, ',0,18,267,2250,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2251, '太仆寺旗', 267, 18, ',0,18,267,2251,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2252, '镶黄旗', 267, 18, ',0,18,267,2252,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2253, '正镶白旗', 267, 18, ',0,18,267,2253,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2254, '正蓝旗', 267, 18, ',0,18,267,2254,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2255, '多伦县', 267, 18, ',0,18,267,2255,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2256, '乌兰浩特市', 268, 18, ',0,18,268,2256,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2257, '阿尔山市', 268, 18, ',0,18,268,2257,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2258, '科尔沁右翼前旗', 268, 18, ',0,18,268,2258,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2259, '科尔沁右翼中旗', 268, 18, ',0,18,268,2259,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2260, '扎赉特旗', 268, 18, ',0,18,268,2260,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2261, '突泉县', 268, 18, ',0,18,268,2261,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2262, '西夏区', 269, 19, ',0,19,269,2262,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2263, '金凤区', 269, 19, ',0,19,269,2263,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2264, '兴庆区', 269, 19, ',0,19,269,2264,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2265, '灵武市', 269, 19, ',0,19,269,2265,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2266, '永宁县', 269, 19, ',0,19,269,2266,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2267, '贺兰县', 269, 19, ',0,19,269,2267,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2268, '原州区', 270, 19, ',0,19,270,2268,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2270, '西吉县', 270, 19, ',0,19,270,2270,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2271, '隆德县', 270, 19, ',0,19,270,2271,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2272, '泾源县', 270, 19, ',0,19,270,2272,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2273, '彭阳县', 270, 19, ',0,19,270,2273,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2274, '惠农区', 271, 19, ',0,19,271,2274,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2275, '大武口区', 271, 19, ',0,19,271,2275,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2276, '惠农区', 271, 19, ',0,19,271,2276,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2277, '陶乐县', 271, 19, ',0,19,271,2277,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2278, '平罗县', 271, 19, ',0,19,271,2278,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2279, '利通区', 272, 19, ',0,19,272,2279,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2281, '青铜峡市', 272, 19, ',0,19,272,2281,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2283, '盐池县', 272, 19, ',0,19,272,2283,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2284, '同心县', 272, 19, ',0,19,272,2284,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2285, '沙坡头区', 273, 19, ',0,19,273,2285,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2286, '海原县', 273, 19, ',0,19,273,2286,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2287, '中宁县', 273, 19, ',0,19,273,2287,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2288, '城中区', 274, 20, ',0,20,274,2288,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2289, '城东区', 274, 20, ',0,20,274,2289,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2290, '城西区', 274, 20, ',0,20,274,2290,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2291, '城北区', 274, 20, ',0,20,274,2291,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2292, '湟中县', 274, 20, ',0,20,274,2292,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2293, '湟源县', 274, 20, ',0,20,274,2293,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2294, '大通县', 274, 20, ',0,20,274,2294,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2295, '玛沁县', 275, 20, ',0,20,275,2295,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2296, '班玛县', 275, 20, ',0,20,275,2296,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2297, '甘德县', 275, 20, ',0,20,275,2297,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2298, '达日县', 275, 20, ',0,20,275,2298,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2299, '久治县', 275, 20, ',0,20,275,2299,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2300, '玛多县', 275, 20, ',0,20,275,2300,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2301, '海晏县', 276, 20, ',0,20,276,2301,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2302, '祁连县', 276, 20, ',0,20,276,2302,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2303, '刚察县', 276, 20, ',0,20,276,2303,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2304, '门源县', 276, 20, ',0,20,276,2304,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2305, '平安县', 277, 20, ',0,20,277,2305,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2306, '乐都县', 277, 20, ',0,20,277,2306,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2307, '民和县', 277, 20, ',0,20,277,2307,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2308, '互助县', 277, 20, ',0,20,277,2308,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2309, '化隆县', 277, 20, ',0,20,277,2309,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2310, '循化县', 277, 20, ',0,20,277,2310,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2311, '共和县', 278, 20, ',0,20,278,2311,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2312, '同德县', 278, 20, ',0,20,278,2312,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2313, '贵德县', 278, 20, ',0,20,278,2313,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2314, '兴海县', 278, 20, ',0,20,278,2314,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2315, '贵南县', 278, 20, ',0,20,278,2315,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2316, '德令哈市', 279, 20, ',0,20,279,2316,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2317, '格尔木市', 279, 20, ',0,20,279,2317,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2318, '乌兰县', 279, 20, ',0,20,279,2318,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2319, '都兰县', 279, 20, ',0,20,279,2319,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2320, '天峻县', 279, 20, ',0,20,279,2320,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2321, '同仁县', 280, 20, ',0,20,280,2321,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2322, '尖扎县', 280, 20, ',0,20,280,2322,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2323, '泽库县', 280, 20, ',0,20,280,2323,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2324, '河南蒙古族自治县', 280, 20, ',0,20,280,2324,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2325, '玉树县', 281, 20, ',0,20,281,2325,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2326, '杂多县', 281, 20, ',0,20,281,2326,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2327, '称多县', 281, 20, ',0,20,281,2327,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2328, '治多县', 281, 20, ',0,20,281,2328,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2329, '囊谦县', 281, 20, ',0,20,281,2329,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2330, '曲麻莱县', 281, 20, ',0,20,281,2330,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2331, '市中区', 282, 21, ',0,21,282,2331,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2332, '历下区', 282, 21, ',0,21,282,2332,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2333, '天桥区', 282, 21, ',0,21,282,2333,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2334, '槐荫区', 282, 21, ',0,21,282,2334,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2335, '历城区', 282, 21, ',0,21,282,2335,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2336, '长清区', 282, 21, ',0,21,282,2336,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2337, '章丘市', 282, 21, ',0,21,282,2337,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2338, '平阴县', 282, 21, ',0,21,282,2338,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2339, '济阳县', 282, 21, ',0,21,282,2339,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2340, '商河县', 282, 21, ',0,21,282,2340,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2341, '市南区', 283, 21, ',0,21,283,2341,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2342, '市北区', 283, 21, ',0,21,283,2342,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2343, '城阳区', 283, 21, ',0,21,283,2343,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2344, '四方区', 283, 21, ',0,21,283,2344,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2345, '李沧区', 283, 21, ',0,21,283,2345,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2346, '黄岛区', 283, 21, ',0,21,283,2346,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2347, '崂山区', 283, 21, ',0,21,283,2347,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2348, '胶州市', 283, 21, ',0,21,283,2348,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2349, '即墨市', 283, 21, ',0,21,283,2349,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2350, '平度市', 283, 21, ',0,21,283,2350,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2351, '胶南市', 283, 21, ',0,21,283,2351,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2352, '莱西市', 283, 21, ',0,21,283,2352,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2353, '滨城区', 284, 21, ',0,21,284,2353,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2354, '惠民县', 284, 21, ',0,21,284,2354,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2355, '阳信县', 284, 21, ',0,21,284,2355,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2356, '无棣县', 284, 21, ',0,21,284,2356,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2357, '沾化县', 284, 21, ',0,21,284,2357,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2358, '博兴县', 284, 21, ',0,21,284,2358,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2359, '邹平县', 284, 21, ',0,21,284,2359,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2360, '德城区', 285, 21, ',0,21,285,2360,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2361, '陵县', 285, 21, ',0,21,285,2361,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2362, '乐陵市', 285, 21, ',0,21,285,2362,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2363, '禹城市', 285, 21, ',0,21,285,2363,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2364, '宁津县', 285, 21, ',0,21,285,2364,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2365, '庆云县', 285, 21, ',0,21,285,2365,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2366, '临邑县', 285, 21, ',0,21,285,2366,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2367, '齐河县', 285, 21, ',0,21,285,2367,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2368, '平原县', 285, 21, ',0,21,285,2368,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2369, '夏津县', 285, 21, ',0,21,285,2369,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2370, '武城县', 285, 21, ',0,21,285,2370,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2371, '东营区', 286, 21, ',0,21,286,2371,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2372, '河口区', 286, 21, ',0,21,286,2372,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2373, '垦利县', 286, 21, ',0,21,286,2373,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2374, '利津县', 286, 21, ',0,21,286,2374,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2375, '广饶县', 286, 21, ',0,21,286,2375,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2376, '牡丹区', 287, 21, ',0,21,287,2376,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2377, '曹县', 287, 21, ',0,21,287,2377,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2378, '单县', 287, 21, ',0,21,287,2378,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2379, '成武县', 287, 21, ',0,21,287,2379,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2380, '巨野县', 287, 21, ',0,21,287,2380,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2381, '郓城县', 287, 21, ',0,21,287,2381,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2382, '鄄城县', 287, 21, ',0,21,287,2382,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2383, '定陶县', 287, 21, ',0,21,287,2383,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2384, '东明县', 287, 21, ',0,21,287,2384,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2385, '市中区', 288, 21, ',0,21,288,2385,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2386, '任城区', 288, 21, ',0,21,288,2386,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2387, '曲阜市', 288, 21, ',0,21,288,2387,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2388, '兖州市', 288, 21, ',0,21,288,2388,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2389, '邹城市', 288, 21, ',0,21,288,2389,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2390, '微山县', 288, 21, ',0,21,288,2390,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2391, '鱼台县', 288, 21, ',0,21,288,2391,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2392, '金乡县', 288, 21, ',0,21,288,2392,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2393, '嘉祥县', 288, 21, ',0,21,288,2393,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2394, '汶上县', 288, 21, ',0,21,288,2394,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2395, '泗水县', 288, 21, ',0,21,288,2395,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2396, '梁山县', 288, 21, ',0,21,288,2396,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2397, '莱城区', 289, 21, ',0,21,289,2397,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2398, '钢城区', 289, 21, ',0,21,289,2398,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2399, '东昌府区', 290, 21, ',0,21,290,2399,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2400, '临清市', 290, 21, ',0,21,290,2400,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2401, '阳谷县', 290, 21, ',0,21,290,2401,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2402, '莘县', 290, 21, ',0,21,290,2402,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2403, '茌平县', 290, 21, ',0,21,290,2403,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2404, '东阿县', 290, 21, ',0,21,290,2404,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2405, '冠县', 290, 21, ',0,21,290,2405,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2406, '高唐县', 290, 21, ',0,21,290,2406,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2407, '兰山区', 291, 21, ',0,21,291,2407,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2408, '罗庄区', 291, 21, ',0,21,291,2408,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2409, '河东区', 291, 21, ',0,21,291,2409,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2410, '沂南县', 291, 21, ',0,21,291,2410,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2411, '郯城县', 291, 21, ',0,21,291,2411,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2412, '沂水县', 291, 21, ',0,21,291,2412,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2413, '兰陵县', 291, 21, ',0,21,291,2413,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2414, '费县', 291, 21, ',0,21,291,2414,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2415, '平邑县', 291, 21, ',0,21,291,2415,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2416, '莒南县', 291, 21, ',0,21,291,2416,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2417, '蒙阴县', 291, 21, ',0,21,291,2417,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2418, '临沭县', 291, 21, ',0,21,291,2418,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2419, '东港区', 292, 21, ',0,21,292,2419,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2420, '岚山区', 292, 21, ',0,21,292,2420,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2421, '五莲县', 292, 21, ',0,21,292,2421,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2422, '莒县', 292, 21, ',0,21,292,2422,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2423, '泰山区', 293, 21, ',0,21,293,2423,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2424, '岱岳区', 293, 21, ',0,21,293,2424,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2425, '新泰市', 293, 21, ',0,21,293,2425,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2426, '肥城市', 293, 21, ',0,21,293,2426,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2427, '宁阳县', 293, 21, ',0,21,293,2427,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2428, '东平县', 293, 21, ',0,21,293,2428,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2429, '荣成市', 294, 21, ',0,21,294,2429,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2430, '乳山市', 294, 21, ',0,21,294,2430,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2431, '环翠区', 294, 21, ',0,21,294,2431,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2432, '文登市', 294, 21, ',0,21,294,2432,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2433, '潍城区', 295, 21, ',0,21,295,2433,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2434, '寒亭区', 295, 21, ',0,21,295,2434,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2435, '坊子区', 295, 21, ',0,21,295,2435,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2436, '奎文区', 295, 21, ',0,21,295,2436,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2437, '青州市', 295, 21, ',0,21,295,2437,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2438, '诸城市', 295, 21, ',0,21,295,2438,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2439, '寿光市', 295, 21, ',0,21,295,2439,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2440, '安丘市', 295, 21, ',0,21,295,2440,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2441, '高密市', 295, 21, ',0,21,295,2441,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2442, '昌邑市', 295, 21, ',0,21,295,2442,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2443, '临朐县', 295, 21, ',0,21,295,2443,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2444, '昌乐县', 295, 21, ',0,21,295,2444,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2445, '芝罘区', 296, 21, ',0,21,296,2445,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2446, '福山区', 296, 21, ',0,21,296,2446,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2447, '牟平区', 296, 21, ',0,21,296,2447,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2448, '莱山区', 296, 21, ',0,21,296,2448,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2449, '开发区', 296, 21, ',0,21,296,2449,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2450, '龙口市', 296, 21, ',0,21,296,2450,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2451, '莱阳市', 296, 21, ',0,21,296,2451,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2452, '莱州市', 296, 21, ',0,21,296,2452,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2453, '蓬莱市', 296, 21, ',0,21,296,2453,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2454, '招远市', 296, 21, ',0,21,296,2454,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2455, '栖霞市', 296, 21, ',0,21,296,2455,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2456, '海阳市', 296, 21, ',0,21,296,2456,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2457, '长岛县', 296, 21, ',0,21,296,2457,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2458, '市中区', 297, 21, ',0,21,297,2458,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2459, '山亭区', 297, 21, ',0,21,297,2459,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2460, '峄城区', 297, 21, ',0,21,297,2460,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2461, '台儿庄区', 297, 21, ',0,21,297,2461,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2462, '薛城区', 297, 21, ',0,21,297,2462,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2463, '滕州市', 297, 21, ',0,21,297,2463,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2464, '张店区', 298, 21, ',0,21,298,2464,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2465, '临淄区', 298, 21, ',0,21,298,2465,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2466, '淄川区', 298, 21, ',0,21,298,2466,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2467, '博山区', 298, 21, ',0,21,298,2467,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2468, '周村区', 298, 21, ',0,21,298,2468,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2469, '桓台县', 298, 21, ',0,21,298,2469,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2470, '高青县', 298, 21, ',0,21,298,2470,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2471, '沂源县', 298, 21, ',0,21,298,2471,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2472, '杏花岭区', 299, 22, ',0,22,299,2472,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2473, '小店区', 299, 22, ',0,22,299,2473,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2474, '迎泽区', 299, 22, ',0,22,299,2474,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2475, '尖草坪区', 299, 22, ',0,22,299,2475,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2476, '万柏林区', 299, 22, ',0,22,299,2476,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2477, '晋源区', 299, 22, ',0,22,299,2477,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2478, '高新开发区', 299, 22, ',0,22,299,2478,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2479, '民营经济开发区', 299, 22, ',0,22,299,2479,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2480, '经济技术开发区', 299, 22, ',0,22,299,2480,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2481, '清徐县', 299, 22, ',0,22,299,2481,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2482, '阳曲县', 299, 22, ',0,22,299,2482,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2483, '娄烦县', 299, 22, ',0,22,299,2483,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2484, '古交市', 299, 22, ',0,22,299,2484,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2485, '城区', 300, 22, ',0,22,300,2485,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2486, '郊区', 300, 22, ',0,22,300,2486,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2487, '沁县', 300, 22, ',0,22,300,2487,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2488, '潞城市', 300, 22, ',0,22,300,2488,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2489, '长治县', 300, 22, ',0,22,300,2489,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2490, '襄垣县', 300, 22, ',0,22,300,2490,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2491, '屯留县', 300, 22, ',0,22,300,2491,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2492, '平顺县', 300, 22, ',0,22,300,2492,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2493, '黎城县', 300, 22, ',0,22,300,2493,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2494, '壶关县', 300, 22, ',0,22,300,2494,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2495, '长子县', 300, 22, ',0,22,300,2495,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2496, '武乡县', 300, 22, ',0,22,300,2496,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2497, '沁源县', 300, 22, ',0,22,300,2497,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2498, '城区', 301, 22, ',0,22,301,2498,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2499, '矿区', 301, 22, ',0,22,301,2499,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2500, '南郊区', 301, 22, ',0,22,301,2500,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2501, '新荣区', 301, 22, ',0,22,301,2501,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2502, '阳高县', 301, 22, ',0,22,301,2502,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2503, '天镇县', 301, 22, ',0,22,301,2503,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2504, '广灵县', 301, 22, ',0,22,301,2504,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2505, '灵丘县', 301, 22, ',0,22,301,2505,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2506, '浑源县', 301, 22, ',0,22,301,2506,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2507, '左云县', 301, 22, ',0,22,301,2507,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2508, '大同县', 301, 22, ',0,22,301,2508,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2509, '城区', 302, 22, ',0,22,302,2509,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2510, '高平市', 302, 22, ',0,22,302,2510,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2511, '沁水县', 302, 22, ',0,22,302,2511,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2512, '阳城县', 302, 22, ',0,22,302,2512,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2513, '陵川县', 302, 22, ',0,22,302,2513,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2514, '泽州县', 302, 22, ',0,22,302,2514,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2515, '榆次区', 303, 22, ',0,22,303,2515,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2516, '介休市', 303, 22, ',0,22,303,2516,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2517, '榆社县', 303, 22, ',0,22,303,2517,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2518, '左权县', 303, 22, ',0,22,303,2518,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2519, '和顺县', 303, 22, ',0,22,303,2519,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2520, '昔阳县', 303, 22, ',0,22,303,2520,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2521, '寿阳县', 303, 22, ',0,22,303,2521,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2522, '太谷县', 303, 22, ',0,22,303,2522,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2523, '祁县', 303, 22, ',0,22,303,2523,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2524, '平遥县', 303, 22, ',0,22,303,2524,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2525, '灵石县', 303, 22, ',0,22,303,2525,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2526, '尧都区', 304, 22, ',0,22,304,2526,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2527, '侯马市', 304, 22, ',0,22,304,2527,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2528, '霍州市', 304, 22, ',0,22,304,2528,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2529, '曲沃县', 304, 22, ',0,22,304,2529,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2530, '翼城县', 304, 22, ',0,22,304,2530,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2531, '襄汾县', 304, 22, ',0,22,304,2531,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2532, '洪洞县', 304, 22, ',0,22,304,2532,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2533, '吉县', 304, 22, ',0,22,304,2533,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2534, '安泽县', 304, 22, ',0,22,304,2534,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2535, '浮山县', 304, 22, ',0,22,304,2535,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2536, '古县', 304, 22, ',0,22,304,2536,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2537, '乡宁县', 304, 22, ',0,22,304,2537,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2538, '大宁县', 304, 22, ',0,22,304,2538,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2539, '隰县', 304, 22, ',0,22,304,2539,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2540, '永和县', 304, 22, ',0,22,304,2540,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2541, '蒲县', 304, 22, ',0,22,304,2541,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2542, '汾西县', 304, 22, ',0,22,304,2542,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2543, '离石市', 305, 22, ',0,22,305,2543,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2544, '离石区', 305, 22, ',0,22,305,2544,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2545, '孝义市', 305, 22, ',0,22,305,2545,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2546, '汾阳市', 305, 22, ',0,22,305,2546,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2547, '文水县', 305, 22, ',0,22,305,2547,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2548, '交城县', 305, 22, ',0,22,305,2548,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2549, '兴县', 305, 22, ',0,22,305,2549,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2550, '临县', 305, 22, ',0,22,305,2550,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2551, '柳林县', 305, 22, ',0,22,305,2551,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2552, '石楼县', 305, 22, ',0,22,305,2552,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2553, '岚县', 305, 22, ',0,22,305,2553,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2554, '方山县', 305, 22, ',0,22,305,2554,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2555, '中阳县', 305, 22, ',0,22,305,2555,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2556, '交口县', 305, 22, ',0,22,305,2556,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2557, '朔城区', 306, 22, ',0,22,306,2557,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2558, '平鲁区', 306, 22, ',0,22,306,2558,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2559, '山阴县', 306, 22, ',0,22,306,2559,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2560, '应县', 306, 22, ',0,22,306,2560,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2561, '右玉县', 306, 22, ',0,22,306,2561,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2562, '怀仁县', 306, 22, ',0,22,306,2562,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2563, '忻府区', 307, 22, ',0,22,307,2563,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2564, '原平市', 307, 22, ',0,22,307,2564,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2565, '定襄县', 307, 22, ',0,22,307,2565,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2566, '五台县', 307, 22, ',0,22,307,2566,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2567, '代县', 307, 22, ',0,22,307,2567,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2568, '繁峙县', 307, 22, ',0,22,307,2568,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2569, '宁武县', 307, 22, ',0,22,307,2569,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2570, '静乐县', 307, 22, ',0,22,307,2570,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2571, '神池县', 307, 22, ',0,22,307,2571,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2572, '五寨县', 307, 22, ',0,22,307,2572,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2573, '岢岚县', 307, 22, ',0,22,307,2573,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2574, '河曲县', 307, 22, ',0,22,307,2574,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2575, '保德县', 307, 22, ',0,22,307,2575,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2576, '偏关县', 307, 22, ',0,22,307,2576,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2577, '城区', 308, 22, ',0,22,308,2577,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2578, '矿区', 308, 22, ',0,22,308,2578,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2579, '郊区', 308, 22, ',0,22,308,2579,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2580, '平定县', 308, 22, ',0,22,308,2580,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2581, '盂县', 308, 22, ',0,22,308,2581,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2582, '盐湖区', 309, 22, ',0,22,309,2582,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2583, '永济市', 309, 22, ',0,22,309,2583,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2584, '河津市', 309, 22, ',0,22,309,2584,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2585, '临猗县', 309, 22, ',0,22,309,2585,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2586, '万荣县', 309, 22, ',0,22,309,2586,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2587, '闻喜县', 309, 22, ',0,22,309,2587,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2588, '稷山县', 309, 22, ',0,22,309,2588,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2589, '新绛县', 309, 22, ',0,22,309,2589,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2590, '绛县', 309, 22, ',0,22,309,2590,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2591, '垣曲县', 309, 22, ',0,22,309,2591,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2592, '夏县', 309, 22, ',0,22,309,2592,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2593, '平陆县', 309, 22, ',0,22,309,2593,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2594, '芮城县', 309, 22, ',0,22,309,2594,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2595, '莲湖区', 310, 23, ',0,23,310,2595,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2596, '新城区', 310, 23, ',0,23,310,2596,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2597, '碑林区', 310, 23, ',0,23,310,2597,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2598, '雁塔区', 310, 23, ',0,23,310,2598,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2599, '灞桥区', 310, 23, ',0,23,310,2599,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2600, '未央区', 310, 23, ',0,23,310,2600,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2601, '阎良区', 310, 23, ',0,23,310,2601,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2602, '临潼区', 310, 23, ',0,23,310,2602,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2603, '长安区', 310, 23, ',0,23,310,2603,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2604, '蓝田县', 310, 23, ',0,23,310,2604,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2605, '周至县', 310, 23, ',0,23,310,2605,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2606, '户县', 310, 23, ',0,23,310,2606,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2607, '高陵县', 310, 23, ',0,23,310,2607,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2608, '汉滨区', 311, 23, ',0,23,311,2608,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2609, '汉阴县', 311, 23, ',0,23,311,2609,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2610, '石泉县', 311, 23, ',0,23,311,2610,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2611, '宁陕县', 311, 23, ',0,23,311,2611,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2612, '紫阳县', 311, 23, ',0,23,311,2612,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2613, '岚皋县', 311, 23, ',0,23,311,2613,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2614, '平利县', 311, 23, ',0,23,311,2614,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2615, '镇坪县', 311, 23, ',0,23,311,2615,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2616, '旬阳县', 311, 23, ',0,23,311,2616,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2617, '白河县', 311, 23, ',0,23,311,2617,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2618, '陈仓区', 312, 23, ',0,23,312,2618,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2619, '渭滨区', 312, 23, ',0,23,312,2619,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2620, '金台区', 312, 23, ',0,23,312,2620,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2621, '凤翔县', 312, 23, ',0,23,312,2621,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2622, '岐山县', 312, 23, ',0,23,312,2622,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2623, '扶风县', 312, 23, ',0,23,312,2623,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2624, '眉县', 312, 23, ',0,23,312,2624,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2625, '陇县', 312, 23, ',0,23,312,2625,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2626, '千阳县', 312, 23, ',0,23,312,2626,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2627, '麟游县', 312, 23, ',0,23,312,2627,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2628, '凤县', 312, 23, ',0,23,312,2628,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2629, '太白县', 312, 23, ',0,23,312,2629,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2630, '汉台区', 313, 23, ',0,23,313,2630,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2631, '南郑县', 313, 23, ',0,23,313,2631,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2632, '城固县', 313, 23, ',0,23,313,2632,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2633, '洋县', 313, 23, ',0,23,313,2633,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2634, '西乡县', 313, 23, ',0,23,313,2634,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2635, '勉县', 313, 23, ',0,23,313,2635,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2636, '宁强县', 313, 23, ',0,23,313,2636,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2637, '略阳县', 313, 23, ',0,23,313,2637,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2638, '镇巴县', 313, 23, ',0,23,313,2638,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2639, '留坝县', 313, 23, ',0,23,313,2639,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2640, '佛坪县', 313, 23, ',0,23,313,2640,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2641, '商州区', 314, 23, ',0,23,314,2641,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2642, '洛南县', 314, 23, ',0,23,314,2642,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2643, '丹凤县', 314, 23, ',0,23,314,2643,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2644, '商南县', 314, 23, ',0,23,314,2644,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2645, '山阳县', 314, 23, ',0,23,314,2645,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2646, '镇安县', 314, 23, ',0,23,314,2646,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2647, '柞水县', 314, 23, ',0,23,314,2647,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2648, '耀州区', 315, 23, ',0,23,315,2648,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2649, '王益区', 315, 23, ',0,23,315,2649,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2650, '印台区', 315, 23, ',0,23,315,2650,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2651, '宜君县', 315, 23, ',0,23,315,2651,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2652, '临渭区', 316, 23, ',0,23,316,2652,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2653, '韩城市', 316, 23, ',0,23,316,2653,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2654, '华阴市', 316, 23, ',0,23,316,2654,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2655, '华县', 316, 23, ',0,23,316,2655,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2656, '潼关县', 316, 23, ',0,23,316,2656,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2657, '大荔县', 316, 23, ',0,23,316,2657,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2658, '合阳县', 316, 23, ',0,23,316,2658,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2659, '澄城县', 316, 23, ',0,23,316,2659,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2660, '蒲城县', 316, 23, ',0,23,316,2660,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2661, '白水县', 316, 23, ',0,23,316,2661,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2662, '富平县', 316, 23, ',0,23,316,2662,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2663, '秦都区', 317, 23, ',0,23,317,2663,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2664, '渭城区', 317, 23, ',0,23,317,2664,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2665, '杨陵区', 317, 23, ',0,23,317,2665,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2666, '兴平市', 317, 23, ',0,23,317,2666,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2667, '三原县', 317, 23, ',0,23,317,2667,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2668, '泾阳县', 317, 23, ',0,23,317,2668,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2669, '乾县', 317, 23, ',0,23,317,2669,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2670, '礼泉县', 317, 23, ',0,23,317,2670,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2671, '永寿县', 317, 23, ',0,23,317,2671,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2672, '彬县', 317, 23, ',0,23,317,2672,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2673, '长武县', 317, 23, ',0,23,317,2673,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2674, '旬邑县', 317, 23, ',0,23,317,2674,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2675, '淳化县', 317, 23, ',0,23,317,2675,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2676, '武功县', 317, 23, ',0,23,317,2676,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2677, '吴起县', 318, 23, ',0,23,318,2677,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2678, '宝塔区', 318, 23, ',0,23,318,2678,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2679, '延长县', 318, 23, ',0,23,318,2679,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2680, '延川县', 318, 23, ',0,23,318,2680,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2681, '子长县', 318, 23, ',0,23,318,2681,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2682, '安塞县', 318, 23, ',0,23,318,2682,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2683, '志丹县', 318, 23, ',0,23,318,2683,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2684, '甘泉县', 318, 23, ',0,23,318,2684,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2685, '富县', 318, 23, ',0,23,318,2685,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2686, '洛川县', 318, 23, ',0,23,318,2686,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2687, '宜川县', 318, 23, ',0,23,318,2687,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2688, '黄龙县', 318, 23, ',0,23,318,2688,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2689, '黄陵县', 318, 23, ',0,23,318,2689,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2690, '榆阳区', 319, 23, ',0,23,319,2690,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2691, '神木县', 319, 23, ',0,23,319,2691,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2692, '府谷县', 319, 23, ',0,23,319,2692,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2693, '横山县', 319, 23, ',0,23,319,2693,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2694, '靖边县', 319, 23, ',0,23,319,2694,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2695, '定边县', 319, 23, ',0,23,319,2695,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2696, '绥德县', 319, 23, ',0,23,319,2696,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2697, '米脂县', 319, 23, ',0,23,319,2697,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2698, '佳县', 319, 23, ',0,23,319,2698,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2699, '吴堡县', 319, 23, ',0,23,319,2699,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2700, '清涧县', 319, 23, ',0,23,319,2700,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2701, '子洲县', 319, 23, ',0,23,319,2701,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2702, '长宁区', 24, 24, ',0,24,2702,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2704, '闵行区', 24, 24, ',0,24,2704,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2705, '徐汇区', 24, 24, ',0,24,2705,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2706, '浦东新区', 24, 24, ',0,24,2706,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2707, '杨浦区', 24, 24, ',0,24,2707,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2708, '普陀区', 24, 24, ',0,24,2708,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2709, '静安区', 24, 24, ',0,24,2709,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2711, '虹口区', 24, 24, ',0,24,2711,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2712, '黄浦区', 24, 24, ',0,24,2712,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2714, '松江区', 24, 24, ',0,24,2714,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2715, '嘉定区', 24, 24, ',0,24,2715,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2716, '宝山区', 24, 24, ',0,24,2716,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2717, '青浦区', 24, 24, ',0,24,2717,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2718, '金山区', 24, 24, ',0,24,2718,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2719, '奉贤区', 24, 24, ',0,24,2719,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2720, '崇明区', 24, 24, ',0,24,2720,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2721, '青羊区', 321, 25, ',0,25,321,2721,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2722, '锦江区', 321, 25, ',0,25,321,2722,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2723, '金牛区', 321, 25, ',0,25,321,2723,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2724, '武侯区', 321, 25, ',0,25,321,2724,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2725, '成华区', 321, 25, ',0,25,321,2725,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2726, '龙泉驿区', 321, 25, ',0,25,321,2726,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2727, '青白江区', 321, 25, ',0,25,321,2727,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2728, '新都区', 321, 25, ',0,25,321,2728,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2729, '温江区', 321, 25, ',0,25,321,2729,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2730, '高新区', 321, 25, ',0,25,321,2730,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2731, '高新西区', 321, 25, ',0,25,321,2731,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2732, '都江堰市', 321, 25, ',0,25,321,2732,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2733, '彭州市', 321, 25, ',0,25,321,2733,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2734, '邛崃市', 321, 25, ',0,25,321,2734,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2735, '崇州市', 321, 25, ',0,25,321,2735,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2736, '金堂县', 321, 25, ',0,25,321,2736,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2737, '双流县', 321, 25, ',0,25,321,2737,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2738, '郫县', 321, 25, ',0,25,321,2738,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2739, '大邑县', 321, 25, ',0,25,321,2739,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2740, '蒲江县', 321, 25, ',0,25,321,2740,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2741, '新津县', 321, 25, ',0,25,321,2741,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2752, '涪城区', 322, 25, ',0,25,322,2752,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2753, '游仙区', 322, 25, ',0,25,322,2753,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2754, '江油市', 322, 25, ',0,25,322,2754,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2755, '盐亭县', 322, 25, ',0,25,322,2755,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2756, '三台县', 322, 25, ',0,25,322,2756,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2757, '平武县', 322, 25, ',0,25,322,2757,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2758, '安县', 322, 25, ',0,25,322,2758,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2759, '梓潼县', 322, 25, ',0,25,322,2759,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2760, '北川县', 322, 25, ',0,25,322,2760,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2761, '马尔康县', 323, 25, ',0,25,323,2761,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2762, '汶川县', 323, 25, ',0,25,323,2762,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2763, '理县', 323, 25, ',0,25,323,2763,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2764, '茂县', 323, 25, ',0,25,323,2764,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2765, '松潘县', 323, 25, ',0,25,323,2765,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2766, '九寨沟县', 323, 25, ',0,25,323,2766,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2767, '金川县', 323, 25, ',0,25,323,2767,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2768, '小金县', 323, 25, ',0,25,323,2768,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2769, '黑水县', 323, 25, ',0,25,323,2769,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2770, '壤塘县', 323, 25, ',0,25,323,2770,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2771, '阿坝县', 323, 25, ',0,25,323,2771,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2772, '若尔盖县', 323, 25, ',0,25,323,2772,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2773, '红原县', 323, 25, ',0,25,323,2773,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2774, '巴州区', 324, 25, ',0,25,324,2774,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2775, '通江县', 324, 25, ',0,25,324,2775,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2776, '南江县', 324, 25, ',0,25,324,2776,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2777, '平昌县', 324, 25, ',0,25,324,2777,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2778, '通川区', 325, 25, ',0,25,325,2778,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2779, '万源市', 325, 25, ',0,25,325,2779,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2780, '达川区', 325, 25, ',0,25,325,2780,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2781, '宣汉县', 325, 25, ',0,25,325,2781,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2782, '开江县', 325, 25, ',0,25,325,2782,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2783, '大竹县', 325, 25, ',0,25,325,2783,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2784, '渠县', 325, 25, ',0,25,325,2784,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2785, '旌阳区', 326, 25, ',0,25,326,2785,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2786, '广汉市', 326, 25, ',0,25,326,2786,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2787, '什邡市', 326, 25, ',0,25,326,2787,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2788, '绵竹市', 326, 25, ',0,25,326,2788,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2789, '罗江县', 326, 25, ',0,25,326,2789,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2790, '中江县', 326, 25, ',0,25,326,2790,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2791, '康定县', 327, 25, ',0,25,327,2791,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2792, '丹巴县', 327, 25, ',0,25,327,2792,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2793, '泸定县', 327, 25, ',0,25,327,2793,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2794, '炉霍县', 327, 25, ',0,25,327,2794,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2795, '九龙县', 327, 25, ',0,25,327,2795,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2796, '甘孜县', 327, 25, ',0,25,327,2796,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2797, '雅江县', 327, 25, ',0,25,327,2797,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2798, '新龙县', 327, 25, ',0,25,327,2798,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2799, '道孚县', 327, 25, ',0,25,327,2799,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2800, '白玉县', 327, 25, ',0,25,327,2800,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2801, '理塘县', 327, 25, ',0,25,327,2801,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2802, '德格县', 327, 25, ',0,25,327,2802,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2803, '乡城县', 327, 25, ',0,25,327,2803,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2804, '石渠县', 327, 25, ',0,25,327,2804,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2805, '稻城县', 327, 25, ',0,25,327,2805,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2806, '色达县', 327, 25, ',0,25,327,2806,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2807, '巴塘县', 327, 25, ',0,25,327,2807,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2808, '得荣县', 327, 25, ',0,25,327,2808,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2809, '广安区', 328, 25, ',0,25,328,2809,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2810, '华蓥市', 328, 25, ',0,25,328,2810,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2811, '岳池县', 328, 25, ',0,25,328,2811,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2812, '武胜县', 328, 25, ',0,25,328,2812,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2813, '邻水县', 328, 25, ',0,25,328,2813,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2814, '利州区', 329, 25, ',0,25,329,2814,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2815, '昭化区', 329, 25, ',0,25,329,2815,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2816, '朝天区', 329, 25, ',0,25,329,2816,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2817, '旺苍县', 329, 25, ',0,25,329,2817,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2818, '青川县', 329, 25, ',0,25,329,2818,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2819, '剑阁县', 329, 25, ',0,25,329,2819,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2820, '苍溪县', 329, 25, ',0,25,329,2820,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2821, '峨眉山市', 330, 25, ',0,25,330,2821,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3642, '市中区', 330, 25, ',0,25,330,3642,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2823, '犍为县', 330, 25, ',0,25,330,2823,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2824, '井研县', 330, 25, ',0,25,330,2824,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2825, '夹江县', 330, 25, ',0,25,330,2825,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2826, '沐川县', 330, 25, ',0,25,330,2826,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2827, '峨边县', 330, 25, ',0,25,330,2827,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2828, '马边县', 330, 25, ',0,25,330,2828,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2829, '西昌市', 331, 25, ',0,25,331,2829,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2830, '盐源县', 331, 25, ',0,25,331,2830,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2831, '德昌县', 331, 25, ',0,25,331,2831,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2832, '会理县', 331, 25, ',0,25,331,2832,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2833, '会东县', 331, 25, ',0,25,331,2833,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2834, '宁南县', 331, 25, ',0,25,331,2834,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2835, '普格县', 331, 25, ',0,25,331,2835,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2836, '布拖县', 331, 25, ',0,25,331,2836,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2837, '金阳县', 331, 25, ',0,25,331,2837,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2838, '昭觉县', 331, 25, ',0,25,331,2838,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2839, '喜德县', 331, 25, ',0,25,331,2839,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2840, '冕宁县', 331, 25, ',0,25,331,2840,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2841, '越西县', 331, 25, ',0,25,331,2841,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2842, '甘洛县', 331, 25, ',0,25,331,2842,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2843, '美姑县', 331, 25, ',0,25,331,2843,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2844, '雷波县', 331, 25, ',0,25,331,2844,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2845, '木里县', 331, 25, ',0,25,331,2845,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2846, '东坡区', 332, 25, ',0,25,332,2846,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2847, '仁寿县', 332, 25, ',0,25,332,2847,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2848, '彭山县', 332, 25, ',0,25,332,2848,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2849, '洪雅县', 332, 25, ',0,25,332,2849,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2850, '丹棱县', 332, 25, ',0,25,332,2850,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2851, '青神县', 332, 25, ',0,25,332,2851,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2852, '阆中市', 333, 25, ',0,25,333,2852,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2853, '南部县', 333, 25, ',0,25,333,2853,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2854, '营山县', 333, 25, ',0,25,333,2854,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2855, '蓬安县', 333, 25, ',0,25,333,2855,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2856, '仪陇县', 333, 25, ',0,25,333,2856,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2857, '顺庆区', 333, 25, ',0,25,333,2857,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2858, '高坪区', 333, 25, ',0,25,333,2858,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2859, '嘉陵区', 333, 25, ',0,25,333,2859,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2860, '西充县', 333, 25, ',0,25,333,2860,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2861, '市中区', 334, 25, ',0,25,334,2861,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2862, '东兴区', 334, 25, ',0,25,334,2862,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2863, '威远县', 334, 25, ',0,25,334,2863,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2864, '资中县', 334, 25, ',0,25,334,2864,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2865, '隆昌县', 334, 25, ',0,25,334,2865,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2866, '东区', 335, 25, ',0,25,335,2866,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2867, '西区', 335, 25, ',0,25,335,2867,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2868, '仁和区', 335, 25, ',0,25,335,2868,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2869, '米易县', 335, 25, ',0,25,335,2869,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2870, '盐边县', 335, 25, ',0,25,335,2870,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2871, '船山区', 336, 25, ',0,25,336,2871,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2872, '安居区', 336, 25, ',0,25,336,2872,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2873, '蓬溪县', 336, 25, ',0,25,336,2873,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2874, '射洪县', 336, 25, ',0,25,336,2874,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2875, '大英县', 336, 25, ',0,25,336,2875,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2876, '雨城区', 337, 25, ',0,25,337,2876,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2877, '名山县', 337, 25, ',0,25,337,2877,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2878, '荥经县', 337, 25, ',0,25,337,2878,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2879, '汉源县', 337, 25, ',0,25,337,2879,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2880, '石棉县', 337, 25, ',0,25,337,2880,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2881, '天全县', 337, 25, ',0,25,337,2881,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2882, '芦山县', 337, 25, ',0,25,337,2882,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2883, '宝兴县', 337, 25, ',0,25,337,2883,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2884, '翠屏区', 338, 25, ',0,25,338,2884,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2885, '宜宾县', 338, 25, ',0,25,338,2885,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2886, '南溪县', 338, 25, ',0,25,338,2886,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2887, '江安县', 338, 25, ',0,25,338,2887,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2888, '长宁县', 338, 25, ',0,25,338,2888,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2889, '高县', 338, 25, ',0,25,338,2889,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2890, '珙县', 338, 25, ',0,25,338,2890,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2891, '筠连县', 338, 25, ',0,25,338,2891,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2892, '兴文县', 338, 25, ',0,25,338,2892,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2893, '屏山县', 338, 25, ',0,25,338,2893,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2894, '雁江区', 339, 25, ',0,25,339,2894,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2895, '简阳市', 321, 25, ',0,25,321,2895,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2896, '安岳县', 339, 25, ',0,25,339,2896,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2897, '乐至县', 339, 25, ',0,25,339,2897,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2898, '大安区', 340, 25, ',0,25,340,2898,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2899, '自流井区', 340, 25, ',0,25,340,2899,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2900, '贡井区', 340, 25, ',0,25,340,2900,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2901, '沿滩区', 340, 25, ',0,25,340,2901,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2902, '荣县', 340, 25, ',0,25,340,2902,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2903, '富顺县', 340, 25, ',0,25,340,2903,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2904, '江阳区', 341, 25, ',0,25,341,2904,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2905, '纳溪区', 341, 25, ',0,25,341,2905,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2906, '龙马潭区', 341, 25, ',0,25,341,2906,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2907, '泸县', 341, 25, ',0,25,341,2907,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2908, '合江县', 341, 25, ',0,25,341,2908,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2909, '叙永县', 341, 25, ',0,25,341,2909,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2910, '古蔺县', 341, 25, ',0,25,341,2910,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2911, '和平区', 26, 26, ',0,26,2911,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2912, '河西区', 26, 26, ',0,26,2912,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2913, '南开区', 26, 26, ',0,26,2913,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2914, '河北区', 26, 26, ',0,26,2914,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2915, '河东区', 26, 26, ',0,26,2915,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2916, '红桥区', 26, 26, ',0,26,2916,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2917, '东丽区', 26, 26, ',0,26,2917,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2918, '津南区', 26, 26, ',0,26,2918,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2919, '西青区', 26, 26, ',0,26,2919,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2920, '北辰区', 26, 26, ',0,26,2920,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2921, '塘沽区', 26, 26, ',0,26,2921,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2922, '汉沽区', 26, 26, ',0,26,2922,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2923, '大港区', 26, 26, ',0,26,2923,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2924, '武清区', 26, 26, ',0,26,2924,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2925, '宝坻区', 26, 26, ',0,26,2925,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2926, '滨海新区', 26, 26, ',0,26,2926,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2927, '宁河区', 26, 26, ',0,26,2927,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2928, '静海区', 26, 26, ',0,26,2928,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2929, '蓟州区', 26, 26, ',0,26,2929,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (2930, '城关区', 343, 27, ',0,27,343,2930,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2931, '林周县', 343, 27, ',0,27,343,2931,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2932, '当雄县', 343, 27, ',0,27,343,2932,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2933, '尼木县', 343, 27, ',0,27,343,2933,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2934, '曲水县', 343, 27, ',0,27,343,2934,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2935, '堆龙德庆县', 343, 27, ',0,27,343,2935,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2936, '达孜县', 343, 27, ',0,27,343,2936,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2937, '墨竹工卡县', 343, 27, ',0,27,343,2937,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2938, '噶尔县', 344, 27, ',0,27,344,2938,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2939, '普兰县', 344, 27, ',0,27,344,2939,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2940, '札达县', 344, 27, ',0,27,344,2940,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2941, '日土县', 344, 27, ',0,27,344,2941,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2942, '革吉县', 344, 27, ',0,27,344,2942,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2943, '改则县', 344, 27, ',0,27,344,2943,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2944, '措勤县', 344, 27, ',0,27,344,2944,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2945, '昌都县', 345, 27, ',0,27,345,2945,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2946, '江达县', 345, 27, ',0,27,345,2946,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2947, '贡觉县', 345, 27, ',0,27,345,2947,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2948, '类乌齐县', 345, 27, ',0,27,345,2948,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2949, '丁青县', 345, 27, ',0,27,345,2949,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2950, '察雅县', 345, 27, ',0,27,345,2950,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2951, '八宿县', 345, 27, ',0,27,345,2951,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2952, '左贡县', 345, 27, ',0,27,345,2952,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2953, '芒康县', 345, 27, ',0,27,345,2953,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2954, '洛隆县', 345, 27, ',0,27,345,2954,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2955, '边坝县', 345, 27, ',0,27,345,2955,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2956, '林芝县', 346, 27, ',0,27,346,2956,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2957, '工布江达县', 346, 27, ',0,27,346,2957,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2958, '米林县', 346, 27, ',0,27,346,2958,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2959, '墨脱县', 346, 27, ',0,27,346,2959,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2960, '波密县', 346, 27, ',0,27,346,2960,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2961, '察隅县', 346, 27, ',0,27,346,2961,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2962, '朗县', 346, 27, ',0,27,346,2962,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2963, '那曲县', 347, 27, ',0,27,347,2963,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2964, '嘉黎县', 347, 27, ',0,27,347,2964,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2965, '比如县', 347, 27, ',0,27,347,2965,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2966, '聂荣县', 347, 27, ',0,27,347,2966,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2967, '安多县', 347, 27, ',0,27,347,2967,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2968, '申扎县', 347, 27, ',0,27,347,2968,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2969, '索县', 347, 27, ',0,27,347,2969,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2970, '班戈县', 347, 27, ',0,27,347,2970,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2971, '巴青县', 347, 27, ',0,27,347,2971,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2972, '尼玛县', 347, 27, ',0,27,347,2972,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2973, '日喀则市', 348, 27, ',0,27,348,2973,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2974, '南木林县', 348, 27, ',0,27,348,2974,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2975, '江孜县', 348, 27, ',0,27,348,2975,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2976, '定日县', 348, 27, ',0,27,348,2976,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2977, '萨迦县', 348, 27, ',0,27,348,2977,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2978, '拉孜县', 348, 27, ',0,27,348,2978,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2979, '昂仁县', 348, 27, ',0,27,348,2979,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2980, '谢通门县', 348, 27, ',0,27,348,2980,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2981, '白朗县', 348, 27, ',0,27,348,2981,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2982, '仁布县', 348, 27, ',0,27,348,2982,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2983, '康马县', 348, 27, ',0,27,348,2983,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2984, '定结县', 348, 27, ',0,27,348,2984,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2985, '仲巴县', 348, 27, ',0,27,348,2985,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2986, '亚东县', 348, 27, ',0,27,348,2986,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2987, '吉隆县', 348, 27, ',0,27,348,2987,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2988, '聂拉木县', 348, 27, ',0,27,348,2988,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2989, '萨嘎县', 348, 27, ',0,27,348,2989,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2990, '岗巴县', 348, 27, ',0,27,348,2990,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2991, '乃东县', 349, 27, ',0,27,349,2991,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2992, '扎囊县', 349, 27, ',0,27,349,2992,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2993, '贡嘎县', 349, 27, ',0,27,349,2993,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2994, '桑日县', 349, 27, ',0,27,349,2994,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2995, '琼结县', 349, 27, ',0,27,349,2995,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2996, '曲松县', 349, 27, ',0,27,349,2996,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2997, '措美县', 349, 27, ',0,27,349,2997,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2998, '洛扎县', 349, 27, ',0,27,349,2998,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (2999, '加查县', 349, 27, ',0,27,349,2999,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3000, '隆子县', 349, 27, ',0,27,349,3000,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3001, '错那县', 349, 27, ',0,27,349,3001,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3002, '浪卡子县', 349, 27, ',0,27,349,3002,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3003, '天山区', 350, 28, ',0,28,350,3003,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3004, '沙依巴克区', 350, 28, ',0,28,350,3004,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3005, '新市区', 350, 28, ',0,28,350,3005,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3006, '水磨沟区', 350, 28, ',0,28,350,3006,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3007, '头屯河区', 350, 28, ',0,28,350,3007,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3008, '达坂城区', 350, 28, ',0,28,350,3008,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3009, '米东区', 350, 28, ',0,28,350,3009,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3010, '乌鲁木齐县', 350, 28, ',0,28,350,3010,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3011, '阿克苏市', 351, 28, ',0,28,351,3011,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3012, '温宿县', 351, 28, ',0,28,351,3012,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3013, '库车县', 351, 28, ',0,28,351,3013,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3014, '沙雅县', 351, 28, ',0,28,351,3014,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3015, '新和县', 351, 28, ',0,28,351,3015,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3016, '拜城县', 351, 28, ',0,28,351,3016,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3017, '乌什县', 351, 28, ',0,28,351,3017,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3018, '阿瓦提县', 351, 28, ',0,28,351,3018,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3019, '柯坪县', 351, 28, ',0,28,351,3019,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3020, '阿拉尔市', 352, 28, ',0,28,352,3020,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3021, '库尔勒', 353, 28, ',0,28,353,3021,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3022, '轮台县', 353, 28, ',0,28,353,3022,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3023, '尉犁县', 353, 28, ',0,28,353,3023,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3024, '若羌县', 353, 28, ',0,28,353,3024,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3025, '且末县', 353, 28, ',0,28,353,3025,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3026, '焉耆县', 353, 28, ',0,28,353,3026,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3027, '和静县', 353, 28, ',0,28,353,3027,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3028, '和硕县', 353, 28, ',0,28,353,3028,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3029, '博湖县', 353, 28, ',0,28,353,3029,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3030, '博乐市', 354, 28, ',0,28,354,3030,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3031, '精河县', 354, 28, ',0,28,354,3031,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3032, '温泉县', 354, 28, ',0,28,354,3032,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3033, '呼图壁县', 355, 28, ',0,28,355,3033,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3034, '米泉市', 355, 28, ',0,28,355,3034,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3035, '昌吉市', 355, 28, ',0,28,355,3035,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3036, '阜康市', 355, 28, ',0,28,355,3036,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3037, '玛纳斯县', 355, 28, ',0,28,355,3037,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3038, '奇台县', 355, 28, ',0,28,355,3038,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3039, '吉木萨尔县', 355, 28, ',0,28,355,3039,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3040, '木垒县', 355, 28, ',0,28,355,3040,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3041, '哈密市', 356, 28, ',0,28,356,3041,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3042, '伊吾县', 356, 28, ',0,28,356,3042,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3043, '巴里坤', 356, 28, ',0,28,356,3043,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3044, '和田市', 357, 28, ',0,28,357,3044,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3045, '和田县', 357, 28, ',0,28,357,3045,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3046, '墨玉县', 357, 28, ',0,28,357,3046,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3047, '皮山县', 357, 28, ',0,28,357,3047,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3048, '洛浦县', 357, 28, ',0,28,357,3048,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3049, '策勒县', 357, 28, ',0,28,357,3049,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3050, '于田县', 357, 28, ',0,28,357,3050,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3051, '民丰县', 357, 28, ',0,28,357,3051,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3052, '喀什市', 358, 28, ',0,28,358,3052,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3053, '疏附县', 358, 28, ',0,28,358,3053,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3054, '疏勒县', 358, 28, ',0,28,358,3054,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3055, '英吉沙县', 358, 28, ',0,28,358,3055,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3056, '泽普县', 358, 28, ',0,28,358,3056,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3057, '莎车县', 358, 28, ',0,28,358,3057,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3058, '叶城县', 358, 28, ',0,28,358,3058,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3059, '麦盖提县', 358, 28, ',0,28,358,3059,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3060, '岳普湖县', 358, 28, ',0,28,358,3060,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3061, '伽师县', 358, 28, ',0,28,358,3061,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3062, '巴楚县', 358, 28, ',0,28,358,3062,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3063, '塔什库尔干', 358, 28, ',0,28,358,3063,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3064, '克拉玛依市', 359, 28, ',0,28,359,3064,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3065, '阿图什市', 360, 28, ',0,28,360,3065,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3066, '阿克陶县', 360, 28, ',0,28,360,3066,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3067, '阿合奇县', 360, 28, ',0,28,360,3067,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3068, '乌恰县', 360, 28, ',0,28,360,3068,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3069, '石河子市', 361, 28, ',0,28,361,3069,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3071, '吐鲁番市', 363, 28, ',0,28,363,3071,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3072, '鄯善县', 363, 28, ',0,28,363,3072,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3073, '托克逊县', 363, 28, ',0,28,363,3073,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3075, '阿勒泰', 365, 28, ',0,28,365,3075,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3076, '和布克赛尔', 365, 28, ',0,28,365,3076,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3077, '伊宁市', 365, 28, ',0,28,365,3077,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3078, '布尔津县', 365, 28, ',0,28,365,3078,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3079, '奎屯市', 365, 28, ',0,28,365,3079,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3080, '乌苏市', 365, 28, ',0,28,365,3080,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3081, '额敏县', 365, 28, ',0,28,365,3081,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3082, '富蕴县', 365, 28, ',0,28,365,3082,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3083, '伊宁县', 365, 28, ',0,28,365,3083,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3084, '福海县', 365, 28, ',0,28,365,3084,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3085, '霍城县', 365, 28, ',0,28,365,3085,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3086, '沙湾县', 365, 28, ',0,28,365,3086,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3087, '巩留县', 365, 28, ',0,28,365,3087,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3088, '哈巴河县', 365, 28, ',0,28,365,3088,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3089, '托里县', 365, 28, ',0,28,365,3089,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3090, '青河县', 365, 28, ',0,28,365,3090,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3091, '新源县', 365, 28, ',0,28,365,3091,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3092, '裕民县', 365, 28, ',0,28,365,3092,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3094, '吉木乃县', 365, 28, ',0,28,365,3094,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3095, '昭苏县', 365, 28, ',0,28,365,3095,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3096, '特克斯县', 365, 28, ',0,28,365,3096,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3097, '尼勒克县', 365, 28, ',0,28,365,3097,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3098, '察布查尔', 365, 28, ',0,28,365,3098,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3099, '盘龙区', 366, 29, ',0,29,366,3099,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3100, '五华区', 366, 29, ',0,29,366,3100,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3101, '官渡区', 366, 29, ',0,29,366,3101,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3102, '西山区', 366, 29, ',0,29,366,3102,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3103, '东川区', 366, 29, ',0,29,366,3103,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3104, '安宁市', 366, 29, ',0,29,366,3104,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3105, '呈贡县', 366, 29, ',0,29,366,3105,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3106, '晋宁县', 366, 29, ',0,29,366,3106,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3107, '富民县', 366, 29, ',0,29,366,3107,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3108, '宜良县', 366, 29, ',0,29,366,3108,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3109, '嵩明县', 366, 29, ',0,29,366,3109,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3110, '石林县', 366, 29, ',0,29,366,3110,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3111, '禄劝县', 366, 29, ',0,29,366,3111,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3112, '寻甸县', 366, 29, ',0,29,366,3112,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3113, '兰坪县', 367, 29, ',0,29,367,3113,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3114, '泸水县', 367, 29, ',0,29,367,3114,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3115, '福贡县', 367, 29, ',0,29,367,3115,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3116, '贡山县', 367, 29, ',0,29,367,3116,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3117, '宁洱县', 368, 29, ',0,29,368,3117,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3118, '思茅区', 368, 29, ',0,29,368,3118,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3119, '墨江县', 368, 29, ',0,29,368,3119,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3120, '景东县', 368, 29, ',0,29,368,3120,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3121, '景谷县', 368, 29, ',0,29,368,3121,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3122, '镇沅县', 368, 29, ',0,29,368,3122,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3123, '江城县', 368, 29, ',0,29,368,3123,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3124, '孟连县', 368, 29, ',0,29,368,3124,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3125, '澜沧县', 368, 29, ',0,29,368,3125,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3126, '西盟县', 368, 29, ',0,29,368,3126,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3127, '古城区', 369, 29, ',0,29,369,3127,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3128, '宁蒗县', 369, 29, ',0,29,369,3128,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3129, '玉龙县', 369, 29, ',0,29,369,3129,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3130, '永胜县', 369, 29, ',0,29,369,3130,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3131, '华坪县', 369, 29, ',0,29,369,3131,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3132, '隆阳区', 370, 29, ',0,29,370,3132,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3133, '施甸县', 370, 29, ',0,29,370,3133,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3134, '腾冲县', 370, 29, ',0,29,370,3134,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3135, '龙陵县', 370, 29, ',0,29,370,3135,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3136, '昌宁县', 370, 29, ',0,29,370,3136,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3137, '楚雄市', 371, 29, ',0,29,371,3137,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3138, '双柏县', 371, 29, ',0,29,371,3138,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3139, '牟定县', 371, 29, ',0,29,371,3139,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3140, '南华县', 371, 29, ',0,29,371,3140,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3141, '姚安县', 371, 29, ',0,29,371,3141,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3142, '大姚县', 371, 29, ',0,29,371,3142,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3143, '永仁县', 371, 29, ',0,29,371,3143,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3144, '元谋县', 371, 29, ',0,29,371,3144,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3145, '武定县', 371, 29, ',0,29,371,3145,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3146, '禄丰县', 371, 29, ',0,29,371,3146,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3147, '大理市', 372, 29, ',0,29,372,3147,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3148, '祥云县', 372, 29, ',0,29,372,3148,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3149, '宾川县', 372, 29, ',0,29,372,3149,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3150, '弥渡县', 372, 29, ',0,29,372,3150,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3151, '永平县', 372, 29, ',0,29,372,3151,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3152, '云龙县', 372, 29, ',0,29,372,3152,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3153, '洱源县', 372, 29, ',0,29,372,3153,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3154, '剑川县', 372, 29, ',0,29,372,3154,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3155, '鹤庆县', 372, 29, ',0,29,372,3155,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3156, '漾濞县', 372, 29, ',0,29,372,3156,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3157, '南涧县', 372, 29, ',0,29,372,3157,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3158, '巍山县', 372, 29, ',0,29,372,3158,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3159, '潞西市', 373, 29, ',0,29,373,3159,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3160, '瑞丽市', 373, 29, ',0,29,373,3160,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3161, '梁河县', 373, 29, ',0,29,373,3161,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3162, '盈江县', 373, 29, ',0,29,373,3162,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3163, '陇川县', 373, 29, ',0,29,373,3163,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3164, '香格里拉县', 374, 29, ',0,29,374,3164,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3165, '德钦县', 374, 29, ',0,29,374,3165,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3166, '维西县', 374, 29, ',0,29,374,3166,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3167, '泸西县', 375, 29, ',0,29,375,3167,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3168, '蒙自市', 375, 29, ',0,29,375,3168,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3169, '个旧市', 375, 29, ',0,29,375,3169,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3170, '开远市', 375, 29, ',0,29,375,3170,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3171, '绿春县', 375, 29, ',0,29,375,3171,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3172, '建水县', 375, 29, ',0,29,375,3172,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3173, '石屏县', 375, 29, ',0,29,375,3173,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3174, '弥勒县', 375, 29, ',0,29,375,3174,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3175, '元阳县', 375, 29, ',0,29,375,3175,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3176, '红河县', 375, 29, ',0,29,375,3176,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3177, '金平县', 375, 29, ',0,29,375,3177,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3178, '河口县', 375, 29, ',0,29,375,3178,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3179, '屏边县', 375, 29, ',0,29,375,3179,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3180, '临翔区', 376, 29, ',0,29,376,3180,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3181, '凤庆县', 376, 29, ',0,29,376,3181,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3182, '云县', 376, 29, ',0,29,376,3182,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3183, '永德县', 376, 29, ',0,29,376,3183,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3184, '镇康县', 376, 29, ',0,29,376,3184,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3185, '双江县', 376, 29, ',0,29,376,3185,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3186, '耿马县', 376, 29, ',0,29,376,3186,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3187, '沧源县', 376, 29, ',0,29,376,3187,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3188, '麒麟区', 377, 29, ',0,29,377,3188,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3189, '宣威市', 377, 29, ',0,29,377,3189,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3190, '马龙县', 377, 29, ',0,29,377,3190,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3191, '陆良县', 377, 29, ',0,29,377,3191,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3192, '师宗县', 377, 29, ',0,29,377,3192,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3193, '罗平县', 377, 29, ',0,29,377,3193,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3194, '富源县', 377, 29, ',0,29,377,3194,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3195, '会泽县', 377, 29, ',0,29,377,3195,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3196, '沾益县', 377, 29, ',0,29,377,3196,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3197, '文山县', 378, 29, ',0,29,378,3197,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3198, '砚山县', 378, 29, ',0,29,378,3198,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3199, '西畴县', 378, 29, ',0,29,378,3199,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3200, '麻栗坡县', 378, 29, ',0,29,378,3200,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3201, '马关县', 378, 29, ',0,29,378,3201,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3202, '丘北县', 378, 29, ',0,29,378,3202,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3203, '广南县', 378, 29, ',0,29,378,3203,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3204, '富宁县', 378, 29, ',0,29,378,3204,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3205, '景洪市', 379, 29, ',0,29,379,3205,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3206, '勐海县', 379, 29, ',0,29,379,3206,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3207, '勐腊县', 379, 29, ',0,29,379,3207,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3208, '红塔区', 380, 29, ',0,29,380,3208,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3209, '江川县', 380, 29, ',0,29,380,3209,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3210, '澄江县', 380, 29, ',0,29,380,3210,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3211, '通海县', 380, 29, ',0,29,380,3211,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3212, '华宁县', 380, 29, ',0,29,380,3212,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3213, '易门县', 380, 29, ',0,29,380,3213,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3214, '峨山县', 380, 29, ',0,29,380,3214,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3215, '新平县', 380, 29, ',0,29,380,3215,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3216, '元江县', 380, 29, ',0,29,380,3216,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3217, '昭阳区', 381, 29, ',0,29,381,3217,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3218, '鲁甸县', 381, 29, ',0,29,381,3218,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3219, '巧家县', 381, 29, ',0,29,381,3219,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3220, '盐津县', 381, 29, ',0,29,381,3220,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3221, '大关县', 381, 29, ',0,29,381,3221,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3222, '永善县', 381, 29, ',0,29,381,3222,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3223, '绥江县', 381, 29, ',0,29,381,3223,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3224, '镇雄县', 381, 29, ',0,29,381,3224,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3225, '彝良县', 381, 29, ',0,29,381,3225,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3226, '威信县', 381, 29, ',0,29,381,3226,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3227, '水富县', 381, 29, ',0,29,381,3227,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3228, '西湖区', 382, 30, ',0,30,382,3228,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3229, '上城区', 382, 30, ',0,30,382,3229,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3230, '下城区', 382, 30, ',0,30,382,3230,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3231, '拱墅区', 382, 30, ',0,30,382,3231,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3232, '滨江区', 382, 30, ',0,30,382,3232,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3233, '江干区', 382, 30, ',0,30,382,3233,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3234, '萧山区', 382, 30, ',0,30,382,3234,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3235, '余杭区', 382, 30, ',0,30,382,3235,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3237, '建德市', 382, 30, ',0,30,382,3237,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3238, '富阳区', 382, 30, ',0,30,382,3238,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3239, '临安市', 382, 30, ',0,30,382,3239,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3240, '桐庐县', 382, 30, ',0,30,382,3240,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3241, '淳安县', 382, 30, ',0,30,382,3241,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3242, '吴兴区', 383, 30, ',0,30,383,3242,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3243, '南浔区', 383, 30, ',0,30,383,3243,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3244, '德清县', 383, 30, ',0,30,383,3244,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3245, '长兴县', 383, 30, ',0,30,383,3245,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3246, '安吉县', 383, 30, ',0,30,383,3246,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3247, '南湖区', 384, 30, ',0,30,384,3247,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3248, '秀洲区', 384, 30, ',0,30,384,3248,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3249, '海宁市', 384, 30, ',0,30,384,3249,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3250, '嘉善县', 384, 30, ',0,30,384,3250,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3251, '平湖市', 384, 30, ',0,30,384,3251,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3252, '桐乡市', 384, 30, ',0,30,384,3252,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3253, '海盐县', 384, 30, ',0,30,384,3253,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3254, '婺城区', 385, 30, ',0,30,385,3254,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3255, '金东区', 385, 30, ',0,30,385,3255,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3256, '兰溪市', 385, 30, ',0,30,385,3256,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3257, '义乌市', 385, 30, ',0,30,385,3257,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3264, '东阳市', 385, 30, ',0,30,385,3264,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3265, '永康市', 385, 30, ',0,30,385,3265,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3266, '武义县', 385, 30, ',0,30,385,3266,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3267, '浦江县', 385, 30, ',0,30,385,3267,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3268, '磐安县', 385, 30, ',0,30,385,3268,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3269, '莲都区', 386, 30, ',0,30,386,3269,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3270, '龙泉市', 386, 30, ',0,30,386,3270,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3271, '青田县', 386, 30, ',0,30,386,3271,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3272, '缙云县', 386, 30, ',0,30,386,3272,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3273, '遂昌县', 386, 30, ',0,30,386,3273,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3274, '松阳县', 386, 30, ',0,30,386,3274,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3275, '云和县', 386, 30, ',0,30,386,3275,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3276, '庆元县', 386, 30, ',0,30,386,3276,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3277, '景宁县', 386, 30, ',0,30,386,3277,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3278, '海曙区', 387, 30, ',0,30,387,3278,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3279, '江东区', 387, 30, ',0,30,387,3279,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3280, '江北区', 387, 30, ',0,30,387,3280,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3281, '镇海区', 387, 30, ',0,30,387,3281,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3282, '北仑区', 387, 30, ',0,30,387,3282,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3283, '鄞州区', 387, 30, ',0,30,387,3283,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3284, '余姚市', 387, 30, ',0,30,387,3284,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3285, '慈溪市', 387, 30, ',0,30,387,3285,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3286, '奉化区', 387, 30, ',0,30,387,3286,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3287, '象山县', 387, 30, ',0,30,387,3287,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3288, '宁海县', 387, 30, ',0,30,387,3288,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3289, '越城区', 388, 30, ',0,30,388,3289,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3290, '上虞区', 388, 30, ',0,30,388,3290,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3291, '嵊州市', 388, 30, ',0,30,388,3291,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3292, '绍兴县', 388, 30, ',0,30,388,3292,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3293, '新昌县', 388, 30, ',0,30,388,3293,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3294, '诸暨市', 388, 30, ',0,30,388,3294,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3295, '椒江区', 389, 30, ',0,30,389,3295,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3296, '黄岩区', 389, 30, ',0,30,389,3296,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3297, '路桥区', 389, 30, ',0,30,389,3297,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3298, '温岭市', 389, 30, ',0,30,389,3298,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3299, '临海市', 389, 30, ',0,30,389,3299,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3300, '玉环县', 389, 30, ',0,30,389,3300,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3301, '三门县', 389, 30, ',0,30,389,3301,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3302, '天台县', 389, 30, ',0,30,389,3302,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3303, '仙居县', 389, 30, ',0,30,389,3303,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3304, '鹿城区', 390, 30, ',0,30,390,3304,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3305, '龙湾区', 390, 30, ',0,30,390,3305,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3306, '瓯海区', 390, 30, ',0,30,390,3306,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3307, '瑞安市', 390, 30, ',0,30,390,3307,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3308, '乐清市', 390, 30, ',0,30,390,3308,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3309, '洞头区', 390, 30, ',0,30,390,3309,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3310, '永嘉县', 390, 30, ',0,30,390,3310,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3311, '平阳县', 390, 30, ',0,30,390,3311,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3312, '苍南县', 390, 30, ',0,30,390,3312,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3313, '文成县', 390, 30, ',0,30,390,3313,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3314, '泰顺县', 390, 30, ',0,30,390,3314,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3315, '定海区', 391, 30, ',0,30,391,3315,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3316, '普陀区', 391, 30, ',0,30,391,3316,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3317, '岱山县', 391, 30, ',0,30,391,3317,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3318, '嵊泗县', 391, 30, ',0,30,391,3318,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3319, '衢江区', 392, 30, ',0,30,392,3319,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3320, '江山市', 392, 30, ',0,30,392,3320,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3321, '常山县', 392, 30, ',0,30,392,3321,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3322, '开化县', 392, 30, ',0,30,392,3322,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3323, '龙游县', 392, 30, ',0,30,392,3323,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3324, '合川区', 31, 31, ',0,31,3324,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3325, '江津区', 31, 31, ',0,31,3325,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3326, '南川区', 31, 31, ',0,31,3326,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3327, '永川区', 31, 31, ',0,31,3327,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3328, '南岸区', 31, 31, ',0,31,3328,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3329, '渝北区', 31, 31, ',0,31,3329,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3330, '万盛区', 31, 31, ',0,31,3330,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3331, '大渡口区', 31, 31, ',0,31,3331,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3332, '万州区', 31, 31, ',0,31,3332,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3333, '北碚区', 31, 31, ',0,31,3333,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3334, '沙坪坝区', 31, 31, ',0,31,3334,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3335, '巴南区', 31, 31, ',0,31,3335,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3336, '涪陵区', 31, 31, ',0,31,3336,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3337, '江北区', 31, 31, ',0,31,3337,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3338, '九龙坡区', 31, 31, ',0,31,3338,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3339, '渝中区', 31, 31, ',0,31,3339,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3340, '黔江区', 31, 31, ',0,31,3340,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3341, '长寿区', 31, 31, ',0,31,3341,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3342, '双桥区', 31, 31, ',0,31,3342,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3343, '綦江区', 31, 31, ',0,31,3343,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3344, '潼南区', 31, 31, ',0,31,3344,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3345, '铜梁区', 31, 31, ',0,31,3345,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3346, '大足县', 31, 31, ',0,31,3346,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3347, '荣昌区', 31, 31, ',0,31,3347,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3348, '璧山区', 31, 31, ',0,31,3348,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3349, '垫江县', 31, 31, ',0,31,3349,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3350, '武隆县', 31, 31, ',0,31,3350,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3351, '丰都县', 31, 31, ',0,31,3351,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3352, '城口县', 31, 31, ',0,31,3352,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3353, '梁平县', 31, 31, ',0,31,3353,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3354, '开县', 31, 31, ',0,31,3354,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3355, '巫溪县', 31, 31, ',0,31,3355,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3356, '巫山县', 31, 31, ',0,31,3356,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3357, '奉节县', 31, 31, ',0,31,3357,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3358, '云阳县', 31, 31, ',0,31,3358,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3359, '忠县', 31, 31, ',0,31,3359,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3360, '石柱县', 31, 31, ',0,31,3360,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3361, '彭水县', 31, 31, ',0,31,3361,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3362, '酉阳县', 31, 31, ',0,31,3362,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3363, '秀山县', 31, 31, ',0,31,3363,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3364, '沙田区', 3666, 32, ',0,3666,3364,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3365, '东区', 3667, 32, ',0,3667,3365,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3366, '观塘区', 3668, 32, ',0,3668,3366,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3367, '黄大仙区', 3368, 32, ',0,3368,3367,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3368, '九龙城区', 3668, 32, ',0,3668,3368,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3369, '屯门区', 3666, 32, ',0,3666,3369,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3370, '葵青区', 3666, 32, ',0,3666,3370,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3371, '元朗区', 3666, 32, ',0,32,3666,3371,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3372, '深水埗区', 3668, 32, ',0,32,3668,3372,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3373, '西贡区', 3666, 32, ',0,32,3666,3373,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3374, '大埔区', 3666, 32, ',0,32,3666,3374,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3375, '湾仔区', 3667, 32, ',0,32,3667,3375,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3376, '油尖旺区', 3668, 32, ',0,32,3668,3376,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3377, '北区', 3666, 32, ',0,32,3666,3377,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3378, '南区', 3667, 32, ',0,32,3667,3378,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3379, '荃湾区', 3666, 32, ',0,32,3666,3379,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3380, '中西区', 3667, 32, ',0,32,3667,3380,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3381, '离岛区', 3666, 32, ',0,32,3666,3381,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3383, '台北', 34, 34, ',0,34,3383,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3384, '高雄', 34, 34, ',0,34,3384,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3385, '基隆', 34, 34, ',0,34,3385,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3386, '台中', 34, 34, ',0,34,3386,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3387, '台南', 34, 34, ',0,34,3387,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3388, '新竹', 34, 34, ',0,34,3388,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3389, '嘉义', 34, 34, ',0,34,3389,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3390, '宜兰县', 34, 34, ',0,34,3390,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3391, '桃园县', 34, 34, ',0,34,3391,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3392, '苗栗县', 34, 34, ',0,34,3392,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3393, '彰化县', 34, 34, ',0,34,3393,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3394, '南投县', 34, 34, ',0,34,3394,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3395, '云林县', 34, 34, ',0,34,3395,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3396, '屏东县', 34, 34, ',0,34,3396,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3397, '台东县', 34, 34, ',0,34,3397,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3398, '花莲县', 34, 34, ',0,34,3398,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3399, '澎湖县', 34, 34, ',0,34,3399,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3400, '合肥', 2, 2, ',0,2,3400,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3401, '庐阳区', 3400, 2, ',0,2,3400,3401,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3402, '瑶海区', 3400, 2, ',0,2,3400,3402,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3403, '蜀山区', 3400, 2, ',0,2,3400,3403,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3404, '包河区', 3400, 2, ',0,2,3400,3404,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3405, '长丰县', 3400, 2, ',0,2,3400,3405,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3406, '肥东县', 3400, 2, ',0,2,3400,3406,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3407, '肥西县', 3400, 2, ',0,2,3400,3407,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3258, '阜新县', 250, 17, ',0,17,250,3258,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3259, '加格达奇区', 168, 11, ',0,11,168,3259,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3260, '松岭区', 168, 11, ',0,11,168,3260,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3261, '新林区', 168, 11, ',0,11,168,3261,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3262, '呼中区', 168, 11, ',0,11,168,3262,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3263, '麻山区', 171, 11, ',0,11,171,3263,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (1856, '塔城市', 365, 28, ',0,28,365,1856,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3647, '柯城区', 392, 30, ',0,30,392,3647,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3656, '随县', 189, 12, ',0,12,189,3656,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3657, '北屯', 28, 28, ',0,28,3657,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3658, '柯桥区', 388, 30, ',0,30,388,3658,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3659, '仲恺区', 81, 5, ',0,5,81,3659,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3661, '三沙', 8, 8, ',0,8,3661,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3662, '鼎湖区', 93, 5, ',0,5,93,3662,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3663, '端州区', 93, 5, ',0,5,93,3663,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3664, '双河', 354, 28, ',0,28,354,3664,', 3, 0, 1);
INSERT INTO `ss_city` VALUES (3665, '新北', 34, 34, ',0,34,3665,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3666, '新界', 32, 32, ',0,32,3666,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3667, '香港岛', 32, 32, ',0,32,3667,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3668, '九龙', 32, 32, ',0,32,3668,', 2, 0, 1);
INSERT INTO `ss_city` VALUES (3669, '博望区', 45, 2, ',0,2,45,3669,', 3, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for ss_collect
-- ----------------------------
DROP TABLE IF EXISTS `ss_collect`;
CREATE TABLE `ss_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型（1招聘职位，2门店）',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `recruit_id` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='我的收藏';

-- ----------------------------
-- Records of ss_collect
-- ----------------------------
BEGIN;
INSERT INTO `ss_collect` VALUES (1, 3, 1, 0, 3, 0, 0);
INSERT INTO `ss_collect` VALUES (2, 3, 1, 0, 4, 0, 0);
INSERT INTO `ss_collect` VALUES (3, 3, 2, 3, 0, 0, 0);
INSERT INTO `ss_collect` VALUES (6, 3, 2, 1, 0, 1598451964, 1598451964);
COMMIT;

-- ----------------------------
-- Table structure for ss_config
-- ----------------------------
DROP TABLE IF EXISTS `ss_config`;
CREATE TABLE `ss_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '网站标题',
  `copyright` varchar(100) NOT NULL DEFAULT '' COMMENT '网站版权',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='网站配置表';

-- ----------------------------
-- Records of ss_config
-- ----------------------------
BEGIN;
INSERT INTO `ss_config` VALUES (1, '郑州拾叁网络科技有限公司', 'ICP 豫备案号 88888888');
COMMIT;

-- ----------------------------
-- Table structure for ss_enroll
-- ----------------------------
DROP TABLE IF EXISTS `ss_enroll`;
CREATE TABLE `ss_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '类型（1工厂报名，2门店报名）',
  `factory_id` int(11) NOT NULL DEFAULT '0' COMMENT '工厂ID',
  `recruit_id` int(11) NOT NULL DEFAULT '0' COMMENT '招工信息ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '电话',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店ID',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='报名表';

-- ----------------------------
-- Records of ss_enroll
-- ----------------------------
BEGIN;
INSERT INTO `ss_enroll` VALUES (1, 2, 0, 0, 0, '测试', '15924140778', 1, 1, 1598342281, 1598342281);
INSERT INTO `ss_enroll` VALUES (2, 2, 0, 0, 0, '测试', '15924140778', 1, 1, 1598342302, 1598342302);
INSERT INTO `ss_enroll` VALUES (3, 2, 0, 0, 0, '测试', '15924140778', 1, 1, 1598342342, 1598342342);
INSERT INTO `ss_enroll` VALUES (4, 2, 0, 0, 0, '测试', '15924140778', 1, 1, 1598342433, 1598342433);
INSERT INTO `ss_enroll` VALUES (5, 2, 0, 0, 0, '行业新闻', '15924140778', 1, 1, 1598419194, 1598419194);
COMMIT;

-- ----------------------------
-- Table structure for ss_factory
-- ----------------------------
DROP TABLE IF EXISTS `ss_factory`;
CREATE TABLE `ss_factory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '企业名称',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '工厂封面图片',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '工厂图集',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `area` int(11) NOT NULL DEFAULT '0' COMMENT '县/区',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `scale` varchar(32) NOT NULL DEFAULT '' COMMENT '企业规模',
  `label` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `trade` varchar(20) NOT NULL DEFAULT '' COMMENT '行业',
  `avg_salary` int(10) NOT NULL DEFAULT '0' COMMENT '平均月薪',
  `desc` varchar(2000) NOT NULL DEFAULT '' COMMENT '企业简介',
  `longitude` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `address` varchar(32) NOT NULL DEFAULT '' COMMENT '企业位置',
  `bus_line` varchar(500) NOT NULL DEFAULT '' COMMENT '乘车路线',
  `meet` varchar(200) NOT NULL COMMENT '接站地址',
  `sign_up` int(11) NOT NULL DEFAULT '0' COMMENT '报名人数',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '（越大越靠前）',
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_factory
-- ----------------------------
BEGIN;
INSERT INTO `ss_factory` VALUES (1, '华宝（南京）科技有限公司', '/upload/admin/image/2020-08-12/202008120028491521.jpg', '75,77,78,79,', 6, 98, 891, '0371-63133666', '15000人以上', '10001,10003,10005', '制造业', 5600, '华宝通讯(南京)有限公司系台湾华宝通讯投资设立，属台湾独资企业，是一家代工手机生产商。华宝通讯为仁宝集团之手机专业制造商创建於台湾，於2004年初在中国大陆投资建厂，总投资2950万美元，注册资金2200万美元。\r\n     公司共有15000多名员工。华宝通讯（南京）有限公司的产品已广泛应用于电信、移动、联通、网通、铁通、卫通等多家运营商，同时广泛应用于电力、广电、公安、石油、厂矿、港口、民航、大学、银行、水利、交通、军队等专网，为抗灾、救灾及突发事件提供应急通信抢修服务。\r\n      公司推行严格的全面质量管理，建立了完善的质量保证体系，同时具有良好的技术支持及完善的售后服务，保持着质量第一、服务第一、用户至上的销售理念，与众多用户建立了长期友好的合作关系。', '118.810234', '31.885996', '江苏省南京市江宁区苏源大道68', '可乘816路公交和地铁3号线至九龙湖人才公寓站下车。', '南京南（高铁）\r\n南京站（火车站）\r\n方山服务区（大巴）\r\n南京车站\r\n南京汽车南站', 0, 1, 0, 0, 1, 1597162988, 1597896396);
INSERT INTO `ss_factory` VALUES (2, '瑞声科技(常州)有限公司', '/upload/admin/image/2020-08-12/202008120041327586.jpg', '81,82,83,84,', 881, 917, 923, '0371-63133666', '15000人以上', '10001,10002,10003', '制造业', 5300, '瑞声科技控股集团成立于1993年，英文全称为AACTechnologiesHoldings INC。集团2005年8月于香港证券交易所上市（股票代码2018.HK）。\r\n\r\n集团目前已拥有1900个新产品的国家专利，在职员工7-8万人，是常州地区电子行业实力最为雄厚的企业之一，连续多年被评为中国电子元件百强企业、中国电子元件十大知名品牌企业。\r\n\r\n目前集团正以前所未有的速度发展壮大，热忱欢迎有识之士加盟，我们将为您提供具有竞争力的薪酬福利和良好的发展空间。', '119.953105', '31.653933', '江苏省常州市武进区新常漕路3号瑞声科技园', '常州站（汽车站、北站、火车、高铁）——B11公交（1元）——武进公交中心站（终点站）。', '芳茂山服务区（大巴）\r\n常州站（火车站）\r\n常州北站\r\n常州汽车站', 0, 1, 0, 0, 1, 1597164184, 1597168428);
INSERT INTO `ss_factory` VALUES (3, '捷普电子(无锡)有限公司', '/upload/admin/image/2020-08-12/202008120044348946.jpg', '86,87,88,89,', 881, 895, 896, '0371-55338888', '15000人以上', '10001,10004,10005', '制造业', 5000, '捷普是一家提供电子产品解决方案的公司，专门为电子公司和高科技公司提供全面的设计、制造和产品管理服务。捷普通过遍布全球的产品供应链，不仅加快电子产品投放市场的速度，而且有效地降低了产品价格。通过全球员工的努力，捷普为各行各业提供全面的以客户为中心的解决方案。\r\n\r\n在电脑外围设备、数据传输、自动化及消费产品等多个领域，捷普集团向全球各地的客户提供从设计、开发、生产、装配、系统技术支持及到最终用户分销等优质服务。凭借强大的技术优势、锐意创新的专业态度和尽善尽美的服务精神，捷普集团拥有分布在美洲、亚洲及欧洲等超过60个高度自动化的生产基地，资金、技术实力雄厚，许多国际知名企业都是捷普无锡的客户。', '120.453835', '31.512794', '江苏省无锡市新吴区薛典路9号', '', '无锡火车站\r\n苏南硕放机场收费站', 0, 1, 0, 0, 1, 1597164361, 1597168519);
INSERT INTO `ss_factory` VALUES (4, '浙江卓力电器集团有限公司', '/upload/admin/image/2020-08-12/202008120047422853.jpg', '91,92,93,94,', 1008, 1024, 1027, '0371-55338888', '15000人以上', '10001,10003,10008', '制造业', 5600, '浙江卓力电器集团有限公司是国内小家电产品生产的主要企业之一 ，专业生产电熨斗和吸尘器系列产品 。公司现有员工50 0人 ,七条流水线 ，三十台注塑机 ，年产近500万台 ，产品产值超亿元人民币 ， 绝大多数产品已获得 U L、T U V 、 G S 、 C E 、E M C 家电类认证 ，产品远销欧美中东等近3 0个国家 和 地 区 。 公司有雄厚的产品开发能力和精 湛的模具开发制造技术 ，每年都能推出近 10 个新款型的品 ， 产品质量好 ,价格合理 ， 深受广大客户好评 。', '121.301735', '30.324751', '兴慈三路218号', '', '', 0, 1, 0, 0, 1, 1597164562, 1597168543);
INSERT INTO `ss_factory` VALUES (5, '富士康(成都)通讯科技有限公司', '/upload/admin/image/2020-08-12/202008120050363896.jpg', '96,97,98,99,', 2506, 2507, 2516, '0371-55338888', '15000人以上', '10001,10005,10008', '制造业', 5600, '富士康科技集团是专业从事计算机、通讯、消费性电子等3C产品研发制造，广泛涉足数位内容、汽车零组件、通路、云运算服务及新能源、新材料开发应用的高新科技企业。', '103.92078', '30.757886', '四川省成都市高新西区合作路888号', '1、成都火车东站：坐地铁2号线到终点犀浦站下车，出站后在地铁站对面公交站台坐116路，在电子科技大学西校门下车，步行500米到达富士康招聘与培训中心； 2、成都火车北站：下车乘地铁7号线一品天下站下车，乘坐2号线到犀浦地铁站下车，然后乘公交车116到电子科大西校门站下车 ，步行500米到达富士康招聘与培训中心。', '成都火车东站\r\n成都火车北站', 0, 1, 0, 0, 1, 1597164746, 1597168573);
INSERT INTO `ss_factory` VALUES (6, '昆山启佳', '/upload/admin/image/2020-08-12/202008120050363896.jpg', '96,97,98,99,', 2506, 2507, 2516, '0371-55338888', '15000人以上', '10001,10005,10008', '制造业', 5600, '富士康科技集团是专业从事计算机、通讯、消费性电子等3C产品研发制造，广泛涉足数位内容、汽车零组件、通路、云运算服务及新能源、新材料开发应用的高新科技企业。', '103.92078', '30.757886', '四川省成都市高新西区合作路888号', '1、成都火车东站：坐地铁2号线到终点犀浦站下车，出站后在地铁站对面公交站台坐116路，在电子科技大学西校门下车，步行500米到达富士康招聘与培训中心； 2、成都火车北站：下车乘地铁7号线一品天下站下车，乘坐2号线到犀浦地铁站下车，然后乘公交车116到电子科大西校门站下车 ，步行500米到达富士康招聘与培训中心。', '成都火车东站\r\n成都火车北站', 0, 1, 0, 0, 1, 1597164746, 1597168591);
COMMIT;

-- ----------------------------
-- Table structure for ss_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ss_feedback`;
CREATE TABLE `ss_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '反馈内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态。1待处理，2已处理',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '处理人ID',
  `admin_name` varchar(32) NOT NULL DEFAULT '' COMMENT '处理人姓名',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='网站意见反馈表';

-- ----------------------------
-- Records of ss_feedback
-- ----------------------------
BEGIN;
INSERT INTO `ss_feedback` VALUES (1, '张三', '15924140778', '1120414124@qq.com', '元气满满', 2, '', 1, 'admin', 1581664083, 1581666575);
COMMIT;

-- ----------------------------
-- Table structure for ss_file
-- ----------------------------
DROP TABLE IF EXISTS `ss_file`;
CREATE TABLE `ss_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) NOT NULL DEFAULT '' COMMENT '文件地址',
  `original_name` varchar(200) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COMMENT='上传文件表';

-- ----------------------------
-- Records of ss_file
-- ----------------------------
BEGIN;
INSERT INTO `ss_file` VALUES (1, '/upload/admin/image/2020-07-31/202007311844277265.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596192267, 1596192267, '');
INSERT INTO `ss_file` VALUES (2, '/upload/admin/image/2020-08-02/202008022303334776.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596380613, 1596380613, '');
INSERT INTO `ss_file` VALUES (3, '/upload/admin/image/2020-08-02/202008022346303244.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596383190, 1596383190, '');
INSERT INTO `ss_file` VALUES (4, '/upload/admin/image/2020-08-02/202008022351039880.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596383463, 1596383463, '');
INSERT INTO `ss_file` VALUES (5, '/upload/admin/image/2020-08-03/202008031535162936.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596440116, 1596440116, '');
INSERT INTO `ss_file` VALUES (6, '/upload/admin/image/2020-08-03/202008031535217219.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596440121, 1596440121, '');
INSERT INTO `ss_file` VALUES (7, '/upload/admin/image/2020-08-03/202008031535567545.jpg', 'WechatIMG12.jpg', 1, 1, 1596440156, 1596440156, '');
INSERT INTO `ss_file` VALUES (8, '/upload/admin/image/2020-08-03/202008031536035019.jpg', 'WechatIMG25393.jpg', 1, 1, 1596440163, 1596440163, '');
INSERT INTO `ss_file` VALUES (9, '/upload/admin/image/2020-08-03/202008031554043672.jpg', '485b8b8ba61ea8d3e73bbf7e800a304e241f58d4.jpg', 1, 1, 1596441244, 1596441244, '');
INSERT INTO `ss_file` VALUES (10, '/upload/admin/image/2020-08-03/202008032355131890.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1596470113, 1596470113, '');
INSERT INTO `ss_file` VALUES (11, '/upload/admin/image/2020-08-09/202008091144242748.jpg', '2.jpg', 1, 1, 1596944664, 1596944664, '');
INSERT INTO `ss_file` VALUES (12, '/upload/admin/image/2020-08-09/202008091144371598.jpg', '1.jpg', 1, 1, 1596944677, 1596944677, '');
INSERT INTO `ss_file` VALUES (13, '/upload/admin/image/2020-08-09/202008091144418794.jpg', '2.jpg', 1, 1, 1596944681, 1596944681, '');
INSERT INTO `ss_file` VALUES (14, '/upload/admin/image/2020-08-09/202008091144474643.jpg', '3.jpg', 1, 1, 1596944687, 1596944687, '');
INSERT INTO `ss_file` VALUES (15, '/upload/admin/image/2020-08-09/202008091144513721.jpg', '4.jpg', 1, 1, 1596944691, 1596944691, '');
INSERT INTO `ss_file` VALUES (16, '/upload/admin/image/2020-08-09/202008091144565982.jpg', '5.jpg', 1, 1, 1596944696, 1596944696, '');
INSERT INTO `ss_file` VALUES (17, '/upload/admin/image/2020-08-09/202008091145013361.jpg', '6.jpg', 1, 1, 1596944701, 1596944701, '');
INSERT INTO `ss_file` VALUES (18, '/upload/admin/image/2020-08-09/202008091145059013.jpg', '7.jpg', 1, 1, 1596944705, 1596944705, '');
INSERT INTO `ss_file` VALUES (19, '/upload/admin/image/2020-08-09/202008091145092271.jpg', '8.jpg', 1, 1, 1596944709, 1596944709, '');
INSERT INTO `ss_file` VALUES (20, '/upload/admin/image/2020-08-09/202008091145137370.jpg', '9.jpg', 1, 1, 1596944713, 1596944713, '');
INSERT INTO `ss_file` VALUES (21, '/upload/admin/image/2020-08-09/202008091145181049.jpg', '10.jpg', 1, 1, 1596944718, 1596944718, '');
INSERT INTO `ss_file` VALUES (22, '/upload/admin/image/2020-08-09/202008091156155026.jpg', '221.jpg', 1, 1, 1596945375, 1596945375, '');
INSERT INTO `ss_file` VALUES (23, '/upload/admin/image/2020-08-09/202008091156208441.jpg', '221.jpg', 1, 1, 1596945380, 1596945380, '');
INSERT INTO `ss_file` VALUES (24, '/upload/admin/image/2020-08-09/202008091156247300.jpg', '222.jpg', 1, 1, 1596945384, 1596945384, '');
INSERT INTO `ss_file` VALUES (25, '/upload/admin/image/2020-08-09/202008091156281665.jpg', '223.jpg', 1, 1, 1596945388, 1596945388, '');
INSERT INTO `ss_file` VALUES (26, '/upload/admin/image/2020-08-09/202008091156317441.jpg', '224.jpg', 1, 1, 1596945391, 1596945391, '');
INSERT INTO `ss_file` VALUES (27, '/upload/admin/image/2020-08-09/202008091159277466.jpg', '331.jpg', 1, 1, 1596945567, 1596945567, '');
INSERT INTO `ss_file` VALUES (28, '/upload/admin/image/2020-08-09/202008091159327743.jpg', '332.jpg', 1, 1, 1596945572, 1596945572, '');
INSERT INTO `ss_file` VALUES (29, '/upload/admin/image/2020-08-09/202008091159545411.jpg', '333.jpg', 1, 1, 1596945594, 1596945594, '');
INSERT INTO `ss_file` VALUES (30, '/upload/admin/image/2020-08-09/202008091159587123.jpg', '334.jpg', 1, 1, 1596945598, 1596945598, '');
INSERT INTO `ss_file` VALUES (31, '/upload/admin/image/2020-08-09/202008091200031463.jpg', '335.jpg', 1, 1, 1596945603, 1596945603, '');
INSERT INTO `ss_file` VALUES (32, '/upload/admin/image/2020-08-09/202008091202225431.jpg', '441.jpg', 1, 1, 1596945742, 1596945742, '');
INSERT INTO `ss_file` VALUES (33, '/upload/admin/image/2020-08-09/202008091202269611.jpg', '441.jpg', 1, 1, 1596945746, 1596945746, '');
INSERT INTO `ss_file` VALUES (34, '/upload/admin/image/2020-08-09/202008091202307940.jpg', '442.jpg', 1, 1, 1596945750, 1596945750, '');
INSERT INTO `ss_file` VALUES (35, '/upload/admin/image/2020-08-09/202008091205034670.jpg', '551.jpg', 1, 1, 1596945903, 1596945903, '');
INSERT INTO `ss_file` VALUES (36, '/upload/admin/image/2020-08-09/202008091205079358.jpg', '551.jpg', 1, 1, 1596945907, 1596945907, '');
INSERT INTO `ss_file` VALUES (37, '/upload/admin/image/2020-08-09/202008091205111149.jpg', '552.jpg', 1, 1, 1596945911, 1596945911, '');
INSERT INTO `ss_file` VALUES (38, '/upload/admin/image/2020-08-09/202008091205152806.jpg', '553.jpg', 1, 1, 1596945915, 1596945915, '');
INSERT INTO `ss_file` VALUES (39, '/upload/admin/image/2020-08-09/202008091322147622.jpg', '661.jpg', 1, 1, 1596950534, 1596950534, '');
INSERT INTO `ss_file` VALUES (40, '/upload/admin/image/2020-08-09/202008091322195918.jpg', '661.jpg', 1, 1, 1596950539, 1596950539, '');
INSERT INTO `ss_file` VALUES (41, '/upload/admin/image/2020-08-09/202008091322319332.jpg', '663.jpg', 1, 1, 1596950551, 1596950551, '');
INSERT INTO `ss_file` VALUES (42, '/upload/admin/image/2020-08-09/202008091858451406.jpg', 'R2.jpg', 1, 1, 1596970725, 1596970725, '');
INSERT INTO `ss_file` VALUES (43, '/upload/admin/image/2020-08-09/202008091858498316.jpg', 'R1.jpg', 1, 1, 1596970729, 1596970729, '');
INSERT INTO `ss_file` VALUES (44, '/upload/admin/image/2020-08-09/202008091858549780.jpg', 'R2.jpg', 1, 1, 1596970734, 1596970734, '');
INSERT INTO `ss_file` VALUES (45, '/upload/admin/image/2020-08-09/202008091858589376.jpg', 'R3.jpg', 1, 1, 1596970738, 1596970738, '');
INSERT INTO `ss_file` VALUES (46, '/upload/admin/image/2020-08-09/202008091859024119.jpg', 'R4.jpg', 1, 1, 1596970742, 1596970742, '');
INSERT INTO `ss_file` VALUES (47, '/upload/admin/image/2020-08-09/202008091942004678.jpg', 'R1.jpg', 1, 1, 1596973320, 1596973320, '');
INSERT INTO `ss_file` VALUES (48, '/upload/admin/image/2020-08-09/202008091942057050.jpg', 'R1.jpg', 1, 1, 1596973325, 1596973325, '');
INSERT INTO `ss_file` VALUES (49, '/upload/admin/image/2020-08-09/202008091942114262.jpg', 'R2.jpg', 1, 1, 1596973331, 1596973331, '');
INSERT INTO `ss_file` VALUES (50, '/upload/admin/image/2020-08-09/202008091942166528.jpg', 'R2.jpg', 1, 1, 1596973336, 1596973336, '');
INSERT INTO `ss_file` VALUES (51, '/upload/admin/image/2020-08-09/202008091942212733.jpg', 'R3.jpg', 1, 1, 1596973341, 1596973341, '');
INSERT INTO `ss_file` VALUES (52, '/upload/admin/image/2020-08-09/202008091942253858.jpg', 'R4.jpg', 1, 1, 1596973345, 1596973345, '');
INSERT INTO `ss_file` VALUES (53, '/upload/admin/image/2020-08-10/202008100048499385.jpg', 'dec75ab84755250e669de0a020d40bbc.jpg', 1, 1, 1596991729, 1596991729, '');
INSERT INTO `ss_file` VALUES (54, '/upload/admin/image/2020-08-10/202008100049231620.jpg', 'a9b57eb3daf081a027fa3b1c69bd1a05.jpg', 1, 1, 1596991763, 1596991763, '');
INSERT INTO `ss_file` VALUES (55, '/upload/admin/image/2020-08-10/202008100049382796.jpg', '528813731b6161c708aa3883cb1bd29c.jpg', 1, 1, 1596991778, 1596991778, '');
INSERT INTO `ss_file` VALUES (56, '/upload/admin/image/2020-08-10/202008100049523328.jpg', '0e136b87c62b9d19ee1a9732b30be6fc.jpg', 1, 1, 1596991792, 1596991792, '');
INSERT INTO `ss_file` VALUES (57, '/upload/admin/image/2020-08-10/202008100138437294.jpg', '0e136b87c62b9d19ee1a9732b30be6fc.jpg', 1, 1, 1596994724, 1596994724, '');
INSERT INTO `ss_file` VALUES (58, '/upload/admin/image/2020-08-10/202008100141592307.jpg', '0e136b87c62b9d19ee1a9732b30be6fc.jpg', 1, 1, 1596994919, 1596994919, '');
INSERT INTO `ss_file` VALUES (59, '/upload/admin/image/2020-08-10/202008100142171074.jpg', '528813731b6161c708aa3883cb1bd29c.jpg', 1, 1, 1596994937, 1596994937, '');
INSERT INTO `ss_file` VALUES (60, '/upload/admin/image/2020-08-10/202008100142276168.jpg', 'a9b57eb3daf081a027fa3b1c69bd1a05.jpg', 1, 1, 1596994947, 1596994947, '');
INSERT INTO `ss_file` VALUES (61, '/upload/admin/image/2020-08-10/202008100142387700.jpg', 'dec75ab84755250e669de0a020d40bbc.jpg', 1, 1, 1596994958, 1596994958, '');
INSERT INTO `ss_file` VALUES (62, '/upload/admin/image/2020-08-10/202008101406143267.jpg', 'news-img5.jpg', 1, 1, 1597039574, 1597039574, '');
INSERT INTO `ss_file` VALUES (63, '/upload/admin/image/2020-08-10/202008101429494133.jpg', 'image.jpg', 1, 1, 1597040989, 1597040989, '');
INSERT INTO `ss_file` VALUES (64, '/upload/admin/image/2020-08-10/202008101431025592.jpg', 'image.jpg', 1, 1, 1597041062, 1597041062, '');
INSERT INTO `ss_file` VALUES (65, '/upload/admin/image/2020-08-10/202008101432515783.jpg', 'image.jpg', 1, 1, 1597041171, 1597041171, '');
INSERT INTO `ss_file` VALUES (66, '/upload/admin/image/2020-08-10/202008101434105216.jpg', 'image.jpg', 1, 1, 1597041250, 1597041250, '');
INSERT INTO `ss_file` VALUES (67, '/upload/admin/image/2020-08-12/202008120016439543.jpg', 'factory3.jpg', 1, 1, 1597162603, 1597162603, '');
INSERT INTO `ss_file` VALUES (68, '/upload/admin/image/2020-08-12/202008120016471405.jpg', 'factory1.jpg', 1, 1, 1597162607, 1597162607, '');
INSERT INTO `ss_file` VALUES (69, '/upload/admin/image/2020-08-12/202008120016512518.jpg', 'factory2.jpg', 1, 1, 1597162611, 1597162611, '');
INSERT INTO `ss_file` VALUES (70, '/upload/admin/image/2020-08-12/202008120016567472.jpg', 'factory3.jpg', 1, 1, 1597162616, 1597162616, '');
INSERT INTO `ss_file` VALUES (71, '/upload/admin/image/2020-08-12/202008120017007268.jpg', 'factory4.jpg', 1, 1, 1597162620, 1597162620, '');
INSERT INTO `ss_file` VALUES (72, '/upload/admin/image/2020-08-12/202008120022311382.jpg', 'factory3.jpg', 1, 1, 1597162951, 1597162951, '');
INSERT INTO `ss_file` VALUES (73, '/upload/admin/image/2020-08-12/202008120022315220.jpg', 'factory4.jpg', 1, 1, 1597162951, 1597162951, '');
INSERT INTO `ss_file` VALUES (74, '/upload/admin/image/2020-08-12/202008120022497447.jpg', 'factory3.jpg', 1, 1, 1597162969, 1597162969, '');
INSERT INTO `ss_file` VALUES (75, '/upload/admin/image/2020-08-12/202008120022497819.jpg', 'factory4.jpg', 1, 1, 1597162969, 1597162969, '');
INSERT INTO `ss_file` VALUES (76, '/upload/admin/image/2020-08-12/202008120028491521.jpg', 'factory2.jpg', 1, 1, 1597163329, 1597163329, '');
INSERT INTO `ss_file` VALUES (77, '/upload/admin/image/2020-08-12/202008120028542056.jpg', 'factory1.jpg', 1, 1, 1597163334, 1597163334, '');
INSERT INTO `ss_file` VALUES (78, '/upload/admin/image/2020-08-12/202008120028599074.jpg', 'factory3.jpg', 1, 1, 1597163339, 1597163339, '');
INSERT INTO `ss_file` VALUES (79, '/upload/admin/image/2020-08-12/202008120029113699.jpg', 'factory2.jpg', 1, 1, 1597163351, 1597163351, '');
INSERT INTO `ss_file` VALUES (80, '/upload/admin/image/2020-08-12/202008120041327586.jpg', 'factory2.jpg', 1, 1, 1597164092, 1597164092, '');
INSERT INTO `ss_file` VALUES (81, '/upload/admin/image/2020-08-12/202008120041362981.jpg', 'factory1.jpg', 1, 1, 1597164096, 1597164096, '');
INSERT INTO `ss_file` VALUES (82, '/upload/admin/image/2020-08-12/202008120041405278.jpg', 'factory2.jpg', 1, 1, 1597164100, 1597164100, '');
INSERT INTO `ss_file` VALUES (83, '/upload/admin/image/2020-08-12/202008120041449253.jpg', 'factory3.jpg', 1, 1, 1597164104, 1597164104, '');
INSERT INTO `ss_file` VALUES (84, '/upload/admin/image/2020-08-12/202008120041481878.jpg', 'factory4.jpg', 1, 1, 1597164108, 1597164108, '');
INSERT INTO `ss_file` VALUES (85, '/upload/admin/image/2020-08-12/202008120044348946.jpg', 'factory4.jpg', 1, 1, 1597164274, 1597164274, '');
INSERT INTO `ss_file` VALUES (86, '/upload/admin/image/2020-08-12/202008120044386444.jpg', 'factory1.jpg', 1, 1, 1597164278, 1597164278, '');
INSERT INTO `ss_file` VALUES (87, '/upload/admin/image/2020-08-12/202008120044426223.jpg', 'factory2.jpg', 1, 1, 1597164282, 1597164282, '');
INSERT INTO `ss_file` VALUES (88, '/upload/admin/image/2020-08-12/202008120044468356.jpg', 'factory3.jpg', 1, 1, 1597164286, 1597164286, '');
INSERT INTO `ss_file` VALUES (89, '/upload/admin/image/2020-08-12/202008120044519651.jpg', 'factory4.jpg', 1, 1, 1597164291, 1597164291, '');
INSERT INTO `ss_file` VALUES (90, '/upload/admin/image/2020-08-12/202008120047422853.jpg', 'factory4.jpg', 1, 1, 1597164462, 1597164462, '');
INSERT INTO `ss_file` VALUES (91, '/upload/admin/image/2020-08-12/202008120047464397.jpg', 'factory1.jpg', 1, 1, 1597164466, 1597164466, '');
INSERT INTO `ss_file` VALUES (92, '/upload/admin/image/2020-08-12/202008120047495531.jpg', 'factory2.jpg', 1, 1, 1597164469, 1597164469, '');
INSERT INTO `ss_file` VALUES (93, '/upload/admin/image/2020-08-12/202008120047534202.jpg', 'factory3.jpg', 1, 1, 1597164473, 1597164473, '');
INSERT INTO `ss_file` VALUES (94, '/upload/admin/image/2020-08-12/202008120047575888.jpg', 'factory4.jpg', 1, 1, 1597164477, 1597164477, '');
INSERT INTO `ss_file` VALUES (95, '/upload/admin/image/2020-08-12/202008120050363896.jpg', 'factory3.jpg', 1, 1, 1597164636, 1597164636, '');
INSERT INTO `ss_file` VALUES (96, '/upload/admin/image/2020-08-12/202008120050402511.jpg', 'factory1.jpg', 1, 1, 1597164640, 1597164640, '');
INSERT INTO `ss_file` VALUES (97, '/upload/admin/image/2020-08-12/202008120050447132.jpg', 'factory2.jpg', 1, 1, 1597164644, 1597164644, '');
INSERT INTO `ss_file` VALUES (98, '/upload/admin/image/2020-08-12/202008120050489646.jpg', 'factory3.jpg', 1, 1, 1597164648, 1597164648, '');
INSERT INTO `ss_file` VALUES (99, '/upload/admin/image/2020-08-12/202008120050524232.jpg', 'factory4.jpg', 1, 1, 1597164652, 1597164652, '');
INSERT INTO `ss_file` VALUES (100, '/upload/home/image/2020-08-18/202008181549369543.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597736976, 1597736976, '');
INSERT INTO `ss_file` VALUES (101, '/upload/home/image/2020-08-18/202008181636003662.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597739760, 1597739760, '');
INSERT INTO `ss_file` VALUES (102, '/upload/home/image/2020-08-18/202008181646056174.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740365, 1597740365, '');
INSERT INTO `ss_file` VALUES (103, '/upload/home/image/2020-08-18/202008181647128184.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740432, 1597740432, '');
INSERT INTO `ss_file` VALUES (104, '/upload/home/image/2020-08-18/202008181647588311.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740478, 1597740478, '');
INSERT INTO `ss_file` VALUES (105, '/upload/home/image/2020-08-18/202008181650429336.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740642, 1597740642, '');
INSERT INTO `ss_file` VALUES (106, '/upload/home/image/2020-08-18/202008181650476711.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740647, 1597740647, '');
INSERT INTO `ss_file` VALUES (107, '/upload/home/image/2020-08-18/202008181650549270.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740654, 1597740654, '');
INSERT INTO `ss_file` VALUES (108, '/upload/home/image/2020-08-18/202008181650591548.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740659, 1597740659, '');
INSERT INTO `ss_file` VALUES (109, '/upload/home/image/2020-08-18/202008181651069640.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740666, 1597740666, '');
INSERT INTO `ss_file` VALUES (110, '/upload/home/image/2020-08-18/202008181652223624.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740742, 1597740742, '');
INSERT INTO `ss_file` VALUES (111, '/upload/home/image/2020-08-18/202008181652307353.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740750, 1597740750, '');
INSERT INTO `ss_file` VALUES (112, '/upload/home/image/2020-08-18/202008181652589182.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740778, 1597740778, '');
INSERT INTO `ss_file` VALUES (113, '/upload/home/image/2020-08-18/202008181653069457.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597740786, 1597740786, '');
INSERT INTO `ss_file` VALUES (114, '/upload/home/image/2020-08-18/202008181734566672.jpg', '485b8b8b73bbf7e800a304e241f58d4.jpg', 1, 1, 1597743296, 1597743296, '');
INSERT INTO `ss_file` VALUES (115, '/upload/home/image/2020-08-18/202008181735082723.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597743308, 1597743308, '');
INSERT INTO `ss_file` VALUES (116, '/upload/home/image/2020-08-18/202008181735292097.jpg', '4246e79ba23b77a1bfa2858beb88aa24.jpg', 1, 1, 1597743329, 1597743329, '');
COMMIT;

-- ----------------------------
-- Table structure for ss_join_in
-- ----------------------------
DROP TABLE IF EXISTS `ss_join_in`;
CREATE TABLE `ss_join_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型（1门店加盟，2公司加盟，3个人加盟）',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名字',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `address` varchar(32) NOT NULL DEFAULT '' COMMENT '地址',
  `years` varchar(20) NOT NULL DEFAULT '0' COMMENT '从业年限（单位：年）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1待处理，2处理中，3通过，4拒绝）',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '处理人',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_join_in
-- ----------------------------
BEGIN;
INSERT INTO `ss_join_in` VALUES (1, 1, '路传军', '15924140778', '1120714124@qq.com', '', '11', 1, 0, '', 1597769093, 1597769093);
COMMIT;

-- ----------------------------
-- Table structure for ss_label
-- ----------------------------
DROP TABLE IF EXISTS `ss_label`;
CREATE TABLE `ss_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '标签名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型（1福利标签、2工厂标签等）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '标签排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8mb4 COMMENT='标签（福利标签，工厂标签等）';

-- ----------------------------
-- Records of ss_label
-- ----------------------------
BEGIN;
INSERT INTO `ss_label` VALUES (10001, '帅哥美女多', 1, 0, 1, 1596385155, 1596959591);
INSERT INTO `ss_label` VALUES (10002, '工作轻松', 1, 0, 1, 1596385389, 1596385389);
INSERT INTO `ss_label` VALUES (10003, '名企', 1, 0, 1, 1596959602, 1596959602);
INSERT INTO `ss_label` VALUES (10004, '坐着上班', 1, 0, 1, 1596959616, 1596959616);
INSERT INTO `ss_label` VALUES (10005, '夜班津贴', 1, 0, 1, 1596959626, 1596959626);
INSERT INTO `ss_label` VALUES (10006, '年终奖', 1, 0, 1, 1596962940, 1596962940);
INSERT INTO `ss_label` VALUES (10007, '五险一金', 1, 0, 1, 1596963083, 1596963083);
INSERT INTO `ss_label` VALUES (10008, '包吃包住', 1, 0, 1, 1596963092, 1596963092);
COMMIT;

-- ----------------------------
-- Table structure for ss_link
-- ----------------------------
DROP TABLE IF EXISTS `ss_link`;
CREATE TABLE `ss_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of ss_link
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ss_log
-- ----------------------------
DROP TABLE IF EXISTS `ss_log`;
CREATE TABLE `ss_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '管理员id',
  `operate_module` varchar(50) DEFAULT '' COMMENT '请求控制器',
  `operate_action` varchar(50) DEFAULT '' COMMENT '请求方法',
  `operate_url` varchar(200) DEFAULT '' COMMENT '请求URL',
  `content` varchar(255) DEFAULT '' COMMENT '日志内容',
  `ip` varchar(20) DEFAULT '' COMMENT 'IP',
  `module` tinyint(1) DEFAULT '0' COMMENT '前、后台',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_log
-- ----------------------------
BEGIN;
INSERT INTO `ss_log` VALUES (1, 1, 'category', 'store', '/admin/category', '新增分类', '127.0.0.1', 1, 1588863479);
INSERT INTO `ss_log` VALUES (2, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1588866742);
INSERT INTO `ss_log` VALUES (3, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1588906078);
INSERT INTO `ss_log` VALUES (4, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595915318);
INSERT INTO `ss_log` VALUES (5, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595953098);
INSERT INTO `ss_log` VALUES (6, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955378);
INSERT INTO `ss_log` VALUES (7, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955460);
INSERT INTO `ss_log` VALUES (8, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955493);
INSERT INTO `ss_log` VALUES (9, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955544);
INSERT INTO `ss_log` VALUES (10, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955600);
INSERT INTO `ss_log` VALUES (11, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955631);
INSERT INTO `ss_log` VALUES (12, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955668);
INSERT INTO `ss_log` VALUES (13, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955693);
INSERT INTO `ss_log` VALUES (14, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955718);
INSERT INTO `ss_log` VALUES (15, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955736);
INSERT INTO `ss_log` VALUES (16, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955757);
INSERT INTO `ss_log` VALUES (17, 1, 'menu', 'store', '/admin/menu', '添加菜单', '127.0.0.1', 1, 1595955791);
INSERT INTO `ss_log` VALUES (18, 1, 'menu', 'update', '/admin/menu/21', '更新菜单', '127.0.0.1', 1, 1595955828);
INSERT INTO `ss_log` VALUES (19, 1, 'menu', 'update', '/admin/menu/9', '更新菜单', '127.0.0.1', 1, 1595955879);
INSERT INTO `ss_log` VALUES (20, 1, 'menu', 'update', '/admin/menu/10', '更新菜单', '127.0.0.1', 1, 1595955890);
INSERT INTO `ss_log` VALUES (21, 1, 'menu', 'update', '/admin/menu/11', '更新菜单', '127.0.0.1', 1, 1595955909);
INSERT INTO `ss_log` VALUES (22, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595956972);
INSERT INTO `ss_log` VALUES (23, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595957301);
INSERT INTO `ss_log` VALUES (24, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595958037);
INSERT INTO `ss_log` VALUES (25, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595958176);
INSERT INTO `ss_log` VALUES (26, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595959151);
INSERT INTO `ss_log` VALUES (27, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595959228);
INSERT INTO `ss_log` VALUES (28, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595989101);
INSERT INTO `ss_log` VALUES (29, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1595989130);
INSERT INTO `ss_log` VALUES (30, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596012247);
INSERT INTO `ss_log` VALUES (31, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596189627);
INSERT INTO `ss_log` VALUES (32, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596266905);
INSERT INTO `ss_log` VALUES (33, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596379178);
INSERT INTO `ss_log` VALUES (34, 1, 'banner', 'store', '/admin/banner', '添加幻灯片', '127.0.0.1', 1, 1596383023);
INSERT INTO `ss_log` VALUES (35, 1, 'banner', 'store', '/admin/banner', '添加幻灯片', '127.0.0.1', 1, 1596383262);
INSERT INTO `ss_log` VALUES (36, 1, 'banner', 'store', '/admin/banner', '添加幻灯片', '127.0.0.1', 1, 1596383468);
INSERT INTO `ss_log` VALUES (37, 1, 'banner', 'update', '/admin/banner/1', '编辑幻灯片', '127.0.0.1', 1, 1596384248);
INSERT INTO `ss_log` VALUES (38, 1, 'banner', 'update', '/admin/banner/2', '编辑幻灯片', '127.0.0.1', 1, 1596384261);
INSERT INTO `ss_log` VALUES (39, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596385155);
INSERT INTO `ss_log` VALUES (40, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596385389);
INSERT INTO `ss_log` VALUES (41, 1, 'label', 'update', '/admin/label/1', '编辑标签', '127.0.0.1', 1, 1596385397);
INSERT INTO `ss_log` VALUES (42, 1, 'label', 'update', '/admin/label/1', '编辑标签', '127.0.0.1', 1, 1596385406);
INSERT INTO `ss_log` VALUES (43, 1, 'position', 'store', '/admin/position', '添加职位', '127.0.0.1', 1, 1596387392);
INSERT INTO `ss_log` VALUES (44, 1, 'position', 'update', '/admin/position/1', '编辑职位', '127.0.0.1', 1, 1596387400);
INSERT INTO `ss_log` VALUES (45, 1, 'position', 'update', '/admin/position/1', '编辑职位', '127.0.0.1', 1, 1596387408);
INSERT INTO `ss_log` VALUES (46, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596425336);
INSERT INTO `ss_log` VALUES (47, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596440259);
INSERT INTO `ss_log` VALUES (48, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596441250);
INSERT INTO `ss_log` VALUES (49, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596443822);
INSERT INTO `ss_log` VALUES (50, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596443846);
INSERT INTO `ss_log` VALUES (51, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596444025);
INSERT INTO `ss_log` VALUES (52, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596444051);
INSERT INTO `ss_log` VALUES (53, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596444091);
INSERT INTO `ss_log` VALUES (54, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596461475);
INSERT INTO `ss_log` VALUES (55, 1, 'category', 'update', '/admin/category/1', '编辑分类', '127.0.0.1', 1, 1596465124);
INSERT INTO `ss_log` VALUES (56, 1, 'category', 'update', '/admin/category/2', '编辑分类', '127.0.0.1', 1, 1596465140);
INSERT INTO `ss_log` VALUES (57, 1, 'news', 'store', '/admin/news', '添加新闻', '127.0.0.1', 1, 1596470524);
INSERT INTO `ss_log` VALUES (58, 1, 'news', 'update', '/admin/news/1', '编辑新闻', '127.0.0.1', 1, 1596470711);
INSERT INTO `ss_log` VALUES (59, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596536472);
INSERT INTO `ss_log` VALUES (60, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596544398);
INSERT INTO `ss_log` VALUES (61, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596600936);
INSERT INTO `ss_log` VALUES (62, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596892914);
INSERT INTO `ss_log` VALUES (63, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596942326);
INSERT INTO `ss_log` VALUES (64, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1596944923);
INSERT INTO `ss_log` VALUES (65, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596945478);
INSERT INTO `ss_log` VALUES (66, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596945691);
INSERT INTO `ss_log` VALUES (67, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596945829);
INSERT INTO `ss_log` VALUES (68, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596945998);
INSERT INTO `ss_log` VALUES (69, 1, 'shop', 'store', '/admin/shop', '添加门店', '127.0.0.1', 1, 1596950632);
INSERT INTO `ss_log` VALUES (70, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1596959495);
INSERT INTO `ss_log` VALUES (71, 1, 'label', 'update', '/admin/label/1', '编辑标签', '127.0.0.1', 1, 1596959591);
INSERT INTO `ss_log` VALUES (72, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596959602);
INSERT INTO `ss_log` VALUES (73, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596959616);
INSERT INTO `ss_log` VALUES (74, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596959626);
INSERT INTO `ss_log` VALUES (75, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596962940);
INSERT INTO `ss_log` VALUES (76, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596963083);
INSERT INTO `ss_log` VALUES (77, 1, 'label', 'store', '/admin/label', '添加标签', '127.0.0.1', 1, 1596963092);
INSERT INTO `ss_log` VALUES (78, 1, 'recruit', 'store', '/admin/recruit', '添加招聘信息', '127.0.0.1', 1, 1596979228);
INSERT INTO `ss_log` VALUES (79, 1, 'recruit', 'update', '/admin/recruit/1', '编辑招聘信息', '127.0.0.1', 1, 1596981671);
INSERT INTO `ss_log` VALUES (80, 1, 'recruit', 'update', '/admin/recruit/1', '编辑招聘信息', '127.0.0.1', 1, 1596982191);
INSERT INTO `ss_log` VALUES (81, 1, 'recruit', 'update', '/admin/recruit/1', '编辑招聘信息', '127.0.0.1', 1, 1596982220);
INSERT INTO `ss_log` VALUES (82, 1, 'banner', 'store', '/admin/banner', '添加幻灯片', '127.0.0.1', 1, 1596991748);
INSERT INTO `ss_log` VALUES (83, 1, 'banner', 'update', '/admin/banner/3', '编辑幻灯片', '127.0.0.1', 1, 1596991765);
INSERT INTO `ss_log` VALUES (84, 1, 'banner', 'update', '/admin/banner/2', '编辑幻灯片', '127.0.0.1', 1, 1596991780);
INSERT INTO `ss_log` VALUES (85, 1, 'banner', 'update', '/admin/banner/1', '编辑幻灯片', '127.0.0.1', 1, 1596991793);
INSERT INTO `ss_log` VALUES (86, 1, 'banner', 'update', '/admin/banner/1', '编辑幻灯片', '127.0.0.1', 1, 1596994725);
INSERT INTO `ss_log` VALUES (87, 1, 'banner', 'update', '/admin/banner/1', '编辑幻灯片', '127.0.0.1', 1, 1596994921);
INSERT INTO `ss_log` VALUES (88, 1, 'banner', 'update', '/admin/banner/2', '编辑幻灯片', '127.0.0.1', 1, 1596994938);
INSERT INTO `ss_log` VALUES (89, 1, 'banner', 'update', '/admin/banner/3', '编辑幻灯片', '127.0.0.1', 1, 1596994949);
INSERT INTO `ss_log` VALUES (90, 1, 'banner', 'update', '/admin/banner/4', '编辑幻灯片', '127.0.0.1', 1, 1596994959);
INSERT INTO `ss_log` VALUES (91, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597030252);
INSERT INTO `ss_log` VALUES (92, 1, 'category', 'store', '/admin/category', '新增分类', '127.0.0.1', 1, 1597030279);
INSERT INTO `ss_log` VALUES (93, 1, 'category', 'store', '/admin/category', '新增分类', '127.0.0.1', 1, 1597030292);
INSERT INTO `ss_log` VALUES (94, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597039452);
INSERT INTO `ss_log` VALUES (95, 1, 'news', 'update', '/admin/news/1', '编辑新闻', '127.0.0.1', 1, 1597039804);
INSERT INTO `ss_log` VALUES (96, 1, 'news', 'update', '/admin/news/1', '编辑新闻', '127.0.0.1', 1, 1597040885);
INSERT INTO `ss_log` VALUES (97, 1, 'news', 'store', '/admin/news', '添加新闻', '127.0.0.1', 1, 1597041020);
INSERT INTO `ss_log` VALUES (98, 1, 'news', 'store', '/admin/news', '添加新闻', '127.0.0.1', 1, 1597041122);
INSERT INTO `ss_log` VALUES (99, 1, 'news', 'store', '/admin/news', '添加新闻', '127.0.0.1', 1, 1597041204);
INSERT INTO `ss_log` VALUES (100, 1, 'news', 'store', '/admin/news', '添加新闻', '127.0.0.1', 1, 1597041310);
INSERT INTO `ss_log` VALUES (101, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597079469);
INSERT INTO `ss_log` VALUES (102, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597162181);
INSERT INTO `ss_log` VALUES (103, 1, 'recruit', 'store', '/admin/recruit', '添加招聘信息', '127.0.0.1', 1, 1597162745);
INSERT INTO `ss_log` VALUES (104, 1, 'recruit', 'store', '/admin/recruit', '添加招聘信息', '127.0.0.1', 1, 1597162957);
INSERT INTO `ss_log` VALUES (105, 1, 'factory', 'store', '/admin/factory', '添加工厂', '127.0.0.1', 1, 1597162988);
INSERT INTO `ss_log` VALUES (106, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597163984);
INSERT INTO `ss_log` VALUES (107, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597164053);
INSERT INTO `ss_log` VALUES (108, 1, 'factory', 'store', '/admin/factory', '添加工厂', '127.0.0.1', 1, 1597164184);
INSERT INTO `ss_log` VALUES (109, 1, 'factory', 'store', '/admin/factory', '添加工厂', '127.0.0.1', 1, 1597164361);
INSERT INTO `ss_log` VALUES (110, 1, 'factory', 'store', '/admin/factory', '添加工厂', '127.0.0.1', 1, 1597164562);
INSERT INTO `ss_log` VALUES (111, 1, 'factory', 'store', '/admin/factory', '添加工厂', '127.0.0.1', 1, 1597164746);
INSERT INTO `ss_log` VALUES (112, 1, 'recruit', 'update', '/admin/recruit/1', '编辑招聘信息', '127.0.0.1', 1, 1597167375);
INSERT INTO `ss_log` VALUES (113, 1, 'recruit', 'update', '/admin/recruit/1', '编辑招聘信息', '127.0.0.1', 1, 1597167389);
INSERT INTO `ss_log` VALUES (114, 1, 'recruit', 'update', '/admin/recruit/2', '编辑招聘信息', '127.0.0.1', 1, 1597167804);
INSERT INTO `ss_log` VALUES (115, 1, 'recruit', 'update', '/admin/recruit/3', '编辑招聘信息', '127.0.0.1', 1, 1597167818);
INSERT INTO `ss_log` VALUES (116, 1, 'recruit', 'update', '/admin/recruit/4', '编辑招聘信息', '127.0.0.1', 1, 1597167837);
INSERT INTO `ss_log` VALUES (117, 1, 'recruit', 'update', '/admin/recruit/5', '编辑招聘信息', '127.0.0.1', 1, 1597167851);
INSERT INTO `ss_log` VALUES (118, 1, 'recruit', 'update', '/admin/recruit/6', '编辑招聘信息', '127.0.0.1', 1, 1597167925);
INSERT INTO `ss_log` VALUES (119, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597168404);
INSERT INTO `ss_log` VALUES (120, 1, 'factory', 'update', '/admin/factory/2', '编辑工厂', '127.0.0.1', 1, 1597168428);
INSERT INTO `ss_log` VALUES (121, 1, 'factory', 'update', '/admin/factory/3', '编辑工厂', '127.0.0.1', 1, 1597168519);
INSERT INTO `ss_log` VALUES (122, 1, 'factory', 'update', '/admin/factory/4', '编辑工厂', '127.0.0.1', 1, 1597168543);
INSERT INTO `ss_log` VALUES (123, 1, 'factory', 'update', '/admin/factory/5', '编辑工厂', '127.0.0.1', 1, 1597168573);
INSERT INTO `ss_log` VALUES (124, 1, 'factory', 'update', '/admin/factory/6', '编辑工厂', '127.0.0.1', 1, 1597168591);
INSERT INTO `ss_log` VALUES (125, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597338158);
INSERT INTO `ss_log` VALUES (126, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597387061);
INSERT INTO `ss_log` VALUES (127, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597432068);
INSERT INTO `ss_log` VALUES (128, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597433879);
INSERT INTO `ss_log` VALUES (129, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597435532);
INSERT INTO `ss_log` VALUES (130, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597736698);
INSERT INTO `ss_log` VALUES (131, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597802888);
INSERT INTO `ss_log` VALUES (132, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597805577);
INSERT INTO `ss_log` VALUES (133, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597805641);
INSERT INTO `ss_log` VALUES (134, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597805683);
INSERT INTO `ss_log` VALUES (135, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597891804);
INSERT INTO `ss_log` VALUES (136, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597892008);
INSERT INTO `ss_log` VALUES (137, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597893786);
INSERT INTO `ss_log` VALUES (138, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597893984);
INSERT INTO `ss_log` VALUES (139, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597894069);
INSERT INTO `ss_log` VALUES (140, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597894092);
INSERT INTO `ss_log` VALUES (141, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597894670);
INSERT INTO `ss_log` VALUES (142, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597894839);
INSERT INTO `ss_log` VALUES (143, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597894923);
INSERT INTO `ss_log` VALUES (144, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597895047);
INSERT INTO `ss_log` VALUES (145, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597895073);
INSERT INTO `ss_log` VALUES (146, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597895595);
INSERT INTO `ss_log` VALUES (147, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597895623);
INSERT INTO `ss_log` VALUES (148, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597896374);
INSERT INTO `ss_log` VALUES (149, 1, 'factory', 'update', '/admin/factory/1', '编辑工厂', '127.0.0.1', 1, 1597896396);
INSERT INTO `ss_log` VALUES (150, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1597917963);
INSERT INTO `ss_log` VALUES (151, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598497368);
INSERT INTO `ss_log` VALUES (152, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598586944);
INSERT INTO `ss_log` VALUES (153, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598587021);
INSERT INTO `ss_log` VALUES (154, 1, 'shop', 'update', '/admin/shop/1', '编辑门店', '127.0.0.1', 1, 1598587039);
INSERT INTO `ss_log` VALUES (155, 1, 'shop', 'update', '/admin/shop/2', '编辑门店', '127.0.0.1', 1, 1598587054);
INSERT INTO `ss_log` VALUES (156, 1, 'shop', 'update', '/admin/shop/3', '编辑门店', '127.0.0.1', 1, 1598587068);
INSERT INTO `ss_log` VALUES (157, 1, 'shop', 'update', '/admin/shop/4', '编辑门店', '127.0.0.1', 1, 1598587088);
INSERT INTO `ss_log` VALUES (158, 1, 'shop', 'update', '/admin/shop/5', '编辑门店', '127.0.0.1', 1, 1598587103);
INSERT INTO `ss_log` VALUES (159, 1, 'shop', 'update', '/admin/shop/6', '编辑门店', '127.0.0.1', 1, 1598587118);
INSERT INTO `ss_log` VALUES (160, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598601259);
INSERT INTO `ss_log` VALUES (161, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598766178);
INSERT INTO `ss_log` VALUES (162, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1598805461);
INSERT INTO `ss_log` VALUES (163, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1600930316);
INSERT INTO `ss_log` VALUES (164, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1603089093);
INSERT INTO `ss_log` VALUES (165, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1603548908);
INSERT INTO `ss_log` VALUES (166, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1603549547);
INSERT INTO `ss_log` VALUES (167, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605525690);
INSERT INTO `ss_log` VALUES (168, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605531992);
INSERT INTO `ss_log` VALUES (169, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605532049);
INSERT INTO `ss_log` VALUES (170, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605534725);
INSERT INTO `ss_log` VALUES (171, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605537225);
INSERT INTO `ss_log` VALUES (172, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605537243);
INSERT INTO `ss_log` VALUES (173, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605539596);
INSERT INTO `ss_log` VALUES (174, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605540078);
INSERT INTO `ss_log` VALUES (175, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605540377);
INSERT INTO `ss_log` VALUES (176, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605540572);
INSERT INTO `ss_log` VALUES (177, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605540764);
INSERT INTO `ss_log` VALUES (178, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605540997);
INSERT INTO `ss_log` VALUES (179, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605541072);
INSERT INTO `ss_log` VALUES (180, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605542701);
INSERT INTO `ss_log` VALUES (181, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605542741);
INSERT INTO `ss_log` VALUES (182, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605544091);
INSERT INTO `ss_log` VALUES (183, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605544976);
INSERT INTO `ss_log` VALUES (184, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545181);
INSERT INTO `ss_log` VALUES (185, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545341);
INSERT INTO `ss_log` VALUES (186, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545365);
INSERT INTO `ss_log` VALUES (187, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545574);
INSERT INTO `ss_log` VALUES (188, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545717);
INSERT INTO `ss_log` VALUES (189, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1605545852);
INSERT INTO `ss_log` VALUES (190, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1606504623);
INSERT INTO `ss_log` VALUES (191, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1608277783);
INSERT INTO `ss_log` VALUES (192, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1608950970);
INSERT INTO `ss_log` VALUES (193, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1614157883);
INSERT INTO `ss_log` VALUES (194, 1, 'login', 'login', '/admin/login', '登录后台', '127.0.0.1', 1, 1614225342);
COMMIT;

-- ----------------------------
-- Table structure for ss_manager
-- ----------------------------
DROP TABLE IF EXISTS `ss_manager`;
CREATE TABLE `ss_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `remember_token` varchar(100) NOT NULL DEFAULT '' COMMENT 'session令牌',
  `gmt_last_login` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '父级管理员id',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '路径',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `module` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管理员类型',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统用户',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';

-- ----------------------------
-- Records of ss_manager
-- ----------------------------
BEGIN;
INSERT INTO `ss_manager` VALUES (1, 'admin', '$2y$10$K9ZqSDPveI6zuQjOgJj3OeWibeAevedhv5E6vOSLCo2qizF1GAUw.', '', '2021-02-25 11:55:42', '127.0.0.1', 1, '0,1,1,', 1, 0, 1, '2020-02-19 09:55:12', '2021-02-25 11:55:42', NULL);
INSERT INTO `ss_manager` VALUES (2, 'test11', '$2y$10$Ujyg8YXL9SGVaqNFf9slbOwNhaWBO3hqvpMEpLozqM8u6E7vP9hZK', 'PtmQwtKVTFPenmidu7NxC7DF1NzOn5DojN2vxkfzIL9WBw6nSfavItdQZOCQ', '2020-02-13 09:46:46', '127.0.0.1', 1, '0,1,1,2,', 1, 0, 0, '2020-02-19 09:55:12', '2020-02-19 09:54:43', NULL);
INSERT INTO `ss_manager` VALUES (3, 'ssss', '$2y$10$w4kWVn6/JZrnziMkV0/bJ.KoAfAIrN9vAXtOFO5ZQh9mjfQoK.jhm', '', NULL, '', 1, '0,1,1,3,', 1, 0, 0, '2020-02-19 09:55:12', '2020-02-19 09:55:12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ss_menu
-- ----------------------------
DROP TABLE IF EXISTS `ss_menu`;
CREATE TABLE `ss_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '菜单地址',
  `grade` tinyint(4) NOT NULL DEFAULT '0' COMMENT '菜单等级',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '菜单状态',
  `icon` varchar(30) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `module` tinyint(4) NOT NULL DEFAULT '0' COMMENT '所属模块',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';

-- ----------------------------
-- Records of ss_menu
-- ----------------------------
BEGIN;
INSERT INTO `ss_menu` VALUES (1, '系统配置', 'system', 0, '0,1,1', '/system', 1, 1, 1, 'fa fa-cog', 1, 0);
INSERT INTO `ss_menu` VALUES (2, '管理员管理', 'manager', 1, '0,1,2', '/manager', 2, 2, 1, 'fa fa-user-plus', 1, 0);
INSERT INTO `ss_menu` VALUES (3, '角色管理', 'role', 1, '0,1,3', '/role', 2, 3, 1, 'fa fa-group', 1, 0);
INSERT INTO `ss_menu` VALUES (4, '权限管理', 'permission', 1, '0,1,4', '/permission', 2, 4, 1, 'fa fa-wrench', 1, 1);
INSERT INTO `ss_menu` VALUES (5, '菜单管理', 'menu', 1, '0,1,5', '/menu', 2, 5, 1, 'fa fa-server', 1, 1);
INSERT INTO `ss_menu` VALUES (6, '网站配置', 'config', 1, '0,1,1,15', '/config', 2, 5, 1, 'fa fa-arrows', 1, 0);
INSERT INTO `ss_menu` VALUES (9, '分类管理', 'category', 12, '0,12,9', '/category', 2, 9, 1, 'fa fa-bars', 1, 0);
INSERT INTO `ss_menu` VALUES (10, '反馈管理', 'feedback', 12, '0,12,10', '/feedback', 2, 10, 1, 'fa fa-exchange', 1, 0);
INSERT INTO `ss_menu` VALUES (11, '日志列表', 'log', 12, '0,12,11', '/log', 2, 11, 1, 'fa fa-calendar', 1, 0);
INSERT INTO `ss_menu` VALUES (12, '基础配置', 'basics', 0, '0,12', '/basics', 1, 2, 1, 'fa fa-gears', 1, 0);
INSERT INTO `ss_menu` VALUES (13, '幻灯片列表', 'banner', 12, '0,12,13', '/banner', 2, 1, 1, 'fa fa-file-image-o', 1, 0);
INSERT INTO `ss_menu` VALUES (14, '标签列表', 'label', 12, '0,12,14', '/label', 2, 2, 1, 'fa fa-file-text', 1, 0);
INSERT INTO `ss_menu` VALUES (15, '职位列表', 'position', 12, '0,12,15', '/position', 2, 3, 1, 'fa fa-anchor', 1, 0);
INSERT INTO `ss_menu` VALUES (16, '招工信息', 'recruitment', 0, '0,16', '/recruitment', 1, 3, 1, 'fa fa-black-tie', 1, 0);
INSERT INTO `ss_menu` VALUES (17, '招工信息列表', 'recruit', 16, '0,16,17', '/recruit', 2, 1, 1, 'fa fa-file-text-o', 1, 0);
INSERT INTO `ss_menu` VALUES (18, '门店管理', 'store', 0, '0,18', '/store', 1, 4, 1, 'fa fa-institution', 1, 0);
INSERT INTO `ss_menu` VALUES (19, '门店列表', 'shop', 18, '0,18,19', '/shop', 2, 1, 1, 'fa fa-align-left', 1, 0);
INSERT INTO `ss_menu` VALUES (20, '新闻管理', 'xinwen', 0, '0,20', '/xinwen', 1, 5, 1, 'fa fa-hacker-news', 1, 0);
INSERT INTO `ss_menu` VALUES (21, '新闻列表', 'news', 20, '0,20,21', '/news', 1, 1, 1, 'fa fa-newspaper-o', 1, 0);
INSERT INTO `ss_menu` VALUES (22, '用户管理', 'user', 0, '0,22', '/user', 1, 6, 1, 'fa fa-user', 1, 0);
INSERT INTO `ss_menu` VALUES (23, '用户列表', 'users', 22, '0,22,23', '/users', 2, 1, 1, 'fa fa-group', 1, 0);
INSERT INTO `ss_menu` VALUES (24, '工厂管理', 'gongchang', 0, '0,24', '/gongchang', 1, 7, 1, 'fa fa-university', 1, 0);
INSERT INTO `ss_menu` VALUES (25, '工厂列表', 'factory', 24, '0,24,25', '/factory', 2, 1, 1, 'fa fa-th-list', 1, 0);
INSERT INTO `ss_menu` VALUES (26, '加盟管理', 'jiameng', 0, '0,26', '/jiameng', 1, 8, 1, 'fa fa-university', 1, 0);
INSERT INTO `ss_menu` VALUES (27, '加盟列表', 'join', 26, '0,26,27', '/join', 2, 1, 1, 'fa fa-th-list', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for ss_news
-- ----------------------------
DROP TABLE IF EXISTS `ss_news`;
CREATE TABLE `ss_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '新闻分类',
  `desc` varchar(500) NOT NULL DEFAULT '' COMMENT '新闻简介',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '新闻封面',
  `content` text NOT NULL COMMENT '新闻内容',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `author` int(11) NOT NULL DEFAULT '0' COMMENT '发布作者',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COMMENT='新闻资讯';

-- ----------------------------
-- Records of ss_news
-- ----------------------------
BEGIN;
INSERT INTO `ss_news` VALUES (1, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 7, 1, 0, 1, 1596470524, 1614234405);
INSERT INTO `ss_news` VALUES (2, '小时工补差价是谁来给给钱？', 1, '进电子厂打工，经常选择小时工模式，但是小时工也是有分类的，一种是普通的小时工，一种是高价小时工，普通的小时工挣不了多少钱，跟厂里普工的工资差不多，所以更多人选择高价小时工模式，知道高价小时工，但是不知道高价小时工的工资是谁发的？', '/upload/admin/image/2020-08-10/202008101429494133.jpg', '<p>进电子厂打工，经常选择小时工模式，但是小时工也是有分类的，一种是普通的小时工，一种是高价小时工，普通的小时工挣不了多少钱，跟厂里普工的工资差不多，所以更多人选择高价小时工模式，知道高价小时工，但是不知道高价小时工的工资是谁发的？</p><p></p><p>小时工的工资是谁发的？</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041017792219.jpg\" title=\"1597041017792219.jpg\" alt=\"9364fcd04c4319177c37f3e20e74dad0.jpg\"/></p><p>普通小时工的工资是由厂里直接发的，高价小时工的工资是分两部到账的，同工同酬的工资是厂里在发薪日的时候发，这个时候薪水跟中介承诺的不一样，然后中介会将剩下的差价补到工人手里。</p><p>为什么是中介给补钱？</p><p>有工友问为什么中介会给补差价？原因是厂里给的工资根本就没有那么高，中介公司为了招人，将自己的薪酬分给工友，用高价小时工吸引人，这只是一种营销的手段，在此小编提醒大家，千万不要相信工价过高的小时工，也许只是一个噱头。</p><p>中介一般都是什么时候给补钱？</p><p>补差价的时间一般都是中介自己规定的，由于合作工厂过多，需要合理安排补薪时间，一般都是工厂先发工资，然后跟中介对接，根据名单给工友补差价，一般都相差3-10天不等，例如成都某工厂发薪日是7号，补差价的时间时20日；也有个别工厂5号发工资，然后12号补差价，有时候也会出现例外，好比遇上假期，很多工厂推迟发薪了，也影响了补款日期，有的补款日期改到了20号，下个月就恢复正常了。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041020, 1597041020);
INSERT INTO `ss_news` VALUES (3, '无锡捷普月工资轻松6500？', 1, '进电子厂打工的岗位有很多，分到哪个岗位全靠运气，对于年轻一点的人来说，可能还能折腾，稍微干过几年的工友都希望岗位工作轻松一点。那么位于江苏的无锡捷普工作怎么样呢？', '/upload/admin/image/2020-08-10/202008101431025592.jpg', '<p>进电子厂打工的岗位有很多，分到哪个岗位全靠运气，对于年轻一点的人来说，可能还能折腾，稍微干过几年的工友都希望岗位工作轻松一点。那么位于江苏的无锡捷普工作怎么样呢？小编就来给大家介绍下。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041110885800.png\" title=\"1597041110885800.png\" alt=\"20dd9b4a78c03207bfa1146a29445155.png\"/></p><p></p><p>一、无锡捷普电子厂是干什么的？</p><p>无锡捷普位于无锡市出口加工区，是一家提供电子产品解决方案的公司，专门为电子公司和高科技公司提供全面的设计、制造和产品管理服务，目前招工在做的就是手机电脑配件的生产。其下的两个工厂绿点、绿镁与绿兴，绿点是塑胶厂、主要做组装和塑胶件，绿镁主要做CNC加工，绿兴主要做冲压件及表面处理，都是苹果的相关产品。</p><p>二、无锡捷普电子厂工作情况？</p><p>捷普上班时间分为早七晚七、早八晚八、早九晚九三个阶段，每天工作10小时，中间会吃两顿饭，也就是两个小时的休息时间，很标准的工作时间，不会拖长工作时间，每天按时下班。厂里每一个月轮班一次，一个月夜班一个月白班，工资是10号发，底薪+加班费+全勤，上夜班会有夜班津贴。目前工价是25元/小时，月综合收入在5500-6500元。</p><p>三、无锡捷普电子厂的吃住待遇？</p><p>捷普是包工作餐的，伙食和绿点的差不多，菜品上没有绿点的丰富，不过也是非常不错了。住宿免费，管理费一人一天一元。工作的厂区和住宿是分开的，有厂车，十分钟左右，非常的便捷，而且非常人性化的一点是坐厂车迟到了不扣钱，厂里很多人都是在外边租房子，也不用担心没有车坐，只要是厂里的就可以凭厂牌上车，不用交钱也不会扣钱，非常方便。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041119481276.png\" title=\"1597041119481276.png\" alt=\"e213e5d1956a456f08fa38d732fc5fb5.png\"/></p><p></p><p>&nbsp;招聘要求：</p><p>1、四大民族不接收；</p><p>&nbsp;2、大面积纹身、烟疤不接收；</p><p>&nbsp;3、金属牙、体内有金属不接收；&nbsp;</p><p>4、色盲色弱均不接收；</p><p>5、认字，会写字，熟悉26个英文字母；</p><p>6、正常离职35天、自离需满3个月可以进厂；</p><p>7、工厂统一办理中国银行卡；</p><p>8、临时、消磁、临近过期身份证不接收；</p><p>9、面试需要提供行动轨迹和锡康码；</p><p>10、18-23岁需要提供非学生证明，手机APP非寒暑假连续六个月的工资流水，其他无效。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 1, 1, 0, 1, 1597041122, 1614222566);
INSERT INTO `ss_news` VALUES (4, '老员工告诉你电子厂哪个部门最轻松？', 1, '想必大家对电子厂都不陌生，有很多朋友是进了一次又一次，但是对与电子厂的印象更多的是严格，随着工业的发展，电子厂的整体规划也愈加完善。', '/upload/admin/image/2020-08-10/202008101432515783.jpg', '<p>想必大家对电子厂都不陌生，有很多朋友是进了一次又一次，但是对与电子厂的印象更多的是严格，随着工业的发展，电子厂的整体规划也愈加完善，为了更好的效益，需要各个部门之间的配合，以及员工的辛劳付出，每个部门都在起着自己独有的作用，下面小编就给大家介绍一下电子厂的各个部门，让工友们知道电子厂都有什么部门，看哪个部门的工作相对轻松一点？</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041201258843.png\" title=\"1597041201258843.png\" alt=\"849a967485507ffb22a0a5820682a622.png\"/></p><p></p><p>电子厂主要有哪些部门？</p><p>电子厂的各个部门差不多都是一样的，有行政部，业务部，研发部，采购部，PMC部，货仓部，工程部，品管部，SMT部，生产部，报关部，IT部等等，一般厂里招聘的都是普工能够进入的部门有PMC部，货仓部，品管部，SMT部，生产部，像采购部和行政部都是厂里小范围招聘的，研发部都是人才，一般人进不去。</p><p>哪个部门工作比较轻松？</p><p>知道了都有哪些部门，根据部门的名称也就知道该部门是做什么的了，比如生产部是生产产品的，轻松指数1颗星，因为生产部门会用到很多铁块模型，搬来搬去很累的。</p><p>然后是货仓部门，很多人觉得当个仓库管理员非常的轻松，但是殊不知仓库管理员也是需要搬货卸货的，纯属体力活，轻松指数2颗星。</p><p>接着是组装部，这个部门工作轻松，但是任务量大，产量都是三四千起步，乍一进去可能适应不了，需要工友适应几天，跟上节奏之后会好很多，在这方面老员工比较占优势，手脚麻利，干活熟练，做完之后可以休息一会儿，轻松指数3颗星。</p><p>最后是品管部门，工作任务主要就是检查产品是否合格，这个任务很轻松，相应的承担的责任也比较大，如果品保发生疏漏，一条生产线上的人都消停不了，但是一般情况下，还是品保的工作最轻松，轻松指数4颗星。</p><p>以上是从整体来说的，每个部门里还有很多岗位，也有仓管部门中的某一个岗位比品管部门的轻松的情况，如果是你，想要进哪个部门工作呢？</p><p></p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041204, 1597041204);
INSERT INTO `ss_news` VALUES (5, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (6, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (7, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (8, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (9, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (10, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (11, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (12, '常州瑞声招工，轻松月入5000。', 1, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (13, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (14, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 7, 1, 0, 1, 1596470524, 1614235511);
INSERT INTO `ss_news` VALUES (15, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (16, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (17, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (18, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (19, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (20, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (21, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (22, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (23, '农村结婚现在这么难，在电子厂打工还能找到对象吗？', 3, '现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?', '/upload/admin/image/2020-08-10/202008101406143267.jpg', '<p>现在农村结婚难已经成了一个国家级难题，男孩子比女孩子多出了太多的人。农村结婚时女孩子要的彩礼越来越高，小轿车、城市的楼房更是一样都不能少，高昂的彩礼就能难住一大波人了，车、房就更难了。但是农村光棍那么多，真的是因为彩礼太贵，家里承受不起才变成光棍的吗?</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597040870628456.png\" title=\"1597040870628456.png\" alt=\"59c892a34753b5aa6da2ec3c6441d17d.png\"/></p><p>现在的女孩子实在是娶不起，父母辛辛苦苦攒了几十年的钱就在儿子结婚的这几天花光了，甚至还要借很多的外债。钱这些还是可以想想办法去解决克服的，但是现在的女孩子结婚除了看之外，还要看人的脸，男人要长的又高，又帅，又哄女孩子开心，一些农村的男孩子，本来就比较腼腆、偏于内向，更严重呢，看到女孩子都会脸红。所以那些长相不是很好，家庭又不是很出众的男孩子就很难在农村找到女朋友。</p><p>现在回到家中经常看到的都是男孩子成群结队的出没在大街上，却很少见一堆一堆的女孩子。大家也都知道城市的工厂里有很多的女孩子，因此农村里面很多的男孩子选择外出寻找一个外地的媳妇，因为大家都认为外面的女孩子比较容易寻找，也没有那么多的彩礼要求。但是外面工厂里女孩子虽然比较多，却并没有那么容易就变成自己的女朋友。在工厂里面你会发现那些女孩子她们大多都是有自己男朋友的，门口进进出出的也都是一对一对的，根本就轮不到你来下手。</p><p>而且现在很多女孩子都会选择读书，在大城市里上大学、读研究生，追求更高的知识层次，自然等他们回到家乡也不太愿意嫁给那些比自己水平低很多的男的。甚至有一些农村出去的女孩子在毕业之后就直接在当地找了工作、嫁了人，根本不会回家找工作。</p><p>通过工立方直聘网进厂打工的各位，你在厂区找到女朋友了吗？你的对象是在哪找的？对还没有脱单的小哥哥/小姐姐有没有什么建议？都来聊一聊吧！</p><p>“高价小时工，就上工立方”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1596470524, 1597040885);
INSERT INTO `ss_news` VALUES (24, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (25, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (26, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (27, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (28, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (29, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (30, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (31, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (32, '常州瑞声招工，轻松月入5000。', 2, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (33, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (34, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (35, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (36, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (37, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
INSERT INTO `ss_news` VALUES (38, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 1, 1, 0, 1, 1597041310, 1598518194);
INSERT INTO `ss_news` VALUES (39, '常州瑞声招工，轻松月入5000。', 4, '常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。', '/upload/admin/image/2020-08-10/202008101434105216.jpg', '<p>常州瑞声是瑞声科技有限公司，工人的平均工资可以达到4500以上，综合4000-5000左右。经营范围包括软件开发、集成电路设计技术、集成电路封装技术、电子和信息技术、微型声学器件、光学器件、新型电子元器件的研发、技术转让、技术支持等等，在众多电子厂中算是比较有名气的，目前厂里主要做的是手机配件和震动马达。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041291941212.png\" title=\"1597041291941212.png\" alt=\"f8b1383642e5e935741d778f83ee3529.png\"/></p><p></p><p>首先介绍一下厂里的住宿情况，住宿是八人间，上下铺，跟现在很多学校里的床一样，床还是比较结实的，还有可以挂衣服和蚊帐的地方，每个宿舍都有一张桌子，以及附带了几张凳子，整个住宿环境看起来很不错，干净又整洁，宿舍区有浴室、洗衣房、开水房、免费供应冷热水，住宿是免费的，环境好还免费，像这样待遇好的厂不多了。虽然场外住宿，但是有厂车也是非常方便。</p><p>然后是伙食，都说厂里的饭菜不好吃，那都是以前了，现在厂里的伙食也是讲究荤素搭配，营养均衡的，但是大锅菜共的有一个特点就是油水少，想吃肉，可以给自己加个鸡腿，吃饭也不贵，花销很少。生活方面也无需担心，为了员工方便，厂里有大型超市、取款机，还有ktv、图书馆、电影院、篮球场等娱乐设施，尽可能的丰富员工的生活，减少一些枯燥。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200810/1597041307305395.jpg\" title=\"1597041307305395.jpg\" alt=\"16d2ecf87c1f3aa51b08349d5c8b2ac4.jpg\"/></p><p></p><p>招聘须知：</p><p>男：18-38岁女：18-40岁。</p><p>1、认字会写字；</p><p>2、四大民族不接收，其他少数民族提前确认；</p><p>3、纹身、烟疤需提前确认；</p><p>4、轻微色盲、色弱可以接收；</p><p>5、金属牙、体内有金属不接收；</p><p>6、离职满3个月可再进厂；</p><p>7、自带中国银行卡、农业银行卡或者交通银行卡；</p><p>8、湖北、黑龙江、吉林、辽宁、北京户籍暂已招满，员工面试需要提供短信轨迹常州码绿码（需要提前一天注册）或苏康码绿码，短信轨迹经过新疆的不接收。</p><p>“企业直聘，工资更高”！工立方直聘网在全国铺设800余家门店，是家门口的普工招聘、小时工招聘服务站，靠谱又放心。各大合作工厂都有驻厂老师免费接送，全程在厂服务，让您没有后顾之忧。</p><p><br/></p>', 0, 1, 0, 1, 0, 1, 1597041310, 1597041310);
COMMIT;

-- ----------------------------
-- Table structure for ss_permission
-- ----------------------------
DROP TABLE IF EXISTS `ss_permission`;
CREATE TABLE `ss_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `menu_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属菜单id',
  `module` tinyint(4) NOT NULL DEFAULT '0' COMMENT '所属模块',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wx_permissions_code_unique` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';

-- ----------------------------
-- Records of ss_permission
-- ----------------------------
BEGIN;
INSERT INTO `ss_permission` VALUES (1, '菜单列表', 'menu.index', '', 5, 1, 1);
INSERT INTO `ss_permission` VALUES (2, '菜单添加', 'menu.create,menu.store', '', 5, 1, 1);
INSERT INTO `ss_permission` VALUES (3, '菜单修改', 'menu.edit,menu.update', '', 5, 1, 1);
INSERT INTO `ss_permission` VALUES (4, '菜单查看', 'menu.show', '', 5, 1, 1);
INSERT INTO `ss_permission` VALUES (5, '菜单删除', 'menu.destroy', '', 5, 1, 1);
INSERT INTO `ss_permission` VALUES (6, '管理员列表', 'manager.index', '', 2, 1, 0);
INSERT INTO `ss_permission` VALUES (7, '管理员添加', 'manager.create,manager.store', '', 2, 1, 0);
INSERT INTO `ss_permission` VALUES (8, '管理员修改', 'manager.edit,manager.update', '', 2, 1, 0);
INSERT INTO `ss_permission` VALUES (9, '管理员查看', 'manager.show', '', 2, 1, 0);
INSERT INTO `ss_permission` VALUES (10, '管理员删除', 'manager.destroy', '', 2, 1, 0);
INSERT INTO `ss_permission` VALUES (11, '权限列表', 'permission.index', '', 4, 1, 1);
INSERT INTO `ss_permission` VALUES (12, '权限添加', 'permission.create,permission.store', '', 4, 1, 1);
INSERT INTO `ss_permission` VALUES (13, '权限修改', 'permission.edit,permission.update', '', 4, 1, 1);
INSERT INTO `ss_permission` VALUES (14, '权限查看', 'permission.show', '', 4, 1, 1);
INSERT INTO `ss_permission` VALUES (15, '权限删除', 'permission.destroy', '', 4, 1, 1);
INSERT INTO `ss_permission` VALUES (16, '角色列表', 'role.index', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (17, '角色添加', 'role.create,role.store', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (18, '角色修改', 'role.edit,role.update', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (19, '角色查看', 'role.show', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (20, '角色删除', 'role.destroy', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (21, '角色授权', 'role.authority', '', 3, 1, 0);
INSERT INTO `ss_permission` VALUES (22, '网站配置', 'config.index', '', 6, 1, 0);
INSERT INTO `ss_permission` VALUES (23, '网站配置修改', 'config.update', '', 6, 1, 0);
INSERT INTO `ss_permission` VALUES (26, '分类列表', 'category.index', ' ', 9, 1, 0);
INSERT INTO `ss_permission` VALUES (27, '分类新增', 'category.create,category.store', ' ', 9, 1, 0);
INSERT INTO `ss_permission` VALUES (28, '分类编辑', 'category.edit,category.update', ' ', 9, 1, 0);
INSERT INTO `ss_permission` VALUES (29, '分类删除', 'category.destroy', ' ', 9, 1, 0);
INSERT INTO `ss_permission` VALUES (30, '反馈列表', 'feedback.index', ' ', 10, 1, 0);
INSERT INTO `ss_permission` VALUES (31, '反馈处理', 'feedback.edit,feedback.update', ' ', 10, 1, 0);
INSERT INTO `ss_permission` VALUES (32, '反馈删除', 'feedback.destroy', ' ', 10, 1, 0);
INSERT INTO `ss_permission` VALUES (33, '日志列表', 'log.index', '', 11, 1, 0);
INSERT INTO `ss_permission` VALUES (34, '幻灯片列表', 'banner.index', '', 13, 1, 0);
INSERT INTO `ss_permission` VALUES (35, '添加幻灯片', 'banner.create,banner.store', '', 13, 1, 0);
INSERT INTO `ss_permission` VALUES (36, '编辑幻灯片', 'banner.edit,banner,update', '', 13, 1, 0);
INSERT INTO `ss_permission` VALUES (37, '删除幻灯片', 'banner.destroy', '', 13, 1, 0);
INSERT INTO `ss_permission` VALUES (38, '标签列表', 'label.index', '', 14, 1, 0);
INSERT INTO `ss_permission` VALUES (39, '添加标签', 'label.create,label.store', '', 14, 1, 0);
INSERT INTO `ss_permission` VALUES (40, '编辑标签', 'label.edit,label.update', '', 14, 1, 0);
INSERT INTO `ss_permission` VALUES (41, '删除标签', 'label.destroy', '', 14, 1, 0);
INSERT INTO `ss_permission` VALUES (42, '职位列表', 'position.index', '', 15, 1, 0);
INSERT INTO `ss_permission` VALUES (43, '添加职位', 'position.create,position.store', '', 15, 1, 0);
INSERT INTO `ss_permission` VALUES (44, '编辑职位', 'position.edit,position.update', '', 15, 1, 0);
INSERT INTO `ss_permission` VALUES (45, '删除职位', 'position.destroy', '', 15, 1, 0);
INSERT INTO `ss_permission` VALUES (46, '招工信息列表', 'recruit.index', '', 17, 1, 0);
INSERT INTO `ss_permission` VALUES (47, '添加招工信息', 'recruit.create,recruit.store', '', 17, 1, 0);
INSERT INTO `ss_permission` VALUES (48, '编辑招工信息', 'recruit.edit,recruit.update', '', 17, 1, 0);
INSERT INTO `ss_permission` VALUES (49, '删除招工信息', 'recruit.destroy', '', 17, 1, 0);
INSERT INTO `ss_permission` VALUES (50, '查看招工信息', 'recruit.show', '', 17, 1, 0);
INSERT INTO `ss_permission` VALUES (51, '门店列表', 'shop.index', '', 19, 1, 0);
INSERT INTO `ss_permission` VALUES (52, '添加门店', 'shop.create,shop.store', '', 19, 1, 0);
INSERT INTO `ss_permission` VALUES (53, '编辑门店', 'shop.edit,shop.update', '', 19, 1, 0);
INSERT INTO `ss_permission` VALUES (54, '删除门店', 'shop.destroy', '', 19, 1, 0);
INSERT INTO `ss_permission` VALUES (55, '用户列表', 'users.index', '', 23, 1, 0);
INSERT INTO `ss_permission` VALUES (56, '编辑用户', 'users.edit,users.update', '', 23, 1, 0);
INSERT INTO `ss_permission` VALUES (57, '删除用户', 'users.destroy', '', 23, 1, 0);
INSERT INTO `ss_permission` VALUES (58, '查看用户', 'users.show', '', 23, 1, 0);
INSERT INTO `ss_permission` VALUES (59, '新闻列表', 'news.index', '', 21, 1, 0);
INSERT INTO `ss_permission` VALUES (60, '添加新闻', 'news.create,news.store', '', 21, 1, 0);
INSERT INTO `ss_permission` VALUES (61, '编辑新闻', 'news.edit,news.update', '', 21, 1, 0);
INSERT INTO `ss_permission` VALUES (62, '删除新闻', 'news.destroy', '', 21, 1, 0);
INSERT INTO `ss_permission` VALUES (63, '查看新闻', 'news.show', '', 21, 1, 0);
INSERT INTO `ss_permission` VALUES (64, '工厂列表', 'factory.index', '', 25, 1, 0);
INSERT INTO `ss_permission` VALUES (65, '添加工厂', 'factory.create,factory.store', '', 25, 1, 0);
INSERT INTO `ss_permission` VALUES (66, '编辑工厂', 'factory.edit,factory.update', '', 25, 1, 0);
INSERT INTO `ss_permission` VALUES (67, '删除工厂', 'factory.destroy', '', 25, 1, 0);
INSERT INTO `ss_permission` VALUES (68, '查看工厂', 'factory.show', '', 25, 1, 0);
INSERT INTO `ss_permission` VALUES (69, '加盟列表', 'join.index', '', 27, 1, 0);
INSERT INTO `ss_permission` VALUES (70, '编辑加盟', 'join.edit,join.update', '', 27, 1, 0);
INSERT INTO `ss_permission` VALUES (71, '删除加盟', 'join.destroy', '', 27, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for ss_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `ss_permission_role`;
CREATE TABLE `ss_permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `module` tinyint(4) NOT NULL DEFAULT '0' COMMENT '所属模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限角色表';

-- ----------------------------
-- Records of ss_permission_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ss_position
-- ----------------------------
DROP TABLE IF EXISTS `ss_position`;
CREATE TABLE `ss_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '职位名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '职位类型（1工厂招聘，2本地招聘）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8mb4 COMMENT='职位';

-- ----------------------------
-- Records of ss_position
-- ----------------------------
BEGIN;
INSERT INTO `ss_position` VALUES (10001, '操作工', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10002, '储备干部', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10003, '长期工', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10004, '叉车工', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10005, '普工', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10006, '司机', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10007, '客服', 1, 0, 1, 1596387392, 1596387408);
INSERT INTO `ss_position` VALUES (10008, '销售', 1, 0, 1, 1596387392, 1596387408);
COMMIT;

-- ----------------------------
-- Table structure for ss_question
-- ----------------------------
DROP TABLE IF EXISTS `ss_question`;
CREATE TABLE `ss_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruit_id` int(11) NOT NULL DEFAULT '0' COMMENT '招工信息ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1招工信息问题，2门店问题',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '问题标题',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '问题用户',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示用户名',
  `status` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='招聘信息岗位/店铺问题';

-- ----------------------------
-- Records of ss_question
-- ----------------------------
BEGIN;
INSERT INTO `ss_question` VALUES (1, 0, 1, 2, '测试一下下1111', 3, 1, 1, 0, 1598379462, 1598379462);
COMMIT;

-- ----------------------------
-- Table structure for ss_recruit
-- ----------------------------
DROP TABLE IF EXISTS `ss_recruit`;
CREATE TABLE `ss_recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factory_id` int(11) NOT NULL DEFAULT '0' COMMENT '工厂ID',
  `sign_up` int(11) NOT NULL DEFAULT '0' COMMENT '报名人数',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '招工标题',
  `posts` varchar(50) NOT NULL DEFAULT '' COMMENT '岗位',
  `salary_up` int(11) NOT NULL DEFAULT '0' COMMENT '综合薪资（起步）',
  `salary_down` int(11) NOT NULL DEFAULT '0' COMMENT '综合薪资（最高）',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `edu_ask` varchar(20) NOT NULL DEFAULT '' COMMENT '学历要求',
  `sex_ask` varchar(20) NOT NULL DEFAULT '' COMMENT '性别要求',
  `age_ask` varchar(20) NOT NULL DEFAULT '' COMMENT '年龄要求',
  `base_salary` int(10) NOT NULL DEFAULT '0' COMMENT '基本工资（单位：元/月）',
  `hourly` decimal(10,2) NOT NULL COMMENT '小时工薪',
  `payday` varchar(20) NOT NULL DEFAULT '' COMMENT '发薪日',
  `food_sub` varchar(50) NOT NULL DEFAULT '' COMMENT '餐补',
  `put_up` varchar(255) NOT NULL DEFAULT '' COMMENT '住宿',
  `insure` varchar(120) NOT NULL DEFAULT '' COMMENT '保险',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `other_ask` text NOT NULL COMMENT '其他要求',
  `tasks` varchar(120) NOT NULL DEFAULT '' COMMENT '工作内容',
  `job_desc` varchar(120) NOT NULL DEFAULT '' COMMENT '岗位说明',
  `id_card` varchar(120) NOT NULL DEFAULT '' COMMENT '身份证',
  `interview` varchar(128) NOT NULL DEFAULT '' COMMENT '面试材料',
  `physical` varchar(120) NOT NULL DEFAULT '' COMMENT '体检',
  `interview_date` varchar(120) NOT NULL DEFAULT '' COMMENT '面试时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序(越大越靠前)',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='招工信息';

-- ----------------------------
-- Records of ss_recruit
-- ----------------------------
BEGIN;
INSERT INTO `ss_recruit` VALUES (1, 1, 0, '长沙知名大型电子厂22元/小时', '10001,10003,10005', 4500, 5000, 1000, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 1, 1596979228, 1597167389);
INSERT INTO `ss_recruit` VALUES (2, 2, 0, '昆山联滔23元/小时', '10001,10003,10005', 4500, 5000, 800, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 1, 1596979238, 1597167804);
INSERT INTO `ss_recruit` VALUES (3, 3, 0, '常州东方日升正式工', '10001,10004,10006', 4500, 5000, 700, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 1, 1596979248, 1597167818);
INSERT INTO `ss_recruit` VALUES (4, 4, 0, '松岗欣旺达18元/小时', '10001,10003,10005', 4500, 5000, 1010, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 1, 1596979258, 1597167837);
INSERT INTO `ss_recruit` VALUES (5, 5, 0, '高埗电子厂19元/小时', '10003,10005', 4500, 5000, 2000, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 1, 1596979268, 1597167851);
INSERT INTO `ss_recruit` VALUES (6, 6, 0, '昆山仁宝18元/小时', '10003,10005', 4500, 5000, 2500, '', '男女不限', '16~45岁', 0, 25.00, '每月5号', '包工作餐', '住宿88元/月，水电均摊。', '部分抽扣社保，未抽到需缴商业险60元/月。', '1、合同期六个月，月收入在6500-7500；\r\n2、18-23周岁，9月20号以后统一补差价。', '1、认字、会写字，少数民族不接收；\r\n2、纹身、烟疤不能超过一个硬币的大小，手术疤不能超过4cm；\r\n3、金属牙（大牙处）不超过2颗可以接收，体内有金属不接收；\r\n4、色盲不接收，轻微色弱可以接收；\r\n5、离职满1个月并提前发身份证审核，审核通过后可以进；\r\n6、工厂统一办理中国银行卡和工商银行卡；\r\n7、广东省、湖北省、辽宁省沈阳市、大连市、山东省青岛市、吉林省吉林市、北京市、四川省成都市、雅安市、河北省保定市、廊坊市、新疆户籍暂不接收；\r\n8、宿迁市及徐州睢宁，新沂，邳州，安徽泗县，泰州市海陵区、高港区、姜堰区、兴化市、靖江市、泰兴市不接收；\r\n9、非疫区的员工需在出发前提供三大运营商个人轨迹证明（手机定位近15天轨迹），提前提供（苏康码宿迁）证明，支付宝搜索既可，并打印出来，显示为绿色人员方能面试；\r\n10、1997年（含97年）之后的都要查询学信网，查询学信网结果无学籍可以接收（2020年毕业的不可以），需要打印出来，面试时要上交。', '主要生产平板电脑和手机外壳', '两班倒，非流水线，大部分站班，不穿无尘服。', '', '身份证原件、复印件5张，一寸照片5张，黑色水笔1支。', '65元/人', '批量面试时间14：00-15：00 零散面试时间15：00-16：00', 1, 0, 0, 0, 1596979278, 1597167925);
COMMIT;

-- ----------------------------
-- Table structure for ss_role
-- ----------------------------
DROP TABLE IF EXISTS `ss_role`;
CREATE TABLE `ss_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(10) NOT NULL DEFAULT '0' COMMENT '父级角色id',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '路径',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) DEFAULT NULL,
  `module` tinyint(4) NOT NULL DEFAULT '0' COMMENT '所属模块',
  `is_system` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of ss_role
-- ----------------------------
BEGIN;
INSERT INTO `ss_role` VALUES (1, 1, '0,1,', '超级管理员', '这是超级管理员', 1, 1, 0, 0);
INSERT INTO `ss_role` VALUES (2, 1, '0,1,2,', '测试管理员', '', 1, 0, 0, 0);
INSERT INTO `ss_role` VALUES (3, 1, '0,1,3,', '测试', NULL, 1, 0, 0, 1582088917);
COMMIT;

-- ----------------------------
-- Table structure for ss_role_user
-- ----------------------------
DROP TABLE IF EXISTS `ss_role_user`;
CREATE TABLE `ss_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `module` tinyint(4) NOT NULL DEFAULT '0' COMMENT '所属模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='管理员角色表';

-- ----------------------------
-- Records of ss_role_user
-- ----------------------------
BEGIN;
INSERT INTO `ss_role_user` VALUES (1, 1, 1, 1);
INSERT INTO `ss_role_user` VALUES (2, 2, 2, 1);
INSERT INTO `ss_role_user` VALUES (3, 3, 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for ss_shop
-- ----------------------------
DROP TABLE IF EXISTS `ss_shop`;
CREATE TABLE `ss_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员ID（店铺1V1的管理员）',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '门店封面图片',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '门店图集',
  `job` varchar(30) NOT NULL DEFAULT '' COMMENT '招聘岗位',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `purpose` varchar(32) NOT NULL DEFAULT '' COMMENT '服务宗旨',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `area` int(11) NOT NULL DEFAULT '0' COMMENT '地区',
  `address` varchar(64) NOT NULL DEFAULT '' COMMENT '门店地址',
  `longitude` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '固定电话',
  `mobile` varchar(64) NOT NULL DEFAULT '' COMMENT '移动电话（多个用/隔开）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（越大越靠前）',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `job_num` int(11) NOT NULL DEFAULT '0' COMMENT '招聘的岗位数量',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='门店';

-- ----------------------------
-- Records of ss_shop
-- ----------------------------
BEGIN;
INSERT INTO `ss_shop` VALUES (1, 0, '工立方郑州市就业服务站', '/upload/admin/image/2020-08-09/202008091144242748.jpg', '12,13,14,15,16,17,18,19,20,21,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1250, '新密市岳村镇卢沟街邮政储蓄向南30米', '113.509499', '34.561882', '0371-63133666', '15294600888', 0, 1, 0, 1, 0, 1596440259, 1598587039);
INSERT INTO `ss_shop` VALUES (2, 0, '工立方岳村镇就业服务站', '/upload/admin/image/2020-08-09/202008091156155026.jpg', '23,24,25,26,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1250, '新密市岳村镇卢沟街邮政储蓄向南30米', '113.511398', '34.5611', '0371-63133666', '15294600888', 0, 1, 0, 1, 0, 1596945478, 1598587054);
INSERT INTO `ss_shop` VALUES (3, 0, '工立方新密市就业服务站', '/upload/admin/image/2020-08-09/202008091159277466.jpg', '28,29,30,31,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1250, '新密市超化镇申沟矿生活区大门口', '113.408329', '34.448784', '', '13523516904', 0, 1, 0, 1, 0, 1596945691, 1598587068);
INSERT INTO `ss_shop` VALUES (4, 0, '工立方登封市就业服务站', '/upload/admin/image/2020-08-09/202008091202225431.jpg', '33,34,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1261, '登封市颖河路鸿润城对面（工立方打工网）', '113.044033', '34.445051', '0371-62896992', '13783407772', 0, 1, 0, 1, 0, 1596945829, 1598587088);
INSERT INTO `ss_shop` VALUES (5, 0, '工立方中牟县就业服务站', '/upload/admin/image/2020-08-09/202008091205034670.jpg', '36,37,38,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1263, '中牟县青年路西段农业职业技术学院西150米路南', '114.010889', '34.731654', '0371-55338888', '19913861999', 0, 1, 0, 1, 0, 1596945998, 1598587103);
INSERT INTO `ss_shop` VALUES (6, 0, '英才招工中牟县韩寺就业服务站', '/upload/admin/image/2020-08-09/202008091322147622.jpg', '40,41,', '普工（长期工）', 0, '一切以客户为核心', 10, 148, 1250, '中牟县韩寺蓝钻超市南邻30米路西', '114.108502', '34.653273', '', '13526680578', 0, 1, 0, 0, 0, 1596950632, 1598587118);
COMMIT;

-- ----------------------------
-- Table structure for ss_shop_recruit
-- ----------------------------
DROP TABLE IF EXISTS `ss_shop_recruit`;
CREATE TABLE `ss_shop_recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `recruit_id` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `factory_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ss_shop_recruit
-- ----------------------------
BEGIN;
INSERT INTO `ss_shop_recruit` VALUES (1, 1, 2, 0, 0, 1);
INSERT INTO `ss_shop_recruit` VALUES (2, 1, 3, 0, 0, 2);
INSERT INTO `ss_shop_recruit` VALUES (3, 1, 4, 0, 0, 3);
COMMIT;

-- ----------------------------
-- Table structure for ss_users
-- ----------------------------
DROP TABLE IF EXISTS `ss_users`;
CREATE TABLE `ss_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `remember_token` varchar(100) NOT NULL DEFAULT '' COMMENT 'session令牌',
  `realname` varchar(10) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `id_card` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别（1男，2女）',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `birthday` varchar(32) NOT NULL DEFAULT '' COMMENT '出生年月',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `area` int(11) NOT NULL DEFAULT '0' COMMENT '县/区',
  `bank_card` varchar(20) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_province` int(11) NOT NULL DEFAULT '0' COMMENT '开户行省份',
  `bank_city` int(11) NOT NULL DEFAULT '0' COMMENT '开户行城市',
  `bank_area` int(11) NOT NULL DEFAULT '0' COMMENT '开户行县/区',
  `card_image1` varchar(128) NOT NULL DEFAULT '' COMMENT '身份证正面',
  `card_image2` varchar(128) NOT NULL DEFAULT '' COMMENT '身份证反面',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of ss_users
-- ----------------------------
BEGIN;
INSERT INTO `ss_users` VALUES (1, '15924140778', '', '', '路', '小路', '127.0.0.1', 1596446003, '', '15924140778', '1120714124@qq.com', '', 1, 20, '2001-07-08', 1659, 1660, 1670, '', '', 0, 0, 0, '', '', 1, 0, 0, NULL);
INSERT INTO `ss_users` VALUES (3, '15924140780', '$2y$10$1Dp05ILjJUWU2FN8DQnG.OaRFAnwJu0D1Xa.GQmR8ZZaiNTt.MaUS', '', '张三', '林深时见鹿', '127.0.0.1', 1614327583, '/upload/home/image/2020-08-18/202008181735292097.jpg', '15924140778', '', '412725199202123323', 1, 0, '2004-08', 10, 148, 1250, '', '', 0, 0, 0, '', '', 0, 1597428508, 1614327583, NULL);
INSERT INTO `ss_users` VALUES (4, '15924140781', '$2y$10$83uVfIhfIB3NWxqwwD4OpeBsp3l8OdV1mbPJ2QMMXXUBsfUiGsUdW', '', '', '', '', 0, '', '15924140781', '', '', 1, 0, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 1597432487, 1597432487, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
