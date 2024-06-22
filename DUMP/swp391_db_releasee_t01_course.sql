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
-- Table structure for table `t01_course`
--

DROP TABLE IF EXISTS `t01_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t01_course` (
  `C01_COURSE_ID` int NOT NULL AUTO_INCREMENT,
  `c01_course_name` varchar(255) NOT NULL,
  `C01_COURSE_CODE` varchar(255) NOT NULL,
  `c01_course_desc` text NOT NULL,
  `C01_COURSE_START_DATE` datetime NOT NULL,
  `C01_COURSE_END_DATE` datetime NOT NULL,
  `C01_AMOUNT_OF_STUDENTS` int NOT NULL,
  `C01_COURSE_FEE` float NOT NULL,
  `C01_CENTER_ID` int NOT NULL,
  `C01_TEACHER_ID` int NOT NULL,
  `C01_SUBJECT_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`C01_COURSE_ID`),
  UNIQUE KEY `C01_COURSE_CODE` (`C01_COURSE_CODE`),
  KEY `FK_COURSE_CENTER` (`C01_CENTER_ID`),
  KEY `FK_COURSE_TEACHER` (`C01_TEACHER_ID`),
  CONSTRAINT `FK_COURSE_CENTER` FOREIGN KEY (`C01_CENTER_ID`) REFERENCES `t03_center` (`C03_CENTER_ID`),
  CONSTRAINT `FK_COURSE_TEACHER` FOREIGN KEY (`C01_TEACHER_ID`) REFERENCES `t14_user` (`C14_USER_ID`),
  CONSTRAINT `T01_CK_DATE` CHECK ((`C01_COURSE_END_DATE` >= `C01_COURSE_START_DATE`))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t01_course`
--

LOCK TABLES `t01_course` WRITE;
/*!40000 ALTER TABLE `t01_course` DISABLE KEYS */;
INSERT INTO `t01_course` VALUES (1,'Course 1','COURSE1001','Description of Class 1','2023-07-01 00:00:00','2024-06-30 00:00:00',30,200,1,5,''),(2,'Course 2','COURSE1002','Description of Class 2','2022-06-02 00:00:00','2023-07-02 00:00:00',32,250,1,5,''),(3,'Course 3','COURSE1003','Description of Class 3','2023-06-03 00:00:00','2024-07-03 00:00:00',34,300,1,5,''),(4,'Course 4','COURSE1004','Description of Class 4','2023-06-04 00:00:00','2024-07-04 00:00:00',40,200,2,6,''),(5,'Course 5','COURSE1005','Description of Class 5','2023-06-05 00:00:00','2024-07-05 00:00:00',41,200,5,7,''),(6,'Course 6','COURSE1006','Description of Class 6','2023-06-06 00:00:00','2024-07-06 00:00:00',27,250,2,8,''),(7,'Course 7','COURSE1007','Description of Class 7','2022-06-07 00:00:00','2023-07-07 00:00:00',29,350,3,5,''),(8,'Course 8','COURSE1008','Description of Class 8','2022-06-08 00:00:00','2023-07-08 00:00:00',32,200,3,6,''),(9,'Course 9','COURSE1009','Description of Class 9','2022-06-09 00:00:00','2023-07-09 00:00:00',35,250,5,5,''),(10,'Course 10','COURSE1010','Description of Class 10','2023-06-10 00:00:00','2024-07-10 00:00:00',27,300,5,8,''),(11,'Course 11','COURSE1011','Description of Class 11','2023-06-11 00:00:00','2024-07-11 00:00:00',28,350,4,5,''),(12,'Course 12','COURSE1012','Description of Class 12','2024-02-12 00:00:00','2024-09-12 00:00:00',32,300,4,5,''),(13,'Course 13','COURSE1013','Description of Class 13','2024-02-13 00:00:00','2024-10-13 00:00:00',35,200,5,5,''),(14,'Course 14','COURSE1014','Description of Class 14','2024-02-14 00:00:00','2024-07-14 00:00:00',38,250,5,8,''),(15,'Course 15','COURSE1015','Description of Class 15','2024-01-15 00:00:00','2024-08-15 00:00:00',39,200,5,6,''),(16,'Course 16','COURSE1016','Description of Class 31','2023-07-17 00:00:00','2024-07-16 00:00:00',30,306,1,10,''),(17,'Course 17','COURSE1017','Description of Class 32','2023-07-18 00:00:00','2024-07-17 00:00:00',39,253,3,15,''),(18,'Course 18','COURSE1018','Description of Class 33','2023-07-19 00:00:00','2024-07-18 00:00:00',40,290,2,5,''),(19,'Course 19','COURSE1019','Description of Class 34','2023-07-20 00:00:00','2024-07-19 00:00:00',42,218,6,17,''),(20,'Course 20','COURSE1020','Description of Class 35','2023-07-21 00:00:00','2024-07-20 00:00:00',47,207,4,11,''),(21,'Course 21','COURSE1021','Description of Class 36','2023-07-22 00:00:00','2024-07-21 00:00:00',40,234,2,18,''),(22,'Course 22','COURSE1022','Description of Class 37','2023-07-23 00:00:00','2024-07-22 00:00:00',35,302,4,13,''),(23,'Course 23','COURSE1023','Description of Class 38','2023-07-24 00:00:00','2024-07-23 00:00:00',36,204,4,6,''),(24,'Course 24','COURSE1024','Description of Class 39','2023-07-25 00:00:00','2024-07-24 00:00:00',37,305,4,11,''),(25,'Course 25','COURSE1025','Description of Class 40','2023-07-26 00:00:00','2024-07-25 00:00:00',35,234,4,12,''),(26,'Course 26','COURSE1026','Description of Class 41','2023-07-27 00:00:00','2024-07-26 00:00:00',30,282,6,5,''),(27,'Course 27','COURSE1027','Description of Class 42','2023-07-28 00:00:00','2024-07-27 00:00:00',32,273,1,6,''),(28,'Course 28','COURSE1028','Description of Class 43','2023-07-29 00:00:00','2024-07-28 00:00:00',31,206,5,19,''),(29,'Course 29','COURSE1029','Description of Class 44','2023-07-30 00:00:00','2024-07-29 00:00:00',30,214,1,13,''),(30,'Course 30','COURSE1030','Description of Class 45','2023-07-31 00:00:00','2024-07-30 00:00:00',37,228,2,6,''),(31,'Course 31','COURSE1031','Description of Class 46','2023-08-01 00:00:00','2024-07-31 00:00:00',34,320,3,14,''),(32,'Course 32','COURSE1032','Description of Class 47','2023-08-02 00:00:00','2024-08-01 00:00:00',33,208,3,13,''),(33,'Course 33','COURSE1033','Description of Class 48','2023-08-03 00:00:00','2024-08-02 00:00:00',36,322,1,18,''),(34,'Course 34','COURSE1034','Description of Class 49','2023-08-04 00:00:00','2024-08-03 00:00:00',44,341,5,15,''),(35,'Course 35','COURSE1035','Description of Class 50','2023-08-05 00:00:00','2024-08-04 00:00:00',32,291,4,9,''),(36,'Course 36','COURSE1036','Description of Class 51','2023-08-06 00:00:00','2024-08-05 00:00:00',46,219,5,14,''),(37,'Course 37','COURSE1037','Description of Class 52','2023-08-07 00:00:00','2024-08-06 00:00:00',47,282,6,7,''),(38,'Course 38','COURSE1038','Description of Class 53','2023-08-08 00:00:00','2024-08-07 00:00:00',33,277,3,9,''),(39,'Course 39','COURSE1039','Description of Class 54','2023-08-09 00:00:00','2024-08-08 00:00:00',38,223,3,11,''),(40,'Course 40','COURSE1040','Description of Class 55','2023-08-10 00:00:00','2024-08-09 00:00:00',30,344,4,17,''),(41,'Course 41','COURSE1041','Description of Class 56','2023-08-11 00:00:00','2024-08-10 00:00:00',37,270,2,13,''),(42,'Course 42','COURSE1042','Description of Class 57','2023-08-12 00:00:00','2024-08-11 00:00:00',43,295,4,12,''),(43,'Course 43','COURSE1043','Description of Class 58','2023-08-13 00:00:00','2024-08-12 00:00:00',40,213,2,16,''),(44,'Course 44','COURSE1044','Description of Class 59','2023-08-14 00:00:00','2024-08-13 00:00:00',41,308,6,8,''),(45,'Course 45','COURSE1045','Description of Class 60','2023-08-15 00:00:00','2024-08-14 00:00:00',32,344,2,19,'');
/*!40000 ALTER TABLE `t01_course` ENABLE KEYS */;
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
