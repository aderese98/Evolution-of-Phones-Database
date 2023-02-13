-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: phones_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  `models_made` int NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Apple',4),(2,'HTC',68),(3,'Nokia',274),(4,'Samsung',587),(5,'Motorolla',280),(6,'Mitac',9),(7,'BlackBerry',44),(8,'Sagem',107),(9,'Eten',22),(10,'HP',17),(11,'Philips',131),(12,'ASUS',25),(13,'Dell',8),(14,'O2',43),(15,'T-Mobile',32),(16,'Gigabyte',26);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera`
--

DROP TABLE IF EXISTS `camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera` (
  `camera_id` int NOT NULL AUTO_INCREMENT,
  `resolution` varchar(45) NOT NULL,
  PRIMARY KEY (`camera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera`
--

LOCK TABLES `camera` WRITE;
/*!40000 ALTER TABLE `camera` DISABLE KEYS */;
INSERT INTO `camera` VALUES (1,'1 MP'),(2,'2 MP'),(3,'3.15 MP'),(4,'5 MP'),(5,'1.3 MP'),(6,'8 MP');
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu_brands`
--

DROP TABLE IF EXISTS `cpu_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu_brands` (
  `cpu_id` int NOT NULL AUTO_INCREMENT,
  `cpu_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu_brands`
--

LOCK TABLES `cpu_brands` WRITE;
/*!40000 ALTER TABLE `cpu_brands` DISABLE KEYS */;
INSERT INTO `cpu_brands` VALUES (1,'ARM'),(2,'CORTEX'),(3,'SAMSUNG SC3'),(4,'SCORPION'),(5,'INTEL'),(6,'SATURN'),(7,'MARVELL');
/*!40000 ALTER TABLE `cpu_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displays`
--

DROP TABLE IF EXISTS `displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `displays` (
  `display_id` int NOT NULL AUTO_INCREMENT,
  `display_name` varchar(45) NOT NULL,
  PRIMARY KEY (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displays`
--

LOCK TABLES `displays` WRITE;
/*!40000 ALTER TABLE `displays` DISABLE KEYS */;
INSERT INTO `displays` VALUES (1,'TFT'),(2,'IPS'),(3,'AMOLED');
/*!40000 ALTER TABLE `displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `high_storage_phones`
--

DROP TABLE IF EXISTS `high_storage_phones`;
/*!50001 DROP VIEW IF EXISTS `high_storage_phones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_storage_phones` AS SELECT 
 1 AS `Phone Model`,
 1 AS `Brand`,
 1 AS `Max Storage`,
 1 AS `Release Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `large_battery_phones`
--

DROP TABLE IF EXISTS `large_battery_phones`;
/*!50001 DROP VIEW IF EXISTS `large_battery_phones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `large_battery_phones` AS SELECT 
 1 AS `Phone Name`,
 1 AS `Brand`,
 1 AS `Max Battery`,
 1 AS `Release`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `less_than_300`
--

DROP TABLE IF EXISTS `less_than_300`;
/*!50001 DROP VIEW IF EXISTS `less_than_300`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `less_than_300` AS SELECT 
 1 AS `Phone Model`,
 1 AS `Brand`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `operating_systems`
--

DROP TABLE IF EXISTS `operating_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operating_systems` (
  `os_id` int NOT NULL AUTO_INCREMENT,
  `os_name` varchar(45) NOT NULL,
  `app_store` varchar(45) NOT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operating_systems`
--

LOCK TABLES `operating_systems` WRITE;
/*!40000 ALTER TABLE `operating_systems` DISABLE KEYS */;
INSERT INTO `operating_systems` VALUES (1,'iOS','Apple Store'),(2,'Android','Play Store'),(3,'Microsoft Windows','Windows Phone Store'),(4,'Linux','Snap Store'),(5,'Symbian','Symbian World'),(6,'BlackBerry','BlackBerry World');
/*!40000 ALTER TABLE `operating_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `os_security_by_brand`
--

DROP TABLE IF EXISTS `os_security_by_brand`;
/*!50001 DROP VIEW IF EXISTS `os_security_by_brand`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `os_security_by_brand` AS SELECT 
 1 AS `Brand`,
 1 AS `Security Feature`,
 1 AS `Operating System`,
 1 AS `App Store`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `phone_best_camera`
--

DROP TABLE IF EXISTS `phone_best_camera`;
/*!50001 DROP VIEW IF EXISTS `phone_best_camera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `phone_best_camera` AS SELECT 
 1 AS `Phone Name`,
 1 AS `Megapixels`,
 1 AS `Brand`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `phone_technology`
--

DROP TABLE IF EXISTS `phone_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_technology` (
  `tech_id` int NOT NULL AUTO_INCREMENT,
  `resolution` varchar(45) NOT NULL,
  `battery_upgrades` varchar(45) NOT NULL,
  `storage_upgrades` varchar(45) NOT NULL,
  `display_id` int NOT NULL,
  PRIMARY KEY (`tech_id`),
  KEY `display_name_fk_idx` (`display_id`),
  CONSTRAINT `display_name_fk_idx` FOREIGN KEY (`display_id`) REFERENCES `displays` (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_technology`
--

LOCK TABLES `phone_technology` WRITE;
/*!40000 ALTER TABLE `phone_technology` DISABLE KEYS */;
INSERT INTO `phone_technology` VALUES (1,'320x480','1220mAh','16GB',1),(2,'640x960','1400mAh','32GB',2),(3,'240x320','1420mAh','128MB',1),(4,'480x800','1300mAh','288MB',1),(5,'480x800','1350mAh','288MB',3),(6,'480x800','1400mAh','512MB',3),(7,'360x640','1320mAh','81MB',1),(8,'208x320','1300mAh','18MB',1),(9,'320x240','1170mAh','64MB',1),(10,'240x320','1000mAh','8MB',1),(11,'480x800','1500mAh','16GB',2),(12,'320x480','1500mAh','180MB',2),(13,'320x240','1150mAh','256MB',1),(14,'320x240','1400mAh','64MB',1),(15,'360x480','1400mAh','1GB',1),(16,'320x480','1500mAh','4GB',1),(17,'240x320','1130mAh','64MB',1),(18,'240x320','670mAh','64MB',1),(19,'480x640','1530mAh','128MB',1),(20,'240x240','1200mAh','64MB',1),(21,'480x800','1450mAh','40MB',1),(22,'480x640','1300mAh','128MB',1),(23,'480x800','1400mAh','1GB',2),(24,'480x640','1300mAh','128MB',1),(25,'240x320','1350mAh','64MB',1),(26,'320x480','1150mAh','4GB',1),(27,'480x800','1800mAh','16GB',2),(28,'640x480','1620mAh','64MB',1),(29,'480x800','1650mAh','16GB',2),(30,'240x320','1840mAh','128MB',1);
/*!40000 ALTER TABLE `phone_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `phone_id` int NOT NULL AUTO_INCREMENT,
  `phone_model` varchar(45) NOT NULL,
  `phone_price` float NOT NULL,
  `phone_release_date` year NOT NULL,
  `brand_id` int NOT NULL,
  `os_id` int NOT NULL,
  `cpu_id` int NOT NULL,
  `security_id` int NOT NULL,
  `camera_id` int NOT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `brand_name_fk_idx` (`brand_id`),
  KEY `os_type_fk_idx` (`os_id`),
  KEY `cpu_name_fk_idx` (`cpu_id`),
  KEY `security_type_fk_idx` (`security_id`),
  KEY `camera_type_fk_idx` (`camera_id`),
  CONSTRAINT `brand_name_fk_idx` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `camera_type_fk_idx` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`camera_id`),
  CONSTRAINT `cpu_name_fk_idx` FOREIGN KEY (`cpu_id`) REFERENCES `cpu_brands` (`cpu_id`),
  CONSTRAINT `os_type_fk_idx` FOREIGN KEY (`os_id`) REFERENCES `operating_systems` (`os_id`),
  CONSTRAINT `security_type_fk_idx` FOREIGN KEY (`security_id`) REFERENCES `security` (`security_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,'iPhone 1',599.99,2007,1,1,1,1,1),(2,'iPhone 3G',299.99,2008,1,1,2,1,2),(3,'iPhone 4',199.99,2010,1,1,2,1,4),(4,'HTC P6300',229.99,2007,2,3,3,2,2),(5,'HTC Touch HD',299.99,2008,2,3,1,1,4),(6,'HP iPAQ hw6915',569.99,2006,10,3,5,3,5),(7,'BlackBerry Curve 8520',74.99,2009,7,6,1,3,2),(8,'Eten glofiish V900',619.99,2008,9,3,3,1,3),(9,'BlackBerry 8820',115.99,2007,7,6,5,3,1),(10,'Mitac MIO Leap G50',359.99,2008,6,3,4,1,2),(11,'Samsung I8000 Omnia II',209.99,2009,4,3,3,1,4),(12,'Garmin-Asus A10',324.99,2010,12,2,3,1,4),(13,'Nokia 5800 XpressMusic',135.99,2008,3,5,1,1,3),(14,'Gigabyte GSmart MS820',399.99,2009,16,3,7,1,4),(15,'Motorola ROKR E6',145.99,2006,5,4,5,2,2),(16,'Philips V900',499.99,2010,11,2,3,1,3),(17,'Samsung I6500U Galaxy',324.99,2010,4,2,3,2,3),(18,'Dell Venue',410.99,2010,13,2,4,1,6),(19,'Samsung I9000 Galaxy S',129.99,2010,4,2,2,1,4),(20,'O2 XDA Trion',379.99,2006,14,3,3,3,2),(21,'Nokia 6708',329.99,2005,3,5,1,2,5),(22,'Mitac MIO A702',359.99,2007,6,3,1,2,3),(23,'HTC Desire',145.99,2010,2,2,4,1,4),(24,'Asus P565',459.99,2009,12,3,8,2,3),(25,'T-Mobile Garminfone',354.99,2010,15,2,1,2,3),(26,'BlackBerry Storm 9530',105.99,2008,7,6,1,2,3),(27,'Motorola Q 11',159.99,2008,5,3,1,3,3),(28,'HP iPAQ 910c',219.99,2007,10,3,7,3,3),(29,'Samsung I9010 Galaxy S Giorgio Armani',299.99,2010,4,2,2,1,4),(30,'O2 XDA Exec',310.99,2009,14,3,5,3,5),(31,'Samsung I8520 Galaxy Beam',274.99,2010,4,2,2,1,6);
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones_phone_technology`
--

DROP TABLE IF EXISTS `phones_phone_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones_phone_technology` (
  `phone_id` int NOT NULL,
  `tech_id` int NOT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `phone_id_fk_idx` (`phone_id`),
  KEY `tech_id_fk_idx` (`tech_id`),
  CONSTRAINT `phone_id_fk_idx` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`),
  CONSTRAINT `tech_id_fk_idx` FOREIGN KEY (`tech_id`) REFERENCES `phone_technology` (`tech_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones_phone_technology`
--

LOCK TABLES `phones_phone_technology` WRITE;
/*!40000 ALTER TABLE `phones_phone_technology` DISABLE KEYS */;
INSERT INTO `phones_phone_technology` VALUES (1,1),(2,1),(3,2),(4,3),(5,4),(23,6),(13,7),(21,8),(27,9),(15,10),(11,11),(19,11),(17,12),(7,14),(8,14),(9,15),(26,15),(12,16),(22,17),(10,19),(6,21),(16,21),(18,23),(14,24),(24,24),(20,25),(25,26),(32,26),(31,27),(30,28),(29,29),(28,30);
/*!40000 ALTER TABLE `phones_phone_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `price_average_by_brand`
--

DROP TABLE IF EXISTS `price_average_by_brand`;
/*!50001 DROP VIEW IF EXISTS `price_average_by_brand`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `price_average_by_brand` AS SELECT 
 1 AS `Brand`,
 1 AS `Average Price`,
 1 AS `Most Expensive Phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security` (
  `security_id` int NOT NULL AUTO_INCREMENT,
  `security_feature_name` varchar(45) NOT NULL,
  PRIMARY KEY (`security_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
INSERT INTO `security` VALUES (1,'Slide to Unlock'),(2,'PIN Number'),(3,'Password'),(4,'Pattern');
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `high_storage_phones`
--

/*!50001 DROP VIEW IF EXISTS `high_storage_phones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_storage_phones` AS select `phones`.`phone_model` AS `Phone Model`,`brands`.`brand_name` AS `Brand`,`phone_technology`.`storage_upgrades` AS `Max Storage`,`phones`.`phone_release_date` AS `Release Year` from (((`phones` join `brands` on((`phones`.`brand_id` = `brands`.`brand_id`))) join `phones_phone_technology` on((`phones`.`phone_id` = `phones_phone_technology`.`phone_id`))) join `phone_technology` on((`phones_phone_technology`.`tech_id` = `phone_technology`.`tech_id`))) where (`phone_technology`.`storage_upgrades` like '%GB') order by `brands`.`brand_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `large_battery_phones`
--

/*!50001 DROP VIEW IF EXISTS `large_battery_phones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `large_battery_phones` AS select `phones`.`phone_model` AS `Phone Name`,`brands`.`brand_name` AS `Brand`,`phone_technology`.`battery_upgrades` AS `Max Battery`,`phones`.`phone_release_date` AS `Release` from (((`phone_technology` join `phones_phone_technology` on((`phone_technology`.`tech_id` = `phones_phone_technology`.`tech_id`))) join `phones` on((`phones_phone_technology`.`phone_id` = `phones`.`phone_id`))) join `brands` on((`phones`.`brand_id` = `brands`.`brand_id`))) where (`phone_technology`.`battery_upgrades` > '1000mAh') order by `phone_technology`.`battery_upgrades` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `less_than_300`
--

/*!50001 DROP VIEW IF EXISTS `less_than_300`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `less_than_300` AS select `phones`.`phone_model` AS `Phone Model`,`brands`.`brand_name` AS `Brand`,`phones`.`phone_price` AS `Price` from (`phones` join `brands` on((`phones`.`brand_id` = `brands`.`brand_id`))) where `phones`.`phone_price` in (select `phones`.`phone_price` from `phones` where (`phones`.`phone_price` < 300)) order by `phones`.`phone_price` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `os_security_by_brand`
--

/*!50001 DROP VIEW IF EXISTS `os_security_by_brand`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `os_security_by_brand` AS select `brands`.`brand_name` AS `Brand`,max(`security`.`security_feature_name`) AS `Security Feature`,`operating_systems`.`os_name` AS `Operating System`,`operating_systems`.`app_store` AS `App Store` from (((`brands` join `phones` on((`brands`.`brand_id` = `phones`.`brand_id`))) join `security` on((`phones`.`security_id` = `security`.`security_id`))) join `operating_systems` on((`phones`.`os_id` = `operating_systems`.`os_id`))) group by `brands`.`brand_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `phone_best_camera`
--

/*!50001 DROP VIEW IF EXISTS `phone_best_camera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `phone_best_camera` AS select `phones`.`phone_model` AS `Phone Name`,max(`camera`.`resolution`) AS `Megapixels`,`brands`.`brand_name` AS `Brand` from ((`phones` join `camera` on((`phones`.`camera_id` = `camera`.`camera_id`))) join `brands` on((`phones`.`brand_id` = `brands`.`brand_id`))) group by `brands`.`brand_name` order by `camera`.`resolution` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `price_average_by_brand`
--

/*!50001 DROP VIEW IF EXISTS `price_average_by_brand`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `price_average_by_brand` AS select `brands`.`brand_name` AS `Brand`,round(avg(`phones`.`phone_price`),2) AS `Average Price`,concat(`phones`.`phone_model`,' at ','$',max(`phones`.`phone_price`)) AS `Most Expensive Phone` from (`phones` join `brands` on((`phones`.`brand_id` = `brands`.`brand_id`))) group by `brands`.`brand_name` order by `phones`.`phone_price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 20:01:37
