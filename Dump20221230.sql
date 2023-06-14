-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionaria
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `automobile`
--

DROP TABLE IF EXISTS `automobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automobile` (
  `num_telaio` varchar(19) NOT NULL,
  `colore` varchar(45) NOT NULL,
  `anniDiGaranzia` int NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `targa` varchar(7) DEFAULT NULL,
  `kmPercorsi` int NOT NULL,
  `annoImmatricolazione` varchar(4) DEFAULT NULL,
  `disponibilita` varchar(45) NOT NULL,
  `prezzovendita` double NOT NULL,
  `modello` int NOT NULL,
  PRIMARY KEY (`num_telaio`),
  UNIQUE KEY `Num. telaio_UNIQUE` (`num_telaio`),
  KEY `Fk_automobile_modello_idx` (`modello`),
  CONSTRAINT `Fk_modello_automobile` FOREIGN KEY (`modello`) REFERENCES `modello` (`idmodello`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobile`
--

LOCK TABLES `automobile` WRITE;
/*!40000 ALTER TABLE `automobile` DISABLE KEYS */;
INSERT INTO `automobile` VALUES ('1FMCU0J97EUA61341','Grigia',4,'Usata','6K67247',5000,'2022','In consegna',58000,19),('1FMFU16588LA07890','Grigio',5,'Usata','4CXP989',40000,'2015','Disponibile',8000,1),('1G1YY32G0X5129790','Nero',4,'Nuova','AXY7889',0,'2016','Venduta',20000,10),('1GCPYBEH2KZ359060','Grigio',5,'Usata','7ZXY854',25000,'2016','Disponibile',10000,5),('1J4GK48K56W254695','Grigio',5,'Usata','558YJX6',50000,'2014','Venduta',9000,7),('1N4AL2APXCC195830','Nero',4,'Usata','1CY9461',60000,'2012','Disponibile',10000,2),('1VWAS7A33FC102185','Bianco',5,'Nuova','',0,NULL,'Disponibile',12500,11),('1VWDT7A31HC061522','Blu',4,'Nuova','FRY6635',0,'2010','Disponibile',30000,14),('1ZVBP8AM0C5207786','Nero',5,'Nuova','E194BCT',0,'2016','In consegna',18500,16),('2G1125S34J9177587','Rosso',5,'Nuova','SC76435',0,'2015','In consegna',15000,15),('2G1WC5E35G1173540','Rosso',4,'Nuova','7AAL313',0,'2013','In consegna',15000,15),('2HGFC2F59HH517161','Verde',4,'Nuova','',0,NULL,'In consegna',14000,17),('2T1BURHE3EC141742','Rosso',5,'Nuova','',0,NULL,'Disponibile',25000,13),('3C6JR7DG8EG278181','Bianco',5,'Nuova','HDJ9673',0,'2014','Disponibile',10000,6),('3GCUKTEC2JG227283','Blu',4,'Nuova','',0,NULL,'In consegna',20000,8),('3MEFM08Z46R610072','Nero',5,'Nuova','8RS407',0,'2016','Venduta',20000,1),('3TMCZ5AN6GM004524','Nero',4,'Usata','HGH1819',15000,'2020','Disponibile',9500,4),('4T1BD1EB2EU020825','Blu',4,'Usata','6MVT073',34000,'2011','Disponibile',13000,8),('4T1BE46K08U758253','Rosso',6,'Usata','AH08080',15000,'2020','Venduta',18000,13),('5LMFU28538LJ11171','Nero',4,'Nuova','084QLH3',0,'2013','Disponibile',14000,17),('5LMFU28539LJ01130','Nero',4,'Nuova','6SAS903',0,'2018','Disponibile',55000,20),('5N1AN08W86C509366','Bianco',4,'Nuova','SC42175',0,'2014','Venduta',8900,1),('5NPEB4AC8BH230326','Grigio',4,'Usata','7AVX763',40000,'2018','Disponibile',20000,18),('5TDDGRFH2KS059324','Bianco',4,'Nuova','7ZTN188',0,'2009','Disponibile',8900,3),('JN1CV6AP7CM932614','Grigio',4,'Usata','LHUU78',83000,'2014','Disponibile',5000,17),('JNKCV64E58M114487','Bianco',6,'Nuova','',0,NULL,'In consegna',9600,12),('JTHCK262585018521','Nero',6,'Nuova','6CG5763',0,'2018','Disponibile',28000,18),('KL4CJBSB1HB012236','Rosso',4,'Nuova','',0,NULL,'Disponibile',20000,10),('WAUFFAFL5DN049703','Blu',4,'Nuova','',0,NULL,'Disponibile',18000,3),('WBA3C1C53EK115752','Grigio',4,'Nuova','118KYC6',0,'2015','In consegna',15000,5),('WBAPH5C53AA440475','Bianco',6,'Usata','7LOA152',20000,'2014','Disponibile',20000,14),('WBAVC53548F010330','Nero',2,'Usata','89857N2',50000,'2016','Venduta',18500,16),('WDDZF4KB9HA123609','Bianco',6,'Nuova','KRC9886',0,'2022','Disponibile',18000,7),('WMWZC5C57CWL60741','Rosso',6,'Nuova','',0,NULL,'In consegna',40000,9);
/*!40000 ALTER TABLE `automobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `dataDiNascita` date NOT NULL,
  `numTelefono` varchar(10) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `Codice Fiscale_UNIQUE` (`codiceFiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'CSTCSP84C64B180P','Cassiopea','Costantini','1984-03-24','4794740422','Brindisi, Grazia 8 Appartamento 86'),(2,'BGLALD98JFU47583','Aldo','Baglio','1998-04-20','3317603314','Vibo Valentia, Via Rinaldi 649'),(3,'MRTSCH80D17G224P','Eustachio ','Martinelli','1980-04-17','7043381582','Padova, Incrocio Conti 240 Appartamento 45'),(4,'CRSZFK10P07G180N','Hector','Caputo','1991-05-14','3798445368','Incrocio Vitali 157 Appartamento 66'),(5,'YRSGSG24H42B917W','Cristyn ','Costantini','1993-03-27','1156248329','Foggia, Borgo D\'amico 76'),(6,'FFMRHS20A04L877B','Alessio','Puntorieri','1998-08-25','1234567890','Cremona, Incrocio Costa 9'),(7,'PFLCFN93E45A383I','Carmelo','Rizzo','1995-10-18','6521750258','Bergamo, Via Milani 87'),(8,'WKMYGT03A06C992J','Renato','Villa','1984-10-01','3904760547','Treviso, Rotonda Jarno 13'),(9,'RGBHNF54S43F874W','Fatima','De Angelis','1990-09-21','0330799891','Trento, Borgo Galli 2'),(10,'TMRYTL34H45D2464','Guendalina','Cattaneo','1981-11-29','1823912304','Torino,Strada Marina 62'),(11,'VNMFFL91S44I634W','Amerigo','Villa','1995-11-17','7150591612','Sesto Zelida, Piazza Ferraro 237'),(12,'KQWSKZ65M05C325E','Mirko','Santoro','1996-06-03','1393917252','La Spezia, Piazza Patrizio 7'),(13,'CRXZTK80E43H542I','Demetrio','Costantini','1990-01-17','3342159593','Bolzano, Via Mancini 676'),(14,'GYCKKG23H41G571N','Noel','Monti','1994-11-02','0280681802','Napoli, Strada Guendalina 6'),(15,'RJQPPZ34P47A831T','Fortunata ','Fontana','1985-07-19','3376505534','Imperia, Piazza Edilio 5'),(16,'MFHZBY09H45F220Q','Raniero','Mancini','1989-09-12','5985937360','Bari, Borgo Serra 00'),(17,'RSKVKP77T01D678S','Ciro','Bruno','1986-10-04','3902954210','Avellino, Strada Conte 28'),(18,'ZTMNZH58D01B632Z','Samuele','Morelli','1989-10-14','3901957487','Alessandria, Contrada Bianco 02'),(19,'GDCZFW85P45Z734Z','Fabiano','Negri','1995-08-20','1717135084','Vercelli, Via Nunzia 38'),(20,'HBGJHP17R46H570G','Ettore','Rinaldi','1992-03-01','3930851574','Siena, Via Pellegrino 4');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contiene`
--

DROP TABLE IF EXISTS `contiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contiene` (
  `automobile` varchar(17) NOT NULL,
  `ordine` int NOT NULL,
  PRIMARY KEY (`automobile`,`ordine`),
  KEY `Fk_contiene_idx` (`ordine`),
  CONSTRAINT `Fk_contiene` FOREIGN KEY (`automobile`) REFERENCES `automobile` (`num_telaio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contiene`
--

LOCK TABLES `contiene` WRITE;
/*!40000 ALTER TABLE `contiene` DISABLE KEYS */;
INSERT INTO `contiene` VALUES ('1FMCU0J97EUA61341',1),('1FMFU16588LA07890',1),('1ZVBP8AM0C5207786',1),('2HGFC2F59HH517161',1),('WBA3C1C53EK115752',2),('3GCUKTEC2JG227283',3),('JNKCV64E58M114487',5),('2G1125S34J9177587',24),('2G1WC5E35G1173540',24);
/*!40000 ALTER TABLE `contiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crea`
--

DROP TABLE IF EXISTS `crea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crea` (
  `manager` int NOT NULL,
  `ordine` int NOT NULL,
  PRIMARY KEY (`manager`,`ordine`),
  CONSTRAINT `Fk_ordine` FOREIGN KEY (`manager`) REFERENCES `manager` (`iddipendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crea`
--

LOCK TABLES `crea` WRITE;
/*!40000 ALTER TABLE `crea` DISABLE KEYS */;
/*!40000 ALTER TABLE `crea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispone`
--

DROP TABLE IF EXISTS `dispone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispone` (
  `modello` int NOT NULL,
  `optional` int NOT NULL,
  `prezzo` double NOT NULL,
  PRIMARY KEY (`modello`,`optional`),
  CONSTRAINT `Fk_dispone` FOREIGN KEY (`modello`) REFERENCES `modello` (`idmodello`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispone`
--

LOCK TABLES `dispone` WRITE;
/*!40000 ALTER TABLE `dispone` DISABLE KEYS */;
INSERT INTO `dispone` VALUES (1,1,300),(1,2,400),(1,3,1000),(1,4,500),(1,5,500),(1,6,1200),(1,7,2200),(1,15,250),(1,20,300),(1,22,3500),(2,2,500),(2,3,200),(2,4,1200),(2,6,1000),(2,9,400),(2,14,500),(3,1,350),(3,5,600),(3,19,250),(4,1,400),(4,3,450),(4,5,700),(4,17,1250),(4,18,300),(5,1,450),(5,5,500),(5,12,300),(5,14,700),(6,1,600),(6,3,800),(6,4,600),(6,11,1500),(6,18,300),(6,19,200),(7,1,245),(7,6,500),(7,14,500),(7,18,400),(7,19,300),(8,1,550),(8,2,670),(8,3,560),(8,9,800),(8,20,450),(9,2,1000),(9,3,900),(9,4,1400),(9,7,1600),(9,8,1800),(9,10,2000),(9,12,300),(9,15,580),(10,1,700),(10,5,700),(10,9,450),(10,12,340),(10,14,500),(11,3,450),(11,9,600),(11,12,240),(11,14,430),(11,17,800),(12,6,300),(12,9,700),(12,12,250),(12,13,450),(12,15,680),(12,16,200),(12,17,489),(12,21,1200),(12,23,470),(13,1,600),(13,6,700),(13,9,600),(13,12,250),(13,13,560),(13,17,430),(13,20,200),(13,21,1230),(13,23,800),(14,2,1800),(14,3,500),(14,4,1000),(14,6,1400),(14,7,1250),(14,9,700),(14,16,870),(14,20,500),(15,1,350),(15,3,480),(16,1,400),(16,4,900),(16,5,600),(16,17,700),(16,21,460),(16,22,1500),(17,1,500),(17,5,450),(17,6,680),(17,9,540),(17,17,700),(17,22,1400),(18,2,1300),(18,4,1500),(18,7,1750),(18,9,700),(18,11,2000),(18,12,300),(18,13,600),(18,15,500),(18,16,400),(18,20,300),(19,3,1000),(19,4,2000),(19,6,1400),(19,7,2200),(19,10,800),(19,11,2500),(19,12,400),(19,15,780),(19,16,400),(19,21,1800),(20,2,1900),(20,4,1500),(20,6,1200),(20,7,1800),(20,8,2200),(20,10,800),(20,15,500),(20,22,4000),(20,23,700);
/*!40000 ALTER TABLE `dispone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dotata`
--

DROP TABLE IF EXISTS `dotata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dotata` (
  `automobile` varchar(17) NOT NULL,
  `optional` int NOT NULL,
  PRIMARY KEY (`automobile`,`optional`),
  KEY `Fk_dotata_idx` (`optional`),
  CONSTRAINT `Fk_dotata` FOREIGN KEY (`optional`) REFERENCES `optional` (`idoptional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dotata`
--

LOCK TABLES `dotata` WRITE;
/*!40000 ALTER TABLE `dotata` DISABLE KEYS */;
INSERT INTO `dotata` VALUES ('3MEFM08Z46R610072',1),('1FMFU16588LA07890',2),('WAUFFAFL5DN049703',2),('1FMFU16588LA07890',4),('3MEFM08Z46R610072',4),('1GCPYBEH2KZ359060',5),('1G1YY32G0X5129790',9),('1G1YY32G0X5129790',12),('1J4GK48K56W254695',14),('1J4GK48K56W254695',18);
/*!40000 ALTER TABLE `dotata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornisce`
--

DROP TABLE IF EXISTS `fornisce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornisce` (
  `fornitore` int NOT NULL,
  `ordine` int NOT NULL,
  PRIMARY KEY (`fornitore`,`ordine`),
  KEY `Fk_fornisce_idx` (`ordine`),
  CONSTRAINT `Fk_fornisce` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`idordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornisce`
--

LOCK TABLES `fornisce` WRITE;
/*!40000 ALTER TABLE `fornisce` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornisce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornitore` (
  `idfornitore` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `dataDiNascita` date DEFAULT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `num_telefono` varchar(10) NOT NULL,
  `num_iva` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idfornitore`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornitore`
--

LOCK TABLES `fornitore` WRITE;
/*!40000 ALTER TABLE `fornitore` DISABLE KEYS */;
INSERT INTO `fornitore` VALUES (1,'Carmelo','Rossi','2022-12-04','Vicenza, Via Palumbo 4','rossi.carmelo@gmail.com','3909357475',NULL),(2,'Fiat','',NULL,'Lodi, Via Monti 32','fiat.business@gmail.com','0661951844','19934700725'),(3,'Mercedes','',NULL,'Udine, Via Anastasio 9','mercedesbenz@gmail.com','3370486002','78328620501'),(4,'Lorenzo','Barone','1989-12-09','Mantova, Borgo Martino 5','lorenzo.barone@gmail.com','3212202196',NULL),(5,'Lancia','',NULL,'Livorno, Piazza Mazza 2','lancia.auto@gmail.com','3002453724','63902330214'),(6,'BMW','',NULL,'Trapani, Via Ferdinando 5','bmw.business@gmail.com','3906552708','71285110368'),(7,'Gabriele','Conte','1989-03-04','Palermo, Via Giacinto 5','conte.gabriele@gmail.com','3874274234',NULL),(8,'Renault','',NULL,'Cuneo, Via Ortensia 67','renault.auto@gmail.com','3220012794','18337830444'),(9,'Toyota','',NULL,'Gorizia, Via Tosca 16','toyota@gmail.com','3163775523','53784310053'),(10,'Audi','',NULL,'Prato, Rotonda Michele 9','audi.business@gmail.com','3545960364','56063500419'),(11,'Mattia','Fontana','1991-02-13','Parma, Rotonda Palumbo 66','fontana.matty@gmail.com','3901365775',NULL),(12,'Fernando','Palumbo','1986-10-05','Matera, Piazza Yago 2','palumbo86@gmail.com','3777915443',NULL);
/*!40000 ALTER TABLE `fornitore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `iddipendente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `dataNascita` date NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `num_telefono` varchar(10) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `stipendio` double NOT NULL,
  `oreLavorative` int NOT NULL,
  PRIMARY KEY (`iddipendente`),
  UNIQUE KEY `Codice  fiscale_UNIQUE` (`codiceFiscale`)
) ENGINE=InnoDB AUTO_INCREMENT=3000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (20,'Lidia','Lombardo','1985-08-24','NDFYDF32B42H743V','3660938228','Siena, Piazza Mancini 588','lombardolidia.85@gmail.com',2300,8),(21,'Bruno','Verdi','1980-03-21','MZVYTM71L01D268C','3245547395','Arezzo, Via San Francesco 32','brunoverdi@gmai.com',2200,8),(22,'Matteo','D\'Angelo','1983-01-21','PPTHSN17P07G646B','3279279862','Savona, Via Damiana 7','angelo83@gmail.com',2200,8),(23,'Alberto','Villa','1991-01-05','KGQXDF46B45A189G','3239938084','Pavia, Via Silvestri 11','villa.alberto@gmail.com',2100,8),(24,'Omar','Testa','1995-05-09','PSLRWN66B42G076G','3962002254','Agrigento, Via Mauro 44','omar.testa95@gmail.com',2400,9);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meccanico`
--

DROP TABLE IF EXISTS `meccanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meccanico` (
  `iddipendente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `dataNascita` date NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `num_telefono` varchar(10) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `stipendio` double NOT NULL,
  `oreLavorative` int NOT NULL,
  PRIMARY KEY (`iddipendente`),
  UNIQUE KEY `Codice  fiscale_UNIQUE` (`codiceFiscale`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meccanico`
--

LOCK TABLES `meccanico` WRITE;
/*!40000 ALTER TABLE `meccanico` DISABLE KEYS */;
INSERT INTO `meccanico` VALUES (30,'Enrico','Lombardi','1987-09-12','VBVXLJ15A07E942K','3479275408','Viterbo, Via Testa 37','lombardi.enrico87@gmail.com',1550,9),(31,'Mario','Verdi','1996-06-25','RRSXXN66L42D680D','3879547018','Napoli, Via Brombeis 6','marioverdi@gmail.com',1600,9),(32,'Gabriele','Greco','1999-01-28','THGZCR03T05A527Q','3755458097','Rieti, Incrocio Leone 7','grecoGabri@gmail.com',1400,9),(33,'Miriana','Donati','1984-05-21','GFYRNK00M05G371N','3451356382','Varese, Via Grasso 76','donati84miri@gmail.com',1550,9),(34,'Giancarlo','Conte','1994-01-07','KGQPVQ12H05H986I','3922800584','Mantova, Via De Santis 53','conte.giancarlo@gmail.com',1600,9);
/*!40000 ALTER TABLE `meccanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modello`
--

DROP TABLE IF EXISTS `modello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modello` (
  `idmodello` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `casa` varchar(100) NOT NULL,
  `cilindrata` int NOT NULL,
  `cavalli` int NOT NULL,
  `tipodicarburante` varchar(45) NOT NULL,
  `trazione` varchar(45) NOT NULL,
  `num_porte` int NOT NULL,
  `num_posti` int NOT NULL,
  `anno` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `prezzobase` double NOT NULL,
  PRIMARY KEY (`idmodello`),
  UNIQUE KEY `idmodello_UNIQUE` (`idmodello`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modello`
--

LOCK TABLES `modello` WRITE;
/*!40000 ALTER TABLE `modello` DISABLE KEYS */;
INSERT INTO `modello` VALUES (1,'Classe A','Mercedes-Benz',2000,120,'Benzina','Posteriore',3,4,2018,'Utilitaria',30000),(2,'Classe B','Mercedes-Benz',1800,120,'Diesel','Posteriore',5,4,2012,'Berlina',20000),(3,'Panda','Fiat',1200,70,'Benzina','Posteriore',5,4,2009,'Utilitaria',8900),(4,'Panda','Fiat',1200,85,'Diesel','Integrale',5,4,2020,'Utilitaria',12000),(5,'Qubo','Fiat',2000,120,'Benzina','Posteriore',5,5,2015,'Van',15000),(6,'500','Fiat',1300,85,'Benzina','Posteriore',3,4,2014,'Utilitaria',10000),(7,'Ypsilon ','Lancia',1000,70,'Ibrida','Posteriore',5,4,2022,'Utilitaria',18000),(8,'Delta','Lancia',1600,120,'Benzina','Anteriore',5,5,2010,'Berlina',20000),(9,'CLA','Mercedes-Benz',2000,180,'Diesel','Integrale',5,5,2019,'Sportiva',40000),(10,'500L','Fiat',1400,95,'Diesel','Integrale',5,5,2015,'Suv',20000),(11,'Yaris','Toyota',1200,75,'Diesel','Posteriore',5,4,2018,'Utilitaria',12500),(12,'Aygo X','Toyota',1000,65,'Metano','Posteriore',3,4,2022,'Utilitaria',9600),(13,'CH-R','Toyota',1800,105,'Ibrida','Integrale',5,5,2019,'Suv',25000),(14,'A1','Audi',2000,130,'Diesel','Posteriore',4,4,2014,'Utilitaria',30000),(15,'Clio','Renault',1400,97,'Benzina','Integrale',5,5,2012,'Utilitaria',15000),(16,'Megane','Renault',1800,110,'Ibrida','Integrale',5,5,2016,'Berlina',18500),(17,'Fiesta','Ford',1400,100,'Benzina','Posteriore',5,5,2014,'Utilitaria',14000),(18,'Serie 1','BMW',1800,120,'Benzina','Anteriore',3,4,2018,'Utilitaria',28000),(19,'330e','BMW',2500,292,'Ibrida','Posteriore',5,5,2022,'Sportiva',65000),(20,'520e','BMW',2500,202,'Diesel','Integrale',5,5,2017,'Berlina',55000);
/*!40000 ALTER TABLE `modello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optional`
--

DROP TABLE IF EXISTS `optional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optional` (
  `idoptional` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`idoptional`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optional`
--

LOCK TABLES `optional` WRITE;
/*!40000 ALTER TABLE `optional` DISABLE KEYS */;
INSERT INTO `optional` VALUES (1,'Cerchi in lega'),(2,'Vernice opaca'),(3,'Tettuccio panoramico'),(4,'Cerchi 18\'  '),(5,'Navigatore'),(6,'Vernice metallizzata'),(7,'Cerchi 19\''),(8,'Cerchi 20\''),(9,'Videocamera posteriore'),(10,'Sedili riscaldati'),(11,'Interni in pelle'),(12,'Cruise control'),(13,'Schermo touch screen'),(14,'Sensori parcheggio'),(15,'Fari full LED'),(16,'Sistema keyless'),(17,'Park assist'),(18,'Wi-fi'),(19,'Bluetooth'),(20,'Vetri oscurati'),(21,'Sospensioni adattative'),(22,'Allestimento sportivo'),(23,'Rear cross traffic alert');
/*!40000 ALTER TABLE `optional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `idordine` int NOT NULL,
  `data` date NOT NULL,
  `manager` int NOT NULL,
  `fornitore` int NOT NULL,
  PRIMARY KEY (`idordine`),
  KEY `Fk_fornisce_idx` (`fornitore`),
  KEY `Fk_ordine_manager_idx` (`manager`),
  CONSTRAINT `Fk_ordine_fornitore` FOREIGN KEY (`fornitore`) REFERENCES `fornitore` (`idfornitore`),
  CONSTRAINT `Fk_ordine_manager` FOREIGN KEY (`manager`) REFERENCES `manager` (`iddipendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,'2022-12-17',21,1),(2,'2022-12-29',22,8),(3,'2022-12-30',23,5),(4,'2022-12-23',21,8),(5,'2022-12-03',24,12);
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ripara`
--

DROP TABLE IF EXISTS `ripara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ripara` (
  `automobile` varchar(17) NOT NULL,
  `meccanico` int NOT NULL,
  `data` date NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`automobile`,`meccanico`,`data`),
  CONSTRAINT `Fk_ripara_automobile` FOREIGN KEY (`automobile`) REFERENCES `automobile` (`num_telaio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ripara`
--

LOCK TABLES `ripara` WRITE;
/*!40000 ALTER TABLE `ripara` DISABLE KEYS */;
INSERT INTO `ripara` VALUES ('1FMFU16588LA07890',31,'2022-04-10',400),('1FMFU16588LA07890',31,'2022-12-13',350),('1J4GK48K56W254695',32,'2022-12-30',700),('3MEFM08Z46R610072',31,'2022-06-14',600),('4T1BE46K08U758253',33,'2022-11-20',800);
/*!40000 ALTER TABLE `ripara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendita`
--

DROP TABLE IF EXISTS `vendita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendita` (
  `automobile` varchar(17) NOT NULL,
  `venditore` int NOT NULL,
  `cliente` int NOT NULL,
  `Data` date NOT NULL,
  `guadagno` double NOT NULL,
  PRIMARY KEY (`automobile`,`cliente`,`venditore`),
  KEY `Fk_vendita_cliente_idx` (`cliente`),
  KEY `Fk_vendita_venditore_idx` (`venditore`),
  CONSTRAINT `Fk_vendita_automobile` FOREIGN KEY (`automobile`) REFERENCES `automobile` (`num_telaio`),
  CONSTRAINT `Fk_vendita_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `Fk_vendita_venditore` FOREIGN KEY (`venditore`) REFERENCES `venditore` (`iddipendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendita`
--

LOCK TABLES `vendita` WRITE;
/*!40000 ALTER TABLE `vendita` DISABLE KEYS */;
INSERT INTO `vendita` VALUES ('1G1YY32G0X5129790',12,2,'2022-12-23',4500),('1J4GK48K56W254695',15,6,'2022-12-30',2000),('3MEFM08Z46R610072',11,3,'2022-04-12',321),('4T1BE46K08U758253',11,3,'2022-12-23',1500),('5N1AN08W86C509366',12,2,'2022-12-17',230),('WAUFFAFL5DN049703',11,1,'2022-12-12',3212),('WBAVC53548F010330',17,8,'2022-12-18',1800);
/*!40000 ALTER TABLE `vendita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venditore`
--

DROP TABLE IF EXISTS `venditore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venditore` (
  `iddipendente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `dataNascita` date NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `num_telefono` varchar(10) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `stipendio` double NOT NULL,
  `oreLavorative` int NOT NULL,
  PRIMARY KEY (`iddipendente`),
  UNIQUE KEY `Codice fiscale_UNIQUE` (`codiceFiscale`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venditore`
--

LOCK TABLES `venditore` WRITE;
/*!40000 ALTER TABLE `venditore` DISABLE KEYS */;
INSERT INTO `venditore` VALUES (10,'Manuele','Rinaldi','1987-07-24','ZWTNTL33R03H439G','3458101412','Bologna, Via Barone Lido 7','rinaldiManuele@gmail.com',1600,9),(11,'Mario','Rossi','1997-05-23','TTZNRW45S47E034H','348936454','Sondrio, Via San Giovanni 7','mariorossi@gmai.com',1500,9),(12,'Giovanni','Storti','1998-08-25','XYLMFZ09C05F683K','355659396','Rovigo, Via Sarita 3','stortig2@gmail.com',1600,9),(13,'Doriana','Martinelli','1989-01-19','QFCZLT21L06D391E','512366485','Padova, Piazza Vitali 1','doriana@gmail.com',1550,9),(14,'Lucrezia','Sartori','1998-09-26','NDFXLG58E47F362N','7604294164','Bologna, Borgo Marina Terme 3','lucreziasartori98@gmail.com',1600,9),(15,'Renzo','Sorrentino','1999-12-19','WQHNQG09C47L878Q','4884350425','Arezzo, Via Demis 3','sorrentino99@gmail.com',1600,9),(16,'Luca','Montanari','1984-11-14','BPHPRB33H04I769O','3077735196','La Spezia, Via Lido 8','lucam84@gmail.com',1650,9),(17,'Alessandro','Mancini','1991-09-26','DXCKPG44P44L645W','8362503213','Livorno, Via Romano 5','alemancini@gmail.com',1600,9),(18,'Claudio','Galli','1995-11-27','XRWPHP77T46L948P','3912334655','Bolzano, Borgo Karim 62','galloC95@gmail.com',1650,9),(19,'Ilaria','Damico','1982-01-27','ZXVJMX16L03A303H','3210252603','Bergamo, Via Monti 43','ilaria82@gmail.com',1550,9);
/*!40000 ALTER TABLE `venditore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-30 15:33:44
