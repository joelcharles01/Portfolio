-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `level_details`
--
drop database if exists gaming_data;

create database gaming_data;

use gaming_data;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_details` (
  `Unnamed: 0` tinyint(4) DEFAULT NULL,
  `P_ID` smallint(6) DEFAULT NULL,
  `Dev_ID` varchar(6) DEFAULT NULL,
  `start_time` varchar(16) DEFAULT NULL,
  `Stages_crossed` tinyint(4) DEFAULT NULL,
  `Level` tinyint(4) DEFAULT NULL,
  `Difficulty` varchar(9) DEFAULT NULL,
  `Kill_Count` tinyint(4) DEFAULT NULL,
  `Headshots_Count` tinyint(4) DEFAULT NULL,
  `Score` smallint(6) DEFAULT NULL,
  `Lives_Earned` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_details`
--

LOCK TABLES `level_details` WRITE;
/*!40000 ALTER TABLE `level_details` DISABLE KEYS */;
INSERT INTO `level_details` VALUES (0,644,'zm_015','11/10/2022 14:05',3,1,'Medium',11,5,350,1),(1,644,'rf_015','11/10/2022 19:34',1,1,'Low',7,2,150,0),(2,644,'bd_017','12/10/2022 23:52',6,2,'Medium',24,16,1750,2),(3,656,'rf_013','15/10/2022 18:12',7,0,'Medium',15,8,880,0),(4,656,'bd_015','13/10/2022 22:19',4,1,'Low',19,13,1450,0),(5,656,'rf_017','14/10/2022 07:32',2,1,'Difficult',3,1,280,1),(6,656,'bd_013','11/10/2022 17:47',10,1,'Low',18,16,2210,3),(7,296,'zm_017','14/10/2022 15:15',2,1,'Difficult',7,3,1040,0),(8,296,'zm_015','14/10/2022 19:35',4,1,'Medium',4,0,100,0),(9,632,'bd_013','12/10/2022 16:30',5,0,'Difficult',45,30,100,0),(10,632,'rf_013','12/10/2022 19:36',5,1,'Medium',28,25,100,1),(11,632,'zm_017','13/10/2022 06:30',5,2,'Difficult',4,0,100,2),(12,632,'zm_015','13/10/2022 10:56',7,2,'Medium',23,20,4950,2),(13,632,'zm_017','14/10/2022 23:41',8,2,'Difficult',30,24,5500,4),(14,428,'bd_015','15/10/2022 18:00',3,1,'Low',5,3,380,0),(15,429,'rf_017','11/10/2022 09:28',2,1,'Difficult',30,27,3500,3),(16,429,'zm_017','11/10/2022 21:39',10,2,'Low',30,18,3210,0),(17,429,'bd_013','11/10/2022 19:28',6,0,'Medium',14,10,1800,1),(18,429,'zm_013','11/10/2022 13:00',7,2,'Difficult',25,20,4710,2),(19,310,'rf_017','11/10/2022 15:15',7,1,'Difficult',20,18,5140,3),(20,310,'bd_015','13/10/2022 19:18',5,0,'Difficult',34,30,5300,3),(21,310,'bd_013','15/10/2022 23:30',7,2,'Difficult',14,11,3370,2),(22,211,'bd_017','12/10/2022 13:23',4,0,'Low',20,15,390,2),(23,211,'bd_013','12/10/2022 18:30',5,1,'Difficult',25,15,3200,2),(24,211,'rf_013','13/10/2022 05:36',5,1,'Medium',30,11,2700,1),(25,211,'zm_015','13/10/2022 22:30',5,2,'Low',14,8,2800,0),(26,211,'zm_017','14/10/2022 08:56',7,2,'Medium',9,3,750,2),(27,211,'rf_017','15/10/2022 11:41',8,2,'Difficult',15,11,1100,1),(28,319,'zm_017','12/10/2022 14:20',7,1,'Low',5,3,50,0),(29,547,'rf_013','15/10/2022 07:15',2,1,'Low',17,11,750,0),(30,547,'zm_015','15/10/2022 20:16',5,1,'Low',20,9,1600,0),(31,547,'bd_013','15/10/2022 02:19',8,1,'Medium',15,8,1100,1),(32,300,'bd_013','11/10/2022 19:19',5,1,'Low',25,11,540,0),(33,300,'rf_013','11/10/2022 05:20',7,1,'Medium',23,17,2300,0),(34,300,'zm_015','12/10/2022 11:21',3,0,'Difficult',14,0,1200,0),(35,300,'zm_015','12/10/2022 01:45',2,2,'Medium',4,3,230,1),(36,300,'bd_013','13/10/2022 23:15',3,2,'Medium',8,4,590,1),(37,224,'rf_017','14/10/2022 01:15',7,1,'Medium',20,18,5140,0),(38,224,'bd_015','14/10/2022 08:21',5,1,'Difficult',34,30,1300,0),(39,224,'bd_013','15/10/2022 05:30',10,2,'Difficult',30,22,5300,4),(40,224,'bd_013','15/10/2022 13:43',4,2,'Difficult',28,25,4570,2),(41,242,'bd_013','13/10/2022 01:14',6,1,'Low',21,17,2840,0),(42,242,'zm_015','14/10/2022 04:38',8,1,'Low',37,26,3470,2),(43,292,'rf_013','12/10/2022 04:29',4,1,'Low',21,17,1890,0),(44,292,'rf_015','15/10/2022 10:19',5,1,'Medium',4,3,670,0),(45,590,'rf_013','12/10/2022 19:23',2,1,'Low',10,7,1050,0),(46,590,'bd_017','12/10/2022 07:30',3,1,'Low',24,18,2400,1),(47,590,'wd_019','13/10/2022 04:20',5,2,'Low',17,10,1550,0),(48,590,'rf_015','13/10/2022 13:45',3,2,'Medium',9,0,900,1),(49,590,'zm_017','14/10/2022 06:31',4,2,'Medium',15,8,2100,2),(50,483,'bd_015','11/10/2022 22:20',5,1,'Medium',20,17,1050,0),(51,483,'zm_013','12/10/2022 19:30',3,1,'Medium',20,10,2350,1),(52,483,'zm_017','11/10/2022 14:33',10,2,'Medium',50,43,5490,3),(53,483,'rf_015','12/10/2022 02:40',7,2,'Difficult',19,10,3950,1),(54,483,'wd_019','13/10/2022 06:20',8,2,'Difficult',25,16,4390,2),(55,368,'zm_015','12/10/2022 01:14',7,1,'Medium',20,18,2040,0),(56,368,'zm_017','12/10/2022 04:20',5,1,'Low',14,10,1750,0),(57,368,'bd_015','12/10/2022 11:59',6,2,'Difficult',15,8,1950,1),(58,368,'rf_013','15/10/2022 14:47',4,2,'Difficult',24,19,2970,2),(59,663,'bd_013','15/10/2022 17:30',5,1,'Difficult',45,30,100,0),(60,663,'rf_013','15/10/2022 19:36',5,1,'Medium',28,25,100,1),(61,663,'wd_019','15/10/2022 06:30',5,2,'Difficult',4,0,100,2),(62,663,'zm_015','15/10/2022 09:56',5,2,'Medium',23,20,4950,2),(63,663,'zm_017','15/10/2022 23:41',6,2,'Difficult',30,24,5500,4),(64,683,'bd_013','11/10/2022 02:23',4,1,'Low',16,11,1390,0),(65,683,'bd_015','11/10/2022 18:45',3,1,'Low',21,20,3200,2),(66,683,'rf_013','12/10/2022 14:36',7,1,'Medium',16,6,1850,0),(67,683,'rf_015','13/10/2022 22:30',5,2,'Medium',25,18,2800,0),(68,683,'zm_017','13/10/2022 08:16',7,2,'Difficult',19,13,2750,2),(69,683,'zm_017','15/10/2022 16:10',8,2,'Difficult',20,18,4100,3),(70,683,'zm_017','15/10/2022 22:20',5,2,'Difficult',10,6,2050,1),(71,358,'zm_017','14/10/2022 05:05',3,0,'Low',4,3,70,0),(72,358,'zm_013','14/10/2022 18:23',2,0,'Medium',3,1,120,0),(73,641,'rf_013','14/10/2022 01:25',4,0,'Low',4,3,105,0),(74,641,'rf_015','13/10/2022 04:04',2,0,'Medium',2,1,40,0),(75,641,'rf_013','14/10/2022 23:19',5,0,'Difficult',8,7,235,0),(76,558,'wd_019','12/10/2022 23:19',8,0,'Difficult',21,19,635,0);
/*!40000 ALTER TABLE `level_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_details`
--

DROP TABLE IF EXISTS `player_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_details` (
  `Unnamed: 0` tinyint(4) DEFAULT NULL,
  `P_ID` smallint(6) DEFAULT NULL,
  `PName` varchar(27) DEFAULT NULL,
  `L1_Status` tinyint(4) DEFAULT NULL,
  `L2_Status` tinyint(4) DEFAULT NULL,
  `L1_Code` varchar(13) DEFAULT NULL,
  `L2_Code` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_details`
--

LOCK TABLES `player_details` WRITE;
/*!40000 ALTER TABLE `player_details` DISABLE KEYS */;
INSERT INTO `player_details` VALUES (0,656,'sloppy-denim-wolfhound',1,0,'war_zone',''),(1,358,'skinny-grey-quetzal',0,0,'',''),(2,296,'silly-taupe-ray',1,0,'war_zone',''),(3,644,'randy-turquoise-scorpion',1,1,'speed_blitz','cosmic_vision'),(4,320,'chewy-harlequin-gharial',0,0,'',''),(5,632,'dorky-heliotrope-barracuda',1,1,'speed_blitz','splippery_slope'),(6,428,'leaky-magnolia-iguana',1,0,'leap_of_faith',''),(7,429,'flabby-firebrick-bee',1,1,'speed_blitz','cosmic_vision'),(8,310,'gloppy-tomato-wasp',1,1,'war_zone','splippery_slope'),(9,211,'breezy-indigo-starfish',1,1,'war_zone','splippery_slope'),(10,319,'chummy-flax-crab',1,0,'speed_blitz',''),(11,547,'scanty-beige-ray',1,0,'bulls_eye',''),(12,376,'pretty-champagne-spaniel',0,0,'',''),(13,300,'lanky-asparagus-gar',1,1,'speed_blitz','cosmic_vision'),(14,224,'nippy-peach-neanderthal',1,1,'war_zone','splippery_slope'),(15,641,'homey-alizarin-gar',0,0,'',''),(16,430,'messy-wisteria-termite',1,1,'leap_of_faith','resurgence'),(17,558,'woozy-crimson-hound',0,0,'',''),(18,463,'messy-magnolia-woodpecker',1,0,'war_zone',''),(19,603,'smelly-linen-leopard',1,1,'war_zone','splippery_slope'),(20,242,'slaphappy-cinnamon-squirrel',1,0,'bulls_eye',''),(21,292,'ugly-goldenrod-numbat',1,0,'bulls_eye',''),(22,590,'stealthy-xanthic-cattle',1,1,'war_zone','splippery_slope'),(23,483,'tasty-peach-fly',1,1,'bulls_eye','cosmic_vision'),(24,368,'homely-vermilion-toad',1,1,'war_zone','resurgence'),(25,653,'breezy-buff-tarantula',1,0,'leap_of_faith',''),(26,441,'woozy-magenta-birman',1,0,'speed_blitz',''),(27,663,'fuzzy-cornflower-whippet',1,1,'bulls_eye','resurgence'),(28,422,'pasty-silver-raccoon',1,1,'bulls_eye','splippery_slope'),(29,683,'craggy-ivory-dragonfly',1,1,'speed_blitz','splippery_slope');
/*!40000 ALTER TABLE `player_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11 11:56:59

alter table player_details modify L1_Status varchar(30);
alter table player_details modify L2_Status varchar(30);
alter table player_details modify P_ID int primary key;
alter table player_details drop `Unnamed: 0`;

alter table level_details drop `Unnamed: 0`;
alter table level_details modify Dev_ID varchar(10);
alter table level_details modify Difficulty varchar(15);


UPDATE level_details
SET start_time = STR_TO_DATE(start_time, '%d/%m/%Y %H:%i');

alter table level_details add primary key(P_ID,Dev_ID,start_time);

