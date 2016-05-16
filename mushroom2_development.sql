-- MySQL dump 10.13  Distrib 5.6.27, for osx10.11 (x86_64)
--
-- Host: localhost    Database: mushroom2_development
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `customer_purchases`
--

DROP TABLE IF EXISTS `customer_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `expected_payment` float DEFAULT NULL,
  `actual_payment` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_purchases`
--

LOCK TABLES `customer_purchases` WRITE;
/*!40000 ALTER TABLE `customer_purchases` DISABLE KEYS */;
INSERT INTO `customer_purchases` VALUES (1,1,'2015-12-16',20,100,80,'2015-12-16 17:15:52','2015-12-16 17:15:52'),(2,3,'2015-12-16',100,20,15,'2015-12-17 08:46:50','2015-12-17 08:46:50'),(3,4,'2015-12-16',44,30,30,'2015-12-17 08:46:50','2015-12-17 08:46:50'),(4,5,'2015-12-16',4,3,3,'2015-12-17 08:46:50','2015-12-17 08:50:58'),(5,6,'2015-12-16',100,200,180,'2015-12-17 10:09:34','2015-12-17 10:09:34'),(6,7,'2015-12-16',40,120,100,'2015-12-17 10:09:34','2015-12-17 10:09:55'),(7,8,'2015-12-16',100,300,100,'2015-12-17 15:30:20','2015-12-17 15:30:20'),(8,9,'2015-12-16',50,150,120,'2015-12-17 15:30:20','2015-12-17 15:32:19');
/*!40000 ALTER TABLE `customer_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Dolah','01222332232','dol@gmail.com','2015-12-16 16:52:14','2015-12-16 16:52:14',1),(3,'ODAH','01222332232','a@b.com','2015-12-16 17:09:46','2015-12-16 17:09:46',1),(4,'Salahuddin','223232','asaaa','2015-12-16 17:10:20','2015-12-16 17:10:20',1),(5,'Hazman','998989','kkk','2015-12-16 20:05:00','2015-12-16 20:05:00',1),(6,'Yasmin','12121212','kk','2015-12-16 20:05:20','2015-12-16 20:05:20',1),(7,'Adi','123123','sdfsd','2015-12-16 20:05:33','2015-12-16 20:05:33',1),(8,'Along','','','2015-12-16 20:05:47','2015-12-16 20:05:47',1),(9,'Nayli','','','2015-12-16 20:06:14','2015-12-16 20:06:14',1),(10,'Umar','','','2015-12-16 20:06:25','2015-12-16 20:06:25',1),(11,'Syahira','','','2015-12-16 20:06:40','2015-12-16 20:06:40',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (1,'A','2015-11-27 19:42:33','2015-11-27 19:42:33'),(2,'B','2015-11-27 21:56:26','2015-11-27 21:56:26'),(3,'C','2015-11-28 02:40:55','2015-11-28 02:40:55'),(4,'D','2015-11-28 04:03:19','2015-11-28 04:03:19'),(5,'PE','2015-12-01 02:45:05','2015-12-01 02:45:05'),(6,'as','2015-12-01 04:59:05','2015-12-01 04:59:05');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` VALUES (1,'Pasar Seremban','2015-12-16 17:03:04','2015-12-16 17:03:04'),(2,'Pasar D','2015-12-16 17:25:08','2015-12-16 17:25:08');
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productions`
--

DROP TABLE IF EXISTS `productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `production_date` date DEFAULT NULL,
  `a_am` float DEFAULT '0',
  `b_am` float DEFAULT '0',
  `c_am` float DEFAULT '0',
  `d_am` float DEFAULT '0',
  `pa_am` float DEFAULT '0',
  `pb_am` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `a_pm` float DEFAULT '0',
  `b_pm` float DEFAULT '0',
  `c_pm` float DEFAULT '0',
  `d_pm` float DEFAULT '0',
  `pa_pm` float DEFAULT '0',
  `pb_pm` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productions`
--

LOCK TABLES `productions` WRITE;
/*!40000 ALTER TABLE `productions` DISABLE KEYS */;
INSERT INTO `productions` VALUES (2,'2015-11-28',15,13,23,0,0,0,'2015-11-27 23:26:41','2015-11-27 23:26:41',0,0,0,0,0,0),(3,'2015-11-29',12,3,1,2,0,0,'2015-11-28 02:21:46','2015-11-28 02:21:46',0,0,0,0,0,0),(4,'2015-12-01',0.1,2,3,3,0,0,'2015-11-28 02:22:35','2015-11-28 02:22:35',0,0,0,0,0,0),(5,'2015-11-30',23.4,0,0,0,0,0,'2015-11-28 03:01:32','2015-11-28 03:09:02',23.4,0,0,0,0,0),(6,'2015-12-02',5,5,5,5,5,5,'2015-11-28 03:11:29','2015-11-28 03:11:29',5,5,5,5,5,5),(7,'2015-12-03',5,5,5,5,5,5,'2015-11-28 03:13:35','2015-11-28 03:13:35',5,5,5,5,5,5),(8,'2015-11-01',113.5,0,0,0,0,0,'2015-11-28 04:19:05','2015-11-28 04:19:05',24.5,0,0,0,0,0),(9,'2015-12-06',12,6,86,868,58,88,'2015-12-01 05:03:02','2015-12-01 05:03:02',454,75,86,658,5,58);
/*!40000 ALTER TABLE `productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_records`
--

DROP TABLE IF EXISTS `sale_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arra` float DEFAULT NULL,
  `purchase` float DEFAULT NULL,
  `ttl_out` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_records`
--

LOCK TABLES `sale_records` WRITE;
/*!40000 ALTER TABLE `sale_records` DISABLE KEYS */;
INSERT INTO `sale_records` VALUES (1,100,10,100,'2015-12-17','2015-12-17 15:55:39','2015-12-17 16:20:39',10),(2,40,100,140,'2015-12-18','2015-12-17 16:25:45','2015-12-17 16:25:45',10);
/*!40000 ALTER TABLE `sale_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151127192549'),('20151127194440'),('20151127225427'),('20151201024923'),('20151216165107'),('20151216165808'),('20151216165825'),('20151216165847'),('20151217154419'),('20151217154820'),('20151217160008');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelves`
--

DROP TABLE IF EXISTS `shelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_date` date DEFAULT NULL,
  `harvest_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cycle` int(11) DEFAULT '0',
  `house_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelves`
--

LOCK TABLES `shelves` WRITE;
/*!40000 ALTER TABLE `shelves` DISABLE KEYS */;
INSERT INTO `shelves` VALUES (3,'2','Open','2015-11-28','2015-11-27','2015-11-20','2015-11-27',0,1,'2015-11-27 21:02:20','2015-11-27 21:45:31'),(4,'3','Open','2015-12-01','2015-11-27','2015-11-20','2015-11-27',1,1,'2015-11-27 21:02:20','2015-12-01 05:00:31'),(10,'4','Open','2015-11-28','2015-12-04','2015-12-04','2015-12-12',0,1,'2015-11-28 02:11:23','2015-11-28 02:11:23'),(11,'5','Close','2015-12-12','2015-12-18','2015-12-18','2015-12-26',0,1,'2015-11-28 02:13:24','2015-11-28 02:13:24'),(12,'7','Open','2015-11-28','2015-11-20','2015-11-20','2015-11-28',0,1,'2015-11-28 02:18:55','2015-11-28 02:43:15'),(13,'6','Open','2015-11-28',NULL,NULL,NULL,0,1,'2015-11-28 02:39:47','2015-11-28 02:43:15'),(14,'8','Open','2015-11-28',NULL,NULL,NULL,0,1,'2015-11-28 02:41:35','2015-11-28 02:43:15'),(17,'1','Open','2015-11-28',NULL,NULL,NULL,1,2,'2015-11-28 03:47:01','2015-11-28 03:47:54'),(18,'2','Open','2015-11-27','2015-11-28','2015-11-28',NULL,1,2,'2015-11-28 03:47:07','2015-11-28 03:53:12'),(19,'3','Open','2015-11-26',NULL,NULL,NULL,1,2,'2015-11-28 03:47:15','2015-11-28 03:51:29'),(20,'4','Open','2015-11-25',NULL,NULL,NULL,1,2,'2015-11-28 03:47:23','2015-11-28 03:53:20'),(21,'5','Open','2015-11-24',NULL,NULL,NULL,1,2,'2015-11-28 03:47:29','2015-11-28 03:53:27'),(22,'6','Open','2015-11-28','2015-11-28','2015-11-18',NULL,2,2,'2015-11-28 03:47:36','2015-11-28 03:55:07'),(23,'7','Harvest','2015-11-21','2015-11-28',NULL,NULL,1,2,'2015-11-28 03:55:39','2015-11-28 03:57:28'),(24,'1','Open','2015-11-28',NULL,NULL,NULL,1,4,'2015-11-28 04:03:41','2015-11-28 04:05:59'),(25,'2','Open','2015-11-28',NULL,NULL,NULL,1,4,'2015-11-28 04:05:26','2015-11-28 04:05:59'),(26,'3','Open','2015-11-28',NULL,NULL,NULL,1,4,'2015-11-28 04:05:30','2015-11-28 04:05:59'),(27,'4','Close',NULL,NULL,NULL,NULL,0,4,'2015-11-28 04:05:34','2015-11-28 04:05:34'),(28,'5','Close',NULL,NULL,NULL,NULL,0,4,'2015-11-28 04:05:39','2015-11-28 04:05:39'),(29,'1','Open','2015-12-01',NULL,NULL,NULL,1,5,'2015-12-01 02:45:19','2015-12-01 02:45:45');
/*!40000 ALTER TABLE `shelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,'atikah','0122223232','2015-12-01 02:52:02','2015-12-01 02:52:02');
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18  0:56:38
