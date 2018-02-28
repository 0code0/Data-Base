CREATE DATABASE  IF NOT EXISTS `cityportal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cityportal`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: cityportal
-- ------------------------------------------------------
-- Server version	5.5.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adds`
--

DROP TABLE IF EXISTS `adds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adds` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Image` varchar(45) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `IsApproved` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Add_Category_idx` (`CategoryId`),
  KEY `Ad_Users_idx` (`UserId`),
  CONSTRAINT `Add_Category` FOREIGN KEY (`CategoryId`) REFERENCES `yellowpagecategories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Users` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adds`
--

LOCK TABLES `adds` WRITE;
/*!40000 ALTER TABLE `adds` DISABLE KEYS */;
INSERT INTO `adds` VALUES (1,'Ad 1','/Uploads/babafaridlogo.png',1,NULL,NULL),(2,'New Ad 1','Uploads/Hydrangeas.jpg',1,3,'\0'),(3,'Jasv Ad1','Uploads/ad3.jpg',1,6,'\0'),(4,'Jas Ad2','Uploads/ad3.jpg',1,6,'\0'),(5,'Jas Ad2','Uploads/ad3.jpg',1,6,'\0');
/*!40000 ALTER TABLE `adds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classifieds`
--

DROP TABLE IF EXISTS `classifieds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classifieds` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `ImageUrl` varchar(45) DEFAULT NULL,
  `Details` varchar(2000) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `IsApproved` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Classified_Category_idx` (`CategoryId`),
  KEY `Classified_Users_idx` (`UserId`),
  CONSTRAINT `Classified_Category` FOREIGN KEY (`CategoryId`) REFERENCES `classifiedscategories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Classified_Users` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifieds`
--

LOCK TABLES `classifieds` WRITE;
/*!40000 ALTER TABLE `classifieds` DISABLE KEYS */;
INSERT INTO `classifieds` VALUES (3,'Title 2','url 2','Details 2',1,NULL,NULL),(4,'Title 3','','Details',1,NULL,NULL),(5,'Title 41','/Uploads/ad4.jpg','Details 41',2,NULL,NULL),(6,'Title 5','/Uploads/ad3.jpg','Detail 66',1,NULL,NULL),(7,'d','Uploads/Hydrangeas.jpg','details',1,3,'\0'),(8,'d','Uploads/Hydrangeas.jpg','details',1,3,'\0'),(9,'Jas cal 1','Uploads/ad3.jpg','Details',1,6,'\0');
/*!40000 ALTER TABLE `classifieds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classifiedscategories`
--

DROP TABLE IF EXISTS `classifiedscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classifiedscategories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifiedscategories`
--

LOCK TABLES `classifiedscategories` WRITE;
/*!40000 ALTER TABLE `classifiedscategories` DISABLE KEYS */;
INSERT INTO `classifiedscategories` VALUES (1,'Category 10'),(2,'Category 2'),(3,'c3'),(4,'c4'),(5,'c5'),(6,'c6');
/*!40000 ALTER TABLE `classifiedscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertainment`
--

DROP TABLE IF EXISTS `entertainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entertainment` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `ImageUrl` varchar(45) NOT NULL,
  `Url` varchar(45) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Entertainment_Category_idx` (`CategoryId`),
  CONSTRAINT `Entertainment_Category` FOREIGN KEY (`CategoryId`) REFERENCES `entertainmentcategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainment`
--

LOCK TABLES `entertainment` WRITE;
/*!40000 ALTER TABLE `entertainment` DISABLE KEYS */;
INSERT INTO `entertainment` VALUES (0,'E1','/Uploads/babafaridlogo.png','http://www.google.com',0);
/*!40000 ALTER TABLE `entertainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertainmentcategory`
--

DROP TABLE IF EXISTS `entertainmentcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entertainmentcategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainmentcategory`
--

LOCK TABLES `entertainmentcategory` WRITE;
/*!40000 ALTER TABLE `entertainmentcategory` DISABLE KEYS */;
INSERT INTO `entertainmentcategory` VALUES (1,'Category 1');
/*!40000 ALTER TABLE `entertainmentcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(45) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `LocationTypeId` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `ContactNumber` varchar(60) DEFAULT NULL,
  `ImageUrl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Location_Type_idx` (`LocationTypeId`),
  CONSTRAINT `Location_Type` FOREIGN KEY (`LocationTypeId`) REFERENCES `locationtypes` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Address','Desc',1,'','99999',NULL),(2,'Address','Desc',1,'Location 1','8989898',NULL),(3,'k','kk',1,'k','k',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationtypes`
--

DROP TABLE IF EXISTS `locationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locationtypes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationtypes`
--

LOCK TABLES `locationtypes` WRITE;
/*!40000 ALTER TABLE `locationtypes` DISABLE KEYS */;
INSERT INTO `locationtypes` VALUES (1,'Shopping Malls'),(2,'Loc Type 1');
/*!40000 ALTER TABLE `locationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `NewsText` varchar(45) NOT NULL,
  `ImageUrl` varchar(45) NOT NULL,
  `Headline` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `CategoryId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `News_Category_idx` (`CategoryId`),
  CONSTRAINT `News_Category` FOREIGN KEY (`CategoryId`) REFERENCES `newscategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (0,'News 1','Uploads/m_deepika.jpg','Headline','2012-07-07 00:00:00',0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newscategory`
--

DROP TABLE IF EXISTS `newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newscategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newscategory`
--

LOCK TABLES `newscategory` WRITE;
/*!40000 ALTER TABLE `newscategory` DISABLE KEYS */;
INSERT INTO `newscategory` VALUES (0,'Category 1');
/*!40000 ALTER TABLE `newscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalities`
--

DROP TABLE IF EXISTS `personalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalities` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `Summary` varchar(500) DEFAULT NULL,
  `PersonCategoryId` int(11) DEFAULT NULL,
  `ImageUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Person_Category_idx` (`PersonCategoryId`),
  CONSTRAINT `Person_Category` FOREIGN KEY (`PersonCategoryId`) REFERENCES `personcategories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalities`
--

LOCK TABLES `personalities` WRITE;
/*!40000 ALTER TABLE `personalities` DISABLE KEYS */;
INSERT INTO `personalities` VALUES (1,'Ravinder','2002-02-03 00:00:00','Summary',1,'Image url'),(2,'k','0000-00-00 00:00:00','kk',1,'/Uploads/babafaridlogo.png'),(3,'o','2002-02-02 00:00:00','o',1,'/Uploads/babafaridlogo.png'),(4,'o','2002-02-02 00:00:00','o',1,'/Uploads/babafaridlogo.png');
/*!40000 ALTER TABLE `personalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personcategories`
--

DROP TABLE IF EXISTS `personcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personcategories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personcategories`
--

LOCK TABLES `personcategories` WRITE;
/*!40000 ALTER TABLE `personcategories` DISABLE KEYS */;
INSERT INTO `personcategories` VALUES (1,'Person 1'),(2,'Person 2'),(3,'Category 1');
/*!40000 ALTER TABLE `personcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picturecategories`
--

DROP TABLE IF EXISTS `picturecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picturecategories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picturecategories`
--

LOCK TABLES `picturecategories` WRITE;
/*!40000 ALTER TABLE `picturecategories` DISABLE KEYS */;
INSERT INTO `picturecategories` VALUES (0,'pc1'),(1,'Picture 1'),(2,'Picture 2');
/*!40000 ALTER TABLE `picturecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `ImageUrl` varchar(200) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Picture_Category_idx` (`CategoryId`),
  CONSTRAINT `Picture_Category` FOREIGN KEY (`CategoryId`) REFERENCES `picturecategories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (15,'Title','/Uploads/babafaridlogo.png',0),(16,'Pic 1','/Uploads/babafaridgroup.png',1);
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Password` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `EmailId` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Password123!','Ravinder','Singh','ravinder@mindfieldsoft.com','9888175447','Admin'),(3,'Password123!','Ravinder','Singh','ravinder1','9888175447','User'),(4,'Password123!','fn','ln','abc@gmail.com','99','User'),(5,'Password123!','I','I','iqbal','99','User'),(6,'Password123!','Ja','S','jasv@gmail.com','99','User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yellowpagecategories`
--

DROP TABLE IF EXISTS `yellowpagecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yellowpagecategories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yellowpagecategories`
--

LOCK TABLES `yellowpagecategories` WRITE;
/*!40000 ALTER TABLE `yellowpagecategories` DISABLE KEYS */;
INSERT INTO `yellowpagecategories` VALUES (1,'Dentist'),(2,'Neurologist'),(3,'Homeopathic'),(4,'Anathestists'),(5,'Physiotherapist '),(6,'Dispensary'),(7,'kk hj');
/*!40000 ALTER TABLE `yellowpagecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yellowpages`
--

DROP TABLE IF EXISTS `yellowpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yellowpages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Image` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `YellowPage_Category_idx` (`CategoryId`),
  CONSTRAINT `YellowPage_Category` FOREIGN KEY (`CategoryId`) REFERENCES `yellowpagecategories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yellowpages`
--

LOCK TABLES `yellowpages` WRITE;
/*!40000 ALTER TABLE `yellowpages` DISABLE KEYS */;
INSERT INTO `yellowpages` VALUES (1,'Sri Balaje Dental Care',1,'Moti Nagar, Pili Kothi','A Multi Speciality Dental Clinic Root Canal Treatment, Tooth Coloured Filling, Dental X-Ray, Smile Designing Etc.','/Uploads/babafaridlogo.png'),(2,' ADVANCE DENTAL CARE CENTRE ',1,'Near Gobindnagar Gurudwara, MaheshNagar','Specialized Centre For All Your Dental Care','');
/*!40000 ALTER TABLE `yellowpages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-23 12:45:45
