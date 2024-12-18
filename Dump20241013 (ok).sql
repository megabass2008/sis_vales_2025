CREATE DATABASE  IF NOT EXISTS `sis_vales` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sis_vales`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 192.168.100.190    Database: sis_vales
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `beneficiario`
--

DROP TABLE IF EXISTS `beneficiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiario` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) NOT NULL,
  `apellido_nombre` varchar(100) NOT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `prefijo_id` int unsigned NOT NULL,
  `municipio_id` int unsigned NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prefijo_id` (`prefijo_id`),
  KEY `municipio_id` (`municipio_id`),
  CONSTRAINT `beneficiario_ibfk_1` FOREIGN KEY (`prefijo_id`) REFERENCES `prefijo` (`id`),
  CONSTRAINT `beneficiario_ibfk_2` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiario`
--

LOCK TABLES `beneficiario` WRITE;
/*!40000 ALTER TABLE `beneficiario` DISABLE KEYS */;
INSERT INTO `beneficiario` VALUES (2,'44444','Acevedo Horacio S.','','',NULL,6,5,'S'),(174,'011','Izq. Latinoamericana','','',NULL,4,1,'S'),(175,'010','Ladrilleros Independientes - Lopez Raul','','',NULL,4,1,'S'),(176,'001','Ladrilleros Maria del Rio Parana - Aguirre Sandra','','',NULL,4,1,'S'),(177,'002','Ladrilleros Ctes - Avaloso Julio','','',NULL,4,1,'S'),(178,'003','Uoral - Mierez Sonia','','',NULL,4,1,'S'),(179,'004','Centro de Ladrilleros - Pedro Lugo','','',NULL,4,1,'S'),(180,'005','Ladrilleros Punta Taitalo - Paez Silvina','','',NULL,4,1,'S'),(181,'006','PequeÃ±os Ladrilleros - Ledesna Nicanor','','',NULL,4,1,'S'),(182,'007','Ladrilleros Punta Taitalo - Toledo Gladis','','',NULL,4,1,'S'),(183,'008','MTL - Paniagua Ezequiel','','',NULL,4,1,'S'),(184,'009','Ladrilleros Santa Marta - Romero Antonia','','',NULL,4,1,'S'),(185,'012','Ayuda al Desocupado - Medina Luis','','',NULL,4,1,'S'),(186,'013','Ladrilleros Barrio Caridi - Martinez Hector','','',NULL,4,1,'S'),(187,'014','Musicos del 79 - Martinez Manuel','','',NULL,4,1,'S'),(188,'015','Musicos del 79 - Aranda Ema','','',NULL,4,1,'S'),(189,'016','Construimos Futuro - Dra Lopez','','',NULL,4,1,'S'),(190,'017','PuÃ±o y Sudor - Gonzalez Zulema','','',NULL,4,1,'S'),(191,'018','Ladrilleros El Tanito - Maidana Carmelo','','',NULL,4,1,'S'),(192,'019','Ladrilleros Coca Cola - Naza','','',NULL,4,1,'S'),(193,'020','26 de Julio - De la Cruz Emmanuel','','',NULL,4,1,'S'),(194,'021','Mujeres Correntinas Sin Techo - Gomez Antonia','','',NULL,4,1,'S'),(195,'022','Mov Barrial en Lucha - Sanchez Adrian','','',NULL,4,1,'S'),(196,'023','19 de Diciembre - Franco Yanina','','',NULL,4,1,'S'),(197,'025','Mijd - Cardozo Roxana','','',NULL,4,1,'S'),(198,'024','Fulsi - Lezcano Jorge','','',NULL,4,1,'S'),(199,'026','Sindicato de Canillitas - Ortiz Luis','','',NULL,4,1,'S'),(200,'01','Privada','Capital','',NULL,8,1,'0'),(201,'02','Economia Social','Capital','',NULL,8,1,'S'),(202,'03','Planificacion','Capital','',NULL,8,1,'S'),(203,'04','Adultos Mayores','Capital','',NULL,8,1,'S'),(204,'05','Fortalecimiento Institucional','Capital','',NULL,8,1,'S'),(205,'06','COPRODIS','Capital','',NULL,8,1,'S'),(206,'07','Seguridad Alimentaria','Capital','',NULL,8,1,'S'),(207,'08','AICOP','Capital','',NULL,8,1,'S'),(208,'09','Dir NiÃ±ez y Flia','Capital','',NULL,8,1,'S'),(209,'10','Diversidad','Capital','',NULL,8,1,'S'),(210,'11','Consejo de la Mujer','Capital','',NULL,8,1,'S'),(211,'12','Paloma de la Paz','Capital','',NULL,8,1,'S'),(212,'13','Administracion','Capital','',NULL,8,1,'S'),(213,'14','Becas','Capital','',NULL,8,1,'S'),(214,'16','Celiacos','Capital','',NULL,8,1,'S'),(215,'17','Compas','Capital','',NULL,8,1,'S'),(216,'18','Cocina','Capital','',NULL,8,1,'S'),(217,'19','Comercializacion','Capital','',NULL,8,1,'S'),(218,'20','Informatica','Capital','',NULL,8,1,'S'),(219,'21','Informes','Capital','',NULL,8,1,'S'),(220,'22','Mesa de Entradas','Capital','',NULL,8,1,'S'),(221,'23','Deposito Murcia','Capital','',NULL,8,1,'S'),(222,'24','Deposito Ruta 12','Capital','',NULL,8,1,'S'),(223,'25','Juventud2','Capital','',NULL,8,1,'S'),(224,'26','Organizacion Comunitaria','Capital','',NULL,8,1,'S'),(225,'27','Prensa','Capital','',NULL,8,1,'S'),(226,'28','Subsecretaria de Desarrollo Humano','Capital','',NULL,8,1,'S'),(227,'29','Secretaria de Desarrollo Humano','Capital','',NULL,8,1,'S'),(228,'45645','fddfg','','',NULL,1,1,'S'),(229,'665555','kacerovsky david','','',NULL,1,1,'s'),(230,'55555555','prueba prueba','test','',NULL,1,1,'s'),(231,'111111','ediatdo','eeee','',NULL,1,1,'s'),(232,'334343434','fghfghfghfghfgh','gvhfghfghfgh','',NULL,1,1,'s'),(233,'334343434','probando','prueba','',NULL,3,1,'N'),(234,'68696456','Fernandez Tito','','3794596847',NULL,1,1,'S');
/*!40000 ALTER TABLE `beneficiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimento','S'),(2,'Ferreteria','S'),(3,'Indumentaria','S'),(4,'Electrodomesticos','S'),(5,'Mueblería','S'),(6,'Higiene','S'),(7,'Ministro','S');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencie`
--

DROP TABLE IF EXISTS `currencie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencie` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencie`
--

LOCK TABLES `currencie` WRITE;
/*!40000 ALTER TABLE `currencie` DISABLE KEYS */;
INSERT INTO `currencie` VALUES (1,'US Dollar','$','2',',','.','USD'),(2,'Libra Esterlina','&pound;','2',',','.','GBP'),(3,'Euro','â‚¬','2','.',',','EUR'),(4,'South African Rand','R','2','.',',','ZAR'),(5,'Danish Krone','kr ','2','.',',','DKK'),(6,'Israeli Shekel','NIS ','2',',','.','ILS'),(7,'Swedish Krona','kr ','2','.',',','SEK'),(8,'Kenyan Shilling','KSh ','2',',','.','KES'),(9,'Canadian Dollar','C$','2',',','.','CAD'),(10,'Philippine Peso','P ','2',',','.','PHP'),(11,'Indian Rupee','Rs. ','2',',','.','INR'),(12,'Australian Dollar','$','2',',','.','AUD'),(13,'Singapore Dollar','SGD ','2',',','.','SGD'),(14,'Norske Kroner','kr ','2','.',',','NOK'),(15,'New Zealand Dollar','$','2',',','.','NZD'),(16,'Vietnamese Dong','VND ','0','.',',','VND'),(17,'Swiss Franc','CHF ','2','\'','.','CHF'),(18,'Quetzal Guatemalteco','Q','2',',','.','GTQ'),(19,'Malaysian Ringgit','RM','2',',','.','MYR'),(20,'Real Brasile&ntilde;o','R$','2','.',',','BRL'),(21,'Thai Baht','THB ','2',',','.','THB'),(22,'Nigerian Naira','NGN ','2',',','.','NGN'),(23,'Peso Argentino','$','2','.',',','ARS'),(24,'Bangladeshi Taka','Tk','2',',','.','BDT'),(25,'United Arab Emirates Dirham','DH ','2',',','.','AED'),(26,'Hong Kong Dollar','$','2',',','.','HKD'),(27,'Indonesian Rupiah','Rp','2',',','.','IDR'),(28,'Peso Mexicano','$','2',',','.','MXN'),(29,'Egyptian Pound','&pound;','2',',','.','EGP'),(30,'Peso Colombiano','$','2','.',',','COP'),(31,'West African Franc','CFA ','2',',','.','XOF'),(32,'Chinese Renminbi','RMB ','2',',','.','CNY');
/*!40000 ALTER TABLE `currencie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposito` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `responsable` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
INSERT INTO `deposito` VALUES (1,'Ruta 12','','',''),(2,'Murcia','','',''),(3,'Oficina','','','');
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_remito`
--

DROP TABLE IF EXISTS `detalle_remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_remito` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `remito_id` int unsigned NOT NULL,
  `recurso_id` int unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `vencimiento` date NOT NULL,
  `lote` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `remito_id` (`remito_id`),
  KEY `recurso_id` (`recurso_id`),
  CONSTRAINT `detalle_remito_ibfk_1` FOREIGN KEY (`remito_id`) REFERENCES `remito` (`id`),
  CONSTRAINT `detalle_remito_ibfk_2` FOREIGN KEY (`recurso_id`) REFERENCES `recurso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_remito`
--

LOCK TABLES `detalle_remito` WRITE;
/*!40000 ALTER TABLE `detalle_remito` DISABLE KEYS */;
INSERT INTO `detalle_remito` VALUES (1,1,7,5473,'0000-00-00',''),(2,1,8,103,'0000-00-00',''),(3,1,20,15,'0000-00-00',''),(4,1,19,27,'0000-00-00',''),(5,1,23,57,'0000-00-00',''),(6,1,17,35,'0000-00-00',''),(7,1,18,54,'0000-00-00',''),(8,1,21,1044,'0000-00-00',''),(9,1,22,740,'0000-00-00',''),(10,1,4,918,'0000-00-00',''),(11,1,5,31,'0000-00-00',''),(12,2,9,274,'0000-00-00',''),(13,2,8,103,'0000-00-00',''),(14,2,12,225,'0000-00-00',''),(15,2,11,175,'0000-00-00',''),(16,2,13,45,'0000-00-00',''),(17,3,10,59,'0000-00-00',''),(18,4,13,10,'0000-00-00',''),(19,5,13,10,'0000-00-00',''),(20,11,60,16,'0000-00-00',''),(21,11,61,46,'0000-00-00',''),(22,11,65,295,'0000-00-00',''),(23,11,64,380,'0000-00-00',''),(24,12,27,10,'0000-00-00',''),(25,13,13,10,'0000-00-00',''),(26,14,13,15,'0000-00-00',''),(27,15,13,15,'0000-00-00',''),(28,16,13,25,'0000-00-00',''),(29,17,15,10,'0000-00-00',''),(30,17,13,15,'0000-00-00',''),(31,18,24,10,'2026-04-20',''),(32,21,27,1,'2024-08-07','1'),(33,21,26,2,'2024-08-07','2'),(34,21,34,3,'2024-08-07','3'),(35,22,27,1,'2024-08-08','2'),(36,22,26,1,'2024-08-08','3'),(37,23,27,1,'2024-08-08','2'),(38,23,26,1,'2024-08-08','3'),(39,24,27,1,'2024-08-08','2'),(40,25,27,1,'2024-08-19','34343'),(41,26,27,1,'2024-08-19','655656');
/*!40000 ALTER TABLE `detalle_remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_vale`
--

DROP TABLE IF EXISTS `detalle_vale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_vale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `vale_id` int unsigned NOT NULL,
  `recurso_id` int unsigned NOT NULL,
  `cantidad` int unsigned NOT NULL,
  `letras` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recurso_id` (`recurso_id`),
  KEY `vale` (`vale_id`),
  CONSTRAINT `detalle_vale_ibfk_1` FOREIGN KEY (`recurso_id`) REFERENCES `recurso` (`id`),
  CONSTRAINT `detalle_vale_ibfk_2` FOREIGN KEY (`vale_id`) REFERENCES `vale` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_vale`
--

LOCK TABLES `detalle_vale` WRITE;
/*!40000 ALTER TABLE `detalle_vale` DISABLE KEYS */;
INSERT INTO `detalle_vale` VALUES (1,1,27,2,'DOS'),(2,1,26,2,'DOS'),(3,2,26,2,'DOS'),(4,2,25,4,'CUATRO'),(5,3,27,1,'UNO'),(6,3,26,2,'DOS'),(7,4,27,1,'UNO'),(8,5,27,2,'DOS'),(9,6,27,2,'DOS'),(10,7,27,1,'UNO'),(11,7,65,2,'DOS'),(12,8,27,1,'UNO'),(13,8,24,2,'DOS'),(14,9,27,1,'UNO'),(15,9,65,2,'DOS'),(16,10,27,12,'KI'),(17,11,27,10,'DIEZ'),(18,11,26,20,'VEINTE'),(19,11,34,30,'TREINTA'),(20,12,27,5,'CINCO'),(21,31,27,1,''),(22,32,14,10,'DIEZ'),(23,33,27,10,'DIEZ');
/*!40000 ALTER TABLE `detalle_vale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Capital',''),(2,'Paso de los Libres',''),(3,'Yapeyu',''),(4,'Caa Cati',''),(5,'Concepcion del Yaguarete Cora',''),(6,'Saladas',''),(7,'Goya',''),(8,'Mercedes',''),(9,'Esquina',''),(10,'La Cruz',''),(11,'Alvear',''),(12,'Guaviravi',''),(13,'Tapebicua',''),(14,'Santo Tome',''),(15,'Gob Virasoro',''),(16,'Ituzaingo',''),(17,'Colonia Liebig',''),(18,'Estacion Torrent',''),(19,'Bompland',''),(20,'Felipe Yofre',''),(21,'Chavarria',''),(22,'9 de Julio',''),(23,'Empedrado',''),(24,'Riachuelo',''),(25,'San Roque',''),(26,'Paso de la Patria',''),(27,'Itati',''),(28,'San Luis del Palmar',''),(29,'Mantilla',''),(30,'Loreto',''),(31,'El Sombrero',''),(32,'Manuel Derqui',''),(33,'San Lorenzo',''),(34,'Colonia Pando',''),(35,'Santa Lucia',''),(36,'Cruz de los Milagros',''),(37,'Perugorria',''),(38,'Mariano I Loza',''),(39,'Curuzu Cuatia',''),(40,'Monte Caceros',''),(41,'Colonia Libertad',''),(42,'Sauce',''),(43,'San Isidro','');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Ministerio de Desarrollo Social','Murcia 53','Corrientes','3400','Corrientes','3794203041','minicterios@gmail.com',0,'$','img/1717613044_logoh1.jpg');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefijo`
--

DROP TABLE IF EXISTS `prefijo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prefijo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefijo`
--

LOCK TABLES `prefijo` WRITE;
/*!40000 ALTER TABLE `prefijo` DISABLE KEYS */;
INSERT INTO `prefijo` VALUES (1,'Sr'),(2,'Municipalidad'),(3,'Sra'),(4,'Movimiento'),(5,'Delegacion'),(6,'Intendente'),(7,'Director/a'),(8,'Area MDS'),(9,'Diputado/a'),(10,'Senador'),(11,'Ministro'),(12,'Gobernacion'),(13,'Club'),(14,'Instituciones'),(15,'Ministerio'),(16,'Concejal'),(17,'Localidad'),(18,'Senadora'),(19,'Secretaria'),(20,'STOCK'),(21,'Sra. Sotelo Griselda'),(22,'Vice Intendente'),(23,'Subsecretaria'),(24,'prueba'),(25,'prueba');
/*!40000 ALTER TABLE `prefijo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `cuit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'MDS','',''),(2,'Vallejos','',''),(3,'Juan','',''),(4,'Tilo','','');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurso`
--

DROP TABLE IF EXISTS `recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurso` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) NOT NULL,
  `categoria_id` int unsigned NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `recurso_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurso`
--

LOCK TABLES `recurso` WRITE;
/*!40000 ALTER TABLE `recurso` DISABLE KEYS */;
INSERT INTO `recurso` VALUES (1,'Leche x 800g',1,'N'),(2,'Trofeos',5,'S'),(3,'Medallas',5,'S'),(4,'Chapa NÂº27 (10p)',7,'S'),(5,'Chapa NÂº30',7,'S'),(6,'Chapa de CartÃ³n',2,'S'),(7,'Modulos Alimentarios',7,'S'),(8,'Modulos de Chocolate',7,'S'),(9,'Modulos de Chipa Cuero',7,'S'),(10,'Modulos de Hamburguesa',7,'S'),(11,'Modulos de Locro',7,'S'),(12,'Modulos de ChoripÃ¡n',7,'S'),(13,'Arroz con Pollo Completo',7,'S'),(14,'Arroz a Granel',1,'S'),(15,'Pollo Congelado',1,'S'),(16,'Arroz',1,'S'),(17,'ColchÃ³n de 1 Plaza',7,'S'),(18,'ColchÃ³n de 2 Plaza',7,'S'),(19,'Cama de 1 Plaza',7,'S'),(20,'Cama de 2 Plaza',7,'S'),(21,'Frazada de 1 Plaza',7,'S'),(22,'Frazada de 2 Plaza',7,'S'),(23,'Cucheta',7,'S'),(24,'Agua Mineral x 500ml',1,'S'),(25,'Agua Mineral x 5l',1,'S'),(26,'Aceite 900ml',1,'S'),(27,'Aceite 1.5 lts',1,'S'),(28,'Colchones de Cuna',5,'S'),(29,'Cuna',5,'S'),(30,'Kits Igualitarios',6,'S'),(31,'Kits de Limpieza',6,'S'),(32,'Sabana de 1 Plaza',5,'S'),(33,'Sabana de 2 Plazas',5,'S'),(34,'Agua Mineral 3 lts',1,'S'),(35,'Bicicleta de Adulto Masculino',5,'S'),(36,'Bicicleta de Adulto Femenino',5,'S'),(37,'Bicicleta de NiÃ±o Femenino',5,'S'),(38,'Bicicleta de NiÃ±o Masculino',5,'S'),(39,'Yerba de 1k',1,'N'),(40,'Yerba de 500g',1,'S'),(41,'Cafetera',4,'S'),(42,'Caloventor',4,'S'),(43,'Secador de Cabello',4,'S'),(44,'Horno ElÃ©ctrico ',4,'S'),(45,'Licuadora',4,'S'),(46,'Minipimer',4,'S'),(47,'Parlante Bluetooth',4,'S'),(48,'Pava ElÃ©ctrica',4,'S'),(49,'Plancha de Ropa',4,'S'),(50,'Planchita de Cabello',4,'S'),(51,'Sandwichera',4,'S'),(52,'Secarropa',4,'S'),(53,'Tablet 7 Pulgadas',4,'S'),(54,'Espumadera',5,'S'),(55,'Tostadora',4,'N'),(56,'Ventilador',4,'S'),(57,'Pepa 500g',1,'S'),(58,'Surtida 500g',1,'S'),(59,'Tirante',2,'S'),(60,'Bolsa Caramelo Masticable',1,'S'),(61,'Bolsa de Chupetines',1,'S'),(62,'Caja de Alfajor x 40U',1,'S'),(63,'Caja de Alfajor x 60u',1,'S'),(64,'Pepas x 500g',1,'S'),(65,'Galletitas Surtidas x400g',1,'S');
/*!40000 ALTER TABLE `recurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remito`
--

DROP TABLE IF EXISTS `remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remito` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `deposito_id` int unsigned NOT NULL,
  `proveedor_id` int unsigned NOT NULL,
  `cuit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deposito_id` (`deposito_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `remito_ibfk_1` FOREIGN KEY (`deposito_id`) REFERENCES `deposito` (`id`),
  CONSTRAINT `remito_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remito`
--

LOCK TABLES `remito` WRITE;
/*!40000 ALTER TABLE `remito` DISABLE KEYS */;
INSERT INTO `remito` VALUES (1,'2372024','2024-07-23',1,1,'0'),(2,'2372024','2024-07-23',3,1,''),(3,'2372024','2024-07-23',3,1,''),(4,'2372024','2024-07-23',1,1,''),(5,'2372024','2024-07-23',2,1,''),(11,'3072024','2024-07-30',2,1,''),(12,'565656','2024-07-30',1,1,'23234567899'),(13,'5464564564','2024-07-30',1,1,'565656565'),(14,'454345','2024-07-30',1,1,'454545345'),(15,'3455345','2024-07-30',1,1,'53535'),(16,'3455345','2024-07-30',1,1,'53535'),(17,'3455345','2024-07-30',1,1,'236549873'),(18,'565656','2024-07-31',1,1,'20589635487'),(20,'55555','2024-08-07',1,1,'564564564'),(21,'6666','2024-08-07',1,1,'45656565'),(22,'122312323','2024-08-08',3,1,'233434343'),(23,'122312323','2024-08-08',3,1,'233434343'),(24,'354435','2024-08-08',2,1,'324454554'),(25,'4545','2024-08-19',1,1,'456456456456'),(26,'56565','2024-08-19',2,1,'6767667'),(27,'234234234','2024-09-13',1,3,'23234567899'),(28,'234234234','2024-09-13',1,3,'23246761329'),(29,'234234234','2024-09-13',1,3,'23246761329'),(30,'234234234','2024-09-13',1,3,'23246761329'),(31,'234234234','2024-09-13',1,3,'23246761329'),(32,'234234234','2024-09-13',1,3,'23246761329'),(33,'234234234','2024-09-13',1,3,'23246761329'),(34,'53535','2024-09-13',2,1,'3555'),(35,'151515','2024-09-13',3,1,'151515'),(36,'151515','2024-09-13',3,1,'151515'),(37,'151515','2024-09-13',3,1,'151515'),(38,'151515','2024-09-13',3,1,'151515');
/*!40000 ALTER TABLE `remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `nivel` int NOT NULL,
  `firstname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `oficina` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `alta` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `baja` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modi` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha_seguimiento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,1,'Horacio','MDS','horacio','$2y$10$iVSoZIBQdIkXfWek8XAebe5vLc9mq2UeF1LXODfzfox4HmkFGAPFG','horacio@hotmail.com','2024-06-06 13:14:32','','S','S','S','2024-07-31 10:49:38'),(4,1,'Guada','Lorente','guada','$2y$10$H0jjv2.da4AsdyvYLYP0IeqJCp3IiDeauTz/816o42gmSQuekBCzO','guada@hotmail.com','2024-07-11 16:26:10','','','','','2024-07-11 20:13:25'),(5,1,'Giancarlos','Caroprese','giancarlos','$2y$10$CAcHAgfKHARmj/F.8ZQWU.olPX7ZquSOUjDalaY87gnrLQrg99EOS','gian@gmail.com','2024-07-23 11:29:42','','','','','2024-07-23 14:29:55'),(6,1,'Facundo Tomas','Carranza','facundo','$2y$10$f6cDs61IZk7N0rimi6HgSec8sXbZDg67BHIO2a6b4phbs0A.EZ7si','facundo@gmail.com','2024-07-30 09:16:38','','','','','2024-07-31 12:00:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vale`
--

DROP TABLE IF EXISTS `vale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `fecha` date NOT NULL,
  `prefijo_id` int unsigned NOT NULL,
  `beneficiario_id` int unsigned NOT NULL,
  `retira_prefijo_id` int unsigned DEFAULT NULL,
  `retira_id` int unsigned DEFAULT NULL,
  `expediente` varchar(50) DEFAULT NULL,
  `deposito_id` int unsigned NOT NULL,
  `vencimiento` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prefijo_id` (`prefijo_id`),
  KEY `beneficiario_id` (`beneficiario_id`),
  KEY `retira_prefijo_id` (`retira_prefijo_id`),
  KEY `retira_id` (`retira_id`),
  KEY `deposito_id` (`deposito_id`),
  CONSTRAINT `vale_ibfk1` FOREIGN KEY (`prefijo_id`) REFERENCES `prefijo` (`id`),
  CONSTRAINT `vale_ibfk2` FOREIGN KEY (`beneficiario_id`) REFERENCES `beneficiario` (`id`),
  CONSTRAINT `vale_ibfk3` FOREIGN KEY (`retira_prefijo_id`) REFERENCES `prefijo` (`id`),
  CONSTRAINT `vale_ibfk4` FOREIGN KEY (`retira_id`) REFERENCES `beneficiario` (`id`),
  CONSTRAINT `vale_ibfk5` FOREIGN KEY (`deposito_id`) REFERENCES `deposito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vale`
--

LOCK TABLES `vale` WRITE;
/*!40000 ALTER TABLE `vale` DISABLE KEYS */;
INSERT INTO `vale` VALUES (1,1,'2024-08-08',18,192,NULL,NULL,'953-000200-2024',1,'2024-08-08'),(2,2,'2024-08-08',18,185,19,192,'',3,'2024-08-08'),(3,3,'2024-08-09',18,190,NULL,NULL,'',2,'2024-08-09'),(4,4,'2024-08-12',18,191,NULL,NULL,'',2,'2024-08-12'),(5,5,'2024-08-12',20,191,NULL,NULL,'',2,'2024-08-12'),(6,6,'2024-08-12',3,176,NULL,NULL,'',2,'2024-08-12'),(7,7,'2024-08-19',1,230,4,174,'',1,'2024-08-19'),(8,8,'2024-08-19',1,230,4,174,'',1,'2024-08-19'),(9,9,'2024-08-19',1,228,4,174,'',1,'2024-08-19'),(10,10,'2024-08-20',1,229,4,174,'',1,'2024-08-20'),(11,11,'2024-08-20',1,229,4,174,'',1,'2024-08-27'),(12,12,'2024-08-22',1,228,NULL,NULL,'',1,'2024-08-22'),(13,13,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(14,14,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(15,15,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(16,16,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(17,17,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(18,18,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(19,19,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(20,19,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(21,21,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(22,22,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(23,23,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(24,24,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(25,25,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(26,26,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(27,27,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(28,28,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(29,29,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(30,30,'2024-08-22',1,228,1,228,'',1,'2024-08-22'),(31,31,'2024-08-22',1,228,NULL,NULL,'0',2,'2024-08-08'),(32,32,'2024-09-13',8,211,NULL,NULL,'',1,'2024-09-13'),(33,33,'2024-09-13',8,200,NULL,NULL,'',1,'2024-09-13');
/*!40000 ALTER TABLE `vale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-13 20:29:36
