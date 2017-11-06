-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sixtysixten
-- ------------------------------------------------------
-- Server version	5.5.58-0ubuntu0.14.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtcproducts`
--

DROP TABLE IF EXISTS `mtcproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtcproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtcproducts`
--

LOCK TABLES `mtcproducts` WRITE;
/*!40000 ALTER TABLE `mtcproducts` DISABLE KEYS */;
INSERT INTO `mtcproducts` VALUES (1,'test1 Product','2017-11-05 18:53:04','0000-00-00 00:00:00',NULL),(2,'test 2 product\r\n','2017-11-05 18:53:04','0000-00-00 00:00:00',NULL),(6,'ddddddd','2017-11-05 19:05:51','2017-11-05 19:05:51',NULL),(7,'ddddddd','2017-11-05 19:07:29','2017-11-05 19:07:29',NULL),(8,'ddddddd','2017-11-05 19:09:11','2017-11-05 19:09:11',NULL),(9,'ss','2017-11-05 19:10:11','2017-11-05 19:10:11',NULL),(10,'final Test','2017-11-05 19:11:21','2017-11-05 19:11:21',NULL),(11,'ddddddddddddff','2017-11-05 19:35:02','2017-11-05 19:35:02',NULL),(12,'ddddddddddddff','2017-11-05 19:35:38','2017-11-05 19:35:38',NULL),(13,'ddddddddddddff','2017-11-05 19:36:56','2017-11-05 19:36:56',NULL),(14,'testing','2017-11-05 19:55:55','2017-11-05 19:55:55',NULL),(15,'testing by ajax','2017-11-06 15:47:45','2017-11-06 15:47:45',NULL),(16,'testing by ajax','2017-11-06 15:48:30','2017-11-06 15:48:30',NULL),(17,'testing by ajax 1','2017-11-06 15:49:17','2017-11-06 15:49:17',NULL),(18,'testing by ajax 2','2017-11-06 15:51:22','2017-11-06 15:51:22',NULL),(19,'testing by ajax 2','2017-11-06 15:55:23','2017-11-06 15:55:23',NULL),(20,'testing by ajax 3','2017-11-06 16:20:32','2017-11-06 16:20:32',NULL),(21,'testing by ajax 3','2017-11-06 16:20:46','2017-11-06 16:20:46',NULL),(22,'testing by ajax 3','2017-11-06 16:21:13','2017-11-06 16:21:13',NULL),(23,'testing by ajax 3','2017-11-06 16:21:42','2017-11-06 16:21:42',NULL),(24,'testing by ajax 3','2017-11-06 16:24:07','2017-11-06 16:24:07',NULL),(25,'testing by ajax 3','2017-11-06 16:24:16','2017-11-06 16:24:16',NULL),(26,'sdasd','2017-11-06 16:54:43','2017-11-06 16:54:43',NULL),(27,'Test with validation','2017-11-06 16:56:29','2017-11-06 16:56:29',NULL),(28,'asdasd','2017-11-06 16:57:36','2017-11-06 16:57:36',NULL),(29,'aksdjal','2017-11-06 18:15:08','2017-11-06 18:15:08',NULL);
/*!40000 ALTER TABLE `mtcproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_variant`
--

DROP TABLE IF EXISTS `products_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_variant` (
  `product_variant_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_position` int(11) NOT NULL,
  `product_variant_color` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_variant_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `products_variant_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mtcproducts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_variant`
--

LOCK TABLES `products_variant` WRITE;
/*!40000 ALTER TABLE `products_variant` DISABLE KEYS */;
INSERT INTO `products_variant` VALUES (1,1,'red',1,'2017-11-05 18:55:19','0000-00-00 00:00:00',NULL),(2,2,'blue',1,'2017-11-05 18:55:19','0000-00-00 00:00:00',NULL),(3,1,'black',2,'2017-11-05 18:55:55','0000-00-00 00:00:00',NULL),(4,0,'',6,'2017-11-05 19:05:51','2017-11-05 19:05:51',NULL),(5,0,'',6,'2017-11-05 19:05:51','2017-11-05 19:05:51',NULL),(6,0,'',6,'2017-11-05 19:05:51','2017-11-05 19:05:51',NULL),(7,0,'ghj',7,'2017-11-05 19:07:29','2017-11-05 19:07:29',NULL),(8,0,'gggg',7,'2017-11-05 19:07:29','2017-11-05 19:07:29',NULL),(9,0,'1qq',7,'2017-11-05 19:07:29','2017-11-05 19:07:29',NULL),(10,1,'ghj',8,'2017-11-05 19:09:11','2017-11-05 19:09:11',NULL),(11,1,'gggg',8,'2017-11-05 19:09:11','2017-11-05 19:09:11',NULL),(12,1,'1qq',8,'2017-11-05 19:09:11','2017-11-05 19:09:11',NULL),(13,1,'ss',9,'2017-11-05 19:10:11','2017-11-05 19:10:11',NULL),(14,1,'red',10,'2017-11-05 19:11:21','2017-11-05 19:11:21',NULL),(15,2,'blue',10,'2017-11-05 19:11:21','2017-11-05 19:11:21',NULL),(16,3,'black',10,'2017-11-05 19:11:22','2017-11-05 19:11:22',NULL),(17,4,'green',10,'2017-11-05 19:11:22','2017-11-05 19:11:22',NULL),(18,1,'1aaa',11,'2017-11-05 19:35:02','2017-11-05 19:35:02',NULL),(19,1,'1aaa',12,'2017-11-05 19:35:38','2017-11-05 19:35:38',NULL),(20,1,'1aaa',13,'2017-11-05 19:36:56','2017-11-05 19:36:56',NULL),(21,1,'ssss',13,'2017-11-05 19:36:56','2017-11-05 19:36:56',NULL),(22,1,'1',14,'2017-11-05 19:55:55','2017-11-05 19:55:55',NULL),(23,2,'2',14,'2017-11-05 19:55:56','2017-11-05 19:55:56',NULL),(24,11,'1asdasd',15,'2017-11-06 15:47:45','2017-11-06 15:47:45',NULL),(25,11,'1asdasd',17,'2017-11-06 15:49:17','2017-11-06 15:49:17',NULL),(26,11,'1asdasd',18,'2017-11-06 15:51:22','2017-11-06 15:51:22',NULL),(27,22,'ass',18,'2017-11-06 15:51:22','2017-11-06 15:51:22',NULL),(28,11,'1asdasd',19,'2017-11-06 15:55:24','2017-11-06 15:55:24',NULL),(29,0,'',19,'2017-11-06 15:55:24','2017-11-06 15:55:24',NULL),(30,1,'s',20,'2017-11-06 16:20:32','2017-11-06 16:20:32',NULL),(31,1,'s',21,'2017-11-06 16:20:46','2017-11-06 16:20:46',NULL),(32,0,'',21,'2017-11-06 16:20:46','2017-11-06 16:20:46',NULL),(33,0,'',21,'2017-11-06 16:20:46','2017-11-06 16:20:46',NULL),(34,1,'s',22,'2017-11-06 16:21:13','2017-11-06 16:21:13',NULL),(35,0,'',22,'2017-11-06 16:21:13','2017-11-06 16:21:13',NULL),(36,0,'',22,'2017-11-06 16:21:13','2017-11-06 16:21:13',NULL),(37,1,'s',23,'2017-11-06 16:21:43','2017-11-06 16:21:43',NULL),(38,1,'s',24,'2017-11-06 16:24:08','2017-11-06 16:24:08',NULL),(39,1,'s',25,'2017-11-06 16:24:16','2017-11-06 16:24:16',NULL),(40,1,'sssssss',26,'2017-11-06 16:54:43','2017-11-06 16:54:43',NULL),(41,1,'1111a',27,'2017-11-06 16:56:29','2017-11-06 16:56:29',NULL),(42,2,'22a',27,'2017-11-06 16:56:29','2017-11-06 16:56:29',NULL),(43,1,'1111a',28,'2017-11-06 16:57:36','2017-11-06 16:57:36',NULL),(44,1,'sss',28,'2017-11-06 16:57:36','2017-11-06 16:57:36',NULL),(45,1,'aa',29,'2017-11-06 18:15:08','2017-11-06 18:15:08',NULL);
/*!40000 ALTER TABLE `products_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-11-06 22:20:32
