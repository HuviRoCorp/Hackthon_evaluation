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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `abstract_text` text,
  `ppt_file_name` varchar(255) DEFAULT NULL,
  `ppt_file_path` varchar(255) DEFAULT NULL,
  `submission_date` datetime(6) DEFAULT NULL,
  `submission_version` varchar(255) DEFAULT NULL,
  `problem_id` bigint DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  `demo_link` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `submission_status` varchar(255) DEFAULT NULL,
  `technology_stack` text,
  `ai_score` int DEFAULT NULL,
  `ai_remarks` text,
  `manual_score` int DEFAULT NULL,
  `manual_remarks` text,
  `evaluated_at` timestamp NULL DEFAULT NULL,
  `judge_score` int DEFAULT NULL,
  `judged_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_application_team_problem` (`team_id`,`problem_id`),
  KEY `FKql04fdhvifwvdm0n3e93q7g3x` (`problem_id`),
  CONSTRAINT `FK9n9quq7671a4f9nti4rxakqq8` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `FKql04fdhvifwvdm0n3e93q7g3x` FOREIGN KEY (`problem_id`) REFERENCES `problem_statements` (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'Smoke test abstract for full flow validation.','sample.ppt','C:\\Desktop\\MSME\\backend\\uploads\\applications\\1e7de078-3f0e-4c4d-9fa2-a366f8c7165a_sample.ppt','2026-04-09 23:41:12.904000','v1.0',1,6,NULL,NULL,'Evaluated',NULL,78,'AI suggests the solution is feasible with moderate implementation complexity and strong MSME impact.',82,'Manual review confirms clear problem understanding, practical stack choice, and a deployable scope.','2026-04-20 08:42:09',NULL,NULL),(2,'Smoke test abstract for full flow validation.','sample.ppt','C:\\Desktop\\MSME\\backend\\uploads\\applications\\18246ba1-31c0-490c-b7b1-42332f16f8b3_sample.ppt','2026-04-10 00:45:16.889000','v1.0',1,11,NULL,NULL,'Evaluated',NULL,74,'AI evaluation indicates good alignment with the selected MSME problem and a practical baseline architecture.',79,'Manual review confirms clear implementation path with acceptable delivery risk and good problem fit.','2026-04-20 08:49:01',NULL,NULL),(3,'Smoke test abstract for full flow validation.','sample.ppt','C:\\Desktop\\MSME\\backend\\uploads\\applications\\7fbc2e7e-eb9a-46a4-bbaf-64c479fabf95_sample.ppt','2026-04-10 00:46:52.183000','v1.0',1,12,NULL,NULL,'Evaluated',NULL,81,'AI evaluation highlights strong feasibility and measurable value for MSME process optimization.',84,'Manual remarks: solution has strong clarity, realistic milestones, and strong scalability potential.','2026-04-20 08:49:01',NULL,NULL),(4,'recent new movies in Primecl telugu\n4:19???pm\nAs of mid-April 2026, Amazon Prime Video has introduced several new Telugu titles, including original crime thrillers and recent theatrical hits. \nLatest Telugu Movies on Prime (April 2026)\nS. Saraswathi: This suspense thriller starring Varalaxmi Sarathkumar premiered on 3 April 2026. It follows a mother\'s extreme quest for justice after a brutal crime.\n\nRepu Udayam 10 Gantalaku: A high-stakes race-against-time thriller featuring Abhinav Gomatam and Hebah Patel, available for streaming since 6 April 2026.\n\nO\'Romeo: A large-scale action drama starring Shahid Kapoor and Tripti Dimri, inspired by Mumbai\'s underworld, which debuted on the platform on 10 April 2026 with a Telugu dubbed version.\n\nVishnu Vinyasam: A romantic comedy starring Sree Vishnu that made its digital debut on 20 March 2026 after a successful theatrical run.\n\nNaari Naari Naduma Murari: A romantic comedy featuring Sharwanand, Samyuktha, and Sakshi Vaidya, released on OTT in early February and currently trending. \nPrime Video\nPrime Video\n +6\nDubbed & Trending Regional Hits\n\nAnnagaaru Vostharu (Vaa Vaathiyaar): The Telugu dubbed version of this Karthi-starrer is currently available on Prime Video.\n\nPatang: A rural drama centered around childhood friendship and a kite-flying championship, added recently to the library.\n\nAnni Manchi Sakunamule: A 2025 family entertainer starring Santosh Sobhan that continues to be a top-watched regional title. \nAmazon.in\nAmazon.in\n +3\nHighly Anticipated Upcoming Releases \nMovie / Series 	Expected Date	Type\nMatka King	17 April 2026	Crime Drama Series (Vijay Varma)\nThe Running Man	17 April 2026	Sci-Fi Action (English/Telugu Dub)\nDacoit: A Love Story	May 2026 (TBA)	Action Thriller (Adivi Sesh, Mrunal Thakur)\nWould you like to know more about the upcoming Telugu web series scheduled for Prime Video later this year?\n\n\n\n\n\nundefined\nundefined\nundefined\n12 sites\nTelugu - Movies: Prime Video - Amazon.in\n* S.Saraswathi. StarringVaralaxmi Sarathkumar. Prime Video. For ???279 to rent. Or available with a Prime membership. 2026, Ages 16 ...\n\nAmazon.in\n\nNaari Naari Naduma Murari - Prime Video\nGautham, a caring son, supports his father\'s unconventional marriage, believing love has no limits. But divorce lawyer Niranjan op...\n\nPrime Video\n\nS.Saraswathi - Prime Video\nS.Saraswathi. Suspense. 3.3/5. 20261 h 59 minUHD. Lakshmi, a head nurse and devoted mother, lives for her daughter Saraswathi. Whe...\n\nPrime Video\n\nShow all\nrecent new movies in Primecl telugu\n4:19???pm\nAs of mid-April 2026, Amazon Prime Video has introduced several new Telugu titles, including original crime thrillers and recent theatrical hits. \nLatest Telugu Movies on Prime (April 2026)\nS. Saraswathi: This suspense thriller starring Varalaxmi Sarathkumar premiered on 3 April 2026. It follows a mother\'s extreme quest for justice after a brutal crime.\n\nRepu Udayam 10 Gantalaku: A high-stakes race-against-time thriller featuring Abhinav Gomatam and Hebah Patel, available for streaming since 6 April 2026.\n\nO\'Romeo: A large-scale action drama starring Shahid Kapoor and Tripti Dimri, inspired by Mumbai\'s underworld, which debuted on the platform on 10 April 2026 with a Telugu dubbed version.\n\nVishnu Vinyasam: A romantic comedy starring Sree Vishnu that made its digital debut on 20 March 2026 after a successful theatrical run.\n\nNaari Naari Naduma Murari: A romantic comedy featuring Sharwanand, Samyuktha, and Sakshi Vaidya, released on OTT in early February and currently trending. \nPrime Video\nPrime Video\n +6\nDubbed & Trending Regional Hits\n\nAnnagaaru Vostharu (Vaa Vaathiyaar): The Telugu dubbed version of this Karthi-starrer is currently available on Prime Video.\n\nPatang: A rural drama centered around childhood friendship and a kite-flying championship, added recently to the library.\n\nAnni Manchi Sakunamule: A 2025 family entertainer starring Santosh Sobhan that continues to be a top-watched regional title. \nAmazon.in\nAmazon.in\n +3\nHighly Anticipated Upcoming Releases \nMovie / Series 	Expected Date	Type\nMatka King	17 April 2026	Crime Drama Series (Vijay Varma)\nThe Running Man	17 April 2026	Sci-Fi Action (English/Telugu Dub)\nDacoit: A Love Story	May 2026 (TBA)	Action Thriller (Adivi Sesh, Mrunal Thakur)\nWould you like to know more about the upcoming Telugu web series scheduled for Prime Video later this year?\n\n\n\n\n\nundefined\nundefined\nundefined\n12 sites\nTelugu - Movies: Prime Video - Amazon.in\n* S.Saraswathi. StarringVaralaxmi Sarathkumar. Prime Video. For ???279 to rent. Or available with a Prime membership. 2026, Ages 16 ...\n\nAmazon.in\n\nNaari Naari Naduma Murari - Prime Video\nGautham, a caring son, supports his father\'s unconventional marriage, believing love has no limits. But divorce lawyer Niranjan op...\n\nPrime Video\n\nS.Saraswathi - Prime Video\nS.Saraswathi. Suspense. 3.3/5. 20261 h 59 minUHD. Lakshmi, a head nurse and devoted mother, lives for her daughter Saraswathi. Whe...\n\nPrime Video\n\nShow all\nrecent new movies in Primecl telugu\n4:19???pm\nAs of mid-April 2026, Amazon Prime Video has introduced several new Telugu titles, including original crime thrillers and recent theatrical hits. \nLatest Telugu Movies on Prime (April 2026)\nS. Saraswathi: This suspense thriller starring Varalaxmi Sarathkumar premiered on 3 April 2026. It follows a mother\'s extreme quest for justice after a brutal crime.\n\nRepu Udayam 10 Gantalaku: A high-stakes race-against-time thriller featuring Abhinav Gomatam and Hebah Patel, available for streaming since 6 April 2026.\n\nO\'Romeo: A large-scale action drama starring Shahid Kapoor and Tripti Dimri, inspired by Mumbai\'s underworld, which debuted on the platform on 10 April 2026 with a Telugu dubbed version.\n\nVishnu Vinyasam: A romantic comedy starring Sree Vishnu that made its digital debut on 20 March 2026 after a successful theatrical run.\n\nNaari Naari Naduma Murari: A romantic comedy featuring Sharwanand, Samyuktha, and Sakshi Vaidya, released on OTT in early February and currently trending. \nPrime Video\nPrime Video\n +6\nDubbed & Trending Regional Hits\n\nAnnagaaru Vostharu (Vaa Vaathiyaar): The Telugu dubbed version of this Karthi-starrer is currently available on Prime Video.\n\nPatang: A rural drama centered around childhood friendship and a kite-flying championship, added recently to the library.\n\nAnni Manchi Sakunamule: A 2025 family entertainer starring Santosh Sobhan that continues to be a top-watched regional title. \nAmazon.in\nAmazon.in\n +3\nHighly Anticipated Upcoming Releases \nMovie / Series 	Expected Date	Type\nMatka King	17 April 2026	Crime Drama Series (Vijay Varma)\nThe Running Man	17 April 2026	Sci-Fi Action (English/Telugu Dub)\nDacoit: A Love Story	May 2026 (TBA)	Action Thriller (Adivi Sesh, Mrunal Thakur)\nWould you like to know more about the upcoming Telugu web series scheduled for Prime Video later this year?\n\n\n\n\n\nundefined\nundefined\nundefined\n12 sites\nTelugu - Movies: Prime Video - Amazon.in\n* S.Saraswathi. StarringVaralaxmi Sarathkumar. Prime Video. For ???279 to rent. Or available with a Prime membership. 2026, Ages 16 ...\n\nAmazon.in\n\nNaari Naari Naduma Murari - Prime Video\nGautham, a caring son, supports his father\'s unconventional marriage, believing love has no limits. But divorce lawyer Niranjan op...\n\nPrime Video\n\nS.Saraswathi - Prime Video\nS.Saraswathi. Suspense. 3.3/5. 20261 h 59 minUHD. Lakshmi, a head nurse and devoted mother, lives for her daughter Saraswathi. Whe...\n\nPrime Video\n\nShow all','MSME_Template.pptx','C:\\Desktop\\MSME\\backend\\uploads\\applications\\1c9a8fb7-c698-4989-b193-581edf36fa4e_MSME_Template.pptx','2026-04-15 14:20:37.526000','v1.0',2,20,'https://youtu.be/eDWhbQGMPtU?si=EUhT3mq4UFVFMXE0','https://github.com/pujareddy2/notion-assistant.git','Evaluated','python',69,'AI score reflects moderate feasibility due to dependency assumptions, but core concept remains useful.',73,'Manual review: concept is valid, but needs tighter scope definition and better validation metrics.','2026-04-20 08:49:01',NULL,NULL),(5,'asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf asdfads asdfasdf','subnetting.pptx','C:\\Desktop\\MSME\\backend\\uploads\\applications\\54c6d8ec-399d-4818-b77e-a5a26a295ba0_subnetting.pptx','2026-04-20 11:29:04.454000','v1.0',1,21,'','','Evaluated','',86,'AI score is high due to clear articulation, strong impact potential, and implementable architecture choices.',88,'Manual feedback: excellent proposal quality with clear impact path and convincing technical execution plan.','2026-04-20 08:49:01',NULL,NULL),(6,'sdcmkl.\'Portal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights Reservedsdcmkl.\'Portal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights Reservedsdcmkl.\'Portal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights Reservedsdcmkl.\'Portal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights Reservedsdcmkl.\'Portal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights ReservedPortal Logo\n\nProfile\nLogout\nInnovation Portal\nHome\nAbout Us\nProblem Statements\nGuidelines\nFAQs\nContact Us\nApplication Form\nProblem Details\nProblem ID: 10\n\nTitle: AI Based Job Recommendation System\n\nOrganization: MSME\n\nCategory: Software\n\nTheme: Smart Education\n\nTeam Overview\nTeam Name: cooking\n\nTeam Leader: raja\n\nTeam Members: 1\n\nIdea Abstract / Solution Overview\nsdcmkl.\'\nWord Count: 1 / 6000\n\nTechnology Stack\nPython, TensorFlow, IoT Sensors\nGitHub Repository Link\nhttps://github.com/...\nPrototype Demo Link\nGoogle Drive or YouTube link\nUpload Presentation\nNo file chosen\nSubmit Application\nTG-MSME\nMinistry of MSME | Government of Telangana\n\nEmail: support@tg-msme.gov.in\n\nPhone: +91-XXXXXXXXXX\n\n?? 2025 TG-MSME | All Rights Reserved','MSME-Hackathon-Innovation-Portal (1).pptx.pptx','C:\\Desktop\\MSME - Copy\\backend\\uploads\\applications\\7b070fb6-e16e-450a-bd64-95d35718e122_MSME-Hackathon-Innovation-Portal (1).pptx.pptx','2026-04-20 15:31:19.083000','v1.0',10,26,'','','EVALUATED','python',95,'AI assistant is unavailable. Fallback AI suggestion generated from abstract depth.',95,'good','2026-04-20 15:01:43',NULL,NULL),(7,'helloo these is a good idea You are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nvvvYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.\nYou are an expert full-stack engineer (React + Spring Boot + MySQL) and system architect.\n\nYour task is to **refactor and enhance the EVALUATION DASHBOARD + EVALUATION WORKFLOW** into a fully functional, production-level system with AI + Human evaluation.\n\nIMPORTANT:\n\n* No dummy/static logic\n* Everything must connect to backend + database\n* Maintain role-based correctness\n* Ensure consistency with Problem Statements and Submissions\n\n---\n\nSECTION 1: HEADER & UI STRUCTURE\n\n1. Replace current \"Evaluation Workspace / Dashboard\" header with:\n\n* A structured top container (similar to problem page redesign)\n* Use:\n\n  * Glassmorphism OR pastel UI\n  * Rounded container box\n  * Soft shadow\n\n2. Remove:\n\n* Any unnecessary sentences like:\n  \"criteria loading from backend\"\n\n3. Keep UI clean and professional\n\n---\n\nSECTION 2: DATA CONSISTENCY (CRITICAL)\n\n1. Ensure:\n\n* Problem ID shown here = EXACT Problem ID from Problem Statement table\n\n2. DO NOT:\n\n* Generate random IDs\n* Use mismatched IDs\n\n3. Backend must enforce:\n\n* Foreign key consistency\n\n---\n\nSECTION 3: STATUS LOGIC\n\n1. Status column must be dynamic:\n\n* IF evaluated → show \"Evaluated\" with indicator/icon\n* IF not evaluated → show \"Pending\"\n\n2. Status must come from backend (not static)\n\n---\n\nSECTION 4: REMOVE UNWANTED ELEMENTS\n\nREMOVE:\n\n* \"Problem Analytics\" page opening\n* \"Open Problem Analysis\" button redirect\n* Separate analytics page (not needed)\n\n---\n\nSECTION 5: INLINE ANALYTICS (TABLE LEVEL)\n\nInstead of separate page:\n\nFor each problem/submission row:\n\n* Show analytics directly:\n\n  * Total submissions\n  * Evaluated count\n  * Pending count\n\n---\n\nSECTION 6: VIEW REPORT (IMPORTANT)\n\nWhen clicking \"View Report\":\n\nSHOW:\n\n1. Submission Details:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* PPT Link\n* GitHub Repo Link\n* Project Demo Link\n\n2. Evaluation Data:\n\n* AI Evaluation (marks + remarks)\n* Human Evaluation (marks + remarks)\n* Final Score\n\n---\n\nSECTION 7: EVALUATION FLOW (CORE FEATURE)\n\n---\n\n7.1 WHEN CLICKING \"EVALUATE\"\n\nRedirect to Evaluation Page\n\n---\n\n7.2 TOP SECTION (DETAILS)\n\nDisplay:\n\n* Problem ID\n* Problem Title\n* Team ID\n* Team Name\n* Abstract\n* GitHub Repo\n* PPT Link\n* Demo Link\n\n---\n\n7.3 AI EVALUATION (AUTO)\n\nWhen page loads OR button clicked:\n\nTrigger backend AI evaluation\n\nCRITERIA (at least 5–6):\n\n* Innovation\n* Technical Implementation\n* Problem Relevance\n* Use of AI Tools\n* Feasibility\n* Scalability\n\nAI should:\n\n* Assign score (out of 10 for each)\n* Generate:\n\n  * Detailed remarks (~200–300 words)\n\nDISPLAY:\n\n* Criteria-wise scores\n* AI total score\n* AI remarks\n\n---\n\n7.4 HUMAN EVALUATION\n\nBelow AI section:\n\nCreate input-based evaluation:\n\nFor SAME criteria:\n\n* Input fields (0–10)\n\nFeatures:\n\n* Auto total calculation\n* Real-time update\n\nAlso include:\n\n* Remarks textarea\n\n---\n\n7.5 FINAL SCORE BLOCK\n\nDisplay:\n\n* AI Score\n* Human Score\n* Final Score (configurable logic)\n\n---\n\n7.6 SUBMIT EVALUATION\n\nButton: \"Submit Evaluation\"\n\nON CLICK:\n\n* Save:\n\n  * AI scores\n  * Human scores\n  * Remarks\n* Update status → Evaluated\n* Generate evaluation report\n\n---\n\nSECTION 8: REPORT GENERATION\n\nAuto-generate structured report:\n\nInclude:\n\n1. Submission Info\n2. AI Evaluation:\n\n   * Criteria scores\n   * Remarks\n3. Human Evaluation:\n\n   * Criteria scores\n   * Remarks\n4. Final Score\n\nStore in DB\n\n---\n\nSECTION 9: DATABASE DESIGN\n\n---\n\nCREATE/UPDATE TABLES:\n\n1. Evaluation Table:\n\n* id\n* submission_id\n* ai_scores (JSON)\n* ai_remark (TEXT)\n* human_scores (JSON)\n* human_remark (TEXT)\n* total_score\n* status\n\n2. Ensure relations:\n\nSubmission → Evaluation (1:1)\nProblem → Submission (1:N)\nTeam → Submission (1:N)\n\n---\n\nSECTION 10: BACKEND APIs\n\nCreate/Update:\n\n* GET /evaluations\n* GET /evaluation/{submissionId}\n* POST /evaluation/run-ai\n* POST /evaluation/submit\n\n---\n\nSECTION 11: FINAL VALIDATION\n\nEnsure:\n\n* No dummy logic\n* AI + Human evaluation works correctly\n* Reports are generated correctly\n* Status updates properly\n* Data consistency across tables\n* UI is professional and clean\n\n---\n\nOUTPUT REQUIREMENTS:\n\n1. Show:\n\n* Updated components\n* APIs created\n* DB changes\n\n2. Provide:\n\n* Flow explanation\n* Before → After comparison\n\n3. Ensure production-ready code\n\n---\n\nNow implement the full evaluation system as described.','1e7de078-3f0e-4c4d-9fa2-a366f8c7165a_sample.ppt','C:\\Desktop\\MSME - Copy\\backend\\uploads\\applications\\f03ead9d-6d6d-4cd8-b817-9186eceb4b90_1e7de078-3f0e-4c4d-9fa2-a366f8c7165a_sample.ppt','2026-04-30 22:25:52.152000','v1.0',4,26,'http://localhost:3000/apply/4','https://github.com/pujareddy2/notion-assistant.git','ASSIGNED','python ,iot',68,'AI evaluation indicates a balanced submission for Blockchain for MSME Supply Chain Transparency. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 6.83/10.',NULL,NULL,NULL,NULL,NULL),(8,'A machine-learning pipeline that classifies leaf disease from captured farm images and provides treatment guidance.','https://example.com/agri-detection.pptx','https://example.com/agri-detection.pptx','2026-05-01 20:33:16.228000','v1.0',1,29,'https://example.com/agri-detection-demo','https://github.com/organization/agri-detection','JUDGED','GitHub repo with image classification code, model checkpoints, and deployment scripts.',84,'AI analysis suggests the concept is relevant and feasible.',88,'Meets the evaluation criteria.','2026-05-01 15:03:16',86,'Judge User'),(9,'An IoT-based waste management dashboard that reports bin fill levels and routes pickup trucks to high-priority locations.','https://example.com/waste-management.pptx','https://example.com/waste-management.pptx','2026-05-01 20:33:16.276000','v1.0',2,29,'https://example.com/waste-management-demo','https://github.com/organization/waste-management','EVALUATED','GitHub repo with sensor ingestion, dashboard UI, and route optimization logic.',53,'AI evaluation indicates a balanced submission for Smart Irrigation Monitoring System. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.33/10.',78,'good','2026-05-14 16:07:13',NULL,NULL),(10,'fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd \nfihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd \nfihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd \nfihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd \nfihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd fihisnin kfnkdzjxv kzncksdjvn knckxdjvnfldsi kdfnidsguidgjne kfnijsdflnsdigjd','HackPortal_PitchDeck.pptx','D:\\MSME_new-main\\backend\\uploads\\applications\\7a5a9b89-3306-40f6-9d30-f9090937aa79_HackPortal_PitchDeck.pptx','2026-05-12 13:25:26.138000','v1.0',5,30,'','','SUBMITTED','python',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y \nbb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y','AI_Interior_Design.pptx','D:\\pujaproject-main\\backend\\uploads\\applications\\762acc0e-f720-45b2-a47a-a883a7c650cf_AI_Interior_Design.pptx','2026-05-13 20:06:19.868000','v1.0',1,32,'','','EVALUATED','',52,'AI evaluation indicates a balanced submission for AI Based Crop Disease Detection. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.17/10.',88,'good but can go better','2026-05-13 16:32:13',NULL,NULL);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:20
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
-- Table structure for table `evaluations`
--

DROP TABLE IF EXISTS `evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluations` (
  `evaluation_id` bigint NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `evaluation_status` varchar(255) DEFAULT NULL,
  `application_id` bigint DEFAULT NULL,
  `judge_id` bigint DEFAULT NULL,
  `parent_evaluation_id` bigint DEFAULT NULL,
  `round_id` bigint DEFAULT NULL,
  `ai_remark` longtext,
  `ai_scores` longtext,
  `human_remark` longtext,
  `human_scores` longtext,
  `report_payload` longtext,
  `total_score` double DEFAULT NULL,
  `evaluator_id` bigint DEFAULT NULL,
  PRIMARY KEY (`evaluation_id`),
  KEY `FK4dmy35k49uvtqh1r5mu6hu9t7` (`application_id`),
  KEY `FK8cyrveedd6yt4csaavhlqbam8` (`judge_id`),
  KEY `FKsppo1qx9jxwy60oyx72i0cxl5` (`parent_evaluation_id`),
  KEY `FK9w9mepsbqfhcyeyia5km0rw5d` (`round_id`),
  KEY `FKqihdmjba0yaamhjp8gr00c27m` (`evaluator_id`),
  CONSTRAINT `FK4dmy35k49uvtqh1r5mu6hu9t7` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  CONSTRAINT `FK8cyrveedd6yt4csaavhlqbam8` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`judge_id`),
  CONSTRAINT `FK9w9mepsbqfhcyeyia5km0rw5d` FOREIGN KEY (`round_id`) REFERENCES `rounds` (`round_id`),
  CONSTRAINT `FKqihdmjba0yaamhjp8gr00c27m` FOREIGN KEY (`evaluator_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKsppo1qx9jxwy60oyx72i0cxl5` FOREIGN KEY (`parent_evaluation_id`) REFERENCES `evaluations` (`evaluation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluations`
--

LOCK TABLES `evaluations` WRITE;
/*!40000 ALTER TABLE `evaluations` DISABLE KEYS */;
INSERT INTO `evaluations` VALUES (1,'Evaluation completed and ready for judge review.','2026-05-01 20:33:16.302000','COMPLETED',8,NULL,NULL,NULL,'AI review shows a strong fit to the stated problem.','{\"Problem Relevance\":9.0,\"Feasibility\":8.5,\"Technical Implementation\":8.0,\"Scalability\":7.5,\"Use of AI Tools\":8.0,\"Innovation\":8.5}','Human review confirms the solution is practical and well scoped.','{\"Problem Relevance\":9.0,\"Feasibility\":8.5,\"Technical Implementation\":9.0,\"Scalability\":8.0,\"Use of AI Tools\":7.5,\"Innovation\":8.0}',NULL,86,NULL),(2,'good','2026-05-01 21:39:59.501000','COMPLETED',9,NULL,NULL,NULL,'AI evaluation indicates a balanced submission for Smart Irrigation Monitoring System. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.33/10.','{\"Innovation\":5.0,\"Technical Implementation\":7.0,\"Problem Relevance\":5.0,\"Use of AI Tools\":4.0,\"Feasibility\":7.0,\"Scalability\":4.0}','good','{\"Innovation\":7.0,\"Technical Implementation\":8.0,\"Problem Relevance\":9.0,\"Use of AI Tools\":8.0,\"Feasibility\":8.0,\"Scalability\":7.0}','{\"submissionId\":9,\"problemId\":2,\"problemTitle\":\"Smart Irrigation Monitoring System\",\"problemTheme\":null,\"problemStatement\":\"Smart Irrigation Monitoring System for MSME hackathon submissions.\",\"problemStatus\":null,\"teamId\":29,\"teamName\":\"AgriGuard Innovators 1777647796188\",\"teamLeaderName\":\"Lead One\",\"teamMembers\":[],\"abstractText\":\"An IoT-based waste management dashboard that reports bin fill levels and routes pickup trucks to high-priority locations.\",\"pptLink\":\"/api/applications/9/submission-file\",\"githubLink\":\"https://github.com/organization/waste-management\",\"demoLink\":\"https://example.com/waste-management-demo\",\"applicationStatus\":\"EVALUATED\",\"appliedAt\":\"2026-05-01T15:03:16.276+00:00\",\"evaluatorId\":null,\"evaluatorName\":null,\"aiScores\":{\"Innovation\":5.0,\"Technical Implementation\":7.0,\"Problem Relevance\":5.0,\"Use of AI Tools\":4.0,\"Feasibility\":7.0,\"Scalability\":4.0},\"aiRemark\":\"AI evaluation indicates a balanced submission for Smart Irrigation Monitoring System. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.33/10.\",\"aiTotalScore\":5.33,\"humanScores\":{\"Innovation\":7.0,\"Technical Implementation\":8.0,\"Problem Relevance\":9.0,\"Use of AI Tools\":8.0,\"Feasibility\":8.0,\"Scalability\":7.0},\"humanRemark\":\"good\",\"humanTotalScore\":7.83,\"overallReview\":\"good\",\"evaluationStatus\":\"COMPLETED\",\"totalScore\":68.33,\"normalizedScore\":68.33,\"judgeId\":null,\"judgeName\":null,\"judgeScore\":null,\"finalDecision\":\"PENDING\",\"judgeRemarks\":\"good\",\"judgeScores\":{},\"judgeReportId\":null,\"evaluationDate\":\"2026-05-14T16:07:13.284+00:00\",\"justificationDate\":null,\"reportJson\":null,\"criteriaScores\":[{\"criteriaId\":1,\"criteriaName\":\"Innovation\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":70.0,\"weightedScore\":11.67,\"reviewComments\":null},{\"criteriaId\":2,\"criteriaName\":\"Technical Implementation\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":80.0,\"weightedScore\":13.34,\"reviewComments\":null},{\"criteriaId\":3,\"criteriaName\":\"Problem Relevance\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":90.0,\"weightedScore\":15.0,\"reviewComments\":null},{\"criteriaId\":4,\"criteriaName\":\"Use of AI Tools\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":80.0,\"weightedScore\":13.34,\"reviewComments\":null},{\"criteriaId\":5,\"criteriaName\":\"Feasibility\",\"description\":null,\"weightPercentage\":16.66,\"maxScore\":10.0,\"scoreValue\":80.0,\"weightedScore\":13.33,\"reviewComments\":null},{\"criteriaId\":6,\"criteriaName\":\"Scalability\",\"description\":null,\"weightPercentage\":16.66,\"maxScore\":10.0,\"scoreValue\":70.0,\"weightedScore\":11.66,\"reviewComments\":null}]}',68.33,33),(3,NULL,'2026-05-12 13:19:22.243000','AI_COMPLETED',7,NULL,NULL,NULL,'AI evaluation indicates a balanced submission for Blockchain for MSME Supply Chain Transparency. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 6.83/10.','{\"Innovation\":8.0,\"Technical Implementation\":8.0,\"Problem Relevance\":6.0,\"Use of AI Tools\":7.0,\"Feasibility\":8.0,\"Scalability\":4.0}',NULL,NULL,NULL,NULL,33),(4,'good but can go better','2026-05-13 22:01:11.758000','COMPLETED',11,NULL,NULL,NULL,'AI evaluation indicates a balanced submission for AI Based Crop Disease Detection. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.17/10.','{\"Innovation\":6.0,\"Technical Implementation\":6.0,\"Problem Relevance\":5.0,\"Use of AI Tools\":4.0,\"Feasibility\":6.0,\"Scalability\":4.0}','good but can go better','{\"Innovation\":10.0,\"Technical Implementation\":9.0,\"Problem Relevance\":9.0,\"Use of AI Tools\":8.3,\"Feasibility\":8.0,\"Scalability\":8.7}','{\"submissionId\":11,\"problemId\":1,\"problemTitle\":\"AI Based Crop Disease Detection\",\"problemTheme\":null,\"problemStatement\":\"AI Based Crop Disease Detection for MSME hackathon submissions.\",\"problemStatus\":null,\"teamId\":32,\"teamName\":\"coders\",\"teamLeaderName\":\"Yashasvi Velagapudi\",\"teamMembers\":[\"Yashasvi Velaapudi\"],\"abstractText\":\"bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y \\nbb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y bb jj nn nn m mm j j j kk k k k k kk k k   k g gg g g g g yy y y\",\"pptLink\":\"/api/applications/11/submission-file\",\"githubLink\":\"\",\"demoLink\":\"\",\"applicationStatus\":\"EVALUATED\",\"appliedAt\":\"2026-05-13T14:36:19.868+00:00\",\"evaluatorId\":null,\"evaluatorName\":null,\"aiScores\":{\"Innovation\":6.0,\"Technical Implementation\":6.0,\"Problem Relevance\":5.0,\"Use of AI Tools\":4.0,\"Feasibility\":6.0,\"Scalability\":4.0},\"aiRemark\":\"AI evaluation indicates a balanced submission for AI Based Crop Disease Detection. The idea demonstrates a meaningful attempt to align with the defined problem scope and offers evidence of solution intent through the abstract and attached artifacts. Innovation and technical implementation are stronger when repository and demonstration references are present, while feasibility and scalability improve with explicit rollout and operational planning. The AI criteria scoring suggests that the concept is directionally sound, but execution depth can be improved by clarifying measurable outcomes, architecture decisions, and validation strategy. Additional detail on edge cases, constraints, and adoption risks would increase confidence for production viability. The current profile supports progression to human review, with focus recommended on implementation clarity and impact quantification. Overall AI average score: 5.17/10.\",\"aiTotalScore\":5.17,\"humanScores\":{\"Innovation\":10.0,\"Technical Implementation\":9.0,\"Problem Relevance\":9.0,\"Use of AI Tools\":8.3,\"Feasibility\":8.0,\"Scalability\":8.7},\"humanRemark\":\"good but can go better\",\"humanTotalScore\":8.83,\"overallReview\":\"good but can go better\",\"evaluationStatus\":\"COMPLETED\",\"totalScore\":73.67,\"normalizedScore\":73.67,\"judgeId\":null,\"judgeName\":null,\"judgeScore\":null,\"finalDecision\":\"PENDING\",\"judgeRemarks\":\"good but can go better\",\"judgeScores\":{},\"judgeReportId\":null,\"evaluationDate\":\"2026-05-13T16:32:13.334+00:00\",\"justificationDate\":null,\"reportJson\":null,\"criteriaScores\":[{\"criteriaId\":1,\"criteriaName\":\"Innovation\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":100.0,\"weightedScore\":16.67,\"reviewComments\":null},{\"criteriaId\":2,\"criteriaName\":\"Technical Implementation\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":90.0,\"weightedScore\":15.0,\"reviewComments\":null},{\"criteriaId\":3,\"criteriaName\":\"Problem Relevance\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":90.0,\"weightedScore\":15.0,\"reviewComments\":null},{\"criteriaId\":4,\"criteriaName\":\"Use of AI Tools\",\"description\":null,\"weightPercentage\":16.67,\"maxScore\":10.0,\"scoreValue\":83.0,\"weightedScore\":13.84,\"reviewComments\":null},{\"criteriaId\":5,\"criteriaName\":\"Feasibility\",\"description\":null,\"weightPercentage\":16.66,\"maxScore\":10.0,\"scoreValue\":80.0,\"weightedScore\":13.33,\"reviewComments\":null},{\"criteriaId\":6,\"criteriaName\":\"Scalability\",\"description\":null,\"weightPercentage\":16.66,\"maxScore\":10.0,\"scoreValue\":87.0,\"weightedScore\":14.49,\"reviewComments\":null}]}',73.67,NULL);
/*!40000 ALTER TABLE `evaluations` ENABLE KEYS */;
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
-- Table structure for table `evaluation_criteria`
--

DROP TABLE IF EXISTS `evaluation_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_criteria` (
  `criteria_id` bigint NOT NULL AUTO_INCREMENT,
  `criteria_name` varchar(255) DEFAULT NULL,
  `max_score` double DEFAULT NULL,
  `weight_percentage` double DEFAULT NULL,
  PRIMARY KEY (`criteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_criteria`
--

LOCK TABLES `evaluation_criteria` WRITE;
/*!40000 ALTER TABLE `evaluation_criteria` DISABLE KEYS */;
INSERT INTO `evaluation_criteria` VALUES (1,'Innovation',10,16.67),(2,'Technical Implementation',10,16.67),(3,'Problem Relevance',10,16.67),(4,'Use of AI Tools',10,16.67),(5,'Feasibility',10,16.66),(6,'Scalability',10,16.66);
/*!40000 ALTER TABLE `evaluation_criteria` ENABLE KEYS */;
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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:20
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
-- Table structure for table `judges`
--

DROP TABLE IF EXISTS `judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judges` (
  `judge_id` bigint NOT NULL AUTO_INCREMENT,
  `final_decision` varchar(255) DEFAULT NULL,
  `final_score` double DEFAULT NULL,
  `judged_at` datetime(6) DEFAULT NULL,
  `remarks` text,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`judge_id`),
  KEY `FKhihe48qkp00vxsiblubrhsj5t` (`application_id`),
  KEY `FK8hu8uxk2nltu61ij2t7ja1jq` (`user_id`),
  CONSTRAINT `FK8hu8uxk2nltu61ij2t7ja1jq` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKhihe48qkp00vxsiblubrhsj5t` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges`
--

LOCK TABLES `judges` WRITE;
/*!40000 ALTER TABLE `judges` DISABLE KEYS */;
INSERT INTO `judges` VALUES (1,'APPROVED',86,'2026-05-01 20:33:16.327000','Meets the evaluation criteria.',8,34);
/*!40000 ALTER TABLE `judges` ENABLE KEYS */;
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
-- Table structure for table `judge_reports`
--

DROP TABLE IF EXISTS `judge_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_reports` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ai_remark` longtext,
  `ai_scores` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `evaluation_date` datetime(6) DEFAULT NULL,
  `final_score` double DEFAULT NULL,
  `human_remark` longtext,
  `human_scores` longtext,
  `judge_remark` longtext,
  `judge_scores` longtext,
  `justification_date` datetime(6) DEFAULT NULL,
  `submission_date` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `evaluation_id` bigint NOT NULL,
  `problem_id` bigint NOT NULL,
  `submission_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa7qwqvlloyjxypvmnh0s9ilti` (`evaluation_id`),
  KEY `FKs4dhdxh7ms34rj0s2uvg2vaeb` (`problem_id`),
  KEY `FKqf827tv8o3bxyljajt7f4n6by` (`submission_id`),
  KEY `FK6uy6xh48l6hf9es90q0hfnytp` (`team_id`),
  CONSTRAINT `FK6uy6xh48l6hf9es90q0hfnytp` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `FKa7qwqvlloyjxypvmnh0s9ilti` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluations` (`evaluation_id`),
  CONSTRAINT `FKqf827tv8o3bxyljajt7f4n6by` FOREIGN KEY (`submission_id`) REFERENCES `applications` (`id`),
  CONSTRAINT `FKs4dhdxh7ms34rj0s2uvg2vaeb` FOREIGN KEY (`problem_id`) REFERENCES `problem_statements` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_reports`
--

LOCK TABLES `judge_reports` WRITE;
/*!40000 ALTER TABLE `judge_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:17
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_description` varchar(255) DEFAULT NULL,
  `role_level` int DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Platform administrator',1,'ADMIN'),(2,'Team leader who submits applications',2,'TEAM_LEAD'),(3,'Member of a team',3,'TEAM_MEMBER'),(4,'Evaluation workspace access',4,'EVALUATOR'),(5,'Final judgment workspace access',5,'JUDGE'),(6,'Mentor workspace access',6,'MENTOR'),(7,'Event Head workspace access',7,'EVENT_HEAD'),(8,'College SPOC workspace access',8,'COLLEGE_SPOC');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
-- Table structure for table `rounds`
--

DROP TABLE IF EXISTS `rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rounds` (
  `round_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rounds`
--

LOCK TABLES `rounds` WRITE;
/*!40000 ALTER TABLE `rounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `rounds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-19 11:52:20
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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `event_id` bigint DEFAULT NULL,
  `leader_user_id` bigint DEFAULT NULL,
  `problem_id` bigint DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `uk_teams_team_name` (`team_name`),
  UNIQUE KEY `uk_teams_leader_user` (`leader_user_id`),
  KEY `FKsjcq76oa92bm6gjbebp2spajm` (`event_id`),
  KEY `FKsikyqgbabhyibg9avexad5rj2` (`problem_id`),
  CONSTRAINT `FK1h9llgxlemilncvt2ru5vpruh` FOREIGN KEY (`leader_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKsikyqgbabhyibg9avexad5rj2` FOREIGN KEY (`problem_id`) REFERENCES `problem_statements` (`problem_id`),
  CONSTRAINT `FKsjcq76oa92bm6gjbebp2spajm` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'2026-04-09 23:39:13.303000','Team API Smoke',NULL,NULL,NULL),(2,'2026-04-09 23:39:44.746000','Team API Smoke 20260409233944',NULL,NULL,NULL),(3,'2026-04-09 23:40:10.807000','Team API Smoke 20260409234010',NULL,NULL,NULL),(4,'2026-04-09 23:40:49.139000','Team API Smoke 20260409234049',NULL,NULL,NULL),(5,'2026-04-09 23:41:03.221000','Team API Smoke 20260409234103',NULL,NULL,NULL),(6,'2026-04-09 23:41:12.870000','Team API Smoke 20260409234112',NULL,NULL,NULL),(7,'2026-04-10 00:12:19.387000','00',NULL,NULL,NULL),(10,'2026-04-10 00:42:54.981000','Team API Smoke 20260410004254595 4d89413e',NULL,4,NULL),(11,'2026-04-10 00:45:16.699000','Team API Smoke 20260410004516308 4e56aafa',NULL,6,NULL),(12,'2026-04-10 00:46:51.994000','Team API Smoke 20260410004651607 d00743a7',NULL,8,NULL),(19,'2026-04-15 12:56:04.301000','we',NULL,19,NULL),(20,'2026-04-15 14:18:41.336000','war',NULL,21,NULL),(21,'2026-04-20 11:22:19.591000','Crazy',NULL,23,NULL),(25,'2026-04-20 12:34:16.407000','pop',NULL,25,NULL),(26,'2026-04-20 15:30:30.604000','cooking',NULL,27,NULL),(28,'2026-05-01 19:21:46.033000','supernova',NULL,29,NULL),(29,'2026-05-01 20:33:16.188000','AgriGuard Innovators 1777647796188',NULL,1,1),(30,'2026-05-12 13:24:00.902000','acecoders',NULL,38,NULL),(32,'2026-05-13 20:05:05.384000','coders',NULL,40,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `account_status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `supervisor_user_id` bigint DEFAULT NULL,
  `college_id` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  KEY `FK77xvpgu0d171q5mvubwna2hea` (`supervisor_user_id`),
  KEY `FKfjws1rdruab2bqg7qipoqf65r` (`team_id`),
  CONSTRAINT `FK77xvpgu0d171q5mvubwna2hea` FOREIGN KEY (`supervisor_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKfjws1rdruab2bqg7qipoqf65r` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ACTIVE','2026-04-10 00:40:26.331000','lead.20260410004026@example.com','Lead One','9999999990',NULL,NULL,'MSME-001','$2a$10$FF/jQgtkhUsKkCX1bTw.XeJy/ILMiMuMD3WRy/MtwlIU8uHvU049a','TEAM_LEAD',NULL),(2,'ACTIVE','2026-04-10 00:41:12.535000','lead.20260410004112305.8c1ea937@example.com','Lead One','7004112305',NULL,NULL,'MSME-001','$2a$10$.oXoFWFOsVjYO7XSdMHepuId/GEfMEqg7HkAeAc8GlHpJ9WZb9LqK','TEAM_LEAD',NULL),(4,'ACTIVE','2026-04-10 00:42:54.856000','lead.20260410004254595.4d89413e@example.com','Lead One','7004254595',NULL,NULL,'MSME-001','$2a$10$AU2AhBMHI7IocS22ZZWAguS.tf0i/aVNdp.nxtbKXdD3hyqGCIrd2','TEAM_LEAD',NULL),(5,'INVITED','2026-04-10 00:42:55.089000','member.20260410004254595.4d89413e@example.com','Lead One','8004254595',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','TEAM_MEMBER',10),(6,'ACTIVE','2026-04-10 00:45:16.581000','lead.20260410004516308.4e56aafa@example.com','Lead One','7004516308',NULL,NULL,'MSME-001','$2a$10$teslX2wFvbzLS.fvUwoFl.J0mr/EFLbUHQLbKwxLJtASCqeaLx.rm','TEAM_LEAD',NULL),(7,'INVITED','2026-04-10 00:45:16.795000','member.20260410004516308.4e56aafa@example.com','Lead One','8004516308',NULL,NULL,NULL,'$2a$10$avk2humAOG6w8iMqRTLZ1.qeS58MXSRJ0T13jOFO76XU1qVXXZD2u','TEAM_MEMBER',11),(8,'ACTIVE','2026-04-10 00:46:51.897000','lead.20260410004651607.d00743a7@example.com','Lead One','7004651607',NULL,NULL,'MSME-001','$2a$10$uRGN9asZBBf4szAXm9tki.vK3vZ4PN2MHGViCUWOipVlb9QsNhA2C','TEAM_LEAD',NULL),(9,'INVITED','2026-04-10 00:46:52.094000','member.20260410004651607.d00743a7@example.com','Lead One','8004651607',NULL,NULL,NULL,'$2a$10$l7i0tGdLFFduS6uGcYcSWeLOhymvt7RkmR.ooADGiVGuj9jzOu8V2','TEAM_MEMBER',12),(10,'ACTIVE','2026-04-15 11:11:46.068000','middepuja1005@gmail.com','puja','9121290912',NULL,NULL,'11','$2a$10$C6oXcuEAu14ogqCBBBJdmuMFHgDKQSJW8gr3qfoqTZ5DC9igKZlmS','TEAM_MEMBER',NULL),(11,'ACTIVE','2026-04-15 11:47:15.000000','evaluator@msme.local','Evaluator User','9000000001',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','EVALUATOR',NULL),(12,'ACTIVE','2026-04-15 11:47:15.000000','judge@msme.local','Judge User','9000000002',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','JUDGE',NULL),(13,'ACTIVE','2026-04-15 11:47:15.000000','mentor@msme.local','Mentor User','9000000003',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','MENTOR',NULL),(14,'ACTIVE','2026-04-15 11:47:15.000000','eventhead@msme.local','Event Head User','9000000004',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','EVENT_HEAD',NULL),(15,'ACTIVE','2026-04-15 11:47:15.000000','spoc@msme.local','College SPOC User','9000000005',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','COLLEGE_SPOC',NULL),(16,'ACTIVE','2026-04-15 11:47:15.000000','admin@msme.local','Admin User','9000000006',NULL,NULL,NULL,'$2a$10$sS5bdNRODIjAPWkEj.wIo.y5OrY1naLnICneSq1sTBEAEqv6ho/g2','ADMIN',NULL),(17,'ACTIVE','2026-04-15 12:40:09.992000','m@gmail.com','puja','9090099',NULL,NULL,'123','$2a$10$YF14dFq/S4juitY/nr43XuzFbTwEhsGen.JBYg7.YHEQvATPDil0a','TEAM_LEAD',NULL),(19,'ACTIVE','2026-04-15 12:55:44.611000','middepa1005@gmail.com','puja','9090',NULL,NULL,'we','$2a$10$OwCrU91wSWOcztwU.Q9nO.S.8Y6MGgI6gXe7S2irSOO/4D3KSheIa','TEAM_LEAD',NULL),(20,'INVITED','2026-04-15 12:56:04.502000','middeja1005@gmail.com','Puja Midde','09121290922',NULL,NULL,NULL,'$2a$10$b6KteN5QTt416e0i27kSyeQvc8452jqNwd7T7XPTv1FMaoZ/WunVS','TEAM_MEMBER',19),(21,'ACTIVE','2026-04-15 14:18:15.374000','puja1005@gmail.com','puja','89898989088',NULL,NULL,'13','$2a$10$lFDup.b5jn6ny9ea7TMlCO25td/FnLyLQ5Yu44jVr3GujeVMRUCQu','TEAM_LEAD',NULL),(22,'INVITED','2026-04-15 14:18:41.574000','mid1005@gmail.com','Puja Midde','091212907885',NULL,NULL,NULL,'$2a$10$9ML4iA1wmH9b2DPOm7oeze84tZBocPar46OeIoppKJWJGVI8RspZC','TEAM_MEMBER',20),(23,'ACTIVE','2026-04-20 11:20:38.421000','tl-one@msme.local','TL-one','7777777777',NULL,NULL,'123','$2a$10$pZDZWXI3DArbji8GMYqx6eIsbJdMBCvM5.XOvME8ExGJ96DI9Yfem','TEAM_LEAD',NULL),(24,'INVITED','2026-04-20 11:22:19.834000','abc@gmail.com','abc','777777777',NULL,NULL,NULL,'$2a$10$g1XoJC71d7iwsFyX7tHbwOiEmT.EQr/gf16Wbnj/TKbMamXRR8BUm','TEAM_MEMBER',21),(25,'ACTIVE','2026-04-20 12:29:23.193000','ad@gmail.com','Puja Midde','9090908909',NULL,NULL,'90','$2a$10$rcSZRHcqc5XLKgH84HTA3.YdK7rFytvyXFHn3YJgkJXCOWxvL/lE2','TEAM_LEAD',NULL),(26,'INVITED','2026-04-20 12:34:16.579000','mi@gmail.com','Puja Midde','09121290976',NULL,NULL,NULL,'$2a$10$qQwGGW2VN49G64PDWdXM6uWUTHOEc.78gS1o4ZQuOYxnWZ1idnF7O','TEAM_MEMBER',25),(27,'ACTIVE','2026-04-20 15:30:04.036000','105@gmail.com','raja','1234567896',NULL,NULL,'23','$2a$10$i1tCLVrDuklnVSQrANfkd.FohSkdEXOclqS88/U7qgZdsCQ0qNxlC','TEAM_LEAD',NULL),(28,'INVITED','2026-04-20 15:30:31.035000','uja1005@gmail.com','Puj','9121290898',NULL,NULL,NULL,'$2a$10$utOjnC4C0iOgzyN1XzNUwemD00pcTXIU9ZCjy9puxb4R5XMlCyNLu','TEAM_MEMBER',26),(29,'ACTIVE','2026-05-01 19:20:44.993000','yash@gmail.com','yash','8888877777',NULL,NULL,'','$2a$10$AgMc58O0OPPHpCYYv060Ze98EwBS2V/7kHKuoGSOS4Lqtb1KDRvmm','TEAM_LEAD',NULL),(31,'INVITED','2026-05-01 19:21:46.307000','yash1@gmail.com','yash','8888877777',NULL,NULL,NULL,'$2a$10$RmRbvegTd4THBOjlPM9yDeXYCkumrEK.ZBizqLC.3avxxPK9M3ee2','TEAM_MEMBER',28),(32,'ACTIVE','2026-05-01 20:33:15.174000','admin@platform.local','Admin User','9000000006',1,NULL,NULL,'$2a$10$i2NyM9OUUr6qavqcwHPS2eaPP4xspzGlRBiLdp7dueUOoR/2Tjfim','ADMIN',NULL),(33,'ACTIVE','2026-05-01 20:33:15.384000','evaluator@platform.local','Evaluator User','9000000001',4,NULL,NULL,'$2a$10$BufWNx4ixr6Ej.sDXU5lnudy72aHjtardQYJpoi9HEjrL3D.SqLV.','EVALUATOR',NULL),(34,'ACTIVE','2026-05-01 20:33:15.570000','judge@platform.local','Judge User','9000000002',5,NULL,NULL,'$2a$10$QqOXA4Uk4DYI8B5GzwQbFu9PKWQSaqkqvdWk6TdHaA2Cidx6XRsa.','JUDGE',NULL),(35,'ACTIVE','2026-05-01 20:33:15.717000','mentor@platform.local','Mentor User','9000000003',6,NULL,NULL,'$2a$10$5779.e6R0Jnh5IX5DZaN2uUUCpAHv2e0D6oGCVOMsd/vW5QBtwlZe','MENTOR',NULL),(36,'ACTIVE','2026-05-01 20:33:15.871000','eventhead@platform.local','Event Head User','9000000004',7,NULL,NULL,'$2a$10$4Ode0Sl40VNgFbCYkNAxouZFRgWRHrtnUnqvbtmE5v6H3gW6Jm.oe','EVENT_HEAD',NULL),(37,'ACTIVE','2026-05-01 20:33:16.033000','spoc@platform.local','College SPOC User','9000000005',8,NULL,NULL,'$2a$10$xF1/J679vqk3Xlch7W.Nvej3iC.742bpqsgraBZSS5hpaYrKlQZgm','COLLEGE_SPOC',NULL),(38,'ACTIVE','2026-05-12 13:23:24.885000','yasu@gmail.com','yasu','8888877771',NULL,NULL,'','$2a$10$yUa5FIY8CH42LNTm7/86oePApMFGRoP5hef9nLHTVLRphwrJaLguO','TEAM_LEAD',NULL),(39,'INVITED','2026-05-12 13:24:01.085000','dhan@gmail.com','dhan','7777755555',NULL,NULL,NULL,'$2a$10$mIxZWvY7qM7L5eVI5Ck2HeMvWSZeLbIJ1Am2tJ8q5pEy8lSK9gS..','TEAM_MEMBER',30),(40,'ACTIVE','2026-05-13 19:48:28.857000','yashasvivelagapudi@gmail.com','Yashasvi Velagapudi','8885587559',NULL,NULL,'','$2a$10$c6fWM20BypRpJSp3LfNgHOoXObCOiyWef4y9qs5sZ/f7zvuiroIJi','TEAM_LEAD',NULL),(42,'INVITED','2026-05-13 20:05:05.491000','yashasvivelagaudi@gmail.com','Yashasvi Velaapudi','8789875852',NULL,NULL,NULL,'$2a$10$7iFsPdSmDrg/WCmLhrOM1.YlCSFhcLW938pTYicWVha8S6qJFg5fi','TEAM_MEMBER',32);
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

-- Dump completed on 2026-06-19 11:52:18
