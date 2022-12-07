CREATE DATABASE  IF NOT EXISTS `portal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portal`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: portal
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clients_master`
--

DROP TABLE IF EXISTS `clients_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cin` varchar(21) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `ca_firm_name` varchar(45) DEFAULT NULL,
  `ca_address` varchar(100) DEFAULT NULL,
  `ca_pan` varchar(10) DEFAULT NULL,
  `ca_email` varchar(60) DEFAULT NULL,
  `con_name` varchar(45) DEFAULT NULL,
  `con_email` varchar(60) DEFAULT NULL,
  `con_phone` varchar(15) DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `clients_master_clients_type_master_type_id_idx` (`type_id`),
  CONSTRAINT `clients_master_clients_type_master_type_id` FOREIGN KEY (`type_id`) REFERENCES `clients_type_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_master`
--

LOCK TABLES `clients_master` WRITE;
/*!40000 ALTER TABLE `clients_master` DISABLE KEYS */;
INSERT INTO `clients_master` VALUES (15,'TechAvidus','CIN12345',1,'TechAvidus','somewhere on earth','PAN123456','ca@service.domain','John Doe','contact@service.domain','911234567890',1),(16,'TechSome','CIN5678',9,'TechSome','nowhere','PAN7890123','techsomeca@service.domain','contact tech some','techsomecon@service.domain','911234857690',1),(17,'testupdatedstatereset6','UPD987654',3,'test','test','PAN654321','testca@service.domain','testCon','testcon@service.domain','9876543216',0),(18,'Awedus','CIN990',6,'Awedus','603, My apartment, My Village, State','AUEI4848E','bt@gtail.com','Bhavesh','bt@gmail.com','778797',1);
/*!40000 ALTER TABLE `clients_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 16:18:53
