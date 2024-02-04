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
-- Table structure for table `requestbook`
--

DROP TABLE IF EXISTS `requestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestbook` (
  `userId` int NOT NULL,
  `bookId` int NOT NULL,
  `requestStatus` bit(1) NOT NULL,
  `orderCount` int NOT NULL,
  `requestId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestbook`
--

LOCK TABLES `requestbook` WRITE;
/*!40000 ALTER TABLE `requestbook` DISABLE KEYS */;
INSERT INTO `requestbook` VALUES (11,2,_binary '',3,1),(11,1,_binary '\0',5,2),(14,1,_binary '\0',4,3),(14,1,_binary '\0',3,4),(14,2,_binary '\0',3,5),(14,2,_binary '\0',3,6),(14,2,_binary '\0',3,7),(14,2,_binary '\0',3,8),(14,1,_binary '\0',1,9),(14,1,_binary '\0',1,10),(11,1,_binary '\0',4,11),(11,1,_binary '\0',4,12),(11,1,_binary '',1,13),(11,1,_binary '\0',2,14),(11,1,_binary '\0',1,15),(11,1,_binary '\0',1,16),(11,1,_binary '',1,17),(11,1,_binary '\0',1,18),(11,1,_binary '\0',1,19),(11,1,_binary '\0',1,20),(11,1,_binary '\0',1,21),(11,1,_binary '\0',1,22),(11,17,_binary '\0',3,23),(11,17,_binary '\0',3,24),(11,22,_binary '\0',1,25),(20,22,_binary '\0',3,26),(11,10,_binary '\0',3,28),(11,10,_binary '\0',3,29),(11,10,_binary '\0',3,30),(11,10,_binary '\0',3,31),(11,10,_binary '\0',3,32),(11,10,_binary '\0',3,33),(11,10,_binary '\0',3,34),(11,10,_binary '\0',3,35),(11,10,_binary '\0',3,36),(11,10,_binary '\0',3,37),(11,10,_binary '\0',3,38),(11,6,_binary '\0',3,39),(11,6,_binary '\0',3,40);
/*!40000 ALTER TABLE `requestbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 11:12:43
