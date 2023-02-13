DROP DATABASE IF EXISTS `phones_db`;
CREATE DATABASE  IF NOT EXISTS `phones_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phones_db`;

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

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `phone_id` INT NOT NULL AUTO_INCREMENT,
  `phone_model` VARCHAR(45) NOT NULL,
  `phone_price` FLOAT NOT NULL,
  `phone_release_date` YEAR DEFAULT NULL,
  `brand_id` INT DEFAULT NULL,
  `os_id` INT NOT NULL,
  `cpu_id` INT NOT NULL,
  `security_id` INT DEFAULT NULL,
  `camera_id` INT DEFAULT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `brand_name_fk_idx` (`brand_id`),
  KEY `os_type_fk_idx` (`os_id`),
  KEY `cpu_name_fk_idx` (`cpu_id`),
  KEY `security_type_fk_idx` (`security_id`),
  KEY `camera_type_fk_idx` (`camera_id`),
  CONSTRAINT `brand_name_fk_idx` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `camera_type_fk_idx` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`camera_id`),
  CONSTRAINT `security_type_fk_idx` FOREIGN KEY (`security_id`) REFERENCES `security` (`security_id`),
  CONSTRAINT `os_type_fk_idx` FOREIGN KEY (`os_id`) REFERENCES `operating_systems` (`os_id`),
  CONSTRAINT `cpu_name_fk_idx` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,'iPhone 1' , 599.99, 2007, 1, 1, 1, 1, 1),(2,'iPhone 3G' , 299.99, 2008, 1, 1, 2, 1, 2),(3,'iPhone 4' , 199.99, 2010, 1, 1, 2, 1, 4),(4,'HTC P6300' , 229.99, 2007, 2, 3, 3, 2, 2),
(5,'HTC Touch HD' , 299.99, 2008, 2, 3, 1, 1, 4), (6,'HP iPAQ hw6915' , 569.99, 2006, 10, 3, 5, 3, 5), (7,'BlackBerry Curve 8520' , 74.99, 2009, 7, 6, 1, 3, 2), (8,'Eten glofiish V900' , 619.99, 2008, 9, 3, 3, 1, 3),
(9,'BlackBerry 8820' , 115.99, 2007, 7, 6, 5, 3, 1), (10,'Mitac MIO Leap G50' , 359.99, 2008, 6, 3, 4, 1, 2), (11,'Samsung I8000 Omnia II' , 209.99, 2009, 4, 3, 3, 1, 4), (12,'Garmin-Asus A10' , 324.99, 2010, 12, 2, 3, 1, 4),
(13,'Nokia 5800 XpressMusic' , 135.99, 2008, 3, 5, 1, 1, 3),(14,'Gigabyte GSmart MS820' , 399.99, 2009, 16, 3, 7, 1, 4),(16,'Motorola ROKR E6' , 145.99, 2006, 5, 4, 5, 2, 2),(17,'Philips V900' , 499.99, 2010, 11, 2, 3, 1, 3),
(18,'Samsung I6500U Galaxy' , 324.99, 2010, 4, 2, 3, 2, 3),(19,'Dell Venue' , 410.99, 2010, 13, 2, 4, 1, 6),(20,'Samsung I9000 Galaxy S' , 129.99, 2010, 4, 2, 2, 1, 4),(21,'O2 XDA Trion' , 379.99, 2006, 14, 3, 3, 3, 2),
(22,'Nokia 6708' , 329.99, 2005, 3, 5, 1, 2, 5),(23,'Mitac MIO A702' , 359.99, 2007, 6, 3, 1, 2, 3),(24,'HTC Desire' , 145.99, 2010, 2, 2, 4, 1, 4),(25,'Asus P565' , 459.99, 2009, 12, 3, 8, 2, 3),
(26,'T-Mobile Garminfone' , 354.99, 2010, 15, 2, 1, 2, 3), (27,'BlackBerry Storm 9530' , 105.99, 2008, 7, 6, 1, 2, 3), (28,'Motorola Q 11' , 159.99, 2008, 5, 3, 1, 3, 3);
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` INT NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(45) NOT NULL,
  `models_made` INT DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `brands` VALUES (1,'Apple' , 4), (2,'HTC' , 68), (3,'Nokia' , 274), (4,'Samsung' , 587), (5,'Motorolla' , 280), (6,'Mitac' , 9), 
(7,'BlackBerry' , 44), (8,'Sagem' , 107), (9,'Eten' , 22), (10,'HP' , 17), (11,'Philips' , 131), (12,'ASUS' , 25), (13,'Dell' , 8), (14,'O2' , 43), (15,'T-Mobile' , 32), (16,'Gigabyte' , 26);

DROP TABLE IF EXISTS `operating_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operating_systems` (
  `os_id` INT NOT NULL AUTO_INCREMENT,
  `os_name` VARCHAR(45) NOT NULL,
  `app_store` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO `operating_systems` VALUES (1, 'iOS' , 'Apple Store'), (2, 'Android' , 'Play Store'), (3, 'Microsoft Windows' , 'Windows Phone Store'), (4, 'Linux' , 'Snap Store'), 
(5, 'Symbian' , 'Symbian World'), (6, 'BlackBerry' , 'BlackBerry World');

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `cpu_id` INT NOT NULL AUTO_INCREMENT,
  `cpu_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `cpu` VALUES (1, 'ARM'), (2, 'CORTEX'), (3, 'SAMSUNG SC3'), (4, 'SCORPION'), (5, 'INTEL'), (6, 'SATURN'), (7, 'MARVELL'), (8, 'MARVELL');


DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security` (
  `security_id` INT NOT NULL AUTO_INCREMENT,
  `security_feature_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`security_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `security` VALUES (1, 'Slide to Unlock'), (2, 'PIN Number'), (3, 'Password'), (4, 'Pattern');


DROP TABLE IF EXISTS `camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera` (
  `camera_id` INT NOT NULL AUTO_INCREMENT,
  `resolution` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`camera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `camera` VALUES (1,'1 MP'), (2,'2 MP'), (3,'3.15 MP'), (4,'5 MP'), (5,'1.3 MP'), (6, '8 MP');
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `phones_phone_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones_phone_technology` (
  `phone_id` INT NOT NULL,
  `tech_id` INT NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `phones_phone_technology` VALUES (1, 1), (2, 1), (3, 2), (4, 3), (5, 4), (6, 21), (7, 14), (8, 14);

DROP TABLE IF EXISTS `phone_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_technology` (
  `tech_id` INT NOT NULL AUTO_INCREMENT,
  `resolution` VARCHAR(45) NOT NULL,
  `battery_upgrades` VARCHAR(45) NOT NULL,
  `storage_upgrades` VARCHAR(45) NOT NULL,
  `display_id` INT DEFAULT NULL,
  PRIMARY KEY (`tech_id`),
  KEY `display_name_fk_idx` (`display_id`),
  CONSTRAINT `display_name_fk_idx` FOREIGN KEY (`display_id`) REFERENCES `displays` (`display_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `phone_technology` VALUES (1,'320x480', '1220mAh', '16GB',1), (2,'640x960', '1400mAh', '32GB',2), (3,'240x320', '1420mAh', '128MB',1), (4,'480x800', '1300mAh', '288MB',1), 
(5,'480x800', '1350mAh', '288MB',3), (6,'480x800', '1400mAh', '512MB',3), (7,'360x640', '1320mAh', '81MB',1), (8,'208x320', '1300mAh', '18MB',1), (9,'320x240', '1170mAh', '64MB',1), 
(10,'240x320', '1000mAh', '8MB',1), (11,'480x800', '1500mAh', '16GB',2), (12,'320x480', '1500mAh', '180MB',2), (13,'480x800', '1500mAh', '16GB',2), (14,'320x240', '1150mAh', '256MB',1), 
(15,'320x240', '1400mAh', '64MB',1), (16,'360x480', '1400mAh', '1GB',1), (17,'320x480', '1500mAh', '4GB',1), (18,'240x320', '1130mAh', '64MB',1), (19,'240x320', '670mAh', '64MB',1), 
(20,'480x640', '1530mAh', '128MB',1), (21,'240x240', '1200mAh', '64MB',1), (22,'480x800', '1450mAh', '40MB',1), (23,'480x640', '1300mAh', '128MB',1), (24,'480x800', '1400mAh', '1GB',2),
(25,'480x640', '1300mAh', '128MB',1), (26,'240x320', '1350mAh', '64MB',1), (27,'320x480', '1150mAh', '4GB',1);

DROP TABLE IF EXISTS `displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `displays` (
  `display_id` INT NOT NULL AUTO_INCREMENT,
  `display_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`display_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `displays` VALUES (1,'TFT'), (2,'IPS'), (3,'AMOLED');
