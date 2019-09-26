-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: suppictures
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB

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
-- Table structure for table `image_table`
--

DROP TABLE IF EXISTS `image_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `uploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_table`
--

LOCK TABLES `image_table` WRITE;
/*!40000 ALTER TABLE `image_table` DISABLE KEYS */;
INSERT INTO `image_table` VALUES (1,'Anjuli','b','cake2.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\cake2.jpg','wtv wtv wtvc','2019-09-23 14:58:06'),(11,'Deepti','Babejee','baked-bakery-baking-2144200.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\baked-bakery-baking-2144200.jpg','delish','2019-09-23 14:58:06'),(13,'d','d','1.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\1.jpg','ddddd','2019-09-23 14:58:06'),(14,'d','d','back.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\back.jpg','ddddd','2019-09-23 14:58:06'),(15,'bbb','bbb','back.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\back.jpg','bbbbb','2019-09-23 14:58:06'),(16,'bbb','bbb','bake-bakery-baking-1352295.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\bake-bakery-baking-1352295.jpg','bbbbb','2019-09-23 14:58:06'),(17,'Gerald','Ladouceur','bake-bakery-baking-1352295.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\bake-bakery-baking-1352295.jpg','Delicious','2019-09-23 14:59:49'),(18,'Anjuli2','Bismohun','whale.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\whale.jpg','Whaley whale','2019-09-23 14:58:06'),(19,'Yudisht','Hurbung','optimus.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\images\\\\optimus.jpg','prime','2019-09-23 14:58:06'),(20,'Vash','G','undead.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\undead.jpg','unicorn','2019-09-23 14:58:06'),(21,'julien','Fabre','bakery-baking-blueberries-291528.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\\\bakery-baking-blueberries-291528.jpg','choco','2019-09-23 14:58:06'),(22,'Deepti','Babajee','savitar.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\\\savitar.jpg','savitar','2019-09-23 14:58:06'),(23,'Deepti','bbj','adam.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\adam.jpg','Black adam','2019-09-23 14:58:06'),(24,'Gerald','Ladouceur','maxresdefault.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\maxresdefault.jpg','Bugatti','2019-09-23 14:58:06'),(25,'d','d','baked-bakery-baking-2144200.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\baked-bakery-baking-2144200.jpg','d','2019-09-23 14:58:06'),(26,'f','f','bake-bakery-baking-1352295.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\bake-bakery-baking-1352295.jpg','f','2019-09-23 14:58:06'),(27,'f','f','bake-bakery-baking-1352295.jpg','C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\\\bake-bakery-baking-1352295.jpg','f','2019-09-23 14:58:06'),(30,'Vasisht','Goundory','hades','C:/','god of hell','2019-09-23 15:00:54'),(32,'Preetesh','Sembhoo','d','C/',NULL,'2019-09-23 15:06:47'),(33,'Vasisht','Goundory','file','C://','something something','2019-09-23 15:06:47');
/*!40000 ALTER TABLE `image_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','admin'),('vasisht','225743'),('a','a'),('chet','chet'),('ChitPiSekh','Enter'),('Julien','1111'),('Gerald','1234'),('Anjuli2','Carol'),('Yudisht','1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'cake.jpg','wtv'),(2,'cake2.jpg','wtvwtv');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `idpicture` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`idpicture`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,'whale','whaley whale'),(2,'cupcake','cuppy cake'),(3,'beard','well trimmed'),(4,'cake5','delisshhh'),(5,'cake4','delicious');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 19:26:50
