-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolmanagementdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `academicyear`
--

DROP TABLE IF EXISTS `academicyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicyear` (
  `academicYearId` int NOT NULL AUTO_INCREMENT,
  `academicYear` int NOT NULL,
  `startmonthNumber` int NOT NULL,
  `nextAcademicYearDate` date NOT NULL,
  `schoolId` int DEFAULT NULL,
  PRIMARY KEY (`academicYearId`),
  KEY `schoolId` (`schoolId`),
  CONSTRAINT `academicyear_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicyear`
--

LOCK TABLES `academicyear` WRITE;
/*!40000 ALTER TABLE `academicyear` DISABLE KEYS */;
INSERT INTO `academicyear` VALUES (1,2023,9,'2023-08-04',NULL),(2,2023,1,'2022-01-01',NULL),(3,2020,7,'2022-07-15',NULL);
/*!40000 ALTER TABLE `academicyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendence` (
  `attendenceId` int NOT NULL AUTO_INCREMENT,
  `attendence` varchar(2) NOT NULL,
  `attendenceDate` date NOT NULL,
  `studentId` int DEFAULT NULL,
  `staffId` int DEFAULT NULL,
  `subjectId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `divisionId` int DEFAULT NULL,
  PRIMARY KEY (`attendenceId`),
  KEY `studentId` (`studentId`),
  KEY `staffId` (`staffId`),
  KEY `subjectId` (`subjectId`),
  KEY `classId` (`classId`),
  KEY `divisionId` (`divisionId`),
  CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `studentdetails` (`studentDetailsId`),
  CONSTRAINT `attendence_ibfk_2` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`),
  CONSTRAINT `attendence_ibfk_3` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`subjectId`),
  CONSTRAINT `attendence_ibfk_4` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `attendence_ibfk_5` FOREIGN KEY (`divisionId`) REFERENCES `division` (`divisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_class_to_students`
--

DROP TABLE IF EXISTS `ay_assign_class_to_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_class_to_students` (
  `classId` int DEFAULT NULL,
  `studentDetailsId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `classId` (`classId`),
  KEY `studentDetailsId` (`studentDetailsId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_class_to_students_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_class_to_students_ibfk_2` FOREIGN KEY (`studentDetailsId`) REFERENCES `studentdetails` (`studentDetailsId`),
  CONSTRAINT `ay_assign_class_to_students_ibfk_3` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_class_to_students`
--

LOCK TABLES `ay_assign_class_to_students` WRITE;
/*!40000 ALTER TABLE `ay_assign_class_to_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_class_to_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_class_to_teacher`
--

DROP TABLE IF EXISTS `ay_assign_class_to_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_class_to_teacher` (
  `classId` int DEFAULT NULL,
  `staffId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `classId` (`classId`),
  KEY `staffId` (`staffId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_class_to_teacher_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_class_to_teacher_ibfk_2` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`),
  CONSTRAINT `ay_assign_class_to_teacher_ibfk_3` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_class_to_teacher`
--

LOCK TABLES `ay_assign_class_to_teacher` WRITE;
/*!40000 ALTER TABLE `ay_assign_class_to_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_class_to_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_division_to_class`
--

DROP TABLE IF EXISTS `ay_assign_division_to_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_division_to_class` (
  `divisionId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `divisionId` (`divisionId`),
  KEY `classId` (`classId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_division_to_class_ibfk_1` FOREIGN KEY (`divisionId`) REFERENCES `division` (`divisionId`),
  CONSTRAINT `ay_assign_division_to_class_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_division_to_class_ibfk_3` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_division_to_class`
--

LOCK TABLES `ay_assign_division_to_class` WRITE;
/*!40000 ALTER TABLE `ay_assign_division_to_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_division_to_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_section_to_class`
--

DROP TABLE IF EXISTS `ay_assign_section_to_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_section_to_class` (
  `sectionId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `sectionId` (`sectionId`),
  KEY `classId` (`classId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_section_to_class_ibfk_1` FOREIGN KEY (`sectionId`) REFERENCES `section` (`sectionId`),
  CONSTRAINT `ay_assign_section_to_class_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_section_to_class_ibfk_3` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_section_to_class`
--

LOCK TABLES `ay_assign_section_to_class` WRITE;
/*!40000 ALTER TABLE `ay_assign_section_to_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_section_to_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_subject_to_class`
--

DROP TABLE IF EXISTS `ay_assign_subject_to_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_subject_to_class` (
  `classId` int DEFAULT NULL,
  `subjectId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `classId` (`classId`),
  KEY `subjectId` (`subjectId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_subject_to_class_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_subject_to_class_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`subjectId`),
  CONSTRAINT `ay_assign_subject_to_class_ibfk_3` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_subject_to_class`
--

LOCK TABLES `ay_assign_subject_to_class` WRITE;
/*!40000 ALTER TABLE `ay_assign_subject_to_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_subject_to_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_assign_subject_to_teacher`
--

DROP TABLE IF EXISTS `ay_assign_subject_to_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ay_assign_subject_to_teacher` (
  `staffId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `subjectId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  KEY `staffId` (`staffId`),
  KEY `classId` (`classId`),
  KEY `subjectId` (`subjectId`),
  KEY `academicYearId` (`academicYearId`),
  CONSTRAINT `ay_assign_subject_to_teacher_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`),
  CONSTRAINT `ay_assign_subject_to_teacher_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `ay_assign_subject_to_teacher_ibfk_3` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`subjectId`),
  CONSTRAINT `ay_assign_subject_to_teacher_ibfk_4` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_assign_subject_to_teacher`
--

LOCK TABLES `ay_assign_subject_to_teacher` WRITE;
/*!40000 ALTER TABLE `ay_assign_subject_to_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_assign_subject_to_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castcategory`
--

DROP TABLE IF EXISTS `castcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castcategory` (
  `castCategoryId` int NOT NULL AUTO_INCREMENT,
  `castCategoryName` varchar(255) NOT NULL,
  `castCategoryStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`castCategoryId`),
  UNIQUE KEY `castCategoryName` (`castCategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castcategory`
--

LOCK TABLES `castcategory` WRITE;
/*!40000 ALTER TABLE `castcategory` DISABLE KEYS */;
INSERT INTO `castcategory` VALUES (1,'Open','Active'),(2,'ST','Active'),(3,'Sc ','Active');
/*!40000 ALTER TABLE `castcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designationId` int NOT NULL AUTO_INCREMENT,
  `designationName` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`designationId`),
  UNIQUE KEY `designationId` (`designationId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Class Teacher','Active'),(2,'Coordinator','Active');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division` (
  `divisionId` int NOT NULL AUTO_INCREMENT,
  `division` varchar(255) NOT NULL,
  `classId` int DEFAULT NULL,
  `sectionId` int DEFAULT NULL,
  PRIMARY KEY (`divisionId`),
  UNIQUE KEY `division` (`division`),
  KEY `classId` (`classId`),
  KEY `sectionId` (`sectionId`),
  CONSTRAINT `division_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `division_ibfk_2` FOREIGN KEY (`sectionId`) REFERENCES `section` (`sectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'A',1,1);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religion`
--

DROP TABLE IF EXISTS `religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religion` (
  `religionId` int NOT NULL AUTO_INCREMENT,
  `religionName` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`religionId`),
  UNIQUE KEY `religionId` (`religionId`),
  UNIQUE KEY `religionName` (`religionName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religion`
--

LOCK TABLES `religion` WRITE;
/*!40000 ALTER TABLE `religion` DISABLE KEYS */;
INSERT INTO `religion` VALUES (1,'HINDU','Active');
/*!40000 ALTER TABLE `religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `schoolId` int NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(255) NOT NULL,
  `schoolRegistrationNo` int NOT NULL,
  `societyName` varchar(255) NOT NULL,
  `schoolCode` varchar(50) NOT NULL,
  `UIDIASNo` varchar(50) NOT NULL,
  `principalName` varchar(255) NOT NULL,
  `schoolEmail` varchar(255) NOT NULL,
  `mobileNo` varchar(10) NOT NULL,
  `schoolLogo` varchar(255) NOT NULL,
  `schoolBanner` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  PRIMARY KEY (`schoolId`),
  UNIQUE KEY `schoolRegistrationNo` (`schoolRegistrationNo`),
  UNIQUE KEY `schoolCode` (`schoolCode`),
  UNIQUE KEY `UIDIASNo` (`UIDIASNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'sdhfkjsdd',7890,'Ganga Dham','4567','567','gvhjbnm','kjkjk@gmail.com','1234567890','/img/pexels-snapwire-6992.jpg','/img/pexels-james-wheeler-1534057.jpg','wertgbnm','sdfsadgfhsfgsdg','asdfsdfasdfsdf','1234556');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `sectionId` int NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sectionId`),
  UNIQUE KEY `section` (`sectionName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Primary','In-Active'),(2,'Secondary','Active'),(3,'Senior','Active'),(4,'Pre-Primary','Active'),(6,'pre-Senior','Active');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `moblileNo` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `joiningDate` date NOT NULL,
  `dateofBirth` date NOT NULL,
  `staffAddress` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `casteCategory` varchar(255) NOT NULL,
  `staffRoleId` int DEFAULT NULL,
  `designationId` int DEFAULT NULL,
  `castCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `staffAddress` (`staffAddress`),
  KEY `designationId` (`designationId`),
  KEY `castCategoryId` (`castCategoryId`),
  KEY `staffRoleId` (`staffRoleId`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`designationId`) REFERENCES `designation` (`designationId`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`castCategoryId`) REFERENCES `castecategory` (`casteCategoryId`),
  CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staffRoleId`) REFERENCES `staffrole` (`staffRoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffrole`
--

DROP TABLE IF EXISTS `staffrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffrole` (
  `staffRoleId` int NOT NULL AUTO_INCREMENT,
  `staffRole` varchar(255) NOT NULL,
  `staffRoleStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`staffRoleId`),
  UNIQUE KEY `staffRoleId` (`staffRoleId`),
  UNIQUE KEY `staffRole` (`staffRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrole`
--

LOCK TABLES `staffrole` WRITE;
/*!40000 ALTER TABLE `staffrole` DISABLE KEYS */;
INSERT INTO `staffrole` VALUES (2,'Teacher','Active');
/*!40000 ALTER TABLE `staffrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studclass`
--

DROP TABLE IF EXISTS `studclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studclass` (
  `classId` int NOT NULL AUTO_INCREMENT,
  `className` varchar(255) NOT NULL,
  `sectionId` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`classId`),
  UNIQUE KEY `className` (`className`),
  KEY `sectionId` (`sectionId`),
  CONSTRAINT `studclass_ibfk_1` FOREIGN KEY (`sectionId`) REFERENCES `section` (`sectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studclass`
--

LOCK TABLES `studclass` WRITE;
/*!40000 ALTER TABLE `studclass` DISABLE KEYS */;
INSERT INTO `studclass` VALUES (1,'2nd',1,'Active'),(2,'3rd',1,'Active'),(3,'4th',1,'Active');
/*!40000 ALTER TABLE `studclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentdetails`
--

DROP TABLE IF EXISTS `studentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentdetails` (
  `studentDetailsId` int NOT NULL AUTO_INCREMENT,
  `studentFirstName` varchar(255) DEFAULT NULL,
  `studentLastName` varchar(255) DEFAULT NULL,
  `studentMiddleName` varchar(255) DEFAULT NULL,
  `onlineRegisteredId` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `dateOfAdmission` date DEFAULT NULL,
  `studentPRNNumber` varchar(255) DEFAULT NULL,
  `studentBirthPlace` varchar(100) DEFAULT NULL,
  `studentPhotograph` varchar(1000) DEFAULT NULL,
  `studentCast` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `studentStatus` varchar(10) DEFAULT NULL,
  `studentAddress` varchar(255) DEFAULT NULL,
  `nameOfPreviousSchool` varchar(255) DEFAULT NULL,
  `aadharNo` varchar(12) DEFAULT NULL,
  `studentEmail` varchar(255) DEFAULT NULL,
  `studentContactNo` varchar(10) DEFAULT NULL,
  `studentFatherName` varchar(255) DEFAULT NULL,
  `parentsEmail` varchar(255) DEFAULT NULL,
  `fatherContactNo` varchar(10) DEFAULT NULL,
  `studentMotherName` varchar(255) DEFAULT NULL,
  `motherContactNo` varchar(10) DEFAULT NULL,
  `landline` varchar(13) DEFAULT NULL,
  `classFees` varchar(20) DEFAULT NULL,
  `studentHobbies` varchar(255) DEFAULT NULL,
  `studentMotherTongue` varchar(255) DEFAULT NULL,
  `guardianFullName` varchar(255) DEFAULT NULL,
  `guardianOccupation` varchar(255) DEFAULT NULL,
  `guardianMobileNumber` varchar(255) DEFAULT NULL,
  `guardianRelationWithStudnet` varchar(255) DEFAULT NULL,
  `guardianQualification` varchar(255) DEFAULT NULL,
  `guardianPhotograph` varchar(1000) DEFAULT NULL,
  `fatherOccupation` varchar(255) DEFAULT NULL,
  `fatherQualification` varchar(255) DEFAULT NULL,
  `fatherYearlyIncome` varchar(255) DEFAULT NULL,
  `fatherPhotograph` varchar(1000) DEFAULT NULL,
  `motherOccupation` varchar(255) DEFAULT NULL,
  `motherQualification` varchar(255) DEFAULT NULL,
  `motherYearlyIncome` varchar(255) DEFAULT NULL,
  `motherPhotograph` varchar(1000) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `branchName` varchar(255) DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `guardianAddress` varchar(255) DEFAULT NULL,
  `guardianStreetOrLocation` varchar(255) DEFAULT NULL,
  `guardianDistrict` varchar(255) DEFAULT NULL,
  `guardianCityOrVillage` varchar(255) DEFAULT NULL,
  `guardianState` varchar(255) DEFAULT NULL,
  `guardianTaluka` varchar(255) DEFAULT NULL,
  `guardianPostalCode` varchar(255) DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `sectionId` int DEFAULT NULL,
  `religionId` int DEFAULT NULL,
  `academicYearId` int DEFAULT NULL,
  `castCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`studentDetailsId`),
  KEY `religionId` (`religionId`),
  KEY `academicYearId` (`academicYearId`),
  KEY `sectionId` (`sectionId`),
  KEY `castCategoryId` (`castCategoryId`),
  KEY `classId` (`classId`),
  CONSTRAINT `studentdetails_ibfk_1` FOREIGN KEY (`religionId`) REFERENCES `religion` (`religionId`),
  CONSTRAINT `studentdetails_ibfk_2` FOREIGN KEY (`academicYearId`) REFERENCES `academicyear` (`academicYearId`),
  CONSTRAINT `studentdetails_ibfk_3` FOREIGN KEY (`sectionId`) REFERENCES `section` (`sectionId`),
  CONSTRAINT `studentdetails_ibfk_4` FOREIGN KEY (`castCategoryId`) REFERENCES `castcategory` (`castCategoryId`),
  CONSTRAINT `studentdetails_ibfk_5` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdetails`
--

LOCK TABLES `studentdetails` WRITE;
/*!40000 ALTER TABLE `studentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subjectId` int NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(255) NOT NULL,
  `classId` int DEFAULT NULL,
  PRIMARY KEY (`subjectId`),
  KEY `classId` (`classId`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `studclass` (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 14:10:05
