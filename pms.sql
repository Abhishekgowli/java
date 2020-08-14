-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: pms
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
-- Table structure for table `crecord`
--

DROP TABLE IF EXISTS `crecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `iplace` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `crime` varchar(45) DEFAULT NULL,
  `dcrime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crecord`
--

LOCK TABLES `crecord` WRITE;
/*!40000 ALTER TABLE `crecord` DISABLE KEYS */;
INSERT INTO `crecord` VALUES (3,'  adarsh','  Nagesh','  333','  GUMBAZ ROAD GANJAM','  8050878988',' Mandya','2020-08-09','21:50','  eee','  tttt'),(4,'Abhishek','N','4444','GUMBAZ ROAD GANJAM','9535152034',NULL,'2020-08-11','21:54','rrrr','ddddd'),(5,'Abhishek','N','4444','GUMBAZ ROAD GANJAM','9535152034',NULL,'2020-08-11','21:54','rrrr','ddddd'),(6,'shiviu','kumar','p134','GUMBAZ ROAD GANJAM','9845435590',NULL,'2020-08-16','08:59','robery','bank robry'),(7,'kuamr','gowli','2222','GUMBAZ ROAD GANJAM','8050878988','srirangapata','2020-08-24','14:48','robery','stabed with kinfe');
/*!40000 ALTER TABLE `crecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crecord2`
--

DROP TABLE IF EXISTS `crecord2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crecord2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `crime` varchar(45) DEFAULT NULL,
  `dcrime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crecord2`
--

LOCK TABLES `crecord2` WRITE;
/*!40000 ALTER TABLE `crecord2` DISABLE KEYS */;
INSERT INTO `crecord2` VALUES (1,'gowli','Gowle','p001','Mysuru','9945045044','malder',NULL),(2,'Abhishek','N','p134','GUMBAZ ROAD GANJAM','07795817996','cyber crime','bank server hack'),(3,'adarsh','goli','p14','Mysuru','8050878988','half malder','stabed with kinfe');
/*!40000 ALTER TABLE `crecord2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-14 11:17:39
