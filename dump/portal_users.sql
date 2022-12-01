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
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mayur','Buha',1,'2003-10-19','test','$2b$04$XGWh/9Cf.bJhSIUxRk4pju.rwlynix50c51WRvQddqD96wTGPQ9Bq',1),(20,'b','bb',1,'2003-10-19','test@super','$2b$04$XGWh/9Cf.bJhSIUxRk4pju.rwlynix50c51WRvQddqD96wTGPQ9Bq',NULL),(23,'test','test',1,'2022-01-01','test@s','$2b$04$R.BycuI.SH84EzhcAnzUteS8HyL0MSX4wjSOCN1A4tNi7tQVwGhhG',NULL),(24,'some','one1',1,'2003-10-19','test1','test',NULL),(25,'some','one2',1,'2003-10-19','test2','test',NULL),(26,'some','one3',1,'2003-10-19','test3','test',NULL),(27,'some','one9',1,'2003-10-19','test9','test',NULL),(28,'some','one5',1,'2003-10-19','test5','test',NULL),(29,'some','one6',1,'2003-10-19','test6','test',NULL),(30,'some','one7',1,'2003-10-19','test7','test',NULL),(31,'some','one8',1,'2003-10-19','test8','test',NULL),(32,'all2','all2',1,'2022-01-01','all2','$2b$04$Gp/EY2WrMIxyod8gwh1Zm.m1nKmjPUjDjjsk.4KhWBvqmroaAVuBy',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02  3:20:24
