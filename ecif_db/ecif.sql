-- MySQL dump 10.13  Distrib 8.0.13, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: ecif2
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authority` (
  `pid` varchar(64) NOT NULL COMMENT '主键',
  `authority_code` varchar(64) DEFAULT NULL COMMENT '权限码',
  `name` varchar(128) DEFAULT NULL COMMENT '权限名称',
  `type` char(1) DEFAULT NULL COMMENT '权限类型',
  `resource_id` varchar(64) DEFAULT NULL COMMENT '资源id',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父id',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES ('1','system_manage','系统管理','0','1','0',NULL,NULL,NULL,NULL,NULL,NULL),('10','column_manage','开放库表字段管理','0','10','0',NULL,NULL,NULL,NULL,NULL,NULL),('11','interface_column_query','开放接口库表字段查询','0','11','10',NULL,NULL,NULL,NULL,NULL,NULL),('12','table_manage','库表管理','0','12','10',NULL,NULL,NULL,NULL,NULL,NULL),('13','sql_index_manage','SQL索引管理','0','13','10',NULL,NULL,NULL,NULL,NULL,NULL),('14','common_class_manage','公共类及方法管理','0','14','10',NULL,NULL,NULL,NULL,NULL,NULL),('2','auth_manage','权限管理','0','2','1',NULL,NULL,NULL,NULL,NULL,NULL),('3','user_manage','用户管理','0','3','1',NULL,NULL,NULL,NULL,NULL,NULL),('4','role_namage','角色管理','0','4','1',NULL,NULL,NULL,NULL,NULL,NULL),('5','menu_manage','菜单管理','0','5','1',NULL,NULL,NULL,NULL,NULL,NULL),('6','codetable','码表工具','0','6','0',NULL,NULL,NULL,NULL,NULL,NULL),('7','qaplatform','QA平台','0','7','0',NULL,NULL,NULL,NULL,NULL,NULL),('8','infos_manage','信息项管理','0','8','0',NULL,NULL,NULL,NULL,NULL,NULL),('9','dict_manage','字典管理','0','9','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_info`
--

DROP TABLE IF EXISTS `column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `column_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `TABLE_ID` int(11) DEFAULT NULL COMMENT '表ID',
  `COLUMN_NAME` varchar(32) DEFAULT NULL COMMENT '字段名称',
  `COLUMN_COMMENT` varchar(512) DEFAULT NULL COMMENT '字段注释',
  `CODETABLE_ID` int(11) DEFAULT NULL COMMENT '关联码表(也即表ID)',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_info`
--

LOCK TABLES `column_info` WRITE;
/*!40000 ALTER TABLE `column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_rel_sql`
--

DROP TABLE IF EXISTS `column_rel_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `column_rel_sql` (
  `COLLECTION_ID` int(11) NOT NULL COMMENT '业务ID',
  `COLUMN_ID` int(11) NOT NULL COMMENT '字段ID',
  `SQL_ID` int(11) NOT NULL COMMENT 'SQL_ID',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`COLLECTION_ID`,`COLUMN_ID`,`SQL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务字段SQL关联表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_rel_sql`
--

LOCK TABLES `column_rel_sql` WRITE;
/*!40000 ALTER TABLE `column_rel_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_rel_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_info`
--

DROP TABLE IF EXISTS `common_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `common_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `COMMON_NAME` varchar(128) DEFAULT NULL COMMENT '公共名称',
  `COMMON_DES` varchar(512) DEFAULT NULL COMMENT '备注说明',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公共类即方法名 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_info`
--

LOCK TABLES `common_info` WRITE;
/*!40000 ALTER TABLE `common_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dict_detail`
--

DROP TABLE IF EXISTS `dict_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dict_detail` (
  `pid` varchar(64) NOT NULL COMMENT '主键id',
  `dict_info_id` varchar(64) DEFAULT NULL COMMENT '字典信息id',
  `value` varchar(32) DEFAULT NULL COMMENT '字典详细值',
  `value_des` varchar(128) DEFAULT NULL COMMENT '字典详细值中文',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典详细表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dict_detail`
--

LOCK TABLES `dict_detail` WRITE;
/*!40000 ALTER TABLE `dict_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `dict_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dict_info`
--

DROP TABLE IF EXISTS `dict_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dict_info` (
  `pid` varchar(64) NOT NULL COMMENT '主键id',
  `name` varchar(128) DEFAULT NULL COMMENT '字典名称',
  `code` varchar(32) DEFAULT NULL COMMENT '字典code',
  `remark` varchar(512) DEFAULT NULL COMMENT 'remark',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dict_info`
--

LOCK TABLES `dict_info` WRITE;
/*!40000 ALTER TABLE `dict_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `dict_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecif_table_collection`
--

DROP TABLE IF EXISTS `ecif_table_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ecif_table_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `SOA_EN_NAME` varchar(128) DEFAULT NULL COMMENT 'SOA联机交易英文名称',
  `SOA_CN_NAM` varchar(512) DEFAULT NULL COMMENT 'SOA联机交易中文名称',
  `BUSSINESS_DES` varchar(512) DEFAULT NULL COMMENT '联机交易业务功能',
  `REL_COLUMN` varchar(3120) DEFAULT NULL COMMENT '涉及库表及字段关联column_info表',
  `REL_SQL` varchar(1024) DEFAULT NULL COMMENT 'SQL_ID信息关联sql_info表',
  `REL_COMMON` varchar(1024) DEFAULT NULL COMMENT '公共类及方法名称关联common_info表',
  `PRINCIPAL` varchar(128) DEFAULT NULL COMMENT '负责人',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ECIF库表集合表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecif_table_collection`
--

LOCK TABLES `ecif_table_collection` WRITE;
/*!40000 ALTER TABLE `ecif_table_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecif_table_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_info`
--

DROP TABLE IF EXISTS `log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_info` (
  `pid` varchar(64) NOT NULL COMMENT '主键id',
  `operator_id` varchar(64) DEFAULT NULL COMMENT '操作人',
  `module_name` varchar(128) DEFAULT NULL COMMENT '模块名称',
  `uri` varchar(1024) DEFAULT NULL COMMENT 'uri',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `remark` varchar(512) DEFAULT NULL COMMENT 'remark',
  `param_value` text COMMENT '参数值',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operator_name` varchar(128) DEFAULT NULL COMMENT '操作名称',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志记录表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_info`
--

LOCK TABLES `log_info` WRITE;
/*!40000 ALTER TABLE `log_info` DISABLE KEYS */;
INSERT INTO `log_info` VALUES ('00d5af26cb524fd883f644204251c62a',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"rx5k\"]}','2020-03-14 00:41:13',NULL),('02d8d3bcc8f740ff94e50680f0d2f588',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"fsed\"]}','2020-03-14 00:26:14',NULL),('0a987b129dff4a06be0b6cb59ec554e9','1','系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"guantong\"],\"captcha\":[\"EYHR\"]}','2020-03-14 03:31:48',NULL),('0b9721128d2a440183f51f3d494098be',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"2\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"2\"],\"name\":[\"库表管理\"],\"oriUrl\":[\"utils/tables\"],\"oriName\":[\"库表管理\"],\"pid\":[\"12\"],\"parentId\":[\"10\"],\"url\":[\"tableMange/tables\"]}','2020-03-14 01:24:14',NULL),('1a4e8dbda0b748839c1aff4decc77765',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"KYHF\"]}','2020-03-14 03:06:42',NULL),('1c23c5593bf7448ab940c8f949146dee',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"2\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"2\"],\"name\":[\"QA平台\"],\"oriUrl\":[\"qaplatform\"],\"oriName\":[\"QA平台\"],\"pid\":[\"7\"],\"parentId\":[\"0\"],\"url\":[\"platform/qaplatform\"]}','2020-03-14 01:27:04',NULL),('221c8ad8da3f42abaf9112dab42177d5',NULL,'系统管理-用户管理','/ecif/systemManage/userAuthorization','0:0:0:0:0:0:0:1','用户授权','{\"rolePids\":[\"1\"],\"pid\":[\"784c55764b5a4b03bd436a9e47f24568\"]}','2020-03-14 03:23:28',NULL),('22a7f39f60754d75adb9adbb1d89471e',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"mw4m\"]}','2020-03-14 01:05:09',NULL),('287811f61d3543b5afdf5429366f7f77',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"3R8Y\"]}','2020-03-14 00:55:35',NULL),('2c7848a98fbb4b029e9eeead1fc92bd6','1','系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试郭德纲\"],\"authorityCode\":[\"t23213sdf\"],\"oriName\":[\"测试郭德纲\"],\"description\":[\"sdfsdfsdf\"],\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"],\"oriAuthId\":[\"cewest23213\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:59:39',NULL),('2d224c4361fb42a98870cf40d69aa015',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"khr4\"]}','2020-03-14 01:19:32',NULL),('2e7aebc46f0549b2915575f44865ae01','1','系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"]}','2020-03-14 01:59:46',NULL),('3475cd6e0feb471888f0b8322507bee4','1','系统管理','/ecif/systemManage/chgnewpwd','0:0:0:0:0:0:0:1','新用户强制修改密码','{\"pid\":[\"${userInfo.pid}\"]}','2020-03-14 03:24:01',NULL),('353c253ca40a4b5da28000625db23ad4',NULL,'系统管理','/ecif/systemManage/changePassword','0:0:0:0:0:0:0:1','用户修改密码','{\"pid\":[\"1\"]}','2020-03-14 03:20:16',NULL),('397b9bd8452848419d0a005a407e3794',NULL,'系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"]}','2020-03-14 01:59:46',NULL),('3f36bb785d964b4982bb3736c5a5a8e7',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"HGXF\"]}','2020-03-14 03:23:14',NULL),('4569a2a7ecf14214927c998da03620c1','1','系统管理-角色管理','/ecif/systemManage/delRole','0:0:0:0:0:0:0:1','删除角色','{\"pid\":[\"fe7c945ae5244e36b62d3f0726323bd5\"]}','2020-03-14 02:16:37',NULL),('47d8b7636a284eedad03974e3b1a75df',NULL,'系统管理-用户管理','/ecif/systemManage/addUserInfo','0:0:0:0:0:0:0:1','新增用户','{\"resetPassword\":[\"N\"],\"departmentCode\":[\"\"],\"oriUserName\":[\"\"],\"name\":[\"小管\"],\"duty\":[\"测试\"],\"pid\":[\"\"],\"tel\":[\"13812345678\"],\"userName\":[\"guantong\"],\"status\":[\"1\"]}','2020-03-14 03:21:10',NULL),('4edea3fabfaf4ab3a76d02c63b5a7b37',NULL,'系统管理-角色管理','/ecif/systemManage/delRole','0:0:0:0:0:0:0:1','删除角色','{\"pid\":[\"fe7c945ae5244e36b62d3f0726323bd5\"]}','2020-03-14 02:16:37',NULL),('54130f12d46b4b37b3470e81962a485e',NULL,'系统管理-权限管理','/ecif/systemManage/addAuthority','0:0:0:0:0:0:0:1','新增权限','{\"resourceId\":[\"\"],\"name\":[\"测试郭德纲\"],\"authorityCode\":[\"cewest\"],\"oriName\":[\"\"],\"description\":[\"sdfsdfsdf\"],\"pid\":[\"\"],\"oriAuthId\":[\"\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:57:12',NULL),('560297c1d949472fbaf501a759f08e98',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"sfpe\"]}','2020-03-14 01:12:51',NULL),('59d3c31086684e8bb7dbddfedcb95cc5',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"ne7q\"]}','2020-03-14 01:59:25',NULL),('5b812d4be4c1498ba2522663ccda6a0f',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"3\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"3\"],\"name\":[\"SQL索引管理\"],\"oriUrl\":[\"utils/sqlInfo\"],\"oriName\":[\"SQL索引管理\"],\"pid\":[\"13\"],\"parentId\":[\"10\"],\"url\":[\"tableMange/sqlInfo\"]}','2020-03-14 01:24:21',NULL),('65e055e6eb15485a88985ad9931e9a3a',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"wxrq\"]}','2020-03-14 03:15:10',NULL),('67e7ff2844cc4cf899125ed1b2c202e0',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"1\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"2\"],\"name\":[\"QA平台\"],\"oriUrl\":[\"platform/qaplatform\"],\"oriName\":[\"QA平台\"],\"pid\":[\"7\"],\"parentId\":[\"0\"],\"url\":[\"platform/qaplatform\"]}','2020-03-14 01:28:38',NULL),('6a34db44bf3d4c37a6bf72752e1e3cfc',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"cgaa\"]}','2020-03-14 02:41:05',NULL),('6b67ea044a9f4db8bfd1009696515b90',NULL,'系统管理-权限管理','/ecif/systemManage/addAuthority','0:0:0:0:0:0:0:1','新增权限','{\"resourceId\":[\"\"],\"name\":[\"测试权限\"],\"authorityCode\":[\"sdfds\"],\"oriName\":[\"\"],\"description\":[\"qweqwe\"],\"pid\":[\"\"],\"oriAuthId\":[\"\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 02:03:47',NULL),('70b6ced55a5249d1b20ed9d103db3c0d',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"t7sw\"]}','2020-03-14 02:29:27',NULL),('74f24d85321f4c53824cb1c799f63a43',NULL,'系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试郭德纲\"],\"authorityCode\":[\"t23213sdf\"],\"oriName\":[\"测试郭德纲\"],\"description\":[\"sdfsdfsdf\"],\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"],\"oriAuthId\":[\"cewest23213\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:59:39',NULL),('78f3e03ae9614c6e888bae5533b780fa',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"nekn\"]}','2020-03-14 02:57:47',NULL),('79139be4bac644f1850d369dcab23266',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"4\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"4\"],\"name\":[\"公共类及方法管理\"],\"oriUrl\":[\"utils/commonInfo\"],\"oriName\":[\"公共类及方法管理\"],\"pid\":[\"14\"],\"parentId\":[\"10\"],\"url\":[\"tableMange/commonInfo\"]}','2020-03-14 01:24:29',NULL),('7d92e2e488634b54800d6062e8428101','1','系统管理','/ecif/systemManage/chgnewpwd','0:0:0:0:0:0:0:1','新用户强制修改密码','{\"pid\":[\"784c55764b5a4b03bd436a9e47f24568\"]}','2020-03-14 03:27:20',NULL),('7f1c448139d144eeb3e0840bfed5db9e',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"RWA3\"]}','2020-03-14 00:39:13',NULL),('84cd84e51b8841ed8400de7ce3e0006d',NULL,'系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,10,14,13,12,11,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:05:31',NULL),('852416a7e06943abb8d12bf770d36979',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"1\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"1\"],\"name\":[\"开放接口库表字段查询\"],\"oriUrl\":[\"tableMange/ecifColoumQuery\"],\"oriName\":[\"开放接口库表字段查询\"],\"pid\":[\"11\"],\"parentId\":[\"10\"],\"url\":[\"tableMange/ecifColoumQuery\"]}','2020-03-14 01:24:07',NULL),('8bb31e02bed441b384095e989d4571da',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"ckgh\"]}','2020-03-14 03:20:01',NULL),('90245d670ff442afade6750f3138216d',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"m8xx\"]}','2020-03-14 00:37:32',NULL),('90bc8e341cd447a9b620561b40ae1ea5','1','系统管理','/ecif/systemManage/chgnewpwd','0:0:0:0:0:0:0:1','新用户强制修改密码','{\"pid\":[\"${userInfo.pid}\"]}','2020-03-14 03:24:27',NULL),('9177b6728f8d41e1b35626025d8c8cfc','1','系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"guantong\"],\"captcha\":[\"nynm\"]}','2020-03-14 03:27:35',NULL),('934ced7e284f47c7afc9f911df99fbf2',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"4frq\"]}','2020-03-14 03:20:28',NULL),('96fa06e6db274e5a936a6512c1a62362','1','系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"guantong\"],\"captcha\":[\"G3AG\"]}','2020-03-14 03:21:28',NULL),('99b5fd9eb0ec487eb02c89b43602e938','1','系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试郭德纲\"],\"authorityCode\":[\"cewest23213\"],\"oriName\":[\"测试郭德纲\"],\"description\":[\"sdfsdfsdf\"],\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"],\"oriAuthId\":[\"cewest\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:58:45',NULL),('99cb05bf38734841bae4c3918ae171fe',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"DM4F\"]}','2020-03-14 03:07:06',NULL),('9dee7c1d80b14c04a42231de86540d98',NULL,'系统管理','/ecif/systemManage/changePassword','0:0:0:0:0:0:0:1','用户修改密码','{\"pid\":[\"1\"]}','2020-03-14 03:19:29',NULL),('a119dced03ff4b05a01e6cfaf3defd65',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"1\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"1\"],\"name\":[\"码表工具\"],\"oriUrl\":[\"ecifPlatform/codetable\"],\"oriName\":[\"码表工具\"],\"pid\":[\"6\"],\"parentId\":[\"0\"],\"url\":[\"platform/codetable\"]}','2020-03-14 01:27:12',NULL),('aa347ffe80954ab2bd53bb0a33435620',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"3\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"3\"],\"name\":[\"信息项管理\"],\"oriUrl\":[\"utils/infos\"],\"oriName\":[\"信息项管理\"],\"pid\":[\"8\"],\"parentId\":[\"0\"],\"url\":[\"platform/infos\"]}','2020-03-14 01:27:20',NULL),('aa6a18b5b251416591a2392713d50940',NULL,'系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"62140b99fb6e4e7e99fc1ddd9241336e\"]}','2020-03-14 01:56:02',NULL),('b0a40c780d674dddb22b14ec018fd95d',NULL,'系统管理-权限管理','/ecif/systemManage/addAuthority','0:0:0:0:0:0:0:1','新增权限','{\"resourceId\":[\"\"],\"name\":[\"测试权限\"],\"authorityCode\":[\"testAuth\"],\"oriName\":[\"\"],\"description\":[\"测试权限描述\"],\"pid\":[\"\"],\"oriAuthId\":[\"\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:55:23',NULL),('b13603ef1e3e4a04adcf7ec6f6246dc4',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"2\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"2\"],\"name\":[\"QA平台\"],\"oriUrl\":[\"utils/qaplatform\"],\"oriName\":[\"QA平台\"],\"pid\":[\"7\"],\"parentId\":[\"0\"],\"url\":[\"qaplatform\"]}','2020-03-14 01:26:02',NULL),('b1b54ecda6e0460a96d9c2307fb7f5ba','1','系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"700b07acd3a24ec6aa61eb23ed69ef4f\"]}','2020-03-14 02:03:56',NULL),('b1c9d027759c481b8779dcbad3ec25be',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"1\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"1\"],\"name\":[\"开放接口库表字段查询\"],\"oriUrl\":[\"interface/ecifColoumQuery\"],\"oriName\":[\"开放接口库表字段查询\"],\"pid\":[\"11\"],\"parentId\":[\"10\"],\"url\":[\"tableMange/ecifColoumQuery\"]}','2020-03-14 01:23:48',NULL),('b74535f791d546709c1555230bafadcc',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"3gkr\"]}','2020-03-14 01:15:43',NULL),('bbd94eef62024c078b27a1a41a44a097',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"XXkd\"]}','2020-03-14 00:40:42',NULL),('bce5a7ebde99426b89ed8eb4f8dc3e75','1','系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试权限\"],\"authorityCode\":[\"testAuthddd\"],\"oriName\":[\"测试权限\"],\"description\":[\"测试权限描述\"],\"pid\":[\"62140b99fb6e4e7e99fc1ddd9241336e\"],\"oriAuthId\":[\"testAuth\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:55:54',NULL),('be922251e95d4cb49538a470f9caaba5','1','系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"guantong\"],\"captcha\":[\"WGA5\"]}','2020-03-14 03:23:47',NULL),('c19e21eab6df4b8c9362bd2fa76ff09e',NULL,'系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,10,14,13,12,11,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:06:56',NULL),('c551da7096e245b78e86b71e079e8815','1','系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','修改角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,10,14,13,12,11,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:05:31',NULL),('c561630a879f4a8c85e3eec7d5f8eb5f',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"5\"],\"seriesNo\":[\"1\"],\"level\":[\"1\"],\"oriSeriesNo\":[\"1\"],\"name\":[\"码表工具\"],\"oriUrl\":[\"utils/codetable\"],\"oriName\":[\"码表工具\"],\"pid\":[\"6\"],\"parentId\":[\"0\"],\"url\":[\"ecifPlatform/codetable\"]}','2020-03-14 01:25:14',NULL),('d032f47871e04ff097fc501ea498b746',NULL,'系统管理-角色管理','/ecif/systemManage/modifyRole','0:0:0:0:0:0:0:1','修改角色','{\"oriCode\":[\"test_role\"],\"code\":[\"test_roleggg\"],\"name\":[\"测试角色\"],\"oriName\":[\"测试角色\"],\"description\":[\"测试角色\"],\"pid\":[\"fe7c945ae5244e36b62d3f0726323bd5\"]}','2020-03-14 02:16:33',NULL),('d29741d26fd94547b558fdb08c046eaf',NULL,'系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:06:26',NULL),('d53853da0cca4bd181f8b960195b9ef9',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"HRRK\"]}','2020-03-14 01:00:20',NULL),('d65d73a8e35747bfaea5364172a34f9a',NULL,'系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试权限\"],\"authorityCode\":[\"testAuthddd\"],\"oriName\":[\"测试权限\"],\"description\":[\"测试权限描述\"],\"pid\":[\"62140b99fb6e4e7e99fc1ddd9241336e\"],\"oriAuthId\":[\"testAuth\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:55:54',NULL),('d7041bbf16174cdc9a02742f2d63ee72',NULL,'系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"700b07acd3a24ec6aa61eb23ed69ef4f\"]}','2020-03-14 02:03:56',NULL),('dbc9eaba007046039bf25154e0261c5d',NULL,'系统管理','/ecif/systemManage/changePassword','0:0:0:0:0:0:0:1','用户修改密码','{\"pid\":[\"1\"]}','2020-03-14 03:20:10',NULL),('dddeadc24a4a47e28641118a2845213d',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"kfpn\"]}','2020-03-14 00:25:55',NULL),('dfe9220220414dc094d10f47f61a592f',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"dyhk\"]}','2020-03-14 00:26:00',NULL),('e03aad7570f44b34915cb1cdbd685c1a','1','系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','修改角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:06:26',NULL),('e54b0b525d73447ba88fd3e3043b2688','1','系统管理-权限管理','/ecif/systemManage/delAuthority','0:0:0:0:0:0:0:1','删除权限','{\"pid\":[\"62140b99fb6e4e7e99fc1ddd9241336e\"]}','2020-03-14 01:56:02',NULL),('e64960fec3ec492eb97e29dab79c4b9a','1','系统管理-用户管理','/ecif/systemManage/userAuthorization','0:0:0:0:0:0:0:1','用户数据授权','{\"rolePids\":[\"1\"],\"pid\":[\"784c55764b5a4b03bd436a9e47f24568\"]}','2020-03-14 03:23:28',NULL),('e902d8bf2ffa4fa3a487e9f8c4ffab52',NULL,'系统管理-权限管理','/ecif/systemManage/modifyAuthority','0:0:0:0:0:0:0:1','修改权限','{\"resourceId\":[\"\"],\"name\":[\"测试郭德纲\"],\"authorityCode\":[\"cewest23213\"],\"oriName\":[\"测试郭德纲\"],\"description\":[\"sdfsdfsdf\"],\"pid\":[\"b626e0f20efc4ea89048acf7ad5da79b\"],\"oriAuthId\":[\"cewest\"],\"type\":[\"1\"],\"parentId\":[\"\"]}','2020-03-14 01:58:45',NULL),('ee9c077f71634502972a2355a34d4669',NULL,'系统管理-菜单管理','/ecif/systemManage/modifyMenu','0:0:0:0:0:0:0:1','修改菜单','{\"modifyFlg\":[\"1\"],\"maxSeriesNo\":[\"4\"],\"seriesNo\":[\"1\"],\"level\":[\"2\"],\"oriSeriesNo\":[\"1\"],\"name\":[\"开放接口库表字段查询\"],\"oriUrl\":[\"utils/ecifColoumQuery\"],\"oriName\":[\"开放接口库表字段查询\"],\"pid\":[\"11\"],\"parentId\":[\"10\"],\"url\":[\"interface/ecifColoumQuery\"]}','2020-03-14 01:23:15',NULL),('f09db7cabc154809bea4ad7cb0d2c7b3','1','系统管理','/ecif/systemManage/chgnewpwd','0:0:0:0:0:0:0:1','新用户强制修改密码','{\"pid\":[\"${userInfo.pid}\"]}','2020-03-14 03:24:08',NULL),('f4e31de4cb504069a32f28420bb88dff',NULL,'系统管理-角色管理','/ecif/systemManage/addRole','0:0:0:0:0:0:0:1','新增角色','{\"oriCode\":[\"\"],\"code\":[\"test_role\"],\"name\":[\"测试角色\"],\"oriName\":[\"\"],\"description\":[\"测试角色\"],\"pid\":[\"\"]}','2020-03-14 02:16:18',NULL),('f7d1ee6489374d4dae79ad35aea9ac77','1','系统管理-角色管理','/ecif/systemManage/addRoleAuthorities','0:0:0:0:0:0:0:1','修改角色授权','{\"authorityPids\":[\"1,9,5,4,3,2,10,14,13,12,11,6,7,8\"],\"roleId\":[\"1\"]}','2020-03-14 03:06:56',NULL),('fd338bbbd4444bc1969d68a63d11740a',NULL,'系统管理','/ecif/systemManage/login','0:0:0:0:0:0:0:1','用户登录','{\"userName\":[\"admin\"],\"captcha\":[\"c3xy\"]}','2020-03-14 01:03:18',NULL);
/*!40000 ALTER TABLE `log_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_info`
--

DROP TABLE IF EXISTS `resource_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resource_info` (
  `pid` varchar(64) NOT NULL COMMENT '主键id',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `url` varchar(128) DEFAULT NULL COMMENT 'url',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父id',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `series_no` int(11) DEFAULT NULL COMMENT '序号',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `remark` varchar(512) DEFAULT NULL COMMENT 'remark',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_info`
--

LOCK TABLES `resource_info` WRITE;
/*!40000 ALTER TABLE `resource_info` DISABLE KEYS */;
INSERT INTO `resource_info` VALUES ('1','系统管理','#','0',1,999,NULL,NULL,NULL,NULL,'1',NULL,NULL),('10','开放库表字段管理','#','0',1,4,NULL,NULL,NULL,NULL,'1',NULL,NULL),('11','开放接口库表字段查询','tableMange/ecifColoumQuery','10',2,1,'admin',NULL,NULL,NULL,'1',NULL,NULL),('12','库表管理','tableMange/tables','10',2,2,'admin',NULL,NULL,NULL,'1',NULL,NULL),('13','SQL索引管理','tableMange/sqlInfo','10',2,3,'admin',NULL,NULL,NULL,'1',NULL,NULL),('14','公共类及方法管理','tableMange/commonInfo','10',2,4,'admin',NULL,NULL,NULL,'1',NULL,NULL),('2','权限管理','systemManage/authorityManage','1',2,1,NULL,NULL,NULL,NULL,'1',NULL,NULL),('3','用户管理','systemManage/userManage','1',2,2,NULL,NULL,NULL,NULL,'1',NULL,NULL),('4','角色管理','systemManage/roleManage','1',2,3,NULL,NULL,NULL,NULL,'1',NULL,NULL),('5','菜单管理','systemManage/menuManage','1',2,4,NULL,NULL,NULL,NULL,'1',NULL,NULL),('6','码表工具','platform/codetable','0',1,2,'admin',NULL,NULL,NULL,'1',NULL,NULL),('7','QA平台','platform/qaplatform','0',1,1,'admin',NULL,NULL,NULL,'1',NULL,NULL),('8','信息项管理','platform/infos','0',1,3,'admin',NULL,NULL,NULL,'1',NULL,NULL),('9','字典管理','systemManage/dictManage','1',2,5,NULL,NULL,NULL,NULL,'1',NULL,NULL);
/*!40000 ALTER TABLE `resource_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_info` (
  `pid` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `code` varchar(32) DEFAULT NULL COMMENT '码值',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `remark` varchar(512) DEFAULT NULL COMMENT 'remark',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
INSERT INTO `role_info` VALUES ('1','系统管理员','admin','系统管理员',NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_resource_operator`
--

DROP TABLE IF EXISTS `role_resource_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_resource_operator` (
  `pid` varchar(64) NOT NULL COMMENT '主键id',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色id',
  `authority_id` varchar(64) DEFAULT NULL COMMENT '权限id',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源操作表(角色权限表) ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource_operator`
--

LOCK TABLES `role_resource_operator` WRITE;
/*!40000 ALTER TABLE `role_resource_operator` DISABLE KEYS */;
INSERT INTO `role_resource_operator` VALUES ('dc7541f465a011eaab65000c291c485a','1','1','1',NULL,NULL,NULL,NULL),('dc75440f65a011eaab65000c291c485a','1','10','1',NULL,NULL,NULL,NULL),('dc7544ae65a011eaab65000c291c485a','1','11','1',NULL,NULL,NULL,NULL),('dc7546be65a011eaab65000c291c485a','1','12','1',NULL,NULL,NULL,NULL),('dc75475565a011eaab65000c291c485a','1','13','1',NULL,NULL,NULL,NULL),('dc7547c765a011eaab65000c291c485a','1','14','1',NULL,NULL,NULL,NULL),('dc75483365a011eaab65000c291c485a','1','2','1',NULL,NULL,NULL,NULL),('dc7549c965a011eaab65000c291c485a','1','3','1',NULL,NULL,NULL,NULL),('dc754a5265a011eaab65000c291c485a','1','4','1',NULL,NULL,NULL,NULL),('dc754abd65a011eaab65000c291c485a','1','5','1',NULL,NULL,NULL,NULL),('dc754b2765a011eaab65000c291c485a','1','6','1',NULL,NULL,NULL,NULL),('dc754d1f65a011eaab65000c291c485a','1','7','1',NULL,NULL,NULL,NULL),('dc754dac65a011eaab65000c291c485a','1','8','1',NULL,NULL,NULL,NULL),('dc754e1665a011eaab65000c291c485a','1','9','1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `role_resource_operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sql_info`
--

DROP TABLE IF EXISTS `sql_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sql_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `SQL_ID` varchar(128) DEFAULT NULL COMMENT 'SQL_ID',
  `SQL_CONTENT` text COMMENT 'SQL语句',
  `DES` varchar(512) DEFAULT NULL COMMENT 'SQL说明',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SQL索引信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sql_info`
--

LOCK TABLES `sql_info` WRITE;
/*!40000 ALTER TABLE `sql_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `statistics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `TYPE` int(11) DEFAULT NULL COMMENT '统计类型',
  `NAME` varchar(128) DEFAULT NULL COMMENT '统计项名称',
  `NUM` int(11) DEFAULT NULL COMMENT '统计项数量',
  `STATISTICS_DATE` date DEFAULT NULL COMMENT '统计日期',
  `STATISTICS_TIME` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='统计信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_info`
--

DROP TABLE IF EXISTS `table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `table_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `TABLE_NAME` varchar(32) DEFAULT NULL COMMENT '表名称',
  `TABLE_COMMENT` varchar(512) DEFAULT NULL COMMENT '表备注信息',
  `CREATED_BY` int(11) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` int(11) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_info`
--

LOCK TABLES `table_info` WRITE;
/*!40000 ALTER TABLE `table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_info` (
  `pid` varchar(64) NOT NULL COMMENT '主键',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `tel` varchar(128) DEFAULT NULL COMMENT '电话',
  `duty` varchar(128) DEFAULT NULL COMMENT '职务',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `department_code` varchar(64) DEFAULT NULL COMMENT '部门',
  `is_new` varchar(64) DEFAULT NULL COMMENT '是否新建用户',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('1','admin','656369668AB83FA0F0006B49CF67D013D5A9FDE7','系统管理员','13888888888',NULL,'2020-03-26 07:51:29',NULL,NULL,'1',NULL,NULL,NULL,NULL,'1'),('784c55764b5a4b03bd436a9e47f24568','guantong','6563696647239AE2D709EC5B173637904255F12A','小管','13812345678','测试',NULL,NULL,'','N','1','2020-03-14 03:21:10',NULL,NULL,'1');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `pid` varchar(64) NOT NULL COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色id',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('1','1','1',NULL,NULL,NULL,NULL,NULL),('2','784c55764b5a4b03bd436a9e47f24568','1','1','2020-03-14 03:23:28',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-13 21:36:03
