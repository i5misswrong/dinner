-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: dinner
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(45) DEFAULT NULL,
  `adminPwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'super','334455');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `businessId` int(11) NOT NULL AUTO_INCREMENT,
  `businessName` varchar(45) DEFAULT NULL,
  `businessPwd` varchar(45) DEFAULT NULL,
  `businessTel` varchar(45) DEFAULT NULL,
  `businessImg` varchar(45) DEFAULT NULL,
  `businessMark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`businessId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'123','123','123','img/two001.jpg','金真子的这两家分店都在京城北的回龙观。住在观里的人们忙碌了一天，想要吃上一顿丰盛美食的时候，他们会来到这里。几个好友相聚的时候，他们也会来到这里。招待客人的时候，也会来到这里。实惠、丰盛，是金真子纸上烤肉生意红火的秘籍，宾至如归的体验，是回龙观人民认同它的另个原因。'),(2,'Azeroth','334455','61723','img/two002.jpg','汉丽轩烤肉超市是一家提供韩式自助烤肉服务的连锁餐饮企业，公司颠覆传统韩式烧烤和自助餐的运营模式，提出了“烤肉超市”这一独特、极有创意的全新运营模式。一直遵循注重菜品质量，服务优质，价格实在的原则，经过不断努力已经在同行业及消费者心中建立了良好的口碑。餐厅环境温馨舒适，清新雅致，韩国文化气息浓郁。'),(3,'wrong','334455','619723','img/two003.jpg','金釜山烤肉是一家提供自助韩式烤肉服务的连锁餐饮企业，提出了“烤肉美食中心”这一独特、富有创意的全新运营模式。进入用餐区后，顾客可以根据自己的口味，随意选取200多种美味佳肴。在金釜山的菜品的几大区域：常规菜区、小吃西点区、凉菜区、水果区、酒水饮料区等'),(4,'平遥跌面队','334455','619581','img/two004.jpg','\"东来顺”始创于1903年，其传统“涮羊肉”以独特的风味、纯正的品质，素有“食之精粹、国之瑰宝”之美誉。提起北京的涮羊肉而且又是几百年历史的那就只有“东来顺”了。说起“东来顺”别说是外地人了，就是北京人也是津津乐道，资格老，味道好。无论是寻常百姓，还是达官贵人、文人墨客都经常出入，前来品尝东来顺涮羊肉的特色风味。'),(5,'大同饭馆','334455','619912','img/two005.jpg','为更好满足广大顾客的餐饮需求，优尔餐饮有限公司开设优尔自助烤肉。精选上等肉制品，有百余种蔬菜。海鲜，秘制烧烤，台湾铁板烧，中西餐点，酒水，饮料，冰淇淋免费供应。 优雅的环境，优质的服务，优惠的价格，可同时容纳800人就餐。 优尔自助烤肉欢迎您的光临。'),(6,'天外飞仙混沌','334455','919794','img/two006.jpg','对一些人来说，只是填饱肚子，在哪里都一样； 对一些人来说，只是一餐自助，不会有什么特别； 然而，对金釜山而言，它是韩式烤肉的美食中心。 它的烤肉鲜嫩味美，海鲜清口鲜滑，精致小巧的点心、水果、饮料……超大的餐厅，明亮的格调，丰足的食物，优惠的价格，不是一定要吃自助，只是因为是金釜山，所以一定要来一次。');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `businessId` int(11) DEFAULT NULL,
  `foodName` varchar(45) DEFAULT NULL,
  `foodPrice` varchar(45) DEFAULT NULL,
  `foodImg` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`foodId`),
  KEY `businessId_idx` (`businessId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,2,'红烧肉','30','img/imgFood/three001.jpg'),(2,2,'丸子','23','img/imgFood/three002.jpg'),(3,2,'丸子','23','img/imgFood/three003.jpg'),(9,3,'红烧肉','30','img/imgFood/three004.jpg'),(10,3,'猪蹄','35','img/imgFood/three005.jpg'),(11,3,'混沌','23','img/imgFood/three006.jpg'),(12,3,'土豆丝','10','img/imgFood/three008.jpg'),(13,3,'大蒜','9','img/imgFood/three007.jpg'),(14,2,'黄瓜','10','img/imgFood/three001.jpg'),(15,2,'丝瓜','20','img/imgFood/three004.jpg'),(16,2,'冬瓜','12','img/imgFood/three002.jpg'),(17,2,'大排','21','img/imgFood/three005.jpg'),(18,4,'大米','10','img/imgFood/three003.jpg'),(19,4,'小米','10','img/imgFood/three004.jpg'),(20,4,'小麦','21','img/imgFood/three005.jpg'),(21,5,'大同面','12','img/imgFood/three006.jpg'),(22,5,'大同小米','22','img/imgFood/three001.jpg'),(23,5,'大同红烧肉','12','img/imgFood/three005.jpg'),(24,6,'天价混沌','100','img/imgFood/three008.jpg'),(25,6,'低价混沌','50','img/imgFood/three007.jpg'),(26,6,'人价混沌','10','img/imgFood/three001.jpg'),(27,1,'123小吃','123','img/imgFood/three002.jpg'),(28,1,'123小面','23','img/imgFood/three004.jpg'),(29,1,'123火腿','11','img/imgFood/three003.jpg');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oorder`
--

DROP TABLE IF EXISTS `oorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oorder` (
  `oorderId` int(11) NOT NULL AUTO_INCREMENT,
  `businessId` varchar(45) DEFAULT NULL,
  `businessName` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `foodId` varchar(45) DEFAULT NULL,
  `foodName` varchar(45) DEFAULT NULL,
  `orderAdd` varchar(45) DEFAULT NULL,
  `oorderMark` varchar(45) DEFAULT NULL,
  `oorderState` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oorderId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oorder`
--

LOCK TABLES `oorder` WRITE;
/*!40000 ALTER TABLE `oorder` DISABLE KEYS */;
INSERT INTO `oorder` VALUES (21,'5','大同饭馆','1','21','大同面',NULL,NULL,NULL),(22,'5','大同饭馆','1','21','大同面',NULL,NULL,NULL),(23,'5','大同饭馆','1','21','大同面',NULL,NULL,NULL),(24,'5','大同饭馆','1','23','大同红烧肉',NULL,NULL,NULL),(25,'5','大同饭馆','1','22','大同小米',NULL,NULL,NULL),(26,'5','大同饭馆','1','22','大同小米',NULL,NULL,NULL),(27,'5','大同饭馆','1','21','大同面',NULL,NULL,NULL),(28,'5','大同饭馆','1','21','大同面',NULL,NULL,NULL),(29,'1','123','1','28','123小面',NULL,NULL,NULL),(30,'2','Azeroth','1','1','红烧肉',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `userPwd` varchar(45) DEFAULT NULL,
  `userTel` varchar(45) DEFAULT NULL,
  `userAdd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wrong','334455',NULL,NULL),(2,'ice',NULL,NULL,NULL),(3,'冰霜灼烧','334455',NULL,NULL),(4,'Azeroth','334455',NULL,NULL),(7,'111',NULL,NULL,NULL),(8,'????','334455','61723',NULL),(9,'????','334455','123',NULL),(10,'艾泽拉斯','334455','11111',NULL),(11,'冰霜灼烧','334455','321',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-08 17:17:46
