-- MySQL dump 10.13  Distrib 5.6.12, for Linux (x86_64)
--
-- Host: 222.24.63.100    Database: spider_manager
-- ------------------------------------------------------
-- Server version	5.6.17

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_config`
--

LOCK TABLES `spider_config` WRITE;
/*!40000 ALTER TABLE `spider_config` DISABLE KEYS */;
INSERT INTO `spider_config` VALUES (1,'2314283235',1,'<SpiderConfig><class><newspaper paper_name=\"aaaa\" paper_starturl=\"http//:www.baidu.com\" paper_encode=\"UTF-9\"/><newspaper paper_name=\"aoä¼´å¥\" paper_starturl=\"http:wwwwwww\" paper_encode=\"\"/><page><page_url_outer page_url_node=\"element\">a[href=sss]</page_url_outer><page_url_tag>dsd[]asd&gt;</page_url_tag><page_url_attr attr_value=\".sdf[]\"><page_draw><page_url_sub>sda</page_url_sub><page_url_front>u[</page_url_front><page_url_rear>hu[</page_url_rear><page_url_have>uh[</page_url_have></page_draw></page_url_attr></page><news><news_url_outer>uh[</news_url_outer><news_url_tag>hu[</news_url_tag><news_url_attr attr_value=\"hu[\"><news_draw><news_url_sub>uh[</news_url_sub><news_url_front>uh[</news_url_front><news_url_rear>hu[</news_url_rear><news_url_have>hu[</news_url_have></news_draw></news_url_attr></news><content><title><title_outer>hu[</title_outer><title_tag>uh[</title_tag><title_attr>hu[</title_attr></title><time_format>hu[</time_format><text><content_outer>uh[huhuuh</content_outer><content_tag>hu[</content_tag></text><image><img_outer>uh[uh[</img_outer><img_tag>hu[uh[</img_tag></image></content></class></SpiderConfig>','2014-11-29 09:44:46');
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
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_user`
--

LOCK TABLES `spider_user` WRITE;
/*!40000 ALTER TABLE `spider_user` DISABLE KEYS */;
INSERT INTO `spider_user` VALUES (1,'2314283235','戴着眼镜的狗','戴着眼镜的狗','陕西 咸阳','I`m coding','http://blog.163.com/g_lacier/','http://tp4.sinaimg.cn/2314283235/50/22849850283/1','148','258','292','44','Sat Aug 20 22:23:09 CST 2011','m','90','421186071@qq.com'),(2,'2802198027','--似水流年0710','--似水流年0710','山东 枣庄','只要内心不乱，外界就很难改变你什么。不要艳羡他人，不要输掉自己。','','http://tp4.sinaimg.cn/2802198027/50/40013310693/1','119','322','61','6','Sat Jul 21 11:06:44 CST 2012','m','55',NULL);
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

-- Dump completed on 2014-11-29 18:38:12
