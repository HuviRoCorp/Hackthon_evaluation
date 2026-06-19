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
-- Table structure for table `problem_statements`
--

DROP TABLE IF EXISTS `problem_statements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem_statements` (
  `problem_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `difficulty_level` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `problem_description` varchar(255) DEFAULT NULL,
  `problem_title` varchar(255) DEFAULT NULL,
  `submission_deadline` date DEFAULT NULL,
  `created_by_admin_id` bigint DEFAULT NULL,
  `parent_problem_id` bigint DEFAULT NULL,
  `custom_problem_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`problem_id`),
  UNIQUE KEY `UKjtvbrb8ls5jwvwkdhfaqiq8m9` (`custom_problem_id`),
  KEY `FK3vd5chsl3alm1klfflthepjns` (`created_by_admin_id`),
  KEY `FKhwerw0k43xihu3d9b851csysb` (`parent_problem_id`),
  CONSTRAINT `FK3vd5chsl3alm1klfflthepjns` FOREIGN KEY (`created_by_admin_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKhwerw0k43xihu3d9b851csysb` FOREIGN KEY (`parent_problem_id`) REFERENCES `problem_statements` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_statements`
--

LOCK TABLES `problem_statements` WRITE;
/*!40000 ALTER TABLE `problem_statements` DISABLE KEYS */;
INSERT INTO `problem_statements` VALUES (1,'2026-04-09 23:37:30.386000','Artificial Intelligence','Software','MSME','AI Based Crop Disease Detection for MSME hackathon submissions.','AI Based Crop Disease Detection','2025-07-20',NULL,NULL,NULL,NULL,NULL),(2,'2026-04-09 23:37:30.386000','Agriculture','Hardware','MSME','Smart Irrigation Monitoring System for MSME hackathon submissions.','Smart Irrigation Monitoring System','2025-07-22',NULL,NULL,NULL,NULL,NULL),(3,'2026-04-09 23:37:30.386000','Artificial Intelligence','Software','MSME','AI Based MSME Market Prediction for MSME hackathon submissions.','AI Based MSME Market Prediction','2025-07-25',NULL,NULL,NULL,NULL,NULL),(4,'2026-04-09 23:37:30.386000','Cyber Security','Software','MSME','Blockchain for MSME Supply Chain Transparency for MSME hackathon submissions.','Blockchain for MSME Supply Chain Transparency','2025-07-28',NULL,NULL,NULL,NULL,NULL),(5,'2026-04-09 23:37:30.386000','Smart Cities','Hardware','MSME','Smart Waste Management using IoT for MSME hackathon submissions.','Smart Waste Management using IoT','2025-07-30',NULL,NULL,NULL,NULL,NULL),(6,'2026-04-09 23:37:30.386000','FinTech','Software','MSME','AI Powered Financial Risk Assessment for MSMEs for MSME hackathon submissions.','AI Powered Financial Risk Assessment for MSMEs','2025-07-20',NULL,NULL,NULL,NULL,NULL),(7,'2026-04-09 23:37:30.386000','FinTech','Software','MSME','Automated MSME Loan Eligibility System for MSME hackathon submissions.','Automated MSME Loan Eligibility System','2025-07-21',NULL,NULL,NULL,NULL,NULL),(8,'2026-04-09 23:37:30.386000','Artificial Intelligence','Software','MSME','AI Chatbot for MSME Government Schemes for MSME hackathon submissions.','AI Chatbot for MSME Government Schemes','2025-07-23',NULL,NULL,NULL,NULL,NULL),(9,'2026-04-09 23:37:30.386000','Smart Cities','Hardware','MSME','Smart Traffic Monitoring System for MSME hackathon submissions.','Smart Traffic Monitoring System','2025-07-24',NULL,NULL,NULL,NULL,NULL),(10,'2026-04-09 23:37:30.386000','Smart Education','Software','MSME','AI Based Job Recommendation System for MSME hackathon submissions.','AI Based Job Recommendation System','2025-07-26',NULL,NULL,NULL,NULL,NULL),(11,'2026-04-09 23:37:30.386000','E-Commerce','Software','MSME','Digital Platform for MSME Vendor Discovery for MSME hackathon submissions.','Digital Platform for MSME Vendor Discovery','2025-07-27',NULL,NULL,NULL,NULL,NULL),(12,'2026-04-09 23:37:30.386000','Smart Cities','Hardware','MSME','IoT Based Smart Water Meter for MSME hackathon submissions.','IoT Based Smart Water Meter','2025-07-29',NULL,NULL,NULL,NULL,NULL),(13,'2026-04-09 23:37:30.386000','Health Tech','Software','MSME','AI Based Medical Diagnosis Support System for MSME hackathon submissions.','AI Based Medical Diagnosis Support System','2025-07-30',NULL,NULL,NULL,NULL,NULL),(14,'2026-04-09 23:37:30.386000','Agriculture','Hardware','MSME','Drone Based Crop Monitoring for MSME hackathon submissions.','Drone Based Crop Monitoring','2025-07-31',NULL,NULL,NULL,NULL,NULL),(15,'2026-04-09 23:37:30.386000','Cyber Security','Software','MSME','Cyber Attack Detection System for MSME hackathon submissions.','Cyber Attack Detection System','2025-07-21',NULL,NULL,NULL,NULL,NULL),(16,'2026-04-09 23:37:30.386000','Smart Cities','Software','MSME','AI Based Traffic Signal Optimization for MSME hackathon submissions.','AI Based Traffic Signal Optimization','2025-07-22',NULL,NULL,NULL,NULL,NULL),(17,'2026-04-09 23:37:30.386000','Energy','Hardware','MSME','Smart Energy Consumption Analyzer for MSME hackathon submissions.','Smart Energy Consumption Analyzer','2025-07-23',NULL,NULL,NULL,NULL,NULL),(18,'2026-04-09 23:37:30.386000','E-Commerce','Software','MSME','AI Based MSME Product Recommendation System for MSME hackathon submissions.','AI Based MSME Product Recommendation System','2025-07-24',NULL,NULL,NULL,NULL,NULL),(19,'2026-04-09 23:37:30.386000','Artificial Intelligence','Software','MSME','Voice Assistant for Rural Entrepreneurs for MSME hackathon submissions.','Voice Assistant for Rural Entrepreneurs','2025-07-25',NULL,NULL,NULL,NULL,NULL),(20,'2026-04-09 23:37:30.386000','Environment','Hardware','MSME','Smart Pollution Monitoring System for MSME hackathon submissions.','Smart Pollution Monitoring System','2025-07-26',NULL,NULL,NULL,NULL,NULL),(21,'2026-04-09 23:37:30.386000','E-Commerce','Software','MSME','Digital Inventory System for MSMEs for MSME hackathon submissions.','Digital Inventory System for MSMEs','2025-07-27',NULL,NULL,NULL,NULL,NULL),(22,'2026-04-09 23:37:30.386000','Cyber Security','Software','MSME','AI Based Fraud Detection System for MSME hackathon submissions.','AI Based Fraud Detection System','2025-07-28',NULL,NULL,NULL,NULL,NULL),(23,'2026-04-09 23:37:30.386000','Smart Education','Hardware','MSME','Smart Classroom Attendance System for MSME hackathon submissions.','Smart Classroom Attendance System','2025-07-29',NULL,NULL,NULL,NULL,NULL),(24,'2026-04-09 23:37:30.386000','Artificial Intelligence','Software','MSME','AI Powered Resume Screening Tool for MSME hackathon submissions.','AI Powered Resume Screening Tool','2025-07-30',NULL,NULL,NULL,NULL,NULL),(25,'2026-04-09 23:37:30.386000','Agriculture','Hardware','MSME','IoT Based Cold Storage Monitoring for MSME hackathon submissions.','IoT Based Cold Storage Monitoring','2025-07-31',NULL,NULL,NULL,NULL,NULL),(26,'2026-04-09 23:37:30.394000','E-Commerce','Software','MSME','Digital Marketplace for Rural MSMEs for MSME hackathon submissions.','Digital Marketplace for Rural MSMEs','2025-07-22',NULL,NULL,NULL,NULL,NULL),(57,'2026-04-15 14:17:06.409000','Agriculture','Hardware','MSME','no food is available for poor people','food problem','2003-02-11',NULL,NULL,NULL,NULL,NULL),(88,'2026-04-15 14:12:57.297000','Agriculture','Hardware','MSME','no water in summer season','water promblem','1999-01-10',NULL,NULL,NULL,NULL,NULL),(1234,'2026-04-20 11:17:09.252000','Artificial Intelligence','Hardware','MSME','test','abcd','2026-04-21',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `problem_statements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:19
