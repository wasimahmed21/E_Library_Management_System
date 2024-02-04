-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `borrowbook`
--

DROP TABLE IF EXISTS `borrowbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowbook` (
  `borrowedId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `borrowedDate` date NOT NULL,
  `bookFine` int NOT NULL,
  `bookId` int NOT NULL,
  `returnStatus` bit(1) NOT NULL,
  `returnDate` date NOT NULL,
  `approveStatus` bit(1) NOT NULL,
  `feedBackStatus` bit(1) NOT NULL,
  PRIMARY KEY (`borrowedId`,`userId`,`borrowedDate`,`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowbook`
--

LOCK TABLES `borrowbook` WRITE;
/*!40000 ALTER TABLE `borrowbook` DISABLE KEYS */;
INSERT INTO `borrowbook` VALUES (1,11,'2024-01-26',180,9,_binary '','2024-01-09',_binary '\0',_binary ''),(2,11,'2024-01-26',0,5,_binary '','2024-01-19',_binary '\0',_binary ''),(3,33,'2024-01-26',0,11,_binary '\0','2024-02-09',_binary '\0',_binary ''),(4,32,'2024-01-27',0,11,_binary '','2024-01-29',_binary '\0',_binary '\0'),(5,11,'2024-01-27',0,3,_binary '','2024-01-14',_binary '\0',_binary '\0'),(6,11,'2024-01-27',0,3,_binary '','2024-01-10',_binary '\0',_binary '\0'),(7,11,'2024-01-27',0,3,_binary '','2024-01-19',_binary '\0',_binary '\0'),(8,11,'2023-12-22',0,20,_binary '','2024-01-01',_binary '\0',_binary '\0'),(9,14,'2024-01-27',0,10,_binary '','2024-02-10',_binary '\0',_binary ''),(10,14,'2024-01-27',0,19,_binary '','2024-01-10',_binary '\0',_binary ''),(11,14,'2024-01-27',0,14,_binary '','2024-02-10',_binary '\0',_binary '\0'),(14,32,'2024-01-27',399,6,_binary '\0','2024-02-10',_binary '',_binary '\0'),(15,32,'2024-01-27',170,8,_binary '','2024-01-10',_binary '\0',_binary '\0'),(16,20,'2024-01-27',0,22,_binary '\0','2024-02-10',_binary '',_binary '\0'),(17,31,'2024-01-29',0,7,_binary '','2024-02-12',_binary '\0',_binary ''),(18,31,'2024-01-29',0,6,_binary '','2024-02-12',_binary '\0',_binary ''),(19,11,'2024-01-30',0,12,_binary '','2024-02-13',_binary '\0',_binary '\0'),(20,11,'2024-01-30',0,12,_binary '\0','2024-02-13',_binary '',_binary '\0'),(21,33,'2024-01-31',0,16,_binary '\0','2024-02-14',_binary '\0',_binary '\0'),(23,14,'2024-02-01',0,2,_binary '\0','2024-02-15',_binary '',_binary '\0');
/*!40000 ALTER TABLE `borrowbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 11:12:42
