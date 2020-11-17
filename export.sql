--
-- Current Database: `TappsDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `TappsDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `TappsDB`;

--
-- Table structure for table `ScanResults`
--

DROP TABLE IF EXISTS `ScanResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScanResults` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DeviceName` tinytext NOT NULL,
  `Mac` varchar(150) NOT NULL,
  `OUI` varchar(150) NOT NULL,
  `Power` int(11) NOT NULL,
  `Distance` decimal(5,2) NOT NULL,
  `FirstTimeSeen` datetime DEFAULT NULL,
  `LastTimeSeen` datetime DEFAULT NULL,
  `ScanGroup` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `U_Scan` (`Mac`,`Power`,`LastTimeSeen`),
  KEY `ScanGroup` (`ScanGroup`),
  CONSTRAINT `ScanResults_ibfk_1` FOREIGN KEY (`ScanGroup`) REFERENCES `StoredScans` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScanResults`
--

LOCK TABLES `ScanResults` WRITE;
/*!40000 ALTER TABLE `ScanResults` DISABLE KEYS */;
INSERT INTO `ScanResults` VALUES (1,'ALPHA','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-30,1.02,'2020-11-14 03:33:59','2020-11-14 03:33:59',1),(2,'ALPHA','B8:27:EB:7E:3A:D3','Raspberry Pi Foundation',-38,2.57,'2020-11-14 03:33:59','2020-11-14 03:34:11',1),(3,'ALPHA','68:EC:C5:2A:A6:7A','Intel Corporate',-44,5.13,'2020-11-14 03:34:12','2020-11-14 03:34:18',1),(4,'ALPHA','D8:31:34:4E:36:0F','Roku, Inc',-28,0.81,'2020-11-14 03:33:51','2020-11-14 03:34:29',1),(5,'ALPHA','2A:7D:90:92:13:F4','Unknown',-72,128.89,'2020-11-14 03:34:06','2020-11-14 03:34:06',1),(6,'CHARLIE','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-20,0.32,'2020-11-14 03:33:59','2020-11-14 03:33:59',1),(7,'CHARLIE','B8:27:EB:7E:3A:D3','Raspberry Pi Foundation',-44,5.13,'2020-11-14 03:33:59','2020-11-14 03:34:11',1),(8,'CHARLIE','68:EC:C5:2A:A6:7A','Intel Corporate',-50,10.24,'2020-11-14 03:33:55','2020-11-14 03:34:25',1),(9,'CHARLIE','D8:31:34:4E:36:0F','Roku, Inc',-36,2.04,'2020-11-14 03:33:51','2020-11-14 03:34:21',1),(10,'BRAVO','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-24,0.51,'2020-11-14 02:26:36','2020-11-14 02:26:36',1),(11,'BRAVO','68:EC:C5:2A:A6:7A','Intel Corporate',-58,25.72,'2020-11-14 02:26:32','2020-11-14 02:27:02',1),(12,'BRAVO','D8:31:34:4E:36:0F','Roku, Inc',-38,2.57,'2020-11-14 02:26:28','2020-11-14 02:27:05',1),(13,'CHARLIE','68:EC:C5:2A:A6:7A','Intel Corporate',-50,10.24,'2020-11-14 03:36:19','2020-11-14 03:36:24',2),(14,'CHARLIE','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-18,0.26,'2020-11-14 03:36:24','2020-11-14 03:36:24',2),(15,'CHARLIE','D8:31:34:4E:36:0F','Roku, Inc',-34,1.62,'2020-11-14 03:36:24','2020-11-14 03:36:24',2),(16,'BRAVO','68:EC:C5:2A:A6:7A','Intel Corporate',-60,32.38,'2020-11-14 02:28:57','2020-11-14 02:28:57',2),(17,'BRAVO','D8:31:34:4E:36:0F','Roku, Inc',-44,5.13,'2020-11-14 02:28:59','2020-11-14 02:28:59',2),(18,'CHARLIE','C4:6E:1F:41:59:6D','TP-LINK TECHNOLOGIES CO.,LTD.',-78,257.18,'2020-11-14 03:36:29','2020-11-14 03:36:48',2),(20,'CHARLIE','68:EC:C5:2A:A6:7A','Intel Corporate',-60,32.38,'2020-11-14 03:36:19','2020-11-14 03:36:49',2),(21,'CHARLIE','D8:31:34:4E:36:0F','Roku, Inc',-28,0.81,'2020-11-14 03:36:24','2020-11-14 03:36:46',2),(23,'ALPHA','2A:7D:90:92:13:F4','Unknown',-72,128.89,'2020-11-14 03:36:36','2020-11-14 03:36:36',2),(24,'ALPHA','D8:31:34:4E:36:0F','Roku, Inc',-28,0.81,'2020-11-14 03:36:33','2020-11-14 03:36:44',2),(27,'CHARLIE','C4:6E:1F:41:59:6D','TP-LINK TECHNOLOGIES CO.,LTD.',-80,323.76,'2020-11-14 03:36:29','2020-11-14 03:36:59',2),(28,'ALPHA','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-30,1.02,'2020-11-14 03:36:59','2020-11-14 03:36:59',2),(29,'CHARLIE','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-18,0.26,'2020-11-14 03:36:24','2020-11-14 03:36:50',2),(30,'ALPHA','B8:27:EB:7E:3A:D3','Raspberry Pi Foundation',-6,0.06,'2020-11-14 03:36:59','2020-11-14 03:36:59',2),(31,'CHARLIE','B8:27:EB:7E:3A:D3','Raspberry Pi Foundation',-30,1.02,'2020-11-14 03:36:50','2020-11-14 03:36:50',2),(33,'ALPHA','D8:31:34:4E:36:0F','Roku, Inc',-30,1.02,'2020-11-14 03:36:33','2020-11-14 03:36:59',2),(34,'CHARLIE','68:EC:C5:2A:A6:7A','Intel Corporate',-52,12.89,'2020-11-14 03:36:19','2020-11-14 03:36:50',2),(36,'BRAVO','B8:27:EB:B6:96:76','Raspberry Pi Foundation',-24,0.51,'2020-11-14 02:29:41','2020-11-14 02:29:41',2),(37,'ALPHA','2A:7D:90:92:13:F4','Unknown',-72,128.89,'2020-11-14 03:36:36','2020-11-14 03:37:06',2),(38,'CHARLIE','D8:31:34:4E:36:0F','Roku, Inc',-30,1.02,'2020-11-14 03:36:24','2020-11-14 03:36:57',2),(39,'BRAVO','D8:31:34:4E:36:0F','Roku, Inc',-38,2.57,'2020-11-14 02:28:59','2020-11-14 02:29:30',2);
/*!40000 ALTER TABLE `ScanResults` ENABLE KEYS */;
UNLOCK TABLES;
