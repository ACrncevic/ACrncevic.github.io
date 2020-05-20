-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: projekt
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `upis_clanova`
--

DROP TABLE IF EXISTS `upis_clanova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upis_clanova` (
  `Osobna` varchar(45) DEFAULT NULL,
  `ImePrezime` varchar(45) DEFAULT NULL,
  `Lokacija` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Članarina` varchar(45) DEFAULT NULL,
  `OsobniTrener` varchar(45) DEFAULT NULL,
  `Zumba` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upis_clanova`
--

LOCK TABLES `upis_clanova` WRITE;
/*!40000 ALTER TABLE `upis_clanova` DISABLE KEYS */;
INSERT INTO `upis_clanova` VALUES (NULL,' ffffffff',NULL,NULL,NULL,NULL,NULL),(NULL,' ffffffff','Zagreb',NULL,NULL,NULL,NULL),(NULL,' ffffffff','Zagreb',NULL,NULL,NULL,NULL),(' 1234565 ',' Andjela','Odaberite lokaciju','andjelacrncevic@gmail.com',NULL,NULL,NULL),(' 1234565 ',' Andjela','Zagreb','andjelacrncevic@gmail.com',NULL,NULL,NULL),(' 1234565 ',' Andjela c','Metković','andjelacrncevic@gmail.com',NULL,NULL,NULL),(' 1234565 ',' Andjela','Zagreb','andjelacrncevic@gmail.com','Mjesečna- student članarina','Da','Zumba- studenti članarina'),(' 1234565 ',' ffffffff','Zagreb','andjela@gmail.com','Godišnja- regular članarina','Ne','-'),(' 1234565 ',' Andjela','Odaberite lokaciju','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Da','Zumba- studenti članarina'),(' 1234565 ',' ffffffff','','antonijacrncevic@gmail.com','Godišnja- regular članarina','Da','-'),(' 1234435 ',' Andjela c','','andjelacrncevic@gmail.com','','Ne','-'),(' 1234565 ',' Ivan Ivic','Metković','aaaante@gmail.com','Mjesečna- student članarina','Da','-'),(' 1234565 ',' Domink Dodoje','Metković','cuko@vava.com','-','Ne','Zumba- studenti članarina'),(' 1234565 ',' ffffffff','Odabreri lokaciju','andjelacrncevic@gmail.com','Godišnja- regular članarina','Ne',''),(' 1234565 ',' Ivan Ivic','Odaberi lokaciju','antonijacrncevic@gmail.com','Mjesečna- regular članarina','Da','Zumba- regular članarina'),(' 1234565 ',' ffffffff','','andjelacrncevic@gmail.com','','Ne','-'),(' aaaaa ',' ffffffff','Zagreb','aaaante@gmail.com','Mjesečna- regular članarina','Ne','-'),(' 1234565 ',' ffffffff','Odaberi lokaciju','andjela@gmail.com','-','Ne','-'),(' 1234565 ',' ffffffff','Odaberi lokaciju','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' ffffffff','Odaberi lokaciju','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- nezaposleni članarina','Ne','-'),(' 1234565 ',' vggg','Odaberi lokaciju','andjelacrncevic@gmail.com','-','Ne','-'),(' aaaa ',' ffffffff','Split','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' Andjela','Zagreb','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Da','-'),(' 1234565 ',' Andjela','Zagreb','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Ne','-'),(' 1234565 ',' ffffffff','Split','andjelacrncevic@gmail.com','-','Ne','-'),(' 15678 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' Andjela','Split','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Da','Zumba- regular članarina'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- student članarina','Da','Zumba- regular članarina'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Ne',''),(' 1234565 ',' Andjela','Zagreb','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Ne','Zumba- studenti članarina'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Ne',''),(' 1234565 ',' Andjela c','Zagreb','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Ne',''),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- student članarina','Ne','Zumba- regular članarina'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Godišnja- regular članarina','Ne','Zumba- regular članarina'),(' 1234565 ',' dfghj','Zagreb','andjelacrncevic@gmail.com','-','Ne','-'),(' 213456 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- student članarina','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- student članarina','Ne','-'),(' 1234565 ',' ffffffff','Split','andjelacrncevic@gmail.com','Mjesečna- student članarina','Da','-'),(' 1234565 ',' ffffffff','Split','andjelacrncevic@gmail.com','Mjesečna- student članarina','Da','-'),(' 1234565 ',' ffffffff','Split','andjelacrncevic@gmail.com','-','Ne','-'),('123','dsff',NULL,NULL,NULL,NULL,NULL),('123','dsff',NULL,NULL,NULL,NULL,NULL),('123','dsff',NULL,NULL,NULL,NULL,NULL),('123','dsff',NULL,NULL,NULL,NULL,NULL),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','-','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Ne','-'),(' 1234565 ',' ffffffff','Zagreb','andjelacrncevic@gmail.com','Mjesečna- regular članarina','Da','-'),(' 1234565 ',' ffffffff','Split','andjelacrncevic@gmail.com','Mjesečna- umirovljenici članarina','Ne','-');
/*!40000 ALTER TABLE `upis_clanova` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 11:33:17
