-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project_database
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'baspop01','bbaass0088'),(2,'taifhoonzaza','tf2545');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tokens`
--

DROP TABLE IF EXISTS `admin_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  KEY `admin_id_idx` (`admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tokens`
--

LOCK TABLES `admin_tokens` WRITE;
/*!40000 ALTER TABLE `admin_tokens` DISABLE KEYS */;
INSERT INTO `admin_tokens` VALUES (1,2,'NXHhLP*1U42ER1LWZYY3wKX^3$rnlzNe6ubpf2Aqjzl3KM5RLgVptC$zoj5Z8oA^eGkMCozVFrTHPXjzdAdMrQeo37uM^e=qpfi4'),(2,1,'/VG40ydztZXW4^0rkcoJXqboktP/J#6VrheZbT4YPCFKCSEPjb=cb/lnKJEo4iT8E6kGhwPX&1I*ktC4v9nJE&Lo/VYn/H@rGEuu');
/*!40000 ALTER TABLE `admin_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phone_no` char(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Michael Dayeon','MD2544','michael_zaza@gmail.com','0846585482'),(2,'Chityong Somyai','0854595678Chityong','chityong@hotmail.com','0854595678'),(3,'Tanongtouy Kongkuankoi','tntkkk2001','job_2001@hotmail.com','0655845210'),(4,'Donald Trump','AoT1558','moumou@yahoo.co.th','0992738191'),(5,'Wilson Reece','BSC853CSB','ilovetatoo@hotmail.com','0653332141'),(6,'Smith Kyle','idea_new','lolopooklolo@yahoo.co.th','0929990483'),(7,'Brown Joe','ALIBABA','caramel44@gmail.com','0847362223'),(8,'Davis Isla','MAKATEC00','davisy@yahoo.co.th','0859203901'),(9,'Williams Mia','netweld55','liliwilliam@yahoo.co.th','0839274055'),(10,'Evans Isabella','obschss','webpro@hotmail.com','0883927841'),(11,'Lam Abigail','avattava','cutedog3@gmail.com','0983832705'),(12,'Ariyapoon Inaki','tf0592','ariyapoon@yahoo.co.th','0956843512'),(13,'Woranun Laleevalert','123123','woranunwoo@hotmail.com','0854582515'),(18,'Steven','Stev5682','sking@gmail.com','0866412863'),(19,'David','dav823','daustin@hotmail.com','0923584460'),(20,'Eleni','elel294','ezlotting@gmail.com','0655841203'),(21,'Gerald','gerdlral','gerald@gmail.com','0835126822'),(22,'Sarah','abcd','sabell@hotmail.com','0881566492'),(24,'wutiporn jamkrajang','0994424004Art','art1794925@gmail.com','0994424004'),(25,'wutiporn','12345Art','art@gmail.com','0994424004');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tokens`
--

DROP TABLE IF EXISTS `customer_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_UN` (`token`),
  KEY `token_FK` (`user_id`),
  CONSTRAINT `token_FK` FOREIGN KEY (`user_id`) REFERENCES `customer` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tokens`
--

LOCK TABLES `customer_tokens` WRITE;
/*!40000 ALTER TABLE `customer_tokens` DISABLE KEYS */;
INSERT INTO `customer_tokens` VALUES (15,9,'tsy=Sx61RQ5R8nza8Q$d&rg^Nc3StZibBYSW5ksgc!LDKj#vGI1DI=f$j8CzXC-Y0-$iibW3=ICxrz^IOJ!Yc1mEshsnz10rqKEL'),(28,18,'vMsVNIvWFm0JQml=T6efFK@ixFRZ&^jgBl!Z*dt@1a/eTm1Y$KOobAqk@kKQIAxyX78mfB=zEiar3s68sRe@tQsXN^siYFydo7$e'),(32,13,'qh$gC5JD&p#ttLIr*C$X^24TF=3tRJt^ZZsbGtPsNtVfbrPV9U7*Mxg2TaPm0DbZwFaw9#6sN543=TCaEfYiAJs@Ex8ZjRPiSCUK'),(33,22,'328Be^BX@N^/utBsRX@I/dVpEDfhbm@sDERzdDdaL8!naVm2H@ZE5jR&-s24rOkhUXu2Y2PJl#qksp12IZhLE2Kg3AOPzTs!Ql^N'),(34,24,'HcTz1@VXP92swJdsw4r@4nY6-Jn-4q!sPK0&lD/hLVsXVu0q&4SjZ2JL@#GUpCjGQUj21Bo#74k8@ka!4ozaSf3Vjj$dWYd/KlD!'),(35,1,'roIVOVaDtv6v/DgDth2KKmdredT$2P4ICpjLVKW@ADvg6EnmqnlPbeZhRGZ$1HGEQVkPCaUz-F1uUwgb63m8FCYScP1PfA#lwMmx'),(36,25,'h2&F5pB#FZcy1OFiQO@1R!vx6l#$Aii4P6uAs7u2ENAr0l!cKhA2wBYP6zVwZUeFIpd@KMK^seiIrJfmOKPsHhUFd7W!B#8mQK&-');
/*!40000 ALTER TABLE `customer_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `offer_id` int NOT NULL AUTO_INCREMENT,
  `discount_price` float DEFAULT NULL,
  `MOVIES_m_id` int NOT NULL,
  PRIMARY KEY (`offer_id`),
  KEY `fk_DISCOUNT_MOVIES1_idx` (`MOVIES_m_id`),
  CONSTRAINT `fk_DISCOUNT_MOVIES1` FOREIGN KEY (`MOVIES_m_id`) REFERENCES `movies` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,50,1),(2,50,2),(3,100,3),(4,100,4),(5,50,5);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `img_movie` varchar(255) DEFAULT NULL,
  `plot` longtext,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Fantastic Beasts: The Secrets of Dumbledore','2022-04-13','David Yates','Eddie Redmayne, Katherine Waterston, Mads Mikkelsen','https://cdn.discordapp.com/attachments/953696113448337498/967854403744841758/dobbledoor.jpg','Professor Albus Dumbledore knows the powerful Dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts Magizoologist Newt Scamander to lead an intrepid team of wizards, witches and one brave Muggle baker on a dangerous mission, where they encounter old and new beasts and clash with Grindelwald\'s growing legion of followers. But with the stakes so high, how long can Dumbledore remain on the sidelines?'),(2,'A Ghost Story','2022-04-01','Chantawit Tangjitwong','Krit Three man down','https://media.discordapp.net/attachments/953696113448337498/967854586926882866/ghoststory.jpg?width=452&height=669','A musician lives with his wife in a small house in Dallas, Texas. They are looking for a new home and planning their move. She tells him that before she moves away from a place, she likes to hide a note for herself there, in case she ever returns. They o...'),(3,'The Avenger','2015-04-01','Michael Bay','Robert Downeys Jr','https://media.discordapp.net/attachments/953696113448337498/967855046731653170/avenger.jpg?width=469&height=670','The Asgardian Loki encounters the Other, the leader of an extraterrestrial race known as the Chitauri. In exchange for retrieving the Tesseract,[N 2] a powerful energy source of unknown potential, the Other promises Loki an army with which he can subjugate Earth. Nick Fury, director of the espionage agency S.H.I.E.L.D., arrives at a remote research facility, where physicist Dr. Erik Selvig is leading a team experimenting on the Tesseract. The Tesseract suddenly activates and opens a wormhole, allowing Loki to reach Earth. Loki steals the Tesseract and uses his scepter to enslave Selvig and other agents, including Clint Barton, to aid him.'),(4,'SpiderMan - Far from home','2021-11-24','Michael Bay','Tom Holland','https://media.discordapp.net/attachments/953696113448337498/967855215594315856/spiderman.jpg?width=458&height=670','When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.'),(5,'Jurassic World 3','2022-05-15','Colin T. Trevorrow','Bryce Dallas Howard','https://media.discordapp.net/attachments/953696113448337498/967855645363695676/jurassicworld3.jpg?width=424&height=670','Dominion is smashing its way onto the big screen in a matter of months, and as we get closer and closer to the big day, there\'s more and more information about the movie to pore over. For one thing, a trailer is finally here, with the original trio – Sam Neill, Laura Dern, and Jeff Goldblum – reunited once more, starring alongside Chris Pratt and Bryce Dallas Howard. Plus, the latest update is the film\'s monster-sized runtime: a massive 2 hours and 23 minutes. That means the film is the longest ever of the franchise. '),(6,'Harry Potter and the Sorcerers Stone','2022-01-20','Chris Joseph Columbus','Daniel Radcliffe, Emma Watson, Rupert Grint','https://media.discordapp.net/attachments/953696113448337498/967856206465081384/harrypotter.jpg?width=446&height=669','The series follows the life of a boy named Harry Potter. In the first book, Harry Potter and the Philosopher\'s Stone, Harry lives in a cupboard under the stairs in the house of the Dursleys, his aunt, uncle and cousin. The Dursleys consider themselves perfectly normal, but at the age of eleven, Harry discovers that he is a wizard. He meets a half-giant named Hagrid who invites him to attend the Hogwarts School of Witchcraft and Wizardry. Harry learns that as a baby, his parents were murdered by the dark wizard Lord Voldemort. When Voldemort attempted to kill Harry, his curse rebounded and Harry survived with a lightning-shaped scar on his forehead.'),(7,'Doctor Strange in the Multiverse of  Madness','2022-05-04','Sam Raimi','Benedict Cumberbatch, Elizabeth Olsen, Benedict Wong','https://media.discordapp.net/attachments/953696113448337498/967852650152484954/doctorstrange2.jpg?width=454&height=669','A sorcerer, later revealed to be Kaecilius (Mads Mikkelsen), tears some pages from a chained book in a old, seemingly gothic library. His minions restrain the librarian/guardian with bands of energy. Kaecilius uses two large knives to decapitate the man and escapes with the help of several followers. The owner of the book, the Ancient One (Tilda Swinton), goes after them. As he flees, Kaecilius bends, folds, and reshapes the streets and buildings of the city (think Inception (2010), but more kaleidoscopic). Though she\'s a formidable magical fighter, the Ancient One is unable to pin down Kaecilius and he escapes.'),(8,'Conan The Movie 25 - The Bride of Halloween','2022-05-26','Susumu Mitsunaka','Edogawa Conan, Mori Run, Mori Kogoro','https://media.discordapp.net/attachments/953696113448337498/967852829756751972/conan.jpg?width=481&height=670','Japanese high school student Kudo Shinichi is a well-known detective, known as the savior of the Japanese police. Once, when Kudo went out to play with his girlfriend Mulilan, he saw an illegal transaction going on. Kudo took his girlfriend to observe the deal, and suddenly a man behind him knocked him to the ground. The man and his accomplices let Kudo take a medicine.'),(9,'SLR กล้องติดตาย','2022-04-21','Lertsiri Boonmee, Wuttichai Wongnapadol','Kornpat Krungphan,  Cherprang Areekul,  Sadanon Durongkweroj','https://media.discordapp.net/attachments/953696113448337498/967856294981668874/camera.jpg?width=536&height=670','“แดน” นักศึกษาหนุ่มคณะภาพถ่าย ที่สอบธีสิสกับอาจารย์เอมมาเป็นปีแล้ว แต่ยังไม่ผ่านเสียที จนในที่สุด อาจารย์เอมได้ให้กล้อง SLR ให้ถ่ายงานที่ดีที่สุดมาส่ง แดนกำลังจะค้นพบว่า มันเป็นบททดสอบของกล้องปีศาจ ซึ่งเขาไม่มีทางหนี นอกจากจะต้องเลือกว่าจะยอมตามมัน หรือจะสู้กับมัน และเขากำลังจะลากแฟนและเพื่อนของเขาอย่าง “น้ำ” และ “เกรท” เข้ามาร่วมชะตากรรมอันน่าสะพรึงกลัว ซึ่งรายล้อมไปด้วยความตายจากกล้องนรกนี้ด้วย'),(10,'Sonic 2 - The headgehog','2022-04-06','Jeff Fowler','Jim Carrey,  Ben Schwartz,  Idris Elba','https://media.discordapp.net/attachments/953696113448337498/967856431632121976/sonic2.jpg?width=454&height=671','In San Francisco, California, a seemingly normal day is interrupted by a shocking spectacle: an anthropomorphic hedgehog with blue fur, white gloves and red shoes is running through the city at breathtaking speed while a flying machine piloted by a mustached scientist dressed in red gives chase and fires explosive energy blasts!'),(11,'Morbius','2022-03-31','Daniel Espinosa','Jared Leto,  Adria Arjona,  Matt Smith','https://media.discordapp.net/attachments/953696113448337498/967856565438791811/morbius.jpg?width=453&height=671','At a hospital in Greece, 10-year-old Michael Morbius welcomes his surrogate brother Lucien, whom he renames Milo; they bond over their shared blood illness and desire to be \"normal\". Their adoptive father and hospital director Nicholas arranges for Morbius to attend medical school in New York while he focuses on caring for Milo.'),(30,'life of louis','2022-12-15','ควายหลุยโง่ๆ ยืนกินหญ้ากลางทุ่งนา','ศรัณญ์ วิวัฒน์บวรวงษ์','\\uploads\\image-1671118830606-.jpg','ควายยืนกินหญ้ากลางทุ่งนา');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `order_seats` varchar(255) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `CUSTOMER_cid` int NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_ORDER_CUSTOMER1_idx` (`CUSTOMER_cid`),
  CONSTRAINT `fk_ORDER_CUSTOMER1` FOREIGN KEY (`CUSTOMER_cid`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2022-04-13','A01, A02',600,1,'Complete'),(2,'2022-04-13','B01, B02',520,2,'Complete'),(3,'2022-04-13','C05',200,3,'Complete'),(4,'2022-04-13','C07',200,4,'Complete'),(5,'2022-04-13','C08, C09, C10, C11',800,5,'Complete'),(6,'2022-04-13','D04, D05, C02, C03',800,10,'Complete'),(7,'2022-04-20','A01, A02',600,22,'Complete'),(8,'2022-04-20','B01, B02',520,12,'Complete'),(9,'2022-04-20','C05',200,13,'Complete'),(10,'2022-04-20','C07',200,18,'Incomplete'),(11,'2022-04-20','C08, C09, C10, C11',800,20,'Complete'),(12,'2022-04-20','D04, D05, C02, C03',800,21,'Complete'),(54,'2022-04-28','C01, D01, D02, C02 ',800,22,'Complete'),(55,'2022-04-29','A06, A07, A08',900,22,'Complete'),(66,'2022-04-30','A01, A02, A03',900,22,'Complete'),(68,'2022-04-30','E10',200,1,'Complete'),(70,'2022-04-30','B01, B02, B03',780,22,'Complete'),(72,'2022-04-30','C05, C04',400,1,'Complete'),(75,'2022-04-30','B10, B09',520,13,'Complete'),(127,'2022-05-04','C06, C05',400,1,'Complete'),(128,'2022-05-04','D07, D09, D08',600,1,'Complete'),(129,'2022-05-04','E07, E08',400,1,'Complete'),(130,'2022-05-04','E01',200,1,'Complete'),(133,'2022-05-04','C10',200,24,'Complete'),(134,'2022-05-04','C05, C06',400,18,'Complete'),(135,'2022-05-04','D10',200,24,'Complete'),(136,'2022-05-05','B03, B04',520,24,'Complete'),(137,'2022-05-05','C06, C07',400,24,'Complete'),(138,'2022-05-05','E06, E07, E09, E08',800,24,'Complete'),(143,'2022-05-06','C08, C09',400,24,'Complete'),(144,'2022-12-15','C05, C06',400,1,'Complete');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `item_price` float DEFAULT NULL,
  `ORDER_order_id` int NOT NULL,
  PRIMARY KEY (`item_no`,`ORDER_order_id`),
  KEY `fk_ORDER_ITEM_ORDER1_idx` (`ORDER_order_id`),
  CONSTRAINT `fk_ORDER_ITEM_ORDER1` FOREIGN KEY (`ORDER_order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,300,1),(2,300,1),(3,260,2),(4,260,2),(5,200,3),(6,200,4),(7,200,5),(8,200,5),(9,200,5),(10,200,5),(11,200,6),(12,200,6),(13,200,6),(14,200,6),(15,300,7),(16,300,7),(17,260,8),(18,260,8),(19,200,9),(20,200,10),(21,200,11),(22,200,11),(23,200,11),(24,200,11),(25,200,12),(26,200,12),(27,200,12),(28,200,12),(71,200,54),(72,200,54),(73,200,54),(74,200,54),(75,300,55),(76,300,55),(77,300,55),(103,300,66),(104,300,66),(105,300,66),(110,200,68),(113,260,70),(114,260,70),(115,260,70),(118,200,72),(119,200,72),(124,260,75),(125,260,75),(159,200,127),(160,200,127),(161,200,128),(162,200,128),(163,200,128),(164,200,129),(165,200,129),(166,200,130),(171,200,133),(172,200,134),(173,200,134),(174,200,135),(175,260,136),(176,260,136),(177,200,137),(178,200,137),(179,200,138),(180,200,138),(181,200,138),(182,200,138),(194,200,143),(195,200,143),(196,200,144),(197,200,144);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `no_of_seats` varchar(255) DEFAULT NULL,
  `THEATRE_tid` int NOT NULL,
  `SEAT_TYPE_type_id` int NOT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `fk_SEAT_THEATRE1_idx` (`THEATRE_tid`),
  KEY `fk_SEAT_SEAT_TYPE1_idx` (`SEAT_TYPE_type_id`),
  CONSTRAINT `fk_SEAT_SEAT_TYPE1` FOREIGN KEY (`SEAT_TYPE_type_id`) REFERENCES `seat_type` (`type_id`),
  CONSTRAINT `fk_SEAT_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,'A01',1,3),(2,'A02',1,3),(3,'A03',1,3),(4,'A04',1,3),(5,'A05',1,3),(6,'A06',1,3),(7,'A07',1,3),(8,'A08',1,3),(9,'A09',1,3),(10,'A10',1,3),(11,'B01',1,2),(12,'B02',1,2),(13,'B03',1,2),(14,'B04',1,2),(15,'B05',1,2),(16,'B06',1,2),(17,'B07',1,2),(18,'B08',1,2),(19,'B09',1,2),(20,'B10',1,2),(21,'C01',1,1),(22,'C02',1,1),(23,'C03',1,1),(24,'C04',1,1),(25,'C05',1,1),(26,'C06',1,1),(27,'C07',1,1),(28,'C08',1,1),(29,'C09',1,1),(30,'C10',1,1),(31,'D01',1,1),(32,'D02',1,1),(33,'D03',1,1),(34,'D04',1,1),(35,'D05',1,1),(36,'D06',1,1),(37,'D07',1,1),(38,'D08',1,1),(39,'D09',1,1),(40,'D10',1,1),(41,'E01',1,1),(42,'E02',1,1),(43,'E03',1,1),(44,'E04',1,1),(45,'E05',1,1),(46,'E06',1,1),(47,'E07',1,1),(48,'E08',1,1),(49,'E09',1,1),(50,'E10',1,1),(51,'A01',2,3),(52,'A02',2,3),(53,'A03',2,3),(54,'A04',2,3),(55,'A05',2,3),(56,'A06',2,3),(57,'A07',2,3),(58,'A08',2,3),(59,'A09',2,3),(60,'A10',2,3),(61,'B01',2,2),(62,'B02',2,2),(63,'B03',2,2),(64,'B04',2,2),(65,'B05',2,2),(66,'B06',2,2),(67,'B07',2,2),(68,'B08',2,2),(69,'B09',2,2),(70,'B10',2,2),(71,'C01',2,1),(72,'C02',2,1),(73,'C03',2,1),(74,'C04',2,1),(75,'C05',2,1),(76,'C06',2,1),(77,'C07',2,1),(78,'C08',2,1),(79,'C09',2,1),(80,'C10',2,1),(81,'D01',2,1),(82,'D02',2,1),(83,'D03',2,1),(84,'D04',2,1),(85,'D05',2,1),(86,'D06',2,1),(87,'D07',2,1),(88,'D08',2,1),(89,'D09',2,1),(90,'D10',2,1),(91,'E01',2,1),(92,'E02',2,1),(93,'E03',2,1),(94,'E04',2,1),(95,'E05',2,1),(96,'E06',2,1),(97,'E07',2,1),(98,'E08',2,1),(99,'E09',2,1),(100,'E10',2,1),(101,'A01',3,3),(102,'A02',3,3),(103,'A03',3,3),(104,'A04',3,3),(105,'A05',3,3),(106,'B01',3,3),(107,'B02',3,3),(108,'B03',3,3),(109,'B04',3,3),(110,'B05',3,3),(111,'C01',3,3),(112,'C02',3,3),(113,'C03',3,3),(114,'C04',3,3),(115,'C05',3,3);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_type`
--

DROP TABLE IF EXISTS `seat_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  `type_price` int DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_type`
--

LOCK TABLES `seat_type` WRITE;
/*!40000 ALTER TABLE `seat_type` DISABLE KEYS */;
INSERT INTO `seat_type` VALUES (1,'Normal',200),(2,'Honeymoon',260),(3,'First Class',300);
/*!40000 ALTER TABLE `seat_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show`
--

DROP TABLE IF EXISTS `show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show` (
  `show_id` int NOT NULL AUTO_INCREMENT,
  `show_date` date DEFAULT NULL,
  `st_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `THEATRE_MOVIE_MOVIES_m_id` int NOT NULL,
  `THEATRE_MOVIE_THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`show_id`),
  KEY `fk_SHOW_THEATRE_MOVIE1_idx` (`THEATRE_MOVIE_MOVIES_m_id`,`THEATRE_MOVIE_THEATRE_tid`),
  CONSTRAINT `fk_SHOW_THEATRE_MOVIE1` FOREIGN KEY (`THEATRE_MOVIE_MOVIES_m_id`, `THEATRE_MOVIE_THEATRE_tid`) REFERENCES `theatre_movie` (`MOVIES_m_id`, `THEATRE_tid`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show`
--

LOCK TABLES `show` WRITE;
/*!40000 ALTER TABLE `show` DISABLE KEYS */;
INSERT INTO `show` VALUES (93,'2022-04-13','17:00:00','19:30:00','TH',1,1),(94,'2022-04-13','17:00:00','19:30:00','TH',1,2),(95,'2022-04-13','20:00:00','22:00:00','ENG',11,3),(96,'2022-04-14','13:00:00','14:30:00','TH',2,1),(97,'2022-04-14','13:00:00','14:30:00','ENG',3,2),(98,'2022-04-14','15:00:00','17:00:00','TH',4,2),(99,'2022-04-14','17:00:00','19:15:00','ENG',4,1),(100,'2022-04-14','20:00:00','22:00:00','ENG',4,1),(101,'2022-04-14','20:00:00','22:00:00','ENG',4,2),(102,'2022-04-14','20:00:00','22:00:00','ENG',11,3),(112,'2022-04-15','11:00:00','13:00:00','TH',1,1),(113,'2022-04-15','11:00:00','13:00:00','TH',1,2),(114,'2022-04-15','11:00:00','13:00:00','TH',11,3),(115,'2022-04-15','15:00:00','17:00:00','TH',4,1),(116,'2022-04-15','15:00:00','17:00:00','TH',4,2),(121,'2022-05-05','20:30:00','22:00:00','TH',7,1),(122,'2022-05-15','21:00:00','23:00:00','ENG',5,2),(125,'2022-05-26','18:00:00','19:45:00','ENG',8,2),(127,'2022-04-18','13:00:00','14:30:00','TH',2,1),(128,'2022-04-18','13:00:00','14:30:00','ENG',3,2),(129,'2022-04-18','15:00:00','17:00:00','TH',4,2),(130,'2022-04-18','17:00:00','19:15:00','ENG',4,1),(131,'2022-04-18','20:00:00','22:00:00','ENG',4,1),(132,'2022-04-18','20:00:00','22:00:00','ENG',4,2),(133,'2022-04-18','20:00:00','22:00:00','ENG',11,3),(134,'2022-04-19','17:00:00','19:30:00','TH',1,1),(135,'2022-04-19','17:00:00','19:30:00','TH',1,2),(136,'2022-04-19','20:00:00','22:00:00','ENG',11,3),(137,'2022-04-20','11:00:00','13:00:00','TH',11,3),(138,'2022-04-20','15:00:00','17:00:00','TH',4,1),(139,'2022-04-20','15:00:00','17:00:00','TH',4,2),(140,'2022-05-27','18:00:00','19:45:00','ENG',8,2),(141,'2022-05-20','20:30:00','22:00:00','TH',7,1),(142,'2022-05-04','21:00:00','23:00:00','ENG',5,2),(143,'2022-04-21','13:00:00','14:30:00','TH',2,1),(144,'2022-04-21','13:00:00','14:30:00','ENG',3,2),(145,'2022-04-21','15:00:00','17:00:00','TH',4,2),(146,'2022-04-21','17:00:00','19:15:00','ENG',4,1),(147,'2022-04-21','20:00:00','22:00:00','ENG',4,1),(148,'2022-04-21','20:00:00','22:00:00','ENG',4,2),(149,'2022-04-21','20:00:00','22:00:00','ENG',11,3),(150,'2022-04-25','17:00:00','19:30:00','TH',1,1),(151,'2022-04-25','17:00:00','19:30:00','TH',1,2),(152,'2022-04-25','20:00:00','22:00:00','ENG',11,3),(166,'2022-12-16','11:00:00','00:00:00','TH',30,1);
/*!40000 ALTER TABLE `show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `hall_no` int DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'JunRongJai 1','84/26 R.jaroenkrung Bangkholahm, Bangkok 10120',1),(2,'JunRongJai 2','84/26 R.jaroenkrung Bangkholahm, Bangkok 10120',2),(3,'RongJai 1','25/48 R.Jun Bangruk, Bangkok 10510',3);
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_admin`
--

DROP TABLE IF EXISTS `theatre_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_admin` (
  `ADMIN_admin_id` int NOT NULL,
  `THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`ADMIN_admin_id`,`THEATRE_tid`),
  KEY `fk_THEATRE_ADMIN_THEATRE1_idx` (`THEATRE_tid`),
  CONSTRAINT `fk_THEATRE_ADMIN_ADMIN1` FOREIGN KEY (`ADMIN_admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `fk_THEATRE_ADMIN_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_admin`
--

LOCK TABLES `theatre_admin` WRITE;
/*!40000 ALTER TABLE `theatre_admin` DISABLE KEYS */;
INSERT INTO `theatre_admin` VALUES (1,1),(1,2),(2,3);
/*!40000 ALTER TABLE `theatre_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_movie`
--

DROP TABLE IF EXISTS `theatre_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_movie` (
  `MOVIES_m_id` int NOT NULL AUTO_INCREMENT,
  `THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`MOVIES_m_id`,`THEATRE_tid`),
  KEY `fk_THEATRE_MOVIE_MOVIES1_idx` (`MOVIES_m_id`),
  KEY `fk_THEATRE_MOVIE_THEATRE1_idx` (`THEATRE_tid`),
  CONSTRAINT `fk_THEATRE_MOVIE_MOVIES1` FOREIGN KEY (`MOVIES_m_id`) REFERENCES `movies` (`m_id`),
  CONSTRAINT `fk_THEATRE_MOVIE_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_movie`
--

LOCK TABLES `theatre_movie` WRITE;
/*!40000 ALTER TABLE `theatre_movie` DISABLE KEYS */;
INSERT INTO `theatre_movie` VALUES (1,1),(1,2),(2,1),(3,2),(4,1),(4,2),(5,2),(7,1),(8,2),(9,3),(10,3),(11,3),(30,1);
/*!40000 ALTER TABLE `theatre_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `SHOW_show_id` int NOT NULL,
  `ORDER_ITEM_item_no` int NOT NULL,
  `ORDER_ITEM_ORDER_order_id` int NOT NULL,
  `ADMIN_admin_id` int NOT NULL,
  `SEAT_seat_id` int NOT NULL,
  PRIMARY KEY (`ticket_id`,`ORDER_ITEM_item_no`,`ORDER_ITEM_ORDER_order_id`),
  KEY `fk_TICKETS_SHOW1_idx` (`SHOW_show_id`),
  KEY `fk_TICKETS_ORDER_ITEM1_idx` (`ORDER_ITEM_item_no`,`ORDER_ITEM_ORDER_order_id`),
  KEY `fk_TICKETS_ADMIN1_idx` (`ADMIN_admin_id`),
  KEY `fk_TICKETS_SEAT1_idx` (`SEAT_seat_id`),
  CONSTRAINT `fk_TICKETS_ADMIN1` FOREIGN KEY (`ADMIN_admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `fk_TICKETS_ORDER_ITEM1` FOREIGN KEY (`ORDER_ITEM_item_no`, `ORDER_ITEM_ORDER_order_id`) REFERENCES `order_item` (`item_no`, `ORDER_order_id`),
  CONSTRAINT `fk_TICKETS_SEAT1` FOREIGN KEY (`SEAT_seat_id`) REFERENCES `seat` (`seat_id`),
  CONSTRAINT `fk_TICKETS_SHOW1` FOREIGN KEY (`SHOW_show_id`) REFERENCES `show` (`show_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,300,96,1,1,1,1),(2,300,96,2,1,1,2),(3,260,96,3,2,1,11),(4,260,96,4,2,1,12),(5,200,96,5,3,1,25),(6,200,96,6,4,1,27),(7,200,96,7,5,1,28),(8,200,96,8,5,1,29),(9,200,96,9,5,1,30),(10,200,96,10,5,1,31),(11,200,96,11,6,1,34),(12,200,96,12,6,1,35),(13,200,96,13,6,1,22),(14,200,96,14,6,1,23),(15,300,115,15,7,1,6),(16,300,115,16,7,1,7),(17,260,129,17,8,1,65),(18,260,129,18,8,1,66),(19,200,122,19,9,1,85),(20,200,122,20,10,1,88),(21,200,113,21,11,1,74),(22,200,113,22,11,1,75),(23,200,113,23,11,1,76),(24,200,113,24,11,1,77),(25,200,131,25,12,1,33),(26,200,131,26,12,1,34),(27,200,131,27,12,1,35),(28,200,131,28,12,1,36),(39,200,93,71,54,1,21),(40,200,93,72,54,1,31),(41,200,93,73,54,1,32),(42,200,93,74,54,1,22),(43,300,94,75,55,1,56),(44,300,94,76,55,1,57),(45,300,94,77,55,1,58),(67,300,93,103,66,1,1),(68,300,93,104,66,1,2),(69,300,93,105,66,1,3),(74,200,93,110,68,1,50),(77,260,125,113,70,1,61),(78,260,125,114,70,1,62),(79,260,125,115,70,1,63),(82,200,94,118,72,1,75),(83,200,94,119,72,1,74),(88,260,96,124,75,1,20),(89,260,96,125,75,1,19),(117,200,93,159,127,1,26),(118,200,93,160,127,1,25),(119,200,93,161,128,1,37),(120,200,93,162,128,1,39),(121,200,93,163,128,1,38),(122,200,96,164,129,1,47),(123,200,96,165,129,1,48),(124,200,96,166,130,1,41),(127,200,93,171,133,1,30),(128,200,143,172,134,1,25),(129,200,143,173,134,1,26),(130,200,93,174,135,1,40),(131,260,122,175,136,1,63),(132,260,122,176,136,1,64),(133,200,121,177,137,1,26),(134,200,121,178,137,1,27),(135,200,97,179,138,1,96),(136,200,97,180,138,1,97),(137,200,97,181,138,1,99),(138,200,97,182,138,1,98),(150,200,93,194,143,1,28),(151,200,93,195,143,1,29),(152,200,166,196,144,1,25),(153,200,166,197,144,1,26);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 17:45:49
