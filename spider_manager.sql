-- MySQL dump 10.13  Distrib 5.6.12, for Linux (x86_64)
--
-- Host: localhost    Database: spider_manager
-- ------------------------------------------------------
-- Server version	5.6.12

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
-- Table structure for table `spider_app`
--

DROP TABLE IF EXISTS `spider_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_app` (
  `aid` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `remark` text,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_app`
--

LOCK TABLES `spider_app` WRITE;
/*!40000 ALTER TABLE `spider_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_config`
--

DROP TABLE IF EXISTS `spider_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` char(20) DEFAULT NULL,
  `aid` int(5) unsigned NOT NULL,
  `conf` text,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_config`
--

LOCK TABLES `spider_config` WRITE;
/*!40000 ALTER TABLE `spider_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_user`
--

DROP TABLE IF EXISTS `spider_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` char(20) DEFAULT NULL,
  `screen_name` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `profileImageUrl` varchar(50) DEFAULT NULL,
  `followersCount` varchar(15) DEFAULT NULL,
  `friendsCount` varchar(15) DEFAULT NULL,
  `statusesCount` varchar(15) DEFAULT NULL,
  `favourites` varchar(15) DEFAULT NULL,
  `createdAt` varchar(30) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `biFollowersCount` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_user`
--

LOCK TABLES `spider_user` WRITE;
/*!40000 ALTER TABLE `spider_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 12:18:03
