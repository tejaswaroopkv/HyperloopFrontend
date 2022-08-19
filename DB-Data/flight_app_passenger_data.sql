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
-- Table structure for table `passenger_data`
--

DROP TABLE IF EXISTS `passenger_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger_data` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_passenger_id` int(11) DEFAULT NULL,
  `name` text,
  `email` text,
  `contact` text,
  `departure_PNR` text,
  `return_PNR` text,
  `airline_name` text,
  `flight_code` text,
  `price` text,
  `is_cancelled` int(11) DEFAULT NULL,
  `source_place` text,
  `destination_place` text,
  `trip_type_id` int(11) DEFAULT NULL,
  `airline_id` int(11) DEFAULT NULL,
  `src_id` int(11) DEFAULT NULL,
  `dest_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_data`
--

LOCK TABLES `passenger_data` WRITE;
/*!40000 ALTER TABLE `passenger_data` DISABLE KEYS */;
INSERT INTO `passenger_data` VALUES (1,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9011399','NA','Indigo','IND1000','37.5$',0,'Hyderabad','Kolkata',1,1,4,5,25),(2,1,'mbg','sdf@gmas.com','08639600379','PNRDFLY901139912399','NA','Indigo','IND1000','37.5$',1,'Hyderabad','Kolkata',1,1,4,5,20),(3,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9041235','NA','Go Air','GO1011','38.333333333333336$',1,'Delhi','Bangalore',1,4,1,3,25),(4,3,'kvrkmurthy','kvrkmurthy1985@gmail.com','9989819092','PNRDFLY904123542235','NA','Go Air','GO1011','38.333333333333336$',1,'Delhi','Bangalore',1,4,1,3,60),(5,3,'E Sree Bhramaramba','sreebhramaramba1965@gmail.com','9573152635','PNRDFLY90412354223543235','NA','Go Air','GO1011','38.333333333333336$',0,'Delhi','Bangalore',1,4,1,3,56),(6,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9011832','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(7,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY901183212892','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(8,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY901134','','Indigo','IND1000','45$',0,'Hyderabad','Kolkata',1,1,4,5,25),(9,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9011598','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(10,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY901159812740','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(11,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9011598','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(12,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY901159812740','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(13,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY90115981274013644','','Indigo','IND1000','40$',0,'Hyderabad','Kolkata',1,1,4,5,25),(14,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031720','PNRRFLY9031720','Jet Airways','JA1002','110$',0,'Bangalore','Hyderabad',1,3,3,4,25),(15,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031720','PNRRFLY9031720','Jet Airways','JA1002','110$',0,'Bangalore','Hyderabad',1,3,3,4,25),(16,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY903172032315','PNRRFLY903172032315','Jet Airways','JA1002','110$',0,'Bangalore','Hyderabad',1,3,3,4,25),(17,0,'kvr','kvr@gmail.com','9989819092','PNRDFLY9031583','PNRRFLY9031583','Jet Airways','JA1002','155$',0,'Bangalore','Hyderabad',1,3,3,4,60),(18,0,'test','test12@gmail.com','9989819099','PNRDFLY9011245','','Indigo','IND1000','45$',0,'Hyderabad','Kolkata',1,1,4,5,22),(19,0,'test','test12@gmail.com','9989819099','PNRDFLY9011245','','Indigo','IND1000','45$',0,'Hyderabad','Kolkata',1,1,4,5,22),(20,0,'test','test12@gmail.com','9989819099','PNRDFLY901124512976','','Indigo','IND1000','45$',0,'Hyderabad','Kolkata',1,1,4,5,22),(21,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031895','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(22,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031695','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(23,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031695','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(24,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY903169532299','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(25,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031141','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(26,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY9031141','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22),(27,0,'Tejaswaroop Kuppa','tejaswaroop.kuppa09@gmail.com','08639600378','PNRDFLY903114132813','','Jet Airways','JA1002','55$',0,'Bangalore','Hyderabad',1,3,3,4,22);
/*!40000 ALTER TABLE `passenger_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-10 16:18:47
