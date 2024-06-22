-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: swp391_db_releasee
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `t23_view_center_notification`
--

DROP TABLE IF EXISTS `t23_view_center_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t23_view_center_notification` (
  `C23_ID` int NOT NULL AUTO_INCREMENT,
  `C23_CENTER_NOTIFICATION_ID` int NOT NULL,
  `C23_HAS_SEEN_BY` int NOT NULL,
  `C23_SEEN_TIME` datetime DEFAULT (now()),
  PRIMARY KEY (`C23_ID`),
  KEY `FK_T23_T22` (`C23_CENTER_NOTIFICATION_ID`),
  KEY `FK_T23_T14` (`C23_HAS_SEEN_BY`),
  CONSTRAINT `FK_T23_T14` FOREIGN KEY (`C23_HAS_SEEN_BY`) REFERENCES `t16_user_center` (`C16_USER_ID`),
  CONSTRAINT `FK_T23_T22` FOREIGN KEY (`C23_CENTER_NOTIFICATION_ID`) REFERENCES `t22_center_notification` (`C22_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t23_view_center_notification`
--

LOCK TABLES `t23_view_center_notification` WRITE;
/*!40000 ALTER TABLE `t23_view_center_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `t23_view_center_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22 22:24:39
