-- MySQL dump 10.13  Distrib 5.1.61, for pc-linux-gnu (i686)
--
-- Host: mysql5.td-demo.de    Database: db283884_46
-- ------------------------------------------------------
-- Server version	5.5.28-log

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
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
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
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1407487484,256,1407487414,1,'Root Template','',0,0,0,1,3,NULL,'<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/templates/default/TypoScript/Constants.ts\">','<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/templates/default/TypoScript/ROOT.ts\">\r\n\r\n# Default PAGE object:\r\npage = PAGE\r\npage.10 = TEXT\r\npage.10.value = HELLO WORLD!\r\n','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

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
  `description` text NOT NULL,
  `config` text NOT NULL,
  `icon` text NOT NULL,
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
INSERT INTO `backend_layout` VALUES (1,13,0,0,0,'',0,0,0,0,0,0,1407487616,1407483682,1,0,0,256,'1-Spalter','Einspaltige Backend-Vorlage','backend_layout {\r\n	colCount = 1\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt\r\n					colPos = 0\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n',''),(2,13,0,0,0,'',0,0,0,0,0,0,1407487627,1407483783,1,0,0,512,'2-Spalter','Zweispaltige Backend-Vorlage','backend_layout {\r\n	colCount = 2\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 1\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n',''),(3,13,0,0,0,'',0,0,0,0,0,0,1407487632,1407483929,1,0,0,768,'3-Spalter','3-spaltige Backend-Vorlage','backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalts links\r\n					colPos = 1\r\n				}\r\n				2 {\r\n					name = Hauptinhalt\r\n					colPos = 0\r\n				}\r\n				3 {\r\n					name = Inhalt rechts\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','');
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
  `description` text,
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
INSERT INTO `be_groups` VALUES (1,0,1407482887,'Redakteure','pages_language_overlay:description,pages_language_overlay:media,pages_language_overlay:nav_title,pages_language_overlay:hidden,pages_language_overlay:starttime,pages_language_overlay:endtime,pages_language_overlay:doktype,pages_language_overlay:shortcut_mode,tx_powermail_domain_model_answers:value,tx_powermail_domain_model_answers:field,tx_powermail_domain_model_answers:mail,tx_powermail_domain_model_answers:sys_language_uid,tx_powermail_domain_model_answers:starttime,tx_powermail_domain_model_answers:endtime,tx_powermail_domain_model_answers:l10n_parent,tx_powermail_domain_model_answers:hidden,sys_file_reference:alternative,sys_file_reference:description,sys_file_reference:link,sys_file_reference:title,tx_powermail_domain_model_fields:feuser_value,tx_powermail_domain_model_fields:sender_name,tx_powermail_domain_model_fields:sender_email,tx_powermail_domain_model_fields:content_element,tx_powermail_domain_model_fields:mandatory,tx_powermail_domain_model_fields:sys_language_uid,tx_powermail_domain_model_fields:starttime,tx_powermail_domain_model_fields:endtime,tx_powermail_domain_model_fields:l10n_parent,tx_powermail_domain_model_fields:hidden,tx_powermail_domain_model_fields:validation,tx_powermail_domain_model_forms:sys_language_uid,tx_powermail_domain_model_forms:starttime,tx_powermail_domain_model_forms:endtime,tx_powermail_domain_model_forms:l10n_parent,tx_powermail_domain_model_forms:hidden,tx_powermail_domain_model_mails:sender_mail,tx_powermail_domain_model_mails:sender_name,tx_powermail_domain_model_mails:answers,tx_powermail_domain_model_mails:subject,tx_powermail_domain_model_mails:receiver_mail,tx_powermail_domain_model_mails:form,tx_powermail_domain_model_mails:feuser,tx_powermail_domain_model_mails:marketing_referer,tx_powermail_domain_model_mails:sys_language_uid,tx_powermail_domain_model_mails:starttime,tx_powermail_domain_model_mails:endtime,tx_powermail_domain_model_mails:l10n_parent,tx_powermail_domain_model_mails:hidden,pages:newUntil,pages:backend_layout_next_level,pages:backend_layout,pages:description,pages:media,pages:module,pages:nav_hide,pages:content_from_pid,pages:extendToSubpages,pages:nav_title,pages:no_search,pages:hidden,pages:starttime,pages:keywords,pages:endtime,pages:doktype,pages:shortcut_mode,pages:target,tx_powermail_domain_model_pages:sys_language_uid,tx_powermail_domain_model_pages:starttime,tx_powermail_domain_model_pages:endtime,tx_powermail_domain_model_pages:l10n_parent,tx_powermail_domain_model_pages:hidden,tt_content:spaceAfter,tt_content:spaceBefore,tt_content:altText,tt_content:imagecaption_position,tt_content:header_position,tt_content:imagewidth,tt_content:date,tt_content:imageheight,tt_content:tx_gridelements_children,tt_content:image_noRows,tt_content:image_zoom,tt_content:linkToTop,tt_content:header_link,tt_content:image_link,tt_content:imageorient,tt_content:imageborder,tt_content:section_frame,tt_content:tx_gridelements_container,tt_content:tx_gridelements_columns,tt_content:tx_gridelements_backend_layout,tt_content:colPos,tt_content:imagecols,tt_content:sys_language_uid,tt_content:starttime,tt_content:endtime,tt_content:titleText,tt_content:header_layout,tt_content:l18n_parent,tt_content:hidden','tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:multimedia:ALLOW,tt_content:CType:media:ALLOW,tt_content:CType:menu:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:CType:gridelements_pi1:ALLOW,tt_content:list_type:powermail_pi1:ALLOW','',NULL,'1','1,4,3,254,199','pages,sys_file,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,pages_language_overlay,tt_content,tx_gridelements_backend_layout,tx_powermail_domain_model_forms,tx_powermail_domain_model_pages,tx_powermail_domain_model_fields,tx_powermail_domain_model_mails,tx_powermail_domain_model_answers','pages,sys_file,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,pages_language_overlay,tt_content,tx_gridelements_backend_layout,tx_powermail_domain_model_forms,tx_powermail_domain_model_pages,tx_powermail_domain_model_fields,tx_powermail_domain_model_mails,tx_powermail_domain_model_answers',1407481661,1,'web,web_layout,web_list,file,file_list,user,user_setup','1','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,files_upload,renameFile,moveFile,copyFile,deleteFile',0,'Standardbenutzergruppen','',0,'options.pageTree.showNavTitle = 1\r\noptions.pageTree.showDomainNameWithTitle = 1','',0,1,'');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
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
  `TSconfig` text,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
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
  `media` text,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
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
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_ddgooglesitemap_lastmod` varchar(255) NOT NULL DEFAULT '',
  `tx_ddgooglesitemap_priority` int(3) NOT NULL DEFAULT '5',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1407487532,256,0,1,0,31,27,0,0,1407479747,1,0,'Startseite',1,'<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/templates/default/TsConfig/page.ts\">',0,1,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,'',0,'',0,'',0,1407487452,'','',0,'','','',0,0,0,0,'',0,0,'1','1',0,'1407487414,1407487430,1407487452,1407487484,1407487532',5,'',0,0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1407483013,256,0,1,0,31,27,0,0,1407483013,1,0,'Über uns',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483014',5,'',0,0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1407483013,512,0,1,0,31,27,0,0,1407483013,1,0,'Produkte',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483014',5,'',0,0,0),(4,1,0,0,0,'',0,0,0,0,0,0,1407483013,768,0,1,0,31,27,0,0,1407483013,1,0,'Leistungen',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483014',5,'',0,0,0),(5,1,0,0,0,'',0,0,0,0,0,0,1407483013,1024,0,1,0,31,27,0,0,1407483013,1,0,'Kontakt',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483014',5,'',0,0,0),(6,1,0,0,0,'',0,0,0,0,0,0,1407483106,1280,0,1,0,31,27,0,0,1407483013,1,0,'Meta',199,NULL,0,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483014,1407483106',5,'',0,1,0),(7,6,0,0,0,'',0,0,0,0,0,0,1407483066,256,0,1,0,31,27,0,0,1407483066,1,0,'Impressum',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483066',5,'',0,0,0),(8,6,0,0,0,'',0,0,0,0,0,0,1407483088,512,0,1,0,31,27,0,0,1407483066,1,0,'Kontakt',4,NULL,0,0,0,0,'',0,0,1,5,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483067,1407483088',5,'',0,0,0),(9,6,0,0,0,'',0,0,0,0,0,0,1407483066,768,0,1,0,31,27,0,0,1407483066,1,0,'Datenschutz',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483067',5,'',0,0,0),(10,6,0,0,0,'',0,0,0,0,0,0,1407483066,1024,0,1,0,31,27,0,0,1407483066,1,0,'Sitemap',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483067',5,'',0,0,0),(11,6,0,0,0,'',0,0,0,0,0,0,1407483098,1280,0,1,0,31,27,0,0,1407483066,1,0,'Startseite',4,NULL,0,0,0,0,'',0,0,1,1,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483067,1407483098',5,'',0,0,0),(12,1,0,0,0,'',0,0,0,0,0,0,1407483122,128,0,1,0,31,27,0,0,1407483116,1,0,'Globale Inhalte',254,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407483116,1407483121,1407483122',5,'',0,0,0),(13,1,0,0,0,'',0,0,0,0,0,0,1407487697,1536,0,1,0,31,27,0,0,1407483585,1,0,'Storage Folder',254,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,'1407487640,1407487647,1407487654,1407487662,1407487697',5,'',0,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
  `description` text,
  `horizontal` tinyint(4) NOT NULL DEFAULT '0',
  `top_level_layout` tinyint(4) NOT NULL DEFAULT '0',
  `config` text,
  `pi_flexform_ds` mediumtext,
  `pi_flexform_ds_file` text,
  `icon` text,
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
INSERT INTO `tx_gridelements_backend_layout` VALUES (1,13,1407487697,1407484025,1,0,0,0,'',0,0,0,0,0,0,256,0,0,'70-30','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colspan = 2\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','',''),(2,13,1407487640,1407484125,1,0,0,0,'',0,0,0,0,0,0,128,0,0,'30-70','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colspan = 2\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','',''),(3,13,1407487647,1407484161,1,0,0,0,'',0,0,0,0,0,0,192,0,0,'50-50','',0,'',0,0,'backend_layout {\r\n	colCount = 2\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt rechts\r\n					colPos = 1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','',''),(4,13,1407487654,1407484208,1,0,0,0,'',0,0,0,0,0,0,224,0,0,'33-33-33','',0,'',0,0,'backend_layout {\r\n	colCount = 3\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt mitte\r\n					colPos = 1\r\n				}\r\n				3 {\r\n					name = Inhalt rechts\r\n					colPos = 2\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','',''),(5,13,1407487662,1407484301,1,0,0,0,'',0,0,0,0,0,0,240,0,0,'25-25-25-25','',0,'',0,0,'backend_layout {\r\n	colCount = 4\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Inhalt links\r\n					colPos = 0\r\n				}\r\n				2 {\r\n					name = Inhalt mitte links\r\n					colPos = 1\r\n				}\r\n				3 {\r\n					name = Inhalt mitte rechts\r\n					colPos = 2\r\n				}\r\n				4 {\r\n					name = Inhalt rechts\r\n					colPos = 3\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','','','');
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-08 10:49:59
