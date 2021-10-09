CREATE DATABASE  IF NOT EXISTS `dbhecyc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbhecyc`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dbhecyc
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `dias_feriados`
--

DROP TABLE IF EXISTS `dias_feriados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias_feriados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feriados` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias_feriados`
--

LOCK TABLES `dias_feriados` WRITE;
/*!40000 ALTER TABLE `dias_feriados` DISABLE KEYS */;
INSERT INTO `dias_feriados` VALUES (1,'2021-01-01'),(2,'2021-01-11'),(3,'2021-03-22'),(4,'2021-04-01'),(5,'2021-04-02'),(6,'2021-05-01'),(7,'2021-05-17'),(8,'2021-06-07'),(9,'2021-06-14'),(10,'2021-07-05'),(11,'2021-07-20'),(12,'2021-08-07'),(13,'2021-08-16'),(14,'2021-10-18'),(15,'2021-11-01'),(16,'2021-11-15'),(17,'2021-12-08'),(18,'2021-12-25');
/*!40000 ALTER TABLE `dias_feriados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_he`
--

DROP TABLE IF EXISTS `registro_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_he` (
  `cod_registro_he` int NOT NULL AUTO_INCREMENT,
  `date_he` date NOT NULL,
  `timeint_he` time NOT NULL,
  `dateout_he` date NOT NULL,
  `timeout_he` time NOT NULL,
  `rn` int DEFAULT '0',
  `hed` int DEFAULT '0',
  `hen` int DEFAULT '0',
  `hf` int DEFAULT '0',
  `hedf` int DEFAULT '0',
  `henf` int DEFAULT '0',
  `rnf` int DEFAULT '0',
  `cod_user1` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`cod_registro_he`),
  KEY `fk_cod_u1_idx` (`cod_user1`),
  CONSTRAINT `fk_cod_u1` FOREIGN KEY (`cod_user1`) REFERENCES `users` (`cod_u`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_he`
--

LOCK TABLES `registro_he` WRITE;
/*!40000 ALTER TABLE `registro_he` DISABLE KEYS */;
INSERT INTO `registro_he` VALUES (1,'2021-09-27','07:00:00','2021-09-27','16:00:00',0,0,0,0,0,0,0,2),(2,'2021-09-28','07:00:00','2021-09-28','16:00:00',0,0,0,0,0,0,0,1),(3,'2021-09-28','07:00:00','2021-09-28','16:00:00',0,0,0,0,0,0,0,2),(4,'2021-08-07','20:00:00','2021-08-08','05:00:00',0,0,0,0,0,0,0,2),(5,'2021-08-07','20:00:00','2021-08-08','05:00:00',0,0,0,0,0,0,0,1),(6,'2021-02-02','04:00:00','2021-05-06','17:00:00',0,0,0,0,0,0,0,2),(7,'2021-02-02','04:00:00','2021-05-06','17:00:00',0,0,0,0,0,0,0,1),(8,'2021-02-02','04:00:00','2021-05-06','17:00:00',0,0,0,0,0,0,0,1),(9,'2021-08-09','02:00:00','2021-08-09','18:00:00',0,0,0,0,0,0,0,3),(10,'2021-02-02','21:00:00','2021-02-03','05:00:00',0,0,0,0,0,0,0,1),(11,'2021-08-07','12:00:00','2021-08-08','05:00:00',0,0,0,0,0,0,0,1),(12,'2021-05-06','17:00:00','2021-05-06','20:00:00',0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `registro_he` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `cod_u` int NOT NULL AUTO_INCREMENT,
  `name_u` varchar(100) NOT NULL,
  `user_u` varchar(20) NOT NULL,
  `pass_u` varchar(20) NOT NULL,
  `email_u` varchar(50) NOT NULL,
  `rol_u` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_u`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador del Sistema','admin','admin','admin@gmail.com','Administrador'),(2,'Oscar Sanchez','OscarSa','oscar123','oscar@gmail.com','Visitante'),(3,'Cesar Hernández','CesHernan','hecyc2021','info@hecyc.com','Visitante');
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

-- Dump completed on 2021-10-08 19:15:30
