-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: hackathon_portal
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `evaluation_scores`
--

DROP TABLE IF EXISTS `evaluation_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_scores` (
  `score_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `score_value` double DEFAULT NULL,
  `weighted_score` double DEFAULT NULL,
  `criteria_id` bigint DEFAULT NULL,
  `evaluation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`score_id`),
  KEY `FKb933arpq4tqjnrc9w47gruijn` (`criteria_id`),
  KEY `FKgyjiarew9rnmjcve0nhbteu4i` (`evaluation_id`),
  CONSTRAINT `FKb933arpq4tqjnrc9w47gruijn` FOREIGN KEY (`criteria_id`) REFERENCES `evaluation_criteria` (`criteria_id`),
  CONSTRAINT `FKgyjiarew9rnmjcve0nhbteu4i` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluations` (`evaluation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_scores`
--

LOCK TABLES `evaluation_scores` WRITE;
/*!40000 ALTER TABLE `evaluation_scores` DISABLE KEYS */;
INSERT INTO `evaluation_scores` VALUES (7,'2026-05-13 22:02:13.314000',100,16.67,1,4),(8,'2026-05-13 22:02:13.314000',90,15,2,4),(9,'2026-05-13 22:02:13.314000',90,15,3,4),(10,'2026-05-13 22:02:13.314000',83,13.84,4,4),(11,'2026-05-13 22:02:13.314000',80,13.33,5,4),(12,'2026-05-13 22:02:13.314000',87,14.49,6,4),(13,'2026-05-14 21:37:13.139000',70,11.67,1,2),(14,'2026-05-14 21:37:13.139000',80,13.34,2,2),(15,'2026-05-14 21:37:13.139000',90,15,3,2),(16,'2026-05-14 21:37:13.139000',80,13.34,4,2),(17,'2026-05-14 21:37:13.139000',80,13.33,5,2),(18,'2026-05-14 21:37:13.139000',70,11.66,6,2);
/*!40000 ALTER TABLE `evaluation_scores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:18
