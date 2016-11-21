CREATE DATABASE  IF NOT EXISTS `byd_cm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `byd_cm`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: byd_cm
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cm_info`
--

DROP TABLE IF EXISTS `cm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `bz` varchar(200) DEFAULT NULL COMMENT '备注',
  `yqr` varchar(50) DEFAULT NULL COMMENT '邀请人',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `sqr_zjlx_src` varchar(100) DEFAULT NULL COMMENT '申请人证件类型导入值',
  `gsqrgx_src` varchar(100) DEFAULT NULL COMMENT '跟申请人关系导入值',
  `hkzt_src` varchar(100) DEFAULT NULL COMMENT '还款状态导入值',
  `xb_src` varchar(100) DEFAULT NULL COMMENT '性别导入值',
  `hyzk_src` varchar(100) DEFAULT NULL COMMENT '婚姻状况导入值',
  `dqzt_src` varchar(100) DEFAULT NULL COMMENT '当前状态导入值',
  `cxi_src` varchar(100) DEFAULT NULL COMMENT '车系导入值',
  `cxing_src` varchar(100) DEFAULT NULL COMMENT '车型导入值',
  `fkfs_src` varchar(100) DEFAULT NULL COMMENT '付款方式导入值',
  `jtrs_src` varchar(100) DEFAULT NULL COMMENT '家庭人数导入值',
  `jycd_src` varchar(100) DEFAULT NULL COMMENT '教育程度导入值',
  `zylx_src` varchar(100) DEFAULT NULL COMMENT '职业类型导入值',
  `fclx_src` varchar(100) DEFAULT NULL COMMENT '房产类型导入值',
  `qyxz_src` varchar(100) DEFAULT NULL COMMENT '企业性质导入值',
  `csys_src` varchar(100) DEFAULT NULL COMMENT '车身颜色导入值',
  `dkqs_src` varchar(100) DEFAULT NULL COMMENT '贷款期数导入值',
  `yyxhsl_src` varchar(100) DEFAULT NULL COMMENT '拥有小孩数量导入值',
  PRIMARY KEY (`id`),
  KEY `sqr_zjhm` (`sqr_zjlx`),
  KEY `sjgcr_zjhm` (`sjgcr_zjhm`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_info`
--

LOCK TABLES `cm_info` WRITE;
/*!40000 ALTER TABLE `cm_info` DISABLE KEYS */;
INSERT INTO `cm_info` VALUES (219,112,658,659,',112,658,659,',493,494,',493,494,','陈一','1','440281198003308411','18746921734',NULL,'',NULL,NULL,'4','2',36,'1980-01-01','2','3','BZ100001','2015-03-23','2015-03-20',3,'2015-03-23',12,'QIJIAN','QIN',NULL,NULL,'2015-04-23',NULL,'1','915058626','2017-01-02','3','5','BX-A000002000',31,32,NULL,'5','西安',12500,493,494,'陕西省西安市未央区凤城三路与朱宏路路口',NULL,'6',8,'政府部门','8','徐汇区法院主任',NULL,NULL,6,209800,'MLC','比亚迪--标准贷','标准贷款-等额本金（个人）','36',146800,0,29360,14.49,117440,26234.47,4041.83,'00000001','廖瀚卿','15989300244','打球','1','2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,112,658,659,',112,658,659,',493,494,',493,494,','吴二','1','440301198510142738','18746921735',NULL,'',NULL,NULL,'4','2',31,'1985-01-01','2','3','BZ100002','2015-03-23','2015-03-20',3,'2015-03-23',12,'HAOHUA','QIN',NULL,NULL,'2015-04-23',NULL,'2','915066589','2017-02-02','5','5','BX-A000003000',31,32,NULL,'3','西安',9800,493,494,'陕西省西安市未央区凤城三路与朱宏路路口',NULL,'6',10,'政府部门','8','奉贤区法院院长兼党委书记',NULL,NULL,6,209800,'TSB','比亚迪--标准贷','标准贷款-等额本金（个人）','36',146800,0,29360,14.49,117440,26234.47,4041.83,'00000002','谷传明','13703176338','看书','1','1',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,106,660,661,',106,660,661,',495,496,',495,496,','张三','1','230302199104184222','18746921736',NULL,'',NULL,NULL,'5','1',25,'1991-01-01','5','3','BZ100003','2015-05-04','2015-04-23',4,'2015-04-24',17,'ZUNGUI','G5',NULL,NULL,'2015-06-04',NULL,'2','A16005939','2017-03-02','4','5','BX-A000013001',15,33,NULL,'2','六安',12000,495,496,'六安市金安区东方汽车城皖西大道南侧A52号',NULL,'8',12,'政府部门','8','徐汇区法院院长兼党委书记',NULL,NULL,1,85900,'HYY','比亚迪--标准贷','标准贷款-等额本息（个人）','36',76900,0,30760,14.49,46140,11026.56,1587.96,'00000003','张嘉煜','13902900066','运动','-100',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,106,660,661,',106,660,661,',495,496,',495,496,','李四','1','22010419820822153X','18746921737',NULL,'',NULL,NULL,'5','1',34,'1982-01-01','2','3','BZ100010','2015-05-08','2015-04-24',4,'2015-04-27',17,'ZUNGUI','SURUI',NULL,NULL,'2015-06-08',NULL,'2','916011327','2017-04-02','5','2','BX-A000015001',13,34,NULL,'2','六安',7800,495,496,'六安市金安区东方汽车城皖西大道南侧A52号',NULL,'8',11,'政府部门','8',' 金山区法院院长兼党委书记',NULL,NULL,10,73900,'DLH','比亚迪--标准贷','标准贷款-等额本息（个人）','36',73000,0,21900,14.49,51100,12211.76,1758.66,'00000004','陈岳俊','13501557735','旅游','1','3',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,108,662,663,',108,662,663,',491,492,',491,492,','王五','1','440181198708205174','18746921738',NULL,'',NULL,NULL,'5','1',29,'1987-01-01','2','3','BZ100004','2015-05-04','2015-04-24',4,'2015-04-27',17,'ZUNGUI','F3',NULL,NULL,'2015-06-04',NULL,'2','916013025','2017-05-02','5','3','BX-A000016000',18,35,NULL,'3','长沙',5000,491,492,'长沙市雨花区经开区桃阳村黄谷路',NULL,'7',3,'政府部门','8',' 徐汇区法院政治部主任兼纪委书记',NULL,NULL,1,45900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','36',42900,0,12900,14.49,30000,7169.28,1032.48,'00000005','王卓欤','15243602288','打球','1','2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,113,664,665,',113,664,665,',497,498,',497,498,','杨六','1','140102198905065178','18746921739',NULL,'',NULL,NULL,'5','1',27,'1989-01-01','2','3','BZ100007','2015-05-06','2015-04-27',4,'2015-04-29',17,'QIJIAN','S7',NULL,NULL,'2015-06-06',NULL,'2','916000476','2017-06-02','5','4','BX-A000017000',24,36,NULL,'4','南充',8600,497,498,'南充市高坪区航空港工业集中区',NULL,'7',2,'上海艾领德国际贸易公司','9','上海艾领德国际贸易公司董事长',NULL,NULL,5,116900,'QKLZ','比亚迪--标准贷','标准贷款-等额本息（个人）','36',115900,0,34770,14.49,81130,19388.48,2792.18,'00000006','朱卫国','13488659647','看书','1','1',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,113,664,665,',113,664,665,',497,498,',497,498,','林七','1','440307198709054824','18746921740',NULL,'',NULL,NULL,'5','1',29,'1987-01-01','2','3','BZ100008','2015-05-06','2015-04-27',4,'2015-04-28',17,'HAOHUA','S7',NULL,NULL,'2015-06-06',NULL,'2','916007181','2017-07-02','8','3','BX-A000018000',24,36,NULL,'2','南充',13000,497,498,'南充市高坪区航空港工业集中区',NULL,'1',2,'政府部门','8','武汉海关关长',NULL,NULL,5,116900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','36',116900,0,35070,14.49,81830,19555.72,2816.27,'00000007','杨国平','18991902693','运动','2','3','1',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,113,664,666,',113,664,666,',497,499,',497,499,','赵八','1','421002197212271423','18746921741',NULL,'',NULL,NULL,'5','1',44,'1972-01-01','2','3','BZ100005','2015-05-05','2015-04-27',4,'2015-04-29',17,'HAOHUA','S7',NULL,NULL,'2015-06-05',NULL,'2','916005239','2017-08-02','5','2','BX-A000020000',13,34,NULL,'2','泸州',18000,497,499,'四川省泸州市纳溪区浙江产业园',NULL,'3',2,'政府部门','8','上海铁路局副局长',NULL,NULL,5,139900,'QKLZ','比亚迪--标准贷','标准贷款-等额本息（个人）','36',139900,0,28000,14.49,111900,26741.76,3851.16,'00000008','潘学刚','13611981186','旅游','1','15',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,113,664,666,',113,664,666,',497,499,',497,499,','黄九','1','420105198811253678','18746921742',NULL,'',NULL,NULL,'5','1',28,'1988-01-01','2','3','BZ100006','2015-05-05','2015-04-28',4,'2015-04-30',17,'HAOHUA','NEWF3',NULL,NULL,'2015-06-05',NULL,'2','916010640','2017-09-02','4','3','BX-A000021001',31,32,NULL,'4','泸州',6700,497,499,'四川省泸州市纳溪区浙江产业园',NULL,'1',3,'上海华勤通讯技术有限公司','10','上海华勤通讯技术有限公司市场总监',NULL,NULL,1,51900,'YDY','比亚迪--标准贷','标准贷款-等额本息（个人）','24',45900,0,14900,14.49,31000,4894.16,1495.59,'00000009','王强鹰','18016367263','打球','2','3','1',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,112,658,667,',112,658,667,',493,500,',493,500,','江十','1','440301197403213818','18746921743',NULL,'',NULL,NULL,'5','1',42,'1974-01-01','2','3','BZ100022','2015-05-20','2015-04-29',4,'2015-04-30',17,'QIJIAN','S6',NULL,NULL,'2015-06-20',NULL,'2','A16007445','2017-10-02','5','4','BX-A000023000',11,111,NULL,'2','榆林',6000,493,500,'陕西省榆林市草海则小学旁',NULL,'8',8,'中国经营报','8','中国经营报记者',NULL,NULL,8,109900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','36',103395,0,31018.5,14.49,72376.5,17296.62,2490.92,'00000010','李延春','13809116467','看书','1','13',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,113,664,666,',113,664,666,',497,499,',497,499,','吴一','1','370202198706240424','18746921744',NULL,'',NULL,NULL,'5','1',29,'1987-01-01','2','3','BZ100050','2015-05-27','2015-05-04',5,'2015-05-05',18,'QIJIAN','NEWF3',NULL,NULL,'2015-06-27',NULL,'2','916007951','2017-11-02','4','3','BX-A000025000',24,36,NULL,'2','泸州',5900,497,499,'四川省泸州市纳溪区浙江产业园',NULL,'7',3,'政府部门','8','上海市团委副书记、团市委常委、少年部部长',NULL,NULL,1,55900,'YDY','比亚迪--标准贷','标准贷款-等额本息（个人）','36',54900,0,11900,14.49,43000,10276.04,1479.89,'00000011','苏剑波','13661793223','运动','1','2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,108,668,669,',108,668,669,',501,502,',501,502,','陈二','1','432502196810141713','18746921745',NULL,'',NULL,NULL,'5','1',48,'1968-01-01','2','3','BZ100009','2015-05-14','2015-05-05',5,'2015-05-05',18,'HAOHUA','SURUI',NULL,NULL,'2015-06-14',NULL,'2','A16012773','2017-12-02','5','3','BX-A000032000',12,114,NULL,'-100','赣州',8600,501,502,'赣州经济技术开发迎宾大道南侧金潭路西侧',NULL,'8',4,'上海电气集团上海电机厂有限公司','11','上海电气集团上海电机厂有限公司经理',NULL,NULL,1,83900,'RYY','比亚迪--标准贷','标准贷款-等额本息（个人）','36',75600,0,23600,14.49,52000,12427.04,1789.64,'00000012','刘建波','13608526297','旅游','2','15','9',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,108,668,670,',108,668,670,',501,503,',501,503,','李三','1','421127198305232816','18746921746',NULL,'',NULL,NULL,'5','1',33,'1983-01-01','2','3','BZ100019','2015-05-19','2015-05-05',5,'2015-05-06',18,'ZUNGUI','S6',NULL,NULL,'2015-06-19',NULL,'2','A15047009','2018-01-02','5','3','BX-A000034000',12,116,NULL,'3','宜春',5600,501,503,'江西省高安市新世纪工业城',NULL,'8',5,'上海胜佰太阳能科技有限公司','10','上海胜佰太阳能科技有限公司商务总监',NULL,NULL,3,97900,'DLH','比亚迪--标准贷','标准贷款-等额本息（个人）','36',97900,0,29900,14.49,68000,16250.44,2340.29,'00000013','刘建波','13608526297','打球','2','7','5',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,113,664,665,',113,664,665,',497,498,',497,498,','张四','1','362401199211150023','18746921747',NULL,'',NULL,NULL,'5','1',24,'1992-01-01','5','3','BZ100012','2015-05-14','2015-05-05',5,'2015-05-08',18,'ZUNGUI','G5',NULL,NULL,'2015-06-14',NULL,'2','915059417','2018-02-02','7','3','200000',22,117,NULL,'2','南充',6000,497,498,'南充市高坪区航空港工业集中区',NULL,'8',7,'政府部门','8','公务员',NULL,NULL,5,102900,'JJB','比亚迪--标准贷','标准贷款-等额本息（个人）','36',99900,0,19980,14.49,79920,19099.08,2750.53,'00000014','刘丹军','18673162177','看书','-100',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,106,660,671,',106,660,671,',495,504,',495,504,','杨五','1','310222198606280219','18746921748',NULL,'',NULL,NULL,'5','1',30,'1986-01-01','2','3','BZ100047','2015-05-25','2015-05-06',5,'2015-05-06',18,'ZUNGUI','S7',NULL,NULL,'2015-06-25',NULL,'2','A15041704','2018-03-02','6','3','BX-A000030000',18,119,NULL,'4','滁州',7800,495,504,'安微省滁州市丰乐大道2599号',NULL,'3',4,'政府部门','8','公务员',NULL,NULL,8,129900,'QKLZ','比亚迪--标准贷','标准贷款-等额本息（个人）','36',127900,0,38370,14.49,89530,21395.72,3081.27,'00000015','黄道铭','18662556999','运动','2','4','1',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,108,668,672,',108,668,672,',505,506,',505,506,','王六','1','370727198411039459','18746921749',NULL,'',NULL,NULL,'5','2',32,'1984-01-01','2','3','BZ100025','2015-05-20','2015-05-07',5,'2015-05-08',19,'ZUNGUI','F0',NULL,NULL,'2015-06-20',NULL,'2','A15069101','2018-04-02','5','5','BX-A000046000',18,35,NULL,'4','驻马店',4000,505,506,'驻马店市开源大道东段（市车管所旁）',NULL,'6',3,'政府部门','8','公务员',NULL,NULL,3,42900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','36',40000,0,12000,14.49,28000,6691.4,963.65,'00000016','许金强','18621398181','旅游','1','5',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,112,658,667,',112,658,667,',493,500,',493,500,','赵七','1','430626198003045122','18746921750',NULL,'',NULL,NULL,'5','2',36,'1980-01-01','2','3','BZ100015','2015-05-20','2015-05-07',5,'2015-05-08',19,'QIJIAN','G5',NULL,NULL,'2015-06-20',NULL,'2','915062340','2018-05-02','5','4','BX-A000040000',31,32,NULL,'2','榆林',7200,493,500,'陕西省榆林市草海则小学旁',NULL,'8',4,'银松公司','9','银松公司总裁',NULL,NULL,0,93900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','24',90000,0,27000,14.49,63000,9946.08,3039.42,'00000017','黎宾','13817212368','打球','1','8',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,112,658,667,',112,658,667,',493,500,',493,500,','林八','1','510132198412086662','18746921751',NULL,'',NULL,NULL,'6','1',32,'1984-01-01','2','3','BZ100021','2015-05-20','2015-05-07',5,'2015-05-08',19,'HAOHUA','F3',NULL,NULL,'2015-06-20',NULL,'2','916003142','2018-06-02','4','4','BX-A000045000',14,122,NULL,'3','榆林',4500,493,500,'陕西省榆林市草海则小学旁',NULL,'8',2,'政府部门','8','经信委',NULL,NULL,1,50900,'TSB','比亚迪--标准贷','标准贷款-等额本息（个人）','12',47000,0,9400,14.49,37600,3016.04,3384.67,'00000018','黎宾','13817212368','看书','2','4','2',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,106,660,661,',106,660,661,',495,496,',495,496,','江九','1','430105199305121325','18746921752',NULL,'',NULL,NULL,'5','1',23,'1993-01-01','5','3','BZ100017','2015-05-19','2015-05-07',5,'2015-05-07',19,'HAOHUA','S7',NULL,NULL,'2015-06-19',NULL,'2','916003143','2018-07-02','5','4','BX-A000035000',14,123,NULL,'3','六安',9000,495,496,'六安市金安区东方汽车城皖西大道南侧A52号',NULL,'3',3,'政府部门','8','中央人民广播电台副总',NULL,NULL,1,129900,'DLH','比亚迪--标准贷','标准贷款-等额本息（个人）','36',126900,0,38070,14.49,88830,21228.48,3057.18,'00000019','高晋琪','13997056995','运动','-100',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,106,660,671,',106,660,671,',495,504,',495,504,','黄十','1','610121197904257072','18746921753','尹祥胜','91320281MA1MLM6P63','18969273857','FQ','5','1',23,'1993-01-01','5','3','BZ100041','2015-05-28','2015-05-07',5,'2015-05-07',19,'HAOHUA','NEWF3',NULL,NULL,'2015-06-28',NULL,'2','916003144','2018-08-02','6','4','BX-A000038000',12,124,NULL,'-100','滁州',8200,495,504,'安微省滁州市丰乐大道2599号',NULL,'5',4,'政府部门','8','中国人民对外友好协会拉美处主管',NULL,NULL,2,55900,'DLH','比亚迪--标准贷','标准贷款-等额本息（个人）','36',50385,0,10077,14.49,40308,9632.64,1387.24,'00004187','周爱涛','15000181806','旅游','-100',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,109,154,522,',109,154,522,',507,508,',507,508,','张四',NULL,'','13910235365','北京富创立科有限公司','66218325-5','13910235266',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,'2016-06-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,NULL,NULL,0,-1,-1,NULL,NULL,NULL,0,NULL,NULL,'科技公司人事主管',NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'具有社会影响力','舒总',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,109,154,522,',109,154,522,',507,508,',507,508,','李三',NULL,'','13701012100','申焱华','110108196804301000','13701012843',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,'2015-07-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,NULL,NULL,0,-1,-1,NULL,NULL,NULL,0,NULL,NULL,'信息部，局长',NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'已购车S7，车主是他爱人，享受售后尊享福利','总裁办',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cm_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dist`
--

DROP TABLE IF EXISTS `sys_dist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dist`
--

LOCK TABLES `sys_dist` WRITE;
/*!40000 ALTER TABLE `sys_dist` DISABLE KEYS */;
INSERT INTO `sys_dist` VALUES (1,'ZJLX','1','身份证',''),(2,'ZJLX','2','护照',''),(3,'XB','1','男性',''),(4,'XB','2','女性',''),(5,'JYCD','7','博士',''),(6,'JYCD','6','硕士',''),(7,'JYCD','5','本科',''),(8,'JYCD','4','大专',''),(9,'JYCD','3','高中及中专',''),(10,'JYCD','2','初中',''),(11,'JYCD','1','小学',''),(13,'FCLX','1','全款自购商品房',''),(14,'FCLX','2','全款自购经适房',''),(15,'FCLX','3','按揭自购商品房',''),(16,'FCLX','4','按揭自购经适房',''),(17,'FCLX','5','公司房',''),(18,'FCLX','6','直系亲属房',''),(19,'FCLX','7','租赁房',''),(20,'FCLX','8','自建房',''),(21,'FCLX','9','宅基地',''),(22,'FCLX','10','公产房',''),(23,'FCLX','11','小产权房',''),(24,'HYZK','1','单身',''),(25,'HYZK','2','已婚',''),(26,'HYZK','3','离婚',''),(27,'HYZK','4','丧偶',''),(28,'JTRS','1','1',''),(29,'JTRS','2','2',''),(30,'JTRS','3','3',''),(31,'JTRS','4','4',''),(32,'JTRS','5','5',''),(33,'JTRS','6','6',''),(34,'JTRS','7','7',''),(35,'JTRS','8','8',''),(61,'FKFS','1','全款',''),(62,'FKFS','2','贷款',''),(65,'HKZT','3','还款中',''),(66,'DQZT','1','正常',''),(67,'DQZT','2','异常',''),(68,'QYXZ','1','国有',''),(69,'QYXZ','2','集体',''),(70,'QYXZ','3','联营',''),(71,'QYXZ','4','股份制',''),(72,'QYXZ','5','私营',''),(73,'QYXZ','6','个体',''),(74,'QYXZ','7','合伙',''),(75,'DKQS','12','12',''),(76,'DKQS','24','24',''),(77,'DKQS','36','36',''),(80,'YYHZSL','1','1',''),(81,'YYHZSL','2','2',''),(82,'YYHZSL','3','3',''),(83,'YYHZSL','4','4',''),(84,'YYHZSL','5','5',''),(91,'CXING','QIN','秦',''),(92,'CXING','G5','G5',''),(93,'CXING','S7','S7',''),(94,'CXING','SURUI','速锐',''),(95,'CXYS','TSB','天山白',''),(96,'CXYS','HYY','皓月银',''),(97,'CXYS','MLC','魔力橙',''),(98,'CXYS','DLH','德兰黑',''),(99,'CXYS','QKLZ','巧克力棕',''),(102,'CXI','QIJIAN','旗舰版',''),(103,'CXI','HAOHUA','豪华版',''),(104,'CXI','ZUNGUI','尊贵版',''),(105,'LZGX','FQ','夫妻',''),(106,'LZGX','FZN','父子/女',''),(107,'LZGX','PY','朋友',''),(108,'ZYLX','1','公务员',''),(111,'DQZT','3','Converted',''),(116,'ZYLX','5','国家机关、党群组织、企业、事业单位负责人','导入时系统自动添加'),(120,'ZYLX','3','办事人员和有关人员','导入时系统自动添加'),(124,'ZYLX','2','专业技术人员','导入时系统自动添加'),(130,'CXING','F3','F3',''),(132,'ZYLX','4','商业、服务业人员','导入时系统自动添加'),(138,'CXYS','YDY','雅典银',''),(139,'CXING','S6','S6',''),(142,'CXYS','RYY','瑞亚银',''),(143,'CXYS','JJB','水晶白',''),(144,'CXING','F0','F0',''),(157,'QYXZ','8','国家行政机关单位',''),(158,'QYXZ','9','外资',''),(159,'QYXZ','10','合资',''),(160,'QYXZ','11','国营',''),(162,'CXING','NEWF3','全新F3',''),(163,'HKZT','4','Special-mention关注',''),(164,'HKZT','5','Pass正常',''),(165,'HKZT','6','Doubtful可疑',''),(187,'HYZK','5','未婚',''),(228,'CXI','TANG','唐',''),(230,'FKFS','3','现金','');
/*!40000 ALTER TABLE `sys_dist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_field`
--

DROP TABLE IF EXISTS `sys_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_field` (
  `fname` varchar(100) NOT NULL COMMENT '字段名',
  `sname` varchar(100) NOT NULL COMMENT '显示字段名',
  `src_name` varchar(100) DEFAULT NULL COMMENT '原始值字段',
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_field`
--

LOCK TABLES `sys_field` WRITE;
/*!40000 ALTER TABLE `sys_field` DISABLE KEYS */;
INSERT INTO `sys_field` VALUES ('bz','bz',NULL,'备注','text','string',NULL,NULL,0,0,0,1,73,NULL,NULL,NULL,'背景说明',0),('city_cs','city_cs_show',NULL,'城市','tree','int','CITY',NULL,2,1,1,1,5,NULL,NULL,NULL,NULL,0),('city_sf','city_sf_show',NULL,'省份','tree','int','CITY','city_cs',1,1,1,1,4,NULL,NULL,NULL,NULL,0),('cphm','cphm',NULL,'车牌号码','text','string',NULL,NULL,0,0,0,1,27,NULL,NULL,NULL,NULL,0),('cplx','cplx',NULL,'产品类型','text','string',NULL,NULL,0,0,0,1,57,NULL,NULL,NULL,NULL,0),('cpz','cpz',NULL,'产品组','text','string',NULL,NULL,0,0,0,1,56,NULL,NULL,NULL,NULL,0),('csys','csys_show','csys_src','车身颜色','dist','string','CXYS',NULL,0,0,0,1,55,NULL,NULL,NULL,NULL,0),('cxi','cxi_show','cxi_src','车系','dist','string','CXI',NULL,0,0,0,1,25,NULL,NULL,NULL,NULL,0),('cxing','cxing_show','cxing_src','车型','dist','string','CXING',NULL,0,0,0,1,26,NULL,NULL,NULL,NULL,0),('degxhnljd','degxhnljd',NULL,'第二个小孩年龄阶段','text','string',NULL,NULL,0,0,0,1,72,NULL,NULL,NULL,NULL,0),('dkje','dkje',NULL,'贷款金额','text','double',NULL,NULL,0,0,0,1,62,NULL,NULL,NULL,NULL,0),('dkqs','dkqs_show','dkqs_src','贷款期数','dist','string','DKQS',NULL,0,0,0,1,58,'贷款期数（月）',NULL,NULL,NULL,0),('dksqhm','dksqhm',NULL,'贷款申请号码','text','string',NULL,NULL,0,0,0,1,36,NULL,NULL,NULL,NULL,0),('dqzt','dqzt_show','dqzt_src','当前状态','dist','string','DQZT',NULL,0,0,0,1,18,NULL,NULL,NULL,NULL,0),('dygxhnljd','dygxhnljd',NULL,'第一个小孩年龄阶段','text','string',NULL,NULL,0,0,0,1,71,NULL,NULL,NULL,NULL,0),('dzlx','dzlx',NULL,'地址类型','text','string',NULL,NULL,0,0,0,1,45,NULL,NULL,NULL,NULL,0),('dzy','dzy',NULL,'地址一','text','string',NULL,NULL,0,0,0,1,52,NULL,NULL,NULL,NULL,0),('fclx','fclx_show','fclx_src','房产类型','dist','string','FCLX',NULL,0,0,0,1,46,NULL,NULL,NULL,NULL,0),('fkfs','fkfs_show','fkfs_src','付款方式','dist','string','FKFS',NULL,0,0,0,1,31,NULL,NULL,NULL,NULL,0),('gcrq','gcrq',NULL,'购车日期','date','date',NULL,NULL,0,0,0,1,29,NULL,NULL,NULL,NULL,0),('gcyhke','gcyhke',NULL,'购车月还款额','text','double',NULL,NULL,0,0,0,1,65,NULL,NULL,NULL,NULL,0),('gsdh','gsdh',NULL,'公司电话','text','string',NULL,NULL,0,0,0,1,51,NULL,NULL,NULL,NULL,0),('gsmc','gsmc',NULL,'公司名称','text','string',NULL,NULL,0,0,0,1,48,'公司名称（自填项）',NULL,NULL,NULL,0),('gsqrgx','gsqrgx_show','gsqrgx_src','跟申请人关系','dist','string','LZGX',NULL,0,0,0,1,13,NULL,NULL,NULL,NULL,0),('gznx','gznx',NULL,'工作年限','text','int',NULL,NULL,0,0,0,1,53,'工作年限（年）',NULL,NULL,NULL,0),('hkdz','hkdz',NULL,'户口地址','text','string',NULL,NULL,0,0,0,1,44,NULL,NULL,NULL,NULL,0),('hkszd','hkszd',NULL,'户口所在地','text','string',NULL,NULL,0,0,0,1,40,NULL,NULL,NULL,NULL,0),('hkzt','hkzt_show','hkzt_src','还款状态','dist','string','HKZT',NULL,0,0,0,1,14,NULL,NULL,NULL,NULL,0),('htbh','htbh',NULL,'合同编号','text','string',NULL,NULL,0,0,0,1,19,NULL,NULL,NULL,NULL,0),('htjhrq','htjhrq',NULL,'合同激活日期','date','date',NULL,NULL,0,0,0,1,20,NULL,NULL,NULL,NULL,0),('hylx','hylx_show',NULL,'行业类型','tree','int','HYLX','hyzlx',1,0,0,1,37,NULL,NULL,NULL,NULL,0),('hyzk','hyzk_show','hyzk_src','婚姻状况','dist','string','HYZK',NULL,0,0,0,1,17,NULL,NULL,NULL,NULL,0),('hyzlx','hyzlx_show',NULL,'行业子类型','tree','int','HYLX',NULL,2,0,0,1,38,NULL,NULL,NULL,NULL,0),('hzjjrq','hzjjrq',NULL,'核准拒绝日期','date','date',NULL,NULL,0,0,0,1,23,NULL,NULL,NULL,NULL,0),('jcrq','jcrq',NULL,'交车日期','date','date',NULL,NULL,0,0,0,1,30,NULL,NULL,NULL,NULL,0),('jkr_cs','jkr_cs_show',NULL,'借款人城市','tree','int','CITY',NULL,2,0,0,1,43,NULL,NULL,NULL,NULL,0),('jkr_sf','jkr_sf_show',NULL,'借款人省份','tree','int','CITY','jkr_cs',1,0,0,1,42,NULL,NULL,NULL,NULL,0),('jsr_lxdh','jsr_lxdh',NULL,'介绍人联系电话','text','string',NULL,NULL,0,0,0,1,68,NULL,NULL,NULL,NULL,0),('jsr_xm','jsr_xm',NULL,'介绍人姓名','text','string',NULL,NULL,0,0,0,1,67,'介绍人',NULL,NULL,NULL,0),('jszbh','jszbh',NULL,'驾驶证编号','text','string',NULL,NULL,0,0,0,1,32,'驾驶证档案编号',NULL,NULL,NULL,0),('jtrs','jtrs_show','jtrs_src','家庭人数','dist','string','JTRS',NULL,0,0,0,1,34,NULL,NULL,NULL,NULL,0),('jycd','jycd_show','jycd_src','教育程度','dist','string','JYCD',NULL,0,0,0,1,35,NULL,NULL,NULL,NULL,0),('jzdqr','jzdqr',NULL,'驾照到期日','date','date',NULL,NULL,0,0,0,1,33,NULL,NULL,NULL,NULL,0),('jznx','jznx',NULL,'居住年限','text','int',NULL,NULL,0,0,0,1,47,NULL,NULL,NULL,NULL,0),('khll','khll',NULL,'客户利率','text','double',NULL,NULL,0,0,0,1,63,NULL,NULL,NULL,NULL,0),('khsqbm','khsqbm',NULL,'客户申请编码','text','string',NULL,NULL,0,0,0,1,66,NULL,NULL,NULL,NULL,0),('lxze','lxze',NULL,'利息总额','text','double',NULL,NULL,0,0,0,1,64,NULL,NULL,NULL,NULL,0),('nl','nl',NULL,'年龄','text','int',NULL,NULL,0,1,1,1,16,'年龄（年）',NULL,NULL,NULL,0),('org_dq','org_dq_show',NULL,'大区','org','int','-1','org_jxs',2,1,1,1,2,NULL,NULL,NULL,NULL,0),('org_jxs','org_jxs_show',NULL,'经销商','org','int','-1',NULL,3,1,1,1,3,'经销商名称','经销商名称','经销商名称',NULL,0),('org_yxb','org_yxb_show',NULL,'营销部','org','int','0','org_dq',1,1,1,1,1,NULL,NULL,NULL,NULL,0),('qyxz','qyxz_show','qyxz_src','企业性质','dist','string','QYXZ',NULL,0,0,0,1,49,NULL,NULL,NULL,NULL,0),('sfkbl','sfkbl',NULL,'首付款比例','text','double',NULL,NULL,0,0,0,1,60,'首付款比例 %',NULL,NULL,NULL,0),('sfkje','sfkje',NULL,'首付款金额','text','double',NULL,NULL,0,0,0,1,61,NULL,NULL,NULL,NULL,0),('sjgcr_dhhm','sjgcr_dhhm',NULL,'购车人电话号码','text','string',NULL,NULL,0,1,1,1,12,NULL,'实际购车人电话号码',NULL,'实际购车人联系方式',0),('sjgcr_xm','sjgcr_xm',NULL,'购车人姓名','text','string',NULL,NULL,0,1,1,1,10,NULL,'实际购车人姓名','客户名称','实际购车人姓名',0),('sjgcr_zjhm','sjgcr_zjhm',NULL,'购车人证件号码','text','string',NULL,NULL,0,1,1,1,11,NULL,'实际购车人证件号码','证件号码','实际购车人证件号',0),('sqr_dhhm','sqr_dhhm',NULL,'申请人电话号码','text','string',NULL,NULL,0,1,1,1,9,'电话','申请人电话',NULL,'电话',0),('sqr_xm','sqr_xm',NULL,'申请人姓名','text','string',NULL,NULL,0,1,1,1,6,'姓名（中文）','申请人姓名',NULL,'受邀人姓名',0),('sqr_zjhm','sqr_zjhm',NULL,'申请人证件号码','text','string',NULL,NULL,0,1,1,1,8,'证件号码','申请人证件号码',NULL,NULL,0),('sqr_zjlx','sqr_zjlx_show','sqr_zjlx_src','申请人证件类型','dist','string','ZJLX',NULL,0,0,0,1,7,'证件类型',NULL,NULL,NULL,0),('sqtjrq','sqtjrq',NULL,'申请提交日期','date','date',NULL,NULL,0,0,0,1,21,NULL,NULL,NULL,NULL,0),('vin','vin',NULL,'VIN号','text','string',NULL,NULL,0,0,0,1,28,NULL,NULL,NULL,'已提车车架号',0),('xb','xb_show','xb_src','性别','dist','string','XB',NULL,0,0,0,1,15,NULL,NULL,NULL,NULL,0),('xqah','xqah',NULL,'兴趣爱好','text','string',NULL,NULL,0,0,0,1,69,NULL,NULL,NULL,NULL,0),('xsjg','xsjg',NULL,'销售价格','text','double',NULL,NULL,0,0,0,1,59,NULL,NULL,NULL,NULL,0),('yf','yf',NULL,'月份','text','int',NULL,NULL,0,0,0,1,22,NULL,NULL,NULL,NULL,0),('yqr','yqr',NULL,'邀请人','text','string',NULL,NULL,0,0,0,1,74,NULL,NULL,NULL,'邀请人',0),('ysr','ysr',NULL,'月收入','text','int',NULL,NULL,0,0,0,1,41,NULL,NULL,NULL,NULL,0),('yyxhsl','yyxhsl_show','yyxhsl_src','拥有小孩数量','dist','string','YYHZSL',NULL,0,0,0,1,70,NULL,NULL,NULL,NULL,0),('zc','zc',NULL,'周次','text','int',NULL,NULL,0,0,0,1,24,NULL,NULL,NULL,NULL,0),('zcjg','zcjg',NULL,'资产价格','text','double',NULL,NULL,0,0,0,1,54,NULL,NULL,NULL,NULL,0),('zw','zw',NULL,'职位','text','string',NULL,NULL,0,0,0,1,50,NULL,NULL,NULL,'职务',0),('zylx','zylx_show','zylx_src','职业类型','dist','string','ZYLX',NULL,0,0,0,1,39,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '菜单名',
  `uri` text COMMENT '链接',
  `is_menu` int(1) NOT NULL COMMENT '是否做为菜单',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='系统-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'客户信息','index.jspx',1,1),(2,0,'系统管理','#',1,10),(3,2,'用户管理','admin/user/list.jspx',1,1),(4,2,'角色管理','admin/role/list.jspx',1,2),(5,2,'系统功能管理','admin/menu/list.jspx',1,3),(6,1,'客户信息查询','cm/list.jspx',1,2),(7,2,'组织机构管理','admin/org/list.jspx',1,4),(8,1,'新增客户信息','cm/add.jspx',1,3),(9,1,'修改客户信息','cm/edit.jspx',0,1),(10,1,'删除客户信息','cm/delete.do',0,2),(11,2,'普通字典管理','admin/dist/list.jspx',1,5),(12,2,'树形字典管理','admin/tree/list.jspx',1,6),(13,2,'字段配置','admin/field/list.jspx',1,7),(14,1,'导入客户信息','cm/imp.jspx',1,4),(15,11,'新增字典','admin/dist/add.do',0,2),(16,11,'修改字典','admin/dist/update.do',0,3),(17,11,'删除字典','admin/dist/delete.do',0,4),(18,13,'修改字段配置','admin/field/update.do',0,2),(19,5,'新增系统功能','admin/menu/add.do',0,2),(20,5,'修改系统功能','admin/menu/update.do',0,3),(21,5,'删除系统功能','admin/menu/delete.do',0,4),(22,7,'新增组织机构','admin/org/add.do',0,2),(23,7,'修改组织机构','admin/org/update.do',0,3),(24,7,'删除组织机构','admin/org/delete.do',0,4),(25,4,'新增角色','admin/role/add.do',0,2),(26,4,'修改角色','admin/role/update.do',0,3),(27,4,'删除角色','admin/role/delete.do',0,4),(28,12,'新增树字典','admin/tree/add.do',0,2),(29,12,'修改树字典','admin/tree/update.do',0,3),(30,12,'删除树字典','admin/tree/delete.do',0,4),(31,3,'新增用户','admin/user/add.do',0,2),(32,3,'修改用户','admin/user/update.do',0,3),(33,3,'删除用户','admin/user/delete.do',0,4),(34,11,'字典列表','admin/dist/list.do',0,1),(35,5,'系统功能列表','admin/menu/list.do',0,1),(36,7,'组织机构列表','admin/org/list.do',0,1),(37,4,'角色列表','admin/role/list.do',0,1),(38,12,'树字典列表','admin/tree/list.do',0,1),(39,3,'用户列表','admin/user/list.do',0,1),(40,13,'字段列表','admin/field/loadAll.do',0,1),(41,1,'导出客户信息','cm/exp.do',0,5),(42,1,'客户信息明细','cm/detail.jspx',0,6),(43,1,'批量删除客户信息','cm/deleteBatch.do',0,2);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_org`
--

DROP TABLE IF EXISTS `sys_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '类型',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(500) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `type_pid` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_org`
--

LOCK TABLES `sys_org` WRITE;
/*!40000 ALTER TABLE `sys_org` DISABLE KEYS */;
INSERT INTO `sys_org` VALUES (104,1,0,'东北营销部',',104,'),(105,1,0,'华北营销部',',105,'),(106,1,0,'华东营销部',',106,'),(107,1,0,'华南营销部',',107,'),(108,1,0,'华中营销部',',108,'),(109,1,0,'京津营销部',',109,'),(110,1,0,'上海营销部',',110,'),(111,1,0,'深圳营销部',',111,'),(112,1,0,'西北营销部',',112,'),(113,1,0,'西南营销部',',113,'),(119,2,104,'长春大区',',104,119,'),(120,2,104,'哈尔滨大区',',104,120,'),(121,2,104,'呼市大区',',104,121,'),(122,2,104,'辽北大区',',104,122,'),(123,2,104,'辽南大区',',104,123,'),(124,2,105,'保定大区',',105,124,'),(125,2,105,'济南大区',',105,125,'),(126,2,105,'临汾大区',',105,126,'),(127,2,105,'临沂大区',',105,127,'),(128,2,105,'青岛大区',',105,128,'),(129,2,105,'石家庄大区',',105,129,'),(130,2,105,'太原大区',',105,130,'),(131,2,105,'唐山大区',',105,131,'),(132,2,105,'潍坊大区',',105,132,'),(133,2,106,'福州大区',',106,133,'),(134,2,106,'杭州大区',',106,134,'),(135,2,106,'合肥大区',',106,135,'),(136,2,106,'金华大区',',106,136,'),(137,2,106,'南京大区',',106,137,'),(138,2,106,'南通大区',',106,138,'),(139,2,106,'宁波大区',',106,139,'),(140,2,106,'苏州大区',',106,140,'),(141,2,106,'温州大区',',106,141,'),(142,2,107,'佛山大区',',107,142,'),(143,2,107,'广州大区',',107,143,'),(144,2,107,'南宁大区',',107,144,'),(145,2,107,'莞珠大区',',107,145,'),(146,2,107,'粤东大区',',107,146,'),(147,2,108,'南昌大区',',108,147,'),(148,2,108,'武汉大区',',108,148,'),(149,2,108,'湘北大区',',108,149,'),(150,2,108,'湘南大区',',108,150,'),(151,2,108,'豫北大区',',108,151,'),(152,2,108,'豫南大区',',108,152,'),(153,2,108,'豫中大区',',108,153,'),(154,2,109,'北京大区',',109,154,'),(155,2,109,'天津大区',',109,155,'),(156,2,110,'上海二区',',110,156,'),(157,2,110,'上海三区',',110,157,'),(158,2,110,'上海一区',',110,158,'),(159,2,111,'宝安大区',',111,159,'),(160,2,111,'福田大区',',111,160,'),(161,2,111,'龙岗大区',',111,161,'),(162,2,111,'龙华大区',',111,162,'),(163,2,112,'汉中大区',',112,163,'),(164,2,112,'兰州大区',',112,164,'),(165,2,112,'新疆大区',',112,165,'),(166,2,112,'延安大区',',112,166,'),(167,2,113,'成都大区',',113,167,'),(168,2,113,'川北大区',',113,168,'),(169,2,113,'川南大区',',113,169,'),(170,2,113,'贵阳大区',',113,170,'),(171,2,113,'昆明大区',',113,171,'),(172,2,113,'重庆大区',',113,172,'),(182,3,119,'长春兴盛汽车销售有限公司',',104,119,182,'),(183,3,119,'长春市合盛和汽车贸易有限公司',',104,119,183,'),(184,3,119,'吉林市平远汽车经销有限公司',',104,119,184,'),(185,3,119,'白山市城东名车销售服务有限公司',',104,119,185,'),(186,3,119,'吉林省恒亚汽车销售服务有限公司',',104,119,186,'),(187,3,119,'四平市博成汽车销售服务有限公司',',104,119,187,'),(188,3,119,'延吉嘉航汽车销售服务有限公司',',104,119,188,'),(189,3,119,'松原市凯福顺通汽车销售服务有限公司',',104,119,189,'),(190,3,120,'大庆市兄弟汽车销售有限公司',',104,120,190,'),(191,3,120,'齐齐哈尔粤华远通汽车销售有限公司',',104,120,191,'),(192,3,120,'齐齐哈尔龙港汽车销售有限公司',',104,120,192,'),(193,3,120,'哈尔滨振海汽车销售服务有限公司',',104,120,193,'),(194,3,120,'黑龙江宏达旭龙汽车销售服务有限公司',',104,120,194,'),(195,3,120,'绥化昌隆汽车销售服务有限公司',',104,120,195,'),(196,3,120,'哈尔滨市宏达嘉龙汽车销售维修服务有限公司',',104,120,196,'),(197,3,120,'牡丹江市震飞汽车交易市场有限公司',',104,120,197,'),(198,3,120,'佳木斯华驰汽车销售服务有限公司',',104,120,198,'),(199,3,120,'哈尔滨天盛达汽车销售有限公司',',104,120,199,'),(200,3,121,'鄂尔多斯市东胜区福邦汽车商贸有限责任公司',',104,121,200,'),(201,3,121,'兴安盟世源汽车贸易有限公司',',104,121,201,'),(202,3,121,'包头市华迪汽车销售服务有限责任公司',',104,121,202,'),(203,3,121,'包头市福迪汽车贸易有限公司',',104,121,203,'),(204,3,121,'赤峰百恩商贸有限责任公司',',104,121,204,'),(205,3,121,'赤峰金基摩托车销售有限公司',',104,121,205,'),(206,3,121,'乌海市嘉航汽车销售有限公司',',104,121,206,'),(207,3,121,'锡林郭勒盟博杰商贸有限公司',',104,121,207,'),(208,3,121,'内蒙古恒泰翔汽车销售服务有限公司',',104,121,208,'),(209,3,121,'通辽市九赢车辆销售有限责任公司',',104,121,209,'),(210,3,121,'内蒙古长青汽车贸易有限公司',',104,121,210,'),(211,3,122,'辽宁兴锐汽车销售服务有限公司',',104,122,211,'),(212,3,122,'阜新市永兴汽车销售服务有限公司',',104,122,212,'),(213,3,122,'朝阳车世界汽车销售维修服务有限公司',',104,122,213,'),(214,3,122,'铁岭市顺峰(集团)顺鑫汽车销售服务有限公司',',104,122,214,'),(215,3,122,'辽宁兴旗汽车销售服务有限公司',',104,122,215,'),(216,3,122,'沈阳美驰虎汽车销售服务有限公司',',104,122,216,'),(217,3,122,'辽阳兴旗汽车销售服务有限公司',',104,122,217,'),(218,3,122,'辽宁英汇汽车贸易有限公司',',104,122,218,'),(219,3,123,'大连众义达汽车销售有限公司',',104,123,219,'),(220,3,123,'营口天福新迪汽车销售有限公司',',104,123,220,'),(221,3,123,'鞍山安迪汽车销售服务有限公司',',104,123,221,'),(222,3,123,'锦州盛龙汽车销售服务有限公司',',104,123,222,'),(223,3,123,'瓦房店市新世纪汽车修配有限公司',',104,123,223,'),(224,3,123,'大连龙威汽车贸易有限公司',',104,123,224,'),(225,3,123,'鞍山众迪汽车销售服务有限公司',',104,123,225,'),(226,3,123,'葫芦岛鑫恒源贸易有限公司',',104,123,226,'),(227,3,123,'海城市众锐汽车销售服务有限公司',',104,123,227,'),(228,3,124,'保定市顺捷物资贸易有限公司',',105,124,228,'),(229,3,124,'涿州中煤华谊汽车销售服务有限公司',',105,124,229,'),(230,3,124,'保定市天地人合汽车销售服务有限公司',',105,124,230,'),(231,3,124,'衡水巨森汽贸有限责任公司',',105,124,231,'),(232,3,124,'沧州市骏驰汽车销售有限公司',',105,124,232,'),(233,3,124,'河北三胜汽车贸易有限公司',',105,124,233,'),(234,3,124,'定州市汇盛汽车贸易有限公司',',105,124,234,'),(235,3,125,'齐河凯迪汽车贸易有限公司',',105,125,235,'),(236,3,125,'德州凯威达汽贸有限公司',',105,125,236,'),(237,3,125,'聊城市同辉汽车销售有限公司',',105,125,237,'),(238,3,125,'滨州市昌华汽车销售服务有限公司',',105,125,238,'),(239,3,125,'济南菲源汽车销售服务有限公司',',105,125,239,'),(240,3,125,'济南乾城汽车贸易有限公司',',105,125,240,'),(241,3,125,'山东滨州昌远汽车销售有限公司',',105,125,241,'),(242,3,125,'济南乾盛汽车销售有限公司',',105,125,242,'),(243,3,126,'山西智腾汽车营销服务有限公司',',105,126,243,'),(244,3,126,'山西省长治市飞路汽车贸易有限公司',',105,126,244,'),(245,3,126,'长治市四合贸易有限公司',',105,126,245,'),(246,3,126,'运城市华森汽车销售服务有限公司',',105,126,246,'),(247,3,126,'临汾悦迪汽车销售服务有限公司',',105,126,247,'),(248,3,126,'临汾大昌汽车服务有限公司',',105,126,248,'),(249,3,126,'晋城市觉安汽车销售服务有限公司',',105,126,249,'),(250,3,126,'晋城市元唐汽车销售有限公司',',105,126,250,'),(251,3,126,'大同市银狮汽车销售服务有限公司',',105,126,251,'),(252,3,126,'运城市鑫泽汽车销售有限公司',',105,126,252,'),(253,3,127,'滕州市安驰商贸有限公司',',105,127,253,'),(254,3,127,'枣庄奚仲汽车销售有限公司',',105,127,254,'),(255,3,127,'济宁交运聚丰汽车销售服务有限公司',',105,127,255,'),(256,3,127,'山东震德汽车销售有限公司',',105,127,256,'),(257,3,127,'莱芜市中正汽车销售服务有限公司',',105,127,257,'),(258,3,127,'临沂金鼎汽车贸易有限公司',',105,127,258,'),(259,3,127,'临沂世鼎商贸有限公司',',105,127,259,'),(260,3,127,'临沂瑞鼎汽车销售服务有限公司',',105,127,260,'),(261,3,127,'泰安德瑞汽车销售有限公司',',105,127,261,'),(262,3,127,'莱芜市鑫正汽车销售服务有限公司',',105,127,262,'),(263,3,127,'菏泽润众汽车工业科技有限公司',',105,127,263,'),(264,3,127,'邹城润泰汽车销售服务有限公司',',105,127,264,'),(265,3,127,'曲阜市丰泰汽车销售服务有限公司',',105,127,265,'),(266,3,128,'威海市正安汽车销售有限公司',',105,128,266,'),(267,3,128,'威海君安汽车销售有限公司',',105,128,267,'),(268,3,128,'日照圣豪汽车销售服务有限公司',',105,128,268,'),(269,3,128,'青岛蓝天远景汽车销售服务有限公司',',105,128,269,'),(270,3,128,'青岛华驰汽车销售服务有限公司',',105,128,270,'),(271,3,128,'青岛仕通达汽车销售服务有限公司',',105,128,271,'),(272,3,128,'青岛明梓东昱汽车销售服务有限公司',',105,128,272,'),(273,3,128,'日照国恒汽车贸易有限公司莒县分公司',',105,128,273,'),(274,3,129,'邯郸大丰汽车销售服务有限公司',',105,129,274,'),(275,3,129,'邢台和信汽车贸易有限公司',',105,129,275,'),(276,3,129,'河北三行汽车贸易股份有限公司',',105,129,276,'),(277,3,129,'邢台大丰汽车有限公司',',105,129,277,'),(278,3,129,'河北习实康鑫汽车贸易有限公司',',105,129,278,'),(279,3,129,'河北同驰汽车贸易有限公司',',105,129,279,'),(280,3,129,'邯郸市福达汽车贸易有限公司',',105,129,280,'),(281,3,129,'河北兴迪汽车销售有限公司',',105,129,281,'),(282,3,130,'山西呈泽工贸有限公司',',105,130,282,'),(283,3,130,'孝义市正达汽车销售服务有限公司',',105,130,283,'),(284,3,130,'山西精华伟业汽车服务有限公司',',105,130,284,'),(285,3,130,'山西新启迪汽车贸易有限公司',',105,130,285,'),(286,3,130,'山西新千年工贸有限公司万国汽车销售分公司',',105,130,286,'),(287,3,130,'太原鑫源泰汽车服务有限公司',',105,130,287,'),(288,3,130,'山西亚迪利汽车贸易有限公司',',105,130,288,'),(289,3,130,'阳泉恒瑞物贸有限责任公司',',105,130,289,'),(290,3,130,'太原市盛世开元汽车销售有限公司',',105,130,290,'),(291,3,131,'廊坊市瑞崇汽车销售有限公司',',105,131,291,'),(292,3,131,'承德市开发区源泉汽车贸易有限公司',',105,131,292,'),(293,3,131,'张家口市贵宾汽贸汽修有限公司',',105,131,293,'),(294,3,131,'秦皇岛机电比亚迪汽车销售服务有限公司',',105,131,294,'),(295,3,131,'唐山环耀汽车销售服务有限公司',',105,131,295,'),(296,3,131,'唐山市金利海汽车销售有限公司',',105,131,296,'),(297,3,131,'霸州市鑫时利汽车销售有限公司',',105,131,297,'),(298,3,132,'烟台太古汽车销售有限公司',',105,132,298,'),(299,3,132,'烟台交运集团轿车销售服务有限公司',',105,132,299,'),(300,3,132,'烟台华鼎陆迪汽车销售服务有限公司',',105,132,300,'),(301,3,132,'烟台市太力汽车服务有限公司',',105,132,301,'),(302,3,132,'莱州太兴汽车销售服务有限公司',',105,132,302,'),(303,3,132,'莱州市富顺汽车销售服务有限公司',',105,132,303,'),(304,3,132,'山东新星集团有限公司',',105,132,304,'),(305,3,132,'潍坊金茂盛汽车销售服务有限公司',',105,132,305,'),(306,3,132,'诸城市亚飞汽车销售服务有限公司',',105,132,306,'),(307,3,132,'潍坊圣世骏通汽车销售服务有限公司',',105,132,307,'),(308,3,132,'东营齐胜汽车销售有限公司',',105,132,308,'),(309,3,133,'三明市万通经贸有限公司',',106,133,309,'),(310,3,133,'福建省国安锦轮汽车贸易有限责任公司',',106,133,310,'),(311,3,133,'泉州鸿鑫汽车销售服务有限公司',',106,133,311,'),(312,3,133,'福建省粤迪汽车销售有限公司',',106,133,312,'),(313,3,133,'福建龙迪鑫汽车销售服务有限公司',',106,133,313,'),(314,3,133,'莆田市亿豪汽车贸易有限公司',',106,133,314,'),(315,3,133,'福建省美嘉鑫迪贸易有限公司',',106,133,315,'),(316,3,133,'漳州华骏天捷汽车贸易有限公司',',106,133,316,'),(317,3,133,'厦门市佳凯盛汽车贸易有限公司',',106,133,317,'),(318,3,134,'绍兴市迪远汽车销售有限公司',',106,134,318,'),(319,3,134,'绍兴市科能汽车销售服务有限公司',',106,134,319,'),(320,3,134,'绍兴上虞浩通商贸有限公司',',106,134,320,'),(321,3,134,'诸暨科大汽车销售服务有限公司',',106,134,321,'),(322,3,134,'杭州保捷汽车有限公司',',106,134,322,'),(323,3,134,'杭州瑞通汽车销售有限公司',',106,134,323,'),(324,3,134,'海宁海昌汽车维修装饰有限公司',',106,134,324,'),(325,3,134,'长兴宝迪汽车销售服务有限公司',',106,134,325,'),(326,3,134,'嘉兴正浩汽车销售有限公司',',106,134,326,'),(327,3,134,'嘉兴市桥银经贸有限公司',',106,134,327,'),(328,3,134,'浙江迪信汽车销售服务有限公司',',106,134,328,'),(329,3,135,'安徽中迪汽车销售服务有限公司',',106,135,329,'),(330,3,135,'安庆市鑫晨汽车贸易有限公司',',106,135,330,'),(331,3,135,'铜陵市宁瑞汽车销售有限责任公司',',106,135,331,'),(332,3,135,'黄山万迪汽车销售服务有限公司',',106,135,332,'),(333,3,135,'安徽金迪汽车销售服务有限公司',',106,135,333,'),(334,3,135,'安徽翔迪汽车销售服务有限公司',',106,135,334,'),(335,3,135,'安徽省骏迪汽车销售有限公司',',106,135,335,'),(336,3,135,'蒙城县金田汽车销售有限责任公司',',106,135,336,'),(337,3,135,'合肥新迪汽车销售服务有限公司',',106,135,337,'),(338,3,135,'阜阳海迪汽车销售服务有限公司',',106,135,338,'),(339,3,135,'蚌埠市汇通汽车销售有限公司',',106,135,339,'),(340,3,135,'滁州东和泰昌汽车销售服务有限公司',',106,135,340,'),(341,3,135,'淮北市迪安特汽车销售服务有限公司',',106,135,341,'),(342,3,135,'马鞍山市顺迪汽车销售服务有限公司',',106,135,342,'),(343,3,135,'亳州市新梦迪汽车销售有限责任公司',',106,135,343,'),(344,3,136,'义乌市迪远汽车销售服务有限公司',',106,136,344,'),(345,3,136,'金华亚通汽车销售有限公司',',106,136,345,'),(346,3,136,'永康市亚通汽车销售服务有限公司',',106,136,346,'),(347,3,136,'丽水市万迪汽车销售服务有限公司',',106,136,347,'),(348,3,136,'金华市鑫迪汽车销售有限公司',',106,136,348,'),(349,3,136,'东阳迪远汽车销售有限公司',',106,136,349,'),(350,3,136,'义乌市利邦汽车销售服务有限公司',',106,136,350,'),(351,3,136,'衢州迪远汽车销售有限公司',',106,136,351,'),(352,3,137,'镇江弘帆汽车销售服务有限公司',',106,137,352,'),(353,3,137,'江苏雨田都灵汽车销售服务有限公司',',106,137,353,'),(354,3,137,'扬州新大华汽车销售服务有限公司',',106,137,354,'),(355,3,137,'徐州金迪汽车销售服务有限公司',',106,137,355,'),(356,3,137,'徐州平迪汽车销售服务有限公司',',106,137,356,'),(357,3,137,'江苏恒佳新能源汽车销售服务有限公司',',106,137,357,'),(358,3,138,'盐城市洪兆连汽车贸易有限公司',',106,138,358,'),(359,3,138,'江苏宝华汽车实业有限公司',',106,138,359,'),(360,3,138,'泰州大亚汽车销售服务有限公司',',106,138,360,'),(361,3,138,'泰州市烔圣新能源汽车销售服务有限公司',',106,138,361,'),(362,3,138,'连云港市苍梧汽车销售有限公司',',106,138,362,'),(363,3,138,'锐豪南通汽车销售服务有限公司',',106,138,363,'),(364,3,138,'弘仁南通汽车销售服务有限公司',',106,138,364,'),(365,3,139,'宁波中腾汽车销售服务有限公司',',106,139,365,'),(366,3,139,'宁波甬迪汽车销售服务有限公司',',106,139,366,'),(367,3,139,'慈溪新慈鑫汽车销售服务有限公司',',106,139,367,'),(368,3,139,'宁波洛兹汽车销售服务有限公司',',106,139,368,'),(369,3,139,'宁波舜迪汽车销售服务有限公司',',106,139,369,'),(370,3,139,'宁波市中诚汽车销售有限公司宁海分公司',',106,139,370,'),(371,3,139,'宁波迪之杰新能源汽车销售服务有限公司',',106,139,371,'),(372,3,140,'昆山市仁合新能源汽车销售有限公司',',106,140,372,'),(373,3,140,'昆山市仁合新能源汽车销售有限公司太仓分公司',',106,140,373,'),(374,3,140,'常州长安铃木汽车销售有限公司',',106,140,374,'),(375,3,140,'常州金坛金牌汽车销售服务有限公司',',106,140,375,'),(376,3,140,'江阴市同创汽车销售有限公司',',106,140,376,'),(377,3,140,'无锡市越迪汽车销售有限公司',',106,140,377,'),(378,3,140,'苏州元生新能源汽车销售服务有限公司',',106,140,378,'),(379,3,140,'苏州市才富汽车服务有限公司',',106,140,379,'),(380,3,140,'吴江日升汽车销售服务有限公司',',106,140,380,'),(381,3,140,'张家港泰丰汽车销售服务有限公司',',106,140,381,'),(382,3,140,'张家港市全顺汽车销售服务有限公司',',106,140,382,'),(383,3,141,'台州市大禹汽车贸易有限公司',',106,141,383,'),(384,3,141,'台州恒特汽车服务有限公司',',106,141,384,'),(385,3,141,'台州市鑫迪汽车销售服务有限公司',',106,141,385,'),(386,3,141,'台州恒之迪汽车服务有限公司',',106,141,386,'),(387,3,141,'苍南华正汽车销售服务有限公司',',106,141,387,'),(388,3,141,'温州欧龙机电有限公司',',106,141,388,'),(389,3,141,'乐清市鸿胜汽车服务有限公司',',106,141,389,'),(390,3,141,'温州正迪汽车有限公司',',106,141,390,'),(391,3,141,'瑞安市铭迪汽车销售服务有限公司',',106,141,391,'),(392,3,141,'浙江中南汽车贸易有限公司',',106,141,392,'),(393,3,142,'佛山市键马汽车贸易有限公司',',107,142,393,'),(394,3,142,'佛山市安迪通汽车贸易有限公司',',107,142,394,'),(395,3,142,'佛山市顺德区东汽汽车销售服务有限公司',',107,142,395,'),(396,3,142,'肇庆安迪通汽车服务有限公司',',107,142,396,'),(397,3,142,'茂名石化汽车服务有限公司汽车销售分公司',',107,142,397,'),(398,3,142,'阳江市江城区锋得行汽车销售服务有限公司',',107,142,398,'),(399,3,142,'佛山市南海区宇翔汽车贸易有限公司',',107,142,399,'),(400,3,142,'茂名市粤迪汽车贸易有限公司',',107,142,400,'),(401,3,142,'清远市友盈汽车销售服务有限公司',',107,142,401,'),(402,3,142,'韶关市锋得行汽车销售服务有限公司',',107,142,402,'),(403,3,142,'清远锦昊城汽车销售服务有限公司',',107,142,403,'),(404,3,142,'佛山机电设备有限公司',',107,142,404,'),(405,3,143,'广东欧亚特汽车销售服务有限公司',',107,143,405,'),(406,3,143,'广州志翔汽车贸易有限公司',',107,143,406,'),(407,3,143,'广州市锦虹汽车销售服务有限公司',',107,143,407,'),(408,3,143,'广州亚美迪汽车销售有限公司',',107,143,408,'),(409,3,143,'广州东湖汽车销售服务有限公司',',107,143,409,'),(410,3,143,'广州金昊城汽车销售服务有限公司',',107,143,410,'),(411,3,143,'广州市鑫湾汽车贸易有限公司',',107,143,411,'),(412,3,143,'广州市饰和汽车有限公司',',107,143,412,'),(413,3,143,'广州宝昊城汽车销售服务有限公司',',107,143,413,'),(414,3,144,'广西康和富利汽车贸易有限公司',',107,144,414,'),(415,3,144,'南宁佳之迪汽车销售有限公司',',107,144,415,'),(416,3,144,'桂林市乐丰汽车贸易有限公司',',107,144,416,'),(417,3,144,'柳州市迪翔汽车贸易有限公司',',107,144,417,'),(418,3,144,'广西百色佳宜汽车销售有限公司',',107,144,418,'),(419,3,144,'海口翔飞汽车贸易有限公司',',107,144,419,'),(420,3,144,'海口翔迪汽车服务有限公司',',107,144,420,'),(421,3,145,'中山市三联汽车销售服务有限公司西区分公司',',107,145,421,'),(422,3,145,'珠海市银河创业汽车销售有限公司',',107,145,422,'),(423,3,145,'珠海市航鑫有限公司',',107,145,423,'),(424,3,145,'中山市富茂汽车销售有限公司',',107,145,424,'),(425,3,145,'江门市广瑞汽车贸易有限公司',',107,145,425,'),(426,3,145,'东莞市建鹏汽车销售有限公司',',107,145,426,'),(427,3,145,'东莞市兴发汽车贸易有限公司',',107,145,427,'),(428,3,145,'东莞市锋得行汽车销售服务有限公司',',107,145,428,'),(429,3,145,'东莞市周通泰汽车贸易有限公司',',107,145,429,'),(430,3,145,'东莞市和盛佳汽车销售服务有限公司',',107,145,430,'),(431,3,145,'东莞市勤力汽车贸易有限公司',',107,145,431,'),(432,3,145,'开平市新俊汽车贸易有限公司',',107,145,432,'),(433,3,145,'中山市悦禾汽车销售服务有限公司',',107,145,433,'),(434,3,146,'汕头市驰宇汽车销售服务有限公司',',107,146,434,'),(435,3,146,'惠州市越景汽车销售服务有限公司',',107,146,435,'),(436,3,146,'惠州市惠迪汽车贸易有限公司',',107,146,436,'),(437,3,146,'惠州市金环怡汽车销售有限公司',',107,146,437,'),(438,3,146,'河源市永发汽车销售有限公司',',107,146,438,'),(439,3,146,'揭阳市鹏发车业有限公司',',107,146,439,'),(440,3,146,'梅州市鸿彤汽车贸易有限公司',',107,146,440,'),(441,3,146,'潮州市建辉汽车贸易有限公司',',107,146,441,'),(442,3,146,'汕尾锦虹汽车销售服务有限公司',',107,146,442,'),(443,3,147,'九江天源汽车销售服务有限公司',',108,147,443,'),(444,3,147,'九江市众力达汽车销售服务有限公司',',108,147,444,'),(445,3,147,'江西鑫瑞汽车发展有限公司',',108,147,445,'),(446,3,147,'赣州聚缘汽车销售服务有限公司',',108,147,446,'),(447,3,147,'赣州众和汽车销售服务有限公司',',108,147,447,'),(448,3,147,'宜春年富汽车贸易有限公司',',108,147,448,'),(449,3,147,'江西省鸿运汽车有限公司',',108,147,449,'),(450,3,147,'江西千家汽车销售服务有限公司',',108,147,450,'),(451,3,147,'抚州新力汽车贸易有限公司',',108,147,451,'),(452,3,147,'吉安广合缘汽车销售服务有限公司',',108,147,452,'),(453,3,147,'萍乡市鑫荣汽车贸易有限公司',',108,147,453,'),(454,3,147,'上饶市为华汽车销售服务有限公司',',108,147,454,'),(455,3,147,'新余市金联货运工贸有限公司',',108,147,455,'),(456,3,148,'荆门市常发汽车服务有限公司月亮湖分公司',',108,148,456,'),(457,3,148,'随州市润发汽车销售服务有限公司',',108,148,457,'),(458,3,148,'武汉国瑞汽车销售服务有限公司',',108,148,458,'),(459,3,148,'湖北新星德胜汽车服务有限公司',',108,148,459,'),(460,3,148,'武汉精华龙康汽车销售服务有限公司',',108,148,460,'),(461,3,148,'湖北天门立天汽车商贸有限公司',',108,148,461,'),(462,3,148,'宜昌市华健汽车销售服务有限责任公司',',108,148,462,'),(463,3,148,'宜昌安蓝汽车销售有限公司',',108,148,463,'),(464,3,148,'湖北正旺汽车销售服务有限公司',',108,148,464,'),(465,3,148,'黄冈驰恒汽车销售服务有限公司',',108,148,465,'),(466,3,148,'恩施自治州施南汽车销售服务有限公司',',108,148,466,'),(467,3,148,'孝感市恒迪汽车销售服务有限公司',',108,148,467,'),(468,3,148,'武汉市东瑞汽车销售服务有限公司',',108,148,468,'),(469,3,148,'武汉市惠誉汽车销售服务有限公司',',108,148,469,'),(470,3,148,'十堰市凌恒工贸有限公司',',108,148,470,'),(471,3,149,'湖南岳迪汽车销售有限公司',',108,149,471,'),(472,3,149,'湖南鑫源汽车销售有限公司',',108,149,472,'),(473,3,149,'湖南恒跃通汽车贸易有限公司',',108,149,473,'),(474,3,149,'湖南星一汽车销售服务有限公司',',108,149,474,'),(475,3,149,'长沙市金旋风汽车贸易有限公司',',108,149,475,'),(476,3,149,'岳阳市广标汽车服务有限公司',',108,149,476,'),(477,3,149,'长沙市金旋风汽车贸易有限公司常德分公司',',108,149,477,'),(478,3,149,'湘潭市九迪汽车销售服务有限公司',',108,149,478,'),(479,3,149,'长沙市路骐汽车销售有限公司高新区分公司',',108,149,479,'),(480,3,150,'益阳欣天汽车销售服务有限公司',',108,150,480,'),(481,3,150,'株洲市豪骏汽车销售有限公司',',108,150,481,'),(482,3,150,'株洲市奇迹实业有限责任公司',',108,150,482,'),(483,3,150,'邵阳市好运汽车销售服务有限责任公司',',108,150,483,'),(484,3,150,'永州香河汽车贸易有限公司怀化分公司',',108,150,484,'),(485,3,150,'永州香河旺达汽车销售有限公司',',108,150,485,'),(486,3,150,'郴州市得信经贸有限责任公司',',108,150,486,'),(487,3,150,'衡阳市宝诚汽车销售服务有限公司吉首分公司',',108,150,487,'),(488,3,150,'衡阳市中意汽车服务有限公司',',108,150,488,'),(489,3,150,'郴州悦迪汽车贸易有限公司',',108,150,489,'),(490,3,150,'娄底市宝顺汽贸有限公司',',108,150,490,'),(491,3,151,'新乡市新迪汽车销售服务有限公司',',108,151,491,'),(492,3,151,'焦作市共城汽车销售服务有限公司',',108,151,492,'),(493,3,151,'安阳市华伟汽车销售服务有限公司',',108,151,493,'),(494,3,151,'焦作市乾博源物资有限责任公司济源分公司',',108,151,494,'),(495,3,151,'林州市丰宝汽贸有限公司',',108,151,495,'),(496,3,151,'河南新利天汽车销售有限公司',',108,151,496,'),(497,3,151,'鹤壁市鹤立亚飞汽车连锁销售有限公司',',108,151,497,'),(498,3,151,'河南天泽新能源汽车有限公司',',108,151,498,'),(499,3,151,'河南宇鼎缘汽车销售服务有限公司',',108,151,499,'),(500,3,151,'河南省荣光汽车贸易有限公司',',108,151,500,'),(501,3,152,'周口弘祥汽车销售服务有限公司',',108,152,501,'),(502,3,152,'南阳启成汽车销售有限公司',',108,152,502,'),(503,3,152,'南阳盛元汽车销售有限公司',',108,152,503,'),(504,3,152,'南阳德瑞汽车销售服务有限公司',',108,152,504,'),(505,3,152,'信阳昱达新能源汽车销售有限公司',',108,152,505,'),(506,3,152,'邓州永成商贸有限公司',',108,152,506,'),(507,3,152,'漯河市华润汽车销售服务有限公司',',108,152,507,'),(508,3,152,'漯河市诚达汽车销售服务有限公司',',108,152,508,'),(509,3,152,'驻马店市东方汽车贸易服务有限公司',',108,152,509,'),(510,3,152,'信阳锐达汽车销售服务有限公司',',108,152,510,'),(511,3,153,'平顶山市迪升汽车贸易服务有限公司',',108,153,511,'),(512,3,153,'洛阳宝骐汽车销售有限公司',',108,153,512,'),(513,3,153,'灵宝卓昕汽车服务有限公司',',108,153,513,'),(514,3,153,'许昌市恒力汽车销售服务有限公司',',108,153,514,'),(515,3,153,'禹州市淇虹汽车销售服务有限公司',',108,153,515,'),(516,3,153,'洛阳陆行汽车销售服务有限公司',',108,153,516,'),(517,3,153,'濮阳市利天汽车销售服务有限公司',',108,153,517,'),(518,3,153,'商丘市隆兴汽车销售有限公司',',108,153,518,'),(519,3,153,'永城市春雷汽车销售有限公司',',108,153,519,'),(520,3,153,'河南天时汽车销售服务有限公司开封分公司',',108,153,520,'),(521,3,153,'许昌维利特汽车销售服务有限公司',',108,153,521,'),(522,3,154,'北京军鹏伟业汽车销售有限公司',',109,154,522,'),(523,3,154,'北京环耀汽车服务有限公司',',109,154,523,'),(524,3,154,'北京鑫敏恒汽车销售有限公司',',109,154,524,'),(525,3,154,'北京鑫敏恒瑞鑫汽车销售有限公司',',109,154,525,'),(526,3,154,'北京福铃丰瑞汽车销售有限公司',',109,154,526,'),(527,3,154,'北京润城汽车维修有限公司',',109,154,527,'),(528,3,154,'北京天通利华汽车修理有限公司',',109,154,528,'),(529,3,154,'北京鹏天奥汽车销售有限公司',',109,154,529,'),(530,3,154,'北京市北方瑞鹏汽车服务有限公司',',109,154,530,'),(531,3,155,'天津昊泽鑫商贸有限公司',',109,155,531,'),(532,3,155,'天津市路迪恒泰汽车销售有限公司',',109,155,532,'),(533,3,155,'天津市津维瑞通汽车销售有限公司',',109,155,533,'),(534,3,155,'天津环耀汽车销售服务有限公司',',109,155,534,'),(535,3,155,'天津市聚益通汽车销售服务有限公司',',109,155,535,'),(536,3,155,'天津市九州紫寰汽车销售服务有限公司',',109,155,536,'),(537,3,155,'天津市盛世开元汽车销售有限公司',',109,155,537,'),(538,3,156,'上海联通汽车销售有限公司',',110,156,538,'),(539,3,156,'上海众深汽车销售服务有限公司',',110,156,539,'),(540,3,156,'上海润迪汽车销售服务有限公司',',110,156,540,'),(541,3,156,'上海华帆旗申汽车销售有限公司',',110,156,541,'),(542,3,156,'上海联通嘉能新能源汽车销售服务有限公司',',110,156,542,'),(543,3,156,'上海联通宝亭汽车销售有限公司',',110,156,543,'),(544,3,157,'上海富林汽车销售服务有限公司',',110,157,544,'),(545,3,157,'上海汇羿汽车销售服务有限公司',',110,157,545,'),(546,3,157,'上海君和汽车销售服务有限公司',',110,157,546,'),(547,3,157,'上海彤新汽车租赁服务有限公司',',110,157,547,'),(548,3,157,'上海兴迪新能源汽车销售服务有限公司',',110,157,548,'),(549,3,157,'上海利港环态新能源汽车销售有限公司',',110,157,549,'),(550,3,158,'上海毅欣汽车销售有限公司',',110,158,550,'),(551,3,158,'上海华裕汽车修理有限公司',',110,158,551,'),(552,3,158,'上海弘仁宝升汽车销售服务有限公司',',110,158,552,'),(553,3,158,'上海乐迪汽车销售服务有限公司',',110,158,553,'),(554,3,158,'上海弘仁锐豪汽车销售服务有限公司',',110,158,554,'),(555,3,159,'深圳市东盛汽车销售服务有限公司',',111,159,555,'),(556,3,159,'深圳金环怡投资有限公司',',111,159,556,'),(557,3,160,'深圳市三维都灵汽车销售服务有限公司',',111,160,557,'),(558,3,160,'深圳市粤迪汽车贸易有限公司南山分公司',',111,160,558,'),(559,3,160,'深圳市盛世开元汽车销售有限公司福田城市展厅分公司',',111,160,559,'),(560,3,161,'深圳市湛宝实业发展有限公司',',111,161,560,'),(561,3,161,'深圳市泽然浩商贸有限公司',',111,161,561,'),(562,3,162,'深圳市龙南汽车贸易有限公司',',111,162,562,'),(563,3,162,'深圳市恒泰昌汽车销售服务有限公司',',111,162,563,'),(564,3,162,'深圳浩迪汽车销售服务有限公司',',111,162,564,'),(565,3,163,'榆林市嘉华汽车销售有限公司',',112,163,565,'),(566,3,163,'西安奥通汽车销售服务有限公司',',112,163,566,'),(567,3,163,'西安永通汽车销售服务有限公司',',112,163,567,'),(568,3,163,'西安新益通汽车贸易有限公司',',112,163,568,'),(569,3,163,'宝鸡大丰汽车有限公司',',112,163,569,'),(570,3,163,'陕西安康高新德宝汽车销售有限公司',',112,163,570,'),(571,3,163,'汉中汉唐进口汽车维修有限公司',',112,163,571,'),(572,3,163,'西安市乾元新景汽车销售有限公司',',112,163,572,'),(573,3,164,'酒泉新运通汽车出租有限公司销售分公司',',112,164,573,'),(574,3,164,'天水银通汽车贸易有限责任公司',',112,164,574,'),(575,3,164,'甘肃泓通汽车服务有限公司',',112,164,575,'),(576,3,164,'甘肃永宁汽车销售服务有限公司',',112,164,576,'),(577,3,164,'平凉市时代恒星汽贸有限责任公司',',112,164,577,'),(578,3,164,'武威市广利汽车贸易有限公司',',112,164,578,'),(579,3,164,'庆阳陇迪汽车销售有限公司',',112,164,579,'),(580,3,164,'宁夏银迪汽车销售有限公司',',112,164,580,'),(581,3,164,'宁夏吴忠市宁北鑫迪汽车销售有限公司',',112,164,581,'),(582,3,164,'西宁金岛晟盈汽车销售有限公司',',112,164,582,'),(583,3,164,'青海亚通汽车销售服务有限公司',',112,164,583,'),(584,3,165,'巴州宝迪汽车销售有限公司',',112,165,584,'),(585,3,165,'新疆新翔升汽车贸易有限公司',',112,165,585,'),(586,3,165,'新疆新大方成贸易有限公司',',112,165,586,'),(587,3,165,'克拉玛依市联众商贸有限责任公司',',112,165,587,'),(588,3,165,'阿克苏弘宇车业有限责任公司',',112,165,588,'),(589,3,165,'北屯福瑞祥汽车销售服务有限责任公司',',112,165,589,'),(590,3,165,'伊犁金昌商贸有限责任公司',',112,165,590,'),(591,3,165,'喀什市通工实业有限公司',',112,165,591,'),(592,3,166,'陕西梦迪汽车销售服务有限公司',',112,166,592,'),(593,3,166,'陕西利德汽车销售服务有限公司',',112,166,593,'),(594,3,166,'陕西信天游汽车服务有限公司',',112,166,594,'),(595,3,166,'陕西景泰汽车销售服务有限公司',',112,166,595,'),(596,3,166,'陕西意拓汽车销售有限公司',',112,166,596,'),(597,3,166,'延安意拓汽车销售服务有限公司',',112,166,597,'),(598,3,166,'渭南新威汽车销售服务有限公司',',112,166,598,'),(599,3,167,'成都新港汽车维修有限责任公司',',113,167,599,'),(600,3,167,'四川长征飞越汽车销售服务有限公司',',113,167,600,'),(601,3,167,'成都蓝海汽车销售服务有限公司',',113,167,601,'),(602,3,167,'成都上典汽车贸易有限公司',',113,167,602,'),(603,3,167,'成都上典西区汽车销售有限公司',',113,167,603,'),(604,3,168,'巴中市成强汽车贸易有限公司',',113,168,604,'),(605,3,168,'广元市万运达汽车销售服务有限公司',',113,168,605,'),(606,3,168,'南充市锦垣汽车有限公司',',113,168,606,'),(607,3,168,'南充博宇车业有限公司',',113,168,607,'),(608,3,168,'四川国华强劲汽车销售服务有限公司',',113,168,608,'),(609,3,168,'绵阳申龙汽车贸易有限公司',',113,168,609,'),(610,3,168,'遂宁恒思汽车销售有限公司',',113,168,610,'),(611,3,168,'资阳市上典三和汽车销售服务有限公司',',113,168,611,'),(612,3,168,'中国第二重型机械集团德阳万路运业有限公司',',113,168,612,'),(613,3,168,'德阳富马汽车销售服务有限公司',',113,168,613,'),(614,3,168,'广安市锐恒汽车贸易有限公司',',113,168,614,'),(615,3,168,'达州市汇龙车业有限公司',',113,168,615,'),(616,3,168,'西藏自治区(西农)亚飞汽车连锁店',',113,168,616,'),(617,3,169,'泸州凯联汽车贸易有限公司',',113,169,617,'),(618,3,169,'自贡树德汽车服务有限公司',',113,169,618,'),(619,3,169,'泸州忠山汽车销售有限责任公司',',113,169,619,'),(620,3,169,'攀枝花市祥瑞龙迪商贸有限公司',',113,169,620,'),(621,3,169,'凉山州天宇商贸有限责任公司',',113,169,621,'),(622,3,169,'四川内江川豫汽车销售服务有限公司',',113,169,622,'),(623,3,169,'宜宾骏辉汽车销售服务有限公司',',113,169,623,'),(624,3,169,'四川宏光汽车销售有限公司',',113,169,624,'),(625,3,169,'眉山俊华汽车销售服务有限公司',',113,169,625,'),(626,3,169,'绵竹市金华汽车经营有限公司乐山分公司',',113,169,626,'),(627,3,169,'雅安市美雅汽车销售服务有限公司',',113,169,627,'),(628,3,170,'贵州省六盘水市钟祥汽贸有限责任公司',',113,170,628,'),(629,3,170,'贵州航天实业有限公司',',113,170,629,'),(630,3,170,'毕节三瑞汽车销售服务有限公司',',113,170,630,'),(631,3,170,'贵州长峰汽车销售服务有限公司',',113,170,631,'),(632,3,170,'贵州福利汽车销售服务有限公司',',113,170,632,'),(633,3,170,'贵州省凯里中惠贸易有限公司',',113,170,633,'),(634,3,170,'贵州乾骏汽车销售服务有限公司',',113,170,634,'),(635,3,170,'遵义一木贸易有限责任公司',',113,170,635,'),(636,3,170,'贵阳京润通汽车销售有限公司',',113,170,636,'),(637,3,171,'云南曲靖博奥经贸有限公司',',113,171,637,'),(638,3,171,'楚雄宏熙交通运输有限公司',',113,171,638,'),(639,3,171,'大理鹏迪汽车销售服务有限公司',',113,171,639,'),(640,3,171,'大理盛迪汽车销售服务有限公司',',113,171,640,'),(641,3,171,'云南曲靖交通集团精工达汽车技贸有限公司',',113,171,641,'),(642,3,171,'云南曲靖交通集团精工达汽车技贸有限公司轿车销售分公司',',113,171,642,'),(643,3,171,'玉溪市高新区永盛新能源汽车销售有限责任公司',',113,171,643,'),(644,3,171,'丽江市古城区鹏迪汽车销售有限公司',',113,171,644,'),(645,3,171,'保山众杰汽车销售服务有限公司',',113,171,645,'),(646,3,171,'红河恒迪汽车销售服务有限公司',',113,171,646,'),(647,3,171,'云南谊和汽车经贸有限公司',',113,171,647,'),(648,3,171,'云南光华汽车销售服务有限公司',',113,171,648,'),(649,3,171,'云南迪坤汽车销售有限公司',',113,171,649,'),(650,3,171,'文山新谊和汽车经贸有限公司',',113,171,650,'),(651,3,171,'德宏州鑫盈商贸有限公司',',113,171,651,'),(652,3,172,'重庆市沪渝汽车修理厂',',113,172,652,'),(653,3,172,'重庆成空亚飞汽车销售服务有限公司',',113,172,653,'),(654,3,172,'重庆市宝骏汽车销售有限公司',',113,172,654,'),(655,3,172,'重庆瀚为汽车销售服务有限公司',',113,172,655,'),(656,3,172,'重庆隆骏汽车销售服务有限公司',',113,172,656,'),(657,3,172,'重庆隆源汽车贸易有限公司',',113,172,657,'),(658,2,112,'西北大区',',112,658,'),(659,3,658,'西安嘉丽实业有限公司',',112,658,659,'),(660,2,106,'华东大区',',106,660,'),(661,3,660,'安徽金丰汽车销售服务有限公司',',106,660,661,'),(662,2,108,'华南大区',',108,662,'),(663,3,662,'湖南岳迪汽车销售有限公司',',108,662,663,'),(664,2,113,'川渝鄂大区',',113,664,'),(665,3,664,'南充博宇车业有限公司',',113,664,665,'),(666,3,664,'泸州忠山汽车销售有限责任公司',',113,664,666,'),(667,3,658,'榆林市晶鑫汽贸有限责任公司',',112,658,667,'),(668,2,108,'华中大区',',108,668,'),(669,3,668,'赣州众和汽车销售服务有限公司',',108,668,669,'),(670,3,668,'宜春年富汽车贸易有限公司',',108,668,670,'),(671,3,660,'安徽畅通汽车销售有限公司',',106,660,671,'),(672,3,668,'驻马店市东方汽车贸易服务有限公司',',108,668,672,'),(673,1,0,'N',',673,'),(674,2,673,'福州大区',',673,674,');
/*!40000 ALTER TABLE `sys_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '角色名',
  `desc` varchar(100) DEFAULT NULL COMMENT '描述',
  `fields` text COMMENT '可见字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (2,'管理员','管理系统','org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,jtrs,jycd,dksqhm,hylx,hyzlx,zylx,hkszd,ysr,jkr_sf,jkr_cs,hkdz,dzlx,fclx,jznx,gsmc,qyxz,zw,gsdh,dzy,gznx,zcjg,csys,cpz,cplx,dkqs,xsjg,sfkbl,sfkje,dkje,khll,lxze,gcyhke,khsqbm,jsr_xm,jsr_lxdh,xqah,yyxhsl,dygxhnljd,degxhnljd,bz,yqr'),(3,'普通用户','普通用户','org_yxb,org_dq,org_jxs,city_sf,city_cs,sqr_xm,sqr_zjlx,sqr_zjhm,sqr_dhhm,sjgcr_xm,sjgcr_zjhm,sjgcr_dhhm,gsqrgx,hkzt,xb,nl,hyzk,dqzt,htbh,htjhrq,sqtjrq,yf,hzjjrq,zc,cxi,cxing,cphm,vin,gcrq,jcrq,fkfs,jszbh,jzdqr,dksqhm,jkr_sf,jkr_cs,csys,cpz,cplx,dkqs,khsqbm,jsr_xm,jsr_lxdh');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (554,3,1),(555,3,9),(556,3,6),(557,3,10),(558,3,43),(559,3,8),(560,3,14),(561,3,41),(562,3,42),(569,2,1),(570,2,9),(571,2,6),(572,2,10),(573,2,43),(574,2,8),(575,2,14),(576,2,41),(577,2,42),(578,2,2),(579,2,3),(580,2,39),(581,2,31),(582,2,32),(583,2,33),(584,2,4),(585,2,37),(586,2,25),(587,2,26),(588,2,27),(589,2,5),(590,2,35),(591,2,19),(592,2,20),(593,2,21),(594,2,7),(595,2,36),(596,2,22),(597,2,23),(598,2,24),(599,2,11),(600,2,34),(601,2,15),(602,2,16),(603,2,17),(604,2,12),(605,2,38),(606,2,28),(607,2,29),(608,2,30),(609,2,13),(610,2,40),(611,2,18);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tree`
--

DROP TABLE IF EXISTS `sys_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL COMMENT '类型',
  `level` int(11) NOT NULL COMMENT '层次',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `code` varchar(500) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `type_pid` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tree`
--

LOCK TABLES `sys_tree` WRITE;
/*!40000 ALTER TABLE `sys_tree` DISABLE KEYS */;
INSERT INTO `sys_tree` VALUES (11,'HYLX',1,0,'采矿业',',11,'),(12,'HYLX',1,0,'制造业',',12,'),(13,'HYLX',1,0,'建筑业',',13,'),(14,'HYLX',1,0,'金融业',',14,'),(15,'HYLX',1,0,'房地产业',',15,'),(16,'HYLX',1,0,'教育',',16,'),(17,'HYLX',1,0,'国际组织',',17,'),(18,'HYLX',1,0,'批发和零售业',',18,'),(19,'HYLX',1,0,'住宿和餐饮业',',19,'),(20,'HYLX',1,0,'卫生和社会工作',',20,'),(21,'HYLX',1,0,'租赁和商务服务业',',21,'),(22,'HYLX',1,0,'交通运输、仓储和邮政业',',22,'),(23,'HYLX',1,0,'电力、热力、燃气及水生产和供应业',',23,'),(24,'HYLX',1,0,'居民服务、修理和其他服务业',',24,'),(25,'HYLX',1,0,'水利、环境和公共设施管理业',',25,'),(26,'HYLX',1,0,'信息传输、软件和信息技术服务业',',26,'),(27,'HYLX',1,0,'科学研究和技术服务业',',27,'),(28,'HYLX',1,0,'农、林、牧、渔业',',28,'),(29,'HYLX',1,0,'公共管理、社会保障和社会组织',',29,'),(30,'HYLX',1,0,'文化、体育和娱乐业',',30,'),(31,'HYLX',1,0,'其他',',31,'),(32,'HYLX',2,31,'其他',',31,32,'),(33,'HYLX',2,15,'房地产开发经营',',15,33,'),(34,'HYLX',2,13,'房屋和土木工程建筑业',',13,34,'),(35,'HYLX',2,18,'批发业 Wholesale Trade',',18,35,'),(36,'HYLX',2,24,'其他服务业 Other Services',',24,36,'),(111,'HYLX',2,11,'煤炭开采和洗选业',',11,111,'),(114,'HYLX',2,12,'家具制造业',',12,114,'),(116,'HYLX',2,12,'工艺品及其他制造业',',12,116,'),(117,'HYLX',2,22,'道路运输业',',22,117,'),(119,'HYLX',2,18,'零售业 Retail Trade',',18,119,'),(122,'HYLX',2,14,'银行业',',14,122,'),(123,'HYLX',2,14,'其他金融活动',',14,123,'),(124,'HYLX',2,12,'仪器仪表及文化、办公用机械制造业',',12,124,'),(150,'CITY',1,0,'河北省',',150,'),(151,'CITY',2,150,'石家庄',',150,151,'),(152,'CITY',2,150,'保定市',',150,152,'),(153,'CITY',2,150,'秦皇岛',',150,153,'),(154,'CITY',2,150,'唐山市',',150,154,'),(155,'CITY',2,150,'邯郸市',',150,155,'),(156,'CITY',2,150,'邢台市',',150,156,'),(157,'CITY',2,150,'沧州市',',150,157,'),(158,'CITY',2,150,'承德市',',150,158,'),(159,'CITY',2,150,'廊坊市',',150,159,'),(160,'CITY',2,150,'衡水市',',150,160,'),(161,'CITY',2,150,'张家口',',150,161,'),(162,'CITY',1,0,'山西省',',162,'),(163,'CITY',2,162,'太原市',',162,163,'),(164,'CITY',2,162,'大同市',',162,164,'),(165,'CITY',2,162,'阳泉市',',162,165,'),(166,'CITY',2,162,'长治市',',162,166,'),(167,'CITY',2,162,'临汾市',',162,167,'),(168,'CITY',2,162,'晋中市',',162,168,'),(169,'CITY',2,162,'运城市',',162,169,'),(170,'CITY',2,162,'晋城市',',162,170,'),(171,'CITY',2,162,'忻州市',',162,171,'),(172,'CITY',2,162,'朔州市',',162,172,'),(173,'CITY',2,162,'吕梁市',',162,173,'),(174,'CITY',1,0,'内蒙古',',174,'),(175,'CITY',2,174,'呼和浩特',',174,175,'),(176,'CITY',2,174,'呼伦贝尔',',174,176,'),(177,'CITY',2,174,'包头市',',174,177,'),(178,'CITY',2,174,'赤峰市',',174,178,'),(179,'CITY',2,174,'乌海市',',174,179,'),(180,'CITY',2,174,'通辽市',',174,180,'),(181,'CITY',2,174,'鄂尔多斯',',174,181,'),(182,'CITY',2,174,'乌兰察布',',174,182,'),(183,'CITY',2,174,'巴彦淖尔',',174,183,'),(184,'CITY',1,0,'辽宁省',',184,'),(185,'CITY',2,184,'盘锦市',',184,185,'),(186,'CITY',2,184,'鞍山市',',184,186,'),(187,'CITY',2,184,'抚顺市',',184,187,'),(188,'CITY',2,184,'本溪市',',184,188,'),(189,'CITY',2,184,'铁岭市',',184,189,'),(190,'CITY',2,184,'锦州市',',184,190,'),(191,'CITY',2,184,'丹东市',',184,191,'),(192,'CITY',2,184,'辽阳市',',184,192,'),(193,'CITY',2,184,'葫芦岛',',184,193,'),(194,'CITY',2,184,'阜新市',',184,194,'),(195,'CITY',2,184,'朝阳市',',184,195,'),(196,'CITY',2,184,'营口市',',184,196,'),(197,'CITY',1,0,'吉林省',',197,'),(198,'CITY',2,197,'吉林市',',197,198,'),(199,'CITY',2,197,'通化市',',197,199,'),(200,'CITY',2,197,'白城市',',197,200,'),(201,'CITY',2,197,'四平市',',197,201,'),(202,'CITY',2,197,'辽源市',',197,202,'),(203,'CITY',2,197,'松原市',',197,203,'),(204,'CITY',2,197,'白山市',',197,204,'),(205,'CITY',1,0,'黑龙江省',',205,'),(206,'CITY',2,205,'伊春市',',205,206,'),(207,'CITY',2,205,'牡丹江',',205,207,'),(208,'CITY',2,205,'大庆市',',205,208,'),(209,'CITY',2,205,'鸡西市',',205,209,'),(210,'CITY',2,205,'鹤岗市',',205,210,'),(211,'CITY',2,205,'绥化市',',205,211,'),(212,'CITY',2,205,'双鸭山',',205,212,'),(213,'CITY',2,205,'七台河',',205,213,'),(214,'CITY',2,205,'佳木斯',',205,214,'),(215,'CITY',2,205,'黑河市',',205,215,'),(216,'CITY',2,205,'齐齐哈尔市',',205,216,'),(217,'CITY',1,0,'江苏省',',217,'),(218,'CITY',2,217,'无锡市',',217,218,'),(219,'CITY',2,217,'常州市',',217,219,'),(220,'CITY',2,217,'扬州市',',217,220,'),(221,'CITY',2,217,'徐州市',',217,221,'),(222,'CITY',2,217,'苏州市',',217,222,'),(223,'CITY',2,217,'连云港',',217,223,'),(224,'CITY',2,217,'盐城市',',217,224,'),(225,'CITY',2,217,'淮安市',',217,225,'),(226,'CITY',2,217,'宿迁市',',217,226,'),(227,'CITY',2,217,'镇江市',',217,227,'),(228,'CITY',2,217,'南通市',',217,228,'),(229,'CITY',2,217,'泰州市',',217,229,'),(230,'CITY',1,0,'浙江省',',230,'),(231,'CITY',2,230,'绍兴市',',230,231,'),(232,'CITY',2,230,'温州市',',230,232,'),(233,'CITY',2,230,'湖州市',',230,233,'),(234,'CITY',2,230,'嘉兴市',',230,234,'),(235,'CITY',2,230,'台州市',',230,235,'),(236,'CITY',2,230,'金华市',',230,236,'),(237,'CITY',2,230,'舟山市',',230,237,'),(238,'CITY',2,230,'衢州市',',230,238,'),(239,'CITY',2,230,'丽水市',',230,239,'),(240,'CITY',2,230,'安徽省',',230,240,'),(241,'CITY',1,0,'福建省',',241,'),(242,'CITY',2,241,'福州市',',241,242,'),(243,'CITY',2,241,'泉州市',',241,243,'),(244,'CITY',2,241,'漳州市',',241,244,'),(245,'CITY',2,241,'南平市',',241,245,'),(246,'CITY',2,241,'三明市',',241,246,'),(247,'CITY',2,241,'龙岩市',',241,247,'),(248,'CITY',2,241,'莆田市',',241,248,'),(249,'CITY',2,241,'宁德市',',241,249,'),(250,'CITY',1,0,'江西省',',250,'),(251,'CITY',2,250,'南昌市',',250,251,'),(252,'CITY',2,250,'赣州市',',250,252,'),(253,'CITY',2,250,'景德镇',',250,253,'),(254,'CITY',2,250,'九江市',',250,254,'),(255,'CITY',2,250,'萍乡市',',250,255,'),(256,'CITY',2,250,'新余市',',250,256,'),(257,'CITY',2,250,'抚州市',',250,257,'),(258,'CITY',2,250,'宜春市',',250,258,'),(259,'CITY',2,250,'上饶市',',250,259,'),(260,'CITY',2,250,'鹰潭市',',250,260,'),(261,'CITY',2,250,'吉安市',',250,261,'),(262,'CITY',1,0,'山东省',',262,'),(263,'CITY',2,262,'潍坊市',',262,263,'),(264,'CITY',2,262,'淄博市',',262,264,'),(265,'CITY',2,262,'威海市',',262,265,'),(266,'CITY',2,262,'枣庄市',',262,266,'),(267,'CITY',2,262,'泰安市',',262,267,'),(268,'CITY',2,262,'临沂市',',262,268,'),(269,'CITY',2,262,'东营市',',262,269,'),(270,'CITY',2,262,'济宁市',',262,270,'),(271,'CITY',2,262,'烟台市',',262,271,'),(272,'CITY',2,262,'菏泽市',',262,272,'),(273,'CITY',2,262,'日照市',',262,273,'),(274,'CITY',2,262,'德州市',',262,274,'),(275,'CITY',2,262,'聊城市',',262,275,'),(276,'CITY',2,262,'滨州市',',262,276,'),(277,'CITY',2,262,'莱芜市',',262,277,'),(278,'CITY',1,0,'河南省',',278,'),(279,'CITY',2,278,'郑州市',',278,279,'),(280,'CITY',2,278,'洛阳市',',278,280,'),(281,'CITY',2,278,'焦作市',',278,281,'),(282,'CITY',2,278,'商丘市',',278,282,'),(283,'CITY',2,278,'信阳市',',278,283,'),(284,'CITY',2,278,'新乡市',',278,284,'),(285,'CITY',2,278,'安阳市',',278,285,'),(286,'CITY',2,278,'开封市',',278,286,'),(287,'CITY',2,278,'漯河市',',278,287,'),(288,'CITY',2,278,'南阳市',',278,288,'),(289,'CITY',2,278,'鹤壁市',',278,289,'),(290,'CITY',2,278,'平顶山',',278,290,'),(291,'CITY',2,278,'濮阳市',',278,291,'),(292,'CITY',2,278,'许昌市',',278,292,'),(293,'CITY',2,278,'周口市',',278,293,'),(294,'CITY',2,278,'三门峡',',278,294,'),(295,'CITY',2,278,'驻马店',',278,295,'),(296,'CITY',1,0,'湖北省',',296,'),(297,'CITY',2,296,'荆门市',',296,297,'),(298,'CITY',2,296,'咸宁市',',296,298,'),(299,'CITY',2,296,'襄樊市',',296,299,'),(300,'CITY',2,296,'荆州市',',296,300,'),(301,'CITY',2,296,'黄石市',',296,301,'),(302,'CITY',2,296,'宜昌市',',296,302,'),(303,'CITY',2,296,'随州市',',296,303,'),(304,'CITY',2,296,'鄂州市',',296,304,'),(305,'CITY',2,296,'孝感市',',296,305,'),(306,'CITY',2,296,'黄冈市',',296,306,'),(307,'CITY',2,296,'十堰市',',296,307,'),(308,'CITY',1,0,'湖南省',',308,'),(309,'CITY',2,308,'长沙市',',308,309,'),(310,'CITY',2,308,'郴州市',',308,310,'),(311,'CITY',2,308,'娄底市',',308,311,'),(312,'CITY',2,308,'衡阳市',',308,312,'),(313,'CITY',2,308,'株洲市',',308,313,'),(314,'CITY',2,308,'湘潭市',',308,314,'),(315,'CITY',2,308,'岳阳市',',308,315,'),(316,'CITY',2,308,'常德市',',308,316,'),(317,'CITY',2,308,'邵阳市',',308,317,'),(318,'CITY',2,308,'益阳市',',308,318,'),(319,'CITY',2,308,'永州市',',308,319,'),(320,'CITY',2,308,'张家界',',308,320,'),(321,'CITY',2,308,'怀化市',',308,321,'),(322,'CITY',1,0,'广东省',',322,'),(323,'CITY',2,322,'江门市',',322,323,'),(324,'CITY',2,322,'佛山市',',322,324,'),(325,'CITY',2,322,'汕头市',',322,325,'),(326,'CITY',2,322,'湛江市',',322,326,'),(327,'CITY',2,322,'韶关市',',322,327,'),(328,'CITY',2,322,'中山市',',322,328,'),(329,'CITY',2,322,'珠海市',',322,329,'),(330,'CITY',2,322,'茂名市',',322,330,'),(331,'CITY',2,322,'肇庆市',',322,331,'),(332,'CITY',2,322,'阳江市',',322,332,'),(333,'CITY',2,322,'惠州市',',322,333,'),(334,'CITY',2,322,'潮州市',',322,334,'),(335,'CITY',2,322,'揭阳市',',322,335,'),(336,'CITY',2,322,'清远市',',322,336,'),(337,'CITY',2,322,'河源市',',322,337,'),(338,'CITY',2,322,'东莞市',',322,338,'),(339,'CITY',2,322,'汕尾市',',322,339,'),(340,'CITY',2,322,'云浮市',',322,340,'),(341,'CITY',1,0,'广西省',',341,'),(342,'CITY',2,341,'南宁市',',341,342,'),(343,'CITY',2,341,'贺州市',',341,343,'),(344,'CITY',2,341,'柳州市',',341,344,'),(345,'CITY',2,341,'桂林市',',341,345,'),(346,'CITY',2,341,'梧州市',',341,346,'),(347,'CITY',2,341,'北海市',',341,347,'),(348,'CITY',2,341,'玉林市',',341,348,'),(349,'CITY',2,341,'钦州市',',341,349,'),(350,'CITY',2,341,'百色市',',341,350,'),(351,'CITY',2,341,'防城港',',341,351,'),(352,'CITY',2,341,'贵港市',',341,352,'),(353,'CITY',2,341,'河池市',',341,353,'),(354,'CITY',2,341,'崇左市',',341,354,'),(355,'CITY',2,341,'来宾市',',341,355,'),(356,'CITY',1,0,'海南省',',356,'),(357,'CITY',2,356,'海口市',',356,357,'),(358,'CITY',2,356,'三亚市',',356,358,'),(359,'CITY',1,0,'四川省',',359,'),(360,'CITY',2,359,'乐山市',',359,360,'),(361,'CITY',2,359,'雅安市',',359,361,'),(362,'CITY',2,359,'广安市',',359,362,'),(363,'CITY',2,359,'南充市',',359,363,'),(364,'CITY',2,359,'自贡市',',359,364,'),(365,'CITY',2,359,'泸州市',',359,365,'),(366,'CITY',2,359,'内江市',',359,366,'),(367,'CITY',2,359,'宜宾市',',359,367,'),(368,'CITY',2,359,'广元市',',359,368,'),(369,'CITY',2,359,'达州市',',359,369,'),(370,'CITY',2,359,'资阳市',',359,370,'),(371,'CITY',2,359,'绵阳市',',359,371,'),(372,'CITY',2,359,'眉山市',',359,372,'),(373,'CITY',2,359,'巴中市',',359,373,'),(374,'CITY',2,359,'攀枝花',',359,374,'),(375,'CITY',2,359,'遂宁市',',359,375,'),(376,'CITY',2,359,'德阳市',',359,376,'),(377,'CITY',1,0,'贵州省',',377,'),(378,'CITY',2,377,'贵阳市',',377,378,'),(379,'CITY',2,377,'安顺市',',377,379,'),(380,'CITY',2,377,'遵义市',',377,380,'),(381,'CITY',2,377,'六盘水',',377,381,'),(382,'CITY',1,0,'云南省',',382,'),(383,'CITY',2,382,'昆明市',',382,383,'),(384,'CITY',2,382,'玉溪市',',382,384,'),(385,'CITY',2,382,'大理市',',382,385,'),(386,'CITY',2,382,'曲靖市',',382,386,'),(387,'CITY',2,382,'昭通市',',382,387,'),(388,'CITY',2,382,'保山市',',382,388,'),(389,'CITY',2,382,'丽江市',',382,389,'),(390,'CITY',2,382,'临沧市',',382,390,'),(391,'CITY',1,0,'西藏',',391,'),(392,'CITY',2,391,'拉萨市',',391,392,'),(393,'CITY',2,391,'阿里',',391,393,'),(394,'CITY',1,0,'陕西省',',394,'),(395,'CITY',2,394,'咸阳市',',394,395,'),(396,'CITY',2,394,'榆林市',',394,396,'),(397,'CITY',2,394,'宝鸡市',',394,397,'),(398,'CITY',2,394,'铜川市',',394,398,'),(399,'CITY',2,394,'渭南市',',394,399,'),(400,'CITY',2,394,'汉中市',',394,400,'),(401,'CITY',2,394,'安康市',',394,401,'),(402,'CITY',2,394,'商洛市',',394,402,'),(403,'CITY',2,394,'延安市',',394,403,'),(404,'CITY',1,0,'甘肃省',',404,'),(405,'CITY',2,404,'兰州市',',404,405,'),(406,'CITY',2,404,'白银市',',404,406,'),(407,'CITY',2,404,'武威市',',404,407,'),(408,'CITY',2,404,'金昌市',',404,408,'),(409,'CITY',2,404,'平凉市',',404,409,'),(410,'CITY',2,404,'张掖市',',404,410,'),(411,'CITY',2,404,'嘉峪关',',404,411,'),(412,'CITY',2,404,'酒泉市',',404,412,'),(413,'CITY',2,404,'庆阳市',',404,413,'),(414,'CITY',2,404,'定西市',',404,414,'),(415,'CITY',2,404,'陇南市',',404,415,'),(416,'CITY',2,404,'天水市',',404,416,'),(417,'CITY',1,0,'青海省',',417,'),(418,'CITY',2,417,'西宁市',',417,418,'),(419,'CITY',1,0,'宁夏',',419,'),(420,'CITY',2,419,'银川市',',419,420,'),(421,'CITY',2,419,'固原市',',419,421,'),(422,'CITY',2,419,'青铜峡市',',419,422,'),(423,'CITY',2,419,'石嘴山市',',419,423,'),(424,'CITY',2,419,'中卫市',',419,424,'),(425,'CITY',1,0,'新疆',',425,'),(426,'CITY',2,425,'乌鲁木齐',',425,426,'),(427,'CITY',2,425,'克拉玛依市',',425,427,'),(428,'CITY',1,0,'香港特别行政区',',428,'),(429,'CITY',2,428,'香港岛',',428,429,'),(430,'CITY',2,428,'九龙',',428,430,'),(431,'CITY',2,428,'新界',',428,431,'),(432,'CITY',2,428,'新界西',',428,432,'),(433,'CITY',1,0,'澳门特别行政区',',433,'),(434,'CITY',2,433,'澳门半岛',',433,434,'),(435,'CITY',2,433,'澳门离岛',',433,435,'),(436,'CITY',1,0,'台湾',',436,'),(437,'CITY',2,436,'基隆市',',436,437,'),(438,'CITY',2,436,'台中市',',436,438,'),(439,'CITY',2,436,'新竹市',',436,439,'),(440,'CITY',2,436,'台南市',',436,440,'),(441,'CITY',2,436,'嘉义市',',436,441,'),(442,'CITY',2,436,'台北县',',436,442,'),(443,'CITY',2,436,'台东县',',436,443,'),(444,'CITY',2,436,'澎湖县',',436,444,'),(445,'CITY',2,436,'花莲县',',436,445,'),(446,'CITY',2,436,'屏东县',',436,446,'),(447,'CITY',2,436,'高雄县',',436,447,'),(448,'CITY',2,436,'台南县',',436,448,'),(449,'CITY',2,436,'嘉义县',',436,449,'),(450,'CITY',2,436,'云林县',',436,450,'),(451,'CITY',2,436,'南投县',',436,451,'),(452,'CITY',2,436,'彰化县',',436,452,'),(453,'CITY',2,436,'台中县',',436,453,'),(454,'CITY',2,436,'苗栗县',',436,454,'),(455,'CITY',2,436,'桃园县',',436,455,'),(456,'CITY',2,436,'宜兰县',',436,456,'),(457,'CITY',2,436,'新竹县',',436,457,'),(458,'CITY',2,436,'台北市',',436,458,'),(459,'CITY',2,436,'高雄市',',436,459,'),(460,'CITY',2,436,'马祖县',',436,460,'),(461,'CITY',2,436,'金门县',',436,461,'),(491,'CITY',1,0,'湖南',',491,'),(492,'CITY',2,491,'长沙',',491,492,'),(493,'CITY',1,0,'陕西',',493,'),(494,'CITY',2,493,'西安',',493,494,'),(495,'CITY',1,0,'安徽',',495,'),(496,'CITY',2,495,'六安',',495,496,'),(497,'CITY',1,0,'四川',',497,'),(498,'CITY',2,497,'南充',',497,498,'),(499,'CITY',2,497,'泸州',',497,499,'),(500,'CITY',2,493,'榆林',',493,500,'),(501,'CITY',1,0,'江西',',501,'),(502,'CITY',2,501,'赣州',',501,502,'),(503,'CITY',2,501,'宜春',',501,503,'),(504,'CITY',2,495,'滁州',',495,504,'),(505,'CITY',1,0,'河南',',505,'),(506,'CITY',2,505,'驻马店',',505,506,'),(507,'CITY',1,0,'北京',',507,'),(508,'CITY',2,507,'北京',',507,508,');
/*!40000 ALTER TABLE `sys_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','f6fdffe48c908deb0f4c3bd36c032e72','管理员','','','2016-09-25 11:14:13','2016-11-14 22:42:34',0,',2,',',管理员,','104,105,106,107,108,109,110,111,112,113'),(2,'dw_jiangkunpeng','99800032b7d26893553ce81530e0f821','姜昆鹏','15899954940','jakey766@163.com','2016-09-25 11:14:40','2016-11-13 21:27:10',0,',3,',',普通用户,',',107,111,');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'byd_cm'
--

--
-- Dumping routines for database 'byd_cm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 23:15:25
