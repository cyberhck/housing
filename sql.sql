-- MySQL dump 10.15  Distrib 10.0.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: housing
-- ------------------------------------------------------
-- Server version	10.0.17-MariaDB-log

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
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,1,4000000,'2005-01-01 00:00:00'),(2,1,4400000,'2006-01-01 00:00:00'),(3,1,6600000,'2007-01-01 00:00:00'),(4,1,6600000,'2008-01-01 00:00:00'),(5,1,6534000,'2009-01-01 00:00:00'),(6,1,6730020,'2010-01-01 00:00:00'),(7,1,7201122,'2011-01-01 00:00:00'),(8,1,7849222,'2012-01-01 00:00:00'),(9,1,8477160,'2013-01-01 00:00:00'),(10,1,9324876,'2014-01-01 00:00:00'),(11,1,10723608,'2015-01-01 00:00:00'),(12,2,600000,'2005-01-01 00:00:00'),(13,2,660000,'2006-01-01 00:00:00'),(14,2,7000000,'2007-01-01 00:00:00'),(15,2,7800000,'2008-01-01 00:00:00'),(16,2,8800000,'2009-01-01 00:00:00'),(17,2,8821251,'2010-01-01 00:00:00'),(18,2,8800000,'2011-01-01 00:00:00'),(19,2,10000000,'2012-01-01 00:00:00'),(20,2,10050000,'2013-01-01 00:00:00'),(21,2,11150000,'2014-01-01 00:00:00'),(22,2,11300000,'2015-01-01 00:00:00'),(23,3,2000000,'2005-01-01 00:00:00'),(24,3,2500000,'2006-01-01 00:00:00'),(25,3,2500000,'2007-01-01 00:00:00'),(26,3,2300000,'2008-01-01 00:00:00'),(27,3,2700000,'2009-01-01 00:00:00'),(28,3,3000000,'2010-01-01 00:00:00'),(29,3,3500000,'2011-01-01 00:00:00'),(30,3,3500000,'2012-01-01 00:00:00'),(31,3,3500000,'2013-01-01 00:00:00'),(32,3,4000000,'2014-01-01 00:00:00'),(33,3,4200000,'2015-01-01 00:00:00'),(34,4,1058000,'2005-01-01 00:00:00'),(35,4,1200000,'2006-01-01 00:00:00'),(36,4,1500000,'2007-01-01 00:00:00'),(37,4,3000000,'2008-01-01 00:00:00'),(38,4,3500000,'2009-01-01 00:00:00'),(39,4,3500000,'2010-01-01 00:00:00'),(40,4,3500000,'2011-01-01 00:00:00'),(41,4,3500000,'2012-01-01 00:00:00'),(42,4,5000000,'2013-01-01 00:00:00'),(43,4,5000000,'2014-01-01 00:00:00'),(44,4,7000000,'2015-01-01 00:00:00'),(45,5,4800000,'2005-01-01 00:00:00'),(46,5,5000000,'2006-01-01 00:00:00'),(47,5,5500000,'2007-01-01 00:00:00'),(48,5,7000000,'2008-01-01 00:00:00'),(49,5,7000000,'2009-01-01 00:00:00'),(50,5,7000000,'2010-01-01 00:00:00'),(51,5,7000000,'2011-01-01 00:00:00'),(52,5,7000000,'2012-01-01 00:00:00'),(53,5,7000000,'2013-01-01 00:00:00'),(54,5,10000000,'2014-01-01 00:00:00'),(55,5,10000000,'2015-01-01 00:00:00'),(56,6,1000000,'2005-01-01 00:00:00'),(57,6,1000000,'2006-01-01 00:00:00'),(58,6,1000000,'2007-01-01 00:00:00'),(59,6,1000000,'2008-01-01 00:00:00'),(60,6,2000000,'2009-01-01 00:00:00'),(61,6,2500000,'2010-01-01 00:00:00'),(62,6,2500000,'2011-01-01 00:00:00'),(63,6,3000000,'2012-01-01 00:00:00'),(64,6,3500000,'2013-01-01 00:00:00'),(65,6,3500000,'2014-01-01 00:00:00'),(66,6,5000000,'2015-01-01 00:00:00'),(67,7,10000000,'2005-01-01 00:00:00'),(68,7,10000000,'2006-01-01 00:00:00'),(69,7,10000000,'2007-01-01 00:00:00'),(70,7,10000000,'2008-01-01 00:00:00'),(71,7,10000000,'2009-01-01 00:00:00'),(72,7,11000000,'2010-01-01 00:00:00'),(73,7,12000000,'2011-01-01 00:00:00'),(74,7,12500000,'2012-01-01 00:00:00'),(75,7,12500000,'2013-01-01 00:00:00'),(76,7,13000000,'2014-01-01 00:00:00'),(77,7,15000000,'2015-01-01 00:00:00'),(78,8,5000000,'2005-01-01 00:00:00'),(79,8,5000000,'2006-01-01 00:00:00'),(80,8,5500000,'2007-01-01 00:00:00'),(81,8,6000000,'2008-01-01 00:00:00'),(82,8,6500000,'2009-01-01 00:00:00'),(83,8,7000000,'2010-01-01 00:00:00'),(84,8,7500000,'2011-01-01 00:00:00'),(85,8,8000000,'2012-01-01 00:00:00'),(86,8,8500000,'2013-01-01 00:00:00'),(87,8,9000000,'2014-01-01 00:00:00'),(88,8,9500000,'2015-01-01 00:00:00'),(89,9,6800000,'2005-01-01 00:00:00'),(90,9,7000000,'2006-01-01 00:00:00'),(91,9,7000000,'2007-01-01 00:00:00'),(92,9,7500000,'2008-01-01 00:00:00'),(93,9,7800000,'2009-01-01 00:00:00'),(94,9,8000000,'2010-01-01 00:00:00'),(95,9,8200000,'2011-01-01 00:00:00'),(96,9,8400000,'2012-01-01 00:00:00'),(97,9,8600000,'2013-01-01 00:00:00'),(98,9,9000000,'2014-01-01 00:00:00'),(99,9,9400000,'2014-01-01 00:00:00'),(100,10,10000000,'2005-01-01 00:00:00'),(101,10,10000000,'2006-01-01 00:00:00'),(102,10,10000000,'2007-01-01 00:00:00'),(103,10,15000000,'2008-01-01 00:00:00'),(104,10,15500000,'2009-01-01 00:00:00'),(105,10,16000000,'2010-01-01 00:00:00'),(106,10,17000000,'2011-01-01 00:00:00'),(107,10,17900000,'2012-01-01 00:00:00'),(108,10,19000000,'2013-01-01 00:00:00'),(109,10,20000000,'2014-01-01 00:00:00'),(110,10,20400000,'2015-01-01 00:00:00');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `calamities` int(11) NOT NULL,
  `soilQuality` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Property 1',13.075799942016602,77.52262115478516,0,'good'),(2,'Property 2',13.060416221618652,77.62287139892578,0,'good'),(3,'Property 3',13.076803207397461,77.5802993774414,1,'poor'),(4,'Property 4',13.070114135742188,77.58098602294922,0,'average'),(5,'Property 5',13.094861030578613,77.58270263671875,0,'good'),(6,'Property 6',13.04436206817627,77.62287139892578,1,'poor'),(7,'Property 7',12.98615837097168,77.51060485839844,0,'good'),(8,'Property 8',13.07947826385498,77.57102966308594,0,'good'),(9,'Property 9',13.01425838470459,77.6180648803711,0,'good'),(10,'Property 10',13.068442344665527,77.53189086914062,0,'good');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` int(11) DEFAULT NULL,
  `message` text,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `isExpert` int(11) DEFAULT NULL,
  `isConflict` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property` (`property`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`property`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'This land has balanced soil and is architecturally neutral.It has good surroundings and is located in an developing environment. Its good value for money. As the appreciation rate is quite good. Its a good investment','4',1,0),(2,1,'This land is in excellent location and has good scope of development.In the course of time the property rate has increased.','4',0,0),(3,1,'There are good brands around this property. All the necessities are readily available.','4',0,0),(4,1,'This property has excellent location and would be a good investment for the buyer.','5',0,0),(5,1,'The area is developing and hence its a good investment.','3',0,0),(6,2,'The area is well established and hence buying this property would add to the fortune and can be a good deal. Since it has all the amenities around it and all the major schools as well. The soil isgood for construction. water supply is available.','4',1,0),(7,2,'I stay around here and its a well established area with beautiful surroundings. It has nature\'s bounty. ','5',0,0),(8,2,'As to what I have heard this land is under some illegal conflicts and some fictitious activities are going on in order to come out of this, my advice is don\'t buy this property','1',0,1),(9,2,'Its an awesome property, I wish I would have found it before I bought mine.','5',0,0),(10,2,'Interesting plot and has been in demand since long','4',0,0),(11,3,'An average property. The surroundings are under development. The locality is scantily populated, as its far off the main city. ','2',1,0),(12,3,'The population is low, but there is scope of development.','2',0,0),(13,3,'It is placed in an excellent locality and has good value for investment.','4',0,0),(14,3,'Not worth the money. Bad for investment.','1',0,0),(15,3,'It is a lovely property, go for it. Peaceful environment.','5',0,0),(16,4,'A good Property, Has a good value in future since the surroundings are developing and a safe environment with decent population.','3',1,0),(17,4,'Good environment, good place to invest as new amenities are in developing ','3',0,0),(18,5,'The property is under some conflict and has a case pending.','2',1,1),(19,5,'It is under conflict. Nothing more to say.','1',0,1),(20,5,'Its under conflict.','1',0,1),(21,6,'A good deal.Good Environment. Good location. Developing surroundings. A good investment plan.','3',1,0),(22,6,'A good value for money. A good deal.','4',0,0),(23,6,'A very god deal!','4',0,0),(24,7,'An excellent property. With nice surroundings. Many high profile projects are coming up in the same locality. A good chance of a good percentage of appreciation.','5',1,0),(25,7,'A well located property with all amenities close by.','5',0,0),(26,8,'A good property, waiting for the owner to produce all the documents. The review will be edited as soon as the documents are submitted.','1',1,0),(27,9,'A good value for money.  recommend this site as the dealers are recognized dealers.','5',0,0),(28,9,'A safe environment and good surroundings. This area has many new projects coming up, thus making it the investor\'s bounty.','4',0,0),(29,9,'A good investment!','4',0,0),(30,10,'This land has balanced soil and is architecturally neutral.It has good surroundings and is located in an developing environment. Its good value for money. As the appreciation rate is quite good. Its a good investment','3',1,0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-26 10:02:58
