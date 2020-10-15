-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: te18
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int unsigned DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,2,3,'Jag är inte ful'),(2,2,4,'Jag är ful'),(3,4,4,'Jag är sur för att jag är ful'),(4,4,5,'Det är vad det är'),(5,5,17,'Det här är tråkigt, och vem behöver en tutorial ändå (gå ut på ett äventyr)'),(6,5,6,'sov'),(7,6,7,'Det där ser läskigt ut'),(8,6,8,'Hoppa i och paddla med fötterna som de andra i hopp om att det fungerar'),(9,7,9,'Hoppa i vattnet'),(10,9,10,'gå vidare'),(11,8,10,'gå vidare'),(12,7,11,'Gör något annat'),(13,7,12,'Stanna kvar'),(14,10,14,'gå vidare'),(15,14,15,'Bit henne'),(16,14,16,'taskigt'),(17,11,17,'gå vidare'),(18,15,1,'börja om'),(19,16,1,'börja om'),(20,17,1,'otur, börja om');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Den fula ankungen'),(2,'Du föds på en fin sommardag'),(3,'Slut'),(4,'Du är ful'),(5,'Det börjar bli sent på kvällen så mamma och de andra ankungarna ska sova'),(6,'Solen skiner lika fint som igår, du följer de andra ner till kanalen för att simma'),(7,'Mamma blir besviken'),(8,'Det fungerade perfekt!'),(9,'Du glömmer nästan bort att paddla med fötterna men det går bra'),(10,'Ni simmar till de andra ankorna'),(11,'Du vandrar runt mållöst tills det blir mörkt'),(12,'De simmar bort och mamma tittar tillbaka med jämna mellanrum tills de försvinner runt hörnet'),(13,'Du vandrar runt tills det blir mörkt'),(14,'Den gamla säger att alla ankungarna är fina förutom en. Hon pekar med vingen och säger att du är ful.'),(15,'Hon dör och du blir kungen av ankorna'),(16,'mamma tycker att du är fin'),(17,'otur, en krokodil äter upp dig');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15  9:37:52
