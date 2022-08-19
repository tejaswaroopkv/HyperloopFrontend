-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flight_app
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `schedule_flight`
--

DROP TABLE IF EXISTS `schedule_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airline_id` int(11) DEFAULT NULL,
  `src_id` int(11) DEFAULT NULL,
  `dest_id` int(11) DEFAULT NULL,
  `flight_code_id` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `is_available` tinyint(4) DEFAULT NULL,
  `departure_date` varchar(45) DEFAULT NULL,
  `return_date` varchar(45) DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_srcid_schedule_flight_idx` (`src_id`),
  KEY `fk_destid_schedule_flight_idx` (`dest_id`),
  KEY `fk_flight_code_id_schedule_fllight_idx` (`flight_code_id`),
  KEY `fk_airline_id_schedule_flight_idx` (`airline_id`),
  CONSTRAINT `fk_airline_id_schedule_flight` FOREIGN KEY (`airline_id`) REFERENCES `airline` (`airline_id`),
  CONSTRAINT `fk_destid_schedule_flight` FOREIGN KEY (`dest_id`) REFERENCES `airport` (`airport_id`),
  CONSTRAINT `fk_flight_code_id_schedule_fllight` FOREIGN KEY (`flight_code_id`) REFERENCES `flightcode` (`flight_id`),
  CONSTRAINT `fk_srcid_schedule_flight` FOREIGN KEY (`src_id`) REFERENCES `airport` (`airport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_flight`
--

LOCK TABLES `schedule_flight` WRITE;
/*!40000 ALTER TABLE `schedule_flight` DISABLE KEYS */;
INSERT INTO `schedule_flight` VALUES (1,1,4,5,1,'50$',1,'28-07-2021','30-07-2021',80),(2,2,2,1,2,'100$',0,'28-07-2021','30-07-2021',100),(3,1,2,4,1,'55$',1,'01-08-2021','02-08-2021',100),(4,2,6,3,3,'60$',0,'03-08-2021','08-08-2021',100),(5,2,5,6,2,'55$',0,'01-08-2021','08-08-2021',80),(6,1,2,4,1,'85$',0,'03-08-2021','05-08-2021',100),(7,1,2,4,4,'80$',0,'05-08-2021','06-08-2021',100),(8,4,1,3,7,'55$',1,'05-08-2021','08-08-2021',80),(9,3,3,4,5,'80$',1,'08-08-2021','10-08-2021',150),(10,4,4,3,7,'50$',1,'12-08-2021','15-08-2021',100),(11,3,3,4,5,'20$',1,'08-10-2021','10-10-2021',100);
/*!40000 ALTER TABLE `schedule_flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-10 16:18:48
