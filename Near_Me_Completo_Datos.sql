-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (x86_64)
--
-- Host: localhost    Database: near_me
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '730cc5ba-efd2-11f0-9c29-b65eb573214a:1-145';

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'Gym Funes',2,1,'Fuerza Aerea 1900',1,'2026-03-22 23:06:48'),(2,'Kiosco 24hs',5,2,'Bv San Martin 500',1,'2026-03-22 23:06:48'),(3,'Taller Mecánico',3,3,'Av Central 44',1,'2026-03-22 23:06:48'),(4,'Instituto de Inglés',4,1,'Catamarca 120',1,'2026-03-22 23:06:48'),(5,'Carnicería El Cholo',5,2,'Echague 900',1,'2026-03-22 23:06:48'),(6,'Clinica Dental',2,3,'Ibarlucea Centro 5',1,'2026-03-22 23:06:48'),(7,'Resto Bar 1910',1,1,'Ruta 9 2000',1,'2026-03-22 23:06:48'),(8,'Gasista Matriculado',3,2,'Tierra de Sueños 2',1,'2026-03-22 23:06:48'),(9,'Librería Escolar',4,3,'Ruta 34 500',1,'2026-03-22 23:06:48'),(10,'Super Chino',5,1,'Mitre 200',1,'2026-03-22 23:06:48'),(11,'Veterinaria Funes',2,1,'Angelomé 1300',1,'2026-03-22 23:06:48'),(12,'Pinturería Color',3,2,'Ruta 9 km 320',1,'2026-03-22 23:06:48'),(13,'Escuela de Danzas',4,3,'Calle Pública 1',1,'2026-03-22 23:06:48'),(14,'Market Saludable',5,1,'Suipacha 45',1,'2026-03-22 23:06:48'),(15,'Restaurante La Posta',1,2,'AO12 y Ruta 9',1,'2026-03-22 23:06:48'),(16,'Pediatra Online',2,3,'Telemedicina Local',1,'2026-03-22 23:06:48'),(17,'Electricista 24/7',3,1,'Servicio a Domicilio',1,'2026-03-22 23:06:48'),(18,'Capacitación IT',4,2,'Coworking Roldán',1,'2026-03-22 23:06:48'),(19,'Express Market',5,3,'Calle del Sol 4',1,'2026-03-22 23:06:48'),(20,'Bodegón Familiar',1,1,'Sarmiento 400',1,'2026-03-22 23:06:48'),(21,'Ropa Sport Rosario',6,4,'Corrientes 1200',1,'2026-04-07 23:31:56'),(22,'TechFix Rosario',7,4,'San Martín 800',1,'2026-04-07 23:31:56'),(23,'Salón Belleza Camila',8,4,'Mitre 350',1,'2026-04-07 23:31:56'),(24,'Crossfit Baigorria',9,5,'Av. San Martín 400',1,'2026-04-07 23:31:56'),(25,'Veterinaria Huellitas',10,5,'Belgrano 600',1,'2026-04-07 23:31:56'),(26,'Super DIA Pérez',5,6,'Lavalle 800',1,'2026-04-07 23:31:56'),(27,'Pizzería Don Roque',1,4,'Entre Ríos 1100',1,'2026-04-07 23:31:56'),(28,'Farmacia del Centro',2,4,'Corrientes 400',1,'2026-04-07 23:31:56'),(29,'Plomero Express',3,5,'Ruta 11 km 3',1,'2026-04-07 23:31:56'),(30,'Instituto Mandarin',4,6,'Rivadavia 500',1,'2026-04-07 23:31:56'),(31,'Ropa Kids Funes',6,1,'Av. Illia 300',1,'2026-04-07 23:31:56'),(32,'Notebook Repair',7,2,'Bv. San Martín 700',1,'2026-04-07 23:31:56'),(33,'Peluquería El Barrio',8,3,'Calle Pública 5',1,'2026-04-07 23:31:56'),(34,'Club Deportivo Funes',9,1,'Parque Municipal s/n',1,'2026-04-07 23:31:56'),(35,'Pet Shop Roldán',10,2,'Echagüe 400',1,'2026-04-07 23:31:56'),(36,'Verdulería La Huerta',5,4,'Mendoza 900',1,'2026-04-07 23:31:56'),(37,'Sushi & Más',1,4,'Pellegrini 600',1,'2026-04-07 23:31:56'),(38,'Centro Médico Norte',2,5,'Av. San Martín 1200',1,'2026-04-07 23:31:56'),(39,'Pintura y Deco',3,6,'Sarmiento 300',1,'2026-04-07 23:31:56'),(40,'Jardín de Infantes Sol',4,4,'Tucumán 200',1,'2026-04-07 23:31:56');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_audit_business_update` BEFORE UPDATE ON `business` FOR EACH ROW SET NEW.updated_at = CURRENT_TIMESTAMP; */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_business_changes` AFTER UPDATE ON `business` FOR EACH ROW BEGIN
    IF OLD.is_active = TRUE AND NEW.is_active = FALSE THEN
        INSERT INTO audit_log (table_name, operation, record_id, changed_field, old_value, new_value)
        VALUES ('business', 'SOFT DELETE', NEW.id_business, 'is_active', 'TRUE', 'FALSE');
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `business_claim`
--

LOCK TABLES `business_claim` WRITE;
/*!40000 ALTER TABLE `business_claim` DISABLE KEYS */;
INSERT INTO `business_claim` VALUES (1,7,1,'aprobado','2026-04-07 22:56:15','2026-01-15 13:00:00','Documentación verificada correctamente.'),(2,15,3,'aprobado','2026-04-07 22:56:15','2026-02-01 14:30:00','Titular confirmado por CUIT.'),(3,1,2,'pendiente','2026-04-07 22:56:15',NULL,'Esperando documentación respaldatoria.'),(4,10,5,'rechazado','2026-04-07 22:56:15','2026-03-10 12:00:00','No se pudo verificar titularidad.'),(5,4,6,'pendiente','2026-04-07 22:56:15',NULL,NULL);
/*!40000 ALTER TABLE `business_claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_hours`
--

LOCK TABLES `business_hours` WRITE;
/*!40000 ALTER TABLE `business_hours` DISABLE KEYS */;
INSERT INTO `business_hours` VALUES (1,1,'Lunes','07:00:00','22:00:00',0),(2,1,'Martes','07:00:00','22:00:00',0),(3,1,'Miércoles','07:00:00','22:00:00',0),(4,1,'Jueves','07:00:00','22:00:00',0),(5,1,'Viernes','07:00:00','21:00:00',0),(6,1,'Sábado','09:00:00','14:00:00',0),(7,1,'Domingo',NULL,NULL,1),(8,2,'Lunes','00:00:00','23:59:00',0),(9,2,'Martes','00:00:00','23:59:00',0),(10,2,'Miércoles','00:00:00','23:59:00',0),(11,2,'Jueves','00:00:00','23:59:00',0),(12,2,'Viernes','00:00:00','23:59:00',0),(13,2,'Sábado','00:00:00','23:59:00',0),(14,2,'Domingo','00:00:00','23:59:00',0),(15,7,'Lunes',NULL,NULL,1),(16,7,'Martes','12:00:00','23:00:00',0),(17,7,'Miércoles','12:00:00','23:00:00',0),(18,7,'Jueves','12:00:00','23:00:00',0),(19,7,'Viernes','12:00:00','00:00:00',0),(20,7,'Sábado','12:00:00','01:00:00',0),(21,7,'Domingo','12:00:00','22:00:00',0);
/*!40000 ALTER TABLE `business_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_phone`
--

LOCK TABLES `business_phone` WRITE;
/*!40000 ALTER TABLE `business_phone` DISABLE KEYS */;
INSERT INTO `business_phone` VALUES (1,1,'3415-100001','WhatsApp'),(2,1,'341-4500100','Fijo'),(3,2,'3415-100002','WhatsApp'),(4,3,'3415-100003','WhatsApp'),(5,4,'341-4500104','Informes'),(6,5,'341-4500105','Fijo'),(7,6,'341-4500106','Turnos'),(8,7,'3415-100007','WhatsApp'),(9,7,'341-4500107','Reservas'),(10,8,'3415-100008','WhatsApp'),(11,9,'341-4500109','Fijo'),(12,10,'3415-100010','WhatsApp');
/*!40000 ALTER TABLE `business_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_tag`
--

LOCK TABLES `business_tag` WRITE;
/*!40000 ALTER TABLE `business_tag` DISABLE KEYS */;
INSERT INTO `business_tag` VALUES (1,1),(4,1),(6,1),(7,1),(9,1),(10,1),(11,1),(15,1),(2,2),(3,2),(5,2),(8,2),(10,2),(7,4),(15,4),(1,5),(5,5),(7,5),(1,6),(2,6),(4,7),(6,7),(11,7),(3,8),(8,8),(7,9),(15,9),(7,10);
/*!40000 ALTER TABLE `business_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Gastronomía',1),(2,'Salud',1),(3,'Servicios Hogar',1),(4,'Educación',1),(5,'Supermercados',1),(6,'Indumentaria',1),(7,'Tecnología',1),(8,'Belleza y Estética',1),(9,'Deportes',1),(10,'Mascotas',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Funes',2132,1),(2,'Roldán',2134,1),(3,'Ibarlucea',2142,1),(4,'Rosario',2000,1),(5,'Granadero Baigorria',2152,1),(6,'Pérez',2121,1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Argentina');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fact_reviews_summary`
--

LOCK TABLES `fact_reviews_summary` WRITE;
/*!40000 ALTER TABLE `fact_reviews_summary` DISABLE KEYS */;
INSERT INTO `fact_reviews_summary` VALUES (1,1,11,4.27,5,5,0,1,0,'2026-03-29 11:00:00','2026-04-07 23:31:56'),(2,2,3,3.67,2,0,0,0,1,'2026-03-22 23:08:07','2026-04-07 22:56:15'),(3,3,2,4.00,1,0,1,0,0,'2026-03-22 23:08:07','2026-04-07 22:56:15'),(4,4,6,4.33,3,2,1,0,0,'2026-03-22 23:08:07','2026-04-07 23:31:56'),(5,5,4,4.00,2,1,0,1,0,'2026-03-22 23:08:07','2026-04-07 22:56:15'),(6,6,4,3.75,1,1,2,0,0,'2026-03-22 23:08:07','2026-04-07 23:31:56'),(7,7,7,4.57,4,3,0,0,0,'2026-03-27 00:00:00','2026-04-07 23:31:56'),(8,8,3,5.00,3,0,0,0,0,'2026-03-22 23:08:07','2026-04-07 22:56:15'),(9,9,1,4.00,0,1,0,0,0,'2026-03-22 23:08:07','2026-04-07 22:56:15'),(10,10,6,3.83,2,2,1,1,0,'2026-03-22 23:08:07','2026-04-07 23:31:56'),(11,21,4,4.50,2,2,0,0,0,'2026-03-21 15:00:00','2026-04-07 23:31:56'),(12,22,4,4.25,2,1,1,0,0,'2026-03-22 17:00:00','2026-04-07 23:31:56'),(13,23,3,4.67,2,1,0,0,0,'2026-03-10 15:00:00','2026-04-07 23:31:56'),(14,24,3,4.67,2,1,0,0,0,'2026-03-05 11:00:00','2026-04-07 23:31:56'),(17,15,4,4.75,3,1,0,0,0,'2026-03-27 23:00:00','2026-04-07 23:31:56'),(19,27,4,4.25,2,1,1,0,0,'2026-03-23 23:30:00','2026-04-07 23:31:56'),(20,28,4,4.75,3,1,0,0,0,'2026-03-24 13:00:00','2026-04-07 23:31:56'),(22,11,3,4.67,2,1,0,0,0,'2026-03-14 13:00:00','2026-04-07 23:31:56'),(24,20,4,3.75,2,0,1,1,0,'2026-03-31 01:00:00','2026-04-07 23:31:56'),(25,25,3,4.00,1,1,1,0,0,'2026-03-17 14:30:00','2026-04-07 23:31:56'),(26,37,3,4.67,2,1,0,0,0,'2026-03-15 22:00:00','2026-04-07 23:31:56'),(29,30,2,4.50,1,1,0,0,0,'2026-03-19 20:00:00','2026-04-07 23:31:56'),(39,34,3,4.67,2,1,0,0,0,'2026-03-28 19:00:00','2026-04-07 23:31:56'),(42,36,2,4.50,1,1,0,0,0,'2026-03-13 14:00:00','2026-04-07 23:31:56'),(52,38,2,4.50,1,1,0,0,0,'2026-03-25 14:00:00','2026-04-07 23:31:56');
/*!40000 ALTER TABLE `fact_reviews_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,14,5,'La reseña parece ser de un competidor, no un cliente real.','2026-04-07 22:56:15','pendiente'),(2,20,3,'Lenguaje ofensivo en el comentario.','2026-04-07 22:56:15','resuelto'),(3,19,8,'Reseña duplicada del mismo usuario.','2026-04-07 22:56:15','pendiente'),(4,1,12,'Calificación sin justificación.','2026-04-07 22:56:15','descartado');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,5,'La mejor pizza de la zona!','2026-03-22 23:08:07'),(2,7,1,4,'Muy rico el sushi, demora un poco.','2026-03-22 23:08:07'),(3,1,2,4,'Buena relación precio calidad.','2026-03-22 23:08:07'),(4,2,3,5,'Riquísimos los gustos frutales.','2026-03-22 23:08:07'),(5,3,4,5,'Atención excelente en la farmacia.','2026-03-22 23:08:07'),(6,4,1,5,'Mis hijos van felices.','2026-03-22 23:08:07'),(7,4,2,4,'Buen nivel académico.','2026-03-22 23:08:07'),(8,5,1,2,'Mucho tiempo de espera en caja.','2026-03-22 23:08:07'),(9,5,5,5,'Buenos precios.','2026-03-22 23:08:07'),(10,6,6,3,'No tenían stock de lo que buscaba.','2026-03-22 23:08:07'),(11,8,1,5,'Profesionales excelentes.','2026-03-22 23:08:07'),(12,10,1,4,'Lugar agradable.','2026-03-22 23:08:07'),(13,1,11,5,'Recomendado.','2026-03-22 23:08:07'),(14,2,11,5,'Genial.','2026-03-22 23:08:07'),(15,1,12,4,'Ok.','2026-03-22 23:08:07'),(16,5,12,4,'Bueno.','2026-03-22 23:08:07'),(17,7,13,5,'Excelente!','2026-03-22 23:08:07'),(18,8,13,5,'Muy bueno.','2026-03-22 23:08:07'),(19,1,14,2,'No me gustó.','2026-03-22 23:08:07'),(20,2,14,1,'Pésimo.','2026-03-22 23:08:07'),(21,3,14,3,'Zafa.','2026-03-22 23:08:07'),(22,4,15,5,'Increíble.','2026-03-22 23:08:07'),(23,10,15,5,'Perfecto.','2026-03-22 23:08:07'),(24,1,16,4,'Volveré.','2026-03-22 23:08:07'),(25,5,16,5,'Súper.','2026-03-22 23:08:07'),(26,7,17,5,'Me encantó.','2026-03-22 23:08:07'),(27,8,18,5,'Atención 10 puntos.','2026-03-22 23:08:07'),(28,9,19,4,'Rápido.','2026-03-22 23:08:07'),(29,10,20,5,'Volvería mil veces.','2026-03-22 23:08:07'),(30,1,21,5,'Sin palabras, muy bueno.','2026-03-22 23:08:07'),(31,21,31,5,'Muy buena ropa deportiva, precios razonables.','2026-01-03 13:15:00'),(32,22,32,4,'Me arreglaron el celular rápido.','2026-01-05 17:30:00'),(33,23,33,5,'El salón de belleza es increíble, muy profesionales.','2026-01-07 14:00:00'),(34,24,34,5,'El crossfit de Baigorria es de primer nivel.','2026-01-08 12:00:00'),(35,7,35,4,'El bodegón muy rico, buena atención.','2026-01-10 23:00:00'),(36,1,36,5,'El gym de Funes mejoró mucho.','2026-01-12 11:00:00'),(37,15,37,5,'El restaurante La Posta es excelente.','2026-01-15 00:00:00'),(38,10,38,3,'El super chino regular, poca variedad.','2026-01-15 20:00:00'),(39,27,39,5,'La pizzería de Rosario es espectacular.','2026-01-17 22:30:00'),(40,28,40,5,'La farmacia muy completa y buena atención.','2026-01-18 13:00:00'),(41,4,41,4,'El instituto de inglés tiene buenos profesores.','2026-01-20 19:00:00'),(42,11,42,5,'La veterinaria de Funes es excelente.','2026-01-22 14:30:00'),(43,6,43,4,'La clínica dental muy buena.','2026-01-24 13:00:00'),(44,20,44,5,'El bodegón familiar muy rico.','2026-01-26 00:00:00'),(45,25,45,3,'La veterinaria Huellitas bien pero cara.','2026-01-26 18:00:00'),(46,37,31,5,'El sushi de Rosario es buenísimo.','2026-02-01 23:00:00'),(47,21,46,4,'Buena ropa, buen precio.','2026-02-02 15:00:00'),(48,22,47,5,'TechFix resolvió todo en el día.','2026-02-03 17:00:00'),(49,30,48,4,'El instituto Mandarin tiene buen nivel.','2026-02-05 20:00:00'),(50,7,49,5,'Volví al Resto Bar, siempre rico.','2026-02-07 00:00:00'),(51,1,50,4,'Buen gym, me gusta la variedad de clases.','2026-02-08 10:30:00'),(52,24,31,5,'El mejor crossfit de la zona sin dudas.','2026-02-09 12:00:00'),(53,27,32,4,'Buena pizza, un poco de espera.','2026-02-10 22:00:00'),(54,15,33,5,'La Posta tiene la mejor provoleta.','2026-02-11 23:30:00'),(55,23,34,4,'El salón de belleza muy prolijo.','2026-02-12 14:00:00'),(56,28,35,5,'La farmacia tiene todo lo que necesitás.','2026-02-13 13:00:00'),(57,10,36,4,'El super chino mejoró bastante.','2026-02-14 21:00:00'),(58,4,37,5,'Inglés con muy buen método de enseñanza.','2026-02-15 19:00:00'),(59,34,38,5,'El club deportivo de Funes es genial para los chicos.','2026-02-17 20:00:00'),(60,11,39,4,'La veterinaria muy buena y cómoda.','2026-02-18 15:00:00'),(61,20,40,3,'El bodegón bien pero muy lleno los fines de semana.','2026-02-21 01:00:00'),(62,36,41,4,'El super DIA de Pérez bien surtido.','2026-02-21 13:30:00'),(63,25,42,5,'Huellitas, excelente atención para mi perro.','2026-02-22 14:00:00'),(64,6,43,5,'La clínica dental muy profesional.','2026-02-23 12:30:00'),(65,37,44,5,'Sushi increíble, volveré siempre.','2026-02-24 23:00:00'),(66,21,45,5,'La mejor tienda deportiva de la zona.','2026-03-01 14:00:00'),(67,22,46,3,'El celular tardó más de lo esperado.','2026-03-02 18:00:00'),(68,27,47,5,'Pizza espectacular, masa muy finita.','2026-03-03 23:00:00'),(69,28,48,4,'Farmacia con buena atención al público.','2026-03-04 12:00:00'),(70,24,49,4,'Crossfit muy exigente, me encanta.','2026-03-05 11:00:00'),(71,7,50,5,'El bar siempre en su punto.','2026-03-07 00:30:00'),(72,38,31,5,'El centro médico de Baigorria es muy completo.','2026-03-07 13:00:00'),(73,15,32,4,'La Posta sigue siendo referente gastronómico.','2026-03-08 23:00:00'),(74,1,33,5,'El gym Funes incorporó nuevas máquinas.','2026-03-09 10:00:00'),(75,23,34,5,'Salón de belleza top, muy recomendado.','2026-03-10 15:00:00'),(76,34,35,4,'Club deportivo muy bien organizado.','2026-03-11 20:00:00'),(77,4,36,3,'El inglés bien pero los horarios son difíciles.','2026-03-12 19:30:00'),(78,36,37,5,'El DIA de Pérez renovó la sección de frescos.','2026-03-13 14:00:00'),(79,11,38,5,'La veterinaria de Funes tiene médicos excelentes.','2026-03-14 13:00:00'),(80,37,39,4,'Sushi rico aunque le faltó un poco de sazón.','2026-03-15 22:00:00'),(81,10,40,2,'El super chino bajó la calidad de sus productos.','2026-03-16 21:00:00'),(82,25,41,4,'Veterinaria Huellitas, atención rápida.','2026-03-17 14:30:00'),(83,20,42,5,'El bodegón familiar nunca falla.','2026-03-19 00:00:00'),(84,30,43,5,'Instituto Mandarin excelente nivel de enseñanza.','2026-03-19 20:00:00'),(85,6,44,3,'La clínica dental tardó mucho en atenderme.','2026-03-20 12:00:00'),(86,21,45,4,'Buena variedad en ropa sport.','2026-03-21 15:00:00'),(87,22,46,5,'Repararon mi notebook, servicio impecable.','2026-03-22 17:00:00'),(88,27,47,3,'La pizza estuvo fría al llegar.','2026-03-23 23:30:00'),(89,28,48,5,'La farmacia es muy completa.','2026-03-24 13:00:00'),(90,38,49,4,'Centro médico muy bien equipado.','2026-03-25 14:00:00'),(91,7,50,4,'Resto Bar con buena propuesta gastronómica.','2026-03-27 00:00:00'),(92,15,31,5,'La Posta superó mis expectativas.','2026-03-27 23:00:00'),(93,34,32,5,'Los chicos aman el club deportivo.','2026-03-28 19:00:00'),(94,1,33,4,'El gym muy limpio y bien organizado.','2026-03-29 11:00:00'),(95,20,34,2,'Bodegón muy ruidoso, no pude disfrutar la comida.','2026-03-31 01:00:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_prevent_invalid_score` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
    IF NEW.score < 1 OR NEW.score > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR: EL SCORE DEBE ESTAR ENTRE 1 Y 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_summary_on_review` AFTER INSERT ON `review` FOR EACH ROW BEGIN
    CALL sp_refresh_summary(NEW.id_business);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Santa Fe',1);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Acepta tarjeta'),(9,'Apto celíacos'),(6,'Atiende fines de semana'),(3,'Delivery disponible'),(5,'Estacionamiento'),(4,'Pet friendly'),(8,'Servicio a domicilio'),(2,'Solo efectivo'),(7,'Turno previo'),(10,'WiFi gratis');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Valeria','Castillo','valeria@nearme.com.ar','pass123','34150001','Av. Illia 100',1,'2026-03-22 23:06:48',NULL),(2,'Alejo','Gomez','alejo@gmail.com','pass123','34150002','Fuerza Aérea 500',1,'2026-03-22 23:06:48',NULL),(3,'Martin','Perez','martin@gmail.com','pass123','34150003','San José 200',2,'2026-03-22 23:06:48',NULL),(4,'Lucía','Rodriguez','lucia@gmail.com','pass123','34150004','Ruta 34 km 5',3,'2026-03-22 23:06:48',NULL),(5,'Tomas','Blanco','tomas@gmail.com','pass123','34150005','Mitre 50',1,'2026-03-22 23:06:48',NULL),(6,'Elena','Torres','elena@gmail.com','pass123','34150006','Pellegrini 800',2,'2026-03-22 23:06:48',NULL),(7,'Marcos','Ruiz','marcos@gmail.com','pass123','34150007','Los Horneros 12',3,'2026-03-22 23:06:48',NULL),(8,'Sofia','Lopez','sofia@gmail.com','pass123','34150008','Hipólito Yrigoyen 400',1,'2026-03-22 23:06:48',NULL),(9,'Bruno','Diaz','bruno@gmail.com','pass123','34150009','Echagüe 150',2,'2026-03-22 23:06:48',NULL),(10,'Clara','Sosa','clara@gmail.com','pass123','34150010','Belgrano 300',3,'2026-03-22 23:06:48',NULL),(11,'Juan','Castillo','juan@test.com','123','001','Dir 1',1,'2026-03-22 23:06:48',NULL),(12,'Marta','Galli','marta@test.com','123','002','Dir 2',1,'2026-03-22 23:06:48',NULL),(13,'Pedro','Vazquez','pedro@test.com','123','003','Dir 3',2,'2026-03-22 23:06:48',NULL),(14,'Ana','Rios','ana@test.com','123','004','Dir 4',2,'2026-03-22 23:06:48',NULL),(15,'Hugo','Luna','hugo@test.com','123','005','Dir 5',3,'2026-03-22 23:06:48',NULL),(16,'Ines','Moro','ines@test.com','123','006','Dir 6',3,'2026-03-22 23:06:48',NULL),(17,'Raul','Peña','raul@test.com','123','007','Dir 7',1,'2026-03-22 23:06:48',NULL),(18,'Silvia','Duarte','silvia@test.com','123','008','Dir 8',2,'2026-03-22 23:06:48',NULL),(19,'Jorge','Manso','jorge@test.com','123','009','Dir 9',3,'2026-03-22 23:06:48',NULL),(20,'Paula','Briz','paula@test.com','123','010','Dir 10',1,'2026-03-22 23:06:48',NULL),(21,'Luis','Vega','luis@test.com','123','011','Dir 11',1,'2026-03-22 23:06:48',NULL),(22,'Rosa','Campo','rosa@test.com','123','012','Dir 12',2,'2026-03-22 23:06:48',NULL),(23,'Enzo','Ferrari','enzo@test.com','123','013','Dir 13',3,'2026-03-22 23:06:48',NULL),(24,'Gisela','Ponte','gisela@test.com','123','014','Dir 14',1,'2026-03-22 23:06:48',NULL),(25,'Oscar','Luz','oscar@test.com','123','015','Dir 15',2,'2026-03-22 23:06:48',NULL),(26,'Teresa','Nave','teresa@test.com','123','016','Dir 16',3,'2026-03-22 23:06:48',NULL),(27,'Dante','Alba','dante@test.com','123','017','Dir 17',1,'2026-03-22 23:06:48',NULL),(28,'Nora','Vidal','nora@test.com','123','018','Dir 18',2,'2026-03-22 23:06:48',NULL),(29,'Fabio','Guerra','fabio@test.com','123','019','Dir 19',3,'2026-03-22 23:06:48',NULL),(30,'Rocio','Paz','rocio@test.com','123','020','Dir 20',1,'2026-03-22 23:06:48',NULL),(31,'Camila','Ferreyra','camila.f@gmail.com','pass','3414000101','San Martín 1200',4,'2026-04-07 23:31:56',NULL),(32,'Nicolás','Herrera','nicolas.h@gmail.com','pass','3414000102','Mitre 450',4,'2026-04-07 23:31:56',NULL),(33,'Valentina','Acosta','valentina.a@gmail.com','pass','3414000103','Pellegrini 300',4,'2026-04-07 23:31:56',NULL),(34,'Ignacio','Molina','ignacio.m@gmail.com','pass','3414000104','Corrientes 800',4,'2026-04-07 23:31:56',NULL),(35,'Florencia','Medina','florencia.m@gmail.com','pass','3414000105','Mendoza 1500',4,'2026-04-07 23:31:56',NULL),(36,'Rodrigo','Jimenez','rodrigo.j@gmail.com','pass','3414000106','Entre Ríos 200',5,'2026-04-07 23:31:56',NULL),(37,'Agustina','Romero','agustina.r@gmail.com','pass','3414000107','Av. San Martín 600',5,'2026-04-07 23:31:56',NULL),(38,'Ezequiel','Alvarez','ezequiel.a@gmail.com','pass','3414000108','Belgrano 900',5,'2026-04-07 23:31:56',NULL),(39,'Micaela','Moreno','micaela.mo@gmail.com','pass','3414000109','Ruta 11 km 2',5,'2026-04-07 23:31:56',NULL),(40,'Leandro','Vargas','leandro.v@gmail.com','pass','3414000110','Los Aromos 45',5,'2026-04-07 23:31:56',NULL),(41,'Antonella','Cruz','antonella.c@gmail.com','pass','3414000111','Lavalle 300',6,'2026-04-07 23:31:56',NULL),(42,'Matías','Ortega','matias.or@gmail.com','pass','3414000112','Rivadavia 700',6,'2026-04-07 23:31:56',NULL),(43,'Luciana','Mendez','luciana.me@gmail.com','pass','3414000113','Av. Perón 1200',6,'2026-04-07 23:31:56',NULL),(44,'Tomás','Ibañez','tomas.ib@gmail.com','pass','3414000114','Hipólito Yrigoyen 55',6,'2026-04-07 23:31:56',NULL),(45,'Renata','Suarez','renata.s@gmail.com','pass','3414000115','Sarmiento 800',1,'2026-04-07 23:31:56',NULL),(46,'Benjamín','Rios','benjamin.r@gmail.com','pass','3414000116','Catamarca 120',1,'2026-04-07 23:31:56',NULL),(47,'Julieta','Ponce','julieta.p@gmail.com','pass','3414000117','Echagüe 600',2,'2026-04-07 23:31:56',NULL),(48,'Facundo','Cabrera','facundo.c@gmail.com','pass','3414000118','Mitre 900',2,'2026-04-07 23:31:56',NULL),(49,'Milagros','Godoy','milagros.g@gmail.com','pass','3414000119','Bv. Roca 1100',3,'2026-04-07 23:31:56',NULL),(50,'Sebastián','Peralta','sebastian.p@gmail.com','pass','3414000120','Ruta 34 km 8',3,'2026-04-07 23:31:56',NULL),(51,'Carolina','Rojas','carolina.ro@gmail.com','pass','3414000121','Los Pinos 200',4,'2026-04-07 23:31:56',NULL),(52,'Maximiliano','Flores','maxi.fl@gmail.com','pass','3414000122','San Lorenzo 400',4,'2026-04-07 23:31:56',NULL),(53,'Aldana','Quiroga','aldana.q@gmail.com','pass','3414000123','Tucumán 600',4,'2026-04-07 23:31:56',NULL),(54,'Gonzalo','Vera','gonzalo.v@gmail.com','pass','3414000124','Córdoba 1800',5,'2026-04-07 23:31:56',NULL),(55,'Brenda','Salas','brenda.s@gmail.com','pass','3414000125','Av. Independencia 300',5,'2026-04-07 23:31:56',NULL),(56,'Ramiro','Castañeda','ramiro.ca@gmail.com','pass','3414000126','Rivadavia 1200',6,'2026-04-07 23:31:56',NULL),(57,'Yamila','Benítez','yamila.b@gmail.com','pass','3414000127','Belgrano 450',6,'2026-04-07 23:31:56',NULL),(58,'Diego','Leiva','diego.le@gmail.com','pass','3414000128','Salta 900',1,'2026-04-07 23:31:56',NULL),(59,'Nadia','Espinoza','nadia.e@gmail.com','pass','3414000129','Reconquista 200',2,'2026-04-07 23:31:56',NULL),(60,'Cristian','Paredes','cristian.pa@gmail.com','pass','3414000130','Av. Francia 1500',4,'2026-04-07 23:31:56',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_favorite`
--

LOCK TABLES `user_favorite` WRITE;
/*!40000 ALTER TABLE `user_favorite` DISABLE KEYS */;
INSERT INTO `user_favorite` VALUES (1,1,7,'2026-04-07 22:56:15'),(2,1,10,'2026-04-07 22:56:15'),(3,1,4,'2026-04-07 22:56:15'),(4,2,1,'2026-04-07 22:56:15'),(5,2,7,'2026-04-07 22:56:15'),(6,3,15,'2026-04-07 22:56:15'),(7,3,5,'2026-04-07 22:56:15'),(8,4,6,'2026-04-07 22:56:15'),(9,4,3,'2026-04-07 22:56:15'),(10,5,10,'2026-04-07 22:56:15'),(11,5,1,'2026-04-07 22:56:15'),(12,5,7,'2026-04-07 22:56:15'),(13,6,4,'2026-04-07 22:56:15'),(14,6,8,'2026-04-07 22:56:15'),(15,7,9,'2026-04-07 22:56:15'),(16,7,15,'2026-04-07 22:56:15'),(17,8,7,'2026-04-07 22:56:15'),(18,8,10,'2026-04-07 22:56:15'),(19,9,1,'2026-04-07 22:56:15'),(20,9,4,'2026-04-07 22:56:15'),(21,10,6,'2026-04-07 22:56:15'),(22,10,11,'2026-04-07 22:56:15'),(23,31,27,'2026-04-07 23:31:56'),(24,31,24,'2026-04-07 23:31:56'),(25,31,21,'2026-04-07 23:31:56'),(26,32,37,'2026-04-07 23:31:56'),(27,32,27,'2026-04-07 23:31:56'),(28,32,22,'2026-04-07 23:31:56'),(29,33,23,'2026-04-07 23:31:56'),(30,33,15,'2026-04-07 23:31:56'),(31,33,7,'2026-04-07 23:31:56'),(32,34,24,'2026-04-07 23:31:56'),(33,34,38,'2026-04-07 23:31:56'),(34,34,1,'2026-04-07 23:31:56'),(35,35,28,'2026-04-07 23:31:56'),(36,35,7,'2026-04-07 23:31:56'),(37,35,15,'2026-04-07 23:31:56'),(38,36,1,'2026-04-07 23:31:56'),(39,36,4,'2026-04-07 23:31:56'),(40,37,15,'2026-04-07 23:31:56'),(41,37,37,'2026-04-07 23:31:56'),(42,38,34,'2026-04-07 23:31:56'),(43,38,24,'2026-04-07 23:31:56'),(44,39,27,'2026-04-07 23:31:56'),(45,39,7,'2026-04-07 23:31:56'),(46,40,37,'2026-04-07 23:31:56'),(47,40,15,'2026-04-07 23:31:56'),(48,41,4,'2026-04-07 23:31:56'),(49,41,30,'2026-04-07 23:31:56'),(50,42,11,'2026-04-07 23:31:56'),(51,42,25,'2026-04-07 23:31:56'),(52,43,6,'2026-04-07 23:31:56'),(53,43,28,'2026-04-07 23:31:56'),(54,44,20,'2026-04-07 23:31:56'),(55,44,37,'2026-04-07 23:31:56'),(56,45,21,'2026-04-07 23:31:56'),(57,45,34,'2026-04-07 23:31:56'),(58,46,22,'2026-04-07 23:31:56'),(59,46,30,'2026-04-07 23:31:56'),(60,47,27,'2026-04-07 23:31:56'),(61,47,15,'2026-04-07 23:31:56'),(62,48,28,'2026-04-07 23:31:56'),(63,48,38,'2026-04-07 23:31:56'),(64,49,24,'2026-04-07 23:31:56'),(65,49,1,'2026-04-07 23:31:56'),(66,50,7,'2026-04-07 23:31:56'),(67,50,37,'2026-04-07 23:31:56');
/*!40000 ALTER TABLE `user_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'near_me'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_busiest_day` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_busiest_day`(p_business_id INT) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_day VARCHAR(20);
    SELECT DAYNAME(created_at) INTO v_day
    FROM review
    WHERE id_business = p_business_id
    GROUP BY DAYNAME(created_at)
    ORDER BY COUNT(*) DESC
    LIMIT 1;
    RETURN IFNULL(v_day, 'Sin datos');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_count_favorites` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_count_favorites`(p_business_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count 
    FROM user_favorite 
    WHERE id_business = p_business_id;
    RETURN v_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_format_location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_format_location`(p_city_id INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_loc VARCHAR(255);
    SELECT CONCAT(ci.city, ', ', s.state) INTO v_loc
    FROM city ci JOIN state s ON ci.id_state = s.id_state
    WHERE ci.id_city = p_city_id;
    RETURN v_loc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_average_score` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_average_score`(p_id INT) RETURNS decimal(3,2)
    DETERMINISTIC
BEGIN
    DECLARE v_avg DECIMAL(3,2);
    SELECT AVG(score) INTO v_avg FROM review WHERE id_business = p_id;
    RETURN IFNULL(v_avg, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_is_user_active` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_is_user_active`(p_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE v_active BOOLEAN;
    SELECT (deleted_at IS NULL) INTO v_active FROM user WHERE id_user = p_id;
    RETURN v_active;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_review_safe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_review_safe`(IN p_user_id INT, IN p_business_id INT, IN p_score INT, IN p_comment TEXT)
BEGIN
    IF fn_is_user_active(p_user_id) THEN
        INSERT INTO review (id_business, id_user, score, comment)
        VALUES (p_business_id, p_user_id, p_score, p_comment);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR: EL USUARIO ESTA INACTIVO Y NO PUEDE COMENTAR';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_business_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_business_report`(IN p_id INT)
BEGIN
    SELECT 
        business AS nombre, 
        fn_get_average_score(id_business) AS rating_promedio, 
        fn_format_location(id_city) AS ubicacion_completa
    FROM business WHERE id_business = p_id;
    
    SELECT * FROM review WHERE id_business = p_id ORDER BY created_at DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_refresh_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_refresh_summary`(IN p_business_id INT)
BEGIN
    INSERT INTO fact_reviews_summary 
        (id_business, total_reviews, avg_score, score_5, score_4, score_3, score_2, score_1, last_review_at)
    SELECT 
        id_business,
        COUNT(*),
        ROUND(AVG(score), 2),
        SUM(score = 5),
        SUM(score = 4),
        SUM(score = 3),
        SUM(score = 2),
        SUM(score = 1),
        MAX(created_at)
    FROM review
    WHERE id_business = p_business_id
    GROUP BY id_business
    ON DUPLICATE KEY UPDATE
        total_reviews  = VALUES(total_reviews),
        avg_score      = VALUES(avg_score),
        score_5        = VALUES(score_5),
        score_4        = VALUES(score_4),
        score_3        = VALUES(score_3),
        score_2        = VALUES(score_2),
        score_1        = VALUES(score_1),
        last_review_at = VALUES(last_review_at);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_register_business_safe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_register_business_safe`(
    IN p_name VARCHAR(150), 
    IN p_cat INT, 
    IN p_city INT, 
    IN p_addr VARCHAR(255)
)
BEGIN
    DECLARE v_exists INT;
    
    -- CONTAMOS SI YA EXISTE UN COMERCIO EN ESA DIRECCION Y CIUDAD
    SELECT COUNT(*) INTO v_exists 
    FROM business 
    WHERE address = p_addr AND id_city = p_city;
    
    IF v_exists = 0 THEN
        INSERT INTO business (business, id_category, id_city, address)
        VALUES (p_name, p_cat, p_city, p_addr);
    ELSE
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERROR: YA EXISTE UN COMERCIO REGISTRADO EN ESA UBICACION';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_soft_delete_business` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_soft_delete_business`(IN p_id INT)
BEGIN
    UPDATE business SET is_active = FALSE WHERE id_business = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_soft_delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_soft_delete_user`(IN p_user_id INT)
BEGIN
    IF fn_is_user_active(p_user_id) THEN
        UPDATE user SET deleted_at = CURRENT_TIMESTAMP WHERE id_user = p_user_id;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR: EL USUARIO YA SE ENCUENTRA DADO DE BAJA';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-08 22:32:08
