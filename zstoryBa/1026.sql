-- MySQL dump 10.13  Distrib 5.7.8-rc, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bronline
-- ------------------------------------------------------
-- Server version	5.7.8-rc-log

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
-- Table structure for table `article_article`
--

DROP TABLE IF EXISTS `article_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `content` longtext,
  `image` varchar(100) DEFAULT NULL,
  `abstract` varchar(300) DEFAULT NULL,
  `click_nums` int(11) NOT NULL,
  `like_nums` int(11) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `tag` varchar(15) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_article`
--

LOCK TABLES `article_article` WRITE;
/*!40000 ALTER TABLE `article_article` DISABLE KEYS */;
INSERT INTO `article_article` (`id`, `title`, `author`, `content`, `image`, `abstract`, `click_nums`, `like_nums`, `category`, `tag`, `add_time`, `update_time`) VALUES (2,'title2','a','<ol style=\"box-sizing: border-box; margin-bottom: 1.5em; margin-left: 3em; padding-left: 0px; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>查了半天，结论是没有在 django 中直接配置一张表的 charset 的方式。</p></li><li><p>网上搜到的都是让人直接去配置数据库的 charset ，真让人无语。生成创建表的时候在后面加一行&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">CHARSET=utf8mb4</code>很难吗。</p></li><li><p>在 mac 上的 mysql 安装的时候是没有配置配置项的，可以自己创建。</p></li><li><p>可以使用&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">mysql --help | grep &quot;Default options&quot; -A 1</code>&nbsp;来知道 mysql 的配置寻找顺序。我本机的是&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">/etc/my.cnf /etc/mysql/my.cnf /usr/local/mysql/etc/my.cnf ~/.my.cnf</code></p></li><li><p>配置下就可以了，我是参考&nbsp;<a href=\"https://www.jianshu.com/p/8aa41d65d8d8\" rel=\"nofollow noreferrer\" target=\"_blank\" style=\"box-sizing: border-box; background: transparent; color: rgb(0, 154, 97); text-decoration-line: none; outline: 0px; border-bottom: 1px solid rgba(0, 154, 97, 0.25); padding-bottom: 1px;\">这儿</a>配置了下，包括数据库库编码，客户端通编码等</p></li></ol><p><br/></p>','','1啊实打实打算大',37,2,'123','asd','2018-10-15 18:22:00.000000','2018-10-15 18:22:00.000000');
INSERT INTO `article_article` (`id`, `title`, `author`, `content`, `image`, `abstract`, `click_nums`, `like_nums`, `category`, `tag`, `add_time`, `update_time`) VALUES (3,'title3','b','<ol style=\"box-sizing: border-box; margin-bottom: 1.5em; margin-left: 3em; padding-left: 0px; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>查了半天，结论是没有在 django 中直接配置一张表的 charset 的方式。</p></li><li><p>网上搜到的都是让人直接去配置数据库的 charset ，真让人无语。生成创建表的时候在后面加一行&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">CHARSET=utf8mb4</code>很难吗。</p></li><li><p>在 mac 上的 mysql 安装的时候是没有配置配置项的，可以自己创建。</p></li><li><p>可以使用&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">mysql --help | grep &quot;Default options&quot; -A 1</code>&nbsp;来知道 mysql 的配置寻找顺序。我本机的是&nbsp;<code style=\"box-sizing: border-box; font-family: &quot;Source Code Pro&quot;, Consolas, Menlo, Monaco, &quot;Courier New&quot;, monospace; font-size: 0.93em; padding: 2px 4px; color: rgb(199, 37, 78); background-color: rgb(249, 242, 244); border-radius: 4px;\">/etc/my.cnf /etc/mysql/my.cnf /usr/local/mysql/etc/my.cnf ~/.my.cnf</code></p></li><li><p>配置下就可以了，我是参考&nbsp;<a href=\"https://www.jianshu.com/p/8aa41d65d8d8\" rel=\"nofollow noreferrer\" target=\"_blank\" style=\"box-sizing: border-box; background: transparent; color: rgb(0, 154, 97); text-decoration-line: none; outline: 0px; border-bottom: 1px solid rgba(0, 154, 97, 0.25); padding-bottom: 1px;\">这儿</a>配置了下，包括数据库库编码，客户端通编码等</p></li></ol><p><br/></p>','','2啊实打实打算大',32,3,'321','ewew','2018-10-19 18:22:00.000000','2018-10-20 18:22:00.000000');
/*!40000 ALTER TABLE `article_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (4,'Can view log entry',1,'view_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (5,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (6,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (7,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (8,'Can add group',3,'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (9,'Can change group',3,'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (10,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (11,'Can view group',3,'view_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (12,'Can view permission',2,'view_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (13,'Can add content type',4,'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (14,'Can change content type',4,'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (15,'Can delete content type',4,'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (16,'Can view content type',4,'view_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (17,'Can add session',5,'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (18,'Can change session',5,'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (19,'Can delete session',5,'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (20,'Can view session',5,'view_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (21,'Can add 用户信息',6,'add_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (22,'Can change 用户信息',6,'change_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (23,'Can delete 用户信息',6,'delete_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (24,'Can add 轮播图',7,'add_banner');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (25,'Can change 轮播图',7,'change_banner');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (26,'Can delete 轮播图',7,'delete_banner');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (27,'Can add 邮箱验证码',8,'add_emailverifyrecord');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (28,'Can change 邮箱验证码',8,'change_emailverifyrecord');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (29,'Can delete 邮箱验证码',8,'delete_emailverifyrecord');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (30,'Can view 轮播图',7,'view_banner');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (31,'Can view 邮箱验证码',8,'view_emailverifyrecord');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (32,'Can view 用户信息',6,'view_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (33,'Can add 课程',9,'add_course');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (34,'Can change 课程',9,'change_course');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (35,'Can delete 课程',9,'delete_course');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (36,'Can add 课程资源',10,'add_courseresource');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (37,'Can change 课程资源',10,'change_courseresource');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (38,'Can delete 课程资源',10,'delete_courseresource');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (39,'Can add 章节',11,'add_lesson');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (40,'Can change 章节',11,'change_lesson');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (41,'Can delete 章节',11,'delete_lesson');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (42,'Can add 视频',12,'add_video');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (43,'Can change 视频',12,'change_video');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (44,'Can delete 视频',12,'delete_video');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (45,'Can view 课程',9,'view_course');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (46,'Can view 课程资源',10,'view_courseresource');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (47,'Can view 章节',11,'view_lesson');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (48,'Can view 视频',12,'view_video');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (49,'Can add 课程评论',13,'add_coursecomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (50,'Can change 课程评论',13,'change_coursecomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (51,'Can delete 课程评论',13,'delete_coursecomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (52,'Can add 用户咨询',14,'add_userask');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (53,'Can change 用户咨询',14,'change_userask');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (54,'Can delete 用户咨询',14,'delete_userask');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (55,'Can add 用户课程',15,'add_usercourse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (56,'Can change 用户课程',15,'change_usercourse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (57,'Can delete 用户课程',15,'delete_usercourse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (58,'Can add 用户收藏',16,'add_userfavorite');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (59,'Can change 用户收藏',16,'change_userfavorite');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (60,'Can delete 用户收藏',16,'delete_userfavorite');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (61,'Can add 用户消息',17,'add_usermessage');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (62,'Can change 用户消息',17,'change_usermessage');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (63,'Can delete 用户消息',17,'delete_usermessage');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (64,'Can view 课程评论',13,'view_coursecomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (65,'Can view 用户咨询',14,'view_userask');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (66,'Can view 用户课程',15,'view_usercourse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (67,'Can view 用户收藏',16,'view_userfavorite');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (68,'Can view 用户消息',17,'view_usermessage');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (69,'Can add 城市',18,'add_citydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (70,'Can change 城市',18,'change_citydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (71,'Can delete 城市',18,'delete_citydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (72,'Can add 课程机构',19,'add_courseorg');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (73,'Can change 课程机构',19,'change_courseorg');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (74,'Can delete 课程机构',19,'delete_courseorg');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (75,'Can add 教师',20,'add_teacher');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (76,'Can change 教师',20,'change_teacher');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (77,'Can delete 教师',20,'delete_teacher');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (78,'Can view 城市',18,'view_citydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (79,'Can view 课程机构',19,'view_courseorg');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (80,'Can view 教师',20,'view_teacher');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (81,'Can add Bookmark',21,'add_bookmark');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (82,'Can change Bookmark',21,'change_bookmark');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (83,'Can delete Bookmark',21,'delete_bookmark');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (84,'Can add User Setting',22,'add_usersettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (85,'Can change User Setting',22,'change_usersettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (86,'Can delete User Setting',22,'delete_usersettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (87,'Can add User Widget',23,'add_userwidget');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (88,'Can change User Widget',23,'change_userwidget');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (89,'Can delete User Widget',23,'delete_userwidget');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (90,'Can add log entry',24,'add_log');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (91,'Can change log entry',24,'change_log');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (92,'Can delete log entry',24,'delete_log');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (93,'Can view Bookmark',21,'view_bookmark');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (94,'Can view log entry',24,'view_log');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (95,'Can view User Setting',22,'view_usersettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (96,'Can view User Widget',23,'view_userwidget');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (97,'Can add captcha store',25,'add_captchastore');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (98,'Can change captcha store',25,'change_captchastore');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (99,'Can delete captcha store',25,'delete_captchastore');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (100,'Can view captcha store',25,'view_captchastore');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (101,'Can add 行业',26,'add_industrydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (102,'Can change 行业',26,'change_industrydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (103,'Can delete 行业',26,'delete_industrydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (104,'Can add 职位',27,'add_jobs');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (105,'Can change 职位',27,'change_jobs');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (106,'Can delete 职位',27,'delete_jobs');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (107,'Can view 行业',26,'view_industrydict');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (108,'Can view 职位',27,'view_jobs');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (109,'Can add 招聘机构',28,'add_recruiter');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (110,'Can change 招聘机构',28,'change_recruiter');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (111,'Can delete 招聘机构',28,'delete_recruiter');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (112,'Can view 招聘机构',28,'view_recruiter');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (113,'Can add 机构评论',29,'add_companycomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (114,'Can change 机构评论',29,'change_companycomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (115,'Can delete 机构评论',29,'delete_companycomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (116,'Can view 机构评论',29,'view_companycomments');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (117,'Can add 在线测试',30,'add_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (118,'Can change 在线测试',30,'change_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (119,'Can delete 在线测试',30,'delete_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (120,'Can view 在线测试',30,'view_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (121,'Can add 公司分级',31,'add_dataofcompany');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (122,'Can change 公司分级',31,'change_dataofcompany');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (123,'Can delete 公司分级',31,'delete_dataofcompany');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (124,'Can add 专业分级',32,'add_dataofmajor');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (125,'Can change 专业分级',32,'change_dataofmajor');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (126,'Can delete 专业分级',32,'delete_dataofmajor');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (127,'Can add 大学分级',33,'add_dataofuniversity');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (128,'Can change 大学分级',33,'change_dataofuniversity');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (129,'Can delete 大学分级',33,'delete_dataofuniversity');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (130,'Can view 公司分级',31,'view_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (131,'Can view 专业分级',32,'view_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (132,'Can view 大学分级',33,'view_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (133,'Can add 公司分级',31,'add_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (134,'Can change 公司分级',31,'change_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (135,'Can delete 公司分级',31,'delete_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (136,'Can add 专业分级',32,'add_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (137,'Can change 专业分级',32,'change_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (138,'Can delete 专业分级',32,'delete_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (139,'Can add 大学分级',33,'add_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (140,'Can change 大学分级',33,'change_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (141,'Can delete 大学分级',33,'delete_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (142,'Can add 公司分级',34,'add_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (143,'Can change 公司分级',34,'change_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (144,'Can delete 公司分级',34,'delete_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (145,'Can add 岗位分级',35,'add_departmentdata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (146,'Can change 岗位分级',35,'change_departmentdata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (147,'Can delete 岗位分级',35,'delete_departmentdata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (148,'Can add 专业分级',36,'add_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (149,'Can change 专业分级',36,'change_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (150,'Can delete 专业分级',36,'delete_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (151,'Can add 大学分级',37,'add_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (152,'Can change 大学分级',37,'change_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (153,'Can delete 大学分级',37,'delete_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (154,'Can view 公司分级',34,'view_companydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (155,'Can view 岗位分级',35,'view_departmentdata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (156,'Can view 专业分级',36,'view_majordata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (157,'Can view 大学分级',37,'view_universitydata');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (158,'Can add cors model',38,'add_corsmodel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (159,'Can change cors model',38,'change_corsmodel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (160,'Can delete cors model',38,'delete_corsmodel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (161,'Can view cors model',38,'view_corsmodel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (162,'Can add 文章',39,'add_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (163,'Can change 文章',39,'change_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (164,'Can delete 文章',39,'delete_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (165,'Can view 文章',39,'view_article');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_companydata`
--

DROP TABLE IF EXISTS `competitive_companydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_companydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_companydata`
--

LOCK TABLES `competitive_companydata` WRITE;
/*!40000 ALTER TABLE `competitive_companydata` DISABLE KEYS */;
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (1,'东方证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (2,'光大证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (3,'广发证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (4,'国泰君安','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (5,'国信证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (6,'海通证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (7,'华泰证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (8,'申万宏源','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (9,'兴业证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (10,'银河证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (11,'招商证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (12,'中金公司','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (13,'中信建投','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (14,'中信证券','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (15,'中银国际','证券公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (16,'安信证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (17,'北京高华','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (18,'渤海证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (19,'财通证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (20,'长江证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (21,'东海证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (22,'东莞证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (23,'东吴证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (24,'华创证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (25,'华福证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (26,'华林证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (27,'华融证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (28,'民生证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (29,'南京证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (30,'平安证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (31,'瑞银证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (32,'太平洋','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (33,'天风证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (34,'浙商证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (35,'中泰证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (36,'广州证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (37,'国金证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (38,'国开证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (39,'国元证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (40,'华安证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (41,'中原证券','证券公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (42,'爱建证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (43,'财达证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (44,'财富证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (45,'长城国瑞','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (46,'长城证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (47,'川财证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (48,'大通证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (49,'大同证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (50,'德邦证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (51,'第一创业','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (52,'东北证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (53,'东方财富','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (54,'东兴证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (55,'方正证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (56,'国都证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (57,'国海证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (58,'国联证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (59,'国融证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (60,'海际证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (61,'恒泰证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (62,'红塔证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (63,'宏信证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (64,'华宝证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (65,'华金证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (66,'华菁证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (67,'华龙证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (68,'华西证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (69,'华鑫证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (70,'华信证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (71,'江海证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (72,'金元证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (73,'九州证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (74,'开源证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (75,'联储证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (76,'联讯证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (77,'山西证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (78,'申港证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (79,'世纪证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (80,'首创证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (81,'万和证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (82,'万联证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (83,'网信证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (84,'五矿证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (85,'西部证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (86,'西南证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (87,'湘财证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (88,'新时代','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (89,'信达证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (90,'银泰证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (91,'英大证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (92,'中航证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (93,'中山证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (94,'中天证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (95,'中投证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (96,'中邮证券','证券公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (97,'南方基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (98,'华夏基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (99,'博时基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (100,'嘉实基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (101,'富国基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (102,'易方达基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (103,'国投瑞银基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (104,'招商基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (105,'广发基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (106,'兴全基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (107,'上投摩根基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (108,'东方基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (109,'中银基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (110,'汇添富基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (111,'工银瑞信基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (112,'交银施罗基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (113,'建信基金','公募基金',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (114,'国泰基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (115,'华安基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (116,'鹏华基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (117,'长盛基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (118,'大成基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (119,'宝盈基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (120,'银华基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (121,'泰达宏利基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (122,'长信基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (123,'景顺长城基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (124,'申万菱信基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (125,'天弘基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (126,'华泰柏瑞基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (127,'中邮创业基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (128,'中欧基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (129,'浦银安盛基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (130,'民生加银基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (131,'浙商基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (132,'平安大华基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (133,'财通基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (134,'前海开源基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (135,'兴业基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (136,'中信建投基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (137,'中金基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (138,'九泰基金','公募基金',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (139,'融通基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (140,'长城基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (141,'银河基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (142,'万家基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (143,'金鹰基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (144,'华宝基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (145,'摩根士丹基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (146,'国联安基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (147,'海富通基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (148,'泰信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (149,'天治基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (150,'诺安基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (151,'中海基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (152,'光大保德基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (153,'华富基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (154,'东吴基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (155,'国海富兰克林基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (156,'新华基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (157,'中信保诚基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (158,'华商基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (159,'汇丰晋信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (160,'益民基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (161,'信达澳银基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (162,'诺德基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (163,'金元顺安基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (164,'农银汇理基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (165,'西部利得基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (166,'富安达基基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (167,'方正富邦基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (168,'长安基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (169,'国金基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (170,'安信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (171,'德邦基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (172,'华宸未来','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (173,'红塔红土基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (174,'英大基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (175,'江信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (176,'太平基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (177,'华润元大基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (178,'东海基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (179,'中加基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (180,'中融基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (181,'国开泰富基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (182,'上银基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (183,'鑫元基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (184,'永赢基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (185,'兴银基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (186,'国寿安保基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (187,'圆信永丰基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (188,'北信瑞丰基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (189,'红土创新基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (190,'嘉合基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (191,'创金合信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (192,'泓德基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (193,'金信基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (194,'新疆前海基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (195,'新沃基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (196,'中科沃土基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (197,'富荣基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (198,'汇安基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (199,'先锋基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (200,'中航基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (201,'华泰保兴基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (202,'鹏扬基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (203,'恒生前海基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (204,'格林基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (205,'南华基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (206,'凯石基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (207,'国融基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (208,'东方阿尔基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (209,'恒越基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (210,'弘毅远方基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (211,'青松基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (212,'博道基金','公募基金',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (213,'中信信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (214,'重庆国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (215,'兴业国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (216,'上海国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (217,'华润深国投信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (218,'交银国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (219,'中融国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (220,'昆仑信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (221,'平安信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (222,'华宝信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (223,'建信信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (224,'大连华信信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (225,'中航信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (226,'华能贵诚信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (227,'西藏信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (228,'长安国际信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (229,'中国对外经济贸易信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (230,'五矿国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (231,'百瑞信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (232,'广东粤财信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (233,'四川信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (234,'中铁信托','信托公司',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (235,'新时代信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (236,'渤海国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (237,'光大兴陇信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (238,'国民信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (239,'北方国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (240,'国投泰康信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (241,'山东省国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (242,'北京国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (243,'上海爱建信托投资','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (244,'安徽国元信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (245,'华鑫国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (246,'江苏省国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (247,'中海信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (248,'陕西省国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (249,'中诚信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (250,'紫金信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (251,'华融国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (252,'厦门国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (253,'安信信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (254,'英大国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (255,'陆家嘴信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (256,'云南国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (257,'国通信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (258,'中江国际信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (259,'天津信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (260,'万向信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (261,'中国民生信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (262,'中粮信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (263,'西部信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (264,'中原信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (265,'大业信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (266,'新华信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (267,'中国金谷国际信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (268,'中建投信托','信托公司',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (269,'吉林省信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (270,'中泰信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (271,'苏州信托','信托公司',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (272,'浙商金汇信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (273,'华澳国际信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (274,'湖南省信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (275,'国联信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (276,'东莞信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (277,'杭州工商信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (278,'山西信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (279,'新疆长城新盛信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (280,'华宸信托','信托公司',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (281,'国家开发银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (282,'进出口银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (283,'农业发展银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (284,'中国工商银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (285,'中国建设银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (286,'中国银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (287,'中国农业银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (288,'交通银行','商业银行',1);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (289,'招商银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (290,'中信银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (291,'中国民生银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (292,'兴业银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (293,'上海浦东发展银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (294,'中国邮政储蓄银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (295,'中国光大银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (296,'平安银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (297,'华夏银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (298,'北京银行','商业银行',2);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (299,'广发银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (300,'上海银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (301,'江苏银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (302,'恒丰银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (303,'浙商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (304,'南京银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (305,'重庆农村商业银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (306,'盛京银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (307,'徽商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (308,'宁波银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (309,'上海农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (310,'北京农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (311,'渤海银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (312,'广州农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (313,'哈尔滨银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (314,'中原银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (315,'天津银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (316,'杭州银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (317,'成都农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (318,'厦门国际银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (319,'包商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (320,'锦州银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (321,'昆仑银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (322,'顺德农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (323,'重庆银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (324,'东莞农村商业银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (325,'成都银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (326,'天津农商银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (327,'吉林银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (328,'江西银行','商业银行',3);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (329,'广州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (330,'大连银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (331,'长沙银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (332,'郑州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (333,'苏州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (334,'青岛银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (335,'汉口银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (336,'深圳农村商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (337,'河北银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (338,'东莞银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (339,'武汉农村商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (340,'西安银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (341,'贵阳银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (342,'富滇银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (343,'兰州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (344,'贵州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (345,'青岛农商银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (346,'江苏江南农村商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (347,'洛阳银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (348,'九江银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (349,'华融湘江银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (350,'甘肃银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (351,'龙江银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (352,'杭州联合农村商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (353,'南海农商银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (354,'广西北部湾银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (355,'湖北银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (356,'萧山农商银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (357,'浙江稠州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (358,'广东南粤银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (359,'吉林九台农村商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (360,'南充市商业银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (361,'台州银行','商业银行',4);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (362,'齐鲁银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (363,'天津滨海农村商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (364,'长安银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (365,'重庆三峡银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (366,'温州银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (367,'陕西秦农农村商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (368,'宁夏银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (369,'威海市商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (370,'晋商银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (371,'珠海华润银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (372,'内蒙古银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (373,'桂林银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (374,'江苏常熟农村商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (375,'厦门银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (376,'唐山市商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (377,'阜新银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (378,'营口银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (379,'日照银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (380,'乌鲁木齐银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (381,'大连农商银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (382,'江苏江阴农村商业银行','商业银行',5);
INSERT INTO `competitive_companydata` (`id`, `name`, `type`, `rating`) VALUES (383,'福建海峡银行','商业银行',5);
/*!40000 ALTER TABLE `competitive_companydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_departmentdata`
--

DROP TABLE IF EXISTS `competitive_departmentdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_departmentdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_type` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_departmentdata`
--

LOCK TABLES `competitive_departmentdata` WRITE;
/*!40000 ALTER TABLE `competitive_departmentdata` DISABLE KEYS */;
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (1,'公募基金','投资部','投研类',1);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (2,'公募基金','研究部','投研类',1);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (3,'公募基金','交易部','投研类',1);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (4,'公募基金','风险管理部','风险管理类',1);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (5,'公募基金','监察稽核部','风险管理类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (6,'公募基金','市场部','营销类',1);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (7,'公募基金','机构业务部','营销类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (8,'公募基金','基金清算','运营类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (9,'公募基金','基金会计','运营类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (10,'公募基金','行政管理','支持类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (11,'公募基金','信息技术','支持类',2);
INSERT INTO `competitive_departmentdata` (`id`, `company_type`, `name`, `type`, `rating`) VALUES (12,'公募基金','财务','支持类',2);
/*!40000 ALTER TABLE `competitive_departmentdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_majordata`
--

DROP TABLE IF EXISTS `competitive_majordata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_majordata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  `preferred` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=861 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_majordata`
--

LOCK TABLES `competitive_majordata` WRITE;
/*!40000 ALTER TABLE `competitive_majordata` DISABLE KEYS */;
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (841,'金融强相关','金融学/国际金融',1,'投资 研究 投行');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (842,'金融强相关','金融工程/计量经济学',1,'投资 研究');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (843,'金融强相关','经济学/国际贸易',1,'投资 研究');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (844,'金融强相关','财务管理/会计',1,'投行 投资 研究');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (845,'金融强相关','统计学/数学',1,'研究 投资');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (846,'金融强相关','法学',1,'投行');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (847,'金融强相关','计算机科学/软件工程',1,'技术 投资 研究');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (848,'一般相关','物理/化学/生物等基础学科',2,'研究 投资');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (849,'一般相关','工商管理',2,'行政');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (850,'一般相关','企业管理',2,'营销 管理');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (851,'一般相关','市场营销',2,'营销');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (852,'一般相关','电子商务',2,'技术 内部管理');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (853,'一般相关','信息系统',2,'技术 内部管理');
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (854,'金融弱相关','外语',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (855,'金融弱相关','历史',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (856,'金融弱相关','中文',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (857,'金融弱相关','艺术类',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (858,'金融弱相关','社会学',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (859,'金融弱相关','心理学',3,NULL);
INSERT INTO `competitive_majordata` (`id`, `type`, `name`, `rating`, `preferred`) VALUES (860,'金融弱相关','其他文史类专业',3,NULL);
/*!40000 ALTER TABLE `competitive_majordata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive_universitydata`
--

DROP TABLE IF EXISTS `competitive_universitydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitive_universitydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive_universitydata`
--

LOCK TABLES `competitive_universitydata` WRITE;
/*!40000 ALTER TABLE `competitive_universitydata` DISABLE KEYS */;
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (1,'北京大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (2,'清华大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (3,'复旦大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (4,'上海交通大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (5,'武汉大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (6,'浙江大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (7,'中国人民大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (8,'南京大学',1);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (9,'吉林大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (10,'中山大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (11,'北京师范大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (12,'华中科技大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (13,'四川大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (14,'中国科学技术大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (15,'南开大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (16,'山东大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (17,'中南大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (18,'西安交通大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (19,'厦门大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (20,'哈尔滨工业大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (21,'北京航空航天大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (22,'同济大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (23,'天津大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (24,'华东师范大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (25,'东南大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (26,'北京理工大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (27,'重庆大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (28,'西南财经大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (29,'中央财经大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (30,'对外经济贸易大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (31,'中国政法大学',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (32,'北京协和医学院',2);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (33,'中国农业大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (34,'华南理工大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (35,'湖南大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (36,'西北工业大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (37,'大连理工大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (38,'东北大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (39,'兰州大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (40,'中国海洋大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (41,'电子科技大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (42,'西北农林科技大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (43,'中央民族大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (44,'中南财经政法大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (45,'暨南大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (46,'北京交通大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (47,'北京邮电大学',3);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (48,'广西大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (49,'中国药科大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (50,'长安大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (51,'上海财经大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (52,'华东理工大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (53,'苏州大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (54,'南京航空航天大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (55,'郑州大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (56,'华中师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (57,'南京农业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (58,'西南大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (59,'武汉理工大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (60,'上海大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (61,'南京理工大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (62,'东北师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (63,'江南大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (64,'西安电子科技大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (65,'华中农业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (66,'西南交通大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (67,'华北电力大学（北京）',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (68,'北京科技大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (69,'北京化工大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (70,'东华大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (71,'南京师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (72,'华南师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (73,'西北大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (74,'陕西师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (75,'哈尔滨工程大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (76,'河海大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (77,'南昌大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (78,'北京工业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (79,'湖南师范大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (80,'福州大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (81,'合肥工业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (82,'云南大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (83,'安徽大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (84,'太原理工大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (85,'贵州大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (86,'北京林业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (87,'东北林业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (88,'新疆大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (89,'中国传媒大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (90,'四川农业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (91,'天津医科大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (92,'辽宁大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (93,'东北农业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (94,'河北工业大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (95,'北京中医药大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (96,'上海外国语大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (97,'大连海事大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (98,'北京外国语大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (99,'内蒙古大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (100,'石河子大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (101,'海南大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (102,'延边大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (103,'宁夏大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (104,'中央音乐学院',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (105,'北京体育大学',4);
INSERT INTO `competitive_universitydata` (`id`, `name`, `rating`) VALUES (106,'青海大学',4);
/*!40000 ALTER TABLE `competitive_universitydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(15) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `you_need_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` (`id`, `name`, `desc`, `detail`, `degree`, `learn_times`, `students`, `fav_nums`, `image`, `click_nums`, `add_time`, `course_org_id`, `category`, `tag`, `teacher_id`, `teacher_tell`, `you_need_know`, `is_banner`) VALUES (1,'量化投资','量化投资','<p>量化投资</p>','cj',0,1,1,'courses/2018/07/u7643622292057319356fm27gp0.jpg',9,'2018-07-05 21:37:00.000000',2,'量化','国内名校',1,'按时交作业','一颗勤学的心是本课程必要前提',0);
INSERT INTO `courses_course` (`id`, `name`, `desc`, `detail`, `degree`, `learn_times`, `students`, `fav_nums`, `image`, `click_nums`, `add_time`, `course_org_id`, `category`, `tag`, `teacher_id`, `teacher_tell`, `you_need_know`, `is_banner`) VALUES (2,'投行入门案例','投行入门案例','<p>本课程主要讲述投行相关的一些基本知识和入门案列分享</p>','zj',100,1,0,'courses/2018/07/u31660348392151270512fm27gp0.jpg',11,'2018-07-10 23:13:00.000000',2,'投行','投行',1,'按时交作业','一颗勤学的心是本课程必要前提',0);
INSERT INTO `courses_course` (`id`, `name`, `desc`, `detail`, `degree`, `learn_times`, `students`, `fav_nums`, `image`, `click_nums`, `add_time`, `course_org_id`, `category`, `tag`, `teacher_id`, `teacher_tell`, `you_need_know`, `is_banner`) VALUES (3,'债券市场','债券市场','<p>债券交易</p>','cj',100,1,0,'courses/2018/07/u6269455082188259141fm27gp0.jpg',16,'2018-07-10 23:46:00.000000',2,'债券交易','债券交易',1,'按时交作业','一颗勤学的心是本课程必要前提',0);
INSERT INTO `courses_course` (`id`, `name`, `desc`, `detail`, `degree`, `learn_times`, `students`, `fav_nums`, `image`, `click_nums`, `add_time`, `course_org_id`, `category`, `tag`, `teacher_id`, `teacher_tell`, `you_need_know`, `is_banner`) VALUES (4,'投行内控指引','投行内控指引','<p>投行内控指引</p>','zj',100,1,0,'courses/2018/07/u20131821492296442059fm11gp0.jpg',16,'2018-07-11 00:06:00.000000',2,'投行内控指引','投行内控指引',1,'按时交作业','一颗勤学的心是本课程必要前提',0);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` (`id`, `name`, `add_time`, `course_id`) VALUES (1,'量化投资第一课','2018-07-10 23:48:00.000000',1);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (39,'article','article');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (3,'auth','group');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (2,'auth','permission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (25,'captcha','captchastore');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (31,'career_competitive','companydata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (32,'career_competitive','majordata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (33,'career_competitive','universitydata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (34,'competitive','companydata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (35,'competitive','departmentdata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (36,'competitive','majordata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (37,'competitive','universitydata');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (4,'contenttypes','contenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (38,'corsheaders','corsmodel');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (9,'courses','course');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (10,'courses','courseresource');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (11,'courses','lesson');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (12,'courses','video');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (30,'evaluation','evaluation');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (29,'jobs','companycomments');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (26,'jobs','industrydict');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (27,'jobs','jobs');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (28,'jobs','recruiter');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (13,'operation','coursecomments');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (14,'operation','userask');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (15,'operation','usercourse');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (16,'operation','userfavorite');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (17,'operation','usermessage');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (18,'organization','citydict');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (19,'organization','courseorg');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (20,'organization','teacher');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (5,'sessions','session');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (7,'users','banner');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (8,'users','emailverifyrecord');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (6,'users','userprofile');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (21,'xadmin','bookmark');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (24,'xadmin','log');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (22,'xadmin','usersettings');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (23,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2018-07-05 01:14:41.975844');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (2,'contenttypes','0002_remove_content_type_name','2018-07-05 01:14:42.014092');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (3,'auth','0001_initial','2018-07-05 01:14:42.133050');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (4,'auth','0002_alter_permission_name_max_length','2018-07-05 01:14:42.156072');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (5,'auth','0003_alter_user_email_max_length','2018-07-05 01:14:42.162789');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (6,'auth','0004_alter_user_username_opts','2018-07-05 01:14:42.169615');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (7,'auth','0005_alter_user_last_login_null','2018-07-05 01:14:42.176655');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (8,'auth','0006_require_contenttypes_0002','2018-07-05 01:14:42.179573');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (9,'auth','0007_alter_validators_add_error_messages','2018-07-05 01:14:42.188296');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (10,'auth','0008_alter_user_username_max_length','2018-07-05 01:14:42.201807');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (11,'auth','0009_alter_user_last_name_max_length','2018-07-05 01:14:42.212048');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (12,'users','0001_initial','2018-07-05 01:14:42.404963');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (13,'admin','0001_initial','2018-07-05 01:14:42.480293');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (14,'admin','0002_logentry_remove_auto_add','2018-07-05 01:14:42.490221');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (15,'captcha','0001_initial','2018-07-05 01:14:42.507700');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (16,'organization','0001_initial','2018-07-05 01:14:42.615375');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (17,'organization','0002_auto_20180112_0131','2018-07-05 01:14:42.656692');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (18,'organization','0003_auto_20180112_0256','2018-07-05 01:14:42.717080');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (19,'organization','0004_teacher_image','2018-07-05 01:14:42.744904');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (20,'courses','0001_initial','2018-07-05 01:14:42.871864');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (21,'courses','0002_auto_20180111_0310','2018-07-05 01:14:42.879787');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (22,'courses','0003_course_course_org','2018-07-05 01:14:42.932042');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (23,'courses','0004_course_category','2018-07-05 01:14:42.965849');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (24,'courses','0005_course_tag','2018-07-05 01:14:43.002833');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (25,'courses','0006_auto_20180113_0629','2018-07-05 01:14:43.197401');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (26,'courses','0007_course_is_banner','2018-07-05 01:14:43.234103');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (27,'courses','0008_auto_20180615_1149','2018-07-05 01:14:43.263549');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (28,'courses','0009_auto_20180623_1628','2018-07-05 01:14:43.271984');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (29,'organization','0005_teacher_age','2018-07-05 01:14:43.304622');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (30,'organization','0006_courseorg_tag','2018-07-05 01:14:43.342498');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (32,'operation','0001_initial','2018-07-05 01:14:43.682328');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (33,'sessions','0001_initial','2018-07-05 01:14:43.701193');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (34,'users','0002_auto_20180109_0423','2018-07-05 01:14:43.776255');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (35,'users','0003_auto_20180109_0539','2018-07-05 01:14:43.805197');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (36,'users','0004_auto_20180111_0310','2018-07-05 01:14:43.830136');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (37,'users','0005_auto_20180114_0705','2018-07-05 01:14:43.840928');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (38,'xadmin','0001_initial','2018-07-05 01:14:44.055601');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (39,'xadmin','0002_log','2018-07-05 01:14:44.139621');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (40,'xadmin','0003_auto_20160715_0100','2018-07-05 01:14:44.172428');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (46,'jobs','0001_initial','2018-07-05 15:34:10.282279');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (47,'jobs','0002_jobs_click_num','2018-07-06 09:40:16.424186');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (48,'jobs','0003_recruiter_click_num','2018-07-06 11:31:05.389030');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (49,'jobs','0004_recruiter_collect_num','2018-07-06 11:35:16.570651');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (50,'jobs','0005_recruiter_city','2018-07-06 14:24:48.376179');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (51,'jobs','0006_recruiter_industry','2018-07-06 15:00:09.368127');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (52,'jobs','0007_recruiter_br_comment','2018-07-14 16:36:17.836950');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (53,'jobs','0008_companycomments','2018-07-14 16:40:50.258689');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (54,'evaluation','0001_initial','2018-08-04 16:26:03.249360');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (56,'evaluation','0002_auto_20180908_1654','2018-09-19 16:41:16.805282');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (57,'jobs','0009_auto_20180919_1638','2018-09-19 16:41:16.819319');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (62,'evaluation','0003_auto_20180920_2248','2018-09-21 15:55:33.562148');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (63,'competitive','0001_initial','2018-09-21 15:57:43.059943');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (66,'article','0001_initial','2018-10-15 18:13:56.273304');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (67,'jobs','0010_auto_20181015_1937','2018-10-15 19:38:28.776924');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (68,'operation','0002_auto_20181026_1704','2018-10-26 17:07:45.080356');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (69,'operation','0003_auto_20181026_1710','2018-10-26 17:10:55.161084');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (70,'operation','0005_auto_20181026_1730','2018-10-26 17:35:39.136669');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('1r9elydy6mm8tts8e3uwjh8o02sxn0us','ODE0MDczNDI1YjE4ZmE1MTk0Yzg2OTJhNWI5Mjc3ZmJiOTJjYzBkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwicmVjcnVpdGVyIl0sIiJdfQ==','2018-07-20 16:18:37.573332');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('5aochcgz7k6ndkskht75q0v7zlkuk734','YWZkOWFhMTI3YzUxMWQ3ZmNiNzI4ODQ3ZGY2NDU4MTUyMGVkZDNmZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGI3YzE1ZjRjODhjNzBhM2U3YjlmNGM2ZGUwODk5MThkN2UwZDBiZCJ9','2018-10-11 17:35:41.362342');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('9o0y0xvuxo8i7oe7wc3rigatd4fcsw0c','MzA1YjM4NDVjZmNhNGE3YTE2MGRjYjY0ZWYwMGFiZDA0ZTNiZTZlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBiN2MxNWY0Yzg4YzcwYTNlN2I5ZjRjNmRlMDg5OTE4ZDdlMGQwYmQiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwiam9icyJdLCIiXX0=','2018-09-22 17:10:26.645366');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('b3tgm9pn8sltebi8b8ri2ri5rf4c5wi7','NDgwMWU2NjA0ODNlZTUwMmIzMTFiOWVmMDk0ZjYyNDE3NDQwMmRiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwiam9icyJdLCIiXX0=','2018-07-20 23:37:46.881655');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('bafgo1b5fklbcm0ky3c10h3bnsw421na','NDgwMWU2NjA0ODNlZTUwMmIzMTFiOWVmMDk0ZjYyNDE3NDQwMmRiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwiam9icyJdLCIiXX0=','2018-07-20 18:30:41.075355');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('c9sqkhp5126w28kppb5xigsldosrnsa6','ODE0MDczNDI1YjE4ZmE1MTk0Yzg2OTJhNWI5Mjc3ZmJiOTJjYzBkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwicmVjcnVpdGVyIl0sIiJdfQ==','2018-07-22 11:44:05.272927');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('cddlsudtfjx6qpog17038uiptoh13qon','NjJlNThiMTY0Yzc0MmZmZWRkODkyYWJlZTcxMDFmZDMxYjIxZWVlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwicmVjcnVpdGVyIl0sIiJdLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcCI6bnVsbCwic3RlcF9kYXRhIjp7fSwic3RlcF9maWxlcyI6e30sImV4dHJhX2RhdGEiOnt9fX0=','2018-07-28 23:13:54.781795');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('fndqjrel3cwj8968ri5eu8xsacs02g5f','YzM1YjdlM2Q1OTlhZDM1NTk1YjJhMDg5N2UyNzdiZTIyOTBjOGVjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==','2018-07-25 00:08:43.133116');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('hgp5ayery6n5f0fql1zf3ojtjb26hjdq','ZjFmNDIxMDc1OWYwNzg2N2U2MmUzOTA3NTNkMGMzYTNhZGVkNWRmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMifQ==','2018-07-27 22:02:52.467282');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('m0x17m46jsjfe1701wjbv02pv9okv4u8','MjY5ZDRkMTZiODcxZGQ5MTFiMGU5MjdjY2UzZDk5MGJhMjFkYjI4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcCI6bnVsbCwic3RlcF9kYXRhIjp7fSwic3RlcF9maWxlcyI6e30sImV4dHJhX2RhdGEiOnt9fX0=','2018-07-20 09:22:35.738963');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('mzezsbyrrztz4rfiehiclxjep0zxuwuv','YzM1YjdlM2Q1OTlhZDM1NTk1YjJhMDg5N2UyNzdiZTIyOTBjOGVjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==','2018-07-24 17:53:21.521045');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('tfuxeh8s7lvex7p961uj697ikh7g7j28','MGIxNTAyYjUyZDNhNDQwNWY5OTMxNTAxMGRlYmRlZjFhMWVkY2FlODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBiN2MxNWY0Yzg4YzcwYTNlN2I5ZjRjNmRlMDg5OTE4ZDdlMGQwYmQifQ==','2018-11-06 16:14:43.414169');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_evaluation`
--

DROP TABLE IF EXISTS `evaluation_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_index` int(11) NOT NULL,
  `question_index` int(11) NOT NULL,
  `answer_index` longtext NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_evaluation`
--

LOCK TABLES `evaluation_evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_companycomments`
--

DROP TABLE IF EXISTS `jobs_companycomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_companycomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(1000) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `gender_structure` varchar(50) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `is_in_service` tinyint(1) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `job_benifit` varchar(50) DEFAULT NULL,
  `job_culture_env_rating` int(11) NOT NULL,
  `job_env_rating` int(11) NOT NULL,
  `job_payment` int(11) NOT NULL,
  `job_strength_rating` int(11) NOT NULL,
  `job_time` int(11) NOT NULL,
  `job_turnover` varchar(50) DEFAULT NULL,
  `job_type` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_companycomments_company_id_f88841a4_fk_jobs_recruiter_id` (`company_id`),
  KEY `jobs_companycomments_user_id_990343c8_fk_users_userprofile_id` (`user_id`),
  KEY `jobs_companycomments_industry_id_aada3703_fk_jobs_indu` (`industry_id`),
  CONSTRAINT `jobs_companycomments_company_id_f88841a4_fk_jobs_recruiter_id` FOREIGN KEY (`company_id`) REFERENCES `jobs_recruiter` (`id`),
  CONSTRAINT `jobs_companycomments_industry_id_aada3703_fk_jobs_indu` FOREIGN KEY (`industry_id`) REFERENCES `jobs_industrydict` (`id`),
  CONSTRAINT `jobs_companycomments_user_id_990343c8_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_companycomments`
--

LOCK TABLES `jobs_companycomments` WRITE;
/*!40000 ALTER TABLE `jobs_companycomments` DISABLE KEYS */;
INSERT INTO `jobs_companycomments` (`id`, `comments`, `add_time`, `company_id`, `user_id`, `department`, `gender_structure`, `industry_id`, `is_in_service`, `job`, `job_benifit`, `job_culture_env_rating`, `job_env_rating`, `job_payment`, `job_strength_rating`, `job_time`, `job_turnover`, `job_type`, `position`, `rating`) VALUES (1,'asdgas','2018-07-14 17:43:22.133915',3,1,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,1,NULL,0,NULL,0);
INSERT INTO `jobs_companycomments` (`id`, `comments`, `add_time`, `company_id`, `user_id`, `department`, `gender_structure`, `industry_id`, `is_in_service`, `job`, `job_benifit`, `job_culture_env_rating`, `job_env_rating`, `job_payment`, `job_strength_rating`, `job_time`, `job_turnover`, `job_type`, `position`, `rating`) VALUES (2,'我爱国君，这是个很好的券商！','2018-07-14 17:43:57.746649',1,1,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,1,NULL,0,NULL,0);
INSERT INTO `jobs_companycomments` (`id`, `comments`, `add_time`, `company_id`, `user_id`, `department`, `gender_structure`, `industry_id`, `is_in_service`, `job`, `job_benifit`, `job_culture_env_rating`, `job_env_rating`, `job_payment`, `job_strength_rating`, `job_time`, `job_turnover`, `job_type`, `position`, `rating`) VALUES (3,'哈哈哈哈，你们都进复试了吗？','2018-07-14 17:44:08.197427',1,1,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,1,NULL,0,NULL,0);
/*!40000 ALTER TABLE `jobs_companycomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_industrydict`
--

DROP TABLE IF EXISTS `jobs_industrydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_industrydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_industrydict`
--

LOCK TABLES `jobs_industrydict` WRITE;
/*!40000 ALTER TABLE `jobs_industrydict` DISABLE KEYS */;
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (1,'券商','券商','2018-07-05 15:42:00.000000');
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (2,'银行','银行','2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (3,'基金','基金','2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (4,'信托','信托','2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (5,'保险','保险','2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` (`id`, `name`, `desc`, `add_time`) VALUES (6,'租赁','租赁','2018-07-05 15:43:00.000000');
/*!40000 ALTER TABLE `jobs_industrydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_jobs`
--

DROP TABLE IF EXISTS `jobs_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_type` varchar(50) NOT NULL,
  `depart` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `requirement` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `work_method` longtext NOT NULL,
  `contact` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `append` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `recommend_level` double NOT NULL,
  `city_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_jobs_city_id_cf7a9ab0_fk_organization_citydict_id` (`city_id`),
  KEY `jobs_jobs_company_id_b25449fc_fk_jobs_recruiter_id` (`company_id`),
  KEY `jobs_jobs_industry_id_5313d2e2_fk_jobs_industrydict_id` (`industry_id`),
  CONSTRAINT `jobs_jobs_city_id_cf7a9ab0_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`),
  CONSTRAINT `jobs_jobs_company_id_b25449fc_fk_jobs_recruiter_id` FOREIGN KEY (`company_id`) REFERENCES `jobs_recruiter` (`id`),
  CONSTRAINT `jobs_jobs_industry_id_5313d2e2_fk_jobs_industrydict_id` FOREIGN KEY (`industry_id`) REFERENCES `jobs_industrydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_jobs`
--

LOCK TABLES `jobs_jobs` WRITE;
/*!40000 ALTER TABLE `jobs_jobs` DISABLE KEYS */;
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (1,'sx','投资银行部','研究岗','1、硕士及以上学历，金融工程、金融、数学或计算机专业背景，成绩优秀;\n    2、对投资风险（市场、信用、流动性）管理工作有浓厚兴趣;\n    3、具有扎实的金融学知识，熟练掌握风险管理知识;\n    4、具有扎实的量化统计分析能力和逻辑分析能力;\n    5、吃苦耐劳，善于独立思考;\n    6、具有一定的计算机编程能力，具备数据库（SQL），VBA，Python的语言编写能力者优先考虑;\n    7、实习期不少于3个月，每周不少于4天；\n    6、实习期满3个月，会进行综合评估，实习表现优秀者视情况留用。','1、熟悉了解公司业务类型及产品运作；\n    2、协助进行证券类投资相关风险监控及风险报告；\n    3、协助进行各类投资风险计量分析；\n    4、完成部门负责人安排的其他工作。','啊噶4G','按时到岗','俺三个','按时打算','2018-07-05 15:44:00.000000','大券商值得信赖\n国企，但是有活力',4,1,1,1,10);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (2,'sx','资产管理部门','量化交易','1、硕士及以上学历，金融工程、金融、数学或计算机专业背景，成绩优秀;\r\n2、对投资风险（市场、信用、流动性）管理工作有浓厚兴趣;\r\n3、具有扎实的金融学知识，熟练掌握风险管理知识;\r\n4、具有扎实的量化统计分析能力和逻辑分析能力;\r\n5、吃苦耐劳，善于独立思考;\r\n6、具有一定的计算机编程能力，具备数据库（SQL），VBA，Python的语言编写能力者优先考虑;\r\n7、实习期不少于3个月，每周不少于4天；\r\n6、实习期满3个月，会进行综合评估，实习表现优秀者视情况留用。','1、熟悉了解公司业务类型及产品运作；\r\n2、协助进行证券类投资相关风险监控及风险报告；\r\n3、协助进行各类投资风险计量分析；\r\n4、完成部门负责人安排的其他工作。','爱仕达噶发个','爱仕达噶十多个','安师大','爱仕达噶十多个','2018-07-05 15:46:00.000000','发噶收发室大哥',4,2,2,3,13);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (3,'xz','投资银行部','债券发行','阿斯顿发生的发a\'s\'d\'fa\'s','阿斯顿发生的发安师大','阿斯顿发生的发a','阿斯顿发生的发','安师大发','阿斯顿发生的发','2018-07-05 21:44:00.000000','阿斯顿发生的发佛本是道发',0,2,3,1,18);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (4,'sx','资产管理部门','交易员','撒打算的a','撒打算的','阿萨说','撒噶收到','阿爽肤水地方','阿斯顿发送到','2018-07-06 18:28:00.000000','阿斯顿发送到噶的方式发给你的关怀',0,2,3,1,15);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (5,'sz','网金部','研究岗','阿嘎','撒打算a','收到罚单发生的姑娘','撒大方','撒打算的','阿斯顿噶地方','2018-07-06 18:29:00.000000','afdsgadnsfgns Sda 现场不少的方便',0,1,2,1,2);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (6,'xz','资产管理部门','研究岗','哈哈哈哈哈哈','啊杀神风哈登','SGADFHD阿发地方','安师大发','安师大发a','但还是放过你的愤怒的发','2018-07-06 23:36:00.000000','阿斯顿发生的发手动法师发水电费',6,3,4,2,8);
INSERT INTO `jobs_jobs` (`id`, `job_type`, `depart`, `title`, `requirement`, `responsibility`, `work_method`, `contact`, `source`, `append`, `add_time`, `comment`, `recommend_level`, `city_id`, `company_id`, `industry_id`, `click_num`) VALUES (7,'sx','777','77','886868','rte65dhgfxc','chgdytsy','87979','8686','bkjhkj','2018-09-08 17:08:00.000000','hgkudfjhgdx',0,1,1,1,3);
/*!40000 ALTER TABLE `jobs_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_recruiter`
--

DROP TABLE IF EXISTS `jobs_recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_recruiter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tags` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `introduction` longtext NOT NULL,
  `click_num` int(11) NOT NULL,
  `collect_num` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `br_comment` longtext NOT NULL,
  `founding_time` datetime(6) NOT NULL,
  `legal_person` varchar(10) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_recruiter_city_id_730aab62_fk_organization_citydict_id` (`city_id`),
  KEY `jobs_recruiter_industry_id_3131b3ce_fk_jobs_industrydict_id` (`industry_id`),
  CONSTRAINT `jobs_recruiter_city_id_730aab62_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`),
  CONSTRAINT `jobs_recruiter_industry_id_3131b3ce_fk_jobs_industrydict_id` FOREIGN KEY (`industry_id`) REFERENCES `jobs_industrydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_recruiter`
--

LOCK TABLES `jobs_recruiter` WRITE;
/*!40000 ALTER TABLE `jobs_recruiter` DISABLE KEYS */;
INSERT INTO `jobs_recruiter` (`id`, `name`, `address`, `tags`, `add_time`, `image`, `introduction`, `click_num`, `collect_num`, `city_id`, `industry_id`, `br_comment`, `founding_time`, `legal_person`, `website`) VALUES (1,'国泰君安证券','上海浦东银行大厦','券商\r\n国企\r\n投行','2018-07-05 15:35:00.000000','org/2018/07/316fa1c13f377848.jpg','国泰君安,中国领先的综合金融服务商和全能投资银行,全业务链证券公司,\r\n为您提供股票开户,期货,证券,股票,债券,公募、私募基金交易;融资融券,港股通,理财产品,代销',40,1,1,1,'强烈推荐！','2018-10-15 19:38:28.346785',NULL,NULL);
INSERT INTO `jobs_recruiter` (`id`, `name`, `address`, `tags`, `add_time`, `image`, `introduction`, `click_num`, `collect_num`, `city_id`, `industry_id`, `br_comment`, `founding_time`, `legal_person`, `website`) VALUES (2,'天弘基金','北京','基金\r\n余额宝','2018-07-05 15:40:00.000000','org/2018/07/ea5fd3107f059198.jpg','最大的公募基金',18,0,1,3,'','2018-10-15 19:38:28.346785',NULL,NULL);
INSERT INTO `jobs_recruiter` (`id`, `name`, `address`, `tags`, `add_time`, `image`, `introduction`, `click_num`, `collect_num`, `city_id`, `industry_id`, `br_comment`, `founding_time`, `legal_person`, `website`) VALUES (3,'华泰证券','南京','券商','2018-07-05 15:41:00.000000','org/2018/07/download-1.jpg','快速崛起的券商',39,22,1,1,'','2018-10-15 19:38:28.346785',NULL,NULL);
INSERT INTO `jobs_recruiter` (`id`, `name`, `address`, `tags`, `add_time`, `image`, `introduction`, `click_num`, `collect_num`, `city_id`, `industry_id`, `br_comment`, `founding_time`, `legal_person`, `website`) VALUES (4,'中国银行','北京','银行','2018-07-06 14:25:00.000000','org/2018/07/u21725385853347878219fm58bpow732bpoh557.jpg','银行业老大',19,3,2,2,'','2018-10-15 19:38:28.346785',NULL,NULL);
/*!40000 ALTER TABLE `jobs_recruiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(250) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (1,'这个课程还是蛮不错的','2018-07-11 00:05:14.827485',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (2,'afasgs','2018-07-13 22:03:30.395136',1,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (3,'adsaf加纳搜狗','2018-07-13 22:04:03.936114',1,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (4,'33','2018-07-13 22:08:48.759766',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (5,'33嗯嗯嗯','2018-07-13 22:08:52.051929',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (6,'案发生的高峰2','2018-07-13 22:09:22.163423',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (12,'问问','2018-07-14 16:30:57.549313',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (13,'呜呜呜呜呜呜呜呜无无无','2018-07-14 16:31:03.351929',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (14,'w\'w\'w','2018-07-14 16:31:07.280154',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (15,'呜呜呜呜呜呜呜呜无无','2018-07-14 16:31:12.861659',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (16,'鹅鹅鹅饿鹅鹅鹅饿','2018-07-14 16:31:17.359275',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (17,'凄凄切切群群群群','2018-07-14 16:31:22.064683',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (18,'去去去','2018-07-14 16:31:26.619884',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (19,'凄凄切切群群群群群群群','2018-07-14 16:31:28.979163',3,1);
INSERT INTO `operation_coursecomments` (`id`, `comments`, `add_time`, `course_id`, `user_id`) VALUES (20,'玩 3333','2018-07-14 16:31:33.220764',3,1);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` (`id`, `add_time`, `course_id`, `user_id`) VALUES (1,'2018-07-10 23:04:05.930257',1,1);
INSERT INTO `operation_usercourse` (`id`, `add_time`, `course_id`, `user_id`) VALUES (2,'2018-07-11 00:03:58.543031',2,1);
INSERT INTO `operation_usercourse` (`id`, `add_time`, `course_id`, `user_id`) VALUES (3,'2018-07-11 00:04:52.951315',3,1);
INSERT INTO `operation_usercourse` (`id`, `add_time`, `course_id`, `user_id`) VALUES (4,'2018-07-13 23:03:33.660481',4,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `fav_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` (`id`, `add_time`, `user_id`, `fav_type`, `fav_id`) VALUES (2,'2018-07-11 00:04:37.518732',1,1,0);
INSERT INTO `operation_userfavorite` (`id`, `add_time`, `user_id`, `fav_type`, `fav_id`) VALUES (3,'2018-10-24 09:35:03.202000',2,39,2);
INSERT INTO `operation_userfavorite` (`id`, `add_time`, `user_id`, `fav_type`, `fav_id`) VALUES (4,'2018-10-25 09:35:03.202000',2,39,3);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (1,4,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 19:43:34.728906');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (2,5,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 19:45:00.607761');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (3,6,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 19:51:31.277547');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (4,7,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 20:27:04.350438');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (5,8,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 20:28:45.694506');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (6,9,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 20:31:18.938852');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (7,10,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-15 20:34:16.195930');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (8,11,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 17:14:46.632403');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (9,12,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 18:12:05.178810');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (10,13,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 18:17:41.506278');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (11,14,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 18:20:44.382542');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (12,15,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 18:24:39.517479');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (13,16,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:10:25.773662');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (14,17,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:11:44.442448');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (15,18,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:17:52.899117');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (16,19,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:18:25.167868');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (17,20,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:38:01.646074');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (18,21,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-18 19:49:11.779724');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (19,22,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-19 10:24:32.982141');
INSERT INTO `operation_usermessage` (`id`, `user`, `message`, `has_read`, `add_time`) VALUES (20,23,'欢迎注册贝睿求职! --系统自动消息',0,'2018-10-19 10:27:03.779647');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` (`id`, `name`, `desc`, `add_time`) VALUES (1,'上海','上海','2018-07-05 10:10:00.000000');
INSERT INTO `organization_citydict` (`id`, `name`, `desc`, `add_time`) VALUES (2,'北京','北京','2018-07-05 12:18:00.000000');
INSERT INTO `organization_citydict` (`id`, `name`, `desc`, `add_time`) VALUES (3,'深圳','深圳','2018-07-05 12:18:00.000000');
INSERT INTO `organization_citydict` (`id`, `name`, `desc`, `add_time`) VALUES (4,'广州','广州','2018-07-05 12:18:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` (`id`, `name`, `desc`, `click_nums`, `fav_nums`, `image`, `address`, `add_time`, `city_id`, `category`, `course_nums`, `students`, `tag`) VALUES (2,'贝睿求职','综合的金融求职专家',49,0,'org/2018/07/download_Xgkbt9h.jpg','上海','2018-07-05 13:36:00.000000',1,'pxjg',1,0,'培训专家');
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` (`id`, `name`, `work_years`, `work_company`, `work_position`, `points`, `click_nums`, `fav_nums`, `add_time`, `org_id`, `image`, `age`) VALUES (1,'Jerry',0,'国军','哈哈哈','安师大',18,0,'2018-07-05 21:36:00.000000',2,'teacher/2018/07/u39429892503371488751fm27gp0.jpg',18);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` (`id`, `title`, `image`, `url`, `index`, `add_time`) VALUES (1,'111','banner/2018/07/u33753968383524337564fm200gp0.jpg','http://www.baidu.com',100,'2018-07-05 21:49:00.000000');
INSERT INTO `users_banner` (`id`, `title`, `image`, `url`, `index`, `add_time`) VALUES (2,'111','banner/2018/07/u5881360522285881616fm27gp0.jpg','http://www.baidu.com',100,'2018-07-05 21:49:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (1,'gdxxMnPCwn14ssuB','test11@test.com','register','2018-10-15 19:43:34.737905');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (2,'ALrBdrYBhMdtiNjo','test111@123.com','register','2018-10-15 19:45:00.619733');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (3,'sYZEOV0vsK4Adm46','xadmin@12345.com','register','2018-10-15 19:51:31.287578');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (4,'JYDoR4pNIJpYpsy4','xadmin@123.COM','register','2018-10-15 20:27:04.363474');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (5,'msGK4vKf0Kl5Wn6w','xadmi123n@123.COM','register','2018-10-15 20:28:45.703526');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (6,'d6lmZvkS7EjZmkfR','xadmi1212343n@123.COM','register','2018-10-15 20:31:18.944867');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (7,'2Z2QSFMOLgXHE9UM','xadmi1212341233n@123123.COM','register','2018-10-15 20:34:16.205957');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (8,'T4cC8N4IwFPiDSbT','hehe@123.com','register','2018-10-18 17:14:46.639421');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (9,'czJRVnFpOS39ntl3','xadmin11@1234.com','register','2018-10-18 18:12:05.186832');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (10,'uXha1xPDsUOhwa6J','xadmin123@123.com','register','2018-10-18 18:17:41.514299');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (11,'nyaYUfelvOZiZCfN','xadmin1231@123.com','register','2018-10-18 18:20:44.400588');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (12,'lU3rq5p1kYJcSTcd','xadmin12123@123.com','register','2018-10-18 18:24:39.533521');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (13,'hfkj2fUvEE2JuBAG','xadmin121212@123.com','register','2018-10-18 19:10:25.782685');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (14,'ILeBUVKq3GK8jCKh','xadmin12121@123.COM','register','2018-10-18 19:11:44.452475');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (15,'0iCJwU5LdDge5FYN','xadmin12121@1212121.com','register','2018-10-18 19:17:52.916161');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (16,'zmPQX1XQqlgVgotx','xadmin@1111.COM','register','2018-10-18 19:18:25.174885');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (17,'g4H6O2cmDLO5X86q','xadmin@12121212.com','register','2018-10-18 19:38:01.666126');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (18,'NxVrV60R9FCfVZEH','steinsy@163.com','register','2018-10-18 19:49:11.791756');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (19,'GiSu','','update_email','2018-10-18 19:49:47.547781');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (20,'sX1m','','update_email','2018-10-18 19:52:30.049656');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (21,'RTm4voZnIaLhiwmn','xadmin@1212121.com','register','2018-10-19 10:24:32.994174');
INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES (22,'23v5XYhf8rjxZZI4','xadmin@1212121212.COM','register','2018-10-19 10:27:03.791680');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (1,'pbkdf2_sha256$100000$ouyMqAUJ9fBr$9MA7Wgq/mhjJ9IrewCEhtVWTtMmoQCVMrGPAY8Xgh54=','2018-07-15 11:34:50.807025',1,'wang','','','wong@163.com',1,1,'2018-07-05 09:58:10.169200','jerry','2018-07-05','female','a','asdf','image/2018/07/u39429892503371488751fm27gp0.jpg');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (2,'pbkdf2_sha256$100000$1MnuJXr11FYJ$w/LoCrMjYtymleN0xEBT5kAUZ+FpNUwdGgUGjJHPdCI=','2018-10-23 16:14:43.350004',1,'xadmin','','','feiyumas@163.com',1,1,'2018-09-08 17:04:18.363298','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (3,'pbkdf2_sha256$100000$5VDJvhXcNjxf$o92mvPMyYWbAS9kn7ZBZwvQKYY/dlwyZdnzSCY/VCag=',NULL,1,'ebeirui','','','test@test.com',1,1,'2018-10-15 17:32:19.224598','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (4,'pbkdf2_sha256$100000$UoFM2BvTSOKU$zVTFrmHt+wYwuki93jDuUmrR+7k0BntoUnBDtSyKqbg=',NULL,0,'test11@test.com','','','test11@test.com',0,0,'2018-10-15 19:43:34.615582','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (5,'pbkdf2_sha256$100000$aS9TIKY9be4n$W/Ev9CeyhJrd7A/gurnM3QMkupRhdQujxXs2m6exYFc=',NULL,0,'test111@123.com','','','test111@123.com',0,0,'2018-10-15 19:45:00.478392','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (6,'pbkdf2_sha256$100000$cVnBoN35be8l$KtvGYxT8OqM5b4IAtXo/yIVHQgbWUfgyx+WHgiHI3do=',NULL,0,'xadmin@12345.com','','','xadmin@12345.com',0,0,'2018-10-15 19:51:31.145196','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (7,'pbkdf2_sha256$100000$iELIBRHt4Cme$YXjC78/WE3NOlidVblCNmHRWPWElGQh6KPZb3iiPkJQ=',NULL,0,'xadmin@123.COM','','','xadmin@123.COM',0,0,'2018-10-15 20:27:04.224103','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (8,'pbkdf2_sha256$100000$ceBJZFjRFHAi$1yMKfuq71N5hw1nx/kQtECcw/FRTBxurFJtlFfIJw1I=',NULL,0,'xadmi123n@123.COM','','','xadmi123n@123.COM',0,0,'2018-10-15 20:28:45.466901','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (9,'pbkdf2_sha256$100000$o5RUyumsjd9q$yaT6/dz7FlQ8/vsQB37oKn9pcsBqOG6iDG9YE05uuaI=',NULL,0,'xadmi1212343n@123.COM','','','xadmi1212343n@123.COM',0,0,'2018-10-15 20:31:18.785447','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (10,'pbkdf2_sha256$100000$uSMQsjPL7x72$l20FKv1UGmVRUNZfklNbBsjwHABP7rZP2CwIoozEie8=',NULL,0,'xadmi1212341233n@123123.COM','','','xadmi1212341233n@123123.COM',0,0,'2018-10-15 20:34:16.073605','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (11,'pbkdf2_sha256$100000$YFXcrzwDWo1A$yOjedwPlT40dtRMMpx9iZovqXK5vAuDc1fBD+Y3R9H4=',NULL,0,'hehe@123.com','','','hehe@123.com',0,0,'2018-10-18 17:14:46.530134','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (12,'pbkdf2_sha256$100000$ZY5Q6YUDaWz0$Tk+6z8m7xl3VoENPUGUNsWbMKI1ezYrdKq/KuRd4z4c=',NULL,0,'xadmin11@1234.com','','','xadmin11@1234.com',0,0,'2018-10-18 18:12:05.020389','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (13,'pbkdf2_sha256$100000$E8U8f8r4BRFl$lokMB0pW4GtyODdkh1JMAd6mXiv396I53lhXAgLTmn4=',NULL,0,'xadmin123@123.com','','','xadmin123@123.com',0,0,'2018-10-18 18:17:41.380951','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (14,'pbkdf2_sha256$100000$Feye9uZDoAKW$cBuKniklpJI70/RizBLYiyVzjgvwOXP/nYQW5VRTVJ8=',NULL,0,'xadmin1231@123.com','','','xadmin1231@123.com',0,0,'2018-10-18 18:20:44.253200','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (15,'pbkdf2_sha256$100000$ifwCVm7IJC9U$0QLpOfgiG5Nna0FV5Lvl12IIYAXlo282iNZdLTajdmo=',NULL,0,'xadmin12123@123.com','','','xadmin12123@123.com',0,1,'2018-10-18 18:24:39.407186','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (16,'pbkdf2_sha256$100000$QJRyrAxGI6v0$KuC6xnv2eE/zrdTd4MMOb8OCyYqeJshlH2eyQzcz2Ic=',NULL,0,'xadmin121212@123.com','','','xadmin121212@123.com',0,0,'2018-10-18 19:10:25.659359','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (17,'pbkdf2_sha256$100000$ZgVZJJ93rhtj$4578+EL1rWyTmk36cli4+blC/vL/O/Cxg4Qlf3IY8ug=',NULL,0,'xadmin12121@123.COM','','','xadmin12121@123.COM',0,0,'2018-10-18 19:11:44.310096','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (18,'pbkdf2_sha256$100000$6VKPOIw64VIz$pgVrIA+dS3tPPSupE8WcsXA73IIZxQUxh60zAPh4gYw=',NULL,0,'xadmin12121@1212121.com','','','xadmin12121@1212121.com',0,0,'2018-10-18 19:17:52.717635','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (19,'pbkdf2_sha256$100000$JZaM4RK55Diu$LVJ7zxd5vIa151MDlcgYcMf7Ec7GsonPjcY2J3fAZ4o=',NULL,0,'xadmin@1111.COM','','','xadmin@1111.COM',0,1,'2018-10-18 19:18:25.000423','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (20,'pbkdf2_sha256$100000$DZII3vpaYxTl$p6+9CF6gCwUV1zUMfrUcPNkKDbP/SVhvZLCOmwOu1Gs=',NULL,0,'xadmin@12121212.com','','','xadmin@12121212.com',0,0,'2018-10-18 19:38:01.349284','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (21,'pbkdf2_sha256$100000$SQ5vFW5Li1AQ$lGynEXkSq55uXoC0xWozsj8dFfdAY7eS1BKfTylT1pA=',NULL,0,'steinsy@163.com','','','steinsy@163.com',0,1,'2018-10-18 19:49:11.494968','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (22,'pbkdf2_sha256$100000$dxVaNINXbI0Q$sC8LX2ptHekkG0n6b8GD22s2tfXsvmAgp6ZP0VDfynQ=',NULL,0,'xadmin@1212121.com','','','xadmin@1212121.com',0,0,'2018-10-19 10:24:32.815698','',NULL,'female','',NULL,'image/default.png');
INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `address`, `mobile`, `image`) VALUES (23,'pbkdf2_sha256$100000$0iLL61yVw5Vi$18LipU+kxxKYeZ2F+B5b2u5vTFtfnPFsLZ327u2gAuw=',NULL,0,'xadmin@1212121212.COM','','','xadmin@1212121212.COM',0,0,'2018-10-19 10:27:03.610197','',NULL,'female','',NULL,'image/default.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (1,'2018-07-05 10:09:52.524290','127.0.0.1','1','券商','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (2,'2018-07-05 10:10:49.632748','127.0.0.1','1','上海','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (3,'2018-07-05 10:19:02.238148','127.0.0.1','1','课程机构: qq','create','已添加。',19,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (4,'2018-07-05 10:19:33.655853','127.0.0.1','1','课程机构: qq','delete','',19,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (5,'2018-07-05 10:24:36.670148','127.0.0.1','2','职位: 安师大','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (6,'2018-07-05 12:18:08.714554','127.0.0.1','2','基金','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (7,'2018-07-05 12:18:18.343947','127.0.0.1','3','银行','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (8,'2018-07-05 12:18:42.252139','127.0.0.1','2','北京','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (9,'2018-07-05 12:18:49.472852','127.0.0.1','3','深圳','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (10,'2018-07-05 12:18:58.161431','127.0.0.1','4','广州','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (11,'2018-07-05 12:19:41.457162','127.0.0.1','5','信托','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (12,'2018-07-05 12:19:49.725815','127.0.0.1','6','保险','create','已添加。',18,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (13,'2018-07-05 12:20:26.662460','127.0.0.1',NULL,'','delete','批量删除 2 个 城市',NULL,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (14,'2018-07-05 12:20:38.729133','127.0.0.1','4','保险','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (15,'2018-07-05 12:20:44.680544','127.0.0.1','5','信托','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (16,'2018-07-05 12:22:04.951621','127.0.0.1','2','职位: 研究岗','change','修改 company，depart 和 title',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (17,'2018-07-05 13:33:43.240959','127.0.0.1','3','职位: 量化研究员','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (18,'2018-07-05 13:36:45.392809','127.0.0.1','2','课程机构: 国泰君安','create','已添加。',19,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (19,'2018-07-05 15:39:39.226088','127.0.0.1','1','机构: 国泰君安证券','create','已添加。',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (20,'2018-07-05 15:41:04.461264','127.0.0.1','2','机构: 天弘基金','create','已添加。',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (21,'2018-07-05 15:41:35.614448','127.0.0.1','3','机构: 华泰证券','create','已添加。',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (22,'2018-07-05 15:43:03.604218','127.0.0.1','1','券商','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (23,'2018-07-05 15:43:09.547740','127.0.0.1','2','银行','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (24,'2018-07-05 15:43:17.088312','127.0.0.1','3','基金','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (25,'2018-07-05 15:43:24.472319','127.0.0.1','4','信托','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (26,'2018-07-05 15:43:28.897732','127.0.0.1','5','保险','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (27,'2018-07-05 15:43:41.422140','127.0.0.1','6','租赁','create','已添加。',26,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (28,'2018-07-05 15:45:12.347239','127.0.0.1','1','职位: 研究岗','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (29,'2018-07-05 15:50:01.130071','127.0.0.1','2','职位: 量化交易','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (30,'2018-07-05 21:37:05.995599','127.0.0.1','1','[课程机构: 国泰君安]的教师: Jerry','create','已添加。',20,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (31,'2018-07-05 21:37:53.597095','127.0.0.1','1','量化投资','create','已添加。',9,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (32,'2018-07-05 21:44:51.976791','127.0.0.1','3','债券发行','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (33,'2018-07-05 21:49:37.215156','127.0.0.1','1','111(位于第100位)','create','已添加。',7,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (34,'2018-07-05 21:49:52.484840','127.0.0.1','2','111(位于第100位)','create','已添加。',7,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (35,'2018-07-06 15:40:26.807137','127.0.0.1','4','银行','create','已添加。',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (36,'2018-07-06 16:18:37.392094','127.0.0.1','4','中国银行','change','修改 name',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (37,'2018-07-06 18:29:31.746176','127.0.0.1','4','交易员','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (38,'2018-07-06 18:30:40.807684','127.0.0.1','5','研究岗','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (39,'2018-07-06 23:37:46.752148','127.0.0.1','6','研究岗','create','已添加。',27,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (40,'2018-07-07 16:32:16.963485','127.0.0.1','2','天弘基金','change','修改 image',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (41,'2018-07-07 16:32:41.826327','127.0.0.1','1','国泰君安证券','change','修改 image',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (42,'2018-07-07 16:33:07.200225','127.0.0.1','1','国泰君安证券','change','修改 image',28,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (43,'2018-07-10 23:12:27.206197','127.0.0.1','2','课程机构: 贝睿求职','change','修改 name，desc，tag，image 和 course_nums',19,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (44,'2018-07-10 23:13:21.351420','127.0.0.1','1','量化投资','change','修改 image 和 category',9,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (45,'2018-07-10 23:16:07.920298','127.0.0.1','2','投行入门案例','create','已添加。',9,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (46,'2018-07-10 23:48:15.082273','127.0.0.1','3','债券市场','create','已添加。',9,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (47,'2018-07-10 23:48:40.742936','127.0.0.1','1','《量化投资》课程的章节 >> 量化投资第一课','create','已添加。',11,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (48,'2018-07-11 00:08:42.910229','127.0.0.1','4','投行内控指引','create','已添加。',9,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (49,'2018-07-14 22:59:25.240005','127.0.0.1','5','wang chart widget','change','没有字段被修改。',23,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (50,'2018-07-14 23:00:25.286632','127.0.0.1','6','wang list widget','delete','',23,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (51,'2018-07-14 23:05:19.220825','127.0.0.1','7','wang chart widget','change','修改 value',23,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (52,'2018-07-14 23:08:40.469674','127.0.0.1','7','wang chart widget','delete','',23,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (53,'2018-07-14 23:11:44.534517','127.0.0.1','8','wang chart widget','change','没有字段被修改。',23,1);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (54,'2018-09-08 17:10:17.943198','127.0.0.1','7','77','create','已添加。',27,2);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (55,'2018-10-15 18:21:07.752470','127.0.0.1','1','test','change','修改 title，author，content，abstract，click_nums，like_nums，category 和 tag',39,2);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (56,'2018-10-15 18:22:06.822165','127.0.0.1',NULL,'','delete','批量删除 1 个 文章',NULL,2);
INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES (57,'2018-10-15 18:22:57.619951','127.0.0.1','2','标题112121','create','已添加。',39,2);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES (1,'dashboard:home:pos','8',1);
INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES (2,'site-theme','/static/xadmin/css/themes/bootstrap-theme.css',1);
INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES (3,'dashboard:home:pos','',2);
INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES (4,'site-theme','https://bootswatch.com/3/united/bootstrap.min.css',2);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
INSERT INTO `xadmin_userwidget` (`id`, `page_id`, `widget_type`, `value`, `user_id`) VALUES (8,'home','chart','{\"title\": \"\", \"model\": \"jobs.recruiter\"}',1);
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-26 20:20:44
