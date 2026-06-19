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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `message` text,
  `user_id` bigint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `FK9y21adhxn0ayjhfocscqox7bh` (`user_id`),
  CONSTRAINT `FK9y21adhxn0ayjhfocscqox7bh` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (3,'2026-04-10 00:42:55.093000',_binary '\0','You have been added to team Team API Smoke 20260410004254595 4d89413e by Team Leader Lead One.',5,NULL),(4,'2026-04-10 00:42:55.100000',_binary '\0','Team created successfully. Invitations have been sent to team members.',4,NULL),(5,'2026-04-10 00:45:16.806000',_binary '\0','You have been added to team Team API Smoke 20260410004516308 4e56aafa by Team Leader Lead One.',7,NULL),(6,'2026-04-10 00:45:16.806000',_binary '\0','Team created successfully. Invitations have been sent to team members.',6,NULL),(7,'2026-04-10 00:46:52.094000',_binary '\0','You have been added to team Team API Smoke 20260410004651607 d00743a7 by Team Leader Lead One.',9,NULL),(8,'2026-04-10 00:46:52.106000',_binary '\0','Team created successfully. Invitations have been sent to team members.',8,NULL),(11,'2026-04-15 12:56:04.514000',_binary '\0','You have been added to team we by Team Leader puja.',20,NULL),(12,'2026-04-15 12:56:04.516000',_binary '\0','Team created successfully. Invitations have been sent to team members.',19,NULL),(13,'2026-04-15 14:18:41.586000',_binary '\0','You have been added to team war by Team Leader puja.',22,NULL),(14,'2026-04-15 14:18:41.586000',_binary '\0','Team created successfully. Invitations have been sent to team members.',21,NULL),(15,'2026-04-20 11:22:19.846000',_binary '\0','You have been added to team Crazy by Team Leader TL-one.',24,NULL),(16,'2026-04-20 11:22:19.852000',_binary '\0','Team created successfully. Invitations have been sent to team members.',23,NULL),(17,'2026-04-20 12:34:16.579000',_binary '\0','You have been added to team pop by Team Leader Puja Midde.',26,NULL),(18,'2026-04-20 12:34:16.592000',_binary '\0','Team created successfully. Invitations have been sent to team members.',25,NULL),(19,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',1,NULL),(20,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',2,NULL),(21,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',4,NULL),(22,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',6,NULL),(23,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',8,NULL),(24,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',17,NULL),(25,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',19,NULL),(26,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',21,NULL),(27,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',23,NULL),(28,'2026-04-20 14:12:09.000000',_binary '\0','Dummy activity: Team profile updated by Team Lead.',25,NULL),(34,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',1,NULL),(35,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',2,NULL),(36,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',4,NULL),(37,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',6,NULL),(38,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',8,NULL),(39,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',17,NULL),(40,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',19,NULL),(41,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',21,NULL),(42,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',23,NULL),(43,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Member removed from team due to duplicate registration.',25,NULL),(49,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',1,NULL),(50,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',2,NULL),(51,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',4,NULL),(52,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',6,NULL),(53,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',8,NULL),(54,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',17,NULL),(55,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',19,NULL),(56,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',21,NULL),(57,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',23,NULL),(58,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Problem statement selected for evaluation round.',25,NULL),(64,'2026-04-20 14:12:10.000000',_binary '\0','Dummy activity: Evaluation report generated successfully.',11,NULL),(65,'2026-04-20 14:19:01.000000',_binary '\0','Evaluation report published for application #2.',6,NULL),(66,'2026-04-20 14:19:01.000000',_binary '\0','Evaluation report published for application #3.',8,NULL),(67,'2026-04-20 14:19:01.000000',_binary '\0','Evaluation report published for application #4.',21,NULL),(68,'2026-04-20 14:19:01.000000',_binary '\0','Evaluation report published for application #5.',23,NULL),(72,'2026-04-20 15:30:31.068000',_binary '\0','You have been added to team cooking by Team Leader raja.',28,NULL),(73,'2026-04-20 15:30:31.082000',_binary '\0','Team created successfully. Invitations have been sent to team members.',27,NULL),(74,'2026-04-30 21:46:15.229000',_binary '\0','Problem selected: Blockchain for MSME Supply Chain Transparency',27,NULL),(75,'2026-04-30 22:25:52.201000',_binary '\0','Application submitted for Blockchain for MSME Supply Chain Transparency by team cooking.',27,NULL),(76,'2026-05-01 19:21:46.323000',_binary '\0','You have been added to team supernova by Team Leader yash.',31,NULL),(77,'2026-05-01 19:21:46.343000',_binary '','Member added: yash (yash1@gmail.com) to team supernova.',29,NULL),(78,'2026-05-01 19:21:46.348000',_binary '','Team created successfully: supernova. Invitations have been sent to team members.',29,NULL),(79,'2026-05-01 20:33:16.436000',_binary '\0','New Problem Statement Added: AI Based Crop Disease Detection',1,'NEW_PROBLEM_ADDED'),(80,'2026-05-01 20:33:16.474000',_binary '\0','Submission Made by Team: AgriGuard Innovators 1777647796188',1,'SUBMISSION_MADE'),(81,'2026-05-01 20:33:16.512000',_binary '\0','Evaluation Completed for: AI Based Crop Disease Detection',1,'EVALUATION_COMPLETED'),(82,'2026-05-01 20:33:16.550000',_binary '\0','Application Approved for: AI Based Crop Disease Detection',1,'APPLICATION_APPROVED'),(83,'2026-05-01 20:33:16.572000',_binary '\0','New AI-based insights available for AI Based Crop Disease Detection',33,'AI_INSIGHT'),(84,'2026-05-12 13:24:01.085000',_binary '\0','You have been added to team acecoders by Team Leader yasu.',39,'GENERAL'),(85,'2026-05-12 13:24:01.101000',_binary '\0','Member added: dhan (dhan@gmail.com) to team acecoders.',38,'GENERAL'),(86,'2026-05-12 13:24:01.117000',_binary '\0','Team created successfully: acecoders. Invitations have been sent to team members.',38,'GENERAL'),(87,'2026-05-12 13:25:26.147000',_binary '\0','Application submitted for Smart Waste Management using IoT by team acecoders.',38,'SUBMISSION_MADE'),(88,'2026-05-13 19:41:38.968000',_binary '\0','Password updated successfully.',33,'GENERAL'),(89,'2026-05-13 20:05:05.509000',_binary '\0','You have been added to team coders by Team Leader Yashasvi Velagapudi.',42,'GENERAL'),(90,'2026-05-13 20:05:05.527000',_binary '\0','Member added: Yashasvi Velaapudi (yashasvivelagaudi@gmail.com) to team coders.',40,'GENERAL'),(91,'2026-05-13 20:05:05.531000',_binary '\0','Team created successfully: coders. Invitations have been sent to team members.',40,'GENERAL'),(92,'2026-05-13 20:06:19.876000',_binary '\0','Application submitted for AI Based Crop Disease Detection by team coders.',40,'SUBMISSION_MADE'),(94,'2026-05-13 22:02:13.345000',_binary '\0','Evaluation completed for AI Based Crop Disease Detection. Final score: 73.67/100',40,'EVALUATION_COMPLETED'),(95,'2026-05-14 21:37:13.354000',_binary '\0','Evaluation completed for Smart Irrigation Monitoring System. Final score: 68.33/100',1,'EVALUATION_COMPLETED');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
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
