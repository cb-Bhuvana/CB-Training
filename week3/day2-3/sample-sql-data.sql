-- MySQL dump 10.13  Distrib 5.6.16, for osx10.7 (x86_64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(19) NOT NULL,
  `subject_id` bigint(19) NOT NULL,
  `quarterly` int(11) DEFAULT NULL,
  `half_yearly` int(11) DEFAULT NULL,
  `annual` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_marks_student_id` (`student_id`),
  CONSTRAINT `fk_marks_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1001,100001,1,NULL,79,91,2003,6),(1002,100002,1,35,49,77,2003,6),(1003,100003,1,100,97,95,2003,6),(1004,100004,1,38,38,65,2003,6),(1005,100005,1,73,40,100,2003,6),(1006,100001,2,NULL,30,76,2003,6),(1007,100002,2,37,45,87,2003,6),(1008,100003,2,93,91,98,2003,6),(1009,100004,2,93,59,63,2003,6),(1010,100005,2,34,89,45,2003,6),(1011,100001,3,NULL,86,89,2003,6),(1012,100002,3,46,76,48,2003,6),(1013,100003,3,46,NULL,83,2003,6),(1014,100004,3,71,74,31,2003,6),(1015,100005,3,34,54,36,2003,6),(1016,100001,4,NULL,NULL,80,2003,6),(1017,100002,4,52,43,31,2003,6),(1018,100003,4,91,95,99,2003,6),(1019,100004,4,46,76,39,2003,6),(1020,100005,4,80,41,94,2003,6),(1021,100001,5,NULL,31,88,2003,6),(1022,100002,5,33,44,53,2003,6),(1023,100003,5,98,92,90,2003,6),(1024,100004,5,52,63,63,2003,6),(1025,100005,5,56,60,48,2003,6),(1026,100001,1,59,34,57,2004,7),(1027,100002,1,47,37,94,2004,7),(1028,100003,1,47,80,97,2004,7),(1029,100004,1,89,43,68,2004,7),(1030,100005,1,72,82,47,2004,7),(1031,100001,2,44,54,31,2004,7),(1032,100002,2,85,96,89,2004,7),(1033,100003,2,84,63,57,2004,7),(1034,100004,2,83,97,53,2004,7),(1035,100005,2,53,30,80,2004,7),(1036,100001,3,44,90,54,2004,7),(1037,100002,3,53,36,87,2004,7),(1038,100003,3,64,55,39,2004,7),(1039,100004,3,95,36,54,2004,7),(1040,100005,3,66,87,37,2004,7),(1041,100001,4,31,65,69,2004,7),(1042,100002,4,98,30,94,2004,7),(1043,100003,4,43,60,83,2004,7),(1044,100004,4,76,79,40,2004,7),(1045,100005,4,66,43,75,2004,7),(1046,100001,5,58,51,98,2004,7),(1047,100002,5,41,92,99,2004,7),(1048,100003,5,86,56,43,2004,7),(1049,100004,5,35,90,92,2004,7),(1050,100005,5,36,35,48,2004,7),(1051,100001,1,96,57,94,2005,8),(1052,100002,1,68,41,50,2005,8),(1053,100003,1,60,83,73,2005,8),(1054,100004,1,53,81,97,2005,8),(1055,100005,1,64,81,39,2005,8),(1056,100001,2,77,82,36,2005,8),(1057,100002,2,73,57,52,2005,8),(1058,100003,2,38,35,81,2005,8),(1059,100004,2,69,46,44,2005,8),(1060,100005,2,35,95,39,2005,8),(1061,100001,3,32,70,58,2005,8),(1062,100002,3,43,48,65,2005,8),(1063,100003,3,81,38,90,2005,8),(1064,100004,3,88,90,92,2005,8),(1065,100005,3,34,95,76,2005,8),(1066,100001,4,64,69,87,2005,8),(1067,100002,4,62,38,95,2005,8),(1068,100003,4,79,49,86,2005,8),(1069,100004,4,68,33,33,2005,8),(1070,100005,4,72,39,84,2005,8),(1071,100001,5,65,77,100,2005,8),(1072,100002,5,82,90,33,2005,8),(1073,100003,5,76,44,55,2005,8),(1074,100004,5,96,76,46,2005,8),(1075,100005,5,50,75,49,2005,8),(1076,100001,1,67,84,51,2006,9),(1077,100002,1,63,68,46,2006,9),(1078,100003,1,89,96,31,2006,9),(1079,100004,1,86,74,82,2006,9),(1080,100005,1,91,49,70,2006,9),(1081,100001,2,65,90,67,2006,9),(1082,100002,2,77,38,75,2006,9),(1083,100003,2,100,99,95,2006,9),(1084,100004,2,100,37,40,2006,9),(1085,100005,2,85,69,37,2006,9),(1086,100001,3,NULL,NULL,32,2006,9),(1087,100002,3,98,34,31,2006,9),(1088,100003,3,65,83,36,2006,9),(1089,100004,3,82,75,67,2006,9),(1090,100005,3,93,78,39,2006,9),(1091,100001,4,83,75,59,2006,9),(1092,100002,4,81,56,30,2006,9),(1093,100003,4,94,60,68,2006,9),(1094,100004,4,59,92,47,2006,9),(1095,100005,4,76,82,83,2006,9),(1096,100001,5,73,70,87,2006,9),(1097,100002,5,50,52,36,2006,9),(1098,100003,5,57,96,88,2006,9),(1099,100004,5,54,77,51,2006,9),(1100,100005,5,86,66,91,2006,9),(1101,100001,1,NULL,NULL,NULL,2007,10),(1102,100002,1,93,31,79,2007,10),(1103,100003,1,81,92,69,2007,10),(1104,100004,1,32,31,76,2007,10),(1105,100005,1,82,65,87,2007,10),(1106,100001,2,62,80,36,2007,10),(1107,100002,2,34,49,87,2007,10),(1108,100003,2,95,89,89,2007,10),(1109,100004,2,50,46,76,2007,10),(1110,100005,2,86,87,84,2007,10),(1111,100001,3,91,64,80,2007,10),(1112,100002,3,52,60,94,2007,10),(1113,100003,3,50,81,58,2007,10),(1114,100004,3,65,39,46,2007,10),(1115,100005,3,44,79,91,2007,10),(1116,100001,4,55,96,55,2007,10),(1117,100002,4,82,67,94,2007,10),(1118,100003,4,85,76,47,2007,10),(1119,100004,4,79,89,89,2007,10),(1120,100005,4,72,56,57,2007,10),(1121,100001,5,93,52,41,2007,10),(1122,100002,5,42,63,75,2007,10),(1123,100003,5,88,31,43,2007,10),(1124,100004,5,57,36,67,2007,10),(1125,100005,5,87,99,93,2007,10);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medals`
--

DROP TABLE IF EXISTS `medals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medals` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(19) NOT NULL,
  `game_id` bigint(19) NOT NULL,
  `medal_won` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medals_student_id` (`student_id`),
  CONSTRAINT `fk_medals_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medals`
--

LOCK TABLES `medals` WRITE;
/*!40000 ALTER TABLE `medals` DISABLE KEYS */;
INSERT INTO `medals` VALUES (101,100003,5,'gold',2003,6),(102,100001,5,'silver',2003,6),(103,100002,4,'silver',2003,6),(104,100003,1,'gold',2003,6),(105,100003,3,'bronze',2004,7),(106,100003,4,'silver',2004,7),(107,100002,2,'silver',2004,7),(108,100002,4,'bronze',2004,7),(109,100002,5,'gold',2004,7),(110,100003,3,'bronze',2005,8),(111,100001,2,'gold',2005,8),(112,100001,3,'bronze',2005,8),(113,100001,4,'bronze',2005,8);
/*!40000 ALTER TABLE `medals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (100001,'Thor'),(100002,'Hulk'),(100003,'Daredevil'),(100004,'X Man'),(100005,'Ironman'),(100006,'Quicksilver');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-09 20:21:45
