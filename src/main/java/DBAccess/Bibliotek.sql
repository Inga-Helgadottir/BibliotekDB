CREATE DATABASE  IF NOT EXISTS `Bibliotek` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Bibliotek`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Bibliotek
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `BogTabel`
--

DROP TABLE IF EXISTS `BogTabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BogTabel` (
  `idBogTabel` int NOT NULL AUTO_INCREMENT,
  `Forfatter` varchar(45) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Forlag` varchar(45) NOT NULL,
  `Udgivelsesdato` datetime DEFAULT NULL,
  PRIMARY KEY (`idBogTabel`),
  UNIQUE KEY `idBogTabel_UNIQUE` (`idBogTabel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BogTabel`
--

LOCK TABLES `BogTabel` WRITE;
/*!40000 ALTER TABLE `BogTabel` DISABLE KEYS */;
INSERT INTO `BogTabel` VALUES (1,'Anna Fredriksson','Et mere enkelt liv','Gyldendal','2020-03-16 09:44:52'),(2,'Simone de Beauvoir','De uadskillelige','Gyldendal','1994-03-16 09:46:19'),(3,'Ken Follett','Aftentid og morgengry','Gyldendal','2018-07-18 09:47:40'),(4,'Helle Helle','BOB','Gutkind','2020-12-16 09:49:07'),(5,'Anja Otterstrøm','Lær dansk med Klempaa','FORLAGET KlingBerg',NULL);
/*!40000 ALTER TABLE `BogTabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KundeTabel`
--

DROP TABLE IF EXISTS `KundeTabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KundeTabel` (
  `idKundeTabel` int NOT NULL AUTO_INCREMENT,
  `KundeNavn` varchar(45) NOT NULL,
  `Adresse` varchar(45) NOT NULL,
  `PostNr` varchar(45) NOT NULL,
  PRIMARY KEY (`idKundeTabel`),
  UNIQUE KEY `idKundeTabel_UNIQUE` (`idKundeTabel`),
  KEY `fk_KundeTabel_PostnrTabel1_idx` (`PostNr`),
  CONSTRAINT `fk_KundeTabel_PostnrTabel1` FOREIGN KEY (`PostNr`) REFERENCES `PostnrTabel` (`idPostnrTabel`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KundeTabel`
--

LOCK TABLES `KundeTabel` WRITE;
/*!40000 ALTER TABLE `KundeTabel` DISABLE KEYS */;
INSERT INTO `KundeTabel` VALUES (1,'Brian Beach','4366 Adipiscing Ave','2800'),(2,'Herrod Thompson','P.O. Box 172, 1136 Massa Rd.','2800'),(3,'Victor Whitehead','939-5150 Elit Street','2800'),(4,'Michael Phillips','3548 Mi Avenue','3760'),(5,'Nolan Rivas','296-7943 Felis. Ave','2820'),(6,'Merrill Nolan','8762 Diam Rd.','3237'),(7,'Eaton Rivas','359-684 Rhoncus. St.','2800'),(8,'Merrill Garner','233-5334 Ornare, Av.','2800'),(9,'Abel Wood','Ap #384-2001 Cursus Road','3760'),(10,'Kermit Lambert','P.O. Box 184, 8115 Augue Avenue','2800'),(11,'Hiram Elliott','4390 Fusce St.','3237'),(12,'Zachary Pennington','890-8475 Natoque Street','2345'),(13,'Akeem Gonzalez','P.O. Box 432, 8094 Diam Ave','2820'),(14,'Jakeem Mooney','Ap #439-2924 Orci St.','3237'),(15,'Hamilton Mitchell','6784 Molestie. Avenue','3760'),(16,'Nissim Hutchinson','7074 Phasellus Rd.','2820'),(17,'Harding Rice','Ap #579-3825 Est. Avenue','3760'),(18,'Neil Gibson','P.O. Box 157, 502 Nec Rd.','2820'),(19,'Forrest Hart','4461 Vulputate, St.','2800'),(20,'Galvin Alexander','4353 Turpis St.','2800'),(21,'Brenden Mcmahon','590 Ac Ave','2345'),(22,'Byron Silva','Ap #413-2553 Ut Av.','2345'),(23,'Hiram Buckley','Ap #898-1752 Eget St.','2345'),(24,'Nolan Jensen','Ap #215-1338 Taciti Street','3237'),(25,'Chaim Erickson','Ap #737-752 Dictum Ave','3760'),(26,'Keaton Sellers','3525 Feugiat St.','3760'),(27,'Vladimir Bush','Ap #562-4972 Mi St.','2800'),(28,'Allistair Bradshaw','4013 Morbi Ave','3760'),(29,'Cain Mcknight','4000 Nunc St.','3237'),(30,'Peter Mayo','8368 Fringilla. Road','2800'),(31,'Boris Stevens','710-8565 Aliquam Street','2800'),(32,'Tate Cherry','Ap #555-7741 Odio Road','2345'),(33,'Ethan Cox','Ap #786-2296 Lectus Avenue','3237'),(34,'Raja Diaz','1607 Suspendisse Road','2820'),(35,'Vance Lang','Ap #466-2100 Accumsan Av.','3237'),(36,'Grant Pierce','Ap #283-3386 Dis Rd.','3760'),(37,'Dieter Burnett','Ap #131-515 Et, Street','2345'),(38,'Keith Fry','Ap #765-1064 Risus, Rd.','2820'),(39,'Arden Moon','P.O. Box 994, 1672 Feugiat Av.','2345'),(40,'Herrod Atkins','Ap #185-5685 Risus. Street','3237'),(41,'Oscar Roman','7403 Libero Rd.','3760'),(42,'Gannon Lawson','8081 Amet St.','2345'),(43,'Brent Hinton','241-2085 Eget Ave','2800'),(44,'Aristotle Pickett','8988 Non, Road','2820'),(45,'Brandon Wright','Ap #643-8025 Nulla Road','2820'),(46,'Keefe Harding','Ap #656-5580 Enim St.','3237'),(47,'Phelan Mueller','Ap #858-2363 Nisl Rd.','2820'),(48,'Chester Reid','221-9834 Cursus. St.','3760'),(49,'Samson Head','5100 Nonummy St.','2820'),(50,'Dexter Bond','902-4771 Accumsan Rd.','2800'),(51,'Clarke Mccormick','365-1567 Donec Road','2345'),(52,'Xanthus Rhodes','P.O. Box 709, 8249 Dui, Road','2800'),(53,'Nolan Mckinney','Ap #927-5762 Neque. Street','2345'),(54,'Harding Bradford','P.O. Box 710, 4276 Donec St.','2345'),(55,'Lewis Bradshaw','P.O. Box 793, 4223 In Road','3237'),(56,'Felix Coffey','Ap #841-7378 Tellus Av.','2345'),(57,'Yasir Jacobs','Ap #309-1954 Nunc Rd.','3237'),(58,'Kato Moran','9218 Aliquam Avenue','2345'),(59,'Malik Blair','150-4624 Phasellus Road','2800'),(60,'Bradley Lynch','218-9398 Donec Road','3760'),(61,'Thane Talley','481-5262 Egestas, Avenue','2800'),(62,'Nasim Bonner','939 Lectus Av.','3237'),(63,'Solomon Wallace','441-7448 Nunc Ave','3760'),(64,'Guy Mcdaniel','P.O. Box 196, 345 Suspendisse Ave','2820'),(65,'Phillip Hall','Ap #317-538 Viverra. Avenue','2820'),(66,'Leonard Ortega','P.O. Box 711, 7385 Cursus Rd.','2345'),(67,'Tarik Haynes','P.O. Box 490, 9626 A, Rd.','2800'),(68,'Nehru Watts','Ap #862-2181 Elit Road','2345'),(69,'Merrill Ray','Ap #861-2090 Id Rd.','3760'),(70,'Julian Oneal','2844 Ut Road','3237'),(71,'Talon Jacobson','Ap #811-4077 Rutrum St.','3237'),(72,'Lars Sutton','452-4809 Lobortis, St.','3760'),(73,'Laith Ashley','426-3212 Euismod Rd.','3760'),(74,'Steel Estrada','4986 Quis Avenue','2820'),(75,'Kevin Allen','1065 Nullam St.','2820'),(76,'Preston Anthony','1432 Risus Road','3237'),(77,'Jeremy Kirkland','Ap #652-6082 Magna Street','2345'),(78,'Harper Lowery','Ap #344-7312 Semper Rd.','3760'),(79,'Aaron Bird','9405 Eget Rd.','2345'),(80,'Chancellor England','P.O. Box 589, 5701 Ipsum. Avenue','2800'),(81,'Ferris Goodman','499-3176 Eget St.','2345'),(82,'Amir Palmer','6432 Dis Rd.','3237'),(83,'Berk Middleton','507 Suspendisse Av.','2345'),(84,'Jacob Beard','977-660 Non, Rd.','3237'),(85,'Brian Church','Ap #553-1314 Praesent Avenue','2820'),(86,'Solomon Michael','Ap #539-8853 Quis Av.','3237'),(87,'Jared Hahn','3964 Sapien Rd.','3237'),(88,'Abel Rose','Ap #140-6773 Amet Av.','3237'),(89,'Gary Hyde','P.O. Box 648, 4944 Vitae Avenue','2800'),(90,'Lyle Meyer','1837 A, Street','2345'),(91,'Jameson Cash','Ap #356-4192 Convallis Av.','2820'),(92,'Asher Fernandez','381-7895 Ornare. Av.','2345'),(93,'Donovan Frederick','Ap #158-8463 Libero Road','2800'),(94,'Mason Singleton','Ap #937-6737 Risus Avenue','2800'),(95,'Wade Burt','739 Phasellus Ave','3237'),(96,'Devin Caldwell','Ap #536-3812 Laoreet Ave','2800'),(97,'Elton Bennett','9988 Mi Rd.','2820'),(98,'Kuame Savage','5167 Duis Av.','3760'),(99,'Jacob Abbott','4823 Consectetuer, Av.','3760'),(100,'Paki Blanchard','P.O. Box 308, 6789 Feugiat St.','2345'),(101,'Nikolaj','Mosegårdsvej 152','2820'),(102,'Levi Flynn','P.O. Box 205, 6887 Faucibus St.','3237'),(103,'Baxter Merritt','P.O. Box 985, 9490 Ornare Street','3237'),(104,'Axel Hood','7471 Luctus, Avenue','3760'),(105,'Cyrus Cohen','4825 Quis Rd.','3760'),(106,'Nehru Sweeney','310-1627 Faucibus Avenue','2820'),(107,'Noah Holder','Ap #943-9678 Aliquet Street','3760'),(108,'Tanek Perry','207-5028 Porttitor Rd.','2345'),(109,'Buckminster Shelton','204-5492 Leo. Ave','2345'),(110,'Hall Valencia','248-8004 Parturient Av.','2800'),(111,'Allen Santiago','246-6868 Et Rd.','2800'),(112,'Sawyer Cole','Ap #588-9669 Nulla Av.','3237'),(113,'Lance Bell','732 Consequat St.','2820'),(114,'Geoffrey Gutierrez','Ap #929-2154 Mi. Rd.','2820'),(115,'Elmo Rich','648-5189 Vitae Rd.','2345'),(116,'Chandler Lester','166-2050 Ante Street','2345'),(117,'Acton Huff','Ap #456-5202 Dolor. Avenue','2820'),(118,'Alec Blake','184-6960 Ultricies St.','3237'),(119,'Jesse Mason','607 Non, St.','2345'),(120,'Rashad Klein','555-610 Risus. St.','2800'),(121,'Vladimir Fowler','592-2685 Nisi Street','2345'),(122,'Andrew Beach','Ap #779-2320 Lectus Road','2820'),(123,'Merritt Melendez','617-2442 Pharetra, Ave','3760'),(124,'Amal Cash','7232 Donec Road','2800'),(125,'Philip Vinson','P.O. Box 833, 759 Id, St.','2800'),(126,'Uriah Acevedo','Ap #376-6131 Sed Street','2800'),(127,'Marshall Wilkinson','3517 Fermentum Av.','2345'),(128,'Baker Potter','Ap #997-2790 Ante Av.','2800'),(129,'Tyler Norman','619-5874 Quisque St.','2820'),(130,'Declan Castaneda','Ap #591-4068 Viverra. Ave','3760'),(131,'Dante Farrell','1529 Felis Rd.','3237'),(132,'Mufutau Lloyd','178-2145 Non St.','2800'),(133,'Phelan Dillon','5553 Donec Rd.','2820'),(134,'Matthew Hammond','P.O. Box 526, 238 Lorem Avenue','2345'),(135,'Garth Tran','2634 Accumsan Avenue','2800'),(136,'Clinton Odonnell','2773 Mattis Avenue','3237'),(137,'Kirk Nixon','P.O. Box 379, 3570 Litora Rd.','2800'),(138,'Hiram Barber','Ap #829-4614 Nunc Rd.','2345'),(139,'Tarik Cortez','P.O. Box 720, 9140 Blandit Av.','2800'),(140,'Ronan Grimes','Ap #817-1640 Integer Road','2820'),(141,'Price Zamora','Ap #727-1914 Nunc St.','3237'),(142,'Brandon Mclaughlin','P.O. Box 356, 2267 Vulputate Av.','3760'),(143,'Ulric Petersen','Ap #292-919 Augue Rd.','2345'),(144,'Ivor Vargas','6727 Faucibus Rd.','2345'),(145,'Yasir Fisher','Ap #576-7091 Commodo St.','2820'),(146,'Gary Silva','P.O. Box 431, 3498 Lacus. Rd.','2345'),(147,'Mark Massey','5240 Odio, Rd.','2800'),(148,'Brady Knapp','P.O. Box 565, 806 Sem Ave','2800'),(149,'Palmer Santana','Ap #812-6160 Vitae Av.','3237'),(150,'Ignatius Moody','P.O. Box 525, 5739 Felis. St.','2800'),(151,'Nathaniel Mcconnell','805-8640 Dignissim Rd.','3760'),(152,'Tad Whitley','Ap #313-3341 Erat Street','2820'),(153,'Merrill England','722-9072 Lectus Rd.','2820'),(154,'Boris Ward','P.O. Box 648, 3746 Aliquet Avenue','3237'),(155,'Kasper Jimenez','P.O. Box 480, 2325 Tristique Road','2800'),(156,'Avram Hester','Ap #377-1650 Velit Rd.','3237'),(157,'Jerome Cunningham','Ap #717-4532 Non Ave','2345'),(158,'George Bird','P.O. Box 541, 3093 Et, St.','2345'),(159,'Thaddeus Tran','P.O. Box 534, 5206 Donec Ave','3760'),(160,'Macon Dudley','868-1516 Sit Rd.','3760'),(161,'Len Rivers','7133 Tortor. Street','2820'),(162,'Jeremy Shaffer','9337 Egestas St.','2820'),(163,'Keane Bishop','429-2829 Praesent Ave','3760'),(164,'Brenden Matthews','P.O. Box 377, 6886 Elementum, St.','2800'),(165,'Denton Murphy','P.O. Box 538, 5542 Ipsum Rd.','2820'),(166,'Alden Kirk','5965 Tortor. Avenue','3237'),(167,'Logan Head','Ap #863-3074 Malesuada Street','3237'),(168,'Gil Hahn','295-223 A Ave','2345'),(169,'Roth Riley','Ap #194-5968 Libero Avenue','3237'),(170,'Jarrod Justice','269-9106 Netus Ave','3760'),(171,'Colton Huffman','P.O. Box 580, 9974 Cras Ave','3237'),(172,'Ethan Roberson','7778 Sapien. Rd.','3237'),(173,'Brenden Finley','123-2458 Posuere St.','3237'),(174,'Wyatt Tate','Ap #595-3185 Ante Street','2345'),(175,'Lars Sanders','892-4010 Augue Road','3237'),(176,'Evan Ayers','P.O. Box 511, 9832 Tincidunt Road','3760'),(177,'Marvin Beck','185-3064 Felis, Road','3760'),(178,'Steven Callahan','7481 Eleifend. Road','2345'),(179,'Simon Lee','Ap #946-3384 Nunc Avenue','3237'),(180,'Zahir Morales','9380 Dictum Av.','3237'),(181,'Basil Cameron','673-8184 Nullam Road','2800'),(182,'Chandler Mccray','202-6241 Magna Rd.','2345'),(183,'Eaton Blanchard','Ap #589-1351 Aliquam Rd.','3237'),(184,'Wallace Orr','2512 Libero. Av.','3760'),(185,'Steel Fuller','325-7841 Porttitor St.','2820'),(186,'Philip Perry','398-4024 Mauris Ave','2800'),(187,'Blaze Snider','Ap #658-6399 Mollis. Av.','3760'),(188,'Cody Moon','P.O. Box 626, 421 Tellus Road','2800'),(189,'Octavius Rocha','Ap #506-6285 At, Road','3760'),(190,'Keith Peters','Ap #421-3657 Nibh Av.','2820'),(191,'Caesar Jensen','P.O. Box 922, 936 Ipsum. Ave','2345'),(192,'Kenneth Stanton','490-337 Parturient Street','3760'),(193,'Roth Buckley','6172 Augue Ave','3237'),(194,'Steel Benjamin','2215 Accumsan Av.','3760'),(195,'Sawyer Mathews','Ap #875-9321 Enim. Avenue','3237'),(196,'Alec Logan','4899 Dictum Avenue','2820'),(197,'Yasir Odom','172-4724 Feugiat. St.','2820'),(198,'Lucas Fletcher','767-2905 Mollis. Street','3760'),(199,'Otto Case','Ap #675-3894 Integer St.','3760'),(200,'Dean Byrd','P.O. Box 678, 8508 Justo Avenue','2820'),(201,'Joel Keith','Ap #373-4139 Cum St.','3237'),(202,'Garrett Wooten','3684 Sagittis. St.','2345'),(203,'Colin Goodman','812-6464 Nulla St.','2800'),(204,'Malachi Sawyer','Ap #734-7267 Lorem Rd.','3237'),(205,'Thaddeus Strong','397-3602 Morbi St.','2345'),(206,'Kenneth Burns','815-6653 Justo. St.','2820'),(207,'Damon Le','714-1052 Tortor. Avenue','2820'),(208,'Porter Elliott','617-8340 Est Avenue','2800'),(209,'Raphael Baker','Ap #564-2815 Mattis Ave','2800'),(210,'Dustin Curry','Ap #584-3933 Tempor, Ave','3237'),(211,'Ira Black','P.O. Box 967, 6878 Nec Ave','3760'),(212,'Cadman Moreno','1129 Maecenas Ave','3760'),(213,'Patrick Rivers','Ap #465-7409 Augue Rd.','3237'),(214,'Lee Sampson','9374 Sed Rd.','2800'),(215,'Channing Bond','Ap #688-3778 Scelerisque Ave','2820'),(216,'Basil Baxter','Ap #597-3623 Eleifend Rd.','2345'),(217,'Jacob Nunez','726-7753 Magna. Road','2800'),(218,'Hashim Serrano','264 Ligula. Rd.','2345'),(219,'Dexter Carr','976-1875 Morbi Street','2820'),(220,'Norman Sims','P.O. Box 667, 9047 Id, Av.','3760'),(221,'Flynn Landry','P.O. Box 685, 7556 Adipiscing St.','2800'),(222,'Travis Harding','Ap #993-3839 Donec Street','3760'),(223,'Murphy Strickland','525 Dignissim. Avenue','3237'),(224,'John Mooney','694-1264 In Road','3237'),(225,'Keegan Travis','P.O. Box 393, 6048 Sodales Rd.','3237'),(226,'Edan Frost','973-4739 Vel Street','3760'),(227,'Uriah May','P.O. Box 908, 7177 Lacus. Rd.','3237'),(228,'Griffin Valencia','423-6327 Consectetuer Avenue','3760'),(229,'Carlos Cooley','664-8237 Vivamus Ave','2820'),(230,'Leo Davenport','865-6146 Ac Avenue','3760'),(231,'Garth Rocha','P.O. Box 953, 3432 Ante St.','2800'),(232,'Hunter Haynes','2617 Nulla Ave','2800'),(233,'Nash Barlow','Ap #512-7031 Ligula. Av.','2345'),(234,'Cyrus Lang','Ap #642-8915 Consectetuer Rd.','2800'),(235,'Jonas Bass','3959 Vestibulum Road','3760'),(236,'Jermaine Melton','Ap #723-6449 Cubilia Ave','2800'),(237,'Hyatt Fischer','487-798 Bibendum Street','3760'),(238,'Hayes Berry','Ap #223-3788 Nulla St.','3760'),(239,'Trevor Thomas','134-5256 Suspendisse Av.','2345'),(240,'Ezekiel Rios','9679 Elementum, Rd.','2345'),(241,'Grady Caldwell','P.O. Box 227, 6503 Turpis. Rd.','2800'),(242,'Cameron Gill','Ap #892-8497 Suspendisse Street','2345'),(243,'Kasimir Burnett','939-6496 Enim St.','3760'),(244,'Castor Kirby','P.O. Box 998, 216 Eros Rd.','3760'),(245,'Adrian Phillips','922-3420 Accumsan Ave','2800'),(246,'Joshua Smith','4047 Justo. Rd.','2345'),(247,'Vladimir Rosales','P.O. Box 937, 7377 Et, Rd.','3760'),(248,'Moses Meyer','Ap #389-9066 Sapien, Avenue','3237'),(249,'Ray Bush','Ap #519-7231 Nunc. St.','2345'),(250,'Lester Mccarty','P.O. Box 608, 327 Posuere Road','3760'),(251,'Xanthus Haynes','364-4431 Montes, Ave','2345'),(252,'Jesse Dickson','633-2999 Nulla. Rd.','2345'),(253,'Vincent Hood','9224 Suspendisse Ave','2345'),(254,'Kadeem Hudson','P.O. Box 722, 2914 Nulla Avenue','3760'),(255,'Ahmed Melendez','981-4901 Facilisis St.','2800'),(256,'Jin Keith','P.O. Box 612, 2477 Nec Road','2820'),(257,'Jared Fowler','P.O. Box 455, 5186 Vivamus Ave','3237'),(258,'Byron Wyatt','4116 Sem, Avenue','2345'),(259,'Ross Sanders','P.O. Box 166, 9306 Sagittis. St.','2345'),(260,'Joel Pruitt','P.O. Box 709, 1596 Eget, Avenue','3760'),(261,'Seth Hunter','961-7618 In Av.','2800'),(262,'Orlando Pate','Ap #756-4406 Ligula. Rd.','2820'),(263,'Patrick Heath','481-5373 Lorem Av.','2800'),(264,'Connor Sampson','189-2213 Ut St.','3760'),(265,'Colby Pruitt','P.O. Box 111, 1890 Quam, St.','3237'),(266,'Basil Frank','2167 Eu, St.','2800'),(267,'Oscar Long','Ap #347-4164 Felis Rd.','2820'),(268,'Merrill Wolfe','476-206 Phasellus St.','2820'),(269,'Nolan Moran','361-6085 Tincidunt Street','3760'),(270,'Cade Ford','326-7320 Proin Rd.','3760'),(271,'Malcolm Higgins','Ap #312-9318 Congue Av.','3760'),(272,'Chase Hobbs','319-1723 Ac Road','2345'),(273,'Ignatius Andrews','Ap #198-2029 Congue Rd.','2345'),(274,'Mason Gomez','363-5028 Libero. Rd.','3237'),(275,'Graham Zamora','985 Imperdiet Street','3760'),(276,'Adrian Sanders','P.O. Box 690, 3210 Accumsan Ave','3760'),(277,'Cole Berry','Ap #669-7262 In Rd.','2820'),(278,'Driscoll Dunn','110-4538 Donec Avenue','3760'),(279,'George Myers','7247 Placerat Av.','3760'),(280,'Demetrius Graves','463-1358 A St.','2345'),(281,'Adam Barron','2750 Odio Av.','2345'),(282,'Clark Maynard','9290 Urna, St.','3760'),(283,'Eric Buchanan','P.O. Box 518, 4204 Est, Street','3237'),(284,'Elmo Lawrence','Ap #663-3217 Ac Rd.','2820'),(285,'Mannix Sweeney','P.O. Box 639, 6680 Nec Avenue','2345'),(286,'Curran Shaw','Ap #694-4198 Nec Road','2800'),(287,'Callum Church','985-9146 Feugiat Road','2820'),(288,'Macon Baxter','7837 Semper St.','2820'),(289,'Paul Tillman','P.O. Box 248, 6133 Leo, St.','3237'),(290,'Mason Shannon','P.O. Box 428, 6458 Sit Avenue','3237'),(291,'Wallace Stanton','Ap #988-3340 Lorem Road','2345'),(292,'Alec Gould','Ap #675-139 Molestie St.','2800'),(293,'Hayes Lee','7887 Blandit Rd.','3237'),(294,'Adam Robles','404-4314 Pede, Avenue','2345'),(295,'Lucas Branch','9304 Ut, St.','2345'),(296,'Salvador Smith','Ap #443-8317 Nonummy Road','2345'),(297,'Lionel Charles','Ap #996-753 Posuere Rd.','3237'),(298,'Daniel Bowers','5912 Adipiscing Road','2800'),(299,'Philip Williamson','1652 Nulla Av.','2800'),(300,'Oscar Barry','222-473 Quam St.','2800'),(301,'Brent Hines','2391 Non Avenue','2345'),(302,'Caesar Vargas','5322 Vel Avenue','2345'),(303,'Edan Walton','539-4340 Volutpat Ave','2820'),(304,'Philip Parsons','Ap #785-751 Enim, St.','3760'),(305,'Blake Gibson','905-1765 Lectus Av.','2345'),(306,'Bernard Mcguire','P.O. Box 131, 1414 Cursus, Av.','3237'),(307,'Ian Mendez','8595 Nisi St.','2820'),(308,'Zachary Castillo','2293 Sapien. Rd.','3760'),(309,'Cain York','P.O. Box 183, 434 Convallis Ave','3760'),(310,'Amos Hubbard','Ap #781-2648 Enim. Ave','2345'),(311,'William Mcgowan','P.O. Box 324, 7665 Risus. Street','2820'),(312,'Elijah Hyde','1168 Pellentesque, St.','3237'),(313,'Vance Russell','3887 Sodales. St.','2345'),(314,'Lamar Walker','6867 Enim Street','2345'),(315,'Harper Rogers','9966 Aliquam Street','3760'),(316,'Nolan Christian','879-4013 Cursus Avenue','2820'),(317,'Buckminster Woods','Ap #922-9549 Diam. Ave','2800'),(318,'Kieran Garza','6465 Felis. Ave','3760'),(319,'Tate Beck','7004 Integer Av.','2800'),(320,'Paul Kaufman','9827 Sodales Ave','2345'),(321,'Gannon Jones','P.O. Box 386, 5778 Nibh. Avenue','2820'),(322,'Ali Serrano','P.O. Box 173, 1469 Commodo Av.','3760'),(323,'Harrison Burt','7366 Morbi Av.','3760'),(324,'Dustin Oneill','Ap #864-1968 Justo. Rd.','3237'),(325,'Lucian Patton','P.O. Box 279, 2350 Maecenas St.','3237'),(326,'Jack Compton','745 Et, Avenue','2345'),(327,'Hoyt Kennedy','Ap #312-5619 Ad St.','2820'),(328,'Benjamin Houston','Ap #878-7627 Et, Street','2820'),(329,'Noah Burton','519-9466 Mauris Avenue','2820'),(330,'Ethan Robles','Ap #963-4530 Magna. Ave','3760'),(331,'Timon Mcintosh','3755 Nunc St.','3237'),(332,'Cade Dunlap','8269 Tempus St.','2345'),(333,'Brett Bush','Ap #925-2075 Hendrerit Ave','3237'),(334,'Garrett Tyson','Ap #494-8741 Vitae St.','2820'),(335,'Flynn Giles','894-7718 Bibendum St.','2345'),(336,'Yuli Beck','Ap #614-1092 Ridiculus Ave','3760'),(337,'Todd Phelps','Ap #471-3181 Sit Av.','3237'),(338,'Brian Buchanan','8968 Posuere Street','2820'),(339,'Eagan Clayton','9086 Elit, Rd.','2345'),(340,'Wing Johnson','Ap #689-4906 Lectus Street','2345'),(341,'Harding Rush','Ap #819-4671 Rutrum Ave','2820'),(342,'Ahmed Beard','P.O. Box 494, 1249 Morbi Rd.','2800'),(343,'Alan Moses','9437 Convallis Street','3237'),(344,'Moses Knight','2417 Et, Rd.','2345'),(345,'Elijah Mann','213-6338 Felis. Street','3760'),(346,'Kaseem Velazquez','328-381 Venenatis Rd.','2800'),(347,'Jared Floyd','Ap #366-351 Nunc Ave','3760'),(348,'Stephen Holland','P.O. Box 834, 5279 Pede St.','2800'),(349,'Gage Schmidt','Ap #312-7810 Vulputate Avenue','2800'),(350,'Harlan Hickman','8050 Ornare Road','2800'),(351,'Timothy Blankenship','916-7544 Lorem, Ave','2800'),(352,'Alec Mcguire','739-4730 Dolor Rd.','2800'),(353,'Tobias Stephens','Ap #635-7535 Dis Av.','2800'),(354,'Craig Downs','6959 Lacinia Road','3237'),(355,'Clarke Melendez','664-211 Magna Ave','2345'),(356,'Elmo Justice','571-2581 Sociis Rd.','2345'),(357,'Dale Mills','P.O. Box 631, 2027 Eu Rd.','2800'),(358,'Abbot Moon','676-2291 Nascetur St.','2800'),(359,'Austin Dalton','3667 Congue. Av.','2800'),(360,'Sebastian William','P.O. Box 416, 389 Mauris. Av.','2345'),(361,'Hayden Compton','1599 Risus St.','2345'),(362,'Myles Tillman','Ap #938-3257 Phasellus Rd.','3237'),(363,'Jin Cantrell','922-4156 In St.','2345'),(364,'Clarke Holland','8902 Nunc Road','2800'),(365,'Basil Poole','P.O. Box 301, 2327 Sit Street','3237'),(366,'Jeremy Duffy','878-1207 Sed Rd.','2800'),(367,'Aquila Hurst','8056 Pretium St.','2800'),(368,'Vance Ray','P.O. Box 636, 8338 Sapien St.','2345'),(369,'Galvin Contreras','P.O. Box 761, 5984 Semper Ave','2800'),(370,'Lamar Ruiz','793-5809 Orci Rd.','3237'),(371,'Leroy Daugherty','404-395 Sit Street','2820'),(372,'Moses Robertson','P.O. Box 710, 597 Risus. Rd.','2820'),(373,'Tarik Gordon','975-9419 Duis St.','2800'),(374,'Burke Anderson','6031 Felis. Street','3237'),(375,'Quinn Chan','P.O. Box 798, 6747 At, Av.','2800'),(376,'Yuli Mueller','P.O. Box 147, 1109 Est Ave','3237'),(377,'Moses Ruiz','P.O. Box 260, 2796 Porta Rd.','2345'),(378,'Jesse Mcintyre','958-2467 Ac Rd.','2820'),(379,'Dennis Dotson','478-7565 Velit. Rd.','3760'),(380,'Wayne Fleming','657-1343 In Av.','3760'),(381,'Armand Burch','657 Magna. Ave','2345'),(382,'Peter Mayer','300-5410 Odio. Street','2800'),(383,'Cain Cain','7781 Natoque Avenue','3237'),(384,'Quinlan Luna','P.O. Box 864, 5542 Lacinia St.','2345'),(385,'Arsenio Shelton','Ap #704-6117 Eleifend. Ave','3760'),(386,'Ethan Herrera','P.O. Box 260, 3732 Non Rd.','2800'),(387,'Ira Alston','P.O. Box 703, 1150 Urna. Avenue','2345'),(388,'Colt Fitzpatrick','P.O. Box 518, 2621 Cursus Av.','2800'),(389,'Victor Vaughn','P.O. Box 454, 2375 Et Rd.','2800'),(390,'Armando Hyde','P.O. Box 461, 603 A, Av.','2345'),(391,'Gray Chang','Ap #868-5999 In, St.','3760'),(392,'Zephania Fitzgerald','Ap #677-3631 Imperdiet, St.','2820'),(393,'Brady Dillon','3246 Ac St.','2345'),(394,'Hyatt Hoover','7617 A, Road','3760'),(395,'Elton Chaney','469-4645 Aliquam Street','3760'),(396,'Zahir Mills','Ap #240-3275 Vitae Ave','3237'),(397,'Drake Deleon','469-2739 Aliquet Street','2820'),(398,'Elton Randall','2266 Pede, Avenue','2800'),(399,'Colt Zamora','Ap #326-1608 Magna. Street','3237'),(400,'Damon Hewitt','881-5182 Mi, Rd.','2820'),(401,'Jørgen','Vedkæret 23, ','2820');
/*!40000 ALTER TABLE `KundeTabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `låneroplysninger`
--

DROP TABLE IF EXISTS `låneroplysninger`;
/*!50001 DROP VIEW IF EXISTS `låneroplysninger`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `låneroplysninger` AS SELECT 
 1 AS `idKundeTabel`,
 1 AS `KundeNavn`,
 1 AS `Adresse`,
 1 AS `Bynavn`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `låneTabel`
--

DROP TABLE IF EXISTS `låneTabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `låneTabel` (
  `TransaktionsId` int NOT NULL AUTO_INCREMENT,
  `IdBog` int NOT NULL,
  `IdKunde` int NOT NULL,
  PRIMARY KEY (`TransaktionsId`),
  UNIQUE KEY `idlåneTabel_UNIQUE` (`TransaktionsId`),
  KEY `fk_låneTabel_BogTabel1_idx` (`IdBog`),
  KEY `fk_låneTabel_KundeTabel1_idx` (`IdKunde`),
  CONSTRAINT `fk_låneTabel_BogTabel1` FOREIGN KEY (`IdBog`) REFERENCES `BogTabel` (`idBogTabel`),
  CONSTRAINT `fk_låneTabel_KundeTabel1` FOREIGN KEY (`IdKunde`) REFERENCES `KundeTabel` (`idKundeTabel`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `låneTabel`
--

LOCK TABLES `låneTabel` WRITE;
/*!40000 ALTER TABLE `låneTabel` DISABLE KEYS */;
INSERT INTO `låneTabel` VALUES (1,1,101),(2,4,101),(3,5,23),(4,4,13),(5,2,88),(6,4,99),(7,3,45),(8,3,77),(9,2,77),(12,2,33),(13,3,78),(14,2,101);
/*!40000 ALTER TABLE `låneTabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PostnrTabel`
--

DROP TABLE IF EXISTS `PostnrTabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PostnrTabel` (
  `idPostnrTabel` varchar(45) NOT NULL,
  `Bynavn` varchar(45) NOT NULL,
  PRIMARY KEY (`idPostnrTabel`),
  UNIQUE KEY `idPostnrTabel_UNIQUE` (`idPostnrTabel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PostnrTabel`
--

LOCK TABLES `PostnrTabel` WRITE;
/*!40000 ALTER TABLE `PostnrTabel` DISABLE KEYS */;
INSERT INTO `PostnrTabel` VALUES ('2345','Rom'),('2800','Lyngby'),('2820','Gentofte'),('3237','Galten'),('3760','Balerup');
/*!40000 ALTER TABLE `PostnrTabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `totalview`
--

DROP TABLE IF EXISTS `totalview`;
/*!50001 DROP VIEW IF EXISTS `totalview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalview` AS SELECT 
 1 AS `idBogTabel`,
 1 AS `Forfatter`,
 1 AS `Title`,
 1 AS `Forlag`,
 1 AS `Udgivelsesdato`,
 1 AS `TransaktionsId`,
 1 AS `IdBog`,
 1 AS `IdKunde`,
 1 AS `idKundeTabel`,
 1 AS `KundeNavn`,
 1 AS `Adresse`,
 1 AS `PostNr`,
 1 AS `idPostnrTabel`,
 1 AS `Bynavn`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `låneroplysninger`
--

/*!50001 DROP VIEW IF EXISTS `låneroplysninger`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `låneroplysninger` AS select `kundetabel`.`idKundeTabel` AS `idKundeTabel`,`kundetabel`.`KundeNavn` AS `KundeNavn`,`kundetabel`.`Adresse` AS `Adresse`,`PT`.`Bynavn` AS `Bynavn`,`BT`.`Title` AS `Title` from (((`kundetabel` join `postnrtabel` `PT` on((`PT`.`idPostnrTabel` = `kundetabel`.`PostNr`))) join `lånetabel` `lT` on((`kundetabel`.`idKundeTabel` = `lT`.`IdKunde`))) join `bogtabel` `BT` on((`BT`.`idBogTabel` = `lT`.`IdBog`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalview`
--

/*!50001 DROP VIEW IF EXISTS `totalview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalview` AS select `bogtabel`.`idBogTabel` AS `idBogTabel`,`bogtabel`.`Forfatter` AS `Forfatter`,`bogtabel`.`Title` AS `Title`,`bogtabel`.`Forlag` AS `Forlag`,`bogtabel`.`Udgivelsesdato` AS `Udgivelsesdato`,`lT`.`TransaktionsId` AS `TransaktionsId`,`lT`.`IdBog` AS `IdBog`,`lT`.`IdKunde` AS `IdKunde`,`KT`.`idKundeTabel` AS `idKundeTabel`,`KT`.`KundeNavn` AS `KundeNavn`,`KT`.`Adresse` AS `Adresse`,`KT`.`PostNr` AS `PostNr`,`PT`.`idPostnrTabel` AS `idPostnrTabel`,`PT`.`Bynavn` AS `Bynavn` from (((`bogtabel` join `lånetabel` `lT` on((`bogtabel`.`idBogTabel` = `lT`.`IdBog`))) join `kundetabel` `KT` on((`KT`.`idKundeTabel` = `lT`.`IdKunde`))) join `postnrtabel` `PT` on((`PT`.`idPostnrTabel` = `KT`.`PostNr`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17  7:34:59
