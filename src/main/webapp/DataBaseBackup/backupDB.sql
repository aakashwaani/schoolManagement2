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
  PRIMARY KEY (`academicYearId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicyear`
--

LOCK TABLES `academicyear` WRITE;
/*!40000 ALTER TABLE `academicyear` DISABLE KEYS */;
INSERT INTO `academicyear` VALUES (1,2023,9,'2023-08-04'),(2,2023,1,'2022-01-01'),(3,2020,7,'2022-07-15');
/*!40000 ALTER TABLE `academicyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castecategory`
--

DROP TABLE IF EXISTS `castecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castecategory` (
  `casteCategoryId` int NOT NULL AUTO_INCREMENT,
  `casteCategoryName` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`casteCategoryId`),
  UNIQUE KEY `casteCategoryId` (`casteCategoryId`),
  UNIQUE KEY `casteCategoryName` (`casteCategoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castecategory`
--

LOCK TABLES `castecategory` WRITE;
/*!40000 ALTER TABLE `castecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `castecategory` ENABLE KEYS */;
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
-- Table structure for table `studentguardiandetails`
--

DROP TABLE IF EXISTS `studentguardiandetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentguardiandetails` (
  `studentGuardianDetailsId` int NOT NULL AUTO_INCREMENT,
  `guardianFullName` varchar(255) DEFAULT NULL,
  `guardianMOB` varchar(10) DEFAULT NULL,
  `guardianRelationWithStudent` varchar(255) DEFAULT NULL,
  `guardianQualification` varchar(10) DEFAULT NULL,
  `guardianPhotograph` varchar(255) DEFAULT NULL,
  `fatherFullName` varchar(255) DEFAULT NULL,
  `fatherEmail` varchar(255) DEFAULT NULL,
  `fatherMOB` varchar(10) DEFAULT NULL,
  `fatherOccupation` varchar(255) DEFAULT NULL,
  `fatherQualification` varchar(255) DEFAULT NULL,
  `fatherYearlyIncome` varchar(255) DEFAULT NULL,
  `fatherPhotograph` varchar(255) DEFAULT NULL,
  `motherFullName` varchar(255) DEFAULT NULL,
  `motherEmail` varchar(255) DEFAULT NULL,
  `motherMOB` varchar(10) DEFAULT NULL,
  `motherOccupation` varchar(255) DEFAULT NULL,
  `motherQualification` varchar(255) DEFAULT NULL,
  `motherYearlyIncome` varchar(255) DEFAULT NULL,
  `motherPhotograph` varchar(255) DEFAULT NULL,
  `familyLandlineNumer` varchar(12) DEFAULT NULL,
  `guardianAccountNumer` varchar(50) DEFAULT NULL,
  `guardianBankName` varchar(50) DEFAULT NULL,
  `guardianBranchName` varchar(50) DEFAULT NULL,
  `guardianAddress` varchar(255) DEFAULT NULL,
  `streetOrLocation` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `cityOrVillage` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `studentId` int DEFAULT NULL,
  PRIMARY KEY (`studentGuardianDetailsId`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `studentguardiandetails_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `studentsdetails` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentguardiandetails`
--

LOCK TABLES `studentguardiandetails` WRITE;
/*!40000 ALTER TABLE `studentguardiandetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentguardiandetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentotherdetails`
--

DROP TABLE IF EXISTS `studentotherdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentotherdetails` (
  `studentOtherDetailsId` int NOT NULL AUTO_INCREMENT,
  `nameOfPreviousSchool` varchar(255) DEFAULT NULL,
  `adharNo` varchar(12) DEFAULT NULL,
  `classFees` varchar(255) DEFAULT NULL,
  `transportFeesCategory` varchar(255) DEFAULT NULL,
  `transportWay` varchar(255) DEFAULT NULL,
  `transportSlab` varchar(255) DEFAULT NULL,
  `transportFees` varchar(255) DEFAULT NULL,
  `studentHobby` varchar(255) DEFAULT NULL,
  `studentMotherTougue` varchar(255) DEFAULT NULL,
  `studentId` int DEFAULT NULL,
  PRIMARY KEY (`studentOtherDetailsId`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `studentotherdetails_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `studentsdetails` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentotherdetails`
--

LOCK TABLES `studentotherdetails` WRITE;
/*!40000 ALTER TABLE `studentotherdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentotherdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentsdetails`
--

DROP TABLE IF EXISTS `studentsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentsdetails` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `studentFirstName` varchar(255) NOT NULL,
  `studentMiddleName` varchar(255) NOT NULL,
  `studentLasttName` varchar(255) NOT NULL,
  `studentMOB` varchar(10) NOT NULL,
  `studentDOB` date NOT NULL,
  `admissionDate` date NOT NULL,
  `studentPRN` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `studentNationality` varchar(255) NOT NULL,
  `studentFeesCategory` varchar(255) NOT NULL,
  `studentBirthPlace` varchar(255) NOT NULL,
  `studentHomeaddress` varchar(1000) NOT NULL,
  `studentSatus` varchar(10) NOT NULL,
  `studentEmail` varchar(255) DEFAULT NULL,
  `studentAcademicYearId` int DEFAULT NULL,
  `studentSectionId` int DEFAULT NULL,
  `studentClassId` int DEFAULT NULL,
  `studentReligionId` int DEFAULT NULL,
  `studentCastCategoryId` int DEFAULT NULL,
  `OtherDetailsId` int DEFAULT NULL,
  `GuardianDetailsId` int DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `studentAcademicYearId` (`studentAcademicYearId`),
  KEY `studentSectionId` (`studentSectionId`),
  KEY `studentClassId` (`studentClassId`),
  KEY `studentReligionId` (`studentReligionId`),
  KEY `studentCastCategoryId` (`studentCastCategoryId`),
  CONSTRAINT `studentsdetails_ibfk_1` FOREIGN KEY (`studentAcademicYearId`) REFERENCES `academicyear` (`academicYearId`),
  CONSTRAINT `studentsdetails_ibfk_2` FOREIGN KEY (`studentSectionId`) REFERENCES `section` (`sectionId`),
  CONSTRAINT `studentsdetails_ibfk_3` FOREIGN KEY (`studentClassId`) REFERENCES `studclass` (`classId`),
  CONSTRAINT `studentsdetails_ibfk_4` FOREIGN KEY (`studentReligionId`) REFERENCES `religion` (`religionId`),
  CONSTRAINT `studentsdetails_ibfk_5` FOREIGN KEY (`studentCastCategoryId`) REFERENCES `castecategory` (`casteCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentsdetails`
--

LOCK TABLES `studentsdetails` WRITE;
/*!40000 ALTER TABLE `studentsdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentsdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-21 13:19:02
