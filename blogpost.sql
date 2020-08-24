-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blogpost
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add profile',8,'add_profile'),(30,'Can change profile',8,'change_profile'),(31,'Can delete profile',8,'delete_profile'),(32,'Can view profile',8,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$o6t7VyRhlXEP$NuQ5fnlurGrr3YuBSlvzXRw2+Y+1EFaZf6N3g9p0PJk=','2020-08-24 04:51:36.908451',1,'aditya','Aditya','Mukherjee','adityamukherjee98@gmail.com',1,1,'2019-12-23 20:44:36.000000'),(2,'pbkdf2_sha256$180000$1rtQlRZ83lEe$Hf6s76Eg/M1n36pubjAoR1Y4za8sm0iNLCU3QCaqV98=','2020-06-04 09:46:31.818013',0,'Rakesh','Rakesh','Kumar','rakesh1@gmail.com',0,1,'2019-12-23 20:46:38.000000'),(3,'pbkdf2_sha256$180000$ByAP8vVrZz9b$fhgUVowjT72rhzJK3+CgJi/6dTUn+rsixp744A5exxU=','2019-12-28 13:27:43.883803',0,'Navneet','Navneet','Nayak','navneet12@gmail.com',1,1,'2019-12-24 04:54:26.000000'),(4,'pbkdf2_sha256$150000$yRgCMUel9EDw$q3Vom8IpTCnQ6tlzLpfa7ACgTGRe+e3lCGQGrIHr/Ag=',NULL,0,'abhishek','','','',0,1,'2019-12-25 07:04:12.570442'),(5,'pbkdf2_sha256$180000$wgBTLuO4HLj7$VqSJEyi0mMvTbCV0zbKv8uMF37EtVpwA+UAo00EPz74=',NULL,0,'Rohit','','','rohit1123@gmail.com',0,1,'2019-12-25 07:30:08.604923'),(6,'pbkdf2_sha256$180000$1MITpu3BQRgb$qmNKbm8MS5c5VYLjlNt4qmkSKalyXGe3/9fDMKm+cAg=','2019-12-25 17:20:59.926479',0,'Ramesh','','','ramesh01@gmail.com',0,1,'2019-12-25 17:02:11.659331'),(7,'pbkdf2_sha256$180000$9QU7Y6cBjHCQ$afgYCUupeGnn+XtGtxYp5SMY5CgwAigYZIjwEWz4bKY=','2019-12-25 17:41:19.716836',0,'Dhoni','','','dhoni123@gmail.com',0,1,'2019-12-25 17:41:08.313287'),(8,'pbkdf2_sha256$180000$3gAEtYklcxcQ$u6VHDE9jKWCxJEA3yznJtB627vlDDKlg4p91O7pTMa8=','2019-12-25 17:52:52.250900',0,'Yogesh','','','yogesh234@gmail.com',0,1,'2019-12-25 17:52:33.210389'),(9,'pbkdf2_sha256$180000$9Afw76ZgloQg$6MN5nVsSo/rg2LL3yUvsvRtdMV61DkWAf4Y6UdMNb0k=','2019-12-25 18:18:02.684413',0,'Deepika123','','','deepika12@gmail.com',0,1,'2019-12-25 18:17:47.471161'),(10,'pbkdf2_sha256$180000$91gkbJZqLPdJ$i6RtULBNaXWHcbT8TlIvC3IICNcUdYAC3zsAQklB9RM=','2019-12-28 13:01:40.164880',0,'mukesh','','','mukesh123@gmail.com',1,1,'2019-12-28 12:58:14.000000'),(11,'pbkdf2_sha256$180000$nYU8JcWDdOiy$M11D5PioROeP7HOaWrlWFflY+bPV98GxrjNlGCnz8NQ=',NULL,0,'shibin','','','shibin01@gmail.com',0,1,'2020-04-23 17:26:21.826925'),(12,'pbkdf2_sha256$180000$jYdHkM6v8Dox$rgKha47F8ZWQi2V8FS1+f+LYvyW4TU8XERjnyjKA3fk=',NULL,0,'shibin01','','','shibin02@gmail.com',0,1,'2020-04-23 17:28:11.286063'),(13,'pbkdf2_sha256$180000$JiRQvIj9wkIp$b45uw49IMsu4QSMw0dSU1PE83on8If5tSAvFnblKV2Q=',NULL,0,'rahul','','','rahul01@gmail.com',0,1,'2020-06-04 09:38:08.068314'),(14,'pbkdf2_sha256$180000$1mRHJArazpVL$AP28X2MQP1Tb6hMuqYlxaje/YgtFuGC9D0gugTKADQ4=',NULL,0,'ganesh','','','ganesh01@gmail.com',0,1,'2020-06-04 09:49:20.012750'),(15,'pbkdf2_sha256$180000$FJaTkOKkvntG$Cbz9YJ9XiWou7TwkC8nqGGS4RZ7qkeuwqaG+wKYMtX0=','2020-06-04 09:57:15.383541',0,'ganesh01','','','ganesh01@gmail.com',0,1,'2020-06-04 09:56:53.002582'),(16,'pbkdf2_sha256$180000$OyEASoitCIRO$67szOONcDl7tCYfnFUH2cFD7lNS68fnltVIGx1HdtJg=','2020-06-04 10:01:05.491491',0,'john01','','','john01@gmail.com',0,1,'2020-06-04 10:00:04.022515'),(17,'pbkdf2_sha256$180000$QDf9S23iJDF3$RburZGpP6R/3BDuKLyJydIe770wP7G1/AlP3x1P+L4k=','2020-08-24 04:55:48.616773',0,'Gour_01','','','gmukherjee01@gmail.com',0,1,'2020-08-24 04:55:10.786079');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'Blog Post 2 Updated','Second Blog Post','2019-12-24 20:11:57.553731',3),(3,'Blog Post 3 update','Third Blog Post updated','2019-12-28 05:48:30.397242',1),(5,'Blog Post 4','Fourth blog post','2019-12-28 07:46:59.696873',1),(7,'My Updated Post','My first updated post!\r\n\r\nThis is exciting!','2019-12-28 12:16:51.708612',1),(8,'A Second Post','This is a post from a different user...','2019-12-28 12:16:51.745107',2),(9,'Top 5 Programming Lanaguages','Te melius apeirian postulant cum, labitur admodum cu eos! Tollit equidem constituto ut has. Et per ponderum sadipscing, eu vero dolores recusabo nec! Eum quas epicuri at, eam albucius phaedrum ad, no eum probo fierent singulis. Dicat corrumpit definiebas id usu, in facete scripserit eam.\r\n\r\nVim ei exerci nusquam. Agam detraxit an quo? Quo et partem bonorum sensibus, mutat minimum est ad. In paulo essent signiferumque his, quaestio sadipscing theophrastus ad has. Ancillae appareat qualisque ei has, usu ne assum zril disputationi, sed at gloriatur persequeris.','2019-12-28 12:16:51.745107',1),(10,'Sublime Text Tips and Tricks','Ea vix dico modus voluptatibus, mel iudico suavitate iracundia eu. Tincidunt voluptatibus pro eu? Nulla omittam eligendi his ne, suas putant ut pri. Ullum repudiare at duo, ut cum habeo minim laudem, dicit libris antiopam has ut! Ex movet feugait mea, eu vim impetus nostrud cotidieque.\r\n\r\nEi suas similique quo, his simul viris congue ex? Graeci possit in est, ne qui minim delectus invenire. Mei ad error homero maluisset, tacimates assentior per in, vix ut vocent accusata! Mei eu inermis pericula patrioque? Debet denique sea at, ad cibo reformidans theophrastus per, cu inermis maiestatis vim!\r\n\r\nUt odio feugiat voluptua est, euismod volutpat qualisque at sit, has ex dicit ornatus inimicus! Eu ferri laoreet vel, dicat corrumpit dissentias nec in. Illum dissentiunt eam ei, praesent voluptatum pri in? Ius in inani petentium, hinc elitr vivendum an vis, in vero dolores electram ius?','2019-12-28 12:16:51.745107',1),(11,'Best Python IDEs','Elit contentiones nam no, sea ut consul adipiscing. Etiam velit ei usu, sonet clita nonumy eu eum. Usu ea utroque facilisi, cu mel fugit tantas legimus, te vix quem nominavi. Prima deserunt evertitur ne qui, nam reprimique appellantur ne.','2019-12-28 12:16:51.745107',1),(12,'Flask vs Django - Which Is Better?','Ei dicta apeirian deterruisset eam, cu offendit invenire pri, cu possim vivendo vix? Nam nihil evertitur ad, ne vim nonumy legendos iracundia. Vix nulla dolorem intellegebat ea? Te per vide paulo dolor, eum ea erant placerat constituam? Dolores accumsan eum at.\r\n\r\nInteresset consequuntur id vix. Eam id decore latine, iusto imperdiet ei qui. In ludus consul reformidans eam. Nec in recusabo posidonium, cu tantas volumus mnesarchum pro. Nam ut docendi evertitur, possim menandri persecuti ne sed, cum saepe ornatus delenit ei?\r\n\r\nIn mel debet aliquam. In his etiam legere, doming nominavi consetetur has ad, decore reprimique ea usu. Eam magna graeci suavitate cu, facete delenit cum ne. Ponderum evertitur tincidunt ei mel, ius ei stet euismod docendi.','2019-12-28 12:16:51.745107',2),(13,'You Won\'t Believe These Clickbait Titles!','Cu justo honestatis mel, pro ei appareat mediocrem suavitate. No his omnis ridens. Ludus ornatus voluptatum mei ut, an mentitum noluisse forensibus cum. Eam affert pertinax consequuntur ei, nisl zril meliore te vis? Ad animal persius concludaturque vix, eu graece audiam mel.\r\n\r\nVitae libris mentitum pri in. Cu rebum veritus sea, ex usu consul dolorum, pro tale maluisset consulatu ut. Quo ad clita persius ancillae. Vel illud blandit at, vel eu hinc graeco, usu doctus praesent ea! Vim rebum deserunt ex.\r\n\r\nIus lorem omittam id, est suavitate definitionem ad! Id vim insolens tacimates, pri at decore causae. Ex duo bonorum repudiandae? Vix no vidit facete impedit. An oportere indoctum eam.','2019-12-28 12:16:51.760735',2),(14,'These Beers Will Improve Your Programming','Sanctus senserit vis id, ut eum iuvaret invidunt constituam? Nonumes facilis mei an, ad elit explicari persequeris pri, dico recusabo quo id? At mea lorem repudiandae. Sed causae sensibus forensibus ea, ne ornatus suscipiantur consectetuer mel, affert nostro nominati cu qui. Te sanctus constituto est, corrumpit pertinacia eos et, mei libris persequeris an.\r\n\r\nQuo fuisset sensibus in. Ad est assueverit adversarium, viris aperiri numquam est ad. Pro mediocrem iudicabit ei! Cu aperiam diceret sit.','2019-12-28 12:16:51.760735',1),(15,'List of PyCon 2018 Talks','Has ea verear adolescens, elit justo constituam duo in, vix an copiosae contentiones. Eos persius consequuntur no, esse percipit cum ea, per modus harum praesent at. Et clita delenit luptatum usu? No cum interpretaris concludaturque. Congue pertinax ea mea.\r\n\r\nBrute iracundia philosophia ei quo, nam at adhuc idque, ex dolor homero mei. No mea affert tacimates pertinacia, in maluisset dissentias consectetuer mei, vel no aliquam splendide. In has nobis vocent adipisci? Pri clita delicata in, iusto viris scripserit vim in? Sit in lorem complectitur. Sanctus eloquentiam eum ut, et sumo apeirian mea? Vim te affert populo voluptaria, utinam consul ad duo.','2019-12-28 12:16:51.760735',1),(16,'How Dogs in the Workplace Boosts Productivity','Has ea verear adolescens, elit justo constituam duo in, vix an copiosae contentiones. Eos persius consequuntur no, esse percipit cum ea, per modus harum praesent at. Et clita delenit luptatum usu? No cum interpretaris concludaturque. Congue pertinax ea mea.\r\n\r\nBrute iracundia philosophia ei quo, nam at adhuc idque, ex dolor homero mei. No mea affert tacimates pertinacia, in maluisset dissentias consectetuer mei, vel no aliquam splendide. In has nobis vocent adipisci? Pri clita delicata in, iusto viris scripserit vim in? Sit in lorem complectitur. Sanctus eloquentiam eum ut, et sumo apeirian mea? Vim te affert populo voluptaria, utinam consul ad duo.','2019-12-28 12:16:51.760735',1),(17,'The Best Programming Podcasts','Vidisse malorum platonem vel no. Persecuti adversarium ut sit, quo et stet velit mundi! Id per homero expetenda. Est brute adipisci et!\r\n\r\nLorem aliquip has in, quo debet ceteros sadipscing ne! An sea odio ornatus inermis, an per ipsum persecuti dissentiunt, no mea bonorum pertinacia delicatissimi? Ne sumo diceret mea, percipit repudiare eam no! Pro et lorem accommodare. At eius novum phaedrum mei?\r\n\r\nIgnota conclusionemque mei no, eam ut munere fierent pertinacia. Ea enim insolens gloriatur duo, quis vituperatoribus pro no! Ei sed bonorum reprehendunt, aliquam nominavi his et. Magna decore referrentur id nec. Cum rebum ludus inimicus no, id cum iusto labores maluisset!\r\n\r\nQui no omnis numquam apeirian, et vide interesset cum? Et nec nulla signiferumque. Enim instructior eos ei, solum tollit phaedrum his in? No vix malorum ornatus, cu quo hinc everti iracundia, essent eruditi efficiendi ut nam. Altera saperet usu eu, errem expetenda cu duo. Has dolor splendide et, no mel cibo ancillae voluptatum, mutat antiopam deterruisset ei qui. Dolores scripserit concludaturque est id, ea animal facilisi splendide qui, quo at animal voluptua instructior.\r\n\r\nMeis voluptatum eu eum.','2019-12-28 12:16:51.760735',1),(18,'Tips for Public Speaking','Ex eam doctus accommodare. Ut oratio vivendo intellegebat qui. Ius ne doming petentium. Pri congue delectus ad, accumsan molestiae disputando te mea. Nam case inani eligendi at, per te esse iudico. Feugiat patrioque mei ad, harum mundi adversarium an per!\r\n\r\nAncillae verterem eleifend his at? Nam vidit iusto petentium at, vis nusquam dissentias cu, etiam doctus adversarium eam no. At alterum definiebas efficiantur eos, pro labitur vituperatoribus ne, eu odio legere vim. Ad nec verear appellantur? Ad qui vulputate persequeris.','2019-12-28 12:16:51.760735',2),(19,'Best Programmers Throughout History','Mel nulla legimus senserit id. Vim purto tractatos in, te vix error regione, erant laudem legere an vel. Falli fierent ius ex! In legere iriure est, id vis prima maluisset, purto numquam inimicus ut eos! In duo antiopam salutatus, an vel quodsi virtute definitiones.\r\n\r\nEst te sumo voluptaria, ius no putant argumentum, alienum ocurreret vim cu? Volumus democritum no vel, virtute commune an est. Vel te propriae lobortis rationibus, no eum odio neglegentur? Duo an sumo ignota latine! Nec mazim aperiam percipitur eu, id his dicit omnium.','2019-12-28 12:16:51.776355',2),(20,'How To Create A YouTube Channel','Sit et novum omnes. Nec ea quas minim tractatos, usu in aperiam mentitum necessitatibus, ut omnis equidem moderatius quo. Eos ad putent aeterno praesent. Eos omnium similique id, his accommodare philosophia at. Causae lucilius similique in mea, ut regione tritani voluptatibus mel! At possim offendit eum, aeque denique prodesset pro te?\r\n\r\nAt pro quem laudem. Et agam democritum eos? Ea quod probatus usu, no ferri fabulas cotidieque mei? Numquam nusquam quo in, quo et molestiae complectitur. Nihil semper ei qui.\r\n\r\nModo omnes forensibus duo ex, te est diceret bonorum labores! Magna ponderum eos ea. Cu vim diceret mnesarchum, graeci periculis in vis. Est no iriure suavitate!','2019-12-28 12:16:51.776355',2),(21,'How I Record My Videos','Ad vel possim delicatissimi, delectus detraxit per cu. Ad pri vidit modus altera! In erat complectitur sit, quo no nostro insolens? Aliquam patrioque scribentur quo ad, partem commune eos at. Eius vivendo comprehensam has ne, sea ne eros mazim oratio. Soluta populo te duo, ne pro causae fabulas percipitur, feugiat.','2019-12-28 12:16:51.776355',1),(22,'Python and Physics','Agam mediocritatem sed ex, fabellas recusabo dissentias vix te. No principes consequat inciderint pri, ea mundi affert persecuti mea, ne usu veri regione nostrum! An tibique dissentiet referrentur pro, ridens temporibus eu est! Ius ne omnes affert rationibus, ut detraxit qualisque usu. Accusamus reformidans sea id?\r\n\r\nEu aliquip gloriatur mei. Qui ad sint scripserit? Te instructior definitiones mel, sale mutat everti at his. Ea mea quot recusabo philosophia. Et nam quod adipisci, quo atqui appetere recusabo id, detraxit inimicus vim.','2019-12-28 12:16:51.776355',1),(23,'Just A Few More Healines Should Do It','Duo at tibique commune vulputate, ex facilis tacimates disputationi mei. Mel eu inani prompta labores! Audire omnesque offendit ex eos. An ferri accusata his, vel agam habeo maiestatis ex, eam mutat iisque concludaturque ut. Ut tamquam minimum partiendo vim. An nam vidit doming graecis.\r\n\r\nSingulis abhorreant his in, et altera audiam feugiat mei. Pri eius dolor persequeris id! Nam ea dolorem expetendis, idque everti suscipit qui te, noster repudiare dignissim per ex? No vim iriure tibique comprehensam, per utamur consequat.','2019-12-28 12:16:51.776355',1),(24,'Music To Listen To While Coding','Feugait reprimique eu mel, te eum dico electram. Nam no nemore cotidieque. Vim cu suas atqui dicunt. Id labitur dissentiunt per, ignota maiorum pri no? Clita altera sanctus ex his!\r\n\r\nAt alia electram reprehendunt eam, sea te volumus quaestio. Commodo voluptua senserit ius ne, eu enim disputationi eam? Id pri omnium blandit, nullam denique nec no? Sapientem vituperata sit et, nisl facilisis periculis in est. Elaboraret accommodare id vel? Cibo eripuit ut has, sed cu liber invidunt.\r\n\r\nEi pro vide quas dolorum, sea no fugit sanctus neglegentur. Sit feugait disputationi ne. Id diceret periculis nec, sint nonumes in sea, cum.bye','2019-12-28 12:16:51.791977',1),(25,'5 Tips for Writing Catchy Headlines','Ea homero possit epicuri est, debitis docendi tacimates cu duo? Ad lorem cetero disputando pri, veniam eruditi tacimates per te.','2019-12-28 12:16:51.791977',2),(26,'The Rise of Data Science','Per omittam placerat at. Eius aeque ei mei. Usu ex partiendo salutandi. Pro illud placerat molestiae ex, habeo vidisse voluptatum cu vel, efficiendi accommodare eum ea! Ne has case minimum facilisis, pertinax efficiendi eu vel!\r\n\r\nEt movet semper assueverit his. Mei at liber vitae. Vix et periculis definiebas, vero falli.','2019-12-28 12:16:51.791977',2),(27,'Best Videos For Learning Python','Mei ei mazim dicunt feugait? Ludus mandamus ne est, per ne iusto facilisis moderatius! Has agam utamur ad! Ius reque aeterno cu, fabellas facilisi repudiare eu sit, te cibo convenire similique est. Ea cum viderer imperdiet liberavisse.\r\n\r\nPro minim iuvaret ad. No nam ornatus principes euripidis, at sale vituperatoribus eos, eros regione scripserit id mea. Has ne inermis nostrum, quo tantas melius dissentias at! Ut vim tibique omnesque. An mel modo ponderum, eum at probo appetere imperdiet? Natum quaeque intellegebat per ex. Cu viris clita sit?\r\n\r\nReque menandri dissentias sed ne, no tota nonumes eos, vix in tempor maiestatis erant.','2019-12-28 12:16:51.791977',1),(28,'Top 10 Python Tips and Tricks','Pro minim iuvaret ad. No nam ornatus principes euripidis, at sale vituperatoribus eos, eros regione scripserit id mea. Has ne inermis nostrum, quo tantas melius dissentias at! Ut vim tibique omnesque. An mel modo ponderum, eum at probo appetere imperdiet? Natum quaeque intellegebat per ex. Cu viris clita sit?\r\n\r\nReque menandri dissentias sed ne, no tota nonumes eos, vix in tempor maiestatis erant.','2019-12-28 12:16:51.791977',1),(29,'Top 5 YouTube Channels For Learning Programming','Quo inani quando ea, mel an vide adversarium suscipiantur. Et dicunt eleifend splendide pro. Nibh animal dolorem vim ex, nec te agam referrentur. Usu admodum ocurreret ne.\r\n\r\nEt dico audire cotidieque sed, cibo latine ut has, an case magna alienum.','2019-12-28 12:16:51.791977',2),(30,'My Latest Updated Post','Erat expetenda definitionem id eos. Semper suscipit eum ut, eum ex nemore copiosae. Nam probatus pertinacia eu! No alii voluptua abhorreant nec, te pro impedit concludaturque, in sea malis torquatos disputationi! Nam te alii nobis ponderum, ei fugit accusamus pro.\r\n\r\nCongue salutandi ex eam! Mei an prima consulatu, erat detracto eu quo? Vim ea esse utinam efficiantur, at noster dicunt.','2019-12-28 12:16:51.791977',1),(31,'Left Cgs','hello wassup!!','2020-06-04 09:48:07.023008',2),(32,'John New blog post','hello i am john. How are you!!','2020-06-04 10:10:25.437641',16);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-12-23 20:46:38.406284','2','Rakesh',1,'[{\"added\": {}}]',4,1),(2,'2019-12-23 20:47:15.621035','2','Rakesh',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(3,'2019-12-23 20:47:19.820459','2','Rakesh',2,'[]',4,1),(4,'2019-12-24 04:53:20.434239','1','aditya',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"last_login\"]}}]',4,1),(5,'2019-12-24 04:54:26.938295','3','Navneet',1,'[{\"added\": {}}]',4,1),(6,'2019-12-24 04:54:59.416311','3','Navneet',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(7,'2019-12-25 14:38:51.996594','1','aditya Profile',1,'[{\"added\": {}}]',8,1),(8,'2019-12-25 14:39:02.995951','2','Navneet Profile',1,'[{\"added\": {}}]',8,1),(9,'2019-12-25 14:54:34.358835','2','Navneet Profile',3,'',8,1),(10,'2019-12-25 14:54:34.372112','1','aditya Profile',3,'',8,1),(11,'2019-12-25 14:54:45.134505','3','aditya Profile',1,'[{\"added\": {}}]',8,1),(12,'2019-12-25 14:54:53.472627','4','Navneet Profile',1,'[{\"added\": {}}]',8,1),(13,'2019-12-25 15:20:49.844437','4','Navneet Profile',3,'',8,1),(14,'2019-12-25 15:20:49.856785','3','aditya Profile',3,'',8,1),(15,'2019-12-25 15:21:01.426908','5','aditya Profile',1,'[{\"added\": {}}]',8,1),(16,'2019-12-25 15:21:12.350310','6','Navneet Profile',1,'[{\"added\": {}}]',8,1),(17,'2019-12-25 16:13:39.512824','6','Navneet Profile',3,'',8,1),(18,'2019-12-25 16:13:39.517768','5','aditya Profile',3,'',8,1),(19,'2019-12-25 16:16:47.029773','7','aditya Profile',1,'[{\"added\": {}}]',8,1),(20,'2019-12-25 16:16:55.866628','8','Navneet Profile',1,'[{\"added\": {}}]',8,1),(21,'2019-12-25 16:18:27.227674','8','Navneet Profile',3,'',8,1),(22,'2019-12-25 16:18:27.239356','7','aditya Profile',3,'',8,1),(23,'2019-12-25 16:19:00.565641','9','aditya Profile',1,'[{\"added\": {}}]',8,1),(24,'2019-12-25 16:19:10.191346','10','Navneet Profile',1,'[{\"added\": {}}]',8,1),(25,'2019-12-25 16:30:43.690041','10','Navneet Profile',3,'',8,1),(26,'2019-12-25 16:30:43.697108','9','aditya Profile',3,'',8,1),(27,'2019-12-25 16:36:00.830564','11','aditya Profile',1,'[{\"added\": {}}]',8,1),(28,'2019-12-25 16:36:11.914824','12','Navneet Profile',1,'[{\"added\": {}}]',8,1),(29,'2019-12-25 16:59:19.072072','3','Navneet',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(30,'2019-12-25 17:13:18.457749','13','Ramesh Profile',1,'[{\"added\": {}}]',8,1),(31,'2019-12-28 12:57:12.112646','15','Rakesh Profile',1,'[{\"added\": {}}]',8,1),(32,'2019-12-28 13:01:26.501020','10','mukesh',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','post'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'users','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-23 20:30:41.739074'),(2,'auth','0001_initial','2019-12-23 20:30:41.926586'),(3,'admin','0001_initial','2019-12-23 20:30:42.403616'),(4,'admin','0002_logentry_remove_auto_add','2019-12-23 20:30:42.566397'),(5,'admin','0003_logentry_add_action_flag_choices','2019-12-23 20:30:42.577154'),(6,'contenttypes','0002_remove_content_type_name','2019-12-23 20:30:42.696833'),(7,'auth','0002_alter_permission_name_max_length','2019-12-23 20:30:42.895695'),(8,'auth','0003_alter_user_email_max_length','2019-12-23 20:30:42.923619'),(9,'auth','0004_alter_user_username_opts','2019-12-23 20:30:42.933592'),(10,'auth','0005_alter_user_last_login_null','2019-12-23 20:30:42.994631'),(11,'auth','0006_require_contenttypes_0002','2019-12-23 20:30:42.999619'),(12,'auth','0007_alter_validators_add_error_messages','2019-12-23 20:30:43.008626'),(13,'auth','0008_alter_user_username_max_length','2019-12-23 20:30:43.076412'),(14,'auth','0009_alter_user_last_name_max_length','2019-12-23 20:30:43.144230'),(15,'auth','0010_alter_group_name_max_length','2019-12-23 20:30:43.166172'),(16,'auth','0011_update_proxy_permissions','2019-12-23 20:30:43.176145'),(17,'sessions','0001_initial','2019-12-23 20:30:43.202076'),(18,'blog','0001_initial','2019-12-23 20:43:05.690646'),(19,'users','0001_initial','2019-12-25 14:37:17.887795');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('oecqkonny2js704v397dk9xrkoxtuhm3','M2ZiYzYzMjFiNDc3ODMzMTZiNDY5YmNjNjU0YTU0ZjdjMzljYjRjZjp7fQ==','2020-01-11 12:18:07.715152'),('qux2jqnmqh30j598ofxkq0mzbr3am5r7','M2ZiYzYzMjFiNDc3ODMzMTZiNDY5YmNjNjU0YTU0ZjdjMzljYjRjZjp7fQ==','2020-01-11 12:56:13.263359'),('yjy5eyolbby6hsfhu59h8vnkuf89hi27','MTI1NGYyMTExNTE4N2Y5Y2ZkM2NkYjcwNWYyZjljZDg1ZWYxMGJmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTViMzUzMzdjYjJhMDcxYTAyNGJiYTNiNTc5NTVmN2IyYzRkNjJiIn0=','2020-01-11 14:31:38.493981');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (11,'profile_pics/aditya_c95ZfTq.jpg',1),(12,'profile_pics/navneeth.jfif',3),(13,'default.jpg',6),(14,'profile_pics/Hydrogen_Remixed.png',9),(15,'profile_pics/Hydrogen_Remixed_ZpOa1FX.png',2),(16,'default.jpg',10),(17,'default.jpg',15),(18,'default.jpg',16),(19,'default.jpg',17);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-24 10:50:15
