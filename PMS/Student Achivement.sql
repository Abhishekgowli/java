CREATE DATABASE  IF NOT EXISTS `studentdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `studentdb`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: studentdb
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pout` varchar(45) DEFAULT NULL,
  `pcom` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (3,'  PRAVEEN',' g','GANJAM','  074495817996','gowleabhi@gmail.com','  2000',' asian paints','  Asit Manager'),(5,' adarsh',' nagesh','GUMBAZ ROAD GANJAM',' 9945034044','gowleabhi@gmail.com',' 2008',' capegimine',' fressher'),(6,'adarsh','N','GUMBAZ ROAD GANJAM','9945034044','gowleabhi@gmail.com','2008','capegimine','fressher'),(7,'Sudha','v','GUMBAZ ROAD GANJAM','9845435590','gowleabhi@gmail.com','2010','capegimine','fressher'),(8,' Sudha',' nagesh','GUMBAZ ROAD GANJAM',' 9845435590','gowleabhi@gmail.com',' 2010',' capegimine',' fressher'),(9,'prashant','kumar','mysuru','8050878988','nageshtgowli@gmail.com',' 2000','TCS','Team Head'),(10,'nagesh','T','GUMBAZ ROAD GANJAM','07795817996','gowleabhi@gmail.com','2008','nesle','fressher');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-08  9:33:10
