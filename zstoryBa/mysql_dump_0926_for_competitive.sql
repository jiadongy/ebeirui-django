-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bronline
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `competitive_companydata`
--

DROP TABLE IF EXISTS `competitive_companydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_companydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_departmentdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_type` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_majordata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  `preferred` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=861 DEFAULT CHARSET=utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competitive_universitydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 ;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 16:46:21
