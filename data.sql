-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: mydb
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
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart` (
  `CartID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `Price` float DEFAULT '0',
  `Day` date DEFAULT NULL,
  `Status` int DEFAULT '0',
  PRIMARY KEY (`CartID`),
  KEY `fk_Customer` (`CustomerID`),
  CONSTRAINT `fk_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `User` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (1,34,39120,'2020-09-12',1),(2,34,120,'2020-09-12',1),(3,34,120,'2020-09-12',1),(4,35,120,'2020-09-12',1),(5,35,120,'2020-09-12',1),(6,33,120,'2020-09-12',1),(7,34,120,'2020-09-12',1),(8,34,120,'2020-09-12',1),(9,34,120,'2020-09-12',1),(10,34,120,'2020-09-12',1),(11,37,120,'2020-09-12',1),(12,37,120,'2020-09-12',1),(13,35,120,'2020-09-12',1),(14,34,120,'2020-09-12',1),(15,37,120,'2020-09-12',1),(16,36,120,'2020-09-12',1),(17,36,120,'2020-09-12',1),(18,36,120,'2020-09-12',1),(19,36,120,'2020-09-12',1),(20,33,120,'2020-09-12',1),(21,33,120,'2020-09-12',1),(22,36,120,'2020-09-12',1),(23,34,120,'2020-09-12',1),(24,36,120,'2020-09-12',1),(25,41,100,'2021-12-05',1),(26,39,43500,'2021-12-04',1),(27,40,36500,'2021-12-03',1),(28,43,28000,'2021-12-04',0),(29,41,2250,'2021-12-12',0),(30,43,60000,'2021-12-10',1),(31,38,30000,'2021-12-04',1),(32,37,62500,'2021-12-04',1),(33,33,14000,'2021-12-18',1),(34,46,3500,'2022-03-23',1),(35,46,0,'2022-03-23',1),(36,46,0,'2022-03-23',1),(37,46,0,'2022-03-23',1),(38,46,0,'2022-03-23',1),(39,46,0,'2022-03-23',1),(40,46,0,'2022-03-23',1),(41,46,0,'2022-03-23',1),(42,46,0,'2022-03-23',1),(43,46,0,'2022-03-23',1),(44,46,0,'2022-03-23',1),(45,46,0,'2022-03-23',1),(46,46,0,'2022-03-23',1),(47,46,0,'2022-03-23',1),(48,46,0,'2022-03-23',1),(49,46,0,'2022-03-23',1),(50,46,0,'2022-03-23',1),(51,46,0,'2022-03-23',1),(52,46,0,'2022-03-23',1),(53,46,0,'2022-03-23',1),(54,46,0,'2022-03-23',1),(55,46,0,'2022-03-23',1),(56,46,0,'2022-03-23',1),(57,46,0,'2022-03-23',1),(58,46,0,'2022-03-23',1),(59,46,0,'2022-03-23',1),(60,46,0,'2022-03-23',1),(61,46,0,'2022-03-23',1),(62,46,0,'2022-03-23',1),(63,46,0,'2022-03-23',1),(64,46,0,'2022-03-23',1),(65,46,0,'2022-03-23',1),(66,46,0,'2022-03-23',1),(67,46,0,'2022-03-23',1),(68,46,0,'2022-03-23',1),(69,46,0,'2022-03-23',1),(70,46,0,'2022-03-23',1),(71,46,0,'2022-03-23',1),(72,46,0,'2022-03-23',1),(73,46,0,'2022-03-23',1),(74,46,0,'2022-03-23',1),(75,46,0,'2022-03-23',1),(76,46,0,'2022-03-23',1),(77,46,0,'2022-03-23',1),(78,46,0,'2022-03-23',1),(79,46,0,'2022-03-23',1),(80,46,0,'2022-03-23',1),(81,46,0,'2022-03-23',1),(82,46,0,'2022-03-23',1),(83,46,0,'2022-03-23',1),(84,8,3500,'2022-06-14',1);
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CartDetail`
--

DROP TABLE IF EXISTS `CartDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CartDetail` (
  `CartID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int DEFAULT '0',
  PRIMARY KEY (`CartID`,`ProductID`),
  KEY `fk_Product` (`ProductID`),
  CONSTRAINT `fk_Cart` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`CartID`),
  CONSTRAINT `fk_Product` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CartDetail`
--

LOCK TABLES `CartDetail` WRITE;
/*!40000 ALTER TABLE `CartDetail` DISABLE KEYS */;
INSERT INTO `CartDetail` VALUES (1,1,1),(1,2,1),(1,5,2),(1,10,9),(1,16,30),(2,12,2),(3,2,1),(3,13,3),(3,14,1),(4,2,1),(4,4,1),(4,5,2),(4,10,3),(5,3,3),(5,4,1),(5,6,1),(5,8,2),(6,2,1),(6,5,2),(6,9,3),(6,11,1),(7,2,1),(7,5,2),(7,11,3),(7,12,1),(8,3,3),(8,4,1),(8,13,1),(8,15,2),(9,2,1),(9,4,1),(9,9,2),(9,13,3),(10,2,1),(10,4,1),(10,5,2),(10,10,3),(11,3,3),(11,4,1),(11,5,2),(11,11,1),(12,3,3),(12,5,2),(12,7,1),(12,8,1),(13,4,1),(13,5,2),(13,9,1),(13,10,3),(14,5,2),(14,12,1),(14,13,3),(14,14,1),(15,2,1),(15,4,1),(15,11,3),(15,15,2),(16,2,1),(16,4,1),(16,12,3),(16,13,2),(17,2,1),(17,4,1),(17,5,2),(17,9,3),(18,3,3),(18,5,2),(18,7,1),(18,9,1),(19,3,3),(19,5,2),(19,10,1),(19,12,1),(20,2,1),(20,5,2),(20,12,3),(20,15,1),(21,3,3),(21,5,2),(21,11,1),(21,13,1),(22,3,3),(22,4,1),(22,7,1),(22,9,2),(23,2,1),(23,3,3),(23,5,2),(23,10,1),(24,1,4),(24,2,1),(24,4,1),(24,5,2),(26,15,6),(26,16,6),(27,9,4),(27,11,6),(27,16,6),(28,4,4),(28,5,4),(29,3,3),(29,16,9),(30,2,6),(30,7,3),(30,10,6),(30,16,30),(31,16,120),(32,16,10),(32,17,20),(33,1,3),(33,3,1),(34,1,1),(84,2,1);
/*!40000 ALTER TABLE `CartDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Rolex'),(2,'Patek Philli'),(3,'Audemars Piguet'),(4,'A.Lange & Söhne'),(5,'Omega'),(6,'Blancpain'),(7,'IWC Schaffhausen'),(8,'Jaeger-LeCoultre'),(9,'Chopard'),(10,'Piaget'),(11,'Cartier'),(12,'Vacheron Constantin'),(13,'Montblanc'),(14,'Ulysse Nardin'),(15,'Panerai'),(16,'Girard-Perregaux'),(17,'Hublot'),(18,'Bulgari'),(19,'Nordgreen'),(20,'NOMOS Glashütte'),(21,'Vincero'),(22,'LIV Watches'),(23,'Breitling'),(24,'Bremont'),(25,'TAG Heuer'),(26,'Baume & Mercier'),(27,'Rado'),(28,'Maurice Lacroix\n'),(29,'Roger Dubuis '),(30,'F.P.Journe'),(31,'Tiffany & Co.'),(32,'Louis Vuitton'),(33,'Bamford'),(34,'Zenith'),(35,'Bell & Ross'),(36,'Arnold & Son'),(37,'Tudor'),(38,'Alpina'),(39,'Seiko'),(40,'Jaquet Droz'),(41,'Laurent Ferrier'),(42,'Hamilton'),(43,'Longines'),(44,'Mauriac'),(45,'Parmigiani Fleurier'),(46,'Gucci'),(47,'Weiss'),(48,'Armani'),(49,'Tissot'),(50,'Van Cleef & Arpels'),(51,'Junghans'),(52,'Bulova'),(53,'Bovet Fleurier'),(54,'Oris'),(55,'Ressence');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Price` float DEFAULT '0',
  `Quantity` int DEFAULT '0',
  `Amount` int DEFAULT '0',
  `CateID` int DEFAULT NULL,
  `SellerID` int DEFAULT NULL,
  `imageLink1` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageLink2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageLink3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageLink4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `fk_Category` (`CateID`),
  KEY `fk_Seller` (`SellerID`),
  CONSTRAINT `fk_Category` FOREIGN KEY (`CateID`) REFERENCES `Category` (`CategoryID`),
  CONSTRAINT `fk_Seller` FOREIGN KEY (`SellerID`) REFERENCES `User` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'Hublob 1','The best option for you',3500,200,0,2,10,'/images/product-1.jpeg','/images/product-2.jpeg','/images/product-3.jpeg','/images/product-4.jpeg'),(2,'Hublob 2','The best option for you',3500,200,0,2,10,'/images/product-1.jpeg','/images/product-2.jpeg','/images/product-3.jpeg','/images/product-4.jpeg'),(3,'Hublob 3','The best option for you',3500,200,0,2,10,'/images/product-5.jpeg','/images/product-6.jpeg','/images/product-7.jpeg','/images/product-8.jpeg'),(4,'Hublob 4','The best option for you',3500,200,0,2,10,'/images/product-5.jpeg','/images/product-6.jpeg','/images/product-7.jpeg','/images/product-8.jpeg'),(5,'Hublob 5','The best option for you',3500,200,0,2,10,'/images/product-5.jpeg','/images/product-6.jpeg','/images/product-7.jpeg','/images/product-8.jpeg'),(6,'Hublob 6','The best option for you',3500,200,0,2,10,'/images/product-9.jpeg','/images/product-10.jpeg','/images/product-11.jpeg','/images/product-12.jpeg'),(7,'Hublob 7','The best option for you',3500,200,0,2,12,'/images/product-9.jpeg','/images/product-10.jpeg','/images/product-11.jpeg','/images/product-12.jpeg'),(8,'Hublob 8','The best option for you',3500,200,0,2,12,'/images/product-9.jpeg','/images/product-10.jpeg','/images/product-11.jpeg','/images/product-12.jpeg'),(9,'Hublob 9','The best option for you',3500,200,0,2,12,'/images/product-9.jpeg','/images/product-10.jpeg','/images/product-11.jpeg','/images/product-12.jpeg'),(10,'Hublob 10','The best option for you',3500,200,9,2,12,'/images/product-13.jpeg','/images/product-14.jpeg','/images/product-15.jpeg','/images/product-16.jpeg'),(11,'Hublob 11','The best option for you',3500,200,0,2,13,'/images/product-13.jpeg','/images/product-14.jpeg','/images/product-15.jpeg','/images/product-16.jpeg'),(12,'Hublob 12','The best option for you',3500,200,0,2,13,'/images/product-13.jpeg','/images/product-14.jpeg','/images/product-15.jpeg','/images/product-16.jpeg'),(13,'Hublob 13','The best option for you',3500,200,0,2,13,'/images/product-1.jpeg','/images/product-2.jpeg','/images/product-3.jpeg','/images/product-4.jpeg'),(14,'Hublob 14','The best option for you',3500,200,0,2,13,'/images/product-1.jpeg','/images/product-2.jpeg','/images/product-3.jpeg','/images/product-4.jpeg'),(15,'Hublob 15','The best option for you',3500,200,0,2,13,'/images/product-1.jpeg','/images/product-2.jpeg','/images/product-3.jpeg','/images/product-4.jpeg'),(16,'Rolex 6','The best watch for you',250,200,190,1,10,'/images/product-4.jpeg','/images/product-2.jpeg','/images/product-1.jpeg','/images/product-1.jpeg'),(17,'Rolex Smatch 3','The best watch',3000,150,20,1,10,'/images/product-8.jpeg','/images/product-7.jpeg','/images/product-6.jpeg','/images/product-5.jpeg'),(20,'Test CSRF','Best choose',300,20,0,1,10,'','','',''),(21,'TEST HACK CSRF','The best watch',3000,4,0,1,10,'/images/product-9.jpeg','/images/product-12.jpeg','/images/product-4.jpeg','/images/product-3.jpeg');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Role` (
  `RoleID` int NOT NULL,
  `RoleName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'user'),(2,'seller'),(3,'admin');
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `FullName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PassWord` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleID` int DEFAULT '0',
  `Status` int DEFAULT '0',
  PRIMARY KEY (`UserID`),
  KEY `fk_Role` (`RoleID`),
  CONSTRAINT `fk_Role` FOREIGN KEY (`RoleID`) REFERENCES `Role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (0,'ZAP\';get-help','ZAP','ZAP',1,1),(3,'Nguyễn Văn Thành ','thanh345','thanh3456',3,1),(7,'Phong Tô','phong678','phong678',2,1),(8,'kiet nguyen','kiet1234','kiet1234',2,1),(10,'Kiet Nguyen','thanh3451','thanh3451',2,1),(11,'Trần Huyền','huyen1231','huyen1231',2,1),(12,'Tá Đức','duc1471','duc1471',2,1),(13,'Cao Trí','tri7891','tri7891',2,0),(14,'Phong Tô','phong6781','phong6781',2,1),(15,'kiet nguyen','kiet1232','kiet1232',2,0),(16,'Nguyễn Tấn Kiệt','kiet4562','kiet4562',2,1),(17,'Nguyễn Văn Thành','thanh3452','thanh3452',2,1),(18,'Trần Huyền','huyen1232','huyen1232',2,1),(19,'Tá Đức','duc1472','duc1472',2,0),(20,'Cao Trí','tri7892','tri7892',2,1),(21,'Phong Tô','phong6782','phong6782',2,0),(22,'kiet nguyen','kiet1233','kiet1233',2,0),(23,'Nguyễn Tấn Kiệt','kiet4563','kiet4563',2,0),(24,'Nguyễn Văn Thành','thanh3453','thanh3453',2,1),(25,'Trần Huyền','huyen1233','huyen1233',2,1),(26,'Tá Đức','duc1473','duc1473',2,0),(27,'Cao Trí','tri7893','tri7893',2,1),(28,'Phong Tô','phong6783','phong6783',2,0),(29,'Nguyên Nguyễn','nguyen190','nguyen190',2,1),(33,'Nguyễn Văn Thành','thanh3454','thanh3454',1,1),(34,'Trần Huyền','huyen1234','huyen1234',1,1),(35,'Tá Đức','duc1474','duc1474',1,0),(36,'Cao Trí','tri7894','tri7894',1,1),(37,'Phong Tô','phong6785','phong6785',1,1),(38,'kiet nguyen','kiet1235','kiet1235',1,1),(39,'Nguyễn Tấn Kiệt','kiet4565','kiet4565',1,0),(40,'Nguyễn Văn Thành','thanh3455','thanh3455',1,0),(41,'Trần Huyền','huyen1235','huyen1235',1,1),(42,'Tá Đức','duc1475','duc1475',1,0),(43,'Cao Trí','tri7895','tri7895',1,1),(44,'Tấn Kiệt','kiettan1234','kiettan1234',2,1),(45,'Kiet Nguyen','kiet1238','kiet1238',1,1),(46,'ZAP','ZAP','ZAP',1,1),(47,'ZAP','c:/Windows/system.ini','ZAP',1,1),(48,'ZAP','../../../../../../../../../../../../../../../../Windows/system.ini','ZAP',1,1),(49,'ZAP','c:\\Windows\\system.ini','ZAP',1,1),(50,'ZAP','..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini','ZAP',1,1),(51,'ZAP','/etc/passwd','ZAP',1,1),(52,'ZAP','../../../../../../../../../../../../../../../../etc/passwd','ZAP',1,1),(53,'ZAP','c:/','ZAP',1,1),(54,'ZAP','/','ZAP',1,1),(55,'ZAP','c:\\','ZAP',1,1),(56,'ZAP','../../../../../../../../../../../../../../../../','ZAP',1,1),(57,'ZAP','WEB-INF/web.xml','ZAP',1,1),(58,'ZAP','WEB-INF\\web.xml','ZAP',1,1),(59,'ZAP','/WEB-INF/web.xml','ZAP',1,1),(60,'ZAP','\\WEB-INF\\web.xml','ZAP',1,1),(61,'ZAP','thishouldnotexistandhopefullyitwillnot','ZAP',1,1),(62,'ZAP','http://www.google.com/','ZAP',1,1),(63,'ZAP','http://www.google.com:80/','ZAP',1,1),(64,'ZAP','http://www.google.com','ZAP',1,1),(65,'ZAP','http://www.google.com/search?q=OWASP%20ZAP','ZAP',1,1),(66,'ZAP','http://www.google.com:80/search?q=OWASP%20ZAP','ZAP',1,1),(67,'ZAP','www.google.com/','ZAP',1,1),(68,'ZAP','www.google.com:80/','ZAP',1,1),(69,'ZAP','www.google.com','ZAP',1,1),(70,'ZAP','www.google.com/search?q=OWASP%20ZAP','ZAP',1,1),(71,'ZAP','www.google.com:80/search?q=OWASP%20ZAP','ZAP',1,1),(72,'ZAP','<!--#EXEC cmd=\"ls /\"-->','ZAP',1,1),(73,'ZAP','\"><!--#EXEC cmd=\"ls /\"--><','ZAP',1,1),(74,'ZAP','<!--#EXEC cmd=\"dir \\\"-->','ZAP',1,1),(75,'ZAP','\"><!--#EXEC cmd=\"dir \\\"--><','ZAP',1,1),(76,'ZAP','zApPX5sS','ZAP',1,1),(77,'ZAP','\";print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=\"','ZAP',1,1),(78,'ZAP','\';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=\'','ZAP',1,1),(79,'ZAP','${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}','ZAP',1,1),(80,'ZAP','${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}\\','ZAP',1,1),(81,'ZAP',';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));','ZAP',1,1),(82,'ZAP','\"+response.write([359,208*898,894)+\"','ZAP',1,1),(83,'ZAP','+response.write({0}*{1})+','ZAP',1,1),(84,'ZAP','response.write(359,208*898,894)','ZAP',1,1),(85,'ZAP','cat /etc/passwd','ZAP',1,1),(86,'ZAP','ZAP&cat /etc/passwd&','ZAP',1,1),(87,'ZAP','ZAP;cat /etc/passwd;','ZAP',1,1),(88,'ZAP','ZAP\"&cat /etc/passwd&\"','ZAP',1,1),(89,'ZAP','ZAP\";cat /etc/passwd;\"','ZAP',1,1),(90,'ZAP','ZAP\'&cat /etc/passwd&\'','ZAP',1,1),(91,'ZAP','ZAP\';cat /etc/passwd;\'','ZAP',1,1),(92,'ZAP','ZAP&sleep 15&','ZAP',1,1),(93,'ZAP','ZAP;sleep 15;','ZAP',1,1),(94,'ZAP','ZAP\"&sleep 15&\"','ZAP',1,1),(95,'ZAP','ZAP\";sleep 15;\"','ZAP',1,1),(96,'ZAP','ZAP\'&sleep 15&\'','ZAP',1,1),(97,'ZAP','ZAP\';sleep 15;\'','ZAP',1,1),(98,'ZAP','type %SYSTEMROOT%\\win.ini','ZAP',1,1),(99,'ZAP','ZAP&type %SYSTEMROOT%\\win.ini','ZAP',1,1),(100,'ZAP','ZAP|type %SYSTEMROOT%\\win.ini','ZAP',1,1),(101,'ZAP','ZAP\"&type %SYSTEMROOT%\\win.ini&\"','ZAP',1,1),(102,'ZAP','ZAP\"|type %SYSTEMROOT%\\win.ini','ZAP',1,1),(103,'ZAP','ZAP\'&type %SYSTEMROOT%\\win.ini&\'','ZAP',1,1),(104,'ZAP','ZAP\'|type %SYSTEMROOT%\\win.ini','ZAP',1,1),(105,'ZAP','ZAP&timeout /T 15','ZAP',1,1),(106,'ZAP','ZAP|timeout /T 15','ZAP',1,1),(107,'ZAP','ZAP\"&timeout /T 15&\"','ZAP',1,1),(108,'ZAP','ZAP\"|timeout /T 15','ZAP',1,1),(109,'ZAP','ZAP\'&timeout /T 15&\'','ZAP',1,1),(110,'ZAP','ZAP\'|timeout /T 15','ZAP',1,1),(111,'ZAP','get-help','ZAP',1,1),(112,'ZAP','ZAP;get-help','ZAP',1,1),(113,'ZAP','ZAP\";get-help','ZAP',1,1),(114,'ZAP','ZAP\';get-help','ZAP',1,1),(115,'ZAP','ZAP;get-help #','ZAP',1,1),(116,'ZAP','ZAP;start-sleep -s 15','ZAP',1,1),(117,'ZAP','ZAP\";start-sleep -s 15','ZAP',1,1),(118,'ZAP','ZAP\';start-sleep -s 15','ZAP',1,1),(119,'ZAP','Set-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22','ZAP',1,1),(120,'ZAP','any\r\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22','ZAP',1,1),(121,'ZAP','any?\r\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22','ZAP',1,1),(122,'ZAP','any\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22','ZAP',1,1),(123,'ZAP','any?\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22','ZAP',1,1),(124,'ZAP','any\r\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22\r\n','ZAP',1,1),(125,'ZAP','any?\r\nSet-cookie: Tamper=d72c7976-7c7b-4d04-9900-f6d458b28b22\r\n','ZAP',1,1),(126,'#jaVasCript:/*-/*`/*\\`/*\'/*\"/**/(/* */oNcliCk=alert(5397) )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\\x3csVg/<sVg/oNloAd=alert(5397)//>\\x3e','#jaVasCript:/*-/*`/*\\`/*\'/*\"/**/(/* */oNcliCk=alert(5397) )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\\x3csVg/<sVg/oNloAd=alert(5397)//>\\x3e','#jaVasCript:/*-/*`/*\\`/*\'/*\"/**/(/* */oNcliCk=alert(5397) )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\\x3csVg/<sVg/oNloAd=alert(5397)//>\\x3e',1,1),(127,'#javascript:alert(5397)','#javascript:alert(5397)','#javascript:alert(5397)',1,1),(128,'?name=abc#<img src=\"random.gif\" onerror=alert(5397)>','?name=abc#<img src=\"random.gif\" onerror=alert(5397)>','?name=abc#<img src=\"random.gif\" onerror=alert(5397)>',1,1),(129,'hacker','taikhoanhacker','123456',1,1),(130,'ZAP','5063323688972431697.owasp.org','ZAP',1,1),(131,'ZAP','http://5063323688972431697.owasp.org','ZAP',1,1),(132,'ZAP','https://5063323688972431697.owasp.org','ZAP',1,1),(133,'ZAP','http:\\\\5063323688972431697.owasp.org','ZAP',1,1),(134,'ZAP','https:\\\\5063323688972431697.owasp.org','ZAP',1,1),(135,'ZAP','//5063323688972431697.owasp.org','ZAP',1,1),(136,'ZAP','\\\\5063323688972431697.owasp.org','ZAP',1,1),(137,'ZAP','\'\"\0<scrIpt>alert(1);</scRipt>','ZAP',1,1),(138,'ZAP','\'\"<img src=x onerror=prompt()>','ZAP',1,1),(139,'ZAP','\'','ZAP',1,1),(140,'ZAP','ZAP\'','ZAP',1,1),(141,'ZAP','\"','ZAP',1,1),(142,'ZAP','ZAP\"','ZAP',1,1),(143,'ZAP',';','ZAP',1,1),(144,'ZAP','ZAP;','ZAP',1,1),(145,'ZAP','\'(','ZAP',1,1),(146,'ZAP','ZAP\'(','ZAP',1,1),(147,'ZAP','ZAP AND 1=1 -- ','ZAP',1,1),(148,'ZAP','ZAP AND 1=2 -- ','ZAP',1,1),(149,'ZAP','ZAP OR 1=1 -- ','ZAP',1,1),(150,'ZAP','ZAP\' AND \'1\'=\'1\' -- ','ZAP',1,1),(151,'ZAP','ZAP\' AND \'1\'=\'2\' -- ','ZAP',1,1),(152,'ZAP','ZAP\' OR \'1\'=\'1\' -- ','ZAP',1,1),(153,'ZAP','\"+response.write([171,961*983,805)+\"','ZAP',1,1),(154,'ZAP','response.write(171,961*983,805)','ZAP',1,1),(155,'ZAP','Set-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370','ZAP',1,1),(156,'ZAP','any\r\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370','ZAP',1,1),(157,'ZAP','any?\r\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370','ZAP',1,1),(158,'ZAP','any\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370','ZAP',1,1),(159,'ZAP','any?\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370','ZAP',1,1),(160,'ZAP','any\r\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370\r\n','ZAP',1,1),(161,'ZAP','any?\r\nSet-cookie: Tamper=a0f4f801-461a-4eca-a2e0-4c3f464f3370\r\n','ZAP',1,1),(162,'','','',1,1),(163,'ZAP','0W45pz4p','ZAP',1,1),(164,'ZAP','ZAP0W45pz4p','ZAP',1,1),(165,'ZAP','\"+response.write([418,076*413,328)+\"','ZAP',1,1),(166,'ZAP','response.write(418,076*413,328)','ZAP',1,1);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20 22:19:37
