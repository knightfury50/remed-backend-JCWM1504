-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db-michaeljcwm115
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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `zip_code` int NOT NULL,
  `credit` int NOT NULL,
  `id_sales` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idx` (`id_sales`),
  CONSTRAINT `fk_sales` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Weber, Jaquelyn B.','Thorn','62 28 207 0319',43046,1,4),(2,'Pope, Inez H.','Issime','62 57 548 9033',96389,2,9),(3,'Pittman, Fatima J.','Boncelles','62 43 360 3031',31228,2,6),(4,'Hoffman, Signe I.','Puchuncaví','62 97 420 6922',81236,6,4),(5,'Bennett, Kato B.','Rocky View','62 59 556 3271',85191,8,2),(6,'Hunter, Scarlet C.','Serramonacesca','62 90 204 1501',86534,9,1),(7,'Cooke, Mari I.','Lagundo/Algund','62 24 909 1654',48927,5,3),(8,'Powers, Dolan N.','Sennariolo','62 63 600 8832',27072,4,1),(9,'Mclean, Mannix Z.','BertrŽe','62 69 654 5301',18377,1,8),(10,'Barker, Charde E.','Gattatico','62 17 945 5360',17652,5,7),(11,'Avila, Scarlet O.','Huancayo','62 85 790 2901',52439,10,3),(12,'Terry, Phoebe J.','South Portland','62 95 127 5219',25285,2,10),(13,'Hoffman, Ina Q.','Saint-Denis','62 22 422 0802',40561,3,1),(14,'Reed, Xavier X.','Duffel','62 27 586 9066',65567,3,10),(15,'Perez, Thomas T.','Helmsdale','62 30 005 7989',87002,4,1),(16,'Beasley, Moses F.','Thalassery','62 92 189 0134',95441,1,8),(17,'Compton, Idola E.','San Clemente','62 34 956 2617',41706,10,10),(18,'Battle, Ashely Z.','Compiègne','62 63 525 9913',58467,3,4),(19,'Juarez, Hu B.','Westkerke','62 37 431 7120',41633,2,2),(20,'Armstrong, Germaine W.','Heule','62 80 759 7888',31657,10,2),(21,'Carr, Declan L.','Comox','62 78 045 2958',44118,1,8),(22,'Gibson, Regan I.','Fryazino','62 38 628 7093',51819,6,8),(23,'Lynch, Lewis X.','Pallavaram','62 17 087 2580',23292,7,7),(24,'Mcgee, Teagan R.','Obaix','62 87 977 4447',59298,1,6),(25,'Vang, Marny T.','Auckland','62 50 542 1457',17062,6,3),(26,'Johns, Magee U.','Avesta','62 55 270 9339',33934,10,4),(27,'Sharpe, Clementine X.','Lathuy','62 80 503 9183',13846,3,8),(28,'Terrell, Calista M.','St. Neots','62 84 249 5347',17037,4,6),(29,'Klein, Leigh V.','Nijmegen','62 38 766 0422',30427,3,7),(30,'Watkins, Lynn F.','North Cowichan','62 90 672 8918',81038,9,8),(31,'Burton, Uriah Y.','San Cristóbal de la Laguna','62 64 192 4169',34618,9,6),(32,'Gonzalez, Alexander G.','Tiel','62 10 690 2420',54135,6,9),(33,'Flowers, Theodore Y.','Albiano','62 36 805 6942',26778,6,8),(34,'Hudson, Noble K.','Abbateggio','62 76 588 5361',74151,7,7),(35,'Blake, Ignacia N.','Weyburn','62 80 166 6592',39736,7,10),(36,'Castaneda, Patrick L.','Lions Bay','62 51 317 8149',26386,5,1),(37,'Ramos, Hakeem B.','New Glasgow','62 49 052 3087',14412,2,8),(38,'Booker, Preston X.','Keswick','62 39 542 6639',69631,2,5),(39,'Richard, Matthew Q.','Fort Smith','62 14 017 5727',52041,6,5),(40,'Hebert, Flynn T.','Maryborough','62 40 116 6499',62322,5,7),(41,'Serrano, Aaron G.','Beverley','62 40 959 1937',53050,6,6),(42,'House, Jolene H.','Leersum','62 29 978 8443',85461,5,2),(43,'Hancock, Nicholas T.','Laken','62 93 174 2097',97086,8,3),(44,'Quinn, Xena D.','Mumbai','62 29 734 2494',64098,8,9),(45,'Nielsen, Colby S.','Montpellier','62 90 806 9079',57197,8,8),(46,'Andrews, Quamar L.','Naushahro Firoze','62 40 086 3233',61758,4,8),(47,'Pennington, Ainsley F.','San Massimo','62 67 224 9925',90518,3,10),(48,'Stevens, Emerson W.','Foz do Iguaçu','62 41 700 7445',66632,6,3),(49,'Hawkins, Stephen Z.','Yongin','62 60 635 4281',24946,3,10),(50,'Rodriquez, Imelda K.','Eschwege','62 63 291 8955',34855,1,7),(51,'Winters, Pandora C.','Chonchi','62 44 598 0889',98048,9,4),(52,'Santiago, Lavinia S.','Vietri di Potenza','62 32 127 5935',64805,1,5),(53,'Benton, Phelan X.','Eghezee','62 14 727 9835',34016,9,5),(54,'Adkins, Malachi R.','Kalat','62 56 968 4798',20684,10,8),(55,'Graves, Maxwell G.','Gorontalo','62 81 947 3122',53219,5,1),(56,'Kemp, Griffin X.','Kruibeke','62 26 504 1956',37591,1,4),(57,'Ortiz, Kay D.','Pica','62 70 946 9928',88534,6,3),(58,'Gallegos, Castor Z.','Beaconsfield','62 76 719 3760',70833,7,8),(59,'Meyer, Kitra T.','Copertino','62 77 465 2045',32014,2,6),(60,'Lara, Isadora K.','Midway','62 15 147 4814',43790,7,5),(61,'Valentine, Julian K.','Vietri di Potenza','62 77 000 7459',48215,10,10),(62,'Alford, Rahim E.','Ellikom','62 66 820 7438',56988,8,7),(63,'Wilcox, Xavier F.','Dhuy','62 94 145 0996',13011,2,8),(64,'Anderson, Petra Y.','Destelbergen','62 63 027 7813',69076,10,4),(65,'Solis, Rachel D.','Silverton','62 23 005 8134',91385,1,10),(66,'Raymond, Quamar B.','San Pedro de Atacama','62 61 393 8527',29407,9,10),(67,'Fulton, Tamara D.','Lakki Marwat','62 74 346 4774',38713,8,10),(68,'Byrd, Hashim A.','Zerkegem','62 47 815 1685',45582,3,9),(69,'Bartlett, Hector J.','Mottola','62 91 454 0212',70220,3,7),(70,'Wilcox, Xena J.','Legal','62 44 529 6934',21740,4,7),(71,'Benton, Wang D.','Quedlinburg','62 96 488 3268',49702,4,5),(72,'Curry, Portia R.','BiercŽe','62 21 724 2635',93734,9,6),(73,'Irwin, Yeo A.','Leuze','62 87 696 5113',10071,5,3),(74,'Stephenson, Griffin K.','Omsk','62 71 144 1804',23946,8,3),(75,'Shaw, Kato D.','Cumberland','62 89 151 3172',35525,5,7),(76,'Hansen, Bert E.','Cambrai','62 82 140 0019',60688,3,1),(77,'Farley, Myles F.','Nicolosi','62 25 689 5283',29610,10,2),(78,'Cotton, Lani F.','Pushchino','62 74 047 6424',80797,9,2),(79,'Drake, Alexander N.','Reading','62 31 648 3020',54017,8,6),(80,'Hartman, Quentin Q.','Alto Hospicio','62 89 043 5267',51597,4,4),(81,'Meyer, Brianna K.','Belogorsk','62 78 029 6794',56762,10,3),(82,'England, Zelenia Y.','Ranst','62 10 837 5956',59843,7,8),(83,'Clark, Dai M.','Essen','62 13 581 0960',34194,8,5),(84,'Phillips, Hedley E.','Vancouver','62 75 696 2759',34829,9,8),(85,'Lindsey, Hakeem K.','Pitlochry','62 60 212 0442',97287,9,3),(86,'Poole, Guy M.','Sioux City','62 83 440 6033',60251,8,1),(87,'Schneider, Holmes M.','Barnstaple','62 77 400 4425',36948,3,5),(88,'Wilkins, Aidan Z.','Kalken','62 49 029 4419',17190,4,9),(89,'Rutledge, Madeson J.','Lerwick','62 44 830 3794',12872,7,5),(90,'Estes, Yvette Q.','Burin','62 37 741 3388',63097,4,7),(91,'Witt, Zena B.','Saint-Pierre','62 67 368 4808',91255,3,2),(92,'Stephenson, Larissa T.','Pyeongtaek','62 62 316 0264',73242,8,9),(93,'Foreman, Tiger P.','Campomarino','62 19 468 9583',50972,3,9),(94,'Acevedo, Aurora W.','Villafalletto','62 91 449 9524',26556,2,6),(95,'Sutton, Basia U.','Sierra Gorda','62 33 938 1292',20846,6,10),(96,'Mclean, Reed S.','Saint-Brieuc','62 35 129 9050',66115,9,9),(97,'Carpenter, Lance V.','Saint-Denis','62 94 416 1716',41733,9,2),(98,'Olson, Nerea V.','Wolkrange','62 92 701 8495',42070,4,10),(99,'Bryant, Chloe O.','Vegreville','62 57 678 0966',76377,5,8),(100,'Nichols, Cyrus W.','Laakirchen','62 96 379 9228',29094,6,7);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(45) NOT NULL,
  `atasan` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES (1,'Presiden Direktur',NULL),(2,'Direktur Penjualan',1),(3,'Manager BSD',2),(4,'Manager JKT',2),(5,'Manager BDG',2),(6,'Sales Leader BSD',3),(7,'Sales Leader JKT',4),(8,'Sales Leader BDG',5),(9,'Sales RP BSD',6),(10,'Sales RP JKT',7),(11,'Slaes RP BDG',8);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `id_jabatan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jabatan_idx` (`id_jabatan`),
  CONSTRAINT `fk_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Bauer, Cole Z.','Missoula','62 13 739 0655',1),(2,'Carver, Quemby O.','Talagante','62 66 450 8986',2),(3,'Wall, Moana B.','Bismil','62 22 191 7056',3),(4,'Juarez, Jessica T.','Casoli','62 72 244 1941',4),(5,'Melton, Clarke O.','New Haven','62 74 245 0006',5),(6,'Ashley, Maile E.','Auburn','62 41 100 2723',6),(7,'Mcgowan, Mannix K.','Rutten','62 51 492 9630',7),(8,'Curry, Kieran Z.','Zapallar','62 56 976 6660',8),(9,'Faulkner, Ahmed G.','Futaleufú','62 18 502 5882',7),(10,'Benjamin, Hector M.','Cap-Saint-Ignace','62 17 072 2042',9),(11,'Roberson, Abra W.','Sainte-Marie-Chevigny','62 64 034 7320',8),(12,'Lawson, Rhona U.','Bernburg','62 93 977 1122',8),(13,'Bernard, Gloria V.','Saltcoats','62 39 914 2392',1),(14,'Dorsey, Tate W.','Bihain','62 78 635 7771',2),(15,'Gibson, Fallon C.','Bhusawal','62 58 218 0305',7),(16,'Hodges, Inez S.','Tredegar','62 29 612 6115',1),(17,'Mccormick, Ignatius F.','Zwolle','62 80 425 0058',9),(18,'Diaz, Mari B.','Freising','62 13 104 3503',3),(19,'Faulkner, Ray D.','Girifalco','62 63 792 4898',5),(20,'Burke, Elvis V.','Jerzu','62 64 505 7647',1),(21,'Hunter, Ian Y.','Bevel','62 77 652 3479',10),(22,'Waters, Nehru K.','Orizaba','62 34 263 2979',5),(23,'Stewart, Audra O.','Aalst','62 72 458 3935',10),(24,'Cannon, Maggie B.','North Las Vegas','62 15 121 5382',10),(25,'Mccarty, Chancellor F.','Sobral','62 90 678 2766',2),(26,'Sherman, Indira D.','Kotlas','62 29 262 3199',5),(27,'Tillman, Remedios X.','Blairgowrie','62 42 622 7697',3),(28,'Steele, Joan E.','Ancaster Town','62 70 505 8142',2),(29,'Butler, Simone J.','Ketchikan','62 53 156 1315',3),(30,'Brown, Rafael G.','Inuvik','62 68 244 9435',5),(31,'Lane, Aileen X.','Pictou','62 11 793 1828',4),(32,'Riggs, Macey W.','Santiago','62 72 186 1530',1),(33,'Miranda, Clio P.','Morinville','62 16 946 7806',6),(34,'Clay, Dillon X.','Milena','62 37 295 1216',5),(35,'Donovan, Ramona P.','Sagar','62 56 902 5658',9),(36,'Merrill, Ivor J.','São José','62 83 708 6418',4),(37,'Christensen, Danielle A.','Xhoris','62 84 416 0247',4),(38,'Rice, Allegra Y.','Velletri','62 62 622 8096',4),(39,'Battle, Tamara P.','Tezze sul Brenta','62 37 951 7397',6),(40,'Carr, Castor Q.','Batiscan','62 57 518 4051',5);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:19:32
