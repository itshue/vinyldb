CREATE DATABASE  IF NOT EXISTS `vinyldb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vinyldb`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: vinyldb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Temporary view structure for view `90s_artists_and_albums`
--

DROP TABLE IF EXISTS `90s_artists_and_albums`;
/*!50001 DROP VIEW IF EXISTS `90s_artists_and_albums`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `90s_artists_and_albums` AS SELECT 
 1 AS `album_name`,
 1 AS `artist_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `album_producers`
--

DROP TABLE IF EXISTS `album_producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_producers` (
  `producer_id` int NOT NULL,
  `album_id` int NOT NULL,
  PRIMARY KEY (`producer_id`,`album_id`),
  KEY `fk_producers_has_albums_albums1_idx` (`album_id`),
  KEY `fk_producers_has_albums_producers1_idx` (`producer_id`),
  CONSTRAINT `fk_producers_has_albums_albums1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `fk_producers_has_albums_producers1` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`producer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_producers`
--

LOCK TABLES `album_producers` WRITE;
/*!40000 ALTER TABLE `album_producers` DISABLE KEYS */;
INSERT INTO `album_producers` VALUES (1,1),(32,1),(2,2),(3,2),(4,2),(5,2),(33,2),(34,2),(6,3),(7,3),(8,3),(35,3),(9,4),(10,4),(11,4),(32,4),(12,5),(34,5),(13,6),(35,6),(14,7),(15,7),(34,7),(16,8),(32,8),(35,8),(9,9),(17,9),(33,9),(18,10),(33,10),(35,10),(19,11),(20,11),(32,11),(35,11),(21,12),(22,12),(23,12),(24,12),(33,12),(34,13),(25,14),(26,14),(32,14),(27,15),(28,16),(29,16),(30,16),(33,16),(31,17),(34,17),(32,18),(33,18),(34,18),(35,18);
/*!40000 ALTER TABLE `album_producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_tracklist`
--

DROP TABLE IF EXISTS `album_tracklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_tracklist` (
  `album_id` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`album_id`,`song_id`),
  KEY `fk_albums_has_songs_songs1_idx` (`song_id`),
  KEY `fk_albums_has_songs_albums1_idx` (`album_id`),
  CONSTRAINT `fk_albums_has_songs_albums1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `fk_albums_has_songs_songs1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_tracklist`
--

LOCK TABLES `album_tracklist` WRITE;
/*!40000 ALTER TABLE `album_tracklist` DISABLE KEYS */;
INSERT INTO `album_tracklist` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),(4,41),(4,42),(5,43),(5,44),(5,45),(5,46),(5,47),(5,48),(5,49),(5,50),(5,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(7,60),(7,61),(7,62),(7,63),(7,64),(7,65),(7,66),(7,67),(7,68),(7,69),(8,70),(8,71),(8,72),(8,73),(8,74),(8,75),(8,76),(8,77),(8,78),(8,79),(9,80),(9,81),(9,82),(9,83),(9,84),(9,85),(9,86),(9,87),(10,88),(10,89),(10,90),(10,91),(10,92),(10,93),(10,94),(10,95),(10,96),(11,97),(11,98),(11,99),(11,100),(11,101),(11,102),(11,103),(11,104),(11,105),(11,106),(11,107),(11,108),(11,109),(12,110),(12,111),(12,112),(12,113),(12,114),(12,115),(12,116),(12,117),(12,118),(12,119),(12,120),(12,121),(12,122),(12,123),(13,124),(13,125),(13,126),(13,127),(13,128),(13,129),(13,130),(13,131),(13,132),(13,133),(13,134),(13,135),(14,136),(14,137),(14,138),(14,139),(14,140),(14,141),(14,142),(14,143),(14,144),(14,145),(14,146),(14,147),(14,148),(14,149),(14,150),(14,151),(15,152),(15,153),(15,154),(15,155),(15,156),(15,157),(15,158),(15,159),(15,160),(15,161),(15,162),(15,163),(15,164),(15,165),(15,166),(16,167),(16,168),(16,169),(16,170),(16,171),(16,172),(16,173),(16,174),(16,175),(16,176),(16,177),(16,178),(17,179),(17,180),(17,181),(17,182),(17,183),(17,184),(17,185),(17,186),(17,187),(17,188),(17,189),(17,190),(18,191),(18,192),(18,193),(18,194);
/*!40000 ALTER TABLE `album_tracklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL,
  `album_name` varchar(70) NOT NULL,
  `num_of_songs` int NOT NULL,
  `release_year` year NOT NULL,
  `genre_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`album_id`,`genre_id`,`artist_id`),
  UNIQUE KEY `album_id_UNIQUE` (`album_id`),
  KEY `fk_albums_rock_genres1_idx` (`genre_id`),
  KEY `fk_albums_artists1_idx` (`artist_id`),
  CONSTRAINT `fk_albums_artists1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`),
  CONSTRAINT `fk_albums_rock_genres1` FOREIGN KEY (`genre_id`) REFERENCES `rock_genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Dark Side Of The Moon',10,1973,1,1),(2,'Rumours',11,1977,6,2),(3,'Led Zeppelin III',10,1970,3,3),(4,'The Rise and Fall of Ziggy Stardust and The Spiders From Mars',11,1972,3,4),(5,'Hotel California',9,1976,3,7),(6,'Paranoid',8,1970,2,6),(7,'Bad',10,1987,6,8),(8,'Back In Black',10,1980,2,9),(9,'Let\'s Dance',8,1983,6,4),(10,'Songs From The Big Chair',9,1985,6,10),(11,'Face Value',13,1981,6,11),(12,'MTV Unplugged In New York',14,1994,8,12),(13,'OK Computer',12,1997,8,13),(14,'Use Your Illusion I',16,1991,2,14),(15,'Dookie',15,1994,9,15),(16,'Achtung Baby',12,1991,8,16),(17,'The Razors Edge',12,1990,2,9),(18,'0203 Group 4',4,2021,10,17);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `artist_and_song`
--

DROP TABLE IF EXISTS `artist_and_song`;
/*!50001 DROP VIEW IF EXISTS `artist_and_song`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artist_and_song` AS SELECT 
 1 AS `song_name`,
 1 AS `artist_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(45) NOT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_id_UNIQUE` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Pink Floyd'),(2,'Fleetwood Mac'),(3,'Led Zeppelin'),(4,'David Bowie'),(5,'The Beatles'),(6,'Black Sabbath'),(7,'Eagles'),(8,'Michael Jackson'),(9,'AC/DC'),(10,'Tears For Fears'),(11,'Phil Collins'),(12,'Nirvana'),(13,'Radiohead'),(14,'Guns N\' Roses'),(15,'Green Day'),(16,'U2'),(17,'Group 4');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `longer_songs`
--

DROP TABLE IF EXISTS `longer_songs`;
/*!50001 DROP VIEW IF EXISTS `longer_songs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `longer_songs` AS SELECT 
 1 AS `Song`,
 1 AS `Length`,
 1 AS `Artist`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `producer_albums`
--

DROP TABLE IF EXISTS `producer_albums`;
/*!50001 DROP VIEW IF EXISTS `producer_albums`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `producer_albums` AS SELECT 
 1 AS `Producer`,
 1 AS `Album`,
 1 AS `Year`,
 1 AS `Album Artist`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
  `producer_id` int NOT NULL,
  `producer_name` varchar(45) NOT NULL,
  PRIMARY KEY (`producer_id`),
  UNIQUE KEY `producer_id_UNIQUE` (`producer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (1,'Pink Floyd'),(2,'Richard Dashut'),(3,'Fleetwood Mac'),(4,'Ken Caillat'),(5,'Ken Perry'),(6,'Jimmy Page'),(7,'Peter Grant'),(8,'Andy Johns'),(9,'David Bowie'),(10,'Ken Scott'),(11,'Mick Ronson'),(12,'Bill Szymczyk'),(13,'Roger Bain'),(14,'Michael Jackson'),(15,'Quincy Jones'),(16,'Robert John Lange'),(17,'Nile Rodgers'),(18,'Chris Hughes'),(19,'Phil Collins'),(20,'Hugh Padgham'),(21,'Joel Stillerman'),(22,'Nirvana'),(23,'Alex Coletti'),(24,'Scott Litt'),(25,'Mike Clink'),(26,'Guns N\' Roses'),(27,'Green Day'),(28,'Brian Eno'),(29,'Daniel Lanois'),(30,'Steve Lillywhite'),(31,'Bruce Fairbairn'),(32,'Zaz Shiao'),(33,'Lindsay Harrison'),(34,'Mohamed Suliman'),(35,'Hopeson Ehizele');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rock_genres`
--

DROP TABLE IF EXISTS `rock_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rock_genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_id_UNIQUE` (`genre_id`),
  UNIQUE KEY `genre_name_UNIQUE` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rock_genres`
--

LOCK TABLES `rock_genres` WRITE;
/*!40000 ALTER TABLE `rock_genres` DISABLE KEYS */;
INSERT INTO `rock_genres` VALUES (8,'Alternative Rock'),(4,'Blues Rock'),(3,'Classic Rock'),(5,'Glam'),(2,'Hard Rock'),(6,'Pop Rock'),(1,'Progressive Rock'),(7,'Psychodelic Rock'),(9,'Punk Rock'),(10,'SQL');
/*!40000 ALTER TABLE `rock_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `song_name` varchar(45) NOT NULL,
  `song_length` tinytext NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`song_id`,`artist_id`),
  UNIQUE KEY `song_id_UNIQUE` (`song_id`),
  KEY `artist_id_idx` (`artist_id`),
  CONSTRAINT `artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Speak To Me','1:13',1),(2,'Breathe','2:44',1),(3,'On The Run','3:53',1),(4,'Time','6:47',1),(5,'The Great Gig In The Sky','4:37',1),(6,'Money','6:29',1),(7,'Us And Them','7:45',1),(8,'Any Colour You Like','3:27',1),(9,'Brain Damage','3:47',1),(10,'Eclipse','1:58',1),(11,'Second Hand News','2:43',2),(12,'Dreams','4:14',2),(13,'Never Going Back Again','2:02',2),(14,'Don\'t Stop','3:11',2),(15,'Go Your Own Way','3:38',2),(16,'Songbird','3:20',2),(17,'The Chain','4:28',2),(18,'You Make Loving Fun','3:31',2),(19,'I Don\'t Want To Know','3:11',2),(20,'Oh Daddy','3:54',2),(21,'Gold Dust Woman','4:51',2),(22,'Immigrant Song','2:26',3),(23,'Friends','3:55',3),(24,'Celebration Day','3:29',3),(25,'Since I\'ve Been Loving You','7:25',3),(26,'Out On The Tiles','4:04',3),(27,'Gallows Pole','4:58',3),(28,'Tangerine','3:12',3),(29,'That\'s The Way','5:38',3),(30,'Bron-Y-Aur Stomp','4:20',3),(31,'Hats Off To (Roy) Harper','3:41',3),(32,'Five Years','4:42',4),(33,'Soul Love','3:34',4),(34,'Moonage Daydream','4:40',4),(35,'Starman','4:10',4),(36,'It Ain\'t Easy','2:58',4),(37,'Lady Stardust','3:22',4),(38,'Star','2:47',4),(39,'Hang On To Yourself','2:40',4),(40,'Ziggy Stardust','3:13',4),(41,'Suffragette City','3:25',4),(42,'Rock \'N\' Roll Suicide','2:58',4),(43,'Hotel California','6:30',7),(44,'New Kid In Town','5:04',7),(45,'Life In The Fast Lane','4:46',7),(46,'Wasted Time','4:55',7),(47,'Wasted Time (Reprise)','1:22',7),(48,'Victim Of Love','4:11',7),(49,'Pretty Maids All In A Row','4:05',7),(50,'Try And Love Again','5:10',7),(51,'The Last Resort','7:25',7),(52,'War Pigs','7:55',6),(53,'Paranoid','2:50',6),(54,'Planet Caravan','4:30',6),(55,'Iron Man','6:00',6),(56,'Electric Funeral','4:50',6),(57,'Hand Of Doom','7:10',6),(58,'Rat Salad','2:30',6),(59,'Fairies Wear Boots','6:15',6),(60,'Bad','4:06',8),(61,'The Way You Make Me Feel','4:58',8),(62,'Speed Demon','4:01',8),(63,'Liberian Girl','3:52',8),(64,'Just Good Friends','4:05',8),(65,'Another Part Of Me','3:53',8),(66,'Man In The Mirror','5:18',8),(67,'I Just Can\'t Stop Loving You','4:23',8),(68,'Dirty Diana','4:52',8),(69,'Smooth Criminal','4:16',8),(70,'Hell\'s Bells','5:10',9),(71,'Shoot To Thrill','5:17',9),(72,'What Do You Do For Money Honey','3:36',9),(73,'Given The Dog A Bone','3:31',9),(74,'Let Me Put My Love Into You','4:12',9),(75,'Back In Black','4:17',9),(76,'You Shook Me All Night Long','3:29',9),(77,'Have A Drink On Me','4:01',9),(78,'Shake A Leg','4:04',9),(79,'Rock And Roll Ain\'t Noise Pollution','4:12',9),(80,'Modern Love','4:46',4),(81,'China Girl','5:32',4),(82,'Let\'s Dance','7:38',4),(83,'Without You','3:08',4),(84,'Ricochet','5:14',4),(85,'Criminal World','4:25',4),(86,'Cat People (Putting Out Fire)','5:09',4),(87,'Shake It','3:49',4),(88,'Shout','6:31',10),(89,'The Working Hour','6:29',10),(90,'Everybody Wants To Rule The World','4:09',10),(91,'Mothers Talk','5:04',10),(92,'I believe','2:38',10),(93,'Broken','2:38',10),(94,'Head Over Heels','4:58',10),(95,'Broken (Live)','2:38',10),(96,'Listen','6:47',10),(97,'In The Air Tonight','5:27',11),(98,'This Must Be Love','3:55',11),(99,'Behind The Lines','3:54',11),(100,'The Roof Is Leaking','3:15',11),(101,'Droned','2:49',11),(102,'Hand In Hand','5:20',11),(103,'I Missed Again','3:40',11),(104,'You Know What I Mean','2:33',11),(105,'Thunder And Lightning','4:11',11),(106,'I\'m Not Moving','2:30',11),(107,'If Leaving Me Is Easy','4:54',11),(108,'Tomorrow Never Knows','4:18',11),(109,'Over The Rainbow','0:00',11),(110,'About A Girl','3:37',12),(111,'Come As You Are','4:13',12),(112,'Jesus Doesn\'t Want Me For A Sunbeam','4:37',12),(113,'The Man Who Sold The World','4:20',12),(114,'Pennyroyal Tea','3:40',12),(115,'Dumb','2:52',12),(116,'Polly','3:16',12),(117,'On A Plain','3:44',12),(118,'Something In The Way','4:01',12),(119,'Plateau','3:38',12),(120,'Oh Me','3:26',12),(121,'Lake Of Fire','2:55',12),(122,'All Apologies','4:23',12),(123,'Where Did You Sleep Last Night','5:07',12),(124,'Airbag','4:44',13),(125,'Paranoid Android','6:23',13),(126,'Subterranean Homesick Alien','4:27',13),(127,'Exit Music (For A Film)','4:24',13),(128,'Let Down','4:59',13),(129,'Karma Police','4:21',13),(130,'Fitter Happier','1:57',13),(131,'Electioneering','3:50',13),(132,'Climbing Up The Walls','4:45',13),(133,'No Surprises','3:48',13),(134,'Lucky','4:19',13),(135,'The Tourist','5:24',13),(136,'Right Next Door To Hell','2:58',14),(137,'Dust N\' Bones','4:55',14),(138,'Live And Let Die','2:59',14),(139,'Don\'t Cry (Original)','4:42',14),(140,'Perfect Crime','2:22',14),(141,'You Ain\'t The First','2:32',14),(142,'Bad Obsession','5:26',14),(143,'Back Off Bitch','5:01',14),(144,'Double Talkin\' Jive','3:19',14),(145,'November Rain','8:53',14),(146,'The Garden','5:17',14),(147,'Garden Of Eden','2:36',14),(148,'Don\'t Damn Me','5:15',14),(149,'Bad Apples','4:25',14),(150,'Dead Horse','4:17',14),(151,'Coma','10:08',14),(152,'Burnout','2:07',15),(153,'Having A Blast','2:44',15),(154,'Chump','2:54',15),(155,'Longview','3:59',15),(156,'Welcome To Paradise','3:44',15),(157,'Pulling Teeth','2:30',15),(158,'Basket Case','3:03',15),(159,'She','2:14',15),(160,'Sassafras Roots','2:37',15),(161,'When I Come Around','2:58',15),(162,'Coming Clean','1:34',15),(163,'Emenius Sleepus','1:43',15),(164,'In The End','1:46',15),(165,'F.O.D.','4:08',15),(166,'All By Myself','1:38',15),(167,'Zoo Station','4:36',16),(168,'Even Better Than The Real Thing','3:41',16),(169,'One','4:36',16),(170,'Until The End Of The World','4:39',16),(171,'Who\'s Gonna Ride Your Wild Horses','5:16',16),(172,'So Cruel','5:49',16),(173,'The Fly','4:29',16),(174,'Mysterious Ways','4:04',16),(175,'Tryin\' To Throw Your Arms Around The World','3:53',16),(176,'Ultra Violet (Light My Way)','5:31',16),(177,'Acrobat','4:30',16),(178,'Love Is Blindness','4:23',16),(179,'Thunderstruck','4:52',9),(180,'Fire Your Guns','2:53',9),(181,'Moneytalks','3:45',9),(182,'The Razors Edge','4:22',9),(183,'Mistress For Christmas','3:58',9),(184,'Rock Your Heart Out','4:06',9),(185,'Are You Ready','4:10',9),(186,'Got You By The Balls','4:29',9),(187,'Shot Of Love','3:57',9),(188,'Lets Make It','3:32',9),(189,'Goodbye & Good Riddance To Bad Luck','3:14',9),(190,'If You Dare','3:11',9),(191,'Office Hours','7:00',17),(192,'Lab','12:00',17),(193,'Lecture','10:00',17),(194,'Assignments','7:00',17);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `songs_per_year`
--

DROP TABLE IF EXISTS `songs_per_year`;
/*!50001 DROP VIEW IF EXISTS `songs_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `songs_per_year` AS SELECT 
 1 AS `Year`,
 1 AS `Amount Of Songs`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'vinyldb'
--

--
-- Dumping routines for database 'vinyldb'
--

--
-- Final view structure for view `90s_artists_and_albums`
--

/*!50001 DROP VIEW IF EXISTS `90s_artists_and_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `90s_artists_and_albums` AS select `albums`.`album_name` AS `album_name`,`artists`.`artist_name` AS `artist_name` from (`albums` join `artists` on((`albums`.`artist_id` = `artists`.`artist_id`))) where ((`albums`.`release_year` > 1989) and (`albums`.`release_year` < 2000)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `artist_and_song`
--

/*!50001 DROP VIEW IF EXISTS `artist_and_song`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artist_and_song` AS select `songs`.`song_name` AS `song_name`,`artists`.`artist_name` AS `artist_name` from (`artists` join `songs` on((`artists`.`artist_id` = `songs`.`artist_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `longer_songs`
--

/*!50001 DROP VIEW IF EXISTS `longer_songs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `longer_songs` AS select `songs`.`song_name` AS `Song`,`songs`.`song_length` AS `Length`,`artists`.`artist_name` AS `Artist` from (`songs` join `artists` on((`songs`.`artist_id` = `artists`.`artist_id`))) where (`songs`.`song_length` > (select avg(`songs`.`song_length`) from `songs`)) order by `songs`.`song_length` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `producer_albums`
--

/*!50001 DROP VIEW IF EXISTS `producer_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producer_albums` AS select `producers`.`producer_name` AS `Producer`,`albums`.`album_name` AS `Album`,`albums`.`release_year` AS `Year`,`artists`.`artist_name` AS `Album Artist` from (((`album_producers` join `producers` on((`album_producers`.`producer_id` = `producers`.`producer_id`))) join `albums` on((`album_producers`.`album_id` = `albums`.`album_id`))) join `artists` on((`albums`.`artist_id` = `artists`.`artist_id`))) order by `producers`.`producer_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `songs_per_year`
--

/*!50001 DROP VIEW IF EXISTS `songs_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `songs_per_year` AS select `albums`.`release_year` AS `Year`,count(`songs`.`song_id`) AS `Amount Of Songs` from ((`songs` join `album_tracklist` on((`songs`.`song_id` = `album_tracklist`.`song_id`))) join `albums` on((`album_tracklist`.`album_id` = `albums`.`album_id`))) group by `albums`.`release_year` order by `albums`.`release_year` */;
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

-- Dump completed on 2021-12-15 23:19:28
