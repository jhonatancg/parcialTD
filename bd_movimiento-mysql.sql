-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_movimiento
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento` (
  `idMovimiento` int NOT NULL AUTO_INCREMENT,
  `idArticulo` int NOT NULL,
  `tipoMovimiento` varchar(40) NOT NULL,
  `cantidad` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`idMovimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento`
--

LOCK TABLES `movimiento` WRITE;
/*!40000 ALTER TABLE `movimiento` DISABLE KEYS */;
INSERT INTO `movimiento` VALUES (1,1,'Entrada por compra',50,'\"inactivo\"'),(2,2,'Salida por venta',10,'activo'),(3,3,'Entrada por devolución',5,'activo'),(4,1,'Salida por consumo interno',8,'activo'),(5,4,'Entrada inicial de inventario',100,'activo'),(6,2,'Salida por merma',3,'inactivo'),(7,3,'Entrada por ajuste',7,'activo'),(8,5,'Salida por préstamo',2,'activo'),(9,1,'Entrada por transferencia',20,'activo'),(10,4,'Salida por venta',15,'activo');
/*!40000 ALTER TABLE `movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_movimiento'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-13 17:55:14
