-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_message` varchar(45) DEFAULT NULL,
  `user_channel` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_fk_idx` (`user_id`),
  KEY `user_message_fk_idx` (`user_message`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,'SUCCESS','assign_1'),(2,2,'SUCCESS','assign_1'),(4,2,'SUCCESS','assign_1'),(5,2,'SUCCESS','assign_1'),(6,2,'SUCCESS','assign_1');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_channel_permissions`
--

DROP TABLE IF EXISTS `user_channel_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_channel_permissions` (
  `user_id` int NOT NULL,
  `user_channel_name` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`,`user_channel_name`),
  KEY `usr_fk_idx` (`user_id`),
  KEY `user_chanel_fk'` (`user_channel_name`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_channel_permissions`
--

LOCK TABLES `user_channel_permissions` WRITE;
/*!40000 ALTER TABLE `user_channel_permissions` DISABLE KEYS */;
INSERT INTO `user_channel_permissions` VALUES (2,'assign_1');
/*!40000 ALTER TABLE `user_channel_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,16,'RO','Marius','RED','$2a$10$U2efvTYulfHEaRnq3r2niePkQjo84Mfaekljco2pLreR6QVm.8gmm','mari.mari',0000000000),(4,35,'French Guiana','Garret','Ondricka','$2a$10$a7khx0dxs0MtaY6HPWbEC.zRsM2hvSBNnicQs1fzvZwZuURRucU/e','vfay',0000000000),(5,70,'Vatican City State','Frida','Steuber','$2a$10$Ja.wj7hmFu.2lvd4g6ngsurf9uqdZTTTf9C7TglCLB3uGAyRGAUbO','inader',0000000000),(6,92,'Guernsey','Pascale','Sipes','$2a$10$VFcLx1wi2GfqWJhHGpL9xO7t12GjVMBXRCc2SowZQyVe/iyutTHze','mdmaggio',0000000000),(9,77,'Cambodia','Shanon','Gusikowski','$2a$10$z4itME3nmCSZYMByu8Zt/efhLGNC2GRK5HbKrK8nUjLMvV1buGOs6','ddsgoodwin',0000000000),(10,80,'Zimbabwe','Jazmyne','Daniel','$2a$10$zASOgJ7MsZ68mQWRtbuIBuqfuYp5WI6B7kQuloiiaz3VFoezF7JfS','sr.bailey',0000000000),(11,71,'Denmark','Raphael','Shanahan','$2a$10$Q0WVz/bzE6LB9GbnS2Lwle78JUgN.bhm40ABwGeJqVl0MB/CiFcHW','dvmbernhard',0000000000),(12,42,'Bolivia','Violet','Crist','$2a$10$kBhqxGkEaoYuKODL33WwtOChCRSdd0sNgUEjd55kXqJKzimmVLSVG','ifay',0000000000),(13,43,'Mexico','Lilla','Koelpin','$2a$10$o7XjqAcVQp8hUbwmvGCZzONdjnRU1fKcpRJrSC73f5qatwSG0aRlS','dvmhammes',0000000000),(14,40,'Greece','Elda','Schowalter','$2a$10$JexOckeP6Ya2/4MFWi3ox.IPe5sqXR2qZuQ965nAi0rdSmKpSrgZy','sr.goodwin',0000000000),(15,35,'Norfolk Island','Maribel','Hammes','$2a$10$bSv7CqDPTBINAZsnLtK/zu/1vFzsgmKSSwTkQBrSpqCVXKYbCnQpC','sr.russel',0000000000),(16,65,'Iceland','Terrell','Hagenes','$2a$10$Ta89NLJUZaiNPa/ch2dR7elwXzlnLV3m7Ti5Kxx46RE0iLLPttio.','sr.gislason',0000000000),(17,32,'Chad','Juliana','Zemlak','$2a$10$NAyVqc0MeeI9iRiQxHH38Odnfu7wgDbyKI/IYJ4ZpfgKh.rL2fRTK','phdhudson',0000000000),(18,49,'French Guiana','Ian','Harber','$2a$10$18MwViD8yeQSZ1LDJaWdsePyB/55mRvaekVF7CnQJuQMJwWvxyVUm','jr.beer',0000000000),(21,88,'Greece','Flavio','Krajcik','$2a$10$A0w4wCOWSd/LaF.Hnrb9p.WTA9IyCQ4o0dG1vccs9ZvJWilXK1uAy','vbraun',0000000000),(24,88,'New Zealand','Chris','Larkin','$2a$10$GUWTpmu3yeXCFmzVtG5IMuCQ.IC/yU0CRHgk8Vw.faGfj0OmpH92S','ivkshlerin',0000000000),(26,23,'Iceland','Meggie','Wolff','$2a$10$svqoOSCUiy6GuyVSZxkCBu8wvgODyiE7uxgO9QJGBpVuh9UuKi1gO','imohr',0000000000),(27,98,'Korea','Conor','Corkery','$2a$10$QzUw57E6Jfm98ljD5QYyFussFkGatQu3gyHbTsHOstvYGb5XpFcxi','iiweissnat',0000000000),(33,18,'RO','Mar','Mar','asdfa','MAR.MARiii',0000000000),(34,13,'Romania','M','M','123','ROISMOKE',0000000000);
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

-- Dump completed on 2021-12-06 15:49:28
