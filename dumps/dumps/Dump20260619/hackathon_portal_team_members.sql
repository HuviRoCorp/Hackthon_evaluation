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
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `member_id` bigint NOT NULL AUTO_INCREMENT,
  `college` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roll_number` varchar(255) DEFAULT NULL,
  `mentor_member_id` bigint DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `invitation_status` varchar(255) DEFAULT NULL,
  `invited_by` bigint DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `uk_team_members_email` (`email`),
  KEY `FKkqve5956rf9ji8c8hwrakv1pt` (`mentor_member_id`),
  KEY `FKtgca08el3ofisywcf11f0f76t` (`team_id`),
  KEY `FKee8x7x5026imwmma9kndkxs36` (`user_id`),
  CONSTRAINT `FKee8x7x5026imwmma9kndkxs36` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKkqve5956rf9ji8c8hwrakv1pt` FOREIGN KEY (`mentor_member_id`) REFERENCES `team_members` (`member_id`),
  CONSTRAINT `FKtgca08el3ofisywcf11f0f76t` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,'MSME College','BTech','2026-04-09 23:39:13.327000','lead.one@example.com','Male','9999999991','Lead One','R001',NULL,1,NULL,NULL,NULL),(2,'MSME College','BTech','2026-04-09 23:39:13.327000','member.two@example.com','Female','9999999992','Member Two','R002',NULL,1,NULL,NULL,NULL),(3,'MSME College','BTech','2026-04-09 23:39:44.746000','lead.233944@example.com','Male','9999999991','Lead One','R233944',NULL,2,NULL,NULL,NULL),(4,'MSME College','BTech','2026-04-09 23:40:10.807000','lead.20260409234010@example.com','Male','9999999991','Lead One','R20260409234010',NULL,3,NULL,NULL,NULL),(5,'MSME College','BTech','2026-04-09 23:40:49.139000','lead.20260409234049@example.com','Male','9999999991','Lead One','R20260409234049',NULL,4,NULL,NULL,NULL),(6,'MSME College','BTech','2026-04-09 23:41:03.221000','lead.20260409234103@example.com','Male','9999999991','Lead One','R20260409234103',NULL,5,NULL,NULL,NULL),(7,'MSME College','BTech','2026-04-09 23:41:12.870000','lead.20260409234112@example.com','Male','9999999991','Lead One','R20260409234112',NULL,6,NULL,NULL,NULL),(8,'jj','jj','2026-04-10 00:12:19.467000','middepuja1005@gmail.com','Male','09121290915','Puja Midde','900',NULL,7,NULL,NULL,NULL),(9,'j','j','2026-04-10 00:12:19.473000','opop@gmail.com','Female','09131290915','Midde Puja','66',NULL,7,NULL,NULL,NULL),(10,'p','j','2026-04-10 00:12:19.478000','middea1011@gmail.com','Male','09121290913','Midde Puja','443',NULL,7,NULL,NULL,NULL),(11,'n','j','2026-04-10 00:12:19.481000','middepuj@gmail.com','Female','09121293915','Midde Puja','34',NULL,7,NULL,NULL,NULL),(13,'MSME College','BTech','2026-04-10 00:42:55.090000','member.20260410004254595.4d89413e@example.com','Male','8004254595','Lead One','R202604100042545954d89413e',NULL,10,5,'INVITED',4),(14,'MSME College','BTech','2026-04-10 00:45:16.802000','member.20260410004516308.4e56aafa@example.com','Male','8004516308','Lead One','R202604100045163084e56aafa',NULL,11,7,'INVITED',6),(15,'MSME College','BTech','2026-04-10 00:46:52.094000','member.20260410004651607.d00743a7@example.com','Male','8004651607','Lead One','R20260410004651607d00743a7',NULL,12,9,'INVITED',8),(17,'12','2','2026-04-15 12:56:04.511000','middeja1005@gmail.com','Male','09121290922','Puja Midde','23',NULL,19,20,'INVITED',19),(18,'stlw','be ','2026-04-15 14:18:41.577000','mid1005@gmail.com','Female','091212907885','Puja Midde','32',NULL,20,22,'INVITED',21),(19,'teasetes','test','2026-04-20 11:22:19.835000','abc@gmail.com','Female','777777777','abc','123',NULL,21,24,'INVITED',23),(20,'stlw','stw','2026-04-20 12:34:16.579000','mi@gmail.com','Male','09121290976','Puja Midde','cse',NULL,25,26,'INVITED',25),(21,'stlw','cse','2026-04-20 15:30:31.051000','uja1005@gmail.com','Female','9121290898','Puj','160',NULL,26,28,'INVITED',27),(22,'stlw','','2026-05-01 19:21:46.323000','yash1@gmail.com','Female','8888877777','yash','',NULL,28,31,'INVITED',29),(23,'','','2026-05-12 13:24:01.085000','dhan@gmail.com','Female','7777755555','dhan','',NULL,30,39,'INVITED',38),(24,'','','2026-05-13 20:05:05.509000','yashasvivelagaudi@gmail.com','Female','8789875852','Yashasvi Velaapudi','',NULL,32,42,'INVITED',40);
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
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
