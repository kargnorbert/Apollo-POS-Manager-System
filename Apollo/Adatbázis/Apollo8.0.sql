CREATE DATABASE  IF NOT EXISTS `apollo` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `apollo`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: apollo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `felhasznalok`
--

DROP TABLE IF EXISTS `felhasznalok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `felhasznalok` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nev` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Jog` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Felhasznalonev` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Jelszo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Telefonszam` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Nev_UNIQUE` (`Nev`),
  UNIQUE KEY `Felhasznalonev_UNIQUE` (`Felhasznalonev`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `felhasznalok`
--

LOCK TABLES `felhasznalok` WRITE;
/*!40000 ALTER TABLE `felhasznalok` DISABLE KEYS */;
INSERT INTO `felhasznalok` VALUES (1,'Teszt-A','Admin','Admin','Admin','Teszt-A','Teszt-A'),(2,'Teszt-D','Dolgozo','Dolgozo','Dolgozo','Tesz-D','Teszt-D');
/*!40000 ALTER TABLE `felhasznalok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `szamlak`
--

DROP TABLE IF EXISTS `szamlak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `szamlak` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Elado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Cikkszam` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Termek` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Osszeg` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Fizetett` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Visszajaro` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Vasarlo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nyugtaszam` int NOT NULL,
  `Ar` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nyugtaszam_UNIQUE` (`Nyugtaszam`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szamlak`
--

LOCK TABLES `szamlak` WRITE;
/*!40000 ALTER TABLE `szamlak` DISABLE KEYS */;
INSERT INTO `szamlak` VALUES (48,'Teszt-A','[393022]','[Teszt-A]','30000.0','40000','10000.0','602849',815573,'[30000]'),(49,'Teszt-A','[393022, 140964, 892702]','[Teszt-A, Teszt-B, Teszt-C]','85000.0','90000','5000.0','602849',684107,'[30000, 50000, 5000]'),(50,'Teszt-A','[393022, 140964]','[Teszt-A, Teszt-B]','80000.0','90000','10000.0','',37392,'[30000, 50000]'),(51,'Teszt-A','[140964, 393022]','[Teszt-B, Teszt-A]','80000.0','90000','10000.0','',947277,'[50000, 30000]');
/*!40000 ALTER TABLE `szamlak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termekek`
--

DROP TABLE IF EXISTS `termekek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termekek` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nev` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Kategoria` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Keszleten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ar` int NOT NULL,
  `Cikkszam` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `id_UNIQUE` (`ID`),
  UNIQUE KEY `Cikkszam_UNIQUE` (`Cikkszam`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termekek`
--

LOCK TABLES `termekek` WRITE;
/*!40000 ALTER TABLE `termekek` DISABLE KEYS */;
INSERT INTO `termekek` VALUES (12,'Teszt-A','TV & Audió','Teszt-A','46',30000,'393022'),(13,'Teszt-B','Kisgép','Teszt-B','47',50000,'140964'),(14,'Teszt-C','Nagygép','Teszt-C','169',5000,'892702'),(15,'Teszt-D','Kellék','Teszt-D','30',11000,'488406'),(16,'Teszt-E','Mobil/Telefon','Teszt-E','80',230000,'949060');
/*!40000 ALTER TABLE `termekek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vasarlok`
--

DROP TABLE IF EXISTS `vasarlok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vasarlok` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nev` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Vallalkozasneve` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Vasarloid` int NOT NULL,
  `Cim` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Orszag` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Varos` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Iranyitoszam` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `Telefonszam` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ugyintezo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Vasarloid_UNIQUE` (`Vasarloid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vasarlok`
--

LOCK TABLES `vasarlok` WRITE;
/*!40000 ALTER TABLE `vasarlok` DISABLE KEYS */;
INSERT INTO `vasarlok` VALUES (9,'Teszt-A','Teszt-A',316098,'Teszt-A','Teszt-A','Teszt-A','Teszt-A','Teszt-A','Teszt-A','Teszt-A'),(10,'Teszt-B','Teszt-B',602849,'Teszt-B','Teszt-B','Teszt-B','Teszt-B','Teszt-B','Teszt-B','Teszt-A');
/*!40000 ALTER TABLE `vasarlok` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  1:30:20
