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
-- Table structure for table `tasks_logs`
--

DROP TABLE IF EXISTS `tasks_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `key_id` int DEFAULT NULL,
  `action_id` int DEFAULT NULL,
  `sub_task_id` int DEFAULT NULL,
  `before` varchar(300) DEFAULT NULL,
  `after` varchar(300) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tl_tlkm_key_id_idx` (`key_id`),
  KEY `tl_tlam_action_id_idx` (`action_id`),
  KEY `tl_tm_task_id_idx` (`task_id`),
  KEY `tl_u_user_id_idx` (`user_id`),
  KEY `tl_t_task_id_idx` (`sub_task_id`),
  CONSTRAINT `tl_st_sub_task_id_2` FOREIGN KEY (`sub_task_id`) REFERENCES `sub_tasks` (`id`),
  CONSTRAINT `tl_t_task_id` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  CONSTRAINT `tl_tlam_action_id` FOREIGN KEY (`action_id`) REFERENCES `tasks_logs_actions_master` (`id`),
  CONSTRAINT `tl_tlkm_key_id` FOREIGN KEY (`key_id`) REFERENCES `tasks_logs_key_master` (`id`),
  CONSTRAINT `tl_u_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3751 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_logs`
--

LOCK TABLES `tasks_logs` WRITE;
/*!40000 ALTER TABLE `tasks_logs` DISABLE KEYS */;
INSERT INTO `tasks_logs` VALUES (3740,1,39,1,1,NULL,NULL,NULL,'2022-12-07 10:36:45'),(3741,1,39,2,1,3659,NULL,NULL,'2022-12-07 10:36:45'),(3742,1,39,2,1,3660,NULL,NULL,'2022-12-07 10:36:45'),(3743,1,39,2,1,3661,NULL,NULL,'2022-12-07 10:36:45'),(3744,1,39,2,1,3662,NULL,NULL,'2022-12-07 10:36:45'),(3745,1,39,2,1,3663,NULL,NULL,'2022-12-07 10:36:45'),(3746,1,39,2,1,3664,NULL,NULL,'2022-12-07 10:36:45'),(3747,1,40,1,1,NULL,NULL,NULL,'2022-12-07 10:43:27'),(3748,1,40,2,1,3665,NULL,NULL,'2022-12-07 10:43:27'),(3749,1,40,2,1,3666,NULL,NULL,'2022-12-07 10:43:27'),(3750,1,40,2,1,3667,NULL,NULL,'2022-12-07 10:43:27');
/*!40000 ALTER TABLE `tasks_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 16:18:54
