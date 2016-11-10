/*
MySQL Data Transfer
Source Host: localhost
Source Database: byd_cm
Target Host: localhost
Target Database: byd_cm
Date: 2016/11/10 18:34:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cm_info
-- ----------------------------
DROP TABLE IF EXISTS `cm_info`;
CREATE TABLE `cm_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_yxb` int(11) DEFAULT NULL,
  `org_dq` int(11) DEFAULT NULL,
  `org_jxs` int(11) DEFAULT NULL,
  `org_code` varchar(500) DEFAULT NULL,
  `city_sf` int(11) DEFAULT NULL,
  `city_cs` int(11) DEFAULT NULL,
  `city_code` varchar(500) DEFAULT NULL,
  `sqr_xm` varchar(50) DEFAULT NULL COMMENT '申请人姓名',
  `sqr_zjlx` varchar(50) DEFAULT NULL COMMENT '申请人证件类型',
  `sqr_zjhm` varchar(100) DEFAULT NULL COMMENT '申请人证件号码',
  `sqr_dhhm` varchar(50) DEFAULT NULL COMMENT '申请人电话号码',
  `sjgcr_xm` varchar(50) DEFAULT NULL COMMENT '实际购车人姓名',
  `sjgcr_zjhm` varchar(50) DEFAULT NULL COMMENT '实际购车人证件号码',
  `sjgcr_dhhm` varchar(50) DEFAULT NULL COMMENT '实际购车人电话号码',
  `gsqrgx` varchar(50) DEFAULT NULL COMMENT '跟申请人关系',
  `hkzt` varchar(50) DEFAULT NULL COMMENT '还款状态',
  `xb` varchar(50) DEFAULT NULL COMMENT '性别',
  `nl` int(11) DEFAULT NULL COMMENT '年龄',
  `csrq` date DEFAULT NULL COMMENT '出生日期',
  `hyzk` varchar(50) DEFAULT NULL COMMENT '婚姻状况',
  `dqzt` varchar(50) DEFAULT NULL COMMENT '当前状态',
  `htbh` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `htjhrq` date DEFAULT NULL COMMENT '合同激活日期',
  `sqtjrq` date DEFAULT NULL COMMENT '申请提交日期',
  `yf` int(11) DEFAULT NULL COMMENT '月份',
  `hzjjrq` date DEFAULT NULL COMMENT '核准拒绝日期',
  `zc` int(11) DEFAULT NULL COMMENT '周次',
  `cxi` varchar(50) DEFAULT NULL COMMENT '车系',
  `cxing` varchar(50) DEFAULT NULL COMMENT '车型',
  `cphm` varchar(50) DEFAULT NULL COMMENT '车牌号码',
  `vin` varchar(100) DEFAULT NULL COMMENT 'VIN号',
  `gcrq` date DEFAULT NULL COMMENT '购车日期',
  `jcrq` date DEFAULT NULL COMMENT '交车日期',
  `fkfs` varchar(50) DEFAULT NULL COMMENT '付款方式',
  `jszbh` varchar(50) DEFAULT NULL COMMENT '驾驶证编号',
  `jzdqr` date DEFAULT NULL COMMENT '驾照到期日',
  `jtrs` varchar(50) DEFAULT NULL COMMENT '家庭人数',
  `jycd` varchar(50) DEFAULT NULL COMMENT '教育程度',
  `dksqhm` varchar(50) DEFAULT NULL COMMENT '贷款申请号码',
  `hylx` int(11) DEFAULT NULL COMMENT '行业类型',
  `hyzlx` int(11) DEFAULT NULL COMMENT '行业子类型',
  `hyzlx_code` varchar(500) DEFAULT NULL COMMENT '行业子类型编号',
  `zylx` varchar(100) DEFAULT NULL COMMENT '职业类型',
  `hkszd` varchar(50) DEFAULT NULL COMMENT '户口所在地',
  `ysr` int(11) DEFAULT NULL COMMENT '月收入',
  `jkr_sf` int(11) DEFAULT NULL COMMENT '借款人省份',
  `jkr_cs` int(11) DEFAULT NULL COMMENT '借款人城市',
  `hkdz` varchar(200) DEFAULT NULL COMMENT '户口地址',
  `dzlx` varchar(50) DEFAULT NULL COMMENT '地址类型',
  `fclx` varchar(50) DEFAULT NULL COMMENT '房产类型',
  `jznx` int(11) DEFAULT NULL COMMENT '居住年限',
  `gsmc` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `qyxz` varchar(50) DEFAULT NULL COMMENT '企业性质',
  `zw` varchar(50) DEFAULT NULL COMMENT '职位',
  `gsdh` varchar(50) DEFAULT NULL COMMENT '公司电话',
  `dzy` varchar(200) DEFAULT NULL COMMENT '地址一',
  `gznx` int(11) DEFAULT NULL COMMENT '工作年限',
  `zcjg` double DEFAULT NULL COMMENT '资产价格',
  `csys` varchar(50) DEFAULT NULL COMMENT '车身颜色',
  `cpz` varchar(50) DEFAULT NULL COMMENT '产品组',
  `cplx` varchar(50) DEFAULT NULL COMMENT '产品类型',
  `dkqs` varchar(50) DEFAULT NULL COMMENT '贷款期数',
  `xsjg` double DEFAULT NULL COMMENT '销售价格',
  `sfkbl` double DEFAULT NULL COMMENT '首付款比例',
  `sfkje` double DEFAULT NULL COMMENT '首付款金额',
  `dkje` double DEFAULT NULL COMMENT '贷款金额',
  `khll` double DEFAULT NULL COMMENT '客户利率',
  `lxze` double DEFAULT NULL COMMENT '利息总额',
  `gcyhke` double DEFAULT NULL COMMENT '购车月还款额',
  `khsqbm` varchar(50) DEFAULT NULL COMMENT '客户申请编码',
  `jsr_xm` varchar(50) DEFAULT NULL COMMENT '介绍人姓名',
  `jsr_lxdh` varchar(50) DEFAULT NULL COMMENT '介绍人联系电话',
  `xqah` varchar(100) DEFAULT NULL COMMENT '兴趣爱好',
  `yyxhsl` varchar(50) DEFAULT NULL COMMENT '拥有小孩数量',
  `dygxhnljd` varchar(50) DEFAULT NULL COMMENT '第一个小孩年龄阶段',
  `degxhnljd` varchar(50) DEFAULT NULL COMMENT '第二个小孩年龄阶段',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sjgcr_zjhm` (`sjgcr_zjhm`),
  KEY `sqr_zjhm` (`sqr_zjhm`),
  KEY `dksqhm` (`dksqhm`),
  KEY `khsqbm` (`khsqbm`),
  KEY `vin` (`vin`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_field`;
CREATE TABLE `sys_field` (
  `fname` varchar(100) NOT NULL COMMENT '字段名',
  `sname` varchar(100) NOT NULL COMMENT '显示字段名',
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='系统-菜单';

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
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8 COMMENT='系统-角色-菜单';

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
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统-用户';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cm_info` VALUES ('183', '112', '658', '659', ',112,658,659,', '493', '494', ',493,494,', '陈一', '1', '440281198003308411', '18746921734', null, '', null, null, '4', '2', '36', '1980-01-01', '2', 'Converted', 'BZ100001', '2015-03-23', '2015-03-20', '3', '2015-03-23', '12', '旗舰版', 'QIN', null, null, '2015-04-23', null, '1', '915058626', '2017-01-02', '3', '5', 'BX-A000002000', '31', '32', null, '国家机关、党群组织、企业、事业单位负责人', '西安', '12500', '493', '494', '陕西省西安市未央区凤城三路与朱宏路路口', null, '6', '8', '政府部门', '8', '徐汇区法院主任', null, null, '6', '209800', '魔力橙', '比亚迪--标准贷', '标准贷款-等额本金（个人）', '36', '146800', '20', '29360', '14.49', '117440', '26234.47', '4041.83', '00000001', '廖瀚卿', '15989300244', '打球', '1', '2', null, '0');
INSERT INTO `cm_info` VALUES ('184', '112', '658', '659', ',112,658,659,', '493', '494', ',493,494,', '吴二', '1', '440301198510142738', '18746921735', null, '', null, null, '4', '2', '31', '1985-01-01', '2', 'Converted', 'BZ100002', '2015-03-23', '2015-03-20', '3', '2015-03-23', '12', '豪华版', 'QIN', null, null, '2015-04-23', null, '2', '915066589', '2017-02-02', '5', '5', 'BX-A000003000', '31', '32', null, '办事人员和有关人员', '西安', '9800', '493', '494', '陕西省西安市未央区凤城三路与朱宏路路口', null, '6', '10', '政府部门', '8', '奉贤区法院院长兼党委书记', null, null, '6', '209800', '天山白', '比亚迪--标准贷', '标准贷款-等额本金（个人）', '36', '146800', '20', '29360', '14.49', '117440', '26234.47', '4041.83', '00000002', '谷传明', '13703176338', '看书', '1', '1', null, '0');
INSERT INTO `cm_info` VALUES ('185', '106', '660', '661', ',106,660,661,', '495', '496', ',495,496,', '张三', '1', '230302199104184222', '18746921736', null, '', null, null, '5', '1', '25', '1991-01-01', '5', 'Converted', 'BZ100003', '2015-05-04', '2015-04-23', '4', '2015-04-24', '17', '尊贵版', 'G5', null, null, '2015-06-04', null, '2', 'A16005939', '2017-03-02', '4', '5', 'BX-A000013001', '15', '33', null, '专业技术人员', '六安', '12000', '495', '496', '六安市金安区东方汽车城皖西大道南侧A52号', null, '8', '12', '政府部门', '8', '徐汇区法院院长兼党委书记', null, null, '1', '85900', '皓月银', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '76900', '40', '30760', '14.49', '46140', '11026.56', '1587.96', '00000003', '张嘉煜', '13902900066', '运动', '0', null, null, '0');
INSERT INTO `cm_info` VALUES ('186', '106', '660', '661', ',106,660,661,', '495', '496', ',495,496,', '李四', '1', '22010419820822153X', '18746921737', null, '', null, null, '5', '1', '34', '1982-01-01', '2', 'Converted', 'BZ100010', '2015-05-08', '2015-04-24', '4', '2015-04-27', '17', '尊贵版', 'SURUI', null, null, '2015-06-08', null, '2', '916011327', '2017-04-02', '5', '2', 'BX-A000015001', '13', '34', null, '专业技术人员', '六安', '7800', '495', '496', '六安市金安区东方汽车城皖西大道南侧A52号', null, '8', '11', '政府部门', '8', ' 金山区法院院长兼党委书记', null, null, '10', '73900', '德兰黑', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '73000', '30', '21900', '14.49', '51100', '12211.76', '1758.66', '00000004', '陈岳俊', '13501557735', '旅游', '1', '3', null, '0');
INSERT INTO `cm_info` VALUES ('187', '108', '662', '663', ',108,662,663,', '491', '492', ',491,492,', '王五', '1', '440181198708205174', '18746921738', null, '', null, null, '5', '1', '29', '1987-01-01', '2', 'Converted', 'BZ100004', '2015-05-04', '2015-04-24', '4', '2015-04-27', '17', '尊贵版', 'F3', null, null, '2015-06-04', null, '2', '916013025', '2017-05-02', '5', '3', 'BX-A000016000', '18', '35', null, '办事人员和有关人员', '长沙', '5000', '491', '492', '长沙市雨花区经开区桃阳村黄谷路', null, '7', '3', '政府部门', '8', ' 徐汇区法院政治部主任兼纪委书记', null, null, '1', '45900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '42900', '30.07', '12900', '14.49', '30000', '7169.28', '1032.48', '00000005', '王卓欤', '15243602288', '打球', '1', '2', null, '0');
INSERT INTO `cm_info` VALUES ('188', '113', '664', '665', ',113,664,665,', '497', '498', ',497,498,', '杨六', '1', '140102198905065178', '18746921739', null, '', null, null, '5', '1', '27', '1989-01-01', '2', 'Converted', 'BZ100007', '2015-05-06', '2015-04-27', '4', '2015-04-29', '17', '旗舰版', 'S7', null, null, '2015-06-06', null, '2', '916000476', '2017-06-02', '5', '4', 'BX-A000017000', '24', '36', null, '商业、服务业人员', '南充', '8600', '497', '498', '南充市高坪区航空港工业集中区', null, '7', '2', '上海艾领德国际贸易公司', '9', '上海艾领德国际贸易公司董事长', null, null, '5', '116900', '巧克力棕', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '115900', '30', '34770', '14.49', '81130', '19388.48', '2792.18', '00000006', '朱卫国', '13488659647', '看书', '1', '1', null, '0');
INSERT INTO `cm_info` VALUES ('189', '113', '664', '665', ',113,664,665,', '497', '498', ',497,498,', '林七', '1', '440307198709054824', '18746921740', null, '', null, null, '5', '1', '29', '1987-01-01', '2', 'Converted', 'BZ100008', '2015-05-06', '2015-04-27', '4', '2015-04-28', '17', '豪华版', 'S7', null, null, '2015-06-06', null, '2', '916007181', '2017-07-02', '8', '3', 'BX-A000018000', '24', '36', null, '专业技术人员', '南充', '13000', '497', '498', '南充市高坪区航空港工业集中区', null, '1', '2', '政府部门', '8', '武汉海关关长', null, null, '5', '116900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '116900', '30', '35070', '14.49', '81830', '19555.72', '2816.27', '00000007', '杨国平', '18991902693', '运动', '2', '3', '1', '0');
INSERT INTO `cm_info` VALUES ('190', '113', '664', '666', ',113,664,666,', '497', '499', ',497,499,', '赵八', '1', '421002197212271423', '18746921741', null, '', null, null, '5', '1', '44', '1972-01-01', '2', 'Converted', 'BZ100005', '2015-05-05', '2015-04-27', '4', '2015-04-29', '17', '豪华版', 'S7', null, null, '2015-06-05', null, '2', '916005239', '2017-08-02', '5', '2', 'BX-A000020000', '13', '34', null, '专业技术人员', '泸州', '18000', '497', '499', '四川省泸州市纳溪区浙江产业园', null, '3', '2', '政府部门', '8', '上海铁路局副局长', null, null, '5', '139900', '巧克力棕', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '139900', '20.01', '28000', '14.49', '111900', '26741.76', '3851.16', '00000008', '潘学刚', '13611981186', '旅游', '1', '15', null, '0');
INSERT INTO `cm_info` VALUES ('191', '113', '664', '666', ',113,664,666,', '497', '499', ',497,499,', '黄九', '1', '420105198811253678', '18746921742', null, '', null, null, '5', '1', '28', '1988-01-01', '2', 'Converted', 'BZ100006', '2015-05-05', '2015-04-28', '4', '2015-04-30', '17', '豪华版', 'NEWF3', null, null, '2015-06-05', null, '2', '916010640', '2017-09-02', '4', '3', 'BX-A000021001', '31', '32', null, '商业、服务业人员', '泸州', '6700', '497', '499', '四川省泸州市纳溪区浙江产业园', null, '1', '3', '上海华勤通讯技术有限公司', '10', '上海华勤通讯技术有限公司市场总监', null, null, '1', '51900', '雅典银', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '24', '45900', '32.46', '14900', '14.49', '31000', '4894.16', '1495.59', '00000009', '王强鹰', '18016367263', '打球', '2', '3', '1', '0');
INSERT INTO `cm_info` VALUES ('192', '112', '658', '667', ',112,658,667,', '493', '500', ',493,500,', '江十', '1', '440301197403213818', '18746921743', null, '', null, null, '5', '1', '42', '1974-01-01', '2', 'Converted', 'BZ100022', '2015-05-20', '2015-04-29', '4', '2015-04-30', '17', '旗舰版', 'S6', null, null, '2015-06-20', null, '2', 'A16007445', '2017-10-02', '5', '4', 'BX-A000023000', '11', '111', null, '专业技术人员', '榆林', '6000', '493', '500', '陕西省榆林市草海则小学旁', null, '8', '8', '中国经营报', '8', '中国经营报记者', null, null, '8', '109900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '103395', '30', '31018.5', '14.49', '72376.5', '17296.62', '2490.92', '00000010', '李延春', '13809116467', '看书', '1', '13', null, '0');
INSERT INTO `cm_info` VALUES ('193', '113', '664', '666', ',113,664,666,', '497', '499', ',497,499,', '吴一', '1', '370202198706240424', '18746921744', null, '', null, null, '5', '1', '29', '1987-01-01', '2', 'Converted', 'BZ100050', '2015-05-27', '2015-05-04', '5', '2015-05-05', '18', '旗舰版', 'NEWF3', null, null, '2015-06-27', null, '2', '916007951', '2017-11-02', '4', '3', 'BX-A000025000', '24', '36', null, '专业技术人员', '泸州', '5900', '497', '499', '四川省泸州市纳溪区浙江产业园', null, '7', '3', '政府部门', '8', '上海市团委副书记、团市委常委、少年部部长', null, null, '1', '55900', '雅典银', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '54900', '21.68', '11900', '14.49', '43000', '10276.04', '1479.89', '00000011', '苏剑波', '13661793223', '运动', '1', '2', null, '0');
INSERT INTO `cm_info` VALUES ('194', '108', '668', '669', ',108,668,669,', '501', '502', ',501,502,', '陈二', '1', '432502196810141713', '18746921745', null, '', null, null, '5', '1', '48', '1968-01-01', '2', 'Converted', 'BZ100009', '2015-05-14', '2015-05-05', '5', '2015-05-05', '18', '豪华版', 'SURUI', null, null, '2015-06-14', null, '2', 'A16012773', '2017-12-02', '5', '3', 'BX-A000032000', '12', '114', null, '生产、运输设备操作人员及有关人员', '赣州', '8600', '501', '502', '赣州经济技术开发迎宾大道南侧金潭路西侧', null, '8', '4', '上海电气集团上海电机厂有限公司', '11', '上海电气集团上海电机厂有限公司经理', null, null, '1', '83900', '瑞亚银', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '75600', '31.22', '23600', '14.49', '52000', '12427.04', '1789.64', '00000012', '刘建波', '13608526297', '旅游', '2', '15', '9', '0');
INSERT INTO `cm_info` VALUES ('195', '108', '668', '670', ',108,668,670,', '501', '503', ',501,503,', '李三', '1', '421127198305232816', '18746921746', null, '', null, null, '5', '1', '33', '1983-01-01', '2', 'Converted', 'BZ100019', '2015-05-19', '2015-05-05', '5', '2015-05-06', '18', '尊贵版', 'S6', null, null, '2015-06-19', null, '2', 'A15047009', '2018-01-02', '5', '3', 'BX-A000034000', '12', '116', null, '办事人员和有关人员', '宜春', '5600', '501', '503', '江西省高安市新世纪工业城', null, '8', '5', '上海胜佰太阳能科技有限公司', '10', '上海胜佰太阳能科技有限公司商务总监', null, null, '3', '97900', '德兰黑', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '97900', '30.54', '29900', '14.49', '68000', '16250.44', '2340.29', '00000013', '刘建波', '13608526297', '打球', '2', '7', '5', '0');
INSERT INTO `cm_info` VALUES ('196', '113', '664', '665', ',113,664,665,', '497', '498', ',497,498,', '张四', '1', '362401199211150023', '18746921747', null, '', null, null, '5', '1', '24', '1992-01-01', '5', 'Converted', 'BZ100012', '2015-05-14', '2015-05-05', '5', '2015-05-08', '18', '尊贵版', 'G5', null, null, '2015-06-14', null, '2', '915059417', '2018-02-02', '7', '3', '200000', '22', '117', null, '专业技术人员', '南充', '6000', '497', '498', '南充市高坪区航空港工业集中区', null, '8', '7', '政府部门', '8', '公务员', null, null, '5', '102900', '水晶白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '99900', '20', '19980', '14.49', '79920', '19099.08', '2750.53', '00000014', '刘丹军', '18673162177', '看书', '0', null, null, '0');
INSERT INTO `cm_info` VALUES ('197', '106', '660', '671', ',106,660,671,', '495', '504', ',495,504,', '杨五', '1', '310222198606280219', '18746921748', null, '', null, null, '5', '1', '30', '1986-01-01', '2', 'Converted', 'BZ100047', '2015-05-25', '2015-05-06', '5', '2015-05-06', '18', '尊贵版', 'S7', null, null, '2015-06-25', null, '2', 'A15041704', '2018-03-02', '6', '3', 'BX-A000030000', '18', '119', null, '商业、服务业人员', '滁州', '7800', '495', '504', '安微省滁州市丰乐大道2599号', null, '3', '4', '政府部门', '8', '公务员', null, null, '8', '129900', '巧克力棕', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '127900', '30', '38370', '14.49', '89530', '21395.72', '3081.27', '00000015', '黄道铭', '18662556999', '运动', '2', '4', '1', '0');
INSERT INTO `cm_info` VALUES ('198', '108', '668', '672', ',108,668,672,', '505', '506', ',505,506,', '王六', '1', '370727198411039459', '18746921749', null, '', null, null, '5', '2', '32', '1984-01-01', '2', 'Converted', 'BZ100025', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', '尊贵版', 'F0', null, null, '2015-06-20', null, '2', 'A15069101', '2018-04-02', '5', '5', 'BX-A000046000', '18', '35', null, '商业、服务业人员', '驻马店', '4000', '505', '506', '驻马店市开源大道东段（市车管所旁）', null, '6', '3', '政府部门', '8', '公务员', null, null, '3', '42900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '40000', '30', '12000', '14.49', '28000', '6691.4', '963.65', '00000016', '许金强', '18621398181', '旅游', '1', '5', null, '0');
INSERT INTO `cm_info` VALUES ('199', '112', '658', '667', ',112,658,667,', '493', '500', ',493,500,', '赵七', '1', '430626198003045122', '18746921750', null, '', null, null, '5', '2', '36', '1980-01-01', '2', 'Converted', 'BZ100015', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', '旗舰版', 'G5', null, null, '2015-06-20', null, '2', '915062340', '2018-05-02', '5', '4', 'BX-A000040000', '31', '32', null, '专业技术人员', '榆林', '7200', '493', '500', '陕西省榆林市草海则小学旁', null, '8', '4', '银松公司', '9', '银松公司总裁', null, null, '0', '93900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '24', '90000', '30', '27000', '14.49', '63000', '9946.08', '3039.42', '00000017', '黎宾', '13817212368', '打球', '1', '8', null, '0');
INSERT INTO `cm_info` VALUES ('200', '112', '658', '667', ',112,658,667,', '493', '500', ',493,500,', '林八', '1', '510132198412086662', '18746921751', null, '', null, null, '6', '1', '32', '1984-01-01', '2', 'Converted', 'BZ100021', '2015-05-20', '2015-05-07', '5', '2015-05-08', '19', '豪华版', 'F3', null, null, '2015-06-20', null, '2', '916003142', '2018-06-02', '4', '4', 'BX-A000045000', '14', '122', null, '办事人员和有关人员', '榆林', '4500', '493', '500', '陕西省榆林市草海则小学旁', null, '8', '2', '政府部门', '8', '经信委', null, null, '1', '50900', '天山白', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '12', '47000', '20', '9400', '14.49', '37600', '3016.04', '3384.67', '00000018', '黎宾', '13817212368', '看书', '2', '4', '2', '0');
INSERT INTO `cm_info` VALUES ('201', '106', '660', '661', ',106,660,661,', '495', '496', ',495,496,', '江九', '1', '430105199305121325', '18746921752', null, '', null, null, '5', '1', '23', '1993-01-01', '5', 'Converted', 'BZ100017', '2015-05-19', '2015-05-07', '5', '2015-05-07', '19', '豪华版', 'S7', null, null, '2015-06-19', null, '2', '916003143', '2018-07-02', '5', '4', 'BX-A000035000', '14', '123', null, '办事人员和有关人员', '六安', '9000', '495', '496', '六安市金安区东方汽车城皖西大道南侧A52号', null, '3', '3', '政府部门', '8', '中央人民广播电台副总', null, null, '1', '129900', '德兰黑', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '126900', '30', '38070', '14.49', '88830', '21228.48', '3057.18', '00000019', '高晋琪', '13997056995', '运动', '0', null, null, '0');
INSERT INTO `cm_info` VALUES ('202', '106', '660', '671', ',106,660,671,', '495', '504', ',495,504,', '黄十', '1', '120106199303060020', '18746921753', null, '', null, null, '5', '1', '23', '1993-01-01', '5', 'Converted', 'BZ100041', '2015-05-28', '2015-05-07', '5', '2015-05-07', '19', '豪华版', 'NEWF3', null, null, '2015-06-28', null, '2', '916003144', '2018-08-02', '6', '4', 'BX-A000038000', '12', '124', null, '生产、运输设备操作人员及有关人员', '滁州', '8200', '495', '504', '安微省滁州市丰乐大道2599号', null, '5', '4', '政府部门', '8', '中国人民对外友好协会拉美处主管', null, null, '2', '55900', '德兰黑', '比亚迪--标准贷', '标准贷款-等额本息（个人）', '36', '50385', '20', '10077', '14.49', '40308', '9632.64', '1387.24', '00000020', '周爱涛', '15000181806', '旅游', '0', null, null, '0');
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
INSERT INTO `sys_dist` VALUES ('95', 'CXYS', '天山白', '天山白', '');
INSERT INTO `sys_dist` VALUES ('96', 'CXYS', '皓月银', '皓月银', '');
INSERT INTO `sys_dist` VALUES ('97', 'CXYS', '魔力橙', '魔力橙', '');
INSERT INTO `sys_dist` VALUES ('98', 'CXYS', '德兰黑', '德兰黑', '');
INSERT INTO `sys_dist` VALUES ('99', 'CXYS', '巧克力棕', '巧克力棕', '');
INSERT INTO `sys_dist` VALUES ('102', 'CXI', '旗舰版', '旗舰版', '');
INSERT INTO `sys_dist` VALUES ('103', 'CXI', '豪华版', '豪华版', '');
INSERT INTO `sys_dist` VALUES ('104', 'CXI', '尊贵版', '尊贵版', '');
INSERT INTO `sys_dist` VALUES ('105', 'LZGX', 'FQ', '夫妻', '');
INSERT INTO `sys_dist` VALUES ('106', 'LZGX', 'FZN', '父子/女', '');
INSERT INTO `sys_dist` VALUES ('107', 'LZGX', 'PY', '朋友', '');
INSERT INTO `sys_dist` VALUES ('108', 'ZYLX', '1', '公务员', '');
INSERT INTO `sys_dist` VALUES ('109', 'ZYLX', '100', '其他', '');
INSERT INTO `sys_dist` VALUES ('111', 'DQZT', 'Converted', 'Converted', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('116', 'ZYLX', '国家机关、党群组织、企业、事业单位负责人', '国家机关、党群组织、企业、事业单位负责人', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('120', 'ZYLX', '办事人员和有关人员', '办事人员和有关人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('124', 'ZYLX', '专业技术人员', '专业技术人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('130', 'CXING', 'F3', 'F3', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('132', 'ZYLX', '商业、服务业人员', '商业、服务业人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('138', 'CXYS', '雅典银', '雅典银', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('139', 'CXING', 'S6', 'S6', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('140', 'ZYLX', '生产、运输设备操作人员及有关人员', '生产、运输设备操作人员及有关人员', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('142', 'CXYS', '瑞亚银', '瑞亚银', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('143', 'CXYS', '水晶白', '水晶白', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('144', 'CXING', 'F0', 'F0', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('149', 'YYHZSL', '0', '0', '导入时系统自动添加');
INSERT INTO `sys_dist` VALUES ('157', 'QYXZ', '8', '国家行政机关单位', '');
INSERT INTO `sys_dist` VALUES ('158', 'QYXZ', '9', '外资', '');
INSERT INTO `sys_dist` VALUES ('159', 'QYXZ', '10', '合资', '');
INSERT INTO `sys_dist` VALUES ('160', 'QYXZ', '11', '国营', '');
INSERT INTO `sys_dist` VALUES ('162', 'CXING', 'NEWF3', '全新F3', '');
INSERT INTO `sys_dist` VALUES ('163', 'HKZT', '4', 'Special-mention关注', '');
INSERT INTO `sys_dist` VALUES ('164', 'HKZT', '5', 'Pass正常', '');
INSERT INTO `sys_dist` VALUES ('165', 'HKZT', '6', 'Doubtful可疑', '');
INSERT INTO `sys_dist` VALUES ('187', 'HYZK', '5', '未婚', '');
INSERT INTO `sys_field` VALUES ('city_cs', 'city_cs_show', '城市', 'tree', 'int', 'CITY', null, '2', '1', '1', '1', '5', null, null, null);
INSERT INTO `sys_field` VALUES ('city_sf', 'city_sf_show', '省份', 'tree', 'int', 'CITY', 'city_cs', '1', '1', '1', '1', '4', null, null, null);
INSERT INTO `sys_field` VALUES ('cphm', 'cphm', '车牌号码', 'text', 'string', null, null, '0', '0', '0', '1', '27', null, null, null);
INSERT INTO `sys_field` VALUES ('cplx', 'cplx', '产品类型', 'text', 'string', null, null, '0', '0', '0', '1', '57', null, null, null);
INSERT INTO `sys_field` VALUES ('cpz', 'cpz', '产品组', 'text', 'string', null, null, '0', '0', '0', '1', '56', null, null, null);
INSERT INTO `sys_field` VALUES ('csys', 'csys_show', '车身颜色', 'dist', 'string', 'CXYS', null, '0', '0', '0', '1', '55', null, null, null);
INSERT INTO `sys_field` VALUES ('cxi', 'cxi_show', '车系', 'dist', 'string', 'CXI', null, '0', '0', '0', '1', '25', null, null, null);
INSERT INTO `sys_field` VALUES ('cxing', 'cxing_show', '车型', 'dist', 'string', 'CXING', null, '0', '0', '0', '1', '26', null, null, null);
INSERT INTO `sys_field` VALUES ('degxhnljd', 'degxhnljd', '第二个小孩年龄阶段', 'text', 'string', null, null, '0', '0', '0', '1', '72', null, null, null);
INSERT INTO `sys_field` VALUES ('dkje', 'dkje', '贷款金额', 'text', 'double', null, null, '0', '0', '0', '1', '62', null, null, null);
INSERT INTO `sys_field` VALUES ('dkqs', 'dkqs_show', '贷款期数', 'dist', 'string', 'DKQS', null, '0', '0', '0', '1', '58', '贷款期数（月）', null, null);
INSERT INTO `sys_field` VALUES ('dksqhm', 'dksqhm', '贷款申请号码', 'text', 'string', null, null, '0', '0', '0', '1', '36', null, null, null);
INSERT INTO `sys_field` VALUES ('dqzt', 'dqzt_show', '当前状态', 'dist', 'string', 'DQZT', null, '0', '0', '0', '1', '18', null, null, null);
INSERT INTO `sys_field` VALUES ('dygxhnljd', 'dygxhnljd', '第一个小孩年龄阶段', 'text', 'string', null, null, '0', '0', '0', '1', '71', null, null, null);
INSERT INTO `sys_field` VALUES ('dzlx', 'dzlx', '地址类型', 'text', 'string', null, null, '0', '0', '0', '1', '45', null, null, null);
INSERT INTO `sys_field` VALUES ('dzy', 'dzy', '地址一', 'text', 'string', null, null, '0', '0', '0', '1', '52', null, null, null);
INSERT INTO `sys_field` VALUES ('fclx', 'fclx_show', '房产类型', 'dist', 'string', 'FCLX', null, '0', '0', '0', '1', '46', null, null, null);
INSERT INTO `sys_field` VALUES ('fkfs', 'fkfs_show', '付款方式', 'dist', 'string', 'FKFS', null, '0', '0', '0', '1', '31', null, null, null);
INSERT INTO `sys_field` VALUES ('gcrq', 'gcrq', '购车日期', 'date', 'date', null, null, '0', '0', '0', '1', '29', null, null, null);
INSERT INTO `sys_field` VALUES ('gcyhke', 'gcyhke', '购车月还款额', 'text', 'double', null, null, '0', '0', '0', '1', '65', null, null, null);
INSERT INTO `sys_field` VALUES ('gsdh', 'gsdh', '公司电话', 'text', 'string', null, null, '0', '0', '0', '1', '51', null, null, null);
INSERT INTO `sys_field` VALUES ('gsmc', 'gsmc', '公司名称', 'text', 'string', null, null, '0', '0', '0', '1', '48', '公司名称（自填项）', null, null);
INSERT INTO `sys_field` VALUES ('gsqrgx', 'gsqrgx_show', '跟申请人关系', 'dist', 'string', 'LZGX', null, '0', '0', '0', '1', '13', null, null, null);
INSERT INTO `sys_field` VALUES ('gznx', 'gznx', '工作年限', 'text', 'int', null, null, '0', '0', '0', '1', '53', '工作年限（年）', null, null);
INSERT INTO `sys_field` VALUES ('hkdz', 'hkdz', '户口地址', 'text', 'string', null, null, '0', '0', '0', '1', '44', null, null, null);
INSERT INTO `sys_field` VALUES ('hkszd', 'hkszd', '户口所在地', 'text', 'string', null, null, '0', '0', '0', '1', '40', null, null, null);
INSERT INTO `sys_field` VALUES ('hkzt', 'hkzt_show', '还款状态', 'dist', 'string', 'HKZT', null, '0', '0', '0', '1', '14', null, null, null);
INSERT INTO `sys_field` VALUES ('htbh', 'htbh', '合同编号', 'text', 'string', null, null, '0', '0', '0', '1', '19', null, null, null);
INSERT INTO `sys_field` VALUES ('htjhrq', 'htjhrq', '合同激活日期', 'date', 'date', null, null, '0', '0', '0', '1', '20', null, null, null);
INSERT INTO `sys_field` VALUES ('hylx', 'hylx_show', '行业类型', 'tree', 'int', 'HYLX', 'hyzlx', '1', '0', '0', '1', '37', null, null, null);
INSERT INTO `sys_field` VALUES ('hyzk', 'hyzk_show', '婚姻状况', 'dist', 'string', 'HYZK', null, '0', '0', '0', '1', '17', null, null, null);
INSERT INTO `sys_field` VALUES ('hyzlx', 'hyzlx_show', '行业子类型', 'tree', 'int', 'HYLX', null, '2', '0', '0', '1', '38', null, null, null);
INSERT INTO `sys_field` VALUES ('hzjjrq', 'hzjjrq', '核准拒绝日期', 'date', 'date', null, null, '0', '0', '0', '1', '23', null, null, null);
INSERT INTO `sys_field` VALUES ('jcrq', 'jcrq', '交车日期', 'date', 'date', null, null, '0', '0', '0', '1', '30', null, null, null);
INSERT INTO `sys_field` VALUES ('jkr_cs', 'jkr_cs_show', '借款人城市', 'tree', 'int', 'CITY', null, '2', '0', '0', '1', '43', null, null, null);
INSERT INTO `sys_field` VALUES ('jkr_sf', 'jkr_sf_show', '借款人省份', 'tree', 'int', 'CITY', 'jkr_cs', '1', '0', '0', '1', '42', null, null, null);
INSERT INTO `sys_field` VALUES ('jsr_lxdh', 'jsr_lxdh', '介绍人联系电话', 'text', 'string', null, null, '0', '0', '0', '1', '68', null, null, null);
INSERT INTO `sys_field` VALUES ('jsr_xm', 'jsr_xm', '介绍人姓名', 'text', 'string', null, null, '0', '0', '0', '1', '67', '介绍人', null, null);
INSERT INTO `sys_field` VALUES ('jszbh', 'jszbh', '驾驶证编号', 'text', 'string', null, null, '0', '0', '0', '1', '32', '驾驶证档案编号', null, null);
INSERT INTO `sys_field` VALUES ('jtrs', 'jtrs_show', '家庭人数', 'dist', 'string', 'JTRS', null, '0', '0', '0', '1', '34', null, null, null);
INSERT INTO `sys_field` VALUES ('jycd', 'jycd_show', '教育程度', 'dist', 'string', 'JYCD', null, '0', '0', '0', '1', '35', null, null, null);
INSERT INTO `sys_field` VALUES ('jzdqr', 'jzdqr', '驾照到期日', 'date', 'date', null, null, '0', '0', '0', '1', '33', null, null, null);
INSERT INTO `sys_field` VALUES ('jznx', 'jznx', '居住年限', 'text', 'int', null, null, '0', '0', '0', '1', '47', null, null, null);
INSERT INTO `sys_field` VALUES ('khll', 'hkll', '客户利率', 'text', 'double', null, null, '0', '0', '0', '1', '63', null, null, null);
INSERT INTO `sys_field` VALUES ('khsqbm', 'khsqbm', '客户申请编码', 'text', 'string', null, null, '0', '0', '0', '1', '66', null, null, null);
INSERT INTO `sys_field` VALUES ('lxze', 'lxze', '利息总额', 'text', 'double', null, null, '0', '0', '0', '1', '64', null, null, null);
INSERT INTO `sys_field` VALUES ('nl', 'nl', '年龄', 'text', 'int', null, null, '0', '1', '1', '1', '16', '年龄（年）', null, null);
INSERT INTO `sys_field` VALUES ('org_dq', 'org_dq_show', '大区', 'org', 'int', '-1', 'org_jxs', '2', '1', '1', '1', '2', null, null, null);
INSERT INTO `sys_field` VALUES ('org_jxs', 'org_jxs_show', '经销商', 'org', 'int', '-1', null, '3', '1', '1', '1', '3', '经销商名称', '经销商名称', '经销商名称');
INSERT INTO `sys_field` VALUES ('org_yxb', 'org_yxb_show', '营销部', 'org', 'int', '0', 'org_dq', '1', '1', '1', '1', '1', null, null, null);
INSERT INTO `sys_field` VALUES ('qyxz', 'qyxz_show', '企业性质', 'dist', 'string', 'QYXZ', null, '0', '0', '0', '1', '49', null, null, null);
INSERT INTO `sys_field` VALUES ('sfkbl', 'sfkbl', '首付款比例', 'text', 'double', null, null, '0', '0', '0', '1', '60', '首付款比例 %', null, null);
INSERT INTO `sys_field` VALUES ('sfkje', 'sfkje', '首付款金额', 'text', 'double', null, null, '0', '0', '0', '1', '61', null, null, null);
INSERT INTO `sys_field` VALUES ('sjgcr_dhhm', 'sjgcr_dhhm', '购车人电话号码', 'text', 'string', null, null, '0', '1', '1', '1', '12', null, '实际购车人电话号码', null);
INSERT INTO `sys_field` VALUES ('sjgcr_xm', 'sjgcr_xm', '购车人姓名', 'text', 'string', null, null, '0', '1', '1', '1', '10', null, '实际购车人姓名', '客户名称');
INSERT INTO `sys_field` VALUES ('sjgcr_zjhm', 'sjgcr_zjhm', '购车人证件号码', 'text', 'string', null, null, '0', '1', '1', '1', '11', null, '实际购车人证件号码', '证件号码');
INSERT INTO `sys_field` VALUES ('sqr_dhhm', 'sqr_dhhm', '申请人电话号码', 'text', 'string', null, null, '0', '1', '1', '1', '9', '电话', '申请人电话', null);
INSERT INTO `sys_field` VALUES ('sqr_xm', 'sqr_xm', '申请人姓名', 'text', 'string', null, null, '0', '1', '1', '1', '6', '姓名（中文）', '申请人姓名', null);
INSERT INTO `sys_field` VALUES ('sqr_zjhm', 'sqr_zjhm', '申请人证件号码', 'text', 'string', null, null, '0', '1', '1', '1', '8', '证件号码', '申请人证件号码', null);
INSERT INTO `sys_field` VALUES ('sqr_zjlx', 'sqr_zjlx_show', '申请人证件类型', 'dist', 'string', 'ZJLX', null, '0', '0', '0', '1', '7', '证件类型', null, null);
INSERT INTO `sys_field` VALUES ('sqtjrq', 'sqtjrq', '申请提交日期', 'date', 'date', null, null, '0', '0', '0', '1', '21', null, null, null);
INSERT INTO `sys_field` VALUES ('vin', 'vin', 'VIN号', 'text', 'string', null, null, '0', '0', '0', '1', '28', null, null, null);
INSERT INTO `sys_field` VALUES ('xb', 'xb_show', '性别', 'dist', 'string', 'XB', null, '0', '0', '0', '1', '15', null, null, null);
INSERT INTO `sys_field` VALUES ('xqah', 'xqah', '兴趣爱好', 'text', 'string', null, null, '0', '0', '0', '1', '69', null, null, null);
INSERT INTO `sys_field` VALUES ('xsjg', 'xsjg', '销售价格', 'text', 'double', null, null, '0', '0', '0', '1', '59', null, null, null);
INSERT INTO `sys_field` VALUES ('yf', 'yf', '月份', 'text', 'int', null, null, '0', '0', '0', '1', '22', null, null, null);
INSERT INTO `sys_field` VALUES ('ysr', 'ysr', '月收入', 'text', 'int', null, null, '0', '0', '0', '1', '41', null, null, null);
INSERT INTO `sys_field` VALUES ('yyxhsl', 'yyxhsl_show', '拥有小孩数量', 'dist', 'string', 'YYHZSL', null, '0', '0', '0', '1', '70', null, null, null);
INSERT INTO `sys_field` VALUES ('zc', 'zc', '周次', 'text', 'int', null, null, '0', '0', '0', '1', '24', null, null, null);
INSERT INTO `sys_field` VALUES ('zcjg', 'zcjg', '资产价格', 'text', 'double', null, null, '0', '0', '0', '1', '54', null, null, null);
INSERT INTO `sys_field` VALUES ('zw', 'zw', '职位', 'text', 'string', null, null, '0', '0', '0', '1', '50', null, null, null);
INSERT INTO `sys_field` VALUES ('zylx', 'zylx_show', '职业类型', 'dist', 'string', 'ZYLX', null, '0', '0', '0', '1', '39', null, null, null);
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
INSERT INTO `sys_org` VALUES ('660', '2', '106', '华东大区', ',106,660,');
INSERT INTO `sys_org` VALUES ('661', '3', '660', '安徽金丰汽车销售服务有限公司', ',106,660,661,');
INSERT INTO `sys_org` VALUES ('662', '2', '108', '华南大区', ',108,662,');
INSERT INTO `sys_org` VALUES ('663', '3', '662', '湖南岳迪汽车销售有限公司', ',108,662,663,');
INSERT INTO `sys_org` VALUES ('664', '2', '113', '川渝鄂大区', ',113,664,');
INSERT INTO `sys_org` VALUES ('665', '3', '664', '南充博宇车业有限公司', ',113,664,665,');
INSERT INTO `sys_org` VALUES ('666', '3', '664', '泸州忠山汽车销售有限责任公司', ',113,664,666,');
INSERT INTO `sys_org` VALUES ('667', '3', '658', '榆林市晶鑫汽贸有限责任公司', ',112,658,667,');
INSERT INTO `sys_org` VALUES ('668', '2', '108', '华中大区', ',108,668,');
INSERT INTO `sys_org` VALUES ('669', '3', '668', '赣州众和汽车销售服务有限公司', ',108,668,669,');
INSERT INTO `sys_org` VALUES ('670', '3', '668', '宜春年富汽车贸易有限公司', ',108,668,670,');
INSERT INTO `sys_org` VALUES ('671', '3', '660', '安徽畅通汽车销售有限公司', ',106,660,671,');
INSERT INTO `sys_org` VALUES ('672', '3', '668', '驻马店市东方汽车贸易服务有限公司', ',108,668,672,');
INSERT INTO `sys_role` VALUES ('2', '管理员', '管理系统', 'org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,jtrs,jycd,dksqhm,hylx,hyzlx,zylx,hkszd,ysr,jkr_sf,jkr_cs,hkdz,dzlx,fclx,jznx,gsmc,qyxz,zw,gsdh,dzy,gznx,zcjg,csys,cpz,cplx,dkqs,xsjg,sfkbl,sfkje,dkje,khll,lxze,gcyhke,khsqbm,jsr_xm,jsr_lxdh,xqah,yyxhsl,dygxhnljd,degxhnljd');
INSERT INTO `sys_role` VALUES ('3', '普通用户', '普通用户', 'org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,dksqhm,jkr_sf,jkr_cs,csys,cpz,cplx,dkqs,khsqbm,jsr_xm,jsr_lxdh');
INSERT INTO `sys_role_menu` VALUES ('413', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('414', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('415', '2', '6');
INSERT INTO `sys_role_menu` VALUES ('416', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('417', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('418', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('419', '2', '41');
INSERT INTO `sys_role_menu` VALUES ('420', '2', '42');
INSERT INTO `sys_role_menu` VALUES ('421', '2', '2');
INSERT INTO `sys_role_menu` VALUES ('422', '2', '3');
INSERT INTO `sys_role_menu` VALUES ('423', '2', '39');
INSERT INTO `sys_role_menu` VALUES ('424', '2', '31');
INSERT INTO `sys_role_menu` VALUES ('425', '2', '32');
INSERT INTO `sys_role_menu` VALUES ('426', '2', '33');
INSERT INTO `sys_role_menu` VALUES ('427', '2', '4');
INSERT INTO `sys_role_menu` VALUES ('428', '2', '37');
INSERT INTO `sys_role_menu` VALUES ('429', '2', '25');
INSERT INTO `sys_role_menu` VALUES ('430', '2', '26');
INSERT INTO `sys_role_menu` VALUES ('431', '2', '27');
INSERT INTO `sys_role_menu` VALUES ('432', '2', '5');
INSERT INTO `sys_role_menu` VALUES ('433', '2', '35');
INSERT INTO `sys_role_menu` VALUES ('434', '2', '19');
INSERT INTO `sys_role_menu` VALUES ('435', '2', '20');
INSERT INTO `sys_role_menu` VALUES ('436', '2', '21');
INSERT INTO `sys_role_menu` VALUES ('437', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('438', '2', '36');
INSERT INTO `sys_role_menu` VALUES ('439', '2', '22');
INSERT INTO `sys_role_menu` VALUES ('440', '2', '23');
INSERT INTO `sys_role_menu` VALUES ('441', '2', '24');
INSERT INTO `sys_role_menu` VALUES ('442', '2', '11');
INSERT INTO `sys_role_menu` VALUES ('443', '2', '34');
INSERT INTO `sys_role_menu` VALUES ('444', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('445', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('446', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('447', '2', '12');
INSERT INTO `sys_role_menu` VALUES ('448', '2', '38');
INSERT INTO `sys_role_menu` VALUES ('449', '2', '28');
INSERT INTO `sys_role_menu` VALUES ('450', '2', '29');
INSERT INTO `sys_role_menu` VALUES ('451', '2', '30');
INSERT INTO `sys_role_menu` VALUES ('452', '2', '13');
INSERT INTO `sys_role_menu` VALUES ('453', '2', '40');
INSERT INTO `sys_role_menu` VALUES ('454', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('476', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('477', '3', '9');
INSERT INTO `sys_role_menu` VALUES ('478', '3', '6');
INSERT INTO `sys_role_menu` VALUES ('479', '3', '10');
INSERT INTO `sys_role_menu` VALUES ('480', '3', '8');
INSERT INTO `sys_role_menu` VALUES ('481', '3', '14');
INSERT INTO `sys_role_menu` VALUES ('482', '3', '41');
INSERT INTO `sys_role_menu` VALUES ('483', '3', '42');
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
INSERT INTO `sys_tree` VALUES ('150', 'CITY', '1', '0', '河北省', ',150,');
INSERT INTO `sys_tree` VALUES ('151', 'CITY', '2', '150', '石家庄', ',150,151,');
INSERT INTO `sys_tree` VALUES ('152', 'CITY', '2', '150', '保定市', ',150,152,');
INSERT INTO `sys_tree` VALUES ('153', 'CITY', '2', '150', '秦皇岛', ',150,153,');
INSERT INTO `sys_tree` VALUES ('154', 'CITY', '2', '150', '唐山市', ',150,154,');
INSERT INTO `sys_tree` VALUES ('155', 'CITY', '2', '150', '邯郸市', ',150,155,');
INSERT INTO `sys_tree` VALUES ('156', 'CITY', '2', '150', '邢台市', ',150,156,');
INSERT INTO `sys_tree` VALUES ('157', 'CITY', '2', '150', '沧州市', ',150,157,');
INSERT INTO `sys_tree` VALUES ('158', 'CITY', '2', '150', '承德市', ',150,158,');
INSERT INTO `sys_tree` VALUES ('159', 'CITY', '2', '150', '廊坊市', ',150,159,');
INSERT INTO `sys_tree` VALUES ('160', 'CITY', '2', '150', '衡水市', ',150,160,');
INSERT INTO `sys_tree` VALUES ('161', 'CITY', '2', '150', '张家口', ',150,161,');
INSERT INTO `sys_tree` VALUES ('162', 'CITY', '1', '0', '山西省', ',162,');
INSERT INTO `sys_tree` VALUES ('163', 'CITY', '2', '162', '太原市', ',162,163,');
INSERT INTO `sys_tree` VALUES ('164', 'CITY', '2', '162', '大同市', ',162,164,');
INSERT INTO `sys_tree` VALUES ('165', 'CITY', '2', '162', '阳泉市', ',162,165,');
INSERT INTO `sys_tree` VALUES ('166', 'CITY', '2', '162', '长治市', ',162,166,');
INSERT INTO `sys_tree` VALUES ('167', 'CITY', '2', '162', '临汾市', ',162,167,');
INSERT INTO `sys_tree` VALUES ('168', 'CITY', '2', '162', '晋中市', ',162,168,');
INSERT INTO `sys_tree` VALUES ('169', 'CITY', '2', '162', '运城市', ',162,169,');
INSERT INTO `sys_tree` VALUES ('170', 'CITY', '2', '162', '晋城市', ',162,170,');
INSERT INTO `sys_tree` VALUES ('171', 'CITY', '2', '162', '忻州市', ',162,171,');
INSERT INTO `sys_tree` VALUES ('172', 'CITY', '2', '162', '朔州市', ',162,172,');
INSERT INTO `sys_tree` VALUES ('173', 'CITY', '2', '162', '吕梁市', ',162,173,');
INSERT INTO `sys_tree` VALUES ('174', 'CITY', '1', '0', '内蒙古', ',174,');
INSERT INTO `sys_tree` VALUES ('175', 'CITY', '2', '174', '呼和浩特', ',174,175,');
INSERT INTO `sys_tree` VALUES ('176', 'CITY', '2', '174', '呼伦贝尔', ',174,176,');
INSERT INTO `sys_tree` VALUES ('177', 'CITY', '2', '174', '包头市', ',174,177,');
INSERT INTO `sys_tree` VALUES ('178', 'CITY', '2', '174', '赤峰市', ',174,178,');
INSERT INTO `sys_tree` VALUES ('179', 'CITY', '2', '174', '乌海市', ',174,179,');
INSERT INTO `sys_tree` VALUES ('180', 'CITY', '2', '174', '通辽市', ',174,180,');
INSERT INTO `sys_tree` VALUES ('181', 'CITY', '2', '174', '鄂尔多斯', ',174,181,');
INSERT INTO `sys_tree` VALUES ('182', 'CITY', '2', '174', '乌兰察布', ',174,182,');
INSERT INTO `sys_tree` VALUES ('183', 'CITY', '2', '174', '巴彦淖尔', ',174,183,');
INSERT INTO `sys_tree` VALUES ('184', 'CITY', '1', '0', '辽宁省', ',184,');
INSERT INTO `sys_tree` VALUES ('185', 'CITY', '2', '184', '盘锦市', ',184,185,');
INSERT INTO `sys_tree` VALUES ('186', 'CITY', '2', '184', '鞍山市', ',184,186,');
INSERT INTO `sys_tree` VALUES ('187', 'CITY', '2', '184', '抚顺市', ',184,187,');
INSERT INTO `sys_tree` VALUES ('188', 'CITY', '2', '184', '本溪市', ',184,188,');
INSERT INTO `sys_tree` VALUES ('189', 'CITY', '2', '184', '铁岭市', ',184,189,');
INSERT INTO `sys_tree` VALUES ('190', 'CITY', '2', '184', '锦州市', ',184,190,');
INSERT INTO `sys_tree` VALUES ('191', 'CITY', '2', '184', '丹东市', ',184,191,');
INSERT INTO `sys_tree` VALUES ('192', 'CITY', '2', '184', '辽阳市', ',184,192,');
INSERT INTO `sys_tree` VALUES ('193', 'CITY', '2', '184', '葫芦岛', ',184,193,');
INSERT INTO `sys_tree` VALUES ('194', 'CITY', '2', '184', '阜新市', ',184,194,');
INSERT INTO `sys_tree` VALUES ('195', 'CITY', '2', '184', '朝阳市', ',184,195,');
INSERT INTO `sys_tree` VALUES ('196', 'CITY', '2', '184', '营口市', ',184,196,');
INSERT INTO `sys_tree` VALUES ('197', 'CITY', '1', '0', '吉林省', ',197,');
INSERT INTO `sys_tree` VALUES ('198', 'CITY', '2', '197', '吉林市', ',197,198,');
INSERT INTO `sys_tree` VALUES ('199', 'CITY', '2', '197', '通化市', ',197,199,');
INSERT INTO `sys_tree` VALUES ('200', 'CITY', '2', '197', '白城市', ',197,200,');
INSERT INTO `sys_tree` VALUES ('201', 'CITY', '2', '197', '四平市', ',197,201,');
INSERT INTO `sys_tree` VALUES ('202', 'CITY', '2', '197', '辽源市', ',197,202,');
INSERT INTO `sys_tree` VALUES ('203', 'CITY', '2', '197', '松原市', ',197,203,');
INSERT INTO `sys_tree` VALUES ('204', 'CITY', '2', '197', '白山市', ',197,204,');
INSERT INTO `sys_tree` VALUES ('205', 'CITY', '1', '0', '黑龙江省', ',205,');
INSERT INTO `sys_tree` VALUES ('206', 'CITY', '2', '205', '伊春市', ',205,206,');
INSERT INTO `sys_tree` VALUES ('207', 'CITY', '2', '205', '牡丹江', ',205,207,');
INSERT INTO `sys_tree` VALUES ('208', 'CITY', '2', '205', '大庆市', ',205,208,');
INSERT INTO `sys_tree` VALUES ('209', 'CITY', '2', '205', '鸡西市', ',205,209,');
INSERT INTO `sys_tree` VALUES ('210', 'CITY', '2', '205', '鹤岗市', ',205,210,');
INSERT INTO `sys_tree` VALUES ('211', 'CITY', '2', '205', '绥化市', ',205,211,');
INSERT INTO `sys_tree` VALUES ('212', 'CITY', '2', '205', '双鸭山', ',205,212,');
INSERT INTO `sys_tree` VALUES ('213', 'CITY', '2', '205', '七台河', ',205,213,');
INSERT INTO `sys_tree` VALUES ('214', 'CITY', '2', '205', '佳木斯', ',205,214,');
INSERT INTO `sys_tree` VALUES ('215', 'CITY', '2', '205', '黑河市', ',205,215,');
INSERT INTO `sys_tree` VALUES ('216', 'CITY', '2', '205', '齐齐哈尔市', ',205,216,');
INSERT INTO `sys_tree` VALUES ('217', 'CITY', '1', '0', '江苏省', ',217,');
INSERT INTO `sys_tree` VALUES ('218', 'CITY', '2', '217', '无锡市', ',217,218,');
INSERT INTO `sys_tree` VALUES ('219', 'CITY', '2', '217', '常州市', ',217,219,');
INSERT INTO `sys_tree` VALUES ('220', 'CITY', '2', '217', '扬州市', ',217,220,');
INSERT INTO `sys_tree` VALUES ('221', 'CITY', '2', '217', '徐州市', ',217,221,');
INSERT INTO `sys_tree` VALUES ('222', 'CITY', '2', '217', '苏州市', ',217,222,');
INSERT INTO `sys_tree` VALUES ('223', 'CITY', '2', '217', '连云港', ',217,223,');
INSERT INTO `sys_tree` VALUES ('224', 'CITY', '2', '217', '盐城市', ',217,224,');
INSERT INTO `sys_tree` VALUES ('225', 'CITY', '2', '217', '淮安市', ',217,225,');
INSERT INTO `sys_tree` VALUES ('226', 'CITY', '2', '217', '宿迁市', ',217,226,');
INSERT INTO `sys_tree` VALUES ('227', 'CITY', '2', '217', '镇江市', ',217,227,');
INSERT INTO `sys_tree` VALUES ('228', 'CITY', '2', '217', '南通市', ',217,228,');
INSERT INTO `sys_tree` VALUES ('229', 'CITY', '2', '217', '泰州市', ',217,229,');
INSERT INTO `sys_tree` VALUES ('230', 'CITY', '1', '0', '浙江省', ',230,');
INSERT INTO `sys_tree` VALUES ('231', 'CITY', '2', '230', '绍兴市', ',230,231,');
INSERT INTO `sys_tree` VALUES ('232', 'CITY', '2', '230', '温州市', ',230,232,');
INSERT INTO `sys_tree` VALUES ('233', 'CITY', '2', '230', '湖州市', ',230,233,');
INSERT INTO `sys_tree` VALUES ('234', 'CITY', '2', '230', '嘉兴市', ',230,234,');
INSERT INTO `sys_tree` VALUES ('235', 'CITY', '2', '230', '台州市', ',230,235,');
INSERT INTO `sys_tree` VALUES ('236', 'CITY', '2', '230', '金华市', ',230,236,');
INSERT INTO `sys_tree` VALUES ('237', 'CITY', '2', '230', '舟山市', ',230,237,');
INSERT INTO `sys_tree` VALUES ('238', 'CITY', '2', '230', '衢州市', ',230,238,');
INSERT INTO `sys_tree` VALUES ('239', 'CITY', '2', '230', '丽水市', ',230,239,');
INSERT INTO `sys_tree` VALUES ('240', 'CITY', '2', '230', '安徽省', ',230,240,');
INSERT INTO `sys_tree` VALUES ('241', 'CITY', '1', '0', '福建省', ',241,');
INSERT INTO `sys_tree` VALUES ('242', 'CITY', '2', '241', '福州市', ',241,242,');
INSERT INTO `sys_tree` VALUES ('243', 'CITY', '2', '241', '泉州市', ',241,243,');
INSERT INTO `sys_tree` VALUES ('244', 'CITY', '2', '241', '漳州市', ',241,244,');
INSERT INTO `sys_tree` VALUES ('245', 'CITY', '2', '241', '南平市', ',241,245,');
INSERT INTO `sys_tree` VALUES ('246', 'CITY', '2', '241', '三明市', ',241,246,');
INSERT INTO `sys_tree` VALUES ('247', 'CITY', '2', '241', '龙岩市', ',241,247,');
INSERT INTO `sys_tree` VALUES ('248', 'CITY', '2', '241', '莆田市', ',241,248,');
INSERT INTO `sys_tree` VALUES ('249', 'CITY', '2', '241', '宁德市', ',241,249,');
INSERT INTO `sys_tree` VALUES ('250', 'CITY', '1', '0', '江西省', ',250,');
INSERT INTO `sys_tree` VALUES ('251', 'CITY', '2', '250', '南昌市', ',250,251,');
INSERT INTO `sys_tree` VALUES ('252', 'CITY', '2', '250', '赣州市', ',250,252,');
INSERT INTO `sys_tree` VALUES ('253', 'CITY', '2', '250', '景德镇', ',250,253,');
INSERT INTO `sys_tree` VALUES ('254', 'CITY', '2', '250', '九江市', ',250,254,');
INSERT INTO `sys_tree` VALUES ('255', 'CITY', '2', '250', '萍乡市', ',250,255,');
INSERT INTO `sys_tree` VALUES ('256', 'CITY', '2', '250', '新余市', ',250,256,');
INSERT INTO `sys_tree` VALUES ('257', 'CITY', '2', '250', '抚州市', ',250,257,');
INSERT INTO `sys_tree` VALUES ('258', 'CITY', '2', '250', '宜春市', ',250,258,');
INSERT INTO `sys_tree` VALUES ('259', 'CITY', '2', '250', '上饶市', ',250,259,');
INSERT INTO `sys_tree` VALUES ('260', 'CITY', '2', '250', '鹰潭市', ',250,260,');
INSERT INTO `sys_tree` VALUES ('261', 'CITY', '2', '250', '吉安市', ',250,261,');
INSERT INTO `sys_tree` VALUES ('262', 'CITY', '1', '0', '山东省', ',262,');
INSERT INTO `sys_tree` VALUES ('263', 'CITY', '2', '262', '潍坊市', ',262,263,');
INSERT INTO `sys_tree` VALUES ('264', 'CITY', '2', '262', '淄博市', ',262,264,');
INSERT INTO `sys_tree` VALUES ('265', 'CITY', '2', '262', '威海市', ',262,265,');
INSERT INTO `sys_tree` VALUES ('266', 'CITY', '2', '262', '枣庄市', ',262,266,');
INSERT INTO `sys_tree` VALUES ('267', 'CITY', '2', '262', '泰安市', ',262,267,');
INSERT INTO `sys_tree` VALUES ('268', 'CITY', '2', '262', '临沂市', ',262,268,');
INSERT INTO `sys_tree` VALUES ('269', 'CITY', '2', '262', '东营市', ',262,269,');
INSERT INTO `sys_tree` VALUES ('270', 'CITY', '2', '262', '济宁市', ',262,270,');
INSERT INTO `sys_tree` VALUES ('271', 'CITY', '2', '262', '烟台市', ',262,271,');
INSERT INTO `sys_tree` VALUES ('272', 'CITY', '2', '262', '菏泽市', ',262,272,');
INSERT INTO `sys_tree` VALUES ('273', 'CITY', '2', '262', '日照市', ',262,273,');
INSERT INTO `sys_tree` VALUES ('274', 'CITY', '2', '262', '德州市', ',262,274,');
INSERT INTO `sys_tree` VALUES ('275', 'CITY', '2', '262', '聊城市', ',262,275,');
INSERT INTO `sys_tree` VALUES ('276', 'CITY', '2', '262', '滨州市', ',262,276,');
INSERT INTO `sys_tree` VALUES ('277', 'CITY', '2', '262', '莱芜市', ',262,277,');
INSERT INTO `sys_tree` VALUES ('278', 'CITY', '1', '0', '河南省', ',278,');
INSERT INTO `sys_tree` VALUES ('279', 'CITY', '2', '278', '郑州市', ',278,279,');
INSERT INTO `sys_tree` VALUES ('280', 'CITY', '2', '278', '洛阳市', ',278,280,');
INSERT INTO `sys_tree` VALUES ('281', 'CITY', '2', '278', '焦作市', ',278,281,');
INSERT INTO `sys_tree` VALUES ('282', 'CITY', '2', '278', '商丘市', ',278,282,');
INSERT INTO `sys_tree` VALUES ('283', 'CITY', '2', '278', '信阳市', ',278,283,');
INSERT INTO `sys_tree` VALUES ('284', 'CITY', '2', '278', '新乡市', ',278,284,');
INSERT INTO `sys_tree` VALUES ('285', 'CITY', '2', '278', '安阳市', ',278,285,');
INSERT INTO `sys_tree` VALUES ('286', 'CITY', '2', '278', '开封市', ',278,286,');
INSERT INTO `sys_tree` VALUES ('287', 'CITY', '2', '278', '漯河市', ',278,287,');
INSERT INTO `sys_tree` VALUES ('288', 'CITY', '2', '278', '南阳市', ',278,288,');
INSERT INTO `sys_tree` VALUES ('289', 'CITY', '2', '278', '鹤壁市', ',278,289,');
INSERT INTO `sys_tree` VALUES ('290', 'CITY', '2', '278', '平顶山', ',278,290,');
INSERT INTO `sys_tree` VALUES ('291', 'CITY', '2', '278', '濮阳市', ',278,291,');
INSERT INTO `sys_tree` VALUES ('292', 'CITY', '2', '278', '许昌市', ',278,292,');
INSERT INTO `sys_tree` VALUES ('293', 'CITY', '2', '278', '周口市', ',278,293,');
INSERT INTO `sys_tree` VALUES ('294', 'CITY', '2', '278', '三门峡', ',278,294,');
INSERT INTO `sys_tree` VALUES ('295', 'CITY', '2', '278', '驻马店', ',278,295,');
INSERT INTO `sys_tree` VALUES ('296', 'CITY', '1', '0', '湖北省', ',296,');
INSERT INTO `sys_tree` VALUES ('297', 'CITY', '2', '296', '荆门市', ',296,297,');
INSERT INTO `sys_tree` VALUES ('298', 'CITY', '2', '296', '咸宁市', ',296,298,');
INSERT INTO `sys_tree` VALUES ('299', 'CITY', '2', '296', '襄樊市', ',296,299,');
INSERT INTO `sys_tree` VALUES ('300', 'CITY', '2', '296', '荆州市', ',296,300,');
INSERT INTO `sys_tree` VALUES ('301', 'CITY', '2', '296', '黄石市', ',296,301,');
INSERT INTO `sys_tree` VALUES ('302', 'CITY', '2', '296', '宜昌市', ',296,302,');
INSERT INTO `sys_tree` VALUES ('303', 'CITY', '2', '296', '随州市', ',296,303,');
INSERT INTO `sys_tree` VALUES ('304', 'CITY', '2', '296', '鄂州市', ',296,304,');
INSERT INTO `sys_tree` VALUES ('305', 'CITY', '2', '296', '孝感市', ',296,305,');
INSERT INTO `sys_tree` VALUES ('306', 'CITY', '2', '296', '黄冈市', ',296,306,');
INSERT INTO `sys_tree` VALUES ('307', 'CITY', '2', '296', '十堰市', ',296,307,');
INSERT INTO `sys_tree` VALUES ('308', 'CITY', '1', '0', '湖南省', ',308,');
INSERT INTO `sys_tree` VALUES ('309', 'CITY', '2', '308', '长沙市', ',308,309,');
INSERT INTO `sys_tree` VALUES ('310', 'CITY', '2', '308', '郴州市', ',308,310,');
INSERT INTO `sys_tree` VALUES ('311', 'CITY', '2', '308', '娄底市', ',308,311,');
INSERT INTO `sys_tree` VALUES ('312', 'CITY', '2', '308', '衡阳市', ',308,312,');
INSERT INTO `sys_tree` VALUES ('313', 'CITY', '2', '308', '株洲市', ',308,313,');
INSERT INTO `sys_tree` VALUES ('314', 'CITY', '2', '308', '湘潭市', ',308,314,');
INSERT INTO `sys_tree` VALUES ('315', 'CITY', '2', '308', '岳阳市', ',308,315,');
INSERT INTO `sys_tree` VALUES ('316', 'CITY', '2', '308', '常德市', ',308,316,');
INSERT INTO `sys_tree` VALUES ('317', 'CITY', '2', '308', '邵阳市', ',308,317,');
INSERT INTO `sys_tree` VALUES ('318', 'CITY', '2', '308', '益阳市', ',308,318,');
INSERT INTO `sys_tree` VALUES ('319', 'CITY', '2', '308', '永州市', ',308,319,');
INSERT INTO `sys_tree` VALUES ('320', 'CITY', '2', '308', '张家界', ',308,320,');
INSERT INTO `sys_tree` VALUES ('321', 'CITY', '2', '308', '怀化市', ',308,321,');
INSERT INTO `sys_tree` VALUES ('322', 'CITY', '1', '0', '广东省', ',322,');
INSERT INTO `sys_tree` VALUES ('323', 'CITY', '2', '322', '江门市', ',322,323,');
INSERT INTO `sys_tree` VALUES ('324', 'CITY', '2', '322', '佛山市', ',322,324,');
INSERT INTO `sys_tree` VALUES ('325', 'CITY', '2', '322', '汕头市', ',322,325,');
INSERT INTO `sys_tree` VALUES ('326', 'CITY', '2', '322', '湛江市', ',322,326,');
INSERT INTO `sys_tree` VALUES ('327', 'CITY', '2', '322', '韶关市', ',322,327,');
INSERT INTO `sys_tree` VALUES ('328', 'CITY', '2', '322', '中山市', ',322,328,');
INSERT INTO `sys_tree` VALUES ('329', 'CITY', '2', '322', '珠海市', ',322,329,');
INSERT INTO `sys_tree` VALUES ('330', 'CITY', '2', '322', '茂名市', ',322,330,');
INSERT INTO `sys_tree` VALUES ('331', 'CITY', '2', '322', '肇庆市', ',322,331,');
INSERT INTO `sys_tree` VALUES ('332', 'CITY', '2', '322', '阳江市', ',322,332,');
INSERT INTO `sys_tree` VALUES ('333', 'CITY', '2', '322', '惠州市', ',322,333,');
INSERT INTO `sys_tree` VALUES ('334', 'CITY', '2', '322', '潮州市', ',322,334,');
INSERT INTO `sys_tree` VALUES ('335', 'CITY', '2', '322', '揭阳市', ',322,335,');
INSERT INTO `sys_tree` VALUES ('336', 'CITY', '2', '322', '清远市', ',322,336,');
INSERT INTO `sys_tree` VALUES ('337', 'CITY', '2', '322', '河源市', ',322,337,');
INSERT INTO `sys_tree` VALUES ('338', 'CITY', '2', '322', '东莞市', ',322,338,');
INSERT INTO `sys_tree` VALUES ('339', 'CITY', '2', '322', '汕尾市', ',322,339,');
INSERT INTO `sys_tree` VALUES ('340', 'CITY', '2', '322', '云浮市', ',322,340,');
INSERT INTO `sys_tree` VALUES ('341', 'CITY', '1', '0', '广西省', ',341,');
INSERT INTO `sys_tree` VALUES ('342', 'CITY', '2', '341', '南宁市', ',341,342,');
INSERT INTO `sys_tree` VALUES ('343', 'CITY', '2', '341', '贺州市', ',341,343,');
INSERT INTO `sys_tree` VALUES ('344', 'CITY', '2', '341', '柳州市', ',341,344,');
INSERT INTO `sys_tree` VALUES ('345', 'CITY', '2', '341', '桂林市', ',341,345,');
INSERT INTO `sys_tree` VALUES ('346', 'CITY', '2', '341', '梧州市', ',341,346,');
INSERT INTO `sys_tree` VALUES ('347', 'CITY', '2', '341', '北海市', ',341,347,');
INSERT INTO `sys_tree` VALUES ('348', 'CITY', '2', '341', '玉林市', ',341,348,');
INSERT INTO `sys_tree` VALUES ('349', 'CITY', '2', '341', '钦州市', ',341,349,');
INSERT INTO `sys_tree` VALUES ('350', 'CITY', '2', '341', '百色市', ',341,350,');
INSERT INTO `sys_tree` VALUES ('351', 'CITY', '2', '341', '防城港', ',341,351,');
INSERT INTO `sys_tree` VALUES ('352', 'CITY', '2', '341', '贵港市', ',341,352,');
INSERT INTO `sys_tree` VALUES ('353', 'CITY', '2', '341', '河池市', ',341,353,');
INSERT INTO `sys_tree` VALUES ('354', 'CITY', '2', '341', '崇左市', ',341,354,');
INSERT INTO `sys_tree` VALUES ('355', 'CITY', '2', '341', '来宾市', ',341,355,');
INSERT INTO `sys_tree` VALUES ('356', 'CITY', '1', '0', '海南省', ',356,');
INSERT INTO `sys_tree` VALUES ('357', 'CITY', '2', '356', '海口市', ',356,357,');
INSERT INTO `sys_tree` VALUES ('358', 'CITY', '2', '356', '三亚市', ',356,358,');
INSERT INTO `sys_tree` VALUES ('359', 'CITY', '1', '0', '四川省', ',359,');
INSERT INTO `sys_tree` VALUES ('360', 'CITY', '2', '359', '乐山市', ',359,360,');
INSERT INTO `sys_tree` VALUES ('361', 'CITY', '2', '359', '雅安市', ',359,361,');
INSERT INTO `sys_tree` VALUES ('362', 'CITY', '2', '359', '广安市', ',359,362,');
INSERT INTO `sys_tree` VALUES ('363', 'CITY', '2', '359', '南充市', ',359,363,');
INSERT INTO `sys_tree` VALUES ('364', 'CITY', '2', '359', '自贡市', ',359,364,');
INSERT INTO `sys_tree` VALUES ('365', 'CITY', '2', '359', '泸州市', ',359,365,');
INSERT INTO `sys_tree` VALUES ('366', 'CITY', '2', '359', '内江市', ',359,366,');
INSERT INTO `sys_tree` VALUES ('367', 'CITY', '2', '359', '宜宾市', ',359,367,');
INSERT INTO `sys_tree` VALUES ('368', 'CITY', '2', '359', '广元市', ',359,368,');
INSERT INTO `sys_tree` VALUES ('369', 'CITY', '2', '359', '达州市', ',359,369,');
INSERT INTO `sys_tree` VALUES ('370', 'CITY', '2', '359', '资阳市', ',359,370,');
INSERT INTO `sys_tree` VALUES ('371', 'CITY', '2', '359', '绵阳市', ',359,371,');
INSERT INTO `sys_tree` VALUES ('372', 'CITY', '2', '359', '眉山市', ',359,372,');
INSERT INTO `sys_tree` VALUES ('373', 'CITY', '2', '359', '巴中市', ',359,373,');
INSERT INTO `sys_tree` VALUES ('374', 'CITY', '2', '359', '攀枝花', ',359,374,');
INSERT INTO `sys_tree` VALUES ('375', 'CITY', '2', '359', '遂宁市', ',359,375,');
INSERT INTO `sys_tree` VALUES ('376', 'CITY', '2', '359', '德阳市', ',359,376,');
INSERT INTO `sys_tree` VALUES ('377', 'CITY', '1', '0', '贵州省', ',377,');
INSERT INTO `sys_tree` VALUES ('378', 'CITY', '2', '377', '贵阳市', ',377,378,');
INSERT INTO `sys_tree` VALUES ('379', 'CITY', '2', '377', '安顺市', ',377,379,');
INSERT INTO `sys_tree` VALUES ('380', 'CITY', '2', '377', '遵义市', ',377,380,');
INSERT INTO `sys_tree` VALUES ('381', 'CITY', '2', '377', '六盘水', ',377,381,');
INSERT INTO `sys_tree` VALUES ('382', 'CITY', '1', '0', '云南省', ',382,');
INSERT INTO `sys_tree` VALUES ('383', 'CITY', '2', '382', '昆明市', ',382,383,');
INSERT INTO `sys_tree` VALUES ('384', 'CITY', '2', '382', '玉溪市', ',382,384,');
INSERT INTO `sys_tree` VALUES ('385', 'CITY', '2', '382', '大理市', ',382,385,');
INSERT INTO `sys_tree` VALUES ('386', 'CITY', '2', '382', '曲靖市', ',382,386,');
INSERT INTO `sys_tree` VALUES ('387', 'CITY', '2', '382', '昭通市', ',382,387,');
INSERT INTO `sys_tree` VALUES ('388', 'CITY', '2', '382', '保山市', ',382,388,');
INSERT INTO `sys_tree` VALUES ('389', 'CITY', '2', '382', '丽江市', ',382,389,');
INSERT INTO `sys_tree` VALUES ('390', 'CITY', '2', '382', '临沧市', ',382,390,');
INSERT INTO `sys_tree` VALUES ('391', 'CITY', '1', '0', '西藏', ',391,');
INSERT INTO `sys_tree` VALUES ('392', 'CITY', '2', '391', '拉萨市', ',391,392,');
INSERT INTO `sys_tree` VALUES ('393', 'CITY', '2', '391', '阿里', ',391,393,');
INSERT INTO `sys_tree` VALUES ('394', 'CITY', '1', '0', '陕西省', ',394,');
INSERT INTO `sys_tree` VALUES ('395', 'CITY', '2', '394', '咸阳市', ',394,395,');
INSERT INTO `sys_tree` VALUES ('396', 'CITY', '2', '394', '榆林市', ',394,396,');
INSERT INTO `sys_tree` VALUES ('397', 'CITY', '2', '394', '宝鸡市', ',394,397,');
INSERT INTO `sys_tree` VALUES ('398', 'CITY', '2', '394', '铜川市', ',394,398,');
INSERT INTO `sys_tree` VALUES ('399', 'CITY', '2', '394', '渭南市', ',394,399,');
INSERT INTO `sys_tree` VALUES ('400', 'CITY', '2', '394', '汉中市', ',394,400,');
INSERT INTO `sys_tree` VALUES ('401', 'CITY', '2', '394', '安康市', ',394,401,');
INSERT INTO `sys_tree` VALUES ('402', 'CITY', '2', '394', '商洛市', ',394,402,');
INSERT INTO `sys_tree` VALUES ('403', 'CITY', '2', '394', '延安市', ',394,403,');
INSERT INTO `sys_tree` VALUES ('404', 'CITY', '1', '0', '甘肃省', ',404,');
INSERT INTO `sys_tree` VALUES ('405', 'CITY', '2', '404', '兰州市', ',404,405,');
INSERT INTO `sys_tree` VALUES ('406', 'CITY', '2', '404', '白银市', ',404,406,');
INSERT INTO `sys_tree` VALUES ('407', 'CITY', '2', '404', '武威市', ',404,407,');
INSERT INTO `sys_tree` VALUES ('408', 'CITY', '2', '404', '金昌市', ',404,408,');
INSERT INTO `sys_tree` VALUES ('409', 'CITY', '2', '404', '平凉市', ',404,409,');
INSERT INTO `sys_tree` VALUES ('410', 'CITY', '2', '404', '张掖市', ',404,410,');
INSERT INTO `sys_tree` VALUES ('411', 'CITY', '2', '404', '嘉峪关', ',404,411,');
INSERT INTO `sys_tree` VALUES ('412', 'CITY', '2', '404', '酒泉市', ',404,412,');
INSERT INTO `sys_tree` VALUES ('413', 'CITY', '2', '404', '庆阳市', ',404,413,');
INSERT INTO `sys_tree` VALUES ('414', 'CITY', '2', '404', '定西市', ',404,414,');
INSERT INTO `sys_tree` VALUES ('415', 'CITY', '2', '404', '陇南市', ',404,415,');
INSERT INTO `sys_tree` VALUES ('416', 'CITY', '2', '404', '天水市', ',404,416,');
INSERT INTO `sys_tree` VALUES ('417', 'CITY', '1', '0', '青海省', ',417,');
INSERT INTO `sys_tree` VALUES ('418', 'CITY', '2', '417', '西宁市', ',417,418,');
INSERT INTO `sys_tree` VALUES ('419', 'CITY', '1', '0', '宁夏', ',419,');
INSERT INTO `sys_tree` VALUES ('420', 'CITY', '2', '419', '银川市', ',419,420,');
INSERT INTO `sys_tree` VALUES ('421', 'CITY', '2', '419', '固原市', ',419,421,');
INSERT INTO `sys_tree` VALUES ('422', 'CITY', '2', '419', '青铜峡市', ',419,422,');
INSERT INTO `sys_tree` VALUES ('423', 'CITY', '2', '419', '石嘴山市', ',419,423,');
INSERT INTO `sys_tree` VALUES ('424', 'CITY', '2', '419', '中卫市', ',419,424,');
INSERT INTO `sys_tree` VALUES ('425', 'CITY', '1', '0', '新疆', ',425,');
INSERT INTO `sys_tree` VALUES ('426', 'CITY', '2', '425', '乌鲁木齐', ',425,426,');
INSERT INTO `sys_tree` VALUES ('427', 'CITY', '2', '425', '克拉玛依市', ',425,427,');
INSERT INTO `sys_tree` VALUES ('428', 'CITY', '1', '0', '香港特别行政区', ',428,');
INSERT INTO `sys_tree` VALUES ('429', 'CITY', '2', '428', '香港岛', ',428,429,');
INSERT INTO `sys_tree` VALUES ('430', 'CITY', '2', '428', '九龙', ',428,430,');
INSERT INTO `sys_tree` VALUES ('431', 'CITY', '2', '428', '新界', ',428,431,');
INSERT INTO `sys_tree` VALUES ('432', 'CITY', '2', '428', '新界西', ',428,432,');
INSERT INTO `sys_tree` VALUES ('433', 'CITY', '1', '0', '澳门特别行政区', ',433,');
INSERT INTO `sys_tree` VALUES ('434', 'CITY', '2', '433', '澳门半岛', ',433,434,');
INSERT INTO `sys_tree` VALUES ('435', 'CITY', '2', '433', '澳门离岛', ',433,435,');
INSERT INTO `sys_tree` VALUES ('436', 'CITY', '1', '0', '台湾', ',436,');
INSERT INTO `sys_tree` VALUES ('437', 'CITY', '2', '436', '基隆市', ',436,437,');
INSERT INTO `sys_tree` VALUES ('438', 'CITY', '2', '436', '台中市', ',436,438,');
INSERT INTO `sys_tree` VALUES ('439', 'CITY', '2', '436', '新竹市', ',436,439,');
INSERT INTO `sys_tree` VALUES ('440', 'CITY', '2', '436', '台南市', ',436,440,');
INSERT INTO `sys_tree` VALUES ('441', 'CITY', '2', '436', '嘉义市', ',436,441,');
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
INSERT INTO `sys_tree` VALUES ('458', 'CITY', '2', '436', '台北市', ',436,458,');
INSERT INTO `sys_tree` VALUES ('459', 'CITY', '2', '436', '高雄市', ',436,459,');
INSERT INTO `sys_tree` VALUES ('460', 'CITY', '2', '436', '马祖县', ',436,460,');
INSERT INTO `sys_tree` VALUES ('461', 'CITY', '2', '436', '金门县', ',436,461,');
INSERT INTO `sys_tree` VALUES ('491', 'CITY', '1', '0', '湖南', ',491,');
INSERT INTO `sys_tree` VALUES ('492', 'CITY', '2', '491', '长沙', ',491,492,');
INSERT INTO `sys_tree` VALUES ('493', 'CITY', '1', '0', '陕西', ',493,');
INSERT INTO `sys_tree` VALUES ('494', 'CITY', '2', '493', '西安', ',493,494,');
INSERT INTO `sys_tree` VALUES ('495', 'CITY', '1', '0', '安徽', ',495,');
INSERT INTO `sys_tree` VALUES ('496', 'CITY', '2', '495', '六安', ',495,496,');
INSERT INTO `sys_tree` VALUES ('497', 'CITY', '1', '0', '四川', ',497,');
INSERT INTO `sys_tree` VALUES ('498', 'CITY', '2', '497', '南充', ',497,498,');
INSERT INTO `sys_tree` VALUES ('499', 'CITY', '2', '497', '泸州', ',497,499,');
INSERT INTO `sys_tree` VALUES ('500', 'CITY', '2', '493', '榆林', ',493,500,');
INSERT INTO `sys_tree` VALUES ('501', 'CITY', '1', '0', '江西', ',501,');
INSERT INTO `sys_tree` VALUES ('502', 'CITY', '2', '501', '赣州', ',501,502,');
INSERT INTO `sys_tree` VALUES ('503', 'CITY', '2', '501', '宜春', ',501,503,');
INSERT INTO `sys_tree` VALUES ('504', 'CITY', '2', '495', '滁州', ',495,504,');
INSERT INTO `sys_tree` VALUES ('505', 'CITY', '1', '0', '河南', ',505,');
INSERT INTO `sys_tree` VALUES ('506', 'CITY', '2', '505', '驻马店', ',505,506,');
INSERT INTO `sys_user` VALUES ('1', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', '管理员', '', '', '2016-09-25 11:14:13', '2016-10-30 18:28:19', '0', ',2,', ',管理员,', ',1,9,85,91,');
INSERT INTO `sys_user` VALUES ('2', 'dw_jiangkunpeng', '99800032b7d26893553ce81530e0f821', '姜昆鹏', '15899954940', 'jakey766@163.com', '2016-09-25 11:14:40', '2016-10-30 18:28:31', '0', ',3,', ',普通用户,', ',3,4,86,');
