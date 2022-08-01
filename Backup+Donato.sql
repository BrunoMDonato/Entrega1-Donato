-- TABLAS Y DATOS GUARDADOS : CLIENTE / AUTO / CHEQUEO / TRABAJO / INSERT_AUTO  / PRODUCTO

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lubricentro
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES (1,'Volkswagen','Gol',25000,15),(2,'Ford','Focus',65000,12),(3,'Renault','Sandero',22000,10),(4,'Volkswagen','Gol',45000,8),(5,'Ford','Fiesta',65000,7),(6,'Renault','Megane',36000,2),(7,'Renault','Clio',98000,1),(8,'Volkswagen','Polo',10000,6),(9,'Renault','Sandero',24500,9),(10,'Ford','Ka',23000,3),(11,'Chevrolet','Onix',55000,4),(12,'Volkswagen','Passat',59000,5),(13,'Ford','Mondeo',70000,11),(14,'Chevrolet','Onix',68000,13),(15,'Ford','Fiesta',88000,14),(16,'Peugeot','106',15000,11);
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `chequeo`
--

LOCK TABLES `chequeo` WRITE;
/*!40000 ALTER TABLE `chequeo` DISABLE KEYS */;
INSERT INTO `chequeo` VALUES (1,0,10),(2,0,9),(3,0,1),(4,1,12),(5,1,13),(6,1,15),(7,0,3),(8,1,8),(9,1,7),(10,0,6),(11,1,14),(12,0,2),(13,1,4),(14,0,5),(15,1,11);
/*!40000 ALTER TABLE `chequeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan Perez',1125415896,25148963),(2,'Luis Mando',1121452896,37947965),(3,'Pedro Miro',1187456952,14258520),(4,'Pepe Anchi',1158745963,25412014),(5,'Franco Diot',1158632145,35210014),(6,'Mario Barro',1165485214,25874102),(7,'Miguel Ito',1142588547,24125552),(8,'Debora Fruiz',1147852145,30123210),(9,'Cristian Alorda',1152159875,32587410),(10,'Diego Lopez',1143698521,36251447),(11,'Carlos Maro',1140232022,30120007),(12,'Patricia Luiz',1144520369,11456220),(13,'Natali Hide',1145200036,25020274),(14,'Vanina Poli',1147785520,25141474),(15,'Guido Turin',1145693000,21000369),(16,'Julio Berne',1158472221,25941806);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insert_auto`
--

LOCK TABLES `insert_auto` WRITE;
/*!40000 ALTER TABLE `insert_auto` DISABLE KEYS */;
INSERT INTO `insert_auto` VALUES (16,'Peugeot','106',15000,11);
/*!40000 ALTER TABLE `insert_auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,5,'Elaion',13),(2,3,'Castrol',11),(3,5,'Motul',12),(4,4,'Elaion',1),(5,5,'Motul',3),(6,5,'Motul',4),(7,5,'Castrol',6),(8,3,'Elaion',9),(9,5,'Castrol',7),(10,4,'Elaion',15),(11,3,'Castrol',8),(12,6,'Elaion',2),(13,6,'Castrol',14),(14,5,'Elaion',5),(15,3,'Motul',10);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trabajo`
--

LOCK TABLES `trabajo` WRITE;
/*!40000 ALTER TABLE `trabajo` DISABLE KEYS */;
INSERT INTO `trabajo` VALUES (1,8521,14),(2,6544,4),(3,5654,1),(4,2344,3),(5,2343,2),(6,5858,15),(7,5454,12),(8,4575,11),(9,1455,10),(10,7854,6),(11,4455,7),(12,1121,8),(13,1023,5),(14,7450,9),(15,9630,13);
/*!40000 ALTER TABLE `trabajo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 16:08:55
