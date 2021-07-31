-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lbsdb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Dhaka','Dhaka Division',1,'2021-07-30 19:34:32.465468','2021-07-30 19:34:32.465468'),(2,'Chittagong','Chittagong, Bangladesh',1,'2021-07-30 19:57:14.160821','2021-07-30 19:57:14.160821'),(3,'Rajshahi','Rajshahi, Bangladesh',1,'2021-07-31 05:09:55.964770','2021-07-31 05:09:55.964770'),(4,'Sylhet','Sylhet, Bangladesh',1,'2021-07-31 05:10:16.215418','2021-07-31 05:10:16.215418');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add multiple search information',7,'add_multiplesearchinformation'),(26,'Can change multiple search information',7,'change_multiplesearchinformation'),(27,'Can delete multiple search information',7,'delete_multiplesearchinformation'),(28,'Can view multiple search information',7,'view_multiplesearchinformation'),(29,'Can add price information',8,'add_priceinformation'),(30,'Can change price information',8,'change_priceinformation'),(31,'Can delete price information',8,'delete_priceinformation'),(32,'Can view price information',8,'view_priceinformation'),(33,'Can add vendor',9,'add_vendor'),(34,'Can change vendor',9,'change_vendor'),(35,'Can delete vendor',9,'delete_vendor'),(36,'Can view vendor',9,'view_vendor'),(37,'Can add area',10,'add_area'),(38,'Can change area',10,'change_area'),(39,'Can delete area',10,'delete_area'),(40,'Can view area',10,'view_area'),(41,'Can add product',11,'add_product'),(42,'Can change product',11,'change_product'),(43,'Can delete product',11,'delete_product'),(44,'Can view product',11,'view_product'),(45,'Can add product image',12,'add_productimage'),(46,'Can change product image',12,'change_productimage'),(47,'Can delete product image',12,'delete_productimage'),(48,'Can view product image',12,'view_productimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$sDOZx2eoSVXa$VHwyz9EG3e+v+v5o28r654mmyYK3Qzf6wYWPvJ3RqTc=','2021-07-30 19:30:04.945559',1,'admin','','','admin@lbs.com',1,1,'2021-07-30 19:18:40.727221');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-07-30 19:33:21.896324','2','Chicken',1,'[{\"added\": {}}]',11,1),(2,'2021-07-30 19:34:04.120303','1','Kazi Farm',1,'[{\"added\": {}}]',9,1),(3,'2021-07-30 19:34:32.765305','1','Dhaka',1,'[{\"added\": {}}]',10,1),(4,'2021-07-30 19:34:59.607918','1','PriceInformation object (1)',1,'[{\"added\": {}}]',8,1),(5,'2021-07-30 19:57:14.235444','2','Chittagong',1,'[{\"added\": {}}]',10,1),(6,'2021-07-30 19:57:42.393870','3','Beef',1,'[{\"added\": {}}]',11,1),(7,'2021-07-30 19:58:53.723820','2','Masco Farm',1,'[{\"added\": {}}]',9,1),(8,'2021-07-30 19:59:23.743136','2','Masco Farm | Chittagong | Beef | 600',1,'[{\"added\": {}}]',8,1),(9,'2021-07-30 19:59:46.184803','3','Masco Farm | Dhaka | Chicken | 150',1,'[{\"added\": {}}]',8,1),(10,'2021-07-31 05:09:56.352156','3','Rajshahi',1,'[{\"added\": {}}]',10,1),(11,'2021-07-31 05:10:17.125355','4','Sylhet',1,'[{\"added\": {}}]',10,1),(12,'2021-07-31 05:12:40.704025','4','Mutton',1,'[{\"added\": {}}]',11,1),(13,'2021-07-31 05:13:35.071314','5','Lobster-big',1,'[{\"added\": {}}]',11,1),(14,'2021-07-31 05:14:20.164838','6','Swordfish',1,'[{\"added\": {}}]',11,1),(15,'2021-07-31 05:15:00.493702','7','Dragon Fruit',1,'[{\"added\": {}}]',11,1),(16,'2021-07-31 05:15:23.628926','2','Chicken',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(17,'2021-07-31 05:15:37.319436','3','Beef',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(18,'2021-07-31 05:16:30.084130','3','Xinxang farm',1,'[{\"added\": {}}]',9,1),(19,'2021-07-31 05:16:42.272575','3','Xinxang Farm',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(20,'2021-07-31 05:17:21.230297','4','Hasan Dairy',1,'[{\"added\": {}}]',9,1),(21,'2021-07-31 05:18:34.478916','5','Sakib Shrimp Firm',1,'[{\"added\": {}}]',9,1),(22,'2021-07-31 05:19:32.333674','4','Kazi Farm | Chittagong | Beef | 500',1,'[{\"added\": {}}]',8,1),(23,'2021-07-31 05:19:54.712580','5','Xinxang Farm | Chittagong | Swordfish | 1000',1,'[{\"added\": {}}]',8,1),(24,'2021-07-31 05:20:14.175401','6','Xinxang Farm | Rajshahi | Swordfish | 1300',1,'[{\"added\": {}}]',8,1),(25,'2021-07-31 05:20:30.041809','7','Xinxang Farm | Dhaka | Swordfish | 1100',1,'[{\"added\": {}}]',8,1),(26,'2021-07-31 05:20:53.104919','8','Xinxang Farm | Sylhet | Swordfish | 1200',1,'[{\"added\": {}}]',8,1),(27,'2021-07-31 05:23:18.202250','8','Giant Tiger Prawn',1,'[{\"added\": {}}]',11,1),(28,'2021-07-31 05:24:12.379860','9','Sakib Shrimp Firm | Dhaka | Giant Tiger Prawn | 2000',1,'[{\"added\": {}}]',8,1),(29,'2021-07-31 05:24:29.266641','10','Sakib Shrimp Firm | Rajshahi | Giant Tiger Prawn | 1800',1,'[{\"added\": {}}]',8,1),(30,'2021-07-31 05:24:42.756811','11','Sakib Shrimp Firm | Sylhet | Giant Tiger Prawn | 2200',1,'[{\"added\": {}}]',8,1),(31,'2021-07-31 05:55:46.406214','12','Sakib Shrimp Firm | Chittagong | Giant Tiger Prawn | 2300',1,'[{\"added\": {}}]',8,1),(32,'2021-07-31 05:56:29.639646','13','Masco Farm | Chittagong | Chicken | 155',1,'[{\"added\": {}}]',8,1),(33,'2021-07-31 05:57:05.858563','14','Masco Farm | Rajshahi | Chicken | 155',1,'[{\"added\": {}}]',8,1),(34,'2021-07-31 05:57:22.123329','15','Masco Farm | Sylhet | Chicken | 153',1,'[{\"added\": {}}]',8,1),(35,'2021-07-31 05:59:11.016332','16','Kazi Farm | Dhaka | Beef | 450',1,'[{\"added\": {}}]',8,1),(36,'2021-07-31 05:59:23.077585','17','Kazi Farm | Rajshahi | Beef | 500',1,'[{\"added\": {}}]',8,1),(37,'2021-07-31 05:59:41.771712','18','Kazi Farm | Sylhet | Beef | 510',1,'[{\"added\": {}}]',8,1),(38,'2021-07-31 12:16:14.617885','19','Hasan Dairy | Dhaka | Mutton | 800',1,'[{\"added\": {}}]',8,1),(39,'2021-07-31 12:16:31.084149','20','Hasan Dairy | Chittagong | Mutton | 850',1,'[{\"added\": {}}]',8,1),(40,'2021-07-31 12:16:50.938011','21','Hasan Dairy | Rajshahi | Mutton | 900',1,'[{\"added\": {}}]',8,1),(41,'2021-07-31 12:17:07.169733','22','Hasan Dairy | Sylhet | Mutton | 820',1,'[{\"added\": {}}]',8,1),(42,'2021-07-31 12:17:49.737494','23','Kazi Farm | Dhaka | Mutton | 900',1,'[{\"added\": {}}]',8,1),(43,'2021-07-31 12:18:04.601008','24','Kazi Farm | Chittagong | Mutton | 920',1,'[{\"added\": {}}]',8,1),(44,'2021-07-31 12:18:17.114193','25','Kazi Farm | Rajshahi | Mutton | 930',1,'[{\"added\": {}}]',8,1),(45,'2021-07-31 12:18:29.814069','26','Kazi Farm | Sylhet | Mutton | 910',1,'[{\"added\": {}}]',8,1),(46,'2021-07-31 14:43:26.129178','2','Chicken',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Chicken\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Chicken\"}}]',11,1),(47,'2021-07-31 15:28:45.349441','7','Dragon Fruit',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Dragon Fruit\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Dragon Fruit\"}}]',11,1),(48,'2021-07-31 15:30:08.307483','8','Giant Tiger Prawn',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Giant Tiger Prawn\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Giant Tiger Prawn\"}}]',11,1),(49,'2021-07-31 15:32:39.720455','6','Swordfish',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Swordfish\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Swordfish\"}}]',11,1),(50,'2021-07-31 15:35:24.684035','5','Lobster-big',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Lobster-big\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Lobster-big\"}}]',11,1),(51,'2021-07-31 15:35:54.985641','4','Mutton',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Mutton\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Mutton\"}}]',11,1),(52,'2021-07-31 15:36:17.458149','3','Beef',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Beef\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Beef\"}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'productinfo','area'),(7,'productinfo','multiplesearchinformation'),(8,'productinfo','priceinformation'),(11,'productinfo','product'),(12,'productinfo','productimage'),(9,'productinfo','vendor'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-30 19:15:28.740220'),(2,'auth','0001_initial','2021-07-30 19:15:43.493940'),(3,'admin','0001_initial','2021-07-30 19:16:42.679847'),(4,'admin','0002_logentry_remove_auto_add','2021-07-30 19:16:53.958570'),(5,'admin','0003_logentry_add_action_flag_choices','2021-07-30 19:16:54.333260'),(6,'contenttypes','0002_remove_content_type_name','2021-07-30 19:17:05.315246'),(7,'auth','0002_alter_permission_name_max_length','2021-07-30 19:17:12.722444'),(8,'auth','0003_alter_user_email_max_length','2021-07-30 19:17:14.963227'),(9,'auth','0004_alter_user_username_opts','2021-07-30 19:17:15.065215'),(10,'auth','0005_alter_user_last_login_null','2021-07-30 19:17:19.022905'),(11,'auth','0006_require_contenttypes_0002','2021-07-30 19:17:19.112910'),(12,'auth','0007_alter_validators_add_error_messages','2021-07-30 19:17:19.295911'),(13,'auth','0008_alter_user_username_max_length','2021-07-30 19:17:25.595381'),(14,'auth','0009_alter_user_last_name_max_length','2021-07-30 19:17:31.620026'),(15,'auth','0010_alter_group_name_max_length','2021-07-30 19:17:32.238030'),(16,'auth','0011_update_proxy_permissions','2021-07-30 19:17:32.837018'),(17,'sessions','0001_initial','2021-07-30 19:17:35.069241'),(18,'productinfo','0001_initial','2021-07-30 19:29:12.567590'),(19,'productinfo','0002_productimage','2021-07-31 14:21:31.774078');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('xqsvcffs0s6o2hsebu39ecycojfjw3wv','YjBhZDUwODBmMmM5ZWNmYTA0NzVjYWU1NmUwMjZhNzYzOTZjMGE2Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNzg2Y2I2NDkyNzAxODQ0MDdmMzI4NTJiMWNiNzQwNzM1N2U1Y2MyIn0=','2021-08-13 19:30:05.062556');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_info`
--

DROP TABLE IF EXISTS `price_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `price_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `area_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `price_info_area_id_4e87b867_fk_area_id` (`area_id`),
  KEY `price_info_product_id_cfdff82f_fk_product_id` (`product_id`),
  KEY `price_info_vendor_id_d5c0f9cf_fk_vendor_id` (`vendor_id`),
  CONSTRAINT `price_info_area_id_4e87b867_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  CONSTRAINT `price_info_product_id_cfdff82f_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `price_info_vendor_id_d5c0f9cf_fk_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_info`
--

LOCK TABLES `price_info` WRITE;
/*!40000 ALTER TABLE `price_info` DISABLE KEYS */;
INSERT INTO `price_info` VALUES (1,200.00,1,'2021-07-30 19:34:59.494071','2021-07-30 19:34:59.494071',1,2,1),(2,600.00,1,'2021-07-30 19:59:23.731149','2021-07-30 19:59:23.731149',2,3,2),(3,150.00,1,'2021-07-30 19:59:46.170758','2021-07-30 19:59:46.170758',1,2,2),(4,500.00,1,'2021-07-31 05:19:32.305670','2021-07-31 05:19:32.305670',2,3,1),(5,1000.00,1,'2021-07-31 05:19:54.699569','2021-07-31 05:19:54.700569',2,6,3),(6,1300.00,1,'2021-07-31 05:20:14.068700','2021-07-31 05:20:14.068700',3,6,3),(7,1100.00,1,'2021-07-31 05:20:30.029803','2021-07-31 05:20:30.029803',1,6,3),(8,1200.00,1,'2021-07-31 05:20:52.938731','2021-07-31 05:20:52.938731',4,6,3),(9,2000.00,1,'2021-07-31 05:24:12.363858','2021-07-31 05:24:12.363858',1,8,5),(10,1800.00,1,'2021-07-31 05:24:29.113671','2021-07-31 05:24:29.114668',3,8,5),(11,2200.00,1,'2021-07-31 05:24:42.739773','2021-07-31 05:24:42.739773',4,8,5),(12,2300.00,1,'2021-07-31 05:55:46.311221','2021-07-31 05:55:46.312221',2,8,5),(13,155.00,1,'2021-07-31 05:56:29.554652','2021-07-31 05:56:29.554652',2,2,2),(14,155.00,1,'2021-07-31 05:57:05.780563','2021-07-31 05:57:05.780563',3,2,2),(15,153.00,1,'2021-07-31 05:57:22.092024','2021-07-31 05:57:22.092024',4,2,2),(16,450.00,1,'2021-07-31 05:59:10.981366','2021-07-31 05:59:10.981366',1,3,1),(17,500.00,1,'2021-07-31 05:59:23.051267','2021-07-31 05:59:23.051267',3,3,1),(18,510.00,1,'2021-07-31 05:59:41.758714','2021-07-31 05:59:41.759709',4,3,1),(19,800.00,1,'2021-07-31 12:16:14.501700','2021-07-31 12:16:14.501700',1,4,4),(20,850.00,1,'2021-07-31 12:16:30.982073','2021-07-31 12:16:30.982073',2,4,4),(21,900.00,1,'2021-07-31 12:16:50.923014','2021-07-31 12:16:50.923014',3,4,4),(22,820.00,1,'2021-07-31 12:17:07.059991','2021-07-31 12:17:07.059991',4,4,4),(23,900.00,1,'2021-07-31 12:17:49.643640','2021-07-31 12:17:49.644639',1,4,1),(24,920.00,1,'2021-07-31 12:18:04.586009','2021-07-31 12:18:04.586009',2,4,1),(25,930.00,1,'2021-07-31 12:18:17.017194','2021-07-31 12:18:17.017194',3,4,1),(26,910.00,1,'2021-07-31 12:18:29.707029','2021-07-31 12:18:29.707029',4,4,1);
/*!40000 ALTER TABLE `price_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Chicken','Chicken per kg.','',1,'2021-07-30 19:33:21.758324','2021-07-31 14:43:25.476965'),(3,'Beef','Beef per kg.','',1,'2021-07-30 19:57:42.232282','2021-07-31 15:36:17.369148'),(4,'Mutton','Mutton per kg.','',1,'2021-07-31 05:12:40.692020','2021-07-31 15:35:54.927303'),(5,'Lobster-big','Lobster per piece','',1,'2021-07-31 05:13:34.648209','2021-07-31 15:35:24.474108'),(6,'Swordfish','Swordfish per kg.','',1,'2021-07-31 05:14:19.261089','2021-07-31 15:32:39.653417'),(7,'Dragon Fruit','Dragon Fruit per kg.','',1,'2021-07-31 05:15:00.430702','2021-07-31 15:28:45.093464'),(8,'Giant Tiger Prawn','Giant Tiger Prawn per kg.','',1,'2021-07-31 05:23:18.188252','2021-07-31 15:30:06.708241');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinfo_productimage`
--

DROP TABLE IF EXISTS `productinfo_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productinfo_productimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productinfo_productimage_product_id_1655934e_fk_product_id` (`product_id`),
  CONSTRAINT `productinfo_productimage_product_id_1655934e_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinfo_productimage`
--

LOCK TABLES `productinfo_productimage` WRITE;
/*!40000 ALTER TABLE `productinfo_productimage` DISABLE KEYS */;
INSERT INTO `productinfo_productimage` VALUES (1,'images/Chicken.jpg',2),(2,'images/chicken2.jpg',2),(3,'images/dragon.jpg',7),(4,'images/dragon-fruit-FI-2.jpg',7),(5,'images/tigerprwan.jpg',8),(6,'images/Tigerpwn.jpg',8),(7,'images/swordfish2.png',6),(8,'images/swordfish1.jpg',6),(9,'images/lobster.jpg',5),(10,'images/lobster2.jpg',5),(11,'images/Mutton-Leg.jpg',4),(12,'images/beef.jpg',4),(13,'images/beef2.jpg',3),(14,'images/beef_cR6UZuC.jpg',3);
/*!40000 ALTER TABLE `productinfo_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `location` varchar(400) DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Kazi Farm','Agro Support Company','Dhaka,  Bangladesh',1,'2021-07-30 19:34:04.087303','2021-07-30 19:34:04.087303'),(2,'Masco Farm','Dairy Farm','Chittagong, Bangladesh',1,'2021-07-30 19:58:53.580850','2021-07-30 19:58:53.580850'),(3,'Xinxang Farm','Xinxang farm, comilla','Comilla, Bangladesh',1,'2021-07-31 05:16:29.942122','2021-07-31 05:16:42.257572'),(4,'Hasan Dairy','Hasan Dairy, satkhira','Satkhira, Bangladesh',1,'2021-07-31 05:17:21.124954','2021-07-31 05:17:21.124954'),(5,'Sakib Shrimp Firm','Sakib Shrimp Firm, Magura','Magura, Bangladesh',1,'2021-07-31 05:18:34.390951','2021-07-31 05:18:34.390951');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 23:14:04
