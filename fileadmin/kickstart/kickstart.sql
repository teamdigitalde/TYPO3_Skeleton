-- MySQL dump 10.13  Distrib 5.6.21, for Linux (i686)
--
-- Host: 127.0.0.3    Database: db498049_2
-- ------------------------------------------------------
-- Server version	5.6.19-67.0-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `config` mediumtext NOT NULL,
  `icon` mediumtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
INSERT INTO `backend_layout` VALUES (1,13,0,0,0,'',0,0,0,0,0,0,1455006243,1407483682,1,0,0,256,'1-Spalter','Einspaltige Backend-Vorlage','backend_layout {\r\n	colCount = 1\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Headerbild / Slider\r\n					colPos = 3\r\n					allowed = textmedia,list\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt\r\n					colPos = 0\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','grid-head-inhalt.png'),(2,13,0,0,0,'',0,0,0,0,0,0,1455006385,1407483783,1,0,0,512,'2-Spalter','Zweispaltige Backend-Vorlage','backend_layout {\r\n	colCount = 3\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Headerbild / Slider\r\n					colspan = 3\r\n					colPos = 3\r\n					allowed = textmedia,list\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt\r\n					colspan = 2\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Rechte Spalte\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','grid-head-inhalt-2spaltig_01.png'),(3,13,0,0,0,'',0,0,0,0,0,0,1455006479,1407483929,1,0,0,768,'3-Spalter','3-spaltige Backend-Vorlage','backend_layout {\r\n	colCount = 5\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Headerbild / Slider\r\n					colspan = 5\r\n					colPos = 3\r\n					allowed = textmedia,list\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n				1 {\r\n					name = Linke Spalte\r\n					colPos = 1\r\n				}\r\n				2 {\r\n					name = Inhalt\r\n					colspan = 3\r\n					colPos = 0\r\n				}\r\n				3 {\r\n					name = Rechte Spalte\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','grid-head-3spaltig.png');
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1471529947,'Redakteure','pages_language_overlay:description,pages_language_overlay:media,pages_language_overlay:hidden,pages_language_overlay:nav_title,pages_language_overlay:shortcut_mode,pages_language_overlay:starttime,pages_language_overlay:endtime,pages_language_overlay:urltype,pages_language_overlay:doktype,pages_language_overlay:url,tx_powermail_domain_model_answer:value_type,tx_powermail_domain_model_answer:value,tx_powermail_domain_model_answer:field,tx_powermail_domain_model_answer:hidden,tx_powermail_domain_model_answer:sys_language_uid,tx_powermail_domain_model_answer:mail,tx_powermail_domain_model_answer:starttime,tx_powermail_domain_model_answer:endtime,tx_powermail_domain_model_answer:l10n_parent,tx_powermail_domain_model_field:description,tx_powermail_domain_model_field:datepicker_settings,tx_powermail_domain_model_field:sender_name,tx_powermail_domain_model_field:sender_email,tx_powermail_domain_model_field:own_marker_select,tx_powermail_domain_model_field:hidden,tx_powermail_domain_model_field:content_element,tx_powermail_domain_model_field:validation_configuration,tx_powermail_domain_model_field:sys_language_uid,tx_powermail_domain_model_field:multiselect,tx_powermail_domain_model_field:prefill_value,tx_powermail_domain_model_field:mandatory,tx_powermail_domain_model_field:placeholder,tx_powermail_domain_model_field:starttime,tx_powermail_domain_model_field:endtime,tx_powermail_domain_model_field:l10n_parent,tx_powermail_domain_model_field:auto_marker,tx_powermail_domain_model_field:pages,tx_powermail_domain_model_field:validation,sys_file_reference:alternative,sys_file_reference:description,sys_file_reference:crop,sys_file_reference:link,sys_file_reference:title,tx_powermail_domain_model_form:hidden,tx_powermail_domain_model_form:sys_language_uid,tx_powermail_domain_model_form:starttime,tx_powermail_domain_model_form:endtime,tx_powermail_domain_model_form:l10n_parent,tx_powermail_domain_model_mail:sender_mail,tx_powermail_domain_model_mail:sender_name,tx_powermail_domain_model_mail:answers,tx_powermail_domain_model_mail:body,tx_powermail_domain_model_mail:subject,tx_powermail_domain_model_mail:receiver_mail,tx_powermail_domain_model_mail:crdate,tx_powermail_domain_model_mail:form,tx_powermail_domain_model_mail:hidden,tx_powermail_domain_model_mail:sys_language_uid,tx_powermail_domain_model_mail:starttime,tx_powermail_domain_model_mail:endtime,tx_powermail_domain_model_mail:l10n_parent,tx_powermail_domain_model_mail:uid,pages:newUntil,pages:backend_layout_next_level,pages:backend_layout,pages:module,pages:description,pages:media,pages:nav_hide,pages:hidden,pages:extendToSubpages,pages:keywords,pages:nav_title,pages:no_search,pages:shortcut_mode,pages:content_from_pid,pages:starttime,pages:endtime,pages:target,pages:doktype,tt_content:pi_flexform;powermail_pi1;main;settings.flexform.main.confirmation,tt_content:pi_flexform;powermail_pi1;sender;settings.flexform.sender.subject,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.subject,tt_content:pi_flexform;powermail_pi1;sender;settings.flexform.sender.email,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.email,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.fe_group,tt_content:pi_flexform;powermail_pi1;main;settings.flexform.main.optin,tt_content:pi_flexform;powermail_pi1;sender;settings.flexform.sender.body,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.body,tt_content:pi_flexform;powermail_pi1;main;settings.flexform.main.moresteps,tt_content:pi_flexform;powermail_pi1;sender;settings.flexform.sender.name,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.name,tt_content:pi_flexform;powermail_pi1;thx;settings.flexform.thx.body,tt_content:pi_flexform;powermail_pi1;receiver;settings.flexform.receiver.predefinedemail,tt_content:pi_flexform;powermail_pi1;thx;settings.flexform.thx.redirect,tt_content:pi_flexform;powermail_pi1;main;settings.flexform.main.pid,tt_content:imageborder,tt_content:image_zoom,tt_content:colPos,tt_content:imagecols,tt_content:date,tt_content:imageheight,tt_content:hidden,tt_content:tx_gridelements_children,tt_content:sys_language_uid,tt_content:header_link,tt_content:imageorient,tt_content:tx_gridelements_container,tt_content:tx_gridelements_columns,tt_content:tx_gridelements_backend_layout,tt_content:starttime,tt_content:endtime,tt_content:linkToTop,tt_content:l18n_parent,tt_content:header_layout,tt_content:imagewidth,tx_powermail_domain_model_page:hidden,tx_powermail_domain_model_page:sys_language_uid,tx_powermail_domain_model_page:starttime,tx_powermail_domain_model_page:endtime,tx_powermail_domain_model_page:l10n_parent,tx_powermail_domain_model_page:forms','tt_content:CType:header:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:menu:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:CType:gridelements_pi1:ALLOW,tt_content:list_type:powermail_pi1:ALLOW','',NULL,'1','1,4,3,254,199','pages,sys_file,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,pages_language_overlay,tt_content,tx_gridelements_backend_layout,tx_powermail_domain_model_answer,tx_powermail_domain_model_field,tx_powermail_domain_model_form,tx_powermail_domain_model_mail,tx_powermail_domain_model_page','pages,sys_file,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,pages_language_overlay,tt_content,tx_gridelements_backend_layout,tx_powermail_domain_model_answer,tx_powermail_domain_model_field,tx_powermail_domain_model_form,tx_powermail_domain_model_mail,tx_powermail_domain_model_page',1407481661,1,'web_layout,web_list,web_func,web_RecyclerRecycler,file_FilelistList,user_setup','1','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,copyFile,deleteFile',0,'Standardbenutzergruppen','',0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showDomainNameWithTitle = 1','',0,1,'');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` mediumtext,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` mediumtext,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` longtext,
  `file_mountpoints` mediumtext,
  `file_permissions` mediumtext,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` mediumtext,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` mediumtext,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1460445180,'schubath','',0,'$P$CP8l7CMuv6NG5nhdEq/XwihFfY5lWQ0',1,'',0,0,0,'de','schubath@team-digital.de',NULL,0,1415182149,0,'Mäx',NULL,'','a:48:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:16:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:16:\"xMOD_alt_doc.php\";a:0:{}s:11:\"alt_doc.php\";a:2:{i:0;a:0:{}i:1;s:32:\"f95d1bbc2030d40006cea43680d58466\";}s:16:\"opendocs::recent\";a:8:{s:32:\"4581bd93c84f7f262f2cb9a6a7de0ebc\";a:4:{i:0;s:11:\"user_upload\";i:1;a:7:{s:4:\"edit\";a:1:{s:14:\"sys_filemounts\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:110:\"&edit[sys_filemounts][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:14:\"sys_filemounts\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d3a0a76f806dded6659b4a3ca5ddd811\";a:4:{i:0;s:9:\"redakteur\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"3107b94272a0c3194e2479999dc9d94b\";a:4:{i:0;s:8:\"schubath\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"00c3bac5286b66a474abe8c51ecb1aa0\";a:4:{i:0;s:9:\"schubath0\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][3]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"3\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c178943c201e0b06610ef03c386a3591\";a:4:{i:0;s:9:\"schubath2\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"5\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"896dd00dcf573efe601cc64ec66b48bf\";a:4:{i:0;s:9:\"schubath1\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][4]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"4\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"31d1dbaaaa232f8fa9a252a41b295a1d\";a:4:{i:0;s:26:\"404 - Seite nicht gefunden\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:102:\"&edit[pages][20]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:2:\"20\";s:3:\"pid\";s:1:\"6\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c2891b871ae75cf6d14ea8c6d08f83a9\";a:4:{i:0;s:7:\"Twitter\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:15;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:107:\"&edit[tt_content][15]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:2:\"15\";s:3:\"pid\";s:1:\"9\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:6:\"web_ts\";a:7:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"internal notes\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_setup\";a:0:{}}s:8:\"web_list\";a:2:{s:15:\"bigControlPanel\";s:1:\"1\";s:9:\"clipBoard\";s:1:\"1\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:42:\"1:/templates/example.com/Resources/Images/\";}s:9:\"clipboard\";a:5:{s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";s:6:\"normal\";a:2:{s:2:\"el\";a:1:{s:10:\"be_users|1\";s:1:\"1\";}s:4:\"mode\";s:4:\"copy\";}}s:16:\"web_txrecyclerM1\";a:1:{s:8:\"function\";s:0:\"\";}s:12:\"web_recycler\";a:1:{s:6:\"States\";a:1:{s:10:\"depthCombo\";N;}}s:9:\"file_list\";a:0:{}s:8:\"web_perm\";a:1:{s:5:\"depth\";s:2:\"10\";}s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"4a26b958e7ef6e924e7657a326433185\";a:4:{i:0;s:22:\"Plugin Kontaktformular\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][3]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"3\";s:3:\"pid\";s:1:\"5\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"57d928391bbb6f8f6a49bc2c76598689\";a:4:{i:0;s:10:\"Redakteure\";i:1;a:7:{s:4:\"edit\";a:1:{s:9:\"be_groups\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:105:\"&edit[be_groups][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:9:\"be_groups\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"57d928391bbb6f8f6a49bc2c76598689\";}s:18:\"list/displayFields\";a:1:{s:10:\"tt_content\";a:2:{i:0;s:0:\"\";i:1;s:5:\"CType\";}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:0:\"\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";s:3:\"150\";s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1415182176;s:15:\"moduleSessionID\";a:15:{s:10:\"web_layout\";s:32:\"af9d3d2562b889865ac7ff6292e33bca\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"ebb0a89aff79b45a14b074da4c395fa8\";s:9:\"tx_beuser\";s:32:\"d72447d43b8b7d89ac15294058dd5f62\";s:16:\"xMOD_alt_doc.php\";s:32:\"af9d3d2562b889865ac7ff6292e33bca\";s:11:\"alt_doc.php\";s:32:\"59c6ff1e55355470600838eb4648c71e\";s:16:\"opendocs::recent\";s:32:\"ebb0a89aff79b45a14b074da4c395fa8\";s:6:\"web_ts\";s:32:\"ea81ff3292880dafd49f60327d6bc856\";s:8:\"web_list\";s:32:\"af9d3d2562b889865ac7ff6292e33bca\";s:16:\"browse_links.php\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:9:\"clipboard\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:16:\"web_txrecyclerM1\";s:32:\"ea81ff3292880dafd49f60327d6bc856\";s:9:\"file_list\";s:32:\"ea81ff3292880dafd49f60327d6bc856\";s:8:\"web_perm\";s:32:\"ea81ff3292880dafd49f60327d6bc856\";s:10:\"FormEngine\";s:32:\"ebb0a89aff79b45a14b074da4c395fa8\";s:18:\"list/displayFields\";s:32:\"3f598499b8c83ee61495e4a4f55d4021\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":9:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"2\";i:1;s:1:\"3\";i:1;s:1:\"4\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p0\";s:1:\"c\";i:1;s:1:\"d\";i:1;}}}}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:2:\"10\";s:15:\"recursiveDelete\";i:1;s:8:\"simulate\";s:0:\"\";s:18:\"resetConfiguration\";s:0:\"\";s:16:\"clearSessionVars\";s:1:\"0\";s:13:\"debugInWindow\";i:0;s:8:\"rteWidth\";s:4:\"100%\";s:9:\"rteHeight\";s:0:\"\";s:9:\"rteResize\";i:0;s:12:\"rteMaxHeight\";s:0:\"\";s:22:\"rteCleanPasteBehaviour\";s:14:\"pasteStructure\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:18:\"disablePMKTextarea\";i:1;s:8:\"tcaTrees\";a:4:{s:32:\"fc5490915273e8f87906abaacb8eff12\";i:0;s:32:\"d2e1133f7858a3957716afd25af53d72\";i:0;s:32:\"29a6af94b00cbbf0a3d3df27b1bd4c67\";i:0;s:32:\"6b65a463ec23e6c64788cf0df19087dc\";i:0;}s:10:\"inlineView\";s:258:\"a:3:{i:0;b:0;s:31:\"tx_powermail_domain_model_forms\";a:1:{i:1;a:2:{s:31:\"tx_powermail_domain_model_pages\";a:1:{i:0;s:1:\"1\";}s:32:\"tx_powermail_domain_model_fields\";a:1:{i:7;s:0:\"\";}}}s:8:\"be_users\";a:1:{i:4;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"3\";}}}}\";s:11:\"browseTrees\";a:2:{s:11:\"browsePages\";s:48:\"a:1:{i:0;a:4:{i:0;i:1;i:1;i:1;i:6;i:1;i:5;i:1;}}\";s:6:\"folder\";s:129:\"a:1:{i:25218;a:7:{i:62822724;i:1;i:14248556;i:1;i:232120857;i:1;i:108823118;i:1;i:202941852;i:1;i:94907040;i:1;i:144884809;i:1;}}\";}s:11:\"tx_recycler\";a:2:{s:14:\"tableSelection\";s:5:\"pages\";s:14:\"depthSelection\";i:0;}s:15:\"passwordCurrent\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:19:\"showGridInformation\";i:0;}',NULL,NULL,1,'',0,0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showPageIdWithTitle=1\r\noptions.pageTree.showDomainNameWithTitle = 1',1460444614,0,NULL,0,1,''),(3,0,1460445165,'ziegenhain','',0,'$P$CZ5OD.irPnFqu3e6kD7JsACTUOYq5M0',1,'',0,0,0,'de','ziegenhain@team-digital.de','',0,1455013548,1,'Henrik','','','a:38:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:7:{s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:42:\"1:/templates/example.com/Resources/Images/\";}s:9:\"file_list\";a:0:{}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:10:\"FormEngine\";a:2:{i:0;a:1:{s:32:\"e37f781e05620ad9b7b70a887d398e3a\";a:4:{i:0;s:4:\"Meta\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:101:\"&edit[pages][6]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:1:\"6\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"e37f781e05620ad9b7b70a887d398e3a\";}s:16:\"opendocs::recent\";a:5:{s:32:\"896dd00dcf573efe601cc64ec66b48bf\";a:4:{i:0;s:9:\"bueschken\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][4]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"4\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d3a0a76f806dded6659b4a3ca5ddd811\";a:4:{i:0;s:9:\"redakteur\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"3107b94272a0c3194e2479999dc9d94b\";a:4:{i:0;s:8:\"schubath\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c178943c201e0b06610ef03c386a3591\";a:4:{i:0;s:11:\"teamdigital\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"5\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"00c3bac5286b66a474abe8c51ecb1aa0\";a:4:{i:0;s:10:\"ziegenhain\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][3]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"3\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"0\";s:8:\"language\";s:1:\"0\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1455013848;s:15:\"moduleSessionID\";a:7:{s:16:\"browse_links.php\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:9:\"file_list\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"3ae28013b3909b7e5a1bec320afb7231\";s:9:\"tx_beuser\";s:32:\"3ae28013b3909b7e5a1bec320afb7231\";s:10:\"FormEngine\";s:32:\"3ae28013b3909b7e5a1bec320afb7231\";s:16:\"opendocs::recent\";s:32:\"3ae28013b3909b7e5a1bec320afb7231\";s:10:\"web_layout\";s:32:\"3ae28013b3909b7e5a1bec320afb7231\";}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:82:\"a:1:{i:25218;a:4:{i:62822724;i:1;i:202941852;i:1;i:94907040;i:1;i:144884809;i:1;}}\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:15:\"passwordCurrent\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:2:\"10\";s:15:\"recursiveDelete\";i:1;s:18:\"resetConfiguration\";s:0:\"\";s:13:\"debugInWindow\";i:0;s:8:\"rteWidth\";s:4:\"100%\";s:9:\"rteHeight\";s:0:\"\";s:9:\"rteResize\";i:0;s:12:\"rteMaxHeight\";s:0:\"\";s:22:\"rteCleanPasteBehaviour\";s:14:\"pasteStructure\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:19:\"showGridInformation\";i:0;s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":17:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"2\";i:1;s:1:\"3\";i:1;s:1:\"4\";i:1;s:1:\"7\";i:1;s:1:\"8\";i:1;s:1:\"9\";i:1;s:2:\"14\";i:1;s:4:\"root\";i:1;s:1:\"c\";i:1;s:1:\"d\";i:1;s:1:\"e\";i:1;s:1:\"f\";i:1;s:1:\"a\";i:1;s:1:\"b\";i:1;s:16:\"lastSelectedNode\";s:2:\"p6\";}}}}}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,files_copy,deleteFile',1,'',0,0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showPageIdWithTitle=1\r\noptions.pageTree.showDomainNameWithTitle = 1',1460444655,0,NULL,0,1,''),(2,0,1460445194,'redakteur','',0,'$P$CHzMLKwMbGJEReyc2K/AkrqQX/8lJW0',0,'1',0,0,0,'de','','',3,1415262705,1,'','','','a:17:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:2:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"0\";s:8:\"language\";s:1:\"0\";}s:9:\"file_list\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1463665750;s:15:\"moduleSessionID\";a:2:{s:10:\"web_layout\";s:32:\"ebb0a89aff79b45a14b074da4c395fa8\";s:9:\"file_list\";s:32:\"ebb0a89aff79b45a14b074da4c395fa8\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":2:{s:1:\"0\";i:1;s:4:\"root\";i:1;}}}}}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,deleteFile',1,'',0,0,'',0,0,'1',0,1,''),(4,0,1460445201,'bueschken','',0,'$P$CQ2EdgygXN.M8GcCpAOJE15IlvDaN20',1,'',0,0,0,'de','bueschken@team-digital.de','',0,1455013553,1,'Tim','','','a:37:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:3:{s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:42:\"1:/templates/example.com/Resources/Images/\";}s:9:\"file_list\";a:0:{}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1455013741;s:15:\"moduleSessionID\";a:3:{s:16:\"browse_links.php\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:9:\"file_list\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:112:\"a:1:{i:25218;a:6:{i:62822724;i:1;i:14248556;i:1;i:202941852;i:1;i:94907040;i:1;i:144884809;i:1;i:18465140;i:1;}}\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:15:\"passwordCurrent\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:2:\"10\";s:15:\"recursiveDelete\";i:1;s:18:\"resetConfiguration\";s:0:\"\";s:13:\"debugInWindow\";i:0;s:8:\"rteWidth\";s:4:\"100%\";s:9:\"rteHeight\";s:0:\"\";s:9:\"rteResize\";i:0;s:12:\"rteMaxHeight\";s:0:\"\";s:22:\"rteCleanPasteBehaviour\";s:14:\"pasteStructure\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:19:\"showGridInformation\";i:0;}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,files_copy,deleteFile',1,'',0,0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showPageIdWithTitle=1\r\noptions.pageTree.showDomainNameWithTitle = 1',1455010900,0,NULL,0,1,''),(5,0,1460445172,'teamdigital','',0,'$P$CcdmLBEAbUKaS.13BY3JCXus.FZirl/',1,'',0,0,0,'de','info@team-digital.de','',0,1455013561,1,'team digital GmbH','','','a:39:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:6:{s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:42:\"1:/templates/example.com/Resources/Images/\";}s:9:\"file_list\";a:0:{}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_list\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"57d928391bbb6f8f6a49bc2c76598689\";a:4:{i:0;s:10:\"Redakteure\";i:1;a:7:{s:4:\"edit\";a:1:{s:9:\"be_groups\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:105:\"&edit[be_groups][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:9:\"be_groups\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a5156c2254df3ee4d4e30baf26a6302d\";a:4:{i:0;s:15:\"Kontaktformular\";i:1;a:7:{s:4:\"edit\";a:1:{s:30:\"tx_powermail_domain_model_form\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:126:\"&edit[tx_powermail_domain_model_form][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:30:\"tx_powermail_domain_model_form\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:2:\"15\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"a5156c2254df3ee4d4e30baf26a6302d\";}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:1;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1455013956;s:15:\"moduleSessionID\";a:6:{s:16:\"browse_links.php\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:9:\"file_list\";s:32:\"684d5a85fcd55ae1d05194bd7687d8b2\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"ad8038f2f2f3c12db805b0c05d388716\";s:8:\"web_list\";s:32:\"ad8038f2f2f3c12db805b0c05d388716\";s:10:\"FormEngine\";s:32:\"ad8038f2f2f3c12db805b0c05d388716\";s:10:\"web_layout\";s:32:\"ad8038f2f2f3c12db805b0c05d388716\";}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:82:\"a:1:{i:25218;a:4:{i:62822724;i:1;i:202941852;i:1;i:94907040;i:1;i:144884809;i:1;}}\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:15:\"passwordCurrent\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:2:\"10\";s:15:\"recursiveDelete\";i:1;s:18:\"resetConfiguration\";s:0:\"\";s:13:\"debugInWindow\";i:0;s:8:\"rteWidth\";s:4:\"100%\";s:9:\"rteHeight\";s:0:\"\";s:9:\"rteResize\";i:0;s:12:\"rteMaxHeight\";s:0:\"\";s:22:\"rteCleanPasteBehaviour\";s:14:\"pasteStructure\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:19:\"showGridInformation\";i:0;s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":9:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"2\";i:1;s:1:\"3\";i:1;s:1:\"4\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p5\";s:1:\"c\";i:1;s:1:\"d\";i:1;}}}}s:10:\"inlineView\";s:116:\"a:1:{s:30:\"tx_powermail_domain_model_form\";a:1:{i:1;a:1:{s:30:\"tx_powermail_domain_model_page\";a:1:{i:0;s:1:\"1\";}}}}\";}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,files_copy,deleteFile',1,'',0,0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showPageIdWithTitle=1\r\noptions.pageTree.showDomainNameWithTitle = 1',1471529796,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` mediumtext,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` mediumtext,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` mediumtext,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` mediumtext,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `tx_ddgooglesitemap_lastmod` varchar(255) NOT NULL DEFAULT '',
  `tx_ddgooglesitemap_priority` int(3) NOT NULL DEFAULT '5',
  `tx_ddgooglesitemap_change_frequency` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1455005893,256,0,1,1,31,27,0,0,1407479747,1,0,'Startseite',1,'<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/templates/example.com/TsConfig/page.ts\">',1,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,1455005893,'','',0,'','','',0,0,0,0,'',0,0,'1','1',NULL,0,'',0,0,0,'1448780360,1448780397,1448783039,1455005872,1455005894',5,''),(2,1,0,0,0,'',0,0,0,0,0,0,1415262808,256,0,1,1,31,31,0,0,1407483013,1,0,'Über uns',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1415262808,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483014,1415262808',5,''),(3,1,0,0,0,'',0,0,0,0,0,0,1415262808,512,0,1,1,31,31,0,0,1407483013,1,0,'Produkte',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1407483013,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483014,1415262808',5,''),(4,1,0,0,0,'',0,0,0,0,0,0,1415262808,768,0,1,1,31,31,0,0,1407483013,1,0,'Leistungen',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1407483013,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483014,1415262808',5,''),(5,1,0,0,0,'',0,0,0,0,0,0,1448694257,1024,0,1,1,31,27,0,0,1407483013,1,0,'Kontakt',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1415255926,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415255927,1415262808,1415262837,1448694249,1448694257',5,''),(6,1,0,0,0,'',0,0,0,0,0,0,1460446195,1280,0,1,1,31,27,0,0,1407483013,1,0,'Meta',254,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,1,0,'1407483106,1415262808,1415262817,1460446189,1460446196',5,''),(7,6,0,0,0,'',0,0,0,0,0,0,1448694544,256,0,1,1,31,27,0,0,1407483066,1,0,'Impressum',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1448694544,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415262809,1415262860,1423737796,1423737814,1448694545',5,''),(8,6,0,0,0,'',0,0,0,0,0,0,1415262808,512,0,1,1,31,31,0,0,1407483066,1,0,'Kontakt',4,NULL,0,0,0,'',0,0,1,5,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483067,1407483088,1415262809',5,''),(9,6,0,0,0,'',0,0,0,0,0,0,1455006587,768,0,1,1,31,27,0,0,1407483066,1,0,'Datenschutz',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1455006587,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1448694627,1455005770,1455006567,1455006571,1455006587',5,''),(10,6,0,0,0,'',0,0,0,0,0,0,1415262808,1024,0,1,1,31,31,0,0,1407483066,1,0,'Sitemap',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1415262455,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483067,1415262396,1415262451,1415262455,1415262809',5,''),(11,6,0,0,0,'',0,0,0,0,0,0,1415262808,1280,0,1,1,31,31,0,0,1407483066,1,0,'Startseite',4,NULL,0,0,0,'',0,0,1,1,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483067,1407483098,1415262809',5,''),(12,1,0,0,0,'',0,0,0,0,0,0,1415262878,128,0,1,1,31,27,0,0,1407483116,1,0,'Globale Inhalte',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1407483116,1407483121,1407483122,1415262808,1415262878',5,''),(13,1,0,0,0,'',0,0,0,0,0,0,1455006479,1536,0,1,0,31,0,0,0,1407483585,1,0,'Storage Folder',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1455006360,1455006385,1455006389,1455006392,1455006480',5,''),(14,5,0,0,0,'',0,0,0,0,0,0,1448694367,256,0,1,1,31,27,0,0,1415255237,1,0,'Absendebestätigung',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415255409,1415262809,1415262840,1448694362,1448694368',5,''),(15,5,0,0,0,'',0,0,0,0,0,0,1415262839,512,0,1,1,31,27,0,0,1415255428,1,0,'DB Kontaktformular',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415255470,1415255589,1415255714,1415262809,1415262839',5,''),(16,1,0,0,0,'',0,0,0,0,0,0,1415262783,1000000000,1,1,1,31,31,0,0,1415262759,1,1,'[Standard-Titel]',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415262760,1415262777',5,''),(17,1,0,0,0,'',0,0,0,0,0,0,1415263158,1000000000,1,1,1,31,27,0,0,1415262956,1,1,'[Standard-Titel]',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415262956',5,''),(18,1,0,0,0,'',0,0,0,0,0,0,1415263161,1000000000,1,1,1,31,27,0,0,1415262988,1,0,'dtzhduz',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415262988',5,''),(19,1,0,0,0,'',0,0,0,0,0,0,1415263155,1000000000,1,1,1,31,31,0,0,1415263147,1,1,'[Standard-Titel]',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1415263147',5,''),(20,6,0,0,0,'',0,0,0,0,0,0,1455006964,1536,0,1,1,31,31,0,0,1455006624,1,0,'404 - Seite nicht gefunden',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,1,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'',0,0,0,'1455006625,1455006643,1455006679,1455006964',5,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` mediumtext,
  `constants` mediumtext,
  `config` mediumtext,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` mediumtext,
  `basedOn` text,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `tx_realurl` (`root`,`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1448783039,256,1407487414,1,'Root Template','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/Static/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:powermail/Configuration/TypoScript/Main,EXT:gridelements/Configuration/TypoScript/','<INCLUDE_TYPOSCRIPT: source=\"DIR:fileadmin/templates/example.com/TypoScript/Constants\" extensions=\"ts\" >','<INCLUDE_TYPOSCRIPT: source=\"DIR:fileadmin/templates/example.com/TypoScript\" extensions=\"ts\" >\r\n','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` mediumtext,
  `bodytext` longtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` mediumtext,
  `pages` mediumtext,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` smallint(6) NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` mediumtext,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` longtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` mediumtext,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bullets_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploads_description` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uploads_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,14,0,0,0,'',0,0,0,0,0,0,1448694361,1415255409,1,0,0,256,'textmedia','Absendebestätigung',NULL,'Vielen Dank.<br /><br />Wir haben Ihre Nachricht erhalten und werden sie schnellstmöglich bearbeiten.<br /><br />Mit freundlichen Grüßen<br /><br />Ihr Example Team',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:3:{s:5:\"CType\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(2,5,0,0,0,'',0,0,0,0,0,0,1448694249,1415255777,1,0,0,256,'textmedia','Kontakt',NULL,'Sie haben eine Frage zu unserem Unternehmen, unseren Leistungen oder  einem Produkt? Füllen Sie bitte einfach das Kontaktformular aus. Wir  freuen uns auf Ihre Anfrage!\r\n<span class=\"kleiner\">Mit einem * gekennzeichnete felder sind Pflichtfelder.</span>',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:3:{s:5:\"CType\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(3,5,0,0,0,'',0,0,0,0,0,0,1415255926,1415255926,1,0,0,512,'list','Plugin Kontaktformular',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'100','0','powermail_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"main\">\n            <language index=\"lDEF\">\n                <field index=\"settings.flexform.main.form\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.flexform.main.confirmation\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.flexform.main.optin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.flexform.main.moresteps\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.flexform.main.pid\">\n                    <value index=\"vDEF\">15</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"receiver\">\n            <language index=\"lDEF\">\n                <field index=\"settings.flexform.receiver.name\">\n                    <value index=\"vDEF\">example.com</value>\n                </field>\n                <field index=\"settings.flexform.receiver.email\">\n                    <value index=\"vDEF\">example@example.com</value>\n                </field>\n                <field index=\"settings.flexform.receiver.fe_group\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.flexform.receiver.subject\">\n                    <value index=\"vDEF\">Anfrage von der Website - Kontaktformular</value>\n                </field>\n                <field index=\"settings.flexform.receiver.body\">\n                    <value index=\"vDEF\">Eine neue Nachricht von der Website.\n&lt;hr /&gt;\n{powermail_all}</value>\n                    <value index=\"_TRANSFORM_vDEF.vDEFbase\">&lt;p&gt;Eine neue Nachricht von der Website.&lt;/p&gt;&lt;hr /&gt;&lt;p&gt;{powermail_all}&lt;/p&gt;</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sender\">\n            <language index=\"lDEF\">\n                <field index=\"settings.flexform.sender.name\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.flexform.sender.email\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.flexform.sender.subject\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.flexform.sender.body\">\n                    <value index=\"vDEF\">{powermail_all}</value>\n                    <value index=\"_TRANSFORM_vDEF.vDEFbase\">&lt;p&gt;{powermail_all}&lt;/p&gt;</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"thx\">\n            <language index=\"lDEF\">\n                <field index=\"settings.flexform.thx.body\">\n                    <value index=\"vDEF\">{powermail_all}</value>\n                    <value index=\"_TRANSFORM_vDEF.vDEFbase\">&lt;p&gt;{powermail_all}&lt;/p&gt;</value>\n                </field>\n                <field index=\"settings.flexform.thx.redirect\">\n                    <value index=\"vDEF\">14</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(4,7,0,0,0,'',0,0,0,0,0,0,1448694544,1415256296,1,0,0,256,'textmedia','Impressum',NULL,'',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:3:{s:5:\"CType\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(5,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415256387,1,0,0,512,'textmedia','Datenschutzerklärung',NULL,'Wir,<strong> [Anbieterin, Anschrift]</strong>,&nbsp;nehmen den Schutz Ihrer persönlichen Daten sehr ernst und halten uns strikt an die Regeln der Datenschutzgesetze. Personenbezogene Daten werden auf dieser Webseite nur im technisch notwendigen Umfang erhoben. In keinem Fall werden die erhobenen Daten verkauft oder aus anderen Gründen an Dritte weitergegeben.\r\nDie nachfolgende Erklärung gibt Ihnen einen Überblick darüber, wie wir diesen Schutz gewährleisten und welche Art von Daten zu welchem Zweck erhoben werden.\r\n<h3>Datenverarbeitung auf dieser Internetseite </h3>\r\n<strong>[Anbieterin]&nbsp;</strong>erhebt und speichert automatisch in ihren Server Log Files Informationen, die Ihr Browser an uns übermittelt. Dies sind:\r\n<ul><li>Browsertyp/ -version verwendetes Betriebssystem&nbsp;</li><li>Referrer URL (die zuvor besuchte Seite)&nbsp;</li><li>Hostname des zugreifenden Rechners (IP Adresse)&nbsp;</li><li>Uhrzeit der Serveranfrage.</li></ul>\r\nDiese Daten sind nicht bestimmten Personen zuordenbar. Eine Zusammenführung dieser Daten mit anderen Datenquellen wird nicht vorgenommen, die Daten werden zudem nach einer statistischen Auswertung gelöscht.\r\n<h3>Cookies </h3>\r\nUnsere Internetseiten verwenden an mehreren Stellen sogenannte Cookies. Diese dienen dazu, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen. Cookies sind kleine Textdateien, welche auf Ihrem Rechner abgelegt werden und die Ihr Browser speichert. Die meisten der von uns verwendeten Cookies sind &quot;Session-Cookies&quot;. Sie werden nach Ende Ihres Besuchs automatisch gelöscht. ',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(6,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415256406,1,0,0,768,'textmedia','Newsletter',NULL,'Wenn Sie den auf der Webseite angebotenen  Newsletter empfangen möchten, benötigen wir von Ihnen eine gültige  E-Mail-Adresse, Ihren Namen&nbsp;sowie Informationen, die uns die Überprüfung  gestatten, dass Sie der Inhaber der angegebenen E-Mail-Adresse sind  bzw. deren Inhaber mit dem Empfang des Newsletters einverstanden ist.  Weitere Daten werden nicht erhoben. Ihre Einwilligung zur Speicherung  der E-Mail-Adresse sowie deren Nutzung zum Versand des Newsletters  können Sie jederzeit widerrufen. Der Bezug des Newsletters kann  jederzeit widerrufen werden. Einen Link auf die Abmeldeseite finden Sie  am Ende eines jeden Newsletters. Die von Ihnen angegebenen Daten werden  dabei gelöscht.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(7,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415256427,1,0,0,1024,'textmedia','Verschlüsselte Datenübertragung',NULL,'Diese Webseite  arbeitet mit einem entsprechenden Sicherheitszertifikat und  verschlüsselt alle persönlichen und auftragsbezogenen Daten via  SSL-Verschlüsselung 128bit für höchste Datensicherheit und Wahrung Ihrer  Privatsphäre. Alle Seitenaufrufe erfolgen&nbsp;mit dieser  Verschlüsselungsmethode. Sie erkennen dies am im Browser angezeigten  Internet-Protokoll (https), siehe Adresszeile in Ihrem Browser.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(8,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415256793,1,0,0,1280,'textmedia','Google Analytics',NULL,'Diese Website benutzt Google Analytics, einen Webanalysedienst der Google Inc. („Google“). Google Analytics verwendet sog. „Cookies“, Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie ermöglichen. Die durch den Cookie erzeugten Informationen über Ihre Benutzung dieser Website werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert. Im Falle der Aktivierung der IP-Anonymisierung auf dieser Webseite, wird Ihre IP-Adresse von Google jedoch innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum zuvor gekürzt. Nur in Ausnahmefällen wird die volle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber zu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengeführt. Sie können die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website vollumfänglich werden nutzen können. Sie können darüber hinaus die Erfassung der durch das Cookie erzeugten und auf Ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem sie das unter dem folgenden Link (<link http://tools.google.com/dlpage/gaoptout?hl=de _blank external-link-new-window \"Browser-Add-on zur Deaktivierung von Google Analytics\">http://tools.google.com/dlpage/gaoptout?hl=de</link>) verfügbare Browser-Plugin herunterladen und installieren.\r\nNähere Informationen hierzu finden Sie unter&nbsp;<link http://tools.google.com/dlpage/gaoptout?hl=de _blank external-link-new-window \"Browser-Add-on zur Deaktivierung von Google Analytics\">tools.google.com/dlpage/gaoptout</link>&nbsp;&nbsp; bzw. unter <link http://www.google.com/intl/de/analytics/learn/privacy.html _blank external-link-new-window \"Google Datenschutzerklärung\">www.google.com/intl/de/analytics/learn/privacy.html</link>&nbsp;(allgemeine Informationen zu Google Analytics und Datenschutz). Wir weisen Sie darauf hin, dass auf dieser Webseite Google Analytics um den Code „gat._anonymizeIp();“ erweitert wurde, um eine anonymisierte Erfassung von IP-Adressen (sog. IP-Masking) zu gewährleisten.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(9,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415256973,1,0,0,1536,'textmedia','Piwik Webanalytics',NULL,'Diese  Website benutzt Piwik, eine Open-Source-Software zur statistischen  Auswertung der Besucherzugriffe. Piwik verwendet sog. “Cookies”,  Textdateien, die auf Ihrem Computer gespeichert werden und die eine  Analyse der Benutzung der Website durch Sie ermöglichen. Die durch den  Cookie erzeugten Informationen über Ihre Benutzung dieses  Internetangebotes werden auf dem Server des Anbieters in Deutschland  gespeichert. Die IP-Adresse wird sofort nach der Verarbeitung und vor  deren Speicherung anonymisiert. Sie können die Installation der Cookies  durch eine entsprechende Einstellung Ihrer Browser Software verhindern;  wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls  nicht sämtliche Funktionen dieser Website vollumfänglich nutzen können.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(10,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415257297,1,0,0,1792,'html','Piwik Iframe für Tracking-Deaktivierung',NULL,'\r\n',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(11,9,0,0,0,'',0,0,0,0,0,0,1455006570,1415257552,1,0,0,2048,'textmedia','Facebook Social Plugins',NULL,'Diese Website verwendet sogenannte Social Plugins (&quot;Plugins&quot;) des sozialen Netzwerkes Facebook , das von der Facebook Inc., 1601 S. California Ave, Palo Alto, CA 94304, USA (&quot;Facebook&quot;) betrieben wird. Die Plugins sind mit einem Facebook-Logo oder dem Zusatz &quot;Soziales Plug-in von Facebook&quot; gekennzeichnet.\r\nWenn Sie eine Seite unseres Webauftritts aufrufen, die ein solches Plugin enthält, baut Ihr Browser eine direkte Verbindung mit den Servern von Facebook auf. Der Inhalt des Plugins wird von Facebook direkt an Ihren Browser übermittelt und von diesem in die Webseite eingebunden. Durch die Einbindung der Plugins erhält Facebook die Information, dass Sie die entsprechende Seite unseres Webauftritts aufgerufen haben. Sind Sie bei Facebook eingeloggt, kann Facebook den Besuch Ihrem Facebook-Konto direkt zuordnen. Wenn Sie mit den Plugins interagieren, zum Beispiel den &quot;Gefällt mir&quot;-Button betätigen, wird die entsprechende Information von Ihrem Browser direkt an Facebook übermittelt und dort gespeichert. Wenn Sie nicht möchten, dass Facebook die über unseren Webauftritt gesammelten Daten Ihrem Facebook-Konto zuordnet, müssen Sie sich vor Ihrem Besuch unserer Website bei Facebook ausloggen.\r\nZweck und Umfang der Datenerhebung und die weitere Verarbeitung und Nutzung der Daten durch Facebook sowie Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre entnehmen Sie bitte den Datenschutzhinweisen von Facebook (<link http://www.facebook.com/policy.php _blank external-link-new-window \"Facebook Datenverwendungsrichtlinien\">www.facebook.com/policy.php</link>).',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(12,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415257927,1,0,0,2304,'textmedia','Google +1',NULL,'Unser Internetauftritt verwendet die “+1?-Schaltfläche des sozialen Netzwerkes Google Plus, welches von der Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States betrieben wird (“Google”). Der Button ist an dem Zeichen “+1? auf weißem oder farbigen Hintergrund erkennbar.\r\nWenn Sie eine Webseite unseres Internetauftritts aufrufen, die eine solche Schaltfläche enthält, baut Ihr Browser eine direkte Verbindung mit den Servern von Google auf. Der Inhalt der “+1?-Schaltfläche wird von Google direkt an Ihren Browser übermittelt und von diesem in die Webseite eingebunden. Wir haben daher keinen Einfluss auf den Umfang der Daten, die Google mit der Schaltfläche erhebt. Laut Google werden ohne einen Klick auf die Schaltfälche keine personenbezogenen Daten erhoben. Nur bei eingeloggten Mitgliedern, werden solche Daten, unter anderem die IP-Adresse, erhoben und verarbeitet.\r\nZweck und Umfang der Datenerhebung und die weitere Verarbeitung und Nutzung der Daten durch Google sowie Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre entnehmen Sie bitte Googles Datenschutzhinweisen zu der “+1?-Schaltfläche: <link https://www.google.com/policies/privacy/partners/?hl=de _blank external-link-new-window \"Datennutzung durch Google\">https://www.google.com/policies/privacy/partners/?hl=de</link>&nbsp; und der FAQ: <link http://support.google.com/plus/bin/answer.py?hl=de&answer=1319578&rd=1 _blank external-link-new-window \"Datenschutz bei der Nutzung der +1-Schaltfläche\">http://support.google.com/plus/bin/answer.py?hl=de&amp;answer=1319578&amp;rd=1</link> \r\nWenn Sie Google Plus-Mitglied sind und nicht möchten, dass Google über unseren Internetauftritt Daten über Sie sammelt und mit Ihren bei Google gespeicherten Mitgliedsdaten verknüpft, müssen Sie sich vor Ihrem Besuch unseres Internetauftritts bei Google Plus ausloggen.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(13,9,0,0,0,'',0,0,0,0,0,0,1448694626,1415258092,1,0,0,2816,'textmedia','Auskunftsrecht ',NULL,'Sie haben jederzeit das Recht auf Auskunft über die bezüglich Ihrer Person gespeicherten Daten, deren Herkunft und Empfänger sowie den Zweck der Speicherung. Auskunft über die gespeicherten Daten gibt der Datenschutzbeauftragte der <strong>[Anbieterin + E-Mail]</strong>.<br />',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:5:\"CType\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(14,9,0,0,0,'',0,0,0,0,0,0,1455005767,1415258114,1,0,0,3072,'textmedia','Weitere Informationen ',NULL,'Ihr Vertrauen ist uns wichtig. Daher möchten wir Ihnen jederzeit Rede und Antwort bezüglich der Verarbeitung Ihrer personenbezogenen Daten stehen. Wenn Sie Fragen haben, die Ihnen diese Datenschutzerklärung nicht beantworten konnte oder wenn Sie zu einem Punkt vertiefte Informationen wünschen, wenden Sie sich bitte jederzeit an den Datenschutzbeauftragten der <strong>[Anbieterin + E-Mail]</strong>.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(15,9,0,0,0,'',0,0,0,0,0,0,1455006587,1415258433,1,0,0,2560,'textmedia','Twitter',NULL,'Dieses Angebot – soweit zutreffend – nutzt die Schaltflächen des Dienstes Twitter. Diese Schaltflächen werden angeboten durch die Twitter Inc., 795 Folsom St., Suite 600, San Francisco, CA 94107, USA. Sie sind an Begriffen wie &quot;Twitter&quot; oder &quot;Folge&quot;, verbunden mit einem stillisierten blauen Vogel erkennbar. Mit Hilfe der Schaltflächen ist es möglich einen Beitrag oder Seite dieses Angebotes bei Twitter zu teilen oder dem Anbieter bei Twitter zu folgen. Wenn ein Nutzer eine Webseite dieses Internetauftritts aufruft, die einen solchen Button enthält, baut sein Browser eine direkte Verbindung mit den Servern von Twitter auf. Der Inhalt des Twitter-Schaltflächen wird von Twitter direkt an den Browser des Nutzers übermittelt. Der Anbieter hat daher keinen Einfluss auf den Umfang der Daten, die Twitter mit Hilfe dieses Plugins erhebt und informiert die Nutzer entsprechend seinem Kenntnisstand. Nach diesem wird lediglich die IP-Adresse des Nutzers die URL der jeweiligen Webseite beim Bezug des Buttons mit übermittelt, aber nicht für andere Zwecke, als die Darstellung des Buttons, genutzt. Weitere Informationen hierzu finden sich in der Datenschutzerklärung von Twitter unter <link http://twitter.com/privacy _blank external-link-new-window \"Twitter Datenschutzerklärung\">http://twitter.com/privacy</link>.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(16,9,0,0,0,'',0,0,0,0,0,0,1415258559,1415258559,1,0,0,256,'header','Datenschutz',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(17,7,0,0,0,'',0,0,0,0,0,0,1448694544,1415259411,1,0,0,512,'textmedia','',NULL,'<h3>Herausgeber</h3>\r\nMuster GmbH<br />Musterstraße 1<br />36341 Musterstadt\r\nTelefon: 06641 - 123456<br />Telefax: 06641 - 654321<br />E-Mail: <link example@example.com>example@example.com</link>\r\n<strong>Vertreten durch</strong><br />Max Example<br /><br /><strong>Registereintrag</strong><br />Eingetragen im Handelsregister.<br />Registergericht: Example<br />Registernummer: HR12345<br /><br /><strong>Umsatzsteuer-ID</strong><br />USt.-Identifikationsnummer nach §27a Umsatzsteuergesetz: DE123456789<br /><br /><strong>Wirtschafts-ID<br /></strong>Wirtschafts-IdNr: DE123456<br /><strong><br />Bildrechte</strong><br />Max Example - Fotolia.de',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:3:{s:5:\"CType\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(18,10,0,0,0,'',0,0,0,0,0,0,1415262455,1415262395,1,0,0,256,'menu','Sitemap',NULL,'',0,0,0,2,0,0,'0',0,0,NULL,'1',0,0,0,'','','',0,'1','2','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"menu_type\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(19,7,0,0,0,'',0,0,0,0,0,0,1448694544,1423737796,1,0,0,768,'textmedia','Realisation, Programmierung, Hosting',NULL,' <strong>team digital GmbH </strong>\r\nHopfmannsfelder Straße 7 <br />36341 Lauterbach  \r\nE-Mail: <link info@team-digital.de - mail info@team-digital.de>info@team-digital.de</link> <br />Web: <link http://www.team-digital.de/ _blank - www.team-digital.de>www.team-digital.de </link>',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:3:{s:5:\"CType\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(20,7,0,0,0,'',0,0,0,0,0,0,1448694544,1423737814,1,0,0,640,'div','Trennlinie',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"rowDescription\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,0,0,0,0,0,0,0,0,0,-2,'',0,0,0),(21,20,0,0,0,'',0,0,0,0,0,0,1455006964,1455006964,1,0,0,256,'textmedia','404 - Seite nicht gefunden','','Upps ... leider konnte die von Ihnen aufgerufene Seite nicht gefunden werden.\r\n\r\n» <link 1 - internal-link Startseite>Zur Startseite</link>\r\n» <link 7 - internal-link \"Inhaltsverzeichnis / Sitemap\">Zum Inhaltsverzeichnis</link>',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,0,0,0,0,-2,'',0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gridelements_backend_layout`
--

DROP TABLE IF EXISTS `tx_gridelements_backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gridelements_backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` mediumtext,
  `horizontal` tinyint(4) NOT NULL DEFAULT '0',
  `top_level_layout` tinyint(4) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `pi_flexform_ds` longtext,
  `pi_flexform_ds_file` mediumtext,
  `icon` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gridelements_backend_layout`
--

LOCK TABLES `tx_gridelements_backend_layout` WRITE;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` DISABLE KEYS */;
INSERT INTO `tx_gridelements_backend_layout` VALUES (1,13,1415183398,1407484025,1,0,0,0,'',0,0,0,0,0,0,256,0,0,'70-30','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colspan = 2\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','grid-2spaltig70-30.png'),(2,13,1415183348,1407484125,1,0,0,0,'',0,0,0,0,0,0,128,0,0,'30-70','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colspan = 2\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','grid-2spaltig30-70.png'),(3,13,1415183358,1407484161,1,0,0,0,'',0,0,0,0,0,0,192,0,0,'50-50','',0,'',0,0,'backend_layout {\r\n	colCount = 2\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','grid-2spaltig-50-50.png'),(4,13,1415183369,1407484208,1,0,0,0,'',0,0,0,0,0,0,224,0,0,'33-33-33','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt mitte\r\n					colPos = 1\r\n				}\r\n				3 {\r\n					name = Inhalt rechts\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','grid-3spaltig-33.png'),(5,13,1415183386,1407484301,1,0,0,0,'',0,0,0,0,0,0,240,0,0,'25-25-25-25','',0,'',0,0,'backend_layout {\r\n	colCount = 4\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt mitte links\r\n					colPos = 1\r\n				}\r\n				3 {\r\n					name = Inhalt mitte rechts\r\n					colPos = 2\r\n				}\r\n				4 {\r\n					name = Inhalt rechts\r\n					colPos = 3\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','grid-4spaltig-25.png');
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_field`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_field` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `settings` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `content_element` int(11) NOT NULL DEFAULT '0',
  `text` mediumtext NOT NULL,
  `prefill_value` mediumtext NOT NULL,
  `placeholder` mediumtext NOT NULL,
  `create_from_typoscript` mediumtext NOT NULL,
  `validation` int(11) NOT NULL DEFAULT '0',
  `validation_configuration` varchar(255) NOT NULL DEFAULT '',
  `css` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `multiselect` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `datepicker_settings` varchar(255) NOT NULL DEFAULT '',
  `feuser_value` varchar(255) NOT NULL DEFAULT '',
  `sender_email` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sender_name` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `mandatory` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `own_marker_select` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `marker` varchar(255) NOT NULL DEFAULT '',
  `auto_marker` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_field`
--

LOCK TABLES `tx_powermail_domain_model_field` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_field` DISABLE KEYS */;
INSERT INTO `tx_powermail_domain_model_field` VALUES (1,15,1,'Vorname','input','','',0,'','','','',0,'','','',0,'','',0,1,1,0,'vorname',0,1415255714,1415255588,1,0,0,0,0,1,0,0,0,'',0,0,0,0,0,0,0,0,'a:17:{s:5:\"title\";N;s:4:\"type\";N;s:12:\"sender_email\";N;s:11:\"sender_name\";N;s:9:\"mandatory\";N;s:10:\"validation\";N;s:13:\"prefill_value\";N;s:11:\"placeholder\";N;s:12:\"feuser_value\";N;s:3:\"css\";N;s:11:\"description\";N;s:6:\"marker\";N;s:17:\"own_marker_select\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(2,15,1,'Nachname','input','','',0,'','','','',0,'','','',0,'','',0,1,1,0,'nachname',0,1415255714,1415255588,1,0,0,0,0,2,0,0,0,'',0,0,0,0,0,0,0,0,'a:17:{s:5:\"title\";N;s:4:\"type\";N;s:12:\"sender_email\";N;s:11:\"sender_name\";N;s:9:\"mandatory\";N;s:10:\"validation\";N;s:13:\"prefill_value\";N;s:11:\"placeholder\";N;s:12:\"feuser_value\";N;s:3:\"css\";N;s:11:\"description\";N;s:6:\"marker\";N;s:17:\"own_marker_select\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(3,15,1,'Straße','input','','',0,'','','','',0,'','','',0,'','',0,0,0,0,'strae',0,1415255714,1415255588,1,0,0,0,0,3,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}'),(9,15,1,'absenden','submit','','',0,'','','','',0,'','','',0,'','',0,0,0,0,'absenden',0,1415255714,1415255714,1,0,0,0,0,9,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:4:\"type\";N;s:11:\"description\";N;s:17:\"own_marker_select\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(4,15,1,'PLZ','input','','',0,'','','','',0,'','','',0,'','',0,0,0,0,'plz',0,1415255714,1415255588,1,0,0,0,0,4,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}'),(5,15,1,'Ort','input','','',0,'','','','',0,'','','',0,'','',0,0,0,0,'ort',0,1415255714,1415255588,1,0,0,0,0,5,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}'),(6,15,1,'Telefon','input','','',0,'','','','',0,'','','',0,'','',0,0,0,0,'telefon',0,1415255714,1415255588,1,0,0,0,0,6,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}'),(7,15,1,'E-Mail','input','','',0,'','','','',1,'','','',0,'','',1,0,1,0,'e_mail',0,1415255714,1415255588,1,0,0,0,0,7,0,0,0,'',0,0,0,0,0,0,0,0,'a:17:{s:5:\"title\";N;s:4:\"type\";N;s:12:\"sender_email\";N;s:11:\"sender_name\";N;s:9:\"mandatory\";N;s:10:\"validation\";N;s:13:\"prefill_value\";N;s:11:\"placeholder\";N;s:12:\"feuser_value\";N;s:3:\"css\";N;s:11:\"description\";N;s:6:\"marker\";N;s:17:\"own_marker_select\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(8,15,1,'Ihre Anfrage','textarea','','',0,'','','','',0,'','','',0,'','',0,0,1,0,'ihreanfrage',0,1415255714,1415255588,1,0,0,0,0,8,0,0,0,'',0,0,0,0,0,0,0,0,'a:17:{s:5:\"title\";N;s:4:\"type\";N;s:12:\"sender_email\";N;s:11:\"sender_name\";N;s:9:\"mandatory\";N;s:10:\"validation\";N;s:13:\"prefill_value\";N;s:11:\"placeholder\";N;s:12:\"feuser_value\";N;s:3:\"css\";N;s:11:\"description\";N;s:6:\"marker\";N;s:17:\"own_marker_select\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_powermail_domain_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_form`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_form` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `css` varchar(255) NOT NULL DEFAULT '',
  `pages` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_form`
--

LOCK TABLES `tx_powermail_domain_model_form` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_form` DISABLE KEYS */;
INSERT INTO `tx_powermail_domain_model_form` VALUES (1,15,'Kontaktformular',0,'','1',1415255588,1415255470,1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:5:\"pages\";N;s:4:\"note\";N;s:3:\"css\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_powermail_domain_model_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_page`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_page` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `forms` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `css` varchar(255) NOT NULL DEFAULT '',
  `fields` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_page`
--

LOCK TABLES `tx_powermail_domain_model_page` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_page` DISABLE KEYS */;
INSERT INTO `tx_powermail_domain_model_page` VALUES (1,15,1,'Kontaktformular','',9,1415255588,1415255588,1,0,0,0,0,1,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:6:\"fields\";N;s:3:\"css\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_powermail_domain_model_page` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-18 16:24:45
