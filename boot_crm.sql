/*
Navicat MySQL Data Transfer

Source Server         : First
Source Server Version : 50641
Source Host           : localhost:3306
Source Database       : boot_crm

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-04-16 10:49:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_dict`
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '客户行业', '教育培训 ', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('10', '003', '公司性质', '民企', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('12', '004', '年营业额', '1-10万', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('13', '004', '年营业额', '10-20万', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('14', '004', '年营业额', '20-50万', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('15', '004', '年营业额', '50-100万', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('16', '004', '年营业额', '100-500万', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('17', '004', '年营业额', '500-1000万', null, '6', '1', null);
INSERT INTO `base_dict` VALUES ('18', '005', '客户状态', '基础客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('19', '005', '客户状态', '潜在客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '客户行业', '电子商务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('20', '005', '客户状态', '成功客户', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('21', '005', '客户状态', '无效客户', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('22', '006', '客户级别', '普通客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('23', '006', '客户级别', 'VIP客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('24', '007', '商机状态', '意向客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('25', '007', '商机状态', '初步沟通', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('26', '007', '商机状态', '深度沟通', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('27', '007', '商机状态', '签订合同', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '客户行业', '对外贸易', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('30', '008', '商机类型', '新业务', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('31', '008', '商机类型', '现有业务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('32', '009', '商机来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('33', '009', '商机来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('34', '009', '商机来源', '推广活动', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '客户行业', '酒店旅游', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '客户行业', '房地产', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '002', '客户信息来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('7', '002', '客户信息来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('8', '003', '公司性质', '合资', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('9', '003', '公司性质', '国企', null, '2', '1', null);

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) NOT NULL COMMENT '客户名称',
  `cust_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('15', '小韩', null, '2', '7', '3', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES ('16', '小李', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES ('17', '小赵', null, '4', '6', '4', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:02');
INSERT INTO `customer` VALUES ('22', '小明', null, '3', '6', '2', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('24', '小伟', null, '2', '7', '5', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('26', 'jack', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('28', 'Rose', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('29', '小韩', null, '1', '7', '1', '23', '小雪', '010-88888886', '13888888886', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('30', '小叶', null, '2', '6', '2', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('31', '小韩', null, '4', '7', '1', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('33', '小海', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('34', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('35', '小姜', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('36', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('37', '小梦', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('38', '小孙', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('39', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('40', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('41', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('42', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('43', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('44', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('45', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('46', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('47', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('48', '小高', null, '5', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('49', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('50', '小钱', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('51', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('52', '小周', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('53', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('54', '小丽', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('55', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('56', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('57', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('58', '张三', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('59', '李四', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('60', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('61', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('62', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('63', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('64', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('65', '王五', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('66', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('67', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('68', '赵六', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('69', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('70', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('71', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('72', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('73', '小七', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('74', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('75', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('76', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('77', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('78', '小郑', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('79', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('80', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('81', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('82', '小吴', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('83', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('144', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('145', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('146', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('147', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('148', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('149', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('150', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('151', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('152', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('153', '晶晶', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('154', '倩倩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('155', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('156', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('157', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('158', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('159', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('160', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('161', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('171', '小韩', null, '3', '7', '1', '23', '小雪', '010-8235438', '13755555555', '100000', '北京昌平区西三旗', '2017-05-05 10:23:07');
INSERT INTO `customer` VALUES ('172', '小韩', null, '2', '6', '2', '22', '小雪', '010-0000000', '13288546521', '100859', '北京昌平区西三旗', '2017-05-05 10:51:08');
INSERT INTO `customer` VALUES ('174', '小月', null, '1', '6', '1', '22', '小雪', '0482-8235438', '13848399998', '137400', '内蒙古兴安盟乌兰浩特市', '2017-05-05 11:33:27');
INSERT INTO `customer` VALUES ('175', '小韩', null, '1', '6', '1', '22', '小石', '0791-88130000', '15179105961', '330098', '江西省南昌市瑶湖高校园区', '2017-05-05 13:17:11');
INSERT INTO `customer` VALUES ('176', '小智', null, '1', '7', '1', '23', '小黑', '400-618-4000', '13520203625', '100091', '北京市海淀区', '2017-05-16 15:49:07');
INSERT INTO `customer` VALUES ('177', '小程', null, '1', '6', '1', '23', '小韩', '010-88886616', '13718026541', '100000', '北京市昌平区', '2017-05-16 16:25:59');
INSERT INTO `customer` VALUES ('180', '小东', null, '1', '6', '1', '23', '小韩', '010-88886616', '18200964181', '123456', '东莞市麻涌镇', '2019-04-02 11:37:21');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'm0001', '小韩', '123', '1');
INSERT INTO `sys_user` VALUES ('2', 'm0002', '小雪', '123', '1');
INSERT INTO `sys_user` VALUES ('3', 'm0003', '小石', '123', '1');
INSERT INTO `sys_user` VALUES ('4', 'm0004', '小陈', '123', '1');
