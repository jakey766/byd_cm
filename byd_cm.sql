/*
MySQL Data Transfer
Source Host: localhost
Source Database: byd_cm
Target Host: localhost
Target Database: byd_cm
Date: 2016/12/7 10:09:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cm_info
-- ----------------------------
DROP TABLE IF EXISTS `cm_info`;
CREATE TABLE `cm_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AA` int(11) DEFAULT NULL,
  `AB` int(11) DEFAULT NULL,
  `AC` int(11) DEFAULT NULL,
  `org_code` varchar(500) DEFAULT NULL,
  `AE` int(11) DEFAULT NULL,
  `AF` int(11) DEFAULT NULL,
  `city_code` varchar(500) DEFAULT NULL,
  `AH` varbinary(200) DEFAULT NULL COMMENT '申请人姓名',
  `AI` varchar(50) DEFAULT NULL COMMENT '申请人证件类型',
  `AJ` varbinary(200) DEFAULT NULL COMMENT '申请人证件号码',
  `AK` varbinary(200) DEFAULT NULL COMMENT '申请人电话号码',
  `AL` varbinary(200) DEFAULT NULL COMMENT '实际购车人姓名',
  `AM` varbinary(200) DEFAULT NULL COMMENT '实际购车人证件号码',
  `AN` varbinary(200) DEFAULT NULL COMMENT '实际购车人电话号码',
  `AO` varchar(50) DEFAULT NULL COMMENT '跟申请人关系',
  `AP` varchar(50) DEFAULT NULL COMMENT '还款状态',
  `AQ` varchar(50) DEFAULT NULL COMMENT '性别',
  `AR` int(11) DEFAULT NULL COMMENT '年龄',
  `csrq` date DEFAULT NULL COMMENT '出生日期',
  `AT` varchar(50) DEFAULT NULL COMMENT '婚姻状况',
  `AU` varchar(50) DEFAULT NULL COMMENT '当前状态',
  `AV` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `AW` date DEFAULT NULL COMMENT '合同激活日期',
  `AX` date DEFAULT NULL COMMENT '申请提交日期',
  `AY` int(11) DEFAULT NULL COMMENT '月份',
  `AZ` date DEFAULT NULL COMMENT '核准拒绝日期',
  `BA` int(11) DEFAULT NULL COMMENT '周次',
  `BB` varchar(50) DEFAULT NULL COMMENT '车系',
  `BC` varchar(50) DEFAULT NULL COMMENT '车型',
  `BD` varbinary(200) DEFAULT NULL COMMENT '车牌号码',
  `BE` varbinary(200) DEFAULT NULL COMMENT 'VIN号',
  `BF` date DEFAULT NULL COMMENT '购车日期',
  `BG` date DEFAULT NULL COMMENT '交车日期',
  `BH` varchar(50) DEFAULT NULL COMMENT '付款方式',
  `BI` varbinary(200) DEFAULT NULL COMMENT '驾驶证编号',
  `BJ` date DEFAULT NULL COMMENT '驾照到期日',
  `BK` varchar(50) DEFAULT NULL COMMENT '家庭人数',
  `BL` varchar(50) DEFAULT NULL COMMENT '教育程度',
  `BM` varbinary(200) DEFAULT NULL COMMENT '贷款申请号码',
  `BN` int(11) DEFAULT NULL COMMENT '行业类型',
  `BO` int(11) DEFAULT NULL COMMENT '行业子类型',
  `hyzlx_code` varchar(500) DEFAULT NULL COMMENT '行业子类型编号',
  `BQ` varchar(100) DEFAULT NULL COMMENT '职业类型',
  `BR` varbinary(300) DEFAULT NULL COMMENT '户口所在地',
  `BS` int(11) DEFAULT NULL COMMENT '月收入',
  `BT` int(11) DEFAULT NULL COMMENT '借款人省份',
  `BU` int(11) DEFAULT NULL COMMENT '借款人城市',
  `BV` varbinary(300) DEFAULT NULL COMMENT '户口地址',
  `BW` varchar(50) DEFAULT NULL COMMENT '地址类型',
  `BX` varchar(50) DEFAULT NULL COMMENT '房产类型',
  `BY` int(11) DEFAULT NULL COMMENT '居住年限',
  `BZ` varbinary(300) DEFAULT NULL COMMENT '公司名称',
  `CA` varchar(50) DEFAULT NULL COMMENT '企业性质',
  `CB` varbinary(100) DEFAULT NULL COMMENT '职位',
  `CC` varbinary(100) DEFAULT NULL COMMENT '公司电话',
  `CD` varbinary(300) DEFAULT NULL COMMENT '地址一',
  `CE` int(11) DEFAULT NULL COMMENT '工作年限',
  `CF` double DEFAULT NULL COMMENT '资产价格',
  `CG` varchar(50) DEFAULT NULL COMMENT '车身颜色',
  `CH` varbinary(200) DEFAULT NULL COMMENT '产品组',
  `CI` varchar(50) DEFAULT NULL COMMENT '产品类型',
  `CJ` varchar(50) DEFAULT NULL COMMENT '贷款期数',
  `CK` double DEFAULT NULL COMMENT '销售价格',
  `CL` double DEFAULT NULL COMMENT '首付款比例',
  `CM` double DEFAULT NULL COMMENT '首付款金额',
  `CN` double DEFAULT NULL COMMENT '贷款金额',
  `CO` double DEFAULT NULL COMMENT '客户利率',
  `CP` double DEFAULT NULL COMMENT '利息总额',
  `CQ` double DEFAULT NULL COMMENT '购车月还款额',
  `CR` varbinary(200) DEFAULT NULL COMMENT '客户申请编码',
  `CS` varbinary(200) DEFAULT NULL COMMENT '介绍人姓名',
  `CT` varbinary(200) DEFAULT NULL COMMENT '介绍人联系电话',
  `CU` varbinary(200) DEFAULT NULL COMMENT '兴趣爱好',
  `CV` varchar(50) DEFAULT NULL COMMENT '拥有小孩数量',
  `CW` varchar(50) DEFAULT NULL COMMENT '第一个小孩年龄阶段',
  `CX` varchar(50) DEFAULT NULL COMMENT '第二个小孩年龄阶段',
  `CY` varbinary(1000) DEFAULT NULL COMMENT '备注',
  `CZ` varbinary(200) DEFAULT NULL COMMENT '邀请人',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `sqr_zjlx_src` varbinary(200) DEFAULT NULL COMMENT '申请人证件类型导入值',
  `gsqrgx_src` varbinary(200) DEFAULT NULL COMMENT '跟申请人关系导入值',
  `hkzt_src` varbinary(200) DEFAULT NULL COMMENT '还款状态导入值',
  `xb_src` varbinary(200) DEFAULT NULL COMMENT '性别导入值',
  `hyzk_src` varbinary(200) DEFAULT NULL COMMENT '婚姻状况导入值',
  `dqzt_src` varbinary(200) DEFAULT NULL COMMENT '当前状态导入值',
  `cxi_src` varbinary(200) DEFAULT NULL COMMENT '车系导入值',
  `cxing_src` varbinary(200) DEFAULT NULL COMMENT '车型导入值',
  `fkfs_src` varbinary(200) DEFAULT NULL COMMENT '付款方式导入值',
  `jtrs_src` varbinary(200) DEFAULT NULL COMMENT '家庭人数导入值',
  `jycd_src` varbinary(200) DEFAULT NULL COMMENT '教育程度导入值',
  `zylx_src` varbinary(200) DEFAULT NULL COMMENT '职业类型导入值',
  `fclx_src` varbinary(200) DEFAULT NULL COMMENT '房产类型导入值',
  `qyxz_src` varbinary(200) DEFAULT NULL COMMENT '企业性质导入值',
  `csys_src` varbinary(200) DEFAULT NULL COMMENT '车身颜色导入值',
  `dkqs_src` varbinary(200) DEFAULT NULL COMMENT '贷款期数导入值',
  `yyxhsl_src` varbinary(200) DEFAULT NULL COMMENT '拥有小孩数量导入值',
  `hylx_src` varbinary(200) DEFAULT NULL COMMENT '行业类型原始值',
  `hyzlx_src` varbinary(200) DEFAULT NULL COMMENT '行业子类型原始值',
  `city_sf_src` varbinary(200) DEFAULT NULL,
  `city_cs_src` varbinary(200) DEFAULT NULL,
  `jkr_sf_src` varbinary(200) DEFAULT NULL,
  `jkr_cs_src` varbinary(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sqr_zjhm` (`AI`),
  KEY `sjgcr_zjhm` (`AM`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_dist
-- ----------------------------
DROP TABLE IF EXISTS `sys_dist`;
CREATE TABLE `sys_dist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL COMMENT '类型',
  `key` varchar(100) NOT NULL COMMENT '字典键',
  `name` varchar(100) NOT NULL COMMENT '字典值',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_type_key` (`type`,`key`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_field`;
CREATE TABLE `sys_field` (
  `fname` varchar(100) NOT NULL COMMENT '字段名',
  `sname` varchar(100) NOT NULL COMMENT '显示字段名',
  `src_name` varchar(100) DEFAULT NULL COMMENT '原始值字段',
  `tname` varchar(100) NOT NULL COMMENT '表字段名',
  `name` varchar(100) NOT NULL COMMENT '显示名',
  `stype` varchar(50) NOT NULL COMMENT '展现类型',
  `ftype` varchar(50) NOT NULL COMMENT '数据类型',
  `dist_type` varchar(50) DEFAULT NULL COMMENT '字典类型',
  `dist_key` varchar(100) DEFAULT NULL COMMENT '字典值',
  `tree_level` int(11) NOT NULL DEFAULT '0' COMMENT '树层次',
  `list` int(1) NOT NULL DEFAULT '0' COMMENT '0:不放入列表,1:放入列表',
  `query` int(1) NOT NULL DEFAULT '0' COMMENT '0:不做为查询条件,1:做为查询条件',
  `layer_width` int(4) NOT NULL DEFAULT '1' COMMENT '占宽',
  `sort_index` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `jrgs_name` varchar(100) DEFAULT NULL COMMENT '金融公司表格名',
  `bb_name` varchar(100) DEFAULT NULL COMMENT '八部系统表格名',
  `xfxt_name` varchar(100) DEFAULT NULL COMMENT '销服系统表格名',
  `vip_name` varchar(100) DEFAULT NULL COMMENT 'VIP表格名',
  `enc` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段配置';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '菜单名',
  `uri` text COMMENT '链接',
  `is_menu` int(1) NOT NULL COMMENT '是否做为菜单',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='系统-菜单';

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '类型',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(500) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `type_pid` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '角色名',
  `desc` varchar(100) DEFAULT NULL COMMENT '描述',
  `fields` text COMMENT '可见字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统-角色';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `sys_role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8 COMMENT='系统-角色-菜单';

-- ----------------------------
-- Table structure for sys_tree
-- ----------------------------
DROP TABLE IF EXISTS `sys_tree`;
CREATE TABLE `sys_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL COMMENT '类型',
  `level` int(11) NOT NULL COMMENT '层次',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `code` varchar(500) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `type_pid` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `name` varbinary(100) NOT NULL COMMENT '姓名',
  `mobile` varbinary(100) DEFAULT NULL COMMENT '手机',
  `email` varbinary(500) DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `role_ids` varchar(500) DEFAULT NULL COMMENT '角色IDs',
  `role_names` varchar(500) DEFAULT NULL COMMENT '角色名s',
  `org_ids` varchar(1000) DEFAULT NULL COMMENT '可查询权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `username` (`username`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统-用户';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cm_info` VALUES ('394', '112', '658', '659', ',112,658,659,', '394', '530', ',394,530,', ':8y\'}��R0},��5\\�', '1', 'g���:�ʺ�yi�?O8� ݌����K��>\Z�M�', '�7UfcwΊf�\Z���', null, ';>�b���(zW�q�i', null, null, '4', '2', '36', null, '2', '3', 'BZ100001', '2015-03-23', '2015-03-20', '3', '2015-03-23', '12', null, 'QIN', null, null, null, null, null, 'O=X�|����tL���', '2017-01-02', '3', '5', '�G�����]+�!K�', '31', '32', null, '5', 'J���ds�v�=����', '12500', '394', '530', '[���p&,���D>p#�nӦ�Gj\'��^aX��:a*%�htM�˒��ז���KI����', null, '6', '8', '�M@', '8', '���C�O����m+�(V2��f�t�Щ��7', null, null, '6', '209800', 'MLC', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本金（个人）', '36', '146800', '-1', '29360', '14.49', '117440', '26234.47', '4041.83', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('395', '112', '658', '659', ',112,658,659,', '394', '530', ',394,530,', '�k�E�C�Ϥ-z>� }�', '1', '�Π��nB���TwY����nyxK~��K', 'h�>r`י-�� ', null, ';>�b���(zW�q�i', null, null, '4', '2', '31', null, '2', '3', 'BZ100002', '2015-03-23', '2015-03-20', '3', '2015-03-23', '12', null, 'QIN', null, null, null, null, null, ':w�������Aj^���', '2017-02-02', '5', '5', '������P��x7�]', '31', '32', null, '3', 'J���ds�v�=����', '9800', '394', '530', '[���p&,���D>p#�nӦ�Gj\'��^aX��:a*%�htM�˒��ז���KI����', null, '6', '10', '�M@', '8', '�|a&<�2d81�X��ǥ-�^m-o�EKP��?M���/�d��', null, null, '6', '209800', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本金（个人）', '36', '146800', '-1', '29360', '14.49', '117440', '26234.47', '4041.83', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('396', '108', '149', '471', ',108,149,471,', '308', '309', ',308,309,', 'X�-#��P�zI��r�', '1', '�bP���d�\Z��B���q��F�>��/8&', 'DuBt��-��S�:(c�', null, ';>�b���(zW�q�i', null, null, '5', '1', '29', null, '2', '3', 'BZ100004', '2015-05-04', '2015-04-24', '4', '2015-04-27', '17', null, 'F3', null, null, null, null, null, 'ZaJ1��݀�p;ؘ', '2017-05-02', '5', '3', 'l�D�:�����u�@m_', '18', '35', null, '3', '�', '5000', '308', '309', '>A�HC�(�X�4�44�~v���>����t�]\n\\X0�����-�D5', null, '7', '3', '�M@', '8', 'bG��\Zև�T>F~�(��P�2��r�k.ViJ�&���Ȍz��n���Q�', null, null, '1', '45900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '42900', '-1', '12900', '14.49', '30000', '7169.28', '1032.48', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('397', '113', '664', '665', ',113,664,665,', '359', '363', ',359,363,', '����7�Q�{7���[�', '1', '�VCD$7ï�(�MF4r����1�o����{��J', '�9�7�jn)H��ƽ�', null, ';>�b���(zW�q�i', null, null, '5', '1', '27', null, '2', '3', 'BZ100007', '2015-05-06', '2015-04-27', '4', '2015-04-29', '17', null, 'S7', null, null, null, null, null, 's���7TT��9ٱ�W', '2017-06-02', '5', '4', '�bd���0�{�jZ\'�', '24', '36', null, '4', '�\r����g�p�', '8600', '359', '363', '��ǁ1ɉA[IX��\n�^<�KZ�s�w�˛u��Ǽ^5Q2L���]�', null, '7', '2', 'Ⱦ��w<C�p`���lc�+��㝒e�fP�A�`Y�!���aڐki�K', '9', 'Ⱦ��w<C�p`���lc�+��㝒e�fP�A�`�Zmk�ח��Ct��;�', null, null, '5', '116900', 'QKLZ', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '115900', '-1', '34770', '14.49', '81130', '19388.48', '2792.18', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('398', '113', '664', '665', ',113,664,665,', '359', '363', ',359,363,', '�k�H��6��&b�>', '1', '#��5��\Z�7�}Z��N������2.\"}��', 'UΈY\'�o!��f�J1S', null, ';>�b���(zW�q�i', null, null, '5', '1', '29', null, '2', '3', 'BZ100008', '2015-05-06', '2015-04-27', '4', '2015-04-28', '17', null, 'S7', null, null, null, null, null, '��', '2017-07-02', '8', '3', '��;)p�\\Gz�a?\Z', '24', '36', null, '2', '�\r����g�p�', '13000', '359', '363', '��ǁ1ɉA[IX��\n�^<�KZ�s�w�˛u��Ǽ^5Q2L���]�', null, '1', '2', '�M@', '8', '��^�MI9��l�񙤱Q��=}f�F���', null, null, '5', '116900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '116900', '-1', '35070', '14.49', '81830', '19555.72', '2816.27', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('399', '113', '664', '666', ',113,664,666,', '359', '365', ',359,365,', '΋�_����MBe�@�', '1', '���Ve�� ؠ杳�ކ� }�/L_\"y���e', '��zC\n[��-���Q�M', null, ';>�b���(zW�q�i', null, null, '5', '1', '44', null, '2', '3', 'BZ100005', '2015-05-05', '2015-04-27', '4', '2015-04-29', '17', null, 'S7', null, null, null, null, null, 'tX�$���\Z��:��V', '2017-08-02', '5', '2', 'L��d�Y�m���Q��', '13', '34', null, '2', '�1���pC�8��|�P', '18000', '359', '365', '�wD5�-�B�a!����w#��F]]ݥd���\r F�q�q=�6�+t', null, '3', '2', '�M@', '8', '��H6��+r1-\n:��f�n(�ZȠ%�_�Zq', null, null, '5', '139900', 'QKLZ', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '139900', '-1', '28000', '14.49', '111900', '26741.76', '3851.16', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('400', '113', '664', '666', ',113,664,666,', '359', '365', ',359,365,', '�Ʒ�v������X �', '1', '5R���d6�*)3��zò���1�o����{��J', '%-p����m.=��@z�', null, ';>�b���(zW�q�i', null, null, '5', '1', '28', null, '2', '3', 'BZ100006', '2015-05-05', '2015-04-28', '4', '2015-04-30', '17', null, 'NEWF3', null, null, null, null, null, '2��E�(2�C�pz �8', '2017-09-02', '4', '3', '}�{ ƉA0�r���1i', '31', '32', null, '4', '�1���pC�8��|�P', '6700', '359', '365', '�wD5�-�B�a!����w#��F]]ݥd���\r F�q�q=�6�+t', null, '1', '3', 'e�aF{^ܧ��	�߉�q��[�S�������v���O������u	�BG�', '10', 'e�aF{^ܧ��	�߉�q��[�S�������vstD�Ϟ	ş��(7;>�b���(zW�q�i', null, null, '1', '51900', 'YDY', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '24', '45900', '-1', '14900', '14.49', '31000', '4894.16', '1495.59', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('401', '112', '658', '667', ',112,658,667,', '394', '396', ',394,396,', '_-|���.%6H��.H�', '1', '[�$�pČJ҂՟�C\r��)�(4B��zI!�', '�B�����S�a57n', null, ';>�b���(zW�q�i', null, null, '5', '1', '42', null, '2', '3', 'BZ100022', '2015-05-20', '2015-04-29', '4', '2015-04-30', '17', null, 'S6', null, null, null, null, null, '�t�R�q�)O ټ', '2017-10-02', '5', '4', '������C��xu�', '11', '111', null, '2', '/����	�]z(�:�', '6000', '394', '396', '�b���_7������ʋ�2-�l�-�sS�m۱X�Ҩ\"�BM��Sg��', null, '8', '8', '��۾ME�y,8�K���G', '8', 'J�� ��p18Y*>z���9(R&����oi���� ', null, null, '8', '109900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '103395', '-1', '31018.5', '14.49', '72376.5', '17296.62', '2490.92', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('402', '113', '664', '666', ',113,664,666,', '359', '365', ',359,365,', '��Lx���\r9�ޱ��p', '1', '�`���1�L�f�\r�N������2.\"}��', '=��\'�ؐ�+��', null, ';>�b���(zW�q�i', null, null, '5', '1', '29', null, '2', '3', 'BZ100050', '2015-05-27', '2015-05-04', '5', '2015-05-05', '18', null, 'NEWF3', null, null, null, null, null, 'W`s-c,�$z�܊6��', '2017-11-02', '4', '3', '�����e`5,Ž�̛��', '24', '36', null, '2', '�1���pC�8��|�P', '5900', '359', '365', '�wD5�-�B�a!����w#��F]]ݥd���\r F�q�q=�6�+t', null, '7', '3', '�M@', '8', '!�jyF8��ʲfʫ��:��sGH��a߁Z�b��.Km��2��s]z	̹��\n�#�41 ', null, null, '1', '55900', 'YDY', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '54900', '-1', '11900', '14.49', '43000', '10276.04', '1479.89', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('403', '108', '147', '447', ',108,147,447,', '250', '252', ',250,252,', '`�����\r�D��� z�', '1', '������ʌ��A�;%�FYx\"��r���_��', 'vb19��_鵙��\"', null, ';>�b���(zW�q�i', null, null, '5', '1', '48', null, '2', '3', 'BZ100018', '2015-05-14', '2015-05-05', '5', '2015-05-05', '18', null, 'SURUI', null, null, null, null, null, 'L���Db�qYe���K^', '2017-12-02', '5', '3', '��', '12', '114', null, '-100', 'q])d�!�]P�ԑ�o>', '8600', '250', '252', '��O�Gtp����e�4��Dmц\'�ck}��}��$��y<%=����\\�AW�%��\"L�', null, '8', '4', 'x/$�����S����h5BV���ʟq�)��D\np,m��iv����gE', '11', 'x/$�����S����h5BV���ʟq�)��D\n�m�L�=o��x�x��%�_��/ja��=�M', null, null, '1', '83900', 'RYY', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '75600', '-1', '23600', '14.49', '52000', '12427.04', '1789.64', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '���Ρ���oZ������(0�LOdؤͮ���[#=79�;Yx�;>�b���(zW�q�i', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('404', '108', '147', '448', ',108,147,448,', '250', '258', ',250,258,', ':e.0�\'|�Ek�A:', '1', '�U�Nq��w�!��h~3��v*�u��1����', '�����\"h��5X�W', null, ';>�b���(zW�q�i', null, null, '5', '1', '33', null, '2', '3', 'BZ100019', '2015-05-19', '2015-05-05', '5', '2015-05-06', '18', null, 'S6', null, null, null, null, null, 'Y�K��ilK��*�f', '2018-01-02', '5', '3', '���c�UG�Q�^c��', '12', '116', null, '3', '\ZGtxJ#ӄ)5�=	*', '5600', '250', '258', '��g\\ķ���b�V��E�Χ��I���[KF�\\�F�Q�lU��V	', null, '8', '5', '�J��H��Q������Y�ØAg�y�zr��AV�@���{�S����c�,\'', '10', '�J��H��Q������Y�ØAg�y�zr��AV�@+���D�eX��Q*�s�\\W�=��x����', null, null, '3', '97900', 'DLH', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '97900', '-1', '29900', '14.49', '68000', '16250.44', '2340.29', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('405', '113', '664', '665', ',113,664,665,', '359', '363', ',359,363,', 'D���`7+Nwd$�', '1', '٭�rv�\nx��yEl�ކ� }�/L_\"y���e', '\Z	�gp�斋D2��^�%', null, ';>�b���(zW�q�i', null, null, '5', '1', '24', null, '5', '3', 'BZ100013', '2015-05-14', '2015-05-05', '5', '2015-05-08', '18', null, 'G5', null, null, null, null, null, 'e3�d�U��\\���J�t', '2018-02-02', '7', '3', '[|�j�ł�8�\n$�', '22', '117', null, '2', '�\r����g�p�', '6000', '359', '363', '��ǁ1ɉA[IX��\n�^<�KZ�s�w�˛u��Ǽ^5Q2L���]�', null, '8', '7', '�M@', '8', '�j�F:J9z�պ�JY�', null, null, '5', '102900', 'JJB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '99900', '-1', '19980', '14.49', '79920', '19099.08', '2750.53', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('406', '108', '152', '509', ',108,152,509,', '278', '295', ',278,295,', '��f5��Q��c�fޟ', '1', 'h�CZZ�/U	\n�J�1d�2$p�3�j��#v�&/', 'Ь%Ҧd�d�	�ԂY�', null, ';>�b���(zW�q�i', null, null, '5', '2', '32', null, '2', '3', 'BZ100025', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', null, 'F0', null, null, null, null, null, 's6��m���l�Y%�', '2018-04-02', '5', '5', '�JtHqӡ�!�1y�[', '18', '35', null, '4', '�9>��b=��(�`', '4000', '278', '295', '��-��_ہa���#�L�i\Z$=�0�/z7Q`l+u���a�d�)�u����������z��', null, '6', '3', '�M@', '8', '�j�F:J9z�պ�JY�', null, null, '3', '42900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '40000', '-1', '12000', '14.49', '28000', '6691.4', '963.65', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('407', '112', '658', '667', ',112,658,667,', '394', '396', ',394,396,', 'n��=�[��p\n�R��', '1', ']<317n�ʮ�&p�U@y����{,&�&�:/;y', 'X�؀�8>Qkך�\Z', null, ';>�b���(zW�q�i', null, null, '5', '2', '36', null, '2', '3', 'BZ100015', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', null, 'G5', null, null, null, null, null, '!���|�\n~r�/l]', '2018-05-02', '5', '4', '�;dk��2�k7Dٚ�', '31', '32', null, '2', '/����	�]z(�:�', '7200', '394', '396', '�b���_7������ʋ�2-�l�-�sS�m۱X�Ҩ\"�BM��Sg��', null, '8', '4', '�8H��M�{�鑋r', '9', '��r\"��d7bm��qZ�n��\n>����N~4�', null, null, '0', '93900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '24', '90000', '-1', '27000', '14.49', '63000', '9946.08', '3039.42', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('408', '112', '658', '667', ',112,658,667,', '394', '396', ',394,396,', '5�ڲH������X��', '1', '���?5h�q�.�m�̪�@艱���R�б', 'k�=�L�&�#&�-�', null, ';>�b���(zW�q�i', null, null, '6', '1', '32', null, '2', '3', 'BZ100021', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', null, 'F3', null, null, null, null, null, '�����C6�{�UɈP,�', '2018-06-02', '4', '4', '�Qg%� �B����', '14', '122', null, '3', '/����	�]z(�:�', '4500', '394', '396', '�b���_7������ʋ�2-�l�-�sS�m۱X�Ҩ\"�BM��Sg��', null, '8', '2', '�M@', '8', 'ǁ��!�Z�/\r�*��!', null, null, '1', '50900', 'TSB', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '12', '47000', '-1', '9400', '14.49', '37600', '3016.04', '3384.67', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cm_info` VALUES ('409', '106', '133', '317', ',106,133,317,', '241', '619', ',241,619,', 'mL�\ZB��m\"��7.�', '1', '�\ZAf/a�1���c)�%�r�P:�p� )vm��', 'PUE�<����襤~^', '��V�+��c+�ב�)�', '�\ZAf/a�1���c)��', '��S�z@�����~��', 'FQ', '5', '1', '23', null, '5', '3', 'BZ100041', '2015-05-28', '2015-05-07', '5', '2015-05-07', '19', 'TANG', 'NEWF3', null, '�,p������eoG#�jv��2��z׉�@�', '2016-09-26', '2016-09-26', '3', 'J���@@����JHn�', '2018-08-02', '6', '4', '��n\r����]rX&A�J', '12', '124', null, '-100', '���1��<�6�4���', '8200', '495', '504', 'N�n`�ݩr�$�!��>1����oK9|���<F�M�o��5�>*e����', null, '5', '4', '�M@', '8', '����{�OUƠ���&���\rkW|\Z', null, null, '2', '55900', 'DLH', '�����V�XE\Z�X#�O�\ZU �����k�f0', '标准贷款-等额本息（个人）', '36', '50385', '-1', '10077', '14.49', '40308', '9632.64', '1387.24', '9\nFI���y�����g�n', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, 'R����A��\'����מ�yxW}�g�D���/�', null, null, null, '���Ρ���oZ������(0�LOdؤͮ���[#=79�;Yx�;>�b���(zW�q�i', null, null, null, null, null, null, null, null, '8�̹t�^���!���', null, null);
INSERT INTO `sys_dist` VALUES ('1', 'ZJLX', '1', '身份证', '');
INSERT INTO `sys_dist` VALUES ('2', 'ZJLX', '2', '护照', '');
INSERT INTO `sys_dist` VALUES ('3', 'XB', '1', '男性', '');
INSERT INTO `sys_dist` VALUES ('4', 'XB', '2', '女性', '');
INSERT INTO `sys_dist` VALUES ('5', 'JYCD', '7', '博士', '');
INSERT INTO `sys_dist` VALUES ('6', 'JYCD', '6', '硕士', '');
INSERT INTO `sys_dist` VALUES ('7', 'JYCD', '5', '本科', '');
INSERT INTO `sys_dist` VALUES ('8', 'JYCD', '4', '大专', '');
INSERT INTO `sys_dist` VALUES ('9', 'JYCD', '3', '高中及中专', '');
INSERT INTO `sys_dist` VALUES ('10', 'JYCD', '2', '初中', '');
INSERT INTO `sys_dist` VALUES ('11', 'JYCD', '1', '小学', '');
INSERT INTO `sys_dist` VALUES ('13', 'FCLX', '1', '全款自购商品房', '');
INSERT INTO `sys_dist` VALUES ('14', 'FCLX', '2', '全款自购经适房', '');
INSERT INTO `sys_dist` VALUES ('15', 'FCLX', '3', '按揭自购商品房', '');
INSERT INTO `sys_dist` VALUES ('16', 'FCLX', '4', '按揭自购经适房', '');
INSERT INTO `sys_dist` VALUES ('17', 'FCLX', '5', '公司房', '');
INSERT INTO `sys_dist` VALUES ('18', 'FCLX', '6', '直系亲属房', '');
INSERT INTO `sys_dist` VALUES ('19', 'FCLX', '7', '租赁房', '');
INSERT INTO `sys_dist` VALUES ('20', 'FCLX', '8', '自建房', '');
INSERT INTO `sys_dist` VALUES ('21', 'FCLX', '9', '宅基地', '');
INSERT INTO `sys_dist` VALUES ('22', 'FCLX', '10', '公产房', '');
INSERT INTO `sys_dist` VALUES ('23', 'FCLX', '11', '小产权房', '');
INSERT INTO `sys_dist` VALUES ('24', 'HYZK', '1', '单身', '');
INSERT INTO `sys_dist` VALUES ('25', 'HYZK', '2', '已婚', '');
INSERT INTO `sys_dist` VALUES ('26', 'HYZK', '3', '离婚', '');
INSERT INTO `sys_dist` VALUES ('27', 'HYZK', '4', '丧偶', '');
INSERT INTO `sys_dist` VALUES ('28', 'JTRS', '1', '1', '');
INSERT INTO `sys_dist` VALUES ('29', 'JTRS', '2', '2', '');
INSERT INTO `sys_dist` VALUES ('30', 'JTRS', '3', '3', '');
INSERT INTO `sys_dist` VALUES ('31', 'JTRS', '4', '4', '');
INSERT INTO `sys_dist` VALUES ('32', 'JTRS', '5', '5', '');
INSERT INTO `sys_dist` VALUES ('33', 'JTRS', '6', '6', '');
INSERT INTO `sys_dist` VALUES ('34', 'JTRS', '7', '7', '');
INSERT INTO `sys_dist` VALUES ('35', 'JTRS', '8', '8', '');
INSERT INTO `sys_dist` VALUES ('61', 'FKFS', '1', '全款', '');
INSERT INTO `sys_dist` VALUES ('62', 'FKFS', '2', '贷款', '');
INSERT INTO `sys_dist` VALUES ('65', 'HKZT', '3', '还款中', '');
INSERT INTO `sys_dist` VALUES ('66', 'DQZT', '1', '正常', '');
INSERT INTO `sys_dist` VALUES ('67', 'DQZT', '2', '异常', '');
INSERT INTO `sys_dist` VALUES ('68', 'QYXZ', '1', '国有', '');
INSERT INTO `sys_dist` VALUES ('69', 'QYXZ', '2', '集体', '');
INSERT INTO `sys_dist` VALUES ('70', 'QYXZ', '3', '联营', '');
INSERT INTO `sys_dist` VALUES ('71', 'QYXZ', '4', '股份制', '');
INSERT INTO `sys_dist` VALUES ('72', 'QYXZ', '5', '私营', '');
INSERT INTO `sys_dist` VALUES ('73', 'QYXZ', '6', '个体', '');
INSERT INTO `sys_dist` VALUES ('74', 'QYXZ', '7', '合伙', '');
INSERT INTO `sys_dist` VALUES ('75', 'DKQS', '12', '12', '');
INSERT INTO `sys_dist` VALUES ('76', 'DKQS', '24', '24', '');
INSERT INTO `sys_dist` VALUES ('77', 'DKQS', '36', '36', '');
INSERT INTO `sys_dist` VALUES ('80', 'YYHZSL', '1', '1', '');
INSERT INTO `sys_dist` VALUES ('81', 'YYHZSL', '2', '2', '');
INSERT INTO `sys_dist` VALUES ('82', 'YYHZSL', '3', '3', '');
INSERT INTO `sys_dist` VALUES ('83', 'YYHZSL', '4', '4', '');
INSERT INTO `sys_dist` VALUES ('84', 'YYHZSL', '5', '5', '');
INSERT INTO `sys_dist` VALUES ('91', 'CXING', 'QIN', '秦', '');
INSERT INTO `sys_dist` VALUES ('92', 'CXING', 'G5', 'G5', '');
INSERT INTO `sys_dist` VALUES ('93', 'CXING', 'S7', 'S7', '');
INSERT INTO `sys_dist` VALUES ('94', 'CXING', 'SURUI', '速锐', '');
INSERT INTO `sys_dist` VALUES ('95', 'CXYS', 'TSB', '天山白', '');
INSERT INTO `sys_dist` VALUES ('96', 'CXYS', 'HYY', '皓月银', '');
INSERT INTO `sys_dist` VALUES ('97', 'CXYS', 'MLC', '魔力橙', '');
INSERT INTO `sys_dist` VALUES ('98', 'CXYS', 'DLH', '德兰黑', '');
INSERT INTO `sys_dist` VALUES ('99', 'CXYS', 'QKLZ', '巧克力棕', '');
INSERT INTO `sys_dist` VALUES ('102', 'CXI', 'QIJIAN', '旗舰版', '');
INSERT INTO `sys_dist` VALUES ('103', 'CXI', 'HAOHUA', '豪华版', '');
INSERT INTO `sys_dist` VALUES ('104', 'CXI', 'ZUNGUI', '尊贵版', '');
INSERT INTO `sys_dist` VALUES ('105', 'LZGX', 'FQ', '夫妻', '');
INSERT INTO `sys_dist` VALUES ('106', 'LZGX', 'FZN', '父子/女', '');
INSERT INTO `sys_dist` VALUES ('107', 'LZGX', 'PY', '朋友', '');
INSERT INTO `sys_dist` VALUES ('108', 'ZYLX', '1', '公务员', '');
INSERT INTO `sys_dist` VALUES ('111', 'DQZT', '3', 'Converted', '');
INSERT INTO `sys_dist` VALUES ('116', 'ZYLX', '5', '国家机关、党群组织、企业、事业单位负责人', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('120', 'ZYLX', '3', '办事人员和有关人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('124', 'ZYLX', '2', '专业技术人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('130', 'CXING', 'F3', 'F3', '');
INSERT INTO `sys_dist` VALUES ('132', 'ZYLX', '4', '商业、服务业人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('138', 'CXYS', 'YDY', '雅典银', '');
INSERT INTO `sys_dist` VALUES ('139', 'CXING', 'S6', 'S6', '');
INSERT INTO `sys_dist` VALUES ('142', 'CXYS', 'RYY', '瑞亚银', '');
INSERT INTO `sys_dist` VALUES ('143', 'CXYS', 'JJB', '水晶白', '');
INSERT INTO `sys_dist` VALUES ('144', 'CXING', 'F0', 'F0', '');
INSERT INTO `sys_dist` VALUES ('157', 'QYXZ', '8', '国家行政机关单位', '');
INSERT INTO `sys_dist` VALUES ('158', 'QYXZ', '9', '外资', '');
INSERT INTO `sys_dist` VALUES ('159', 'QYXZ', '10', '合资', '');
INSERT INTO `sys_dist` VALUES ('160', 'QYXZ', '11', '国营', '');
INSERT INTO `sys_dist` VALUES ('162', 'CXING', 'NEWF3', '全新F3', '');
INSERT INTO `sys_dist` VALUES ('163', 'HKZT', '4', 'Special-mention关注', '');
INSERT INTO `sys_dist` VALUES ('164', 'HKZT', '5', 'Pass正常', '');
INSERT INTO `sys_dist` VALUES ('165', 'HKZT', '6', 'Doubtful可疑', '');
INSERT INTO `sys_dist` VALUES ('187', 'HYZK', '5', '未婚', '');
INSERT INTO `sys_dist` VALUES ('228', 'CXI', 'TANG', '唐', '');
INSERT INTO `sys_dist` VALUES ('230', 'FKFS', '3', '现金', '');
INSERT INTO `sys_field` VALUES ('bz', 'bz', null, 'CY', '备注', 'text', 'string', null, null, '0', '0', '0', '1', '73', null, null, null, '背景说明', '1');
INSERT INTO `sys_field` VALUES ('city_cs', 'city_cs_show', 'city_cs_src', 'AF', '城市', 'tree', 'int', 'CITY', null, '2', '1', '1', '1', '5', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('city_sf', 'city_sf_show', 'city_sf_src', 'AE', '省份', 'tree', 'int', 'CITY', 'city_cs', '1', '1', '1', '1', '4', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('cphm', 'cphm', null, 'BD', '车牌号码', 'text', 'string', null, null, '0', '0', '0', '1', '27', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('cplx', 'cplx', null, 'CI', '产品类型', 'text', 'string', null, null, '0', '0', '0', '1', '57', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('cpz', 'cpz', null, 'CH', '产品组', 'text', 'string', null, null, '0', '0', '0', '1', '56', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('csys', 'csys_show', 'csys_src', 'CG', '车身颜色', 'dist', 'string', 'CXYS', null, '0', '0', '0', '1', '55', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('cxi', 'cxi_show', 'cxi_src', 'BB', '车系', 'dist', 'string', 'CXI', null, '0', '0', '0', '1', '25', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('cxing', 'cxing_show', 'cxing_src', 'BC', '车型', 'dist', 'string', 'CXING', null, '0', '0', '0', '1', '26', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('degxhnljd', 'degxhnljd', null, 'CX', '第二个小孩年龄阶段', 'text', 'string', null, null, '0', '0', '0', '1', '72', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dkje', 'dkje', null, 'CN', '贷款金额', 'text', 'double', null, null, '0', '0', '0', '1', '62', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dkqs', 'dkqs_show', 'dkqs_src', 'CJ', '贷款期数', 'dist', 'string', 'DKQS', null, '0', '0', '0', '1', '58', '贷款期数（月）', null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dksqhm', 'dksqhm', null, 'BM', '贷款申请号码', 'text', 'string', null, null, '0', '0', '0', '1', '36', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('dqzt', 'dqzt_show', 'dqzt_src', 'AU', '当前状态', 'dist', 'string', 'DQZT', null, '0', '0', '0', '1', '18', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dygxhnljd', 'dygxhnljd', null, 'CW', '第一个小孩年龄阶段', 'text', 'string', null, null, '0', '0', '0', '1', '71', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dzlx', 'dzlx', null, 'BW', '地址类型', 'text', 'string', null, null, '0', '0', '0', '1', '45', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('dzy', 'dzy', null, 'CD', '单位地址', 'text', 'string', null, null, '0', '0', '0', '1', '52', '地址一', null, null, null, '1');
INSERT INTO `sys_field` VALUES ('fclx', 'fclx_show', 'fclx_src', 'BX', '房产类型', 'dist', 'string', 'FCLX', null, '0', '0', '0', '1', '46', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('fkfs', 'fkfs_show', 'fkfs_src', 'BH', '付款方式', 'dist', 'string', 'FKFS', null, '0', '0', '0', '1', '31', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('gcrq', 'gcrq', null, 'BF', '购车日期', 'date', 'date', null, null, '0', '0', '0', '1', '29', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('gcyhke', 'gcyhke', null, 'CQ', '购车月还款额', 'text', 'double', null, null, '0', '0', '0', '1', '65', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('gsdh', 'gsdh', null, 'CC', '公司电话', 'text', 'string', null, null, '0', '0', '0', '1', '51', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('gsmc', 'gsmc', null, 'BZ', '公司名称', 'text', 'string', null, null, '0', '0', '0', '1', '48', '公司名称（自填项）', null, null, null, '1');
INSERT INTO `sys_field` VALUES ('gsqrgx', 'gsqrgx_show', 'gsqrgx_src', 'AO', '跟申请人关系', 'dist', 'string', 'LZGX', null, '0', '0', '0', '1', '13', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('gznx', 'gznx', null, 'CE', '工作年限', 'text', 'int', null, null, '0', '0', '0', '1', '53', '工作年限（年）', null, null, null, '0');
INSERT INTO `sys_field` VALUES ('hkdz', 'hkdz', null, 'BV', '户口地址', 'text', 'string', null, null, '0', '0', '0', '1', '44', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('hkszd', 'hkszd', null, 'BR', '户口所在地', 'text', 'string', null, null, '0', '0', '0', '1', '40', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('hkzt', 'hkzt_show', 'hkzt_src', 'AP', '还款状态', 'dist', 'string', 'HKZT', null, '0', '0', '0', '1', '14', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('htbh', 'htbh', null, 'AV', '合同编号', 'text', 'string', null, null, '0', '0', '0', '1', '19', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('htjhrq', 'htjhrq', null, 'AW', '合同激活日期', 'date', 'date', null, null, '0', '0', '0', '1', '20', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('hylx', 'hylx_show', 'hylx_src', 'BN', '行业类型', 'tree', 'int', 'HYLX', 'hyzlx', '1', '0', '0', '1', '37', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('hyzk', 'hyzk_show', 'hyzk_src', 'AT', '婚姻状况', 'dist', 'string', 'HYZK', null, '0', '0', '0', '1', '17', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('hyzlx', 'hyzlx_show', 'hyzlx_src', 'BO', '行业子类型', 'tree', 'int', 'HYLX', null, '2', '0', '0', '1', '38', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('hzjjrq', 'hzjjrq', null, 'AZ', '核准拒绝日期', 'date', 'date', null, null, '0', '0', '0', '1', '23', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jcrq', 'jcrq', null, 'BG', '交车日期', 'date', 'date', null, null, '0', '0', '0', '1', '30', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jkr_cs', 'jkr_cs_show', 'jkr_cs_src', 'BU', '借款人城市', 'tree', 'int', 'CITY', null, '2', '0', '0', '1', '43', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jkr_sf', 'jkr_sf_show', 'jkr_sf_src', 'BT', '借款人省份', 'tree', 'int', 'CITY', 'jkr_cs', '1', '0', '0', '1', '42', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jsr_lxdh', 'jsr_lxdh', null, 'CT', '介绍人联系电话', 'text', 'string', null, null, '0', '0', '0', '1', '68', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('jsr_xm', 'jsr_xm', null, 'CS', '介绍人姓名', 'text', 'string', null, null, '0', '0', '0', '1', '67', '介绍人', null, null, null, '1');
INSERT INTO `sys_field` VALUES ('jszbh', 'jszbh', null, 'BI', '驾驶证编号', 'text', 'string', null, null, '0', '0', '0', '1', '32', '驾驶证档案编号', null, null, null, '1');
INSERT INTO `sys_field` VALUES ('jtrs', 'jtrs_show', 'jtrs_src', 'BK', '家庭人数', 'dist', 'string', 'JTRS', null, '0', '0', '0', '1', '34', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jycd', 'jycd_show', 'jycd_src', 'BL', '教育程度', 'dist', 'string', 'JYCD', null, '0', '0', '0', '1', '35', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jzdqr', 'jzdqr', null, 'BJ', '驾照到期日', 'date', 'date', null, null, '0', '0', '0', '1', '33', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('jznx', 'jznx', null, 'BY', '居住年限', 'text', 'int', null, null, '0', '0', '0', '1', '47', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('khll', 'khll', null, 'CO', '客户利率', 'text', 'double', null, null, '0', '0', '0', '1', '63', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('khsqbm', 'khsqbm', null, 'CR', '客户申请编码', 'text', 'string', null, null, '0', '0', '0', '1', '66', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('lxze', 'lxze', null, 'CP', '利息总额', 'text', 'double', null, null, '0', '0', '0', '1', '64', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('nl', 'nl', null, 'AR', '年龄', 'text', 'int', null, null, '0', '1', '1', '1', '16', '年龄（年）', null, null, null, '0');
INSERT INTO `sys_field` VALUES ('org_dq', 'org_dq_show', null, 'AB', '大区', 'org', 'int', '-1', 'org_jxs', '2', '1', '1', '1', '2', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('org_jxs', 'org_jxs_show', null, 'AC', '经销商', 'org', 'int', '-1', null, '3', '1', '1', '1', '3', '经销商名称', '经销商名称', '经销商名称', null, '0');
INSERT INTO `sys_field` VALUES ('org_yxb', 'org_yxb_show', null, 'AA', '营销部', 'org', 'int', '0', 'org_dq', '1', '1', '1', '1', '1', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('qyxz', 'qyxz_show', 'qyxz_src', 'CA', '企业性质', 'dist', 'string', 'QYXZ', null, '0', '0', '0', '1', '49', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('sfkbl', 'sfkbl', null, 'CL', '首付款比例', 'text', 'double', null, null, '0', '0', '0', '1', '60', '首付款比例 %', null, null, null, '0');
INSERT INTO `sys_field` VALUES ('sfkje', 'sfkje', null, 'CM', '首付款金额', 'text', 'double', null, null, '0', '0', '0', '1', '61', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('sjgcr_dhhm', 'sjgcr_dhhm', null, 'AN', '购车人电话号码', 'text', 'string', null, null, '0', '1', '1', '1', '12', null, '实际购车人电话号码', null, '实际购车人联系方式', '1');
INSERT INTO `sys_field` VALUES ('sjgcr_xm', 'sjgcr_xm', null, 'AL', '购车人姓名', 'text', 'string', null, null, '0', '1', '1', '1', '10', null, '实际购车人姓名', '客户名称', '实际购车人姓名', '1');
INSERT INTO `sys_field` VALUES ('sjgcr_zjhm', 'sjgcr_zjhm', null, 'AM', '购车人证件号码', 'text', 'string', null, null, '0', '1', '1', '1', '11', null, '实际购车人证件号码', '证件号码', '实际购车人证件号', '1');
INSERT INTO `sys_field` VALUES ('sqr_dhhm', 'sqr_dhhm', null, 'AK', '申请人电话号码', 'text', 'string', null, null, '0', '1', '1', '1', '9', '电话', '申请人电话', null, '电话', '1');
INSERT INTO `sys_field` VALUES ('sqr_xm', 'sqr_xm', null, 'AH', '申请人姓名', 'text', 'string', null, null, '0', '1', '1', '1', '6', '姓名（中文）', '申请人姓名', null, '受邀人姓名', '1');
INSERT INTO `sys_field` VALUES ('sqr_zjhm', 'sqr_zjhm', null, 'AJ', '申请人证件号码', 'text', 'string', null, null, '0', '1', '1', '1', '8', '证件号码', '申请人证件号码', null, null, '1');
INSERT INTO `sys_field` VALUES ('sqr_zjlx', 'sqr_zjlx_show', 'sqr_zjlx_src', 'AI', '申请人证件类型', 'dist', 'string', 'ZJLX', null, '0', '0', '0', '1', '7', '证件类型', null, null, null, '0');
INSERT INTO `sys_field` VALUES ('sqtjrq', 'sqtjrq', null, 'AX', '申请提交日期', 'date', 'date', null, null, '0', '0', '0', '1', '21', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('vin', 'vin', null, 'BE', 'VIN号', 'text', 'string', null, null, '0', '0', '0', '1', '28', null, null, null, '已提车车架号', '1');
INSERT INTO `sys_field` VALUES ('xb', 'xb_show', 'xb_src', 'AQ', '性别', 'dist', 'string', 'XB', null, '0', '0', '0', '1', '15', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('xqah', 'xqah', null, 'CU', '兴趣爱好', 'text', 'string', null, null, '0', '0', '0', '1', '69', null, null, null, null, '1');
INSERT INTO `sys_field` VALUES ('xsjg', 'xsjg', null, 'CK', '销售价格', 'text', 'double', null, null, '0', '0', '0', '1', '59', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('yf', 'yf', null, 'AY', '月份', 'text', 'int', null, null, '0', '0', '0', '1', '22', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('yqr', 'yqr', null, 'CZ', '邀请人', 'text', 'string', null, null, '0', '0', '0', '1', '74', null, null, null, '邀请人', '1');
INSERT INTO `sys_field` VALUES ('ysr', 'ysr', null, 'BS', '月收入', 'text', 'int', null, null, '0', '0', '0', '1', '41', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('yyxhsl', 'yyxhsl_show', 'yyxhsl_src', 'CV', '拥有小孩数量', 'dist', 'string', 'YYHZSL', null, '0', '0', '0', '1', '70', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('zc', 'zc', null, 'BA', '周次', 'text', 'int', null, null, '0', '0', '0', '1', '24', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('zcjg', 'zcjg', null, 'CF', '资产价格', 'text', 'double', null, null, '0', '0', '0', '1', '54', null, null, null, null, '0');
INSERT INTO `sys_field` VALUES ('zw', 'zw', null, 'CB', '职位', 'text', 'string', null, null, '0', '0', '0', '1', '50', null, null, null, '职务', '1');
INSERT INTO `sys_field` VALUES ('zylx', 'zylx_show', 'zylx_src', 'BQ', '职业类型', 'dist', 'string', 'ZYLX', null, '0', '0', '0', '1', '39', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '客户信息', 'index.jspx', '1', '1');
INSERT INTO `sys_menu` VALUES ('2', '0', '系统管理', '#', '1', '10');
INSERT INTO `sys_menu` VALUES ('3', '2', '用户管理', 'admin/user/list.jspx', '1', '1');
INSERT INTO `sys_menu` VALUES ('4', '2', '角色管理', 'admin/role/list.jspx', '1', '2');
INSERT INTO `sys_menu` VALUES ('5', '2', '系统功能管理', 'admin/menu/list.jspx', '1', '3');
INSERT INTO `sys_menu` VALUES ('6', '1', '客户信息查询', 'cm/list.jspx', '1', '2');
INSERT INTO `sys_menu` VALUES ('7', '2', '组织机构管理', 'admin/org/list.jspx', '1', '4');
INSERT INTO `sys_menu` VALUES ('8', '1', '新增客户信息', 'cm/add.jspx', '1', '3');
INSERT INTO `sys_menu` VALUES ('9', '1', '修改客户信息', 'cm/edit.jspx', '0', '1');
INSERT INTO `sys_menu` VALUES ('10', '1', '删除客户信息', 'cm/delete.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('11', '2', '普通字典管理', 'admin/dist/list.jspx', '1', '5');
INSERT INTO `sys_menu` VALUES ('12', '2', '树形字典管理', 'admin/tree/list.jspx', '1', '6');
INSERT INTO `sys_menu` VALUES ('13', '2', '字段配置', 'admin/field/list.jspx', '1', '7');
INSERT INTO `sys_menu` VALUES ('14', '1', '导入客户信息', 'cm/imp.jspx', '1', '4');
INSERT INTO `sys_menu` VALUES ('15', '11', '新增字典', 'admin/dist/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('16', '11', '修改字典', 'admin/dist/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('17', '11', '删除字典', 'admin/dist/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('18', '13', '修改字段配置', 'admin/field/update.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('19', '5', '新增系统功能', 'admin/menu/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('20', '5', '修改系统功能', 'admin/menu/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('21', '5', '删除系统功能', 'admin/menu/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('22', '7', '新增组织机构', 'admin/org/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('23', '7', '修改组织机构', 'admin/org/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('24', '7', '删除组织机构', 'admin/org/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('25', '4', '新增角色', 'admin/role/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('26', '4', '修改角色', 'admin/role/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('27', '4', '删除角色', 'admin/role/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('28', '12', '新增树字典', 'admin/tree/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('29', '12', '修改树字典', 'admin/tree/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('30', '12', '删除树字典', 'admin/tree/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('31', '3', '新增用户', 'admin/user/add.do', '0', '2');
INSERT INTO `sys_menu` VALUES ('32', '3', '修改用户', 'admin/user/update.do', '0', '3');
INSERT INTO `sys_menu` VALUES ('33', '3', '删除用户', 'admin/user/delete.do', '0', '4');
INSERT INTO `sys_menu` VALUES ('34', '11', '字典列表', 'admin/dist/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('35', '5', '系统功能列表', 'admin/menu/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('36', '7', '组织机构列表', 'admin/org/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('37', '4', '角色列表', 'admin/role/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('38', '12', '树字典列表', 'admin/tree/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('39', '3', '用户列表', 'admin/user/list.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('40', '13', '字段列表', 'admin/field/loadAll.do', '0', '1');
INSERT INTO `sys_menu` VALUES ('41', '1', '导出客户信息', 'cm/exp.do', '0', '5');
INSERT INTO `sys_menu` VALUES ('42', '1', '客户信息明细', 'cm/detail.jspx', '0', '6');
INSERT INTO `sys_menu` VALUES ('43', '1', '批量删除客户信息', 'cm/deleteBatch.do', '0', '2');
INSERT INTO `sys_org` VALUES ('104', '1', '0', '东北营销部', ',104,');
INSERT INTO `sys_org` VALUES ('105', '1', '0', '华北营销部', ',105,');
INSERT INTO `sys_org` VALUES ('106', '1', '0', '华东营销部', ',106,');
INSERT INTO `sys_org` VALUES ('107', '1', '0', '华南营销部', ',107,');
INSERT INTO `sys_org` VALUES ('108', '1', '0', '华中营销部', ',108,');
INSERT INTO `sys_org` VALUES ('109', '1', '0', '京津营销部', ',109,');
INSERT INTO `sys_org` VALUES ('110', '1', '0', '上海营销部', ',110,');
INSERT INTO `sys_org` VALUES ('111', '1', '0', '深圳营销部', ',111,');
INSERT INTO `sys_org` VALUES ('112', '1', '0', '西北营销部', ',112,');
INSERT INTO `sys_org` VALUES ('113', '1', '0', '西南营销部', ',113,');
INSERT INTO `sys_org` VALUES ('119', '2', '104', '长春大区', ',104,119,');
INSERT INTO `sys_org` VALUES ('120', '2', '104', '哈尔滨大区', ',104,120,');
INSERT INTO `sys_org` VALUES ('121', '2', '104', '呼市大区', ',104,121,');
INSERT INTO `sys_org` VALUES ('122', '2', '104', '辽北大区', ',104,122,');
INSERT INTO `sys_org` VALUES ('123', '2', '104', '辽南大区', ',104,123,');
INSERT INTO `sys_org` VALUES ('124', '2', '105', '保定大区', ',105,124,');
INSERT INTO `sys_org` VALUES ('125', '2', '105', '济南大区', ',105,125,');
INSERT INTO `sys_org` VALUES ('126', '2', '105', '临汾大区', ',105,126,');
INSERT INTO `sys_org` VALUES ('127', '2', '105', '临沂大区', ',105,127,');
INSERT INTO `sys_org` VALUES ('128', '2', '105', '青岛大区', ',105,128,');
INSERT INTO `sys_org` VALUES ('129', '2', '105', '石家庄大区', ',105,129,');
INSERT INTO `sys_org` VALUES ('130', '2', '105', '太原大区', ',105,130,');
INSERT INTO `sys_org` VALUES ('131', '2', '105', '唐山大区', ',105,131,');
INSERT INTO `sys_org` VALUES ('132', '2', '105', '潍坊大区', ',105,132,');
INSERT INTO `sys_org` VALUES ('133', '2', '106', '福州大区', ',106,133,');
INSERT INTO `sys_org` VALUES ('134', '2', '106', '杭州大区', ',106,134,');
INSERT INTO `sys_org` VALUES ('135', '2', '106', '合肥大区', ',106,135,');
INSERT INTO `sys_org` VALUES ('136', '2', '106', '金华大区', ',106,136,');
INSERT INTO `sys_org` VALUES ('137', '2', '106', '南京大区', ',106,137,');
INSERT INTO `sys_org` VALUES ('138', '2', '106', '南通大区', ',106,138,');
INSERT INTO `sys_org` VALUES ('139', '2', '106', '宁波大区', ',106,139,');
INSERT INTO `sys_org` VALUES ('140', '2', '106', '苏州大区', ',106,140,');
INSERT INTO `sys_org` VALUES ('141', '2', '106', '温州大区', ',106,141,');
INSERT INTO `sys_org` VALUES ('142', '2', '107', '佛山大区', ',107,142,');
INSERT INTO `sys_org` VALUES ('143', '2', '107', '广州大区', ',107,143,');
INSERT INTO `sys_org` VALUES ('144', '2', '107', '南宁大区', ',107,144,');
INSERT INTO `sys_org` VALUES ('145', '2', '107', '莞珠大区', ',107,145,');
INSERT INTO `sys_org` VALUES ('146', '2', '107', '粤东大区', ',107,146,');
INSERT INTO `sys_org` VALUES ('147', '2', '108', '南昌大区', ',108,147,');
INSERT INTO `sys_org` VALUES ('148', '2', '108', '武汉大区', ',108,148,');
INSERT INTO `sys_org` VALUES ('149', '2', '108', '湘北大区', ',108,149,');
INSERT INTO `sys_org` VALUES ('150', '2', '108', '湘南大区', ',108,150,');
INSERT INTO `sys_org` VALUES ('151', '2', '108', '豫北大区', ',108,151,');
INSERT INTO `sys_org` VALUES ('152', '2', '108', '豫南大区', ',108,152,');
INSERT INTO `sys_org` VALUES ('153', '2', '108', '豫中大区', ',108,153,');
INSERT INTO `sys_org` VALUES ('154', '2', '109', '北京大区', ',109,154,');
INSERT INTO `sys_org` VALUES ('155', '2', '109', '天津大区', ',109,155,');
INSERT INTO `sys_org` VALUES ('156', '2', '110', '上海二区', ',110,156,');
INSERT INTO `sys_org` VALUES ('157', '2', '110', '上海三区', ',110,157,');
INSERT INTO `sys_org` VALUES ('158', '2', '110', '上海一区', ',110,158,');
INSERT INTO `sys_org` VALUES ('159', '2', '111', '宝安大区', ',111,159,');
INSERT INTO `sys_org` VALUES ('160', '2', '111', '福田大区', ',111,160,');
INSERT INTO `sys_org` VALUES ('161', '2', '111', '龙岗大区', ',111,161,');
INSERT INTO `sys_org` VALUES ('162', '2', '111', '龙华大区', ',111,162,');
INSERT INTO `sys_org` VALUES ('163', '2', '112', '汉中大区', ',112,163,');
INSERT INTO `sys_org` VALUES ('164', '2', '112', '兰州大区', ',112,164,');
INSERT INTO `sys_org` VALUES ('165', '2', '112', '新疆大区', ',112,165,');
INSERT INTO `sys_org` VALUES ('166', '2', '112', '延安大区', ',112,166,');
INSERT INTO `sys_org` VALUES ('167', '2', '113', '成都大区', ',113,167,');
INSERT INTO `sys_org` VALUES ('168', '2', '113', '川北大区', ',113,168,');
INSERT INTO `sys_org` VALUES ('169', '2', '113', '川南大区', ',113,169,');
INSERT INTO `sys_org` VALUES ('170', '2', '113', '贵阳大区', ',113,170,');
INSERT INTO `sys_org` VALUES ('171', '2', '113', '昆明大区', ',113,171,');
INSERT INTO `sys_org` VALUES ('172', '2', '113', '重庆大区', ',113,172,');
INSERT INTO `sys_org` VALUES ('182', '3', '119', '长春兴盛汽车销售有限公司', ',104,119,182,');
INSERT INTO `sys_org` VALUES ('183', '3', '119', '长春市合盛和汽车贸易有限公司', ',104,119,183,');
INSERT INTO `sys_org` VALUES ('184', '3', '119', '吉林市平远汽车经销有限公司', ',104,119,184,');
INSERT INTO `sys_org` VALUES ('185', '3', '119', '白山市城东名车销售服务有限公司', ',104,119,185,');
INSERT INTO `sys_org` VALUES ('186', '3', '119', '吉林省恒亚汽车销售服务有限公司', ',104,119,186,');
INSERT INTO `sys_org` VALUES ('187', '3', '119', '四平市博成汽车销售服务有限公司', ',104,119,187,');
INSERT INTO `sys_org` VALUES ('188', '3', '119', '延吉嘉航汽车销售服务有限公司', ',104,119,188,');
INSERT INTO `sys_org` VALUES ('189', '3', '119', '松原市凯福顺通汽车销售服务有限公司', ',104,119,189,');
INSERT INTO `sys_org` VALUES ('190', '3', '120', '大庆市兄弟汽车销售有限公司', ',104,120,190,');
INSERT INTO `sys_org` VALUES ('191', '3', '120', '齐齐哈尔粤华远通汽车销售有限公司', ',104,120,191,');
INSERT INTO `sys_org` VALUES ('192', '3', '120', '齐齐哈尔龙港汽车销售有限公司', ',104,120,192,');
INSERT INTO `sys_org` VALUES ('193', '3', '120', '哈尔滨振海汽车销售服务有限公司', ',104,120,193,');
INSERT INTO `sys_org` VALUES ('194', '3', '120', '黑龙江宏达旭龙汽车销售服务有限公司', ',104,120,194,');
INSERT INTO `sys_org` VALUES ('195', '3', '120', '绥化昌隆汽车销售服务有限公司', ',104,120,195,');
INSERT INTO `sys_org` VALUES ('196', '3', '120', '哈尔滨市宏达嘉龙汽车销售维修服务有限公司', ',104,120,196,');
INSERT INTO `sys_org` VALUES ('197', '3', '120', '牡丹江市震飞汽车交易市场有限公司', ',104,120,197,');
INSERT INTO `sys_org` VALUES ('198', '3', '120', '佳木斯华驰汽车销售服务有限公司', ',104,120,198,');
INSERT INTO `sys_org` VALUES ('199', '3', '120', '哈尔滨天盛达汽车销售有限公司', ',104,120,199,');
INSERT INTO `sys_org` VALUES ('200', '3', '121', '鄂尔多斯市东胜区福邦汽车商贸有限责任公司', ',104,121,200,');
INSERT INTO `sys_org` VALUES ('201', '3', '121', '兴安盟世源汽车贸易有限公司', ',104,121,201,');
INSERT INTO `sys_org` VALUES ('202', '3', '121', '包头市华迪汽车销售服务有限责任公司', ',104,121,202,');
INSERT INTO `sys_org` VALUES ('203', '3', '121', '包头市福迪汽车贸易有限公司', ',104,121,203,');
INSERT INTO `sys_org` VALUES ('204', '3', '121', '赤峰百恩商贸有限责任公司', ',104,121,204,');
INSERT INTO `sys_org` VALUES ('205', '3', '121', '赤峰金基摩托车销售有限公司', ',104,121,205,');
INSERT INTO `sys_org` VALUES ('206', '3', '121', '乌海市嘉航汽车销售有限公司', ',104,121,206,');
INSERT INTO `sys_org` VALUES ('207', '3', '121', '锡林郭勒盟博杰商贸有限公司', ',104,121,207,');
INSERT INTO `sys_org` VALUES ('208', '3', '121', '内蒙古恒泰翔汽车销售服务有限公司', ',104,121,208,');
INSERT INTO `sys_org` VALUES ('209', '3', '121', '通辽市九赢车辆销售有限责任公司', ',104,121,209,');
INSERT INTO `sys_org` VALUES ('210', '3', '121', '内蒙古长青汽车贸易有限公司', ',104,121,210,');
INSERT INTO `sys_org` VALUES ('211', '3', '122', '辽宁兴锐汽车销售服务有限公司', ',104,122,211,');
INSERT INTO `sys_org` VALUES ('212', '3', '122', '阜新市永兴汽车销售服务有限公司', ',104,122,212,');
INSERT INTO `sys_org` VALUES ('213', '3', '122', '朝阳车世界汽车销售维修服务有限公司', ',104,122,213,');
INSERT INTO `sys_org` VALUES ('214', '3', '122', '铁岭市顺峰(集团)顺鑫汽车销售服务有限公司', ',104,122,214,');
INSERT INTO `sys_org` VALUES ('215', '3', '122', '辽宁兴旗汽车销售服务有限公司', ',104,122,215,');
INSERT INTO `sys_org` VALUES ('216', '3', '122', '沈阳美驰虎汽车销售服务有限公司', ',104,122,216,');
INSERT INTO `sys_org` VALUES ('217', '3', '122', '辽阳兴旗汽车销售服务有限公司', ',104,122,217,');
INSERT INTO `sys_org` VALUES ('218', '3', '122', '辽宁英汇汽车贸易有限公司', ',104,122,218,');
INSERT INTO `sys_org` VALUES ('219', '3', '123', '大连众义达汽车销售有限公司', ',104,123,219,');
INSERT INTO `sys_org` VALUES ('220', '3', '123', '营口天福新迪汽车销售有限公司', ',104,123,220,');
INSERT INTO `sys_org` VALUES ('221', '3', '123', '鞍山安迪汽车销售服务有限公司', ',104,123,221,');
INSERT INTO `sys_org` VALUES ('222', '3', '123', '锦州盛龙汽车销售服务有限公司', ',104,123,222,');
INSERT INTO `sys_org` VALUES ('223', '3', '123', '瓦房店市新世纪汽车修配有限公司', ',104,123,223,');
INSERT INTO `sys_org` VALUES ('224', '3', '123', '大连龙威汽车贸易有限公司', ',104,123,224,');
INSERT INTO `sys_org` VALUES ('225', '3', '123', '鞍山众迪汽车销售服务有限公司', ',104,123,225,');
INSERT INTO `sys_org` VALUES ('226', '3', '123', '葫芦岛鑫恒源贸易有限公司', ',104,123,226,');
INSERT INTO `sys_org` VALUES ('227', '3', '123', '海城市众锐汽车销售服务有限公司', ',104,123,227,');
INSERT INTO `sys_org` VALUES ('228', '3', '124', '保定市顺捷物资贸易有限公司', ',105,124,228,');
INSERT INTO `sys_org` VALUES ('229', '3', '124', '涿州中煤华谊汽车销售服务有限公司', ',105,124,229,');
INSERT INTO `sys_org` VALUES ('230', '3', '124', '保定市天地人合汽车销售服务有限公司', ',105,124,230,');
INSERT INTO `sys_org` VALUES ('231', '3', '124', '衡水巨森汽贸有限责任公司', ',105,124,231,');
INSERT INTO `sys_org` VALUES ('232', '3', '124', '沧州市骏驰汽车销售有限公司', ',105,124,232,');
INSERT INTO `sys_org` VALUES ('233', '3', '124', '河北三胜汽车贸易有限公司', ',105,124,233,');
INSERT INTO `sys_org` VALUES ('234', '3', '124', '定州市汇盛汽车贸易有限公司', ',105,124,234,');
INSERT INTO `sys_org` VALUES ('235', '3', '125', '齐河凯迪汽车贸易有限公司', ',105,125,235,');
INSERT INTO `sys_org` VALUES ('236', '3', '125', '德州凯威达汽贸有限公司', ',105,125,236,');
INSERT INTO `sys_org` VALUES ('237', '3', '125', '聊城市同辉汽车销售有限公司', ',105,125,237,');
INSERT INTO `sys_org` VALUES ('238', '3', '125', '滨州市昌华汽车销售服务有限公司', ',105,125,238,');
INSERT INTO `sys_org` VALUES ('239', '3', '125', '济南菲源汽车销售服务有限公司', ',105,125,239,');
INSERT INTO `sys_org` VALUES ('240', '3', '125', '济南乾城汽车贸易有限公司', ',105,125,240,');
INSERT INTO `sys_org` VALUES ('241', '3', '125', '山东滨州昌远汽车销售有限公司', ',105,125,241,');
INSERT INTO `sys_org` VALUES ('242', '3', '125', '济南乾盛汽车销售有限公司', ',105,125,242,');
INSERT INTO `sys_org` VALUES ('243', '3', '126', '山西智腾汽车营销服务有限公司', ',105,126,243,');
INSERT INTO `sys_org` VALUES ('244', '3', '126', '山西省长治市飞路汽车贸易有限公司', ',105,126,244,');
INSERT INTO `sys_org` VALUES ('245', '3', '126', '长治市四合贸易有限公司', ',105,126,245,');
INSERT INTO `sys_org` VALUES ('246', '3', '126', '运城市华森汽车销售服务有限公司', ',105,126,246,');
INSERT INTO `sys_org` VALUES ('247', '3', '126', '临汾悦迪汽车销售服务有限公司', ',105,126,247,');
INSERT INTO `sys_org` VALUES ('248', '3', '126', '临汾大昌汽车服务有限公司', ',105,126,248,');
INSERT INTO `sys_org` VALUES ('249', '3', '126', '晋城市觉安汽车销售服务有限公司', ',105,126,249,');
INSERT INTO `sys_org` VALUES ('250', '3', '126', '晋城市元唐汽车销售有限公司', ',105,126,250,');
INSERT INTO `sys_org` VALUES ('251', '3', '126', '大同市银狮汽车销售服务有限公司', ',105,126,251,');
INSERT INTO `sys_org` VALUES ('252', '3', '126', '运城市鑫泽汽车销售有限公司', ',105,126,252,');
INSERT INTO `sys_org` VALUES ('253', '3', '127', '滕州市安驰商贸有限公司', ',105,127,253,');
INSERT INTO `sys_org` VALUES ('254', '3', '127', '枣庄奚仲汽车销售有限公司', ',105,127,254,');
INSERT INTO `sys_org` VALUES ('255', '3', '127', '济宁交运聚丰汽车销售服务有限公司', ',105,127,255,');
INSERT INTO `sys_org` VALUES ('256', '3', '127', '山东震德汽车销售有限公司', ',105,127,256,');
INSERT INTO `sys_org` VALUES ('257', '3', '127', '莱芜市中正汽车销售服务有限公司', ',105,127,257,');
INSERT INTO `sys_org` VALUES ('258', '3', '127', '临沂金鼎汽车贸易有限公司', ',105,127,258,');
INSERT INTO `sys_org` VALUES ('259', '3', '127', '临沂世鼎商贸有限公司', ',105,127,259,');
INSERT INTO `sys_org` VALUES ('260', '3', '127', '临沂瑞鼎汽车销售服务有限公司', ',105,127,260,');
INSERT INTO `sys_org` VALUES ('261', '3', '127', '泰安德瑞汽车销售有限公司', ',105,127,261,');
INSERT INTO `sys_org` VALUES ('262', '3', '127', '莱芜市鑫正汽车销售服务有限公司', ',105,127,262,');
INSERT INTO `sys_org` VALUES ('263', '3', '127', '菏泽润众汽车工业科技有限公司', ',105,127,263,');
INSERT INTO `sys_org` VALUES ('264', '3', '127', '邹城润泰汽车销售服务有限公司', ',105,127,264,');
INSERT INTO `sys_org` VALUES ('265', '3', '127', '曲阜市丰泰汽车销售服务有限公司', ',105,127,265,');
INSERT INTO `sys_org` VALUES ('266', '3', '128', '威海市正安汽车销售有限公司', ',105,128,266,');
INSERT INTO `sys_org` VALUES ('267', '3', '128', '威海君安汽车销售有限公司', ',105,128,267,');
INSERT INTO `sys_org` VALUES ('268', '3', '128', '日照圣豪汽车销售服务有限公司', ',105,128,268,');
INSERT INTO `sys_org` VALUES ('269', '3', '128', '青岛蓝天远景汽车销售服务有限公司', ',105,128,269,');
INSERT INTO `sys_org` VALUES ('270', '3', '128', '青岛华驰汽车销售服务有限公司', ',105,128,270,');
INSERT INTO `sys_org` VALUES ('271', '3', '128', '青岛仕通达汽车销售服务有限公司', ',105,128,271,');
INSERT INTO `sys_org` VALUES ('272', '3', '128', '青岛明梓东昱汽车销售服务有限公司', ',105,128,272,');
INSERT INTO `sys_org` VALUES ('273', '3', '128', '日照国恒汽车贸易有限公司莒县分公司', ',105,128,273,');
INSERT INTO `sys_org` VALUES ('274', '3', '129', '邯郸大丰汽车销售服务有限公司', ',105,129,274,');
INSERT INTO `sys_org` VALUES ('275', '3', '129', '邢台和信汽车贸易有限公司', ',105,129,275,');
INSERT INTO `sys_org` VALUES ('276', '3', '129', '河北三行汽车贸易股份有限公司', ',105,129,276,');
INSERT INTO `sys_org` VALUES ('277', '3', '129', '邢台大丰汽车有限公司', ',105,129,277,');
INSERT INTO `sys_org` VALUES ('278', '3', '129', '河北习实康鑫汽车贸易有限公司', ',105,129,278,');
INSERT INTO `sys_org` VALUES ('279', '3', '129', '河北同驰汽车贸易有限公司', ',105,129,279,');
INSERT INTO `sys_org` VALUES ('280', '3', '129', '邯郸市福达汽车贸易有限公司', ',105,129,280,');
INSERT INTO `sys_org` VALUES ('281', '3', '129', '河北兴迪汽车销售有限公司', ',105,129,281,');
INSERT INTO `sys_org` VALUES ('282', '3', '130', '山西呈泽工贸有限公司', ',105,130,282,');
INSERT INTO `sys_org` VALUES ('283', '3', '130', '孝义市正达汽车销售服务有限公司', ',105,130,283,');
INSERT INTO `sys_org` VALUES ('284', '3', '130', '山西精华伟业汽车服务有限公司', ',105,130,284,');
INSERT INTO `sys_org` VALUES ('285', '3', '130', '山西新启迪汽车贸易有限公司', ',105,130,285,');
INSERT INTO `sys_org` VALUES ('286', '3', '130', '山西新千年工贸有限公司万国汽车销售分公司', ',105,130,286,');
INSERT INTO `sys_org` VALUES ('287', '3', '130', '太原鑫源泰汽车服务有限公司', ',105,130,287,');
INSERT INTO `sys_org` VALUES ('288', '3', '130', '山西亚迪利汽车贸易有限公司', ',105,130,288,');
INSERT INTO `sys_org` VALUES ('289', '3', '130', '阳泉恒瑞物贸有限责任公司', ',105,130,289,');
INSERT INTO `sys_org` VALUES ('290', '3', '130', '太原市盛世开元汽车销售有限公司', ',105,130,290,');
INSERT INTO `sys_org` VALUES ('291', '3', '131', '廊坊市瑞崇汽车销售有限公司', ',105,131,291,');
INSERT INTO `sys_org` VALUES ('292', '3', '131', '承德市开发区源泉汽车贸易有限公司', ',105,131,292,');
INSERT INTO `sys_org` VALUES ('293', '3', '131', '张家口市贵宾汽贸汽修有限公司', ',105,131,293,');
INSERT INTO `sys_org` VALUES ('294', '3', '131', '秦皇岛机电比亚迪汽车销售服务有限公司', ',105,131,294,');
INSERT INTO `sys_org` VALUES ('295', '3', '131', '唐山环耀汽车销售服务有限公司', ',105,131,295,');
INSERT INTO `sys_org` VALUES ('296', '3', '131', '唐山市金利海汽车销售有限公司', ',105,131,296,');
INSERT INTO `sys_org` VALUES ('297', '3', '131', '霸州市鑫时利汽车销售有限公司', ',105,131,297,');
INSERT INTO `sys_org` VALUES ('298', '3', '132', '烟台太古汽车销售有限公司', ',105,132,298,');
INSERT INTO `sys_org` VALUES ('299', '3', '132', '烟台交运集团轿车销售服务有限公司', ',105,132,299,');
INSERT INTO `sys_org` VALUES ('300', '3', '132', '烟台华鼎陆迪汽车销售服务有限公司', ',105,132,300,');
INSERT INTO `sys_org` VALUES ('301', '3', '132', '烟台市太力汽车服务有限公司', ',105,132,301,');
INSERT INTO `sys_org` VALUES ('302', '3', '132', '莱州太兴汽车销售服务有限公司', ',105,132,302,');
INSERT INTO `sys_org` VALUES ('303', '3', '132', '莱州市富顺汽车销售服务有限公司', ',105,132,303,');
INSERT INTO `sys_org` VALUES ('304', '3', '132', '山东新星集团有限公司', ',105,132,304,');
INSERT INTO `sys_org` VALUES ('305', '3', '132', '潍坊金茂盛汽车销售服务有限公司', ',105,132,305,');
INSERT INTO `sys_org` VALUES ('306', '3', '132', '诸城市亚飞汽车销售服务有限公司', ',105,132,306,');
INSERT INTO `sys_org` VALUES ('307', '3', '132', '潍坊圣世骏通汽车销售服务有限公司', ',105,132,307,');
INSERT INTO `sys_org` VALUES ('308', '3', '132', '东营齐胜汽车销售有限公司', ',105,132,308,');
INSERT INTO `sys_org` VALUES ('309', '3', '133', '三明市万通经贸有限公司', ',106,133,309,');
INSERT INTO `sys_org` VALUES ('310', '3', '133', '福建省国安锦轮汽车贸易有限责任公司', ',106,133,310,');
INSERT INTO `sys_org` VALUES ('311', '3', '133', '泉州鸿鑫汽车销售服务有限公司', ',106,133,311,');
INSERT INTO `sys_org` VALUES ('312', '3', '133', '福建省粤迪汽车销售有限公司', ',106,133,312,');
INSERT INTO `sys_org` VALUES ('313', '3', '133', '福建龙迪鑫汽车销售服务有限公司', ',106,133,313,');
INSERT INTO `sys_org` VALUES ('314', '3', '133', '莆田市亿豪汽车贸易有限公司', ',106,133,314,');
INSERT INTO `sys_org` VALUES ('315', '3', '133', '福建省美嘉鑫迪贸易有限公司', ',106,133,315,');
INSERT INTO `sys_org` VALUES ('316', '3', '133', '漳州华骏天捷汽车贸易有限公司', ',106,133,316,');
INSERT INTO `sys_org` VALUES ('317', '3', '133', '厦门市佳凯盛汽车贸易有限公司', ',106,133,317,');
INSERT INTO `sys_org` VALUES ('318', '3', '134', '绍兴市迪远汽车销售有限公司', ',106,134,318,');
INSERT INTO `sys_org` VALUES ('319', '3', '134', '绍兴市科能汽车销售服务有限公司', ',106,134,319,');
INSERT INTO `sys_org` VALUES ('320', '3', '134', '绍兴上虞浩通商贸有限公司', ',106,134,320,');
INSERT INTO `sys_org` VALUES ('321', '3', '134', '诸暨科大汽车销售服务有限公司', ',106,134,321,');
INSERT INTO `sys_org` VALUES ('322', '3', '134', '杭州保捷汽车有限公司', ',106,134,322,');
INSERT INTO `sys_org` VALUES ('323', '3', '134', '杭州瑞通汽车销售有限公司', ',106,134,323,');
INSERT INTO `sys_org` VALUES ('324', '3', '134', '海宁海昌汽车维修装饰有限公司', ',106,134,324,');
INSERT INTO `sys_org` VALUES ('325', '3', '134', '长兴宝迪汽车销售服务有限公司', ',106,134,325,');
INSERT INTO `sys_org` VALUES ('326', '3', '134', '嘉兴正浩汽车销售有限公司', ',106,134,326,');
INSERT INTO `sys_org` VALUES ('327', '3', '134', '嘉兴市桥银经贸有限公司', ',106,134,327,');
INSERT INTO `sys_org` VALUES ('328', '3', '134', '浙江迪信汽车销售服务有限公司', ',106,134,328,');
INSERT INTO `sys_org` VALUES ('329', '3', '135', '安徽中迪汽车销售服务有限公司', ',106,135,329,');
INSERT INTO `sys_org` VALUES ('330', '3', '135', '安庆市鑫晨汽车贸易有限公司', ',106,135,330,');
INSERT INTO `sys_org` VALUES ('331', '3', '135', '铜陵市宁瑞汽车销售有限责任公司', ',106,135,331,');
INSERT INTO `sys_org` VALUES ('332', '3', '135', '黄山万迪汽车销售服务有限公司', ',106,135,332,');
INSERT INTO `sys_org` VALUES ('333', '3', '135', '安徽金迪汽车销售服务有限公司', ',106,135,333,');
INSERT INTO `sys_org` VALUES ('334', '3', '135', '安徽翔迪汽车销售服务有限公司', ',106,135,334,');
INSERT INTO `sys_org` VALUES ('335', '3', '135', '安徽省骏迪汽车销售有限公司', ',106,135,335,');
INSERT INTO `sys_org` VALUES ('336', '3', '135', '蒙城县金田汽车销售有限责任公司', ',106,135,336,');
INSERT INTO `sys_org` VALUES ('337', '3', '135', '合肥新迪汽车销售服务有限公司', ',106,135,337,');
INSERT INTO `sys_org` VALUES ('338', '3', '135', '阜阳海迪汽车销售服务有限公司', ',106,135,338,');
INSERT INTO `sys_org` VALUES ('339', '3', '135', '蚌埠市汇通汽车销售有限公司', ',106,135,339,');
INSERT INTO `sys_org` VALUES ('340', '3', '135', '滁州东和泰昌汽车销售服务有限公司', ',106,135,340,');
INSERT INTO `sys_org` VALUES ('341', '3', '135', '淮北市迪安特汽车销售服务有限公司', ',106,135,341,');
INSERT INTO `sys_org` VALUES ('342', '3', '135', '马鞍山市顺迪汽车销售服务有限公司', ',106,135,342,');
INSERT INTO `sys_org` VALUES ('343', '3', '135', '亳州市新梦迪汽车销售有限责任公司', ',106,135,343,');
INSERT INTO `sys_org` VALUES ('344', '3', '136', '义乌市迪远汽车销售服务有限公司', ',106,136,344,');
INSERT INTO `sys_org` VALUES ('345', '3', '136', '金华亚通汽车销售有限公司', ',106,136,345,');
INSERT INTO `sys_org` VALUES ('346', '3', '136', '永康市亚通汽车销售服务有限公司', ',106,136,346,');
INSERT INTO `sys_org` VALUES ('347', '3', '136', '丽水市万迪汽车销售服务有限公司', ',106,136,347,');
INSERT INTO `sys_org` VALUES ('348', '3', '136', '金华市鑫迪汽车销售有限公司', ',106,136,348,');
INSERT INTO `sys_org` VALUES ('349', '3', '136', '东阳迪远汽车销售有限公司', ',106,136,349,');
INSERT INTO `sys_org` VALUES ('350', '3', '136', '义乌市利邦汽车销售服务有限公司', ',106,136,350,');
INSERT INTO `sys_org` VALUES ('351', '3', '136', '衢州迪远汽车销售有限公司', ',106,136,351,');
INSERT INTO `sys_org` VALUES ('352', '3', '137', '镇江弘帆汽车销售服务有限公司', ',106,137,352,');
INSERT INTO `sys_org` VALUES ('353', '3', '137', '江苏雨田都灵汽车销售服务有限公司', ',106,137,353,');
INSERT INTO `sys_org` VALUES ('354', '3', '137', '扬州新大华汽车销售服务有限公司', ',106,137,354,');
INSERT INTO `sys_org` VALUES ('355', '3', '137', '徐州金迪汽车销售服务有限公司', ',106,137,355,');
INSERT INTO `sys_org` VALUES ('356', '3', '137', '徐州平迪汽车销售服务有限公司', ',106,137,356,');
INSERT INTO `sys_org` VALUES ('357', '3', '137', '江苏恒佳新能源汽车销售服务有限公司', ',106,137,357,');
INSERT INTO `sys_org` VALUES ('358', '3', '138', '盐城市洪兆连汽车贸易有限公司', ',106,138,358,');
INSERT INTO `sys_org` VALUES ('359', '3', '138', '江苏宝华汽车实业有限公司', ',106,138,359,');
INSERT INTO `sys_org` VALUES ('360', '3', '138', '泰州大亚汽车销售服务有限公司', ',106,138,360,');
INSERT INTO `sys_org` VALUES ('361', '3', '138', '泰州市烔圣新能源汽车销售服务有限公司', ',106,138,361,');
INSERT INTO `sys_org` VALUES ('362', '3', '138', '连云港市苍梧汽车销售有限公司', ',106,138,362,');
INSERT INTO `sys_org` VALUES ('363', '3', '138', '锐豪南通汽车销售服务有限公司', ',106,138,363,');
INSERT INTO `sys_org` VALUES ('364', '3', '138', '弘仁南通汽车销售服务有限公司', ',106,138,364,');
INSERT INTO `sys_org` VALUES ('365', '3', '139', '宁波中腾汽车销售服务有限公司', ',106,139,365,');
INSERT INTO `sys_org` VALUES ('366', '3', '139', '宁波甬迪汽车销售服务有限公司', ',106,139,366,');
INSERT INTO `sys_org` VALUES ('367', '3', '139', '慈溪新慈鑫汽车销售服务有限公司', ',106,139,367,');
INSERT INTO `sys_org` VALUES ('368', '3', '139', '宁波洛兹汽车销售服务有限公司', ',106,139,368,');
INSERT INTO `sys_org` VALUES ('369', '3', '139', '宁波舜迪汽车销售服务有限公司', ',106,139,369,');
INSERT INTO `sys_org` VALUES ('370', '3', '139', '宁波市中诚汽车销售有限公司宁海分公司', ',106,139,370,');
INSERT INTO `sys_org` VALUES ('371', '3', '139', '宁波迪之杰新能源汽车销售服务有限公司', ',106,139,371,');
INSERT INTO `sys_org` VALUES ('372', '3', '140', '昆山市仁合新能源汽车销售有限公司', ',106,140,372,');
INSERT INTO `sys_org` VALUES ('373', '3', '140', '昆山市仁合新能源汽车销售有限公司太仓分公司', ',106,140,373,');
INSERT INTO `sys_org` VALUES ('374', '3', '140', '常州长安铃木汽车销售有限公司', ',106,140,374,');
INSERT INTO `sys_org` VALUES ('375', '3', '140', '常州金坛金牌汽车销售服务有限公司', ',106,140,375,');
INSERT INTO `sys_org` VALUES ('376', '3', '140', '江阴市同创汽车销售有限公司', ',106,140,376,');
INSERT INTO `sys_org` VALUES ('377', '3', '140', '无锡市越迪汽车销售有限公司', ',106,140,377,');
INSERT INTO `sys_org` VALUES ('378', '3', '140', '苏州元生新能源汽车销售服务有限公司', ',106,140,378,');
INSERT INTO `sys_org` VALUES ('379', '3', '140', '苏州市才富汽车服务有限公司', ',106,140,379,');
INSERT INTO `sys_org` VALUES ('380', '3', '140', '吴江日升汽车销售服务有限公司', ',106,140,380,');
INSERT INTO `sys_org` VALUES ('381', '3', '140', '张家港泰丰汽车销售服务有限公司', ',106,140,381,');
INSERT INTO `sys_org` VALUES ('382', '3', '140', '张家港市全顺汽车销售服务有限公司', ',106,140,382,');
INSERT INTO `sys_org` VALUES ('383', '3', '141', '台州市大禹汽车贸易有限公司', ',106,141,383,');
INSERT INTO `sys_org` VALUES ('384', '3', '141', '台州恒特汽车服务有限公司', ',106,141,384,');
INSERT INTO `sys_org` VALUES ('385', '3', '141', '台州市鑫迪汽车销售服务有限公司', ',106,141,385,');
INSERT INTO `sys_org` VALUES ('386', '3', '141', '台州恒之迪汽车服务有限公司', ',106,141,386,');
INSERT INTO `sys_org` VALUES ('387', '3', '141', '苍南华正汽车销售服务有限公司', ',106,141,387,');
INSERT INTO `sys_org` VALUES ('388', '3', '141', '温州欧龙机电有限公司', ',106,141,388,');
INSERT INTO `sys_org` VALUES ('389', '3', '141', '乐清市鸿胜汽车服务有限公司', ',106,141,389,');
INSERT INTO `sys_org` VALUES ('390', '3', '141', '温州正迪汽车有限公司', ',106,141,390,');
INSERT INTO `sys_org` VALUES ('391', '3', '141', '瑞安市铭迪汽车销售服务有限公司', ',106,141,391,');
INSERT INTO `sys_org` VALUES ('392', '3', '141', '浙江中南汽车贸易有限公司', ',106,141,392,');
INSERT INTO `sys_org` VALUES ('393', '3', '142', '佛山市键马汽车贸易有限公司', ',107,142,393,');
INSERT INTO `sys_org` VALUES ('394', '3', '142', '佛山市安迪通汽车贸易有限公司', ',107,142,394,');
INSERT INTO `sys_org` VALUES ('395', '3', '142', '佛山市顺德区东汽汽车销售服务有限公司', ',107,142,395,');
INSERT INTO `sys_org` VALUES ('396', '3', '142', '肇庆安迪通汽车服务有限公司', ',107,142,396,');
INSERT INTO `sys_org` VALUES ('397', '3', '142', '茂名石化汽车服务有限公司汽车销售分公司', ',107,142,397,');
INSERT INTO `sys_org` VALUES ('398', '3', '142', '阳江市江城区锋得行汽车销售服务有限公司', ',107,142,398,');
INSERT INTO `sys_org` VALUES ('399', '3', '142', '佛山市南海区宇翔汽车贸易有限公司', ',107,142,399,');
INSERT INTO `sys_org` VALUES ('400', '3', '142', '茂名市粤迪汽车贸易有限公司', ',107,142,400,');
INSERT INTO `sys_org` VALUES ('401', '3', '142', '清远市友盈汽车销售服务有限公司', ',107,142,401,');
INSERT INTO `sys_org` VALUES ('402', '3', '142', '韶关市锋得行汽车销售服务有限公司', ',107,142,402,');
INSERT INTO `sys_org` VALUES ('403', '3', '142', '清远锦昊城汽车销售服务有限公司', ',107,142,403,');
INSERT INTO `sys_org` VALUES ('404', '3', '142', '佛山机电设备有限公司', ',107,142,404,');
INSERT INTO `sys_org` VALUES ('405', '3', '143', '广东欧亚特汽车销售服务有限公司', ',107,143,405,');
INSERT INTO `sys_org` VALUES ('406', '3', '143', '广州志翔汽车贸易有限公司', ',107,143,406,');
INSERT INTO `sys_org` VALUES ('407', '3', '143', '广州市锦虹汽车销售服务有限公司', ',107,143,407,');
INSERT INTO `sys_org` VALUES ('408', '3', '143', '广州亚美迪汽车销售有限公司', ',107,143,408,');
INSERT INTO `sys_org` VALUES ('409', '3', '143', '广州东湖汽车销售服务有限公司', ',107,143,409,');
INSERT INTO `sys_org` VALUES ('410', '3', '143', '广州金昊城汽车销售服务有限公司', ',107,143,410,');
INSERT INTO `sys_org` VALUES ('411', '3', '143', '广州市鑫湾汽车贸易有限公司', ',107,143,411,');
INSERT INTO `sys_org` VALUES ('412', '3', '143', '广州市饰和汽车有限公司', ',107,143,412,');
INSERT INTO `sys_org` VALUES ('413', '3', '143', '广州宝昊城汽车销售服务有限公司', ',107,143,413,');
INSERT INTO `sys_org` VALUES ('414', '3', '144', '广西康和富利汽车贸易有限公司', ',107,144,414,');
INSERT INTO `sys_org` VALUES ('415', '3', '144', '南宁佳之迪汽车销售有限公司', ',107,144,415,');
INSERT INTO `sys_org` VALUES ('416', '3', '144', '桂林市乐丰汽车贸易有限公司', ',107,144,416,');
INSERT INTO `sys_org` VALUES ('417', '3', '144', '柳州市迪翔汽车贸易有限公司', ',107,144,417,');
INSERT INTO `sys_org` VALUES ('418', '3', '144', '广西百色佳宜汽车销售有限公司', ',107,144,418,');
INSERT INTO `sys_org` VALUES ('419', '3', '144', '海口翔飞汽车贸易有限公司', ',107,144,419,');
INSERT INTO `sys_org` VALUES ('420', '3', '144', '海口翔迪汽车服务有限公司', ',107,144,420,');
INSERT INTO `sys_org` VALUES ('421', '3', '145', '中山市三联汽车销售服务有限公司西区分公司', ',107,145,421,');
INSERT INTO `sys_org` VALUES ('422', '3', '145', '珠海市银河创业汽车销售有限公司', ',107,145,422,');
INSERT INTO `sys_org` VALUES ('423', '3', '145', '珠海市航鑫有限公司', ',107,145,423,');
INSERT INTO `sys_org` VALUES ('424', '3', '145', '中山市富茂汽车销售有限公司', ',107,145,424,');
INSERT INTO `sys_org` VALUES ('425', '3', '145', '江门市广瑞汽车贸易有限公司', ',107,145,425,');
INSERT INTO `sys_org` VALUES ('426', '3', '145', '东莞市建鹏汽车销售有限公司', ',107,145,426,');
INSERT INTO `sys_org` VALUES ('427', '3', '145', '东莞市兴发汽车贸易有限公司', ',107,145,427,');
INSERT INTO `sys_org` VALUES ('428', '3', '145', '东莞市锋得行汽车销售服务有限公司', ',107,145,428,');
INSERT INTO `sys_org` VALUES ('429', '3', '145', '东莞市周通泰汽车贸易有限公司', ',107,145,429,');
INSERT INTO `sys_org` VALUES ('430', '3', '145', '东莞市和盛佳汽车销售服务有限公司', ',107,145,430,');
INSERT INTO `sys_org` VALUES ('431', '3', '145', '东莞市勤力汽车贸易有限公司', ',107,145,431,');
INSERT INTO `sys_org` VALUES ('432', '3', '145', '开平市新俊汽车贸易有限公司', ',107,145,432,');
INSERT INTO `sys_org` VALUES ('433', '3', '145', '中山市悦禾汽车销售服务有限公司', ',107,145,433,');
INSERT INTO `sys_org` VALUES ('434', '3', '146', '汕头市驰宇汽车销售服务有限公司', ',107,146,434,');
INSERT INTO `sys_org` VALUES ('435', '3', '146', '惠州市越景汽车销售服务有限公司', ',107,146,435,');
INSERT INTO `sys_org` VALUES ('436', '3', '146', '惠州市惠迪汽车贸易有限公司', ',107,146,436,');
INSERT INTO `sys_org` VALUES ('437', '3', '146', '惠州市金环怡汽车销售有限公司', ',107,146,437,');
INSERT INTO `sys_org` VALUES ('438', '3', '146', '河源市永发汽车销售有限公司', ',107,146,438,');
INSERT INTO `sys_org` VALUES ('439', '3', '146', '揭阳市鹏发车业有限公司', ',107,146,439,');
INSERT INTO `sys_org` VALUES ('440', '3', '146', '梅州市鸿彤汽车贸易有限公司', ',107,146,440,');
INSERT INTO `sys_org` VALUES ('441', '3', '146', '潮州市建辉汽车贸易有限公司', ',107,146,441,');
INSERT INTO `sys_org` VALUES ('442', '3', '146', '汕尾锦虹汽车销售服务有限公司', ',107,146,442,');
INSERT INTO `sys_org` VALUES ('443', '3', '147', '九江天源汽车销售服务有限公司', ',108,147,443,');
INSERT INTO `sys_org` VALUES ('444', '3', '147', '九江市众力达汽车销售服务有限公司', ',108,147,444,');
INSERT INTO `sys_org` VALUES ('445', '3', '147', '江西鑫瑞汽车发展有限公司', ',108,147,445,');
INSERT INTO `sys_org` VALUES ('446', '3', '147', '赣州聚缘汽车销售服务有限公司', ',108,147,446,');
INSERT INTO `sys_org` VALUES ('447', '3', '147', '赣州众和汽车销售服务有限公司', ',108,147,447,');
INSERT INTO `sys_org` VALUES ('448', '3', '147', '宜春年富汽车贸易有限公司', ',108,147,448,');
INSERT INTO `sys_org` VALUES ('449', '3', '147', '江西省鸿运汽车有限公司', ',108,147,449,');
INSERT INTO `sys_org` VALUES ('450', '3', '147', '江西千家汽车销售服务有限公司', ',108,147,450,');
INSERT INTO `sys_org` VALUES ('451', '3', '147', '抚州新力汽车贸易有限公司', ',108,147,451,');
INSERT INTO `sys_org` VALUES ('452', '3', '147', '吉安广合缘汽车销售服务有限公司', ',108,147,452,');
INSERT INTO `sys_org` VALUES ('453', '3', '147', '萍乡市鑫荣汽车贸易有限公司', ',108,147,453,');
INSERT INTO `sys_org` VALUES ('454', '3', '147', '上饶市为华汽车销售服务有限公司', ',108,147,454,');
INSERT INTO `sys_org` VALUES ('455', '3', '147', '新余市金联货运工贸有限公司', ',108,147,455,');
INSERT INTO `sys_org` VALUES ('456', '3', '148', '荆门市常发汽车服务有限公司月亮湖分公司', ',108,148,456,');
INSERT INTO `sys_org` VALUES ('457', '3', '148', '随州市润发汽车销售服务有限公司', ',108,148,457,');
INSERT INTO `sys_org` VALUES ('458', '3', '148', '武汉国瑞汽车销售服务有限公司', ',108,148,458,');
INSERT INTO `sys_org` VALUES ('459', '3', '148', '湖北新星德胜汽车服务有限公司', ',108,148,459,');
INSERT INTO `sys_org` VALUES ('460', '3', '148', '武汉精华龙康汽车销售服务有限公司', ',108,148,460,');
INSERT INTO `sys_org` VALUES ('461', '3', '148', '湖北天门立天汽车商贸有限公司', ',108,148,461,');
INSERT INTO `sys_org` VALUES ('462', '3', '148', '宜昌市华健汽车销售服务有限责任公司', ',108,148,462,');
INSERT INTO `sys_org` VALUES ('463', '3', '148', '宜昌安蓝汽车销售有限公司', ',108,148,463,');
INSERT INTO `sys_org` VALUES ('464', '3', '148', '湖北正旺汽车销售服务有限公司', ',108,148,464,');
INSERT INTO `sys_org` VALUES ('465', '3', '148', '黄冈驰恒汽车销售服务有限公司', ',108,148,465,');
INSERT INTO `sys_org` VALUES ('466', '3', '148', '恩施自治州施南汽车销售服务有限公司', ',108,148,466,');
INSERT INTO `sys_org` VALUES ('467', '3', '148', '孝感市恒迪汽车销售服务有限公司', ',108,148,467,');
INSERT INTO `sys_org` VALUES ('468', '3', '148', '武汉市东瑞汽车销售服务有限公司', ',108,148,468,');
INSERT INTO `sys_org` VALUES ('469', '3', '148', '武汉市惠誉汽车销售服务有限公司', ',108,148,469,');
INSERT INTO `sys_org` VALUES ('470', '3', '148', '十堰市凌恒工贸有限公司', ',108,148,470,');
INSERT INTO `sys_org` VALUES ('471', '3', '149', '湖南岳迪汽车销售有限公司', ',108,149,471,');
INSERT INTO `sys_org` VALUES ('472', '3', '149', '湖南鑫源汽车销售有限公司', ',108,149,472,');
INSERT INTO `sys_org` VALUES ('473', '3', '149', '湖南恒跃通汽车贸易有限公司', ',108,149,473,');
INSERT INTO `sys_org` VALUES ('474', '3', '149', '湖南星一汽车销售服务有限公司', ',108,149,474,');
INSERT INTO `sys_org` VALUES ('475', '3', '149', '长沙市金旋风汽车贸易有限公司', ',108,149,475,');
INSERT INTO `sys_org` VALUES ('476', '3', '149', '岳阳市广标汽车服务有限公司', ',108,149,476,');
INSERT INTO `sys_org` VALUES ('477', '3', '149', '长沙市金旋风汽车贸易有限公司常德分公司', ',108,149,477,');
INSERT INTO `sys_org` VALUES ('478', '3', '149', '湘潭市九迪汽车销售服务有限公司', ',108,149,478,');
INSERT INTO `sys_org` VALUES ('479', '3', '149', '长沙市路骐汽车销售有限公司高新区分公司', ',108,149,479,');
INSERT INTO `sys_org` VALUES ('480', '3', '150', '益阳欣天汽车销售服务有限公司', ',108,150,480,');
INSERT INTO `sys_org` VALUES ('481', '3', '150', '株洲市豪骏汽车销售有限公司', ',108,150,481,');
INSERT INTO `sys_org` VALUES ('482', '3', '150', '株洲市奇迹实业有限责任公司', ',108,150,482,');
INSERT INTO `sys_org` VALUES ('483', '3', '150', '邵阳市好运汽车销售服务有限责任公司', ',108,150,483,');
INSERT INTO `sys_org` VALUES ('484', '3', '150', '永州香河汽车贸易有限公司怀化分公司', ',108,150,484,');
INSERT INTO `sys_org` VALUES ('485', '3', '150', '永州香河旺达汽车销售有限公司', ',108,150,485,');
INSERT INTO `sys_org` VALUES ('486', '3', '150', '郴州市得信经贸有限责任公司', ',108,150,486,');
INSERT INTO `sys_org` VALUES ('487', '3', '150', '衡阳市宝诚汽车销售服务有限公司吉首分公司', ',108,150,487,');
INSERT INTO `sys_org` VALUES ('488', '3', '150', '衡阳市中意汽车服务有限公司', ',108,150,488,');
INSERT INTO `sys_org` VALUES ('489', '3', '150', '郴州悦迪汽车贸易有限公司', ',108,150,489,');
INSERT INTO `sys_org` VALUES ('490', '3', '150', '娄底市宝顺汽贸有限公司', ',108,150,490,');
INSERT INTO `sys_org` VALUES ('491', '3', '151', '新乡市新迪汽车销售服务有限公司', ',108,151,491,');
INSERT INTO `sys_org` VALUES ('492', '3', '151', '焦作市共城汽车销售服务有限公司', ',108,151,492,');
INSERT INTO `sys_org` VALUES ('493', '3', '151', '安阳市华伟汽车销售服务有限公司', ',108,151,493,');
INSERT INTO `sys_org` VALUES ('494', '3', '151', '焦作市乾博源物资有限责任公司济源分公司', ',108,151,494,');
INSERT INTO `sys_org` VALUES ('495', '3', '151', '林州市丰宝汽贸有限公司', ',108,151,495,');
INSERT INTO `sys_org` VALUES ('496', '3', '151', '河南新利天汽车销售有限公司', ',108,151,496,');
INSERT INTO `sys_org` VALUES ('497', '3', '151', '鹤壁市鹤立亚飞汽车连锁销售有限公司', ',108,151,497,');
INSERT INTO `sys_org` VALUES ('498', '3', '151', '河南天泽新能源汽车有限公司', ',108,151,498,');
INSERT INTO `sys_org` VALUES ('499', '3', '151', '河南宇鼎缘汽车销售服务有限公司', ',108,151,499,');
INSERT INTO `sys_org` VALUES ('500', '3', '151', '河南省荣光汽车贸易有限公司', ',108,151,500,');
INSERT INTO `sys_org` VALUES ('501', '3', '152', '周口弘祥汽车销售服务有限公司', ',108,152,501,');
INSERT INTO `sys_org` VALUES ('502', '3', '152', '南阳启成汽车销售有限公司', ',108,152,502,');
INSERT INTO `sys_org` VALUES ('503', '3', '152', '南阳盛元汽车销售有限公司', ',108,152,503,');
INSERT INTO `sys_org` VALUES ('504', '3', '152', '南阳德瑞汽车销售服务有限公司', ',108,152,504,');
INSERT INTO `sys_org` VALUES ('505', '3', '152', '信阳昱达新能源汽车销售有限公司', ',108,152,505,');
INSERT INTO `sys_org` VALUES ('506', '3', '152', '邓州永成商贸有限公司', ',108,152,506,');
INSERT INTO `sys_org` VALUES ('507', '3', '152', '漯河市华润汽车销售服务有限公司', ',108,152,507,');
INSERT INTO `sys_org` VALUES ('508', '3', '152', '漯河市诚达汽车销售服务有限公司', ',108,152,508,');
INSERT INTO `sys_org` VALUES ('509', '3', '152', '驻马店市东方汽车贸易服务有限公司', ',108,152,509,');
INSERT INTO `sys_org` VALUES ('510', '3', '152', '信阳锐达汽车销售服务有限公司', ',108,152,510,');
INSERT INTO `sys_org` VALUES ('511', '3', '153', '平顶山市迪升汽车贸易服务有限公司', ',108,153,511,');
INSERT INTO `sys_org` VALUES ('512', '3', '153', '洛阳宝骐汽车销售有限公司', ',108,153,512,');
INSERT INTO `sys_org` VALUES ('513', '3', '153', '灵宝卓昕汽车服务有限公司', ',108,153,513,');
INSERT INTO `sys_org` VALUES ('514', '3', '153', '许昌市恒力汽车销售服务有限公司', ',108,153,514,');
INSERT INTO `sys_org` VALUES ('515', '3', '153', '禹州市淇虹汽车销售服务有限公司', ',108,153,515,');
INSERT INTO `sys_org` VALUES ('516', '3', '153', '洛阳陆行汽车销售服务有限公司', ',108,153,516,');
INSERT INTO `sys_org` VALUES ('517', '3', '153', '濮阳市利天汽车销售服务有限公司', ',108,153,517,');
INSERT INTO `sys_org` VALUES ('518', '3', '153', '商丘市隆兴汽车销售有限公司', ',108,153,518,');
INSERT INTO `sys_org` VALUES ('519', '3', '153', '永城市春雷汽车销售有限公司', ',108,153,519,');
INSERT INTO `sys_org` VALUES ('520', '3', '153', '河南天时汽车销售服务有限公司开封分公司', ',108,153,520,');
INSERT INTO `sys_org` VALUES ('521', '3', '153', '许昌维利特汽车销售服务有限公司', ',108,153,521,');
INSERT INTO `sys_org` VALUES ('522', '3', '154', '北京军鹏伟业汽车销售有限公司', ',109,154,522,');
INSERT INTO `sys_org` VALUES ('523', '3', '154', '北京环耀汽车服务有限公司', ',109,154,523,');
INSERT INTO `sys_org` VALUES ('524', '3', '154', '北京鑫敏恒汽车销售有限公司', ',109,154,524,');
INSERT INTO `sys_org` VALUES ('525', '3', '154', '北京鑫敏恒瑞鑫汽车销售有限公司', ',109,154,525,');
INSERT INTO `sys_org` VALUES ('526', '3', '154', '北京福铃丰瑞汽车销售有限公司', ',109,154,526,');
INSERT INTO `sys_org` VALUES ('527', '3', '154', '北京润城汽车维修有限公司', ',109,154,527,');
INSERT INTO `sys_org` VALUES ('528', '3', '154', '北京天通利华汽车修理有限公司', ',109,154,528,');
INSERT INTO `sys_org` VALUES ('529', '3', '154', '北京鹏天奥汽车销售有限公司', ',109,154,529,');
INSERT INTO `sys_org` VALUES ('530', '3', '154', '北京市北方瑞鹏汽车服务有限公司', ',109,154,530,');
INSERT INTO `sys_org` VALUES ('531', '3', '155', '天津昊泽鑫商贸有限公司', ',109,155,531,');
INSERT INTO `sys_org` VALUES ('532', '3', '155', '天津市路迪恒泰汽车销售有限公司', ',109,155,532,');
INSERT INTO `sys_org` VALUES ('533', '3', '155', '天津市津维瑞通汽车销售有限公司', ',109,155,533,');
INSERT INTO `sys_org` VALUES ('534', '3', '155', '天津环耀汽车销售服务有限公司', ',109,155,534,');
INSERT INTO `sys_org` VALUES ('535', '3', '155', '天津市聚益通汽车销售服务有限公司', ',109,155,535,');
INSERT INTO `sys_org` VALUES ('536', '3', '155', '天津市九州紫寰汽车销售服务有限公司', ',109,155,536,');
INSERT INTO `sys_org` VALUES ('537', '3', '155', '天津市盛世开元汽车销售有限公司', ',109,155,537,');
INSERT INTO `sys_org` VALUES ('538', '3', '156', '上海联通汽车销售有限公司', ',110,156,538,');
INSERT INTO `sys_org` VALUES ('539', '3', '156', '上海众深汽车销售服务有限公司', ',110,156,539,');
INSERT INTO `sys_org` VALUES ('540', '3', '156', '上海润迪汽车销售服务有限公司', ',110,156,540,');
INSERT INTO `sys_org` VALUES ('541', '3', '156', '上海华帆旗申汽车销售有限公司', ',110,156,541,');
INSERT INTO `sys_org` VALUES ('542', '3', '156', '上海联通嘉能新能源汽车销售服务有限公司', ',110,156,542,');
INSERT INTO `sys_org` VALUES ('543', '3', '156', '上海联通宝亭汽车销售有限公司', ',110,156,543,');
INSERT INTO `sys_org` VALUES ('544', '3', '157', '上海富林汽车销售服务有限公司', ',110,157,544,');
INSERT INTO `sys_org` VALUES ('545', '3', '157', '上海汇羿汽车销售服务有限公司', ',110,157,545,');
INSERT INTO `sys_org` VALUES ('546', '3', '157', '上海君和汽车销售服务有限公司', ',110,157,546,');
INSERT INTO `sys_org` VALUES ('547', '3', '157', '上海彤新汽车租赁服务有限公司', ',110,157,547,');
INSERT INTO `sys_org` VALUES ('548', '3', '157', '上海兴迪新能源汽车销售服务有限公司', ',110,157,548,');
INSERT INTO `sys_org` VALUES ('549', '3', '157', '上海利港环态新能源汽车销售有限公司', ',110,157,549,');
INSERT INTO `sys_org` VALUES ('550', '3', '158', '上海毅欣汽车销售有限公司', ',110,158,550,');
INSERT INTO `sys_org` VALUES ('551', '3', '158', '上海华裕汽车修理有限公司', ',110,158,551,');
INSERT INTO `sys_org` VALUES ('552', '3', '158', '上海弘仁宝升汽车销售服务有限公司', ',110,158,552,');
INSERT INTO `sys_org` VALUES ('553', '3', '158', '上海乐迪汽车销售服务有限公司', ',110,158,553,');
INSERT INTO `sys_org` VALUES ('554', '3', '158', '上海弘仁锐豪汽车销售服务有限公司', ',110,158,554,');
INSERT INTO `sys_org` VALUES ('555', '3', '159', '深圳市东盛汽车销售服务有限公司', ',111,159,555,');
INSERT INTO `sys_org` VALUES ('556', '3', '159', '深圳金环怡投资有限公司', ',111,159,556,');
INSERT INTO `sys_org` VALUES ('557', '3', '160', '深圳市三维都灵汽车销售服务有限公司', ',111,160,557,');
INSERT INTO `sys_org` VALUES ('558', '3', '160', '深圳市粤迪汽车贸易有限公司南山分公司', ',111,160,558,');
INSERT INTO `sys_org` VALUES ('559', '3', '160', '深圳市盛世开元汽车销售有限公司福田城市展厅分公司', ',111,160,559,');
INSERT INTO `sys_org` VALUES ('560', '3', '161', '深圳市湛宝实业发展有限公司', ',111,161,560,');
INSERT INTO `sys_org` VALUES ('561', '3', '161', '深圳市泽然浩商贸有限公司', ',111,161,561,');
INSERT INTO `sys_org` VALUES ('562', '3', '162', '深圳市龙南汽车贸易有限公司', ',111,162,562,');
INSERT INTO `sys_org` VALUES ('563', '3', '162', '深圳市恒泰昌汽车销售服务有限公司', ',111,162,563,');
INSERT INTO `sys_org` VALUES ('564', '3', '162', '深圳浩迪汽车销售服务有限公司', ',111,162,564,');
INSERT INTO `sys_org` VALUES ('565', '3', '163', '榆林市嘉华汽车销售有限公司', ',112,163,565,');
INSERT INTO `sys_org` VALUES ('566', '3', '163', '西安奥通汽车销售服务有限公司', ',112,163,566,');
INSERT INTO `sys_org` VALUES ('567', '3', '163', '西安永通汽车销售服务有限公司', ',112,163,567,');
INSERT INTO `sys_org` VALUES ('568', '3', '163', '西安新益通汽车贸易有限公司', ',112,163,568,');
INSERT INTO `sys_org` VALUES ('569', '3', '163', '宝鸡大丰汽车有限公司', ',112,163,569,');
INSERT INTO `sys_org` VALUES ('570', '3', '163', '陕西安康高新德宝汽车销售有限公司', ',112,163,570,');
INSERT INTO `sys_org` VALUES ('571', '3', '163', '汉中汉唐进口汽车维修有限公司', ',112,163,571,');
INSERT INTO `sys_org` VALUES ('572', '3', '163', '西安市乾元新景汽车销售有限公司', ',112,163,572,');
INSERT INTO `sys_org` VALUES ('573', '3', '164', '酒泉新运通汽车出租有限公司销售分公司', ',112,164,573,');
INSERT INTO `sys_org` VALUES ('574', '3', '164', '天水银通汽车贸易有限责任公司', ',112,164,574,');
INSERT INTO `sys_org` VALUES ('575', '3', '164', '甘肃泓通汽车服务有限公司', ',112,164,575,');
INSERT INTO `sys_org` VALUES ('576', '3', '164', '甘肃永宁汽车销售服务有限公司', ',112,164,576,');
INSERT INTO `sys_org` VALUES ('577', '3', '164', '平凉市时代恒星汽贸有限责任公司', ',112,164,577,');
INSERT INTO `sys_org` VALUES ('578', '3', '164', '武威市广利汽车贸易有限公司', ',112,164,578,');
INSERT INTO `sys_org` VALUES ('579', '3', '164', '庆阳陇迪汽车销售有限公司', ',112,164,579,');
INSERT INTO `sys_org` VALUES ('580', '3', '164', '宁夏银迪汽车销售有限公司', ',112,164,580,');
INSERT INTO `sys_org` VALUES ('581', '3', '164', '宁夏吴忠市宁北鑫迪汽车销售有限公司', ',112,164,581,');
INSERT INTO `sys_org` VALUES ('582', '3', '164', '西宁金岛晟盈汽车销售有限公司', ',112,164,582,');
INSERT INTO `sys_org` VALUES ('583', '3', '164', '青海亚通汽车销售服务有限公司', ',112,164,583,');
INSERT INTO `sys_org` VALUES ('584', '3', '165', '巴州宝迪汽车销售有限公司', ',112,165,584,');
INSERT INTO `sys_org` VALUES ('585', '3', '165', '新疆新翔升汽车贸易有限公司', ',112,165,585,');
INSERT INTO `sys_org` VALUES ('586', '3', '165', '新疆新大方成贸易有限公司', ',112,165,586,');
INSERT INTO `sys_org` VALUES ('587', '3', '165', '克拉玛依市联众商贸有限责任公司', ',112,165,587,');
INSERT INTO `sys_org` VALUES ('588', '3', '165', '阿克苏弘宇车业有限责任公司', ',112,165,588,');
INSERT INTO `sys_org` VALUES ('589', '3', '165', '北屯福瑞祥汽车销售服务有限责任公司', ',112,165,589,');
INSERT INTO `sys_org` VALUES ('590', '3', '165', '伊犁金昌商贸有限责任公司', ',112,165,590,');
INSERT INTO `sys_org` VALUES ('591', '3', '165', '喀什市通工实业有限公司', ',112,165,591,');
INSERT INTO `sys_org` VALUES ('592', '3', '166', '陕西梦迪汽车销售服务有限公司', ',112,166,592,');
INSERT INTO `sys_org` VALUES ('593', '3', '166', '陕西利德汽车销售服务有限公司', ',112,166,593,');
INSERT INTO `sys_org` VALUES ('594', '3', '166', '陕西信天游汽车服务有限公司', ',112,166,594,');
INSERT INTO `sys_org` VALUES ('595', '3', '166', '陕西景泰汽车销售服务有限公司', ',112,166,595,');
INSERT INTO `sys_org` VALUES ('596', '3', '166', '陕西意拓汽车销售有限公司', ',112,166,596,');
INSERT INTO `sys_org` VALUES ('597', '3', '166', '延安意拓汽车销售服务有限公司', ',112,166,597,');
INSERT INTO `sys_org` VALUES ('598', '3', '166', '渭南新威汽车销售服务有限公司', ',112,166,598,');
INSERT INTO `sys_org` VALUES ('599', '3', '167', '成都新港汽车维修有限责任公司', ',113,167,599,');
INSERT INTO `sys_org` VALUES ('600', '3', '167', '四川长征飞越汽车销售服务有限公司', ',113,167,600,');
INSERT INTO `sys_org` VALUES ('601', '3', '167', '成都蓝海汽车销售服务有限公司', ',113,167,601,');
INSERT INTO `sys_org` VALUES ('602', '3', '167', '成都上典汽车贸易有限公司', ',113,167,602,');
INSERT INTO `sys_org` VALUES ('603', '3', '167', '成都上典西区汽车销售有限公司', ',113,167,603,');
INSERT INTO `sys_org` VALUES ('604', '3', '168', '巴中市成强汽车贸易有限公司', ',113,168,604,');
INSERT INTO `sys_org` VALUES ('605', '3', '168', '广元市万运达汽车销售服务有限公司', ',113,168,605,');
INSERT INTO `sys_org` VALUES ('606', '3', '168', '南充市锦垣汽车有限公司', ',113,168,606,');
INSERT INTO `sys_org` VALUES ('607', '3', '168', '南充博宇车业有限公司', ',113,168,607,');
INSERT INTO `sys_org` VALUES ('608', '3', '168', '四川国华强劲汽车销售服务有限公司', ',113,168,608,');
INSERT INTO `sys_org` VALUES ('609', '3', '168', '绵阳申龙汽车贸易有限公司', ',113,168,609,');
INSERT INTO `sys_org` VALUES ('610', '3', '168', '遂宁恒思汽车销售有限公司', ',113,168,610,');
INSERT INTO `sys_org` VALUES ('611', '3', '168', '资阳市上典三和汽车销售服务有限公司', ',113,168,611,');
INSERT INTO `sys_org` VALUES ('612', '3', '168', '中国第二重型机械集团德阳万路运业有限公司', ',113,168,612,');
INSERT INTO `sys_org` VALUES ('613', '3', '168', '德阳富马汽车销售服务有限公司', ',113,168,613,');
INSERT INTO `sys_org` VALUES ('614', '3', '168', '广安市锐恒汽车贸易有限公司', ',113,168,614,');
INSERT INTO `sys_org` VALUES ('615', '3', '168', '达州市汇龙车业有限公司', ',113,168,615,');
INSERT INTO `sys_org` VALUES ('616', '3', '168', '西藏自治区(西农)亚飞汽车连锁店', ',113,168,616,');
INSERT INTO `sys_org` VALUES ('617', '3', '169', '泸州凯联汽车贸易有限公司', ',113,169,617,');
INSERT INTO `sys_org` VALUES ('618', '3', '169', '自贡树德汽车服务有限公司', ',113,169,618,');
INSERT INTO `sys_org` VALUES ('619', '3', '169', '泸州忠山汽车销售有限责任公司', ',113,169,619,');
INSERT INTO `sys_org` VALUES ('620', '3', '169', '攀枝花市祥瑞龙迪商贸有限公司', ',113,169,620,');
INSERT INTO `sys_org` VALUES ('621', '3', '169', '凉山州天宇商贸有限责任公司', ',113,169,621,');
INSERT INTO `sys_org` VALUES ('622', '3', '169', '四川内江川豫汽车销售服务有限公司', ',113,169,622,');
INSERT INTO `sys_org` VALUES ('623', '3', '169', '宜宾骏辉汽车销售服务有限公司', ',113,169,623,');
INSERT INTO `sys_org` VALUES ('624', '3', '169', '四川宏光汽车销售有限公司', ',113,169,624,');
INSERT INTO `sys_org` VALUES ('625', '3', '169', '眉山俊华汽车销售服务有限公司', ',113,169,625,');
INSERT INTO `sys_org` VALUES ('626', '3', '169', '绵竹市金华汽车经营有限公司乐山分公司', ',113,169,626,');
INSERT INTO `sys_org` VALUES ('627', '3', '169', '雅安市美雅汽车销售服务有限公司', ',113,169,627,');
INSERT INTO `sys_org` VALUES ('628', '3', '170', '贵州省六盘水市钟祥汽贸有限责任公司', ',113,170,628,');
INSERT INTO `sys_org` VALUES ('629', '3', '170', '贵州航天实业有限公司', ',113,170,629,');
INSERT INTO `sys_org` VALUES ('630', '3', '170', '毕节三瑞汽车销售服务有限公司', ',113,170,630,');
INSERT INTO `sys_org` VALUES ('631', '3', '170', '贵州长峰汽车销售服务有限公司', ',113,170,631,');
INSERT INTO `sys_org` VALUES ('632', '3', '170', '贵州福利汽车销售服务有限公司', ',113,170,632,');
INSERT INTO `sys_org` VALUES ('633', '3', '170', '贵州省凯里中惠贸易有限公司', ',113,170,633,');
INSERT INTO `sys_org` VALUES ('634', '3', '170', '贵州乾骏汽车销售服务有限公司', ',113,170,634,');
INSERT INTO `sys_org` VALUES ('635', '3', '170', '遵义一木贸易有限责任公司', ',113,170,635,');
INSERT INTO `sys_org` VALUES ('636', '3', '170', '贵阳京润通汽车销售有限公司', ',113,170,636,');
INSERT INTO `sys_org` VALUES ('637', '3', '171', '云南曲靖博奥经贸有限公司', ',113,171,637,');
INSERT INTO `sys_org` VALUES ('638', '3', '171', '楚雄宏熙交通运输有限公司', ',113,171,638,');
INSERT INTO `sys_org` VALUES ('639', '3', '171', '大理鹏迪汽车销售服务有限公司', ',113,171,639,');
INSERT INTO `sys_org` VALUES ('640', '3', '171', '大理盛迪汽车销售服务有限公司', ',113,171,640,');
INSERT INTO `sys_org` VALUES ('641', '3', '171', '云南曲靖交通集团精工达汽车技贸有限公司', ',113,171,641,');
INSERT INTO `sys_org` VALUES ('642', '3', '171', '云南曲靖交通集团精工达汽车技贸有限公司轿车销售分公司', ',113,171,642,');
INSERT INTO `sys_org` VALUES ('643', '3', '171', '玉溪市高新区永盛新能源汽车销售有限责任公司', ',113,171,643,');
INSERT INTO `sys_org` VALUES ('644', '3', '171', '丽江市古城区鹏迪汽车销售有限公司', ',113,171,644,');
INSERT INTO `sys_org` VALUES ('645', '3', '171', '保山众杰汽车销售服务有限公司', ',113,171,645,');
INSERT INTO `sys_org` VALUES ('646', '3', '171', '红河恒迪汽车销售服务有限公司', ',113,171,646,');
INSERT INTO `sys_org` VALUES ('647', '3', '171', '云南谊和汽车经贸有限公司', ',113,171,647,');
INSERT INTO `sys_org` VALUES ('648', '3', '171', '云南光华汽车销售服务有限公司', ',113,171,648,');
INSERT INTO `sys_org` VALUES ('649', '3', '171', '云南迪坤汽车销售有限公司', ',113,171,649,');
INSERT INTO `sys_org` VALUES ('650', '3', '171', '文山新谊和汽车经贸有限公司', ',113,171,650,');
INSERT INTO `sys_org` VALUES ('651', '3', '171', '德宏州鑫盈商贸有限公司', ',113,171,651,');
INSERT INTO `sys_org` VALUES ('652', '3', '172', '重庆市沪渝汽车修理厂', ',113,172,652,');
INSERT INTO `sys_org` VALUES ('653', '3', '172', '重庆成空亚飞汽车销售服务有限公司', ',113,172,653,');
INSERT INTO `sys_org` VALUES ('654', '3', '172', '重庆市宝骏汽车销售有限公司', ',113,172,654,');
INSERT INTO `sys_org` VALUES ('655', '3', '172', '重庆瀚为汽车销售服务有限公司', ',113,172,655,');
INSERT INTO `sys_org` VALUES ('656', '3', '172', '重庆隆骏汽车销售服务有限公司', ',113,172,656,');
INSERT INTO `sys_org` VALUES ('657', '3', '172', '重庆隆源汽车贸易有限公司', ',113,172,657,');
INSERT INTO `sys_org` VALUES ('658', '2', '112', '西北大区', ',112,658,');
INSERT INTO `sys_org` VALUES ('659', '3', '658', '西安嘉丽实业有限公司', ',112,658,659,');
INSERT INTO `sys_org` VALUES ('664', '2', '113', '川渝鄂大区', ',113,664,');
INSERT INTO `sys_org` VALUES ('665', '3', '664', '南充博宇车业有限公司', ',113,664,665,');
INSERT INTO `sys_org` VALUES ('666', '3', '664', '泸州忠山汽车销售有限责任公司', ',113,664,666,');
INSERT INTO `sys_org` VALUES ('667', '3', '658', '榆林市晶鑫汽贸有限责任公司', ',112,658,667,');
INSERT INTO `sys_role` VALUES ('2', '管理员', '管理系统', 'org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,jtrs,jycd,dksqhm,hylx,hyzlx,zylx,hkszd,ysr,jkr_sf,jkr_cs,hkdz,dzlx,fclx,jznx,gsmc,qyxz,zw,gsdh,dzy,gznx,zcjg,csys,cpz,cplx,dkqs,xsjg,sfkbl,sfkje,dkje,khll,lxze,gcyhke,khsqbm,jsr_xm,jsr_lxdh,xqah,yyxhsl,dygxhnljd,degxhnljd,bz,yqr');
INSERT INTO `sys_role` VALUES ('3', '普通用户', '普通用户', 'org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,dksqhm,jkr_sf,jkr_cs,csys,cpz,cplx,dkqs,khsqbm,jsr_xm,jsr_lxdh');
INSERT INTO `sys_role_menu` VALUES ('554', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('555', '3', '9');
INSERT INTO `sys_role_menu` VALUES ('556', '3', '6');
INSERT INTO `sys_role_menu` VALUES ('557', '3', '10');
INSERT INTO `sys_role_menu` VALUES ('558', '3', '43');
INSERT INTO `sys_role_menu` VALUES ('559', '3', '8');
INSERT INTO `sys_role_menu` VALUES ('560', '3', '14');
INSERT INTO `sys_role_menu` VALUES ('561', '3', '41');
INSERT INTO `sys_role_menu` VALUES ('562', '3', '42');
INSERT INTO `sys_role_menu` VALUES ('569', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('570', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('571', '2', '6');
INSERT INTO `sys_role_menu` VALUES ('572', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('573', '2', '43');
INSERT INTO `sys_role_menu` VALUES ('574', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('575', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('576', '2', '41');
INSERT INTO `sys_role_menu` VALUES ('577', '2', '42');
INSERT INTO `sys_role_menu` VALUES ('578', '2', '2');
INSERT INTO `sys_role_menu` VALUES ('579', '2', '3');
INSERT INTO `sys_role_menu` VALUES ('580', '2', '39');
INSERT INTO `sys_role_menu` VALUES ('581', '2', '31');
INSERT INTO `sys_role_menu` VALUES ('582', '2', '32');
INSERT INTO `sys_role_menu` VALUES ('583', '2', '33');
INSERT INTO `sys_role_menu` VALUES ('584', '2', '4');
INSERT INTO `sys_role_menu` VALUES ('585', '2', '37');
INSERT INTO `sys_role_menu` VALUES ('586', '2', '25');
INSERT INTO `sys_role_menu` VALUES ('587', '2', '26');
INSERT INTO `sys_role_menu` VALUES ('588', '2', '27');
INSERT INTO `sys_role_menu` VALUES ('589', '2', '5');
INSERT INTO `sys_role_menu` VALUES ('590', '2', '35');
INSERT INTO `sys_role_menu` VALUES ('591', '2', '19');
INSERT INTO `sys_role_menu` VALUES ('592', '2', '20');
INSERT INTO `sys_role_menu` VALUES ('593', '2', '21');
INSERT INTO `sys_role_menu` VALUES ('594', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('595', '2', '36');
INSERT INTO `sys_role_menu` VALUES ('596', '2', '22');
INSERT INTO `sys_role_menu` VALUES ('597', '2', '23');
INSERT INTO `sys_role_menu` VALUES ('598', '2', '24');
INSERT INTO `sys_role_menu` VALUES ('599', '2', '11');
INSERT INTO `sys_role_menu` VALUES ('600', '2', '34');
INSERT INTO `sys_role_menu` VALUES ('601', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('602', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('603', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('604', '2', '12');
INSERT INTO `sys_role_menu` VALUES ('605', '2', '38');
INSERT INTO `sys_role_menu` VALUES ('606', '2', '28');
INSERT INTO `sys_role_menu` VALUES ('607', '2', '29');
INSERT INTO `sys_role_menu` VALUES ('608', '2', '30');
INSERT INTO `sys_role_menu` VALUES ('609', '2', '13');
INSERT INTO `sys_role_menu` VALUES ('610', '2', '40');
INSERT INTO `sys_role_menu` VALUES ('611', '2', '18');
INSERT INTO `sys_tree` VALUES ('11', 'HYLX', '1', '0', '采矿业', ',11,');
INSERT INTO `sys_tree` VALUES ('12', 'HYLX', '1', '0', '制造业', ',12,');
INSERT INTO `sys_tree` VALUES ('13', 'HYLX', '1', '0', '建筑业', ',13,');
INSERT INTO `sys_tree` VALUES ('14', 'HYLX', '1', '0', '金融业', ',14,');
INSERT INTO `sys_tree` VALUES ('15', 'HYLX', '1', '0', '房地产业', ',15,');
INSERT INTO `sys_tree` VALUES ('16', 'HYLX', '1', '0', '教育', ',16,');
INSERT INTO `sys_tree` VALUES ('17', 'HYLX', '1', '0', '国际组织', ',17,');
INSERT INTO `sys_tree` VALUES ('18', 'HYLX', '1', '0', '批发和零售业', ',18,');
INSERT INTO `sys_tree` VALUES ('19', 'HYLX', '1', '0', '住宿和餐饮业', ',19,');
INSERT INTO `sys_tree` VALUES ('20', 'HYLX', '1', '0', '卫生和社会工作', ',20,');
INSERT INTO `sys_tree` VALUES ('21', 'HYLX', '1', '0', '租赁和商务服务业', ',21,');
INSERT INTO `sys_tree` VALUES ('22', 'HYLX', '1', '0', '交通运输、仓储和邮政业', ',22,');
INSERT INTO `sys_tree` VALUES ('23', 'HYLX', '1', '0', '电力、热力、燃气及水生产和供应业', ',23,');
INSERT INTO `sys_tree` VALUES ('24', 'HYLX', '1', '0', '居民服务、修理和其他服务业', ',24,');
INSERT INTO `sys_tree` VALUES ('25', 'HYLX', '1', '0', '水利、环境和公共设施管理业', ',25,');
INSERT INTO `sys_tree` VALUES ('26', 'HYLX', '1', '0', '信息传输、软件和信息技术服务业', ',26,');
INSERT INTO `sys_tree` VALUES ('27', 'HYLX', '1', '0', '科学研究和技术服务业', ',27,');
INSERT INTO `sys_tree` VALUES ('28', 'HYLX', '1', '0', '农、林、牧、渔业', ',28,');
INSERT INTO `sys_tree` VALUES ('29', 'HYLX', '1', '0', '公共管理、社会保障和社会组织', ',29,');
INSERT INTO `sys_tree` VALUES ('30', 'HYLX', '1', '0', '文化、体育和娱乐业', ',30,');
INSERT INTO `sys_tree` VALUES ('31', 'HYLX', '1', '0', '其他', ',31,');
INSERT INTO `sys_tree` VALUES ('32', 'HYLX', '2', '31', '其他', ',31,32,');
INSERT INTO `sys_tree` VALUES ('33', 'HYLX', '2', '15', '房地产开发经营', ',15,33,');
INSERT INTO `sys_tree` VALUES ('34', 'HYLX', '2', '13', '房屋和土木工程建筑业', ',13,34,');
INSERT INTO `sys_tree` VALUES ('35', 'HYLX', '2', '18', '批发业 Wholesale Trade', ',18,35,');
INSERT INTO `sys_tree` VALUES ('36', 'HYLX', '2', '24', '其他服务业 Other Services', ',24,36,');
INSERT INTO `sys_tree` VALUES ('111', 'HYLX', '2', '11', '煤炭开采和洗选业', ',11,111,');
INSERT INTO `sys_tree` VALUES ('114', 'HYLX', '2', '12', '家具制造业', ',12,114,');
INSERT INTO `sys_tree` VALUES ('116', 'HYLX', '2', '12', '工艺品及其他制造业', ',12,116,');
INSERT INTO `sys_tree` VALUES ('117', 'HYLX', '2', '22', '道路运输业', ',22,117,');
INSERT INTO `sys_tree` VALUES ('119', 'HYLX', '2', '18', '零售业 Retail Trade', ',18,119,');
INSERT INTO `sys_tree` VALUES ('122', 'HYLX', '2', '14', '银行业', ',14,122,');
INSERT INTO `sys_tree` VALUES ('123', 'HYLX', '2', '14', '其他金融活动', ',14,123,');
INSERT INTO `sys_tree` VALUES ('124', 'HYLX', '2', '12', '仪器仪表及文化、办公用机械制造业', ',12,124,');
INSERT INTO `sys_tree` VALUES ('150', 'CITY', '1', '0', '河北', ',150,');
INSERT INTO `sys_tree` VALUES ('151', 'CITY', '2', '150', '石家庄', ',150,151,');
INSERT INTO `sys_tree` VALUES ('152', 'CITY', '2', '150', '保定', ',150,152,');
INSERT INTO `sys_tree` VALUES ('153', 'CITY', '2', '150', '秦皇岛', ',150,153,');
INSERT INTO `sys_tree` VALUES ('154', 'CITY', '2', '150', '唐山', ',150,154,');
INSERT INTO `sys_tree` VALUES ('155', 'CITY', '2', '150', '邯郸', ',150,155,');
INSERT INTO `sys_tree` VALUES ('156', 'CITY', '2', '150', '邢台', ',150,156,');
INSERT INTO `sys_tree` VALUES ('157', 'CITY', '2', '150', '沧州', ',150,157,');
INSERT INTO `sys_tree` VALUES ('158', 'CITY', '2', '150', '承德', ',150,158,');
INSERT INTO `sys_tree` VALUES ('159', 'CITY', '2', '150', '廊坊', ',150,159,');
INSERT INTO `sys_tree` VALUES ('160', 'CITY', '2', '150', '衡水', ',150,160,');
INSERT INTO `sys_tree` VALUES ('161', 'CITY', '2', '150', '张家口', ',150,161,');
INSERT INTO `sys_tree` VALUES ('162', 'CITY', '1', '0', '山西', ',162,');
INSERT INTO `sys_tree` VALUES ('163', 'CITY', '2', '162', '太原', ',162,163,');
INSERT INTO `sys_tree` VALUES ('164', 'CITY', '2', '162', '大同', ',162,164,');
INSERT INTO `sys_tree` VALUES ('165', 'CITY', '2', '162', '阳泉', ',162,165,');
INSERT INTO `sys_tree` VALUES ('166', 'CITY', '2', '162', '长治', ',162,166,');
INSERT INTO `sys_tree` VALUES ('167', 'CITY', '2', '162', '临汾', ',162,167,');
INSERT INTO `sys_tree` VALUES ('168', 'CITY', '2', '162', '晋中', ',162,168,');
INSERT INTO `sys_tree` VALUES ('169', 'CITY', '2', '162', '运城', ',162,169,');
INSERT INTO `sys_tree` VALUES ('170', 'CITY', '2', '162', '晋城', ',162,170,');
INSERT INTO `sys_tree` VALUES ('171', 'CITY', '2', '162', '忻州', ',162,171,');
INSERT INTO `sys_tree` VALUES ('172', 'CITY', '2', '162', '朔州', ',162,172,');
INSERT INTO `sys_tree` VALUES ('173', 'CITY', '2', '162', '吕梁', ',162,173,');
INSERT INTO `sys_tree` VALUES ('174', 'CITY', '1', '0', '内蒙古', ',174,');
INSERT INTO `sys_tree` VALUES ('175', 'CITY', '2', '174', '呼和浩特', ',174,175,');
INSERT INTO `sys_tree` VALUES ('176', 'CITY', '2', '174', '呼伦贝尔', ',174,176,');
INSERT INTO `sys_tree` VALUES ('177', 'CITY', '2', '174', '包头', ',174,177,');
INSERT INTO `sys_tree` VALUES ('178', 'CITY', '2', '174', '赤峰', ',174,178,');
INSERT INTO `sys_tree` VALUES ('179', 'CITY', '2', '174', '乌海', ',174,179,');
INSERT INTO `sys_tree` VALUES ('180', 'CITY', '2', '174', '通辽', ',174,180,');
INSERT INTO `sys_tree` VALUES ('181', 'CITY', '2', '174', '鄂尔多斯', ',174,181,');
INSERT INTO `sys_tree` VALUES ('182', 'CITY', '2', '174', '乌兰察布', ',174,182,');
INSERT INTO `sys_tree` VALUES ('183', 'CITY', '2', '174', '巴彦淖尔', ',174,183,');
INSERT INTO `sys_tree` VALUES ('184', 'CITY', '1', '0', '辽宁', ',184,');
INSERT INTO `sys_tree` VALUES ('185', 'CITY', '2', '184', '盘锦', ',184,185,');
INSERT INTO `sys_tree` VALUES ('186', 'CITY', '2', '184', '鞍山', ',184,186,');
INSERT INTO `sys_tree` VALUES ('187', 'CITY', '2', '184', '抚顺', ',184,187,');
INSERT INTO `sys_tree` VALUES ('188', 'CITY', '2', '184', '本溪', ',184,188,');
INSERT INTO `sys_tree` VALUES ('189', 'CITY', '2', '184', '铁岭', ',184,189,');
INSERT INTO `sys_tree` VALUES ('190', 'CITY', '2', '184', '锦州', ',184,190,');
INSERT INTO `sys_tree` VALUES ('191', 'CITY', '2', '184', '丹东', ',184,191,');
INSERT INTO `sys_tree` VALUES ('192', 'CITY', '2', '184', '辽阳', ',184,192,');
INSERT INTO `sys_tree` VALUES ('193', 'CITY', '2', '184', '葫芦岛', ',184,193,');
INSERT INTO `sys_tree` VALUES ('194', 'CITY', '2', '184', '阜新', ',184,194,');
INSERT INTO `sys_tree` VALUES ('195', 'CITY', '2', '184', '朝阳', ',184,195,');
INSERT INTO `sys_tree` VALUES ('196', 'CITY', '2', '184', '营口', ',184,196,');
INSERT INTO `sys_tree` VALUES ('197', 'CITY', '1', '0', '吉林', ',197,');
INSERT INTO `sys_tree` VALUES ('198', 'CITY', '2', '197', '吉林', ',197,198,');
INSERT INTO `sys_tree` VALUES ('199', 'CITY', '2', '197', '通化', ',197,199,');
INSERT INTO `sys_tree` VALUES ('200', 'CITY', '2', '197', '白城', ',197,200,');
INSERT INTO `sys_tree` VALUES ('201', 'CITY', '2', '197', '四平', ',197,201,');
INSERT INTO `sys_tree` VALUES ('202', 'CITY', '2', '197', '辽源', ',197,202,');
INSERT INTO `sys_tree` VALUES ('203', 'CITY', '2', '197', '松原', ',197,203,');
INSERT INTO `sys_tree` VALUES ('204', 'CITY', '2', '197', '白山', ',197,204,');
INSERT INTO `sys_tree` VALUES ('205', 'CITY', '1', '0', '黑龙江', ',205,');
INSERT INTO `sys_tree` VALUES ('206', 'CITY', '2', '205', '伊春', ',205,206,');
INSERT INTO `sys_tree` VALUES ('207', 'CITY', '2', '205', '牡丹江', ',205,207,');
INSERT INTO `sys_tree` VALUES ('208', 'CITY', '2', '205', '大庆', ',205,208,');
INSERT INTO `sys_tree` VALUES ('209', 'CITY', '2', '205', '鸡西', ',205,209,');
INSERT INTO `sys_tree` VALUES ('210', 'CITY', '2', '205', '鹤岗', ',205,210,');
INSERT INTO `sys_tree` VALUES ('211', 'CITY', '2', '205', '绥化', ',205,211,');
INSERT INTO `sys_tree` VALUES ('212', 'CITY', '2', '205', '双鸭山', ',205,212,');
INSERT INTO `sys_tree` VALUES ('213', 'CITY', '2', '205', '七台河', ',205,213,');
INSERT INTO `sys_tree` VALUES ('214', 'CITY', '2', '205', '佳木斯', ',205,214,');
INSERT INTO `sys_tree` VALUES ('215', 'CITY', '2', '205', '黑河', ',205,215,');
INSERT INTO `sys_tree` VALUES ('216', 'CITY', '2', '205', '齐齐哈尔', ',205,216,');
INSERT INTO `sys_tree` VALUES ('217', 'CITY', '1', '0', '江苏', ',217,');
INSERT INTO `sys_tree` VALUES ('218', 'CITY', '2', '217', '无锡', ',217,218,');
INSERT INTO `sys_tree` VALUES ('219', 'CITY', '2', '217', '常州', ',217,219,');
INSERT INTO `sys_tree` VALUES ('220', 'CITY', '2', '217', '扬州', ',217,220,');
INSERT INTO `sys_tree` VALUES ('221', 'CITY', '2', '217', '徐州', ',217,221,');
INSERT INTO `sys_tree` VALUES ('222', 'CITY', '2', '217', '苏州', ',217,222,');
INSERT INTO `sys_tree` VALUES ('223', 'CITY', '2', '217', '连云港', ',217,223,');
INSERT INTO `sys_tree` VALUES ('224', 'CITY', '2', '217', '盐城', ',217,224,');
INSERT INTO `sys_tree` VALUES ('225', 'CITY', '2', '217', '淮安', ',217,225,');
INSERT INTO `sys_tree` VALUES ('226', 'CITY', '2', '217', '宿迁', ',217,226,');
INSERT INTO `sys_tree` VALUES ('227', 'CITY', '2', '217', '镇江', ',217,227,');
INSERT INTO `sys_tree` VALUES ('228', 'CITY', '2', '217', '南通', ',217,228,');
INSERT INTO `sys_tree` VALUES ('229', 'CITY', '2', '217', '泰州', ',217,229,');
INSERT INTO `sys_tree` VALUES ('230', 'CITY', '1', '0', '浙江', ',230,');
INSERT INTO `sys_tree` VALUES ('231', 'CITY', '2', '230', '绍兴', ',230,231,');
INSERT INTO `sys_tree` VALUES ('232', 'CITY', '2', '230', '温州', ',230,232,');
INSERT INTO `sys_tree` VALUES ('233', 'CITY', '2', '230', '湖州', ',230,233,');
INSERT INTO `sys_tree` VALUES ('234', 'CITY', '2', '230', '嘉兴', ',230,234,');
INSERT INTO `sys_tree` VALUES ('235', 'CITY', '2', '230', '台州', ',230,235,');
INSERT INTO `sys_tree` VALUES ('236', 'CITY', '2', '230', '金华', ',230,236,');
INSERT INTO `sys_tree` VALUES ('237', 'CITY', '2', '230', '舟山', ',230,237,');
INSERT INTO `sys_tree` VALUES ('238', 'CITY', '2', '230', '衢州', ',230,238,');
INSERT INTO `sys_tree` VALUES ('239', 'CITY', '2', '230', '丽水', ',230,239,');
INSERT INTO `sys_tree` VALUES ('241', 'CITY', '1', '0', '福建', ',241,');
INSERT INTO `sys_tree` VALUES ('242', 'CITY', '2', '241', '福州', ',241,242,');
INSERT INTO `sys_tree` VALUES ('243', 'CITY', '2', '241', '泉州', ',241,243,');
INSERT INTO `sys_tree` VALUES ('244', 'CITY', '2', '241', '漳州', ',241,244,');
INSERT INTO `sys_tree` VALUES ('245', 'CITY', '2', '241', '南平', ',241,245,');
INSERT INTO `sys_tree` VALUES ('246', 'CITY', '2', '241', '三明', ',241,246,');
INSERT INTO `sys_tree` VALUES ('247', 'CITY', '2', '241', '龙岩', ',241,247,');
INSERT INTO `sys_tree` VALUES ('248', 'CITY', '2', '241', '莆田', ',241,248,');
INSERT INTO `sys_tree` VALUES ('249', 'CITY', '2', '241', '宁德', ',241,249,');
INSERT INTO `sys_tree` VALUES ('250', 'CITY', '1', '0', '江西', ',250,');
INSERT INTO `sys_tree` VALUES ('251', 'CITY', '2', '250', '南昌', ',250,251,');
INSERT INTO `sys_tree` VALUES ('252', 'CITY', '2', '250', '赣州', ',250,252,');
INSERT INTO `sys_tree` VALUES ('253', 'CITY', '2', '250', '景德镇', ',250,253,');
INSERT INTO `sys_tree` VALUES ('254', 'CITY', '2', '250', '九江', ',250,254,');
INSERT INTO `sys_tree` VALUES ('255', 'CITY', '2', '250', '萍乡', ',250,255,');
INSERT INTO `sys_tree` VALUES ('256', 'CITY', '2', '250', '新余', ',250,256,');
INSERT INTO `sys_tree` VALUES ('257', 'CITY', '2', '250', '抚州', ',250,257,');
INSERT INTO `sys_tree` VALUES ('258', 'CITY', '2', '250', '宜春', ',250,258,');
INSERT INTO `sys_tree` VALUES ('259', 'CITY', '2', '250', '上饶', ',250,259,');
INSERT INTO `sys_tree` VALUES ('260', 'CITY', '2', '250', '鹰潭', ',250,260,');
INSERT INTO `sys_tree` VALUES ('261', 'CITY', '2', '250', '吉安', ',250,261,');
INSERT INTO `sys_tree` VALUES ('262', 'CITY', '1', '0', '山东', ',262,');
INSERT INTO `sys_tree` VALUES ('263', 'CITY', '2', '262', '潍坊', ',262,263,');
INSERT INTO `sys_tree` VALUES ('264', 'CITY', '2', '262', '淄博', ',262,264,');
INSERT INTO `sys_tree` VALUES ('265', 'CITY', '2', '262', '威海', ',262,265,');
INSERT INTO `sys_tree` VALUES ('266', 'CITY', '2', '262', '枣庄', ',262,266,');
INSERT INTO `sys_tree` VALUES ('267', 'CITY', '2', '262', '泰安', ',262,267,');
INSERT INTO `sys_tree` VALUES ('268', 'CITY', '2', '262', '临沂', ',262,268,');
INSERT INTO `sys_tree` VALUES ('269', 'CITY', '2', '262', '东营', ',262,269,');
INSERT INTO `sys_tree` VALUES ('270', 'CITY', '2', '262', '济宁', ',262,270,');
INSERT INTO `sys_tree` VALUES ('271', 'CITY', '2', '262', '烟台', ',262,271,');
INSERT INTO `sys_tree` VALUES ('272', 'CITY', '2', '262', '菏泽', ',262,272,');
INSERT INTO `sys_tree` VALUES ('273', 'CITY', '2', '262', '日照', ',262,273,');
INSERT INTO `sys_tree` VALUES ('274', 'CITY', '2', '262', '德州', ',262,274,');
INSERT INTO `sys_tree` VALUES ('275', 'CITY', '2', '262', '聊城', ',262,275,');
INSERT INTO `sys_tree` VALUES ('276', 'CITY', '2', '262', '滨州', ',262,276,');
INSERT INTO `sys_tree` VALUES ('277', 'CITY', '2', '262', '莱芜', ',262,277,');
INSERT INTO `sys_tree` VALUES ('278', 'CITY', '1', '0', '河南', ',278,');
INSERT INTO `sys_tree` VALUES ('279', 'CITY', '2', '278', '郑州', ',278,279,');
INSERT INTO `sys_tree` VALUES ('280', 'CITY', '2', '278', '洛阳', ',278,280,');
INSERT INTO `sys_tree` VALUES ('281', 'CITY', '2', '278', '焦作', ',278,281,');
INSERT INTO `sys_tree` VALUES ('282', 'CITY', '2', '278', '商丘', ',278,282,');
INSERT INTO `sys_tree` VALUES ('283', 'CITY', '2', '278', '信阳', ',278,283,');
INSERT INTO `sys_tree` VALUES ('284', 'CITY', '2', '278', '新乡', ',278,284,');
INSERT INTO `sys_tree` VALUES ('285', 'CITY', '2', '278', '安阳', ',278,285,');
INSERT INTO `sys_tree` VALUES ('286', 'CITY', '2', '278', '开封', ',278,286,');
INSERT INTO `sys_tree` VALUES ('287', 'CITY', '2', '278', '漯河', ',278,287,');
INSERT INTO `sys_tree` VALUES ('288', 'CITY', '2', '278', '南阳', ',278,288,');
INSERT INTO `sys_tree` VALUES ('289', 'CITY', '2', '278', '鹤壁', ',278,289,');
INSERT INTO `sys_tree` VALUES ('290', 'CITY', '2', '278', '平顶山', ',278,290,');
INSERT INTO `sys_tree` VALUES ('291', 'CITY', '2', '278', '濮阳', ',278,291,');
INSERT INTO `sys_tree` VALUES ('292', 'CITY', '2', '278', '许昌', ',278,292,');
INSERT INTO `sys_tree` VALUES ('293', 'CITY', '2', '278', '周口', ',278,293,');
INSERT INTO `sys_tree` VALUES ('294', 'CITY', '2', '278', '三门峡', ',278,294,');
INSERT INTO `sys_tree` VALUES ('295', 'CITY', '2', '278', '驻马店', ',278,295,');
INSERT INTO `sys_tree` VALUES ('296', 'CITY', '1', '0', '湖北', ',296,');
INSERT INTO `sys_tree` VALUES ('297', 'CITY', '2', '296', '荆门', ',296,297,');
INSERT INTO `sys_tree` VALUES ('298', 'CITY', '2', '296', '咸宁', ',296,298,');
INSERT INTO `sys_tree` VALUES ('299', 'CITY', '2', '296', '襄樊', ',296,299,');
INSERT INTO `sys_tree` VALUES ('300', 'CITY', '2', '296', '荆州', ',296,300,');
INSERT INTO `sys_tree` VALUES ('301', 'CITY', '2', '296', '黄石', ',296,301,');
INSERT INTO `sys_tree` VALUES ('302', 'CITY', '2', '296', '宜昌', ',296,302,');
INSERT INTO `sys_tree` VALUES ('303', 'CITY', '2', '296', '随州', ',296,303,');
INSERT INTO `sys_tree` VALUES ('304', 'CITY', '2', '296', '鄂州', ',296,304,');
INSERT INTO `sys_tree` VALUES ('305', 'CITY', '2', '296', '孝感', ',296,305,');
INSERT INTO `sys_tree` VALUES ('306', 'CITY', '2', '296', '黄冈', ',296,306,');
INSERT INTO `sys_tree` VALUES ('307', 'CITY', '2', '296', '十堰', ',296,307,');
INSERT INTO `sys_tree` VALUES ('308', 'CITY', '1', '0', '湖南', ',308,');
INSERT INTO `sys_tree` VALUES ('309', 'CITY', '2', '308', '长沙', ',308,309,');
INSERT INTO `sys_tree` VALUES ('310', 'CITY', '2', '308', '郴州', ',308,310,');
INSERT INTO `sys_tree` VALUES ('311', 'CITY', '2', '308', '娄底', ',308,311,');
INSERT INTO `sys_tree` VALUES ('312', 'CITY', '2', '308', '衡阳', ',308,312,');
INSERT INTO `sys_tree` VALUES ('313', 'CITY', '2', '308', '株洲', ',308,313,');
INSERT INTO `sys_tree` VALUES ('314', 'CITY', '2', '308', '湘潭', ',308,314,');
INSERT INTO `sys_tree` VALUES ('315', 'CITY', '2', '308', '岳阳', ',308,315,');
INSERT INTO `sys_tree` VALUES ('316', 'CITY', '2', '308', '常德', ',308,316,');
INSERT INTO `sys_tree` VALUES ('317', 'CITY', '2', '308', '邵阳', ',308,317,');
INSERT INTO `sys_tree` VALUES ('318', 'CITY', '2', '308', '益阳', ',308,318,');
INSERT INTO `sys_tree` VALUES ('319', 'CITY', '2', '308', '永州', ',308,319,');
INSERT INTO `sys_tree` VALUES ('320', 'CITY', '2', '308', '张家界', ',308,320,');
INSERT INTO `sys_tree` VALUES ('321', 'CITY', '2', '308', '怀化', ',308,321,');
INSERT INTO `sys_tree` VALUES ('322', 'CITY', '1', '0', '广东', ',322,');
INSERT INTO `sys_tree` VALUES ('323', 'CITY', '2', '322', '江门', ',322,323,');
INSERT INTO `sys_tree` VALUES ('324', 'CITY', '2', '322', '佛山', ',322,324,');
INSERT INTO `sys_tree` VALUES ('325', 'CITY', '2', '322', '汕头', ',322,325,');
INSERT INTO `sys_tree` VALUES ('326', 'CITY', '2', '322', '湛江', ',322,326,');
INSERT INTO `sys_tree` VALUES ('327', 'CITY', '2', '322', '韶关', ',322,327,');
INSERT INTO `sys_tree` VALUES ('328', 'CITY', '2', '322', '中山', ',322,328,');
INSERT INTO `sys_tree` VALUES ('329', 'CITY', '2', '322', '珠海', ',322,329,');
INSERT INTO `sys_tree` VALUES ('330', 'CITY', '2', '322', '茂名', ',322,330,');
INSERT INTO `sys_tree` VALUES ('331', 'CITY', '2', '322', '肇庆', ',322,331,');
INSERT INTO `sys_tree` VALUES ('332', 'CITY', '2', '322', '阳江', ',322,332,');
INSERT INTO `sys_tree` VALUES ('333', 'CITY', '2', '322', '惠州', ',322,333,');
INSERT INTO `sys_tree` VALUES ('334', 'CITY', '2', '322', '潮州', ',322,334,');
INSERT INTO `sys_tree` VALUES ('335', 'CITY', '2', '322', '揭阳', ',322,335,');
INSERT INTO `sys_tree` VALUES ('336', 'CITY', '2', '322', '清远', ',322,336,');
INSERT INTO `sys_tree` VALUES ('337', 'CITY', '2', '322', '河源', ',322,337,');
INSERT INTO `sys_tree` VALUES ('338', 'CITY', '2', '322', '东莞', ',322,338,');
INSERT INTO `sys_tree` VALUES ('339', 'CITY', '2', '322', '汕尾', ',322,339,');
INSERT INTO `sys_tree` VALUES ('340', 'CITY', '2', '322', '云浮', ',322,340,');
INSERT INTO `sys_tree` VALUES ('341', 'CITY', '1', '0', '广西', ',341,');
INSERT INTO `sys_tree` VALUES ('342', 'CITY', '2', '341', '南宁', ',341,342,');
INSERT INTO `sys_tree` VALUES ('343', 'CITY', '2', '341', '贺州', ',341,343,');
INSERT INTO `sys_tree` VALUES ('344', 'CITY', '2', '341', '柳州', ',341,344,');
INSERT INTO `sys_tree` VALUES ('345', 'CITY', '2', '341', '桂林', ',341,345,');
INSERT INTO `sys_tree` VALUES ('346', 'CITY', '2', '341', '梧州', ',341,346,');
INSERT INTO `sys_tree` VALUES ('347', 'CITY', '2', '341', '北海', ',341,347,');
INSERT INTO `sys_tree` VALUES ('348', 'CITY', '2', '341', '玉林', ',341,348,');
INSERT INTO `sys_tree` VALUES ('349', 'CITY', '2', '341', '钦州', ',341,349,');
INSERT INTO `sys_tree` VALUES ('350', 'CITY', '2', '341', '百色', ',341,350,');
INSERT INTO `sys_tree` VALUES ('351', 'CITY', '2', '341', '防城港', ',341,351,');
INSERT INTO `sys_tree` VALUES ('352', 'CITY', '2', '341', '贵港', ',341,352,');
INSERT INTO `sys_tree` VALUES ('353', 'CITY', '2', '341', '河池', ',341,353,');
INSERT INTO `sys_tree` VALUES ('354', 'CITY', '2', '341', '崇左', ',341,354,');
INSERT INTO `sys_tree` VALUES ('355', 'CITY', '2', '341', '来宾', ',341,355,');
INSERT INTO `sys_tree` VALUES ('356', 'CITY', '1', '0', '海南', ',356,');
INSERT INTO `sys_tree` VALUES ('357', 'CITY', '2', '356', '海口', ',356,357,');
INSERT INTO `sys_tree` VALUES ('358', 'CITY', '2', '356', '三亚', ',356,358,');
INSERT INTO `sys_tree` VALUES ('359', 'CITY', '1', '0', '四川', ',359,');
INSERT INTO `sys_tree` VALUES ('360', 'CITY', '2', '359', '乐山', ',359,360,');
INSERT INTO `sys_tree` VALUES ('361', 'CITY', '2', '359', '雅安', ',359,361,');
INSERT INTO `sys_tree` VALUES ('362', 'CITY', '2', '359', '广安', ',359,362,');
INSERT INTO `sys_tree` VALUES ('363', 'CITY', '2', '359', '南充', ',359,363,');
INSERT INTO `sys_tree` VALUES ('364', 'CITY', '2', '359', '自贡', ',359,364,');
INSERT INTO `sys_tree` VALUES ('365', 'CITY', '2', '359', '泸州', ',359,365,');
INSERT INTO `sys_tree` VALUES ('366', 'CITY', '2', '359', '内江', ',359,366,');
INSERT INTO `sys_tree` VALUES ('367', 'CITY', '2', '359', '宜宾', ',359,367,');
INSERT INTO `sys_tree` VALUES ('368', 'CITY', '2', '359', '广元', ',359,368,');
INSERT INTO `sys_tree` VALUES ('369', 'CITY', '2', '359', '达州', ',359,369,');
INSERT INTO `sys_tree` VALUES ('370', 'CITY', '2', '359', '资阳', ',359,370,');
INSERT INTO `sys_tree` VALUES ('371', 'CITY', '2', '359', '绵阳', ',359,371,');
INSERT INTO `sys_tree` VALUES ('372', 'CITY', '2', '359', '眉山', ',359,372,');
INSERT INTO `sys_tree` VALUES ('373', 'CITY', '2', '359', '巴中', ',359,373,');
INSERT INTO `sys_tree` VALUES ('374', 'CITY', '2', '359', '攀枝花', ',359,374,');
INSERT INTO `sys_tree` VALUES ('375', 'CITY', '2', '359', '遂宁', ',359,375,');
INSERT INTO `sys_tree` VALUES ('376', 'CITY', '2', '359', '德阳', ',359,376,');
INSERT INTO `sys_tree` VALUES ('377', 'CITY', '1', '0', '贵州', ',377,');
INSERT INTO `sys_tree` VALUES ('378', 'CITY', '2', '377', '贵阳', ',377,378,');
INSERT INTO `sys_tree` VALUES ('379', 'CITY', '2', '377', '安顺', ',377,379,');
INSERT INTO `sys_tree` VALUES ('380', 'CITY', '2', '377', '遵义', ',377,380,');
INSERT INTO `sys_tree` VALUES ('381', 'CITY', '2', '377', '六盘水', ',377,381,');
INSERT INTO `sys_tree` VALUES ('382', 'CITY', '1', '0', '云南', ',382,');
INSERT INTO `sys_tree` VALUES ('383', 'CITY', '2', '382', '昆明', ',382,383,');
INSERT INTO `sys_tree` VALUES ('384', 'CITY', '2', '382', '玉溪', ',382,384,');
INSERT INTO `sys_tree` VALUES ('385', 'CITY', '2', '382', '大理', ',382,385,');
INSERT INTO `sys_tree` VALUES ('386', 'CITY', '2', '382', '曲靖', ',382,386,');
INSERT INTO `sys_tree` VALUES ('387', 'CITY', '2', '382', '昭通', ',382,387,');
INSERT INTO `sys_tree` VALUES ('388', 'CITY', '2', '382', '保山', ',382,388,');
INSERT INTO `sys_tree` VALUES ('389', 'CITY', '2', '382', '丽江', ',382,389,');
INSERT INTO `sys_tree` VALUES ('390', 'CITY', '2', '382', '临沧', ',382,390,');
INSERT INTO `sys_tree` VALUES ('391', 'CITY', '1', '0', '西藏', ',391,');
INSERT INTO `sys_tree` VALUES ('392', 'CITY', '2', '391', '拉萨', ',391,392,');
INSERT INTO `sys_tree` VALUES ('393', 'CITY', '2', '391', '阿里', ',391,393,');
INSERT INTO `sys_tree` VALUES ('394', 'CITY', '1', '0', '陕西', ',394,');
INSERT INTO `sys_tree` VALUES ('395', 'CITY', '2', '394', '咸阳', ',394,395,');
INSERT INTO `sys_tree` VALUES ('396', 'CITY', '2', '394', '榆林', ',394,396,');
INSERT INTO `sys_tree` VALUES ('397', 'CITY', '2', '394', '宝鸡', ',394,397,');
INSERT INTO `sys_tree` VALUES ('398', 'CITY', '2', '394', '铜川', ',394,398,');
INSERT INTO `sys_tree` VALUES ('399', 'CITY', '2', '394', '渭南', ',394,399,');
INSERT INTO `sys_tree` VALUES ('400', 'CITY', '2', '394', '汉中', ',394,400,');
INSERT INTO `sys_tree` VALUES ('401', 'CITY', '2', '394', '安康', ',394,401,');
INSERT INTO `sys_tree` VALUES ('402', 'CITY', '2', '394', '商洛', ',394,402,');
INSERT INTO `sys_tree` VALUES ('403', 'CITY', '2', '394', '延安', ',394,403,');
INSERT INTO `sys_tree` VALUES ('404', 'CITY', '1', '0', '甘肃', ',404,');
INSERT INTO `sys_tree` VALUES ('405', 'CITY', '2', '404', '兰州', ',404,405,');
INSERT INTO `sys_tree` VALUES ('406', 'CITY', '2', '404', '白银', ',404,406,');
INSERT INTO `sys_tree` VALUES ('407', 'CITY', '2', '404', '武威', ',404,407,');
INSERT INTO `sys_tree` VALUES ('408', 'CITY', '2', '404', '金昌', ',404,408,');
INSERT INTO `sys_tree` VALUES ('409', 'CITY', '2', '404', '平凉', ',404,409,');
INSERT INTO `sys_tree` VALUES ('410', 'CITY', '2', '404', '张掖', ',404,410,');
INSERT INTO `sys_tree` VALUES ('411', 'CITY', '2', '404', '嘉峪关', ',404,411,');
INSERT INTO `sys_tree` VALUES ('412', 'CITY', '2', '404', '酒泉', ',404,412,');
INSERT INTO `sys_tree` VALUES ('413', 'CITY', '2', '404', '庆阳', ',404,413,');
INSERT INTO `sys_tree` VALUES ('414', 'CITY', '2', '404', '定西', ',404,414,');
INSERT INTO `sys_tree` VALUES ('415', 'CITY', '2', '404', '陇南', ',404,415,');
INSERT INTO `sys_tree` VALUES ('416', 'CITY', '2', '404', '天水', ',404,416,');
INSERT INTO `sys_tree` VALUES ('417', 'CITY', '1', '0', '青海', ',417,');
INSERT INTO `sys_tree` VALUES ('418', 'CITY', '2', '417', '西宁', ',417,418,');
INSERT INTO `sys_tree` VALUES ('419', 'CITY', '1', '0', '宁夏', ',419,');
INSERT INTO `sys_tree` VALUES ('420', 'CITY', '2', '419', '银川', ',419,420,');
INSERT INTO `sys_tree` VALUES ('421', 'CITY', '2', '419', '固原', ',419,421,');
INSERT INTO `sys_tree` VALUES ('422', 'CITY', '2', '419', '青铜峡', ',419,422,');
INSERT INTO `sys_tree` VALUES ('423', 'CITY', '2', '419', '石嘴山', ',419,423,');
INSERT INTO `sys_tree` VALUES ('424', 'CITY', '2', '419', '中卫', ',419,424,');
INSERT INTO `sys_tree` VALUES ('425', 'CITY', '1', '0', '新疆', ',425,');
INSERT INTO `sys_tree` VALUES ('426', 'CITY', '2', '425', '乌鲁木齐', ',425,426,');
INSERT INTO `sys_tree` VALUES ('427', 'CITY', '2', '425', '克拉玛依', ',425,427,');
INSERT INTO `sys_tree` VALUES ('428', 'CITY', '1', '0', '香港', ',428,');
INSERT INTO `sys_tree` VALUES ('429', 'CITY', '2', '428', '香港岛', ',428,429,');
INSERT INTO `sys_tree` VALUES ('430', 'CITY', '2', '428', '九龙', ',428,430,');
INSERT INTO `sys_tree` VALUES ('431', 'CITY', '2', '428', '新界', ',428,431,');
INSERT INTO `sys_tree` VALUES ('432', 'CITY', '2', '428', '新界西', ',428,432,');
INSERT INTO `sys_tree` VALUES ('433', 'CITY', '1', '0', '澳门', ',433,');
INSERT INTO `sys_tree` VALUES ('434', 'CITY', '2', '433', '澳门半岛', ',433,434,');
INSERT INTO `sys_tree` VALUES ('435', 'CITY', '2', '433', '澳门离岛', ',433,435,');
INSERT INTO `sys_tree` VALUES ('436', 'CITY', '1', '0', '台湾', ',436,');
INSERT INTO `sys_tree` VALUES ('437', 'CITY', '2', '436', '基隆', ',436,437,');
INSERT INTO `sys_tree` VALUES ('438', 'CITY', '2', '436', '台中', ',436,438,');
INSERT INTO `sys_tree` VALUES ('439', 'CITY', '2', '436', '新竹', ',436,439,');
INSERT INTO `sys_tree` VALUES ('440', 'CITY', '2', '436', '台南', ',436,440,');
INSERT INTO `sys_tree` VALUES ('441', 'CITY', '2', '436', '嘉义', ',436,441,');
INSERT INTO `sys_tree` VALUES ('442', 'CITY', '2', '436', '台北县', ',436,442,');
INSERT INTO `sys_tree` VALUES ('443', 'CITY', '2', '436', '台东县', ',436,443,');
INSERT INTO `sys_tree` VALUES ('444', 'CITY', '2', '436', '澎湖县', ',436,444,');
INSERT INTO `sys_tree` VALUES ('445', 'CITY', '2', '436', '花莲县', ',436,445,');
INSERT INTO `sys_tree` VALUES ('446', 'CITY', '2', '436', '屏东县', ',436,446,');
INSERT INTO `sys_tree` VALUES ('447', 'CITY', '2', '436', '高雄县', ',436,447,');
INSERT INTO `sys_tree` VALUES ('448', 'CITY', '2', '436', '台南县', ',436,448,');
INSERT INTO `sys_tree` VALUES ('449', 'CITY', '2', '436', '嘉义县', ',436,449,');
INSERT INTO `sys_tree` VALUES ('450', 'CITY', '2', '436', '云林县', ',436,450,');
INSERT INTO `sys_tree` VALUES ('451', 'CITY', '2', '436', '南投县', ',436,451,');
INSERT INTO `sys_tree` VALUES ('452', 'CITY', '2', '436', '彰化县', ',436,452,');
INSERT INTO `sys_tree` VALUES ('453', 'CITY', '2', '436', '台中县', ',436,453,');
INSERT INTO `sys_tree` VALUES ('454', 'CITY', '2', '436', '苗栗县', ',436,454,');
INSERT INTO `sys_tree` VALUES ('455', 'CITY', '2', '436', '桃园县', ',436,455,');
INSERT INTO `sys_tree` VALUES ('456', 'CITY', '2', '436', '宜兰县', ',436,456,');
INSERT INTO `sys_tree` VALUES ('457', 'CITY', '2', '436', '新竹县', ',436,457,');
INSERT INTO `sys_tree` VALUES ('458', 'CITY', '2', '436', '台北', ',436,458,');
INSERT INTO `sys_tree` VALUES ('459', 'CITY', '2', '436', '高雄', ',436,459,');
INSERT INTO `sys_tree` VALUES ('460', 'CITY', '2', '436', '马祖县', ',436,460,');
INSERT INTO `sys_tree` VALUES ('461', 'CITY', '2', '436', '金门县', ',436,461,');
INSERT INTO `sys_tree` VALUES ('495', 'CITY', '1', '0', '安徽', ',495,');
INSERT INTO `sys_tree` VALUES ('496', 'CITY', '2', '495', '六安', ',495,496,');
INSERT INTO `sys_tree` VALUES ('504', 'CITY', '2', '495', '滁州', ',495,504,');
INSERT INTO `sys_tree` VALUES ('507', 'CITY', '1', '0', '北京', ',507,');
INSERT INTO `sys_tree` VALUES ('508', 'CITY', '2', '507', '北京', ',507,508,');
INSERT INTO `sys_tree` VALUES ('510', 'CITY', '2', '495', '合肥', ',495,510,');
INSERT INTO `sys_tree` VALUES ('511', 'CITY', '2', '495', '芜湖', ',495,511,');
INSERT INTO `sys_tree` VALUES ('512', 'CITY', '2', '495', '蚌埠', ',495,512,');
INSERT INTO `sys_tree` VALUES ('513', 'CITY', '2', '495', '淮南', ',495,513,');
INSERT INTO `sys_tree` VALUES ('514', 'CITY', '2', '495', '马鞍山', ',495,514,');
INSERT INTO `sys_tree` VALUES ('515', 'CITY', '2', '495', '淮北', ',495,515,');
INSERT INTO `sys_tree` VALUES ('516', 'CITY', '2', '495', '铜陵', ',495,516,');
INSERT INTO `sys_tree` VALUES ('517', 'CITY', '2', '495', '安庆', ',495,517,');
INSERT INTO `sys_tree` VALUES ('518', 'CITY', '2', '495', '黄山', ',495,518,');
INSERT INTO `sys_tree` VALUES ('519', 'CITY', '2', '495', '阜阳', ',495,519,');
INSERT INTO `sys_tree` VALUES ('520', 'CITY', '2', '495', '宿州', ',495,520,');
INSERT INTO `sys_tree` VALUES ('521', 'CITY', '2', '495', '宣城', ',495,521,');
INSERT INTO `sys_tree` VALUES ('522', 'CITY', '2', '495', '池州', ',495,522,');
INSERT INTO `sys_tree` VALUES ('523', 'CITY', '2', '495', '亳州', ',495,523,');
INSERT INTO `sys_tree` VALUES ('524', 'CITY', '1', '0', '天津', ',524,');
INSERT INTO `sys_tree` VALUES ('525', 'CITY', '2', '524', '天津', ',524,525,');
INSERT INTO `sys_tree` VALUES ('526', 'CITY', '1', '0', '重庆', ',526,');
INSERT INTO `sys_tree` VALUES ('527', 'CITY', '2', '526', '重庆', ',526,527,');
INSERT INTO `sys_tree` VALUES ('528', 'CITY', '1', '0', '上海', ',528,');
INSERT INTO `sys_tree` VALUES ('529', 'CITY', '2', '528', '上海', ',528,529,');
INSERT INTO `sys_tree` VALUES ('530', 'CITY', '2', '394', '西安', ',394,530,');
INSERT INTO `sys_tree` VALUES ('531', 'CITY', '2', '322', '广州', ',322,531,');
INSERT INTO `sys_tree` VALUES ('532', 'CITY', '2', '322', '深圳', ',322,532,');
INSERT INTO `sys_tree` VALUES ('544', 'CITY', '2', '322', '梅州', ',322,544,');
INSERT INTO `sys_tree` VALUES ('545', 'CITY', '2', '356', '白沙', ',356,545,');
INSERT INTO `sys_tree` VALUES ('546', 'CITY', '2', '356', '保亭', ',356,546,');
INSERT INTO `sys_tree` VALUES ('547', 'CITY', '2', '356', '澄迈', ',356,547,');
INSERT INTO `sys_tree` VALUES ('548', 'CITY', '2', '356', '昌江', ',356,548,');
INSERT INTO `sys_tree` VALUES ('549', 'CITY', '2', '356', '儋州', ',356,549,');
INSERT INTO `sys_tree` VALUES ('550', 'CITY', '2', '356', '定安', ',356,550,');
INSERT INTO `sys_tree` VALUES ('551', 'CITY', '2', '356', '东方', ',356,551,');
INSERT INTO `sys_tree` VALUES ('552', 'CITY', '2', '356', '临高', ',356,552,');
INSERT INTO `sys_tree` VALUES ('553', 'CITY', '2', '356', '陵水', ',356,553,');
INSERT INTO `sys_tree` VALUES ('554', 'CITY', '2', '356', '乐东', ',356,554,');
INSERT INTO `sys_tree` VALUES ('555', 'CITY', '2', '356', '南沙岛', ',356,555,');
INSERT INTO `sys_tree` VALUES ('556', 'CITY', '2', '356', '琼海', ',356,556,');
INSERT INTO `sys_tree` VALUES ('557', 'CITY', '2', '356', '琼中', ',356,557,');
INSERT INTO `sys_tree` VALUES ('558', 'CITY', '2', '356', '屯昌', ',356,558,');
INSERT INTO `sys_tree` VALUES ('559', 'CITY', '2', '356', '五指山', ',356,559,');
INSERT INTO `sys_tree` VALUES ('560', 'CITY', '2', '356', '文昌', ',356,560,');
INSERT INTO `sys_tree` VALUES ('561', 'CITY', '2', '356', '万宁', ',356,561,');
INSERT INTO `sys_tree` VALUES ('562', 'CITY', '2', '356', '西沙', ',356,562,');
INSERT INTO `sys_tree` VALUES ('563', 'CITY', '2', '425', '阿克苏', ',425,563,');
INSERT INTO `sys_tree` VALUES ('564', 'CITY', '2', '425', '阿图什', ',425,564,');
INSERT INTO `sys_tree` VALUES ('565', 'CITY', '2', '425', '阿勒泰', ',425,565,');
INSERT INTO `sys_tree` VALUES ('566', 'CITY', '2', '425', '阿拉尔', ',425,566,');
INSERT INTO `sys_tree` VALUES ('567', 'CITY', '2', '425', '博乐', ',425,567,');
INSERT INTO `sys_tree` VALUES ('568', 'CITY', '2', '425', '昌吉', ',425,568,');
INSERT INTO `sys_tree` VALUES ('569', 'CITY', '2', '425', '哈密', ',425,569,');
INSERT INTO `sys_tree` VALUES ('570', 'CITY', '2', '425', '和田', ',425,570,');
INSERT INTO `sys_tree` VALUES ('571', 'CITY', '2', '425', '喀什', ',425,571,');
INSERT INTO `sys_tree` VALUES ('572', 'CITY', '2', '425', '库尔勒', ',425,572,');
INSERT INTO `sys_tree` VALUES ('573', 'CITY', '2', '425', '石河子', ',425,573,');
INSERT INTO `sys_tree` VALUES ('574', 'CITY', '2', '425', '吐鲁番', ',425,574,');
INSERT INTO `sys_tree` VALUES ('575', 'CITY', '2', '425', '塔城', ',425,575,');
INSERT INTO `sys_tree` VALUES ('576', 'CITY', '2', '425', '伊宁', ',425,576,');
INSERT INTO `sys_tree` VALUES ('577', 'CITY', '2', '391', '昌都', ',391,577,');
INSERT INTO `sys_tree` VALUES ('578', 'CITY', '2', '391', '林芝', ',391,578,');
INSERT INTO `sys_tree` VALUES ('579', 'CITY', '2', '391', '那曲', ',391,579,');
INSERT INTO `sys_tree` VALUES ('580', 'CITY', '2', '391', '日喀则', ',391,580,');
INSERT INTO `sys_tree` VALUES ('581', 'CITY', '2', '391', '山南', ',391,581,');
INSERT INTO `sys_tree` VALUES ('582', 'CITY', '2', '359', '成都', ',359,582,');
INSERT INTO `sys_tree` VALUES ('583', 'CITY', '2', '359', '阿贝', ',359,583,');
INSERT INTO `sys_tree` VALUES ('584', 'CITY', '2', '359', '甘孜', ',359,584,');
INSERT INTO `sys_tree` VALUES ('585', 'CITY', '2', '359', '凉山', ',359,585,');
INSERT INTO `sys_tree` VALUES ('586', 'CITY', '2', '394', '宝康', ',394,586,');
INSERT INTO `sys_tree` VALUES ('587', 'CITY', '2', '394', '陈仓', ',394,587,');
INSERT INTO `sys_tree` VALUES ('588', 'CITY', '2', '262', '济南', ',262,588,');
INSERT INTO `sys_tree` VALUES ('589', 'CITY', '2', '262', '青岛', ',262,589,');
INSERT INTO `sys_tree` VALUES ('590', 'CITY', '2', '417', '果洛', ',417,590,');
INSERT INTO `sys_tree` VALUES ('591', 'CITY', '2', '417', '海东', ',417,591,');
INSERT INTO `sys_tree` VALUES ('592', 'CITY', '2', '417', '海南', ',417,592,');
INSERT INTO `sys_tree` VALUES ('593', 'CITY', '2', '417', '海北', ',417,593,');
INSERT INTO `sys_tree` VALUES ('594', 'CITY', '2', '417', '海西', ',417,594,');
INSERT INTO `sys_tree` VALUES ('595', 'CITY', '2', '417', '黄南', ',417,595,');
INSERT INTO `sys_tree` VALUES ('596', 'CITY', '2', '417', '玉树', ',417,596,');
INSERT INTO `sys_tree` VALUES ('597', 'CITY', '2', '419', '吴忠', ',419,597,');
INSERT INTO `sys_tree` VALUES ('598', 'CITY', '2', '174', '阿拉善左旗', ',174,598,');
INSERT INTO `sys_tree` VALUES ('599', 'CITY', '2', '174', '集宁', ',174,599,');
INSERT INTO `sys_tree` VALUES ('600', 'CITY', '2', '174', '临河', ',174,600,');
INSERT INTO `sys_tree` VALUES ('601', 'CITY', '2', '174', '乌兰浩特', ',174,601,');
INSERT INTO `sys_tree` VALUES ('602', 'CITY', '2', '174', '锡林浩特', ',174,602,');
INSERT INTO `sys_tree` VALUES ('603', 'CITY', '2', '495', '毫州', ',495,603,');
INSERT INTO `sys_tree` VALUES ('604', 'CITY', '2', '495', '巢湖', ',495,604,');
INSERT INTO `sys_tree` VALUES ('605', 'CITY', '2', '495', '黄山站', ',495,605,');
INSERT INTO `sys_tree` VALUES ('606', 'CITY', '2', '217', '南京', ',217,606,');
INSERT INTO `sys_tree` VALUES ('607', 'CITY', '2', '217', '秦州', ',217,607,');
INSERT INTO `sys_tree` VALUES ('608', 'CITY', '2', '197', '长春', ',197,608,');
INSERT INTO `sys_tree` VALUES ('609', 'CITY', '2', '197', '延吉', ',197,609,');
INSERT INTO `sys_tree` VALUES ('610', 'CITY', '2', '308', '吉首', ',308,610,');
INSERT INTO `sys_tree` VALUES ('612', 'CITY', '2', '296', '武汉', ',296,612,');
INSERT INTO `sys_tree` VALUES ('613', 'CITY', '2', '296', '恩施', ',296,613,');
INSERT INTO `sys_tree` VALUES ('614', 'CITY', '2', '296', '潜江', ',296,614,');
INSERT INTO `sys_tree` VALUES ('615', 'CITY', '2', '296', '神农架', ',296,615,');
INSERT INTO `sys_tree` VALUES ('616', 'CITY', '2', '296', '天门', ',296,616,');
INSERT INTO `sys_tree` VALUES ('617', 'CITY', '2', '296', '襄阳', ',296,617,');
INSERT INTO `sys_tree` VALUES ('618', 'CITY', '2', '296', '仙桃', ',296,618,');
INSERT INTO `sys_tree` VALUES ('619', 'CITY', '2', '241', '厦门', ',241,619,');
INSERT INTO `sys_tree` VALUES ('620', 'CITY', '2', '205', '哈尔滨', ',205,620,');
INSERT INTO `sys_tree` VALUES ('621', 'CITY', '2', '205', '大兴安岭', ',205,621,');
INSERT INTO `sys_tree` VALUES ('622', 'CITY', '2', '404', '合作', ',404,622,');
INSERT INTO `sys_tree` VALUES ('623', 'CITY', '2', '404', '临夏', ',404,623,');
INSERT INTO `sys_tree` VALUES ('624', 'CITY', '2', '404', '武都', ',404,624,');
INSERT INTO `sys_tree` VALUES ('625', 'CITY', '2', '278', '济源', ',278,625,');
INSERT INTO `sys_tree` VALUES ('626', 'CITY', '2', '230', '杭州', ',230,626,');
INSERT INTO `sys_tree` VALUES ('627', 'CITY', '2', '230', '宁波', ',230,627,');
INSERT INTO `sys_tree` VALUES ('628', 'CITY', '2', '382', '楚雄', ',382,628,');
INSERT INTO `sys_tree` VALUES ('629', 'CITY', '2', '382', '德宏', ',382,629,');
INSERT INTO `sys_tree` VALUES ('630', 'CITY', '2', '382', '红河', ',382,630,');
INSERT INTO `sys_tree` VALUES ('631', 'CITY', '2', '382', '景洪', ',382,631,');
INSERT INTO `sys_tree` VALUES ('632', 'CITY', '2', '382', '怒江', ',382,632,');
INSERT INTO `sys_tree` VALUES ('633', 'CITY', '2', '382', '思茅', ',382,633,');
INSERT INTO `sys_tree` VALUES ('634', 'CITY', '2', '382', '文山', ',382,634,');
INSERT INTO `sys_tree` VALUES ('635', 'CITY', '2', '382', '香格里拉', ',382,635,');
INSERT INTO `sys_tree` VALUES ('637', 'CITY', '2', '377', '毕节', ',377,637,');
INSERT INTO `sys_tree` VALUES ('638', 'CITY', '2', '377', '都匀', ',377,638,');
INSERT INTO `sys_tree` VALUES ('639', 'CITY', '2', '377', '凯里', ',377,639,');
INSERT INTO `sys_tree` VALUES ('640', 'CITY', '2', '377', '晴隆', ',377,640,');
INSERT INTO `sys_tree` VALUES ('641', 'CITY', '2', '377', '铜仁', ',377,641,');
INSERT INTO `sys_tree` VALUES ('642', 'CITY', '2', '377', '兴义', ',377,642,');
INSERT INTO `sys_tree` VALUES ('643', 'CITY', '2', '184', '沈阳', ',184,643,');
INSERT INTO `sys_tree` VALUES ('644', 'CITY', '2', '184', '大连', ',184,644,');
INSERT INTO `sys_user` VALUES ('1', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', '��\Z�@�G�f�����', '', '', '2016-09-25 11:14:13', '2016-11-14 22:42:34', '0', ',2,', ',管理员,', '104,105,106,107,108,109,110,111,112,113');
INSERT INTO `sys_user` VALUES ('2', 'dw_jiangkunpeng', '99800032b7d26893553ce81530e0f821', '���z��B��2�(�;', '?vC�OEq�w��r�L', 'b\Z�����W�P����;>�b���(zW�q�i', '2016-09-25 11:14:40', '2016-11-13 21:27:10', '0', ',3,', ',普通用户,', ',107,111,');
INSERT INTO `sys_user` VALUES ('3', 'zhangsan', 'c1cb843f3929978af615fe7dfbf532cb', '�.|h�`�qC��za�l', '��6�E����rk�', '�w�a�H�^B&��)��V��?M�����9V�~�b', '2016-11-23 21:32:41', '2016-11-23 21:58:47', '0', ',3,', ',普通用户,', '119,120');
