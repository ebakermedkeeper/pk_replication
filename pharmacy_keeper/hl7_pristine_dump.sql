-- MySQL dump 10.13  Distrib 5.7.34, for osx10.14 (x86_64)
--
-- Host: localhost    Database: hl7
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(63) NOT NULL,
  `AUTHOR` varchar(63) NOT NULL,
  `FILENAME` varchar(200) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1','karabfak','db/db.changelog-1.0.xml','2017-07-25 16:34:10',11,'EXECUTED','3:3cc459f7dd869f49f4596930be43e25a','Modify data type, Create Index, Custom SQL, Add Column, Create Index, Drop Table, Create Table, Create Index','',NULL,'2.0.2'),('1','karabfak','db/db.changelog-1.17.xml','2017-07-25 16:34:10',19,'EXECUTED','3:c85c5b0f26aa3a95df23e61f8c5176d2','Add Column','',NULL,'2.0.2'),('1.0-1','qvanegeren','db/db.changelog-1.0.xml','2017-07-25 16:34:10',8,'EXECUTED','3:12570732797ff21dd6d0beb649002176','Add Column','',NULL,'2.0.2'),('1.0-2','qvanegeren','db/db.changelog-1.0.xml','2017-07-25 16:34:10',9,'EXECUTED','3:b4a39622c8c6c6587c53817f4ccd4a3b','Add Column','',NULL,'2.0.2'),('1.0-3','qvanegeren','db/db.changelog-1.0.xml','2017-07-25 16:34:10',10,'EXECUTED','3:187c2b4086228f8968d21a50843dca15','Add Column','',NULL,'2.0.2'),('1.14-001','qvanegeren','db/db.changelog-1.14.xml','2017-07-25 16:34:10',15,'EXECUTED','3:f27745c19e5978b0f359564320ee7f10','Add Column','',NULL,'2.0.2'),('1.14-002','qvanegeren','db/db.changelog-1.14.xml','2017-07-25 16:34:10',16,'EXECUTED','3:a1910e36049186ee7b820784c3813afe','Add Column','',NULL,'2.0.2'),('1.17-001','qvanegeren','db/db.changelog-1.17.xml','2017-07-25 16:34:10',17,'EXECUTED','3:2eb8a7b9e63a0ab4390c6b9914152f40','Create Table','',NULL,'2.0.2'),('1.17-002','qvanegeren','db/db.changelog-1.17.xml','2017-07-25 16:34:10',18,'EXECUTED','3:3d21b1e73f24895025c6d9d0161013ad','Add Column','',NULL,'2.0.2'),('1.21-001','qvanegeren','db/db.changelog-1.21.xml','2017-07-25 16:34:10',21,'EXECUTED','3:148c29fb18a95250b4053fdfe288f9fe','Add Column','',NULL,'2.0.2'),('1.30-001','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',22,'EXECUTED','3:b231a980e3a603c8f11b69d71ddb5dee','Add Column','',NULL,'2.0.2'),('1.30-002','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',23,'EXECUTED','3:d9c1398ac71b269af7cd7cef9a996315','Modify data type','',NULL,'2.0.2'),('1.30-003','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',24,'EXECUTED','3:d2522bca2a1ffa236d34c0d30fe4f692','Create Table','',NULL,'2.0.2'),('1.30-004','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',25,'EXECUTED','3:1f8576f6e4494924b13358a4a6f3e6d3','Add Column','',NULL,'2.0.2'),('1.30-005','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',26,'EXECUTED','3:d6aeb1715e865fb272fdead10f7db04a','Add Column','',NULL,'2.0.2'),('1.30-006','qvanegeren','db/db.changelog-1.30.xml','2017-07-25 16:34:10',27,'EXECUTED','3:ce73dfe5b29ea65306bbd09fe5709e0f','Add Column','',NULL,'2.0.2'),('1.36-001','khundley','db/db.changelog-1.36.xml','2017-07-25 16:34:10',28,'EXECUTED','3:723b6dbab217e0b0ca19b109f759ef04','Add Column','',NULL,'2.0.2'),('1.36-001','qvanegeren','db/db.changelog-1.37.xml','2017-07-25 16:34:10',29,'EXECUTED','3:fbd8aea57050eb8ed2cb1456408ad6e1','Add Column','',NULL,'2.0.2'),('1.36-002','qvanegeren','db/db.changelog-1.37.xml','2017-07-25 16:34:10',30,'EXECUTED','3:c5bb0d1643d8ec89d7b9efb8fd878317','Rename Column','',NULL,'2.0.2'),('1.37-003','mredmon','db/db.changelog-1.37.xml','2017-10-24 03:02:32',31,'EXECUTED','3:5b960437a5c0774718856aef01f15245','Create Index (x3), Custom SQL','Indices and stored procedure for purging HL7 tables',NULL,'2.0.2'),('1.39-001','qvanegeren','db/db.changelog-1.39.xml','2017-10-24 03:02:32',32,'EXECUTED','3:925232ff5d0e2f93905924062108b79b','Rename Column','',NULL,'2.0.2'),('1.41-001','qvanegeren','db/db.changelog-1.41.xml','2018-06-27 03:03:54',33,'EXECUTED','3:752689896f6dc98f0ec60d333f9baa48','Add Column','',NULL,'2.0.2'),('1.44-001','qvanegeren','db/db.changelog-1.44.xml','2018-09-12 01:01:31',34,'EXECUTED','3:65c1b368bcc28c43f283fbc2fcc1e28b','Add Column','',NULL,'2.0.2'),('1.44-002','qvanegeren','db/db.changelog-1.44.xml','2018-09-12 01:01:31',35,'EXECUTED','3:0c6942a8fbdf8855d9cd9c1da38a1704','Add Column','',NULL,'2.0.2'),('1.44.4879-003','qvanegeren','db/db.changelog-1.44.xml','2018-09-12 01:01:40',37,'EXECUTED','3:ff2b5fef8153188b998704b3a5af0c09','Modify data type','',NULL,'2.0.2'),('1.44.4993-001','qvanegeren','db/db.changelog-1.44.xml','2018-09-12 01:01:40',36,'EXECUTED','3:5ad7a4f9aad0aa6ce6632ef124e88364','Add Column','',NULL,'2.0.2'),('1.45.4984-001','khundley','db/db.changelog-1.45.xml','2018-11-14 03:12:40',38,'EXECUTED','3:d134c0b502f2c29a0546435c0c0ffabe','Add Column','',NULL,'2.0.2'),('1.47.4061-001','qvanegeren','db/db.changelog-1.47.xml','2019-03-20 02:10:15',41,'EXECUTED','3:f1b1aa098f7770671c015088fd6373a0','Custom SQL','',NULL,'2.0.2'),('1.47.4292-001','qvanegeren','db/db.changelog-1.47.xml','2019-03-20 02:09:57',39,'EXECUTED','3:fe34cd26642bf7d4d8a8651232881c80','Custom SQL','',NULL,'2.0.2'),('1.47.6121-002','cingram','db/db.changelog-1.47.xml','2019-03-20 02:10:15',40,'EXECUTED','3:68eddd97dc2ecad5490f9a2018f78da7','Custom SQL','',NULL,'2.0.2'),('1.47.7362-001','gsmith','db/db.changelog-1.47.xml','2019-03-20 02:10:15',42,'EXECUTED','3:96013c363b219244252460e75c96b4d0','Create Table','',NULL,'2.0.2'),('1.47.7362-002','gsmith','db/db.changelog-1.47.xml','2019-03-20 02:10:15',43,'EXECUTED','3:e547bd2ffcb8d81affcfba3bbac09040','Create Index','',NULL,'2.0.2'),('1.47.7362-003','gsmith','db/db.changelog-1.47.xml','2019-03-20 02:10:15',44,'EXECUTED','3:0be9cf4977bfbba354f63ea69175c6c8','Create Table','',NULL,'2.0.2'),('1.47.7362-004','gsmith','db/db.changelog-1.47.xml','2019-03-20 02:10:15',45,'EXECUTED','3:1cd38f196f7e693aa8750abd567ca1dd','Create Index','',NULL,'2.0.2'),('1.47.7362-005','gsmith','db/db.changelog-1.47.xml','2019-03-20 02:10:15',46,'EXECUTED','3:139b578753f5260c80873d24d5f5a61e','Custom SQL','',NULL,'2.0.2'),('1.48.3947-001','gsmith','db/db.changelog-1.48.xml','2019-08-07 02:06:21',48,'EXECUTED','3:783d710eb72cd7e91464128b180ced13','Custom SQL','',NULL,'2.0.2'),('1.48.7651-001','gsmith','db/db.changelog-1.48.xml','2019-08-07 02:06:21',47,'EXECUTED','3:1fbd628f07cacc1bb47f6371ffa4006c','Custom SQL','',NULL,'2.0.2'),('1.49.8945-001','gsmith','db/db.changelog-1.49.xml','2019-08-07 02:06:21',49,'EXECUTED','3:0e089c1314ffd2da1748a2df0eef50a1','Custom SQL','',NULL,'2.0.2'),('1.49.8945-002','gsmith','db/db.changelog-1.49.xml','2019-08-07 02:06:26',50,'EXECUTED','3:e4bab48ee7681dfef13618b542b70439','Custom SQL','',NULL,'2.0.2'),('1375369186953-1','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:09',1,'EXECUTED','3:177a54dfb5ac0339d436886d8b9fa89b','Create Table','',NULL,'2.0.2'),('1375369186953-2','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:09',2,'EXECUTED','3:1bc348e0eedad98e3ce7267803ba7e42','Create Table','',NULL,'2.0.2'),('1375369186953-3','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:09',3,'EXECUTED','3:c9f3f88cf2f261ef2c22e92afbc5b908','Create Table','',NULL,'2.0.2'),('1375369186953-4','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:09',4,'EXECUTED','3:10042f02ea6741ec5a970caf253131e7','Create Table','',NULL,'2.0.2'),('1375369186953-5','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:09',5,'EXECUTED','3:d9847493f82d306d056e0bb9e1a9b4f8','Create Index','',NULL,'2.0.2'),('1375369186953-6','qvanegeren (generated)','db/db.changelog-create-tables.xml','2017-07-25 16:34:10',6,'EXECUTED','3:dd3b83716514196d5f2ecc74a5a2b8fd','Create Index','',NULL,'2.0.2'),('15540-1','gsmith','db/db.changelog-Ticket-15540.xml','2020-12-10 03:58:55',51,'EXECUTED','3:126729c1219337a579376b2b89149501','Custom SQL','',NULL,'2.0.2'),('16256-1','qvanegeren','db/db.changelog-Ticket-16256.xml','2020-12-10 03:58:55',53,'EXECUTED','3:06b1b2c12b4aca6610cd6d426b2a9da7','Create Index','',NULL,'2.0.2'),('2','karabfak','db/db.changelog-1.0.xml','2017-07-25 16:34:10',12,'EXECUTED','3:5f3401528209d4bc41bfc4abc7cb605a','Rename Table','',NULL,'2.0.2'),('2','karabfak','db/db.changelog-1.17.xml','2017-07-25 16:34:10',20,'EXECUTED','3:d86e82f2f0efda18cd099855e0dff8bd','Create Index','',NULL,'2.0.2'),('3','karabfak','db/db.changelog-1.0.xml','2017-07-25 16:34:10',13,'EXECUTED','3:8e87ae7080a72baeb5d6da118ee92e8a','Modify data type, Add Column, Custom SQL','',NULL,'2.0.2'),('4','karabfak','db/db.changelog-1.0.xml','2017-07-25 16:34:10',14,'EXECUTED','3:d1b93b1fba6aacd8c1c3d9c0b58892c3','Add Column','',NULL,'2.0.2'),('db-1','qvanegeren','db/db.changelog-create-tables.xml','2017-07-25 16:34:10',7,'EXECUTED','3:bc5f81a7e23374e1b37b58727c68bed5','Add Column','',NULL,'2.0.2'),('Ticket-13782','gsmith','db/db.changelog-Ticket-13782.xml','2020-12-10 03:58:55',52,'EXECUTED','3:c5cb142b78a2c79d79b8f69711ff5882','Custom SQL','',NULL,'2.0.2');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_message`
--

DROP TABLE IF EXISTS `adt_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_message` (
  `AdtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) NOT NULL,
  `Processed` bit(1) DEFAULT b'0',
  `ProcessCode` varchar(255) DEFAULT NULL,
  `LogDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MessageDateTime` datetime DEFAULT NULL,
  `PatientNumber` varchar(255) DEFAULT NULL,
  `Delivery` varchar(255) DEFAULT NULL,
  `Room` varchar(255) DEFAULT NULL,
  `Bed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AdtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_message`
--

LOCK TABLES `adt_message` WRITE;
/*!40000 ALTER TABLE `adt_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `adt_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adtmessage`
--

DROP TABLE IF EXISTS `adtmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adtmessage` (
  `AdtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) NOT NULL,
  `Processed` bit(1) DEFAULT b'0',
  `ProcessCode` varchar(255) DEFAULT NULL,
  `LogDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MessageDateTime` datetime DEFAULT NULL,
  `PatientNumber` varchar(255) DEFAULT NULL,
  `Delivery` varchar(255) DEFAULT NULL,
  `Room` varchar(255) DEFAULT NULL,
  `Bed` varchar(255) DEFAULT NULL,
  `pk_processed` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`AdtID`),
  KEY `idx_adt_processed` (`FacilityID`,`Processed`),
  KEY `idx_adt_searching` (`FacilityID`,`MessageDateTime`,`PatientNumber`),
  KEY `idx_adtmessage_logdatetime` (`LogDateTime`),
  KEY `idx_adt_pk_processed` (`pk_processed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtmessage`
--

LOCK TABLES `adtmessage` WRITE;
/*!40000 ALTER TABLE `adtmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_type` varchar(255) DEFAULT NULL,
  `given_code` varchar(255) DEFAULT NULL,
  `component_amount` varchar(64) DEFAULT NULL,
  `dispense_units` varchar(20) DEFAULT NULL,
  `component_strength` varchar(200) DEFAULT NULL,
  `order_units` varchar(255) DEFAULT NULL,
  `placer_order_number` varchar(255) DEFAULT NULL,
  `GUID` varchar(256) NOT NULL,
  `processed` bit(1) NOT NULL DEFAULT b'0',
  `mnemonic` varchar(255) DEFAULT NULL,
  `order_amount` decimal(10,4) DEFAULT NULL,
  `required_NDC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_guid` (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulary_message`
--

DROP TABLE IF EXISTS `formulary_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulary_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int(10) unsigned NOT NULL,
  `drug_name` varchar(2048) DEFAULT NULL,
  `ndc` varchar(25) DEFAULT NULL,
  `mnemonic` varchar(128) DEFAULT NULL,
  `amount_wasted` varchar(255) DEFAULT NULL,
  `message_type` varchar(10) NOT NULL,
  `interaction_type` varchar(10) NOT NULL,
  `message_time` datetime DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `processed_fl` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulary_message`
--

LOCK TABLES `formulary_message` WRITE;
/*!40000 ALTER TABLE `formulary_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulary_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `HL7ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) DEFAULT NULL,
  `processed` bit(1) NOT NULL DEFAULT b'0',
  `LogDateTime` datetime DEFAULT NULL,
  `MessageDateTime` datetime DEFAULT NULL,
  `PatientNumber` varchar(255) DEFAULT NULL,
  `MedRecNumber` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `NameLast` varchar(255) DEFAULT NULL,
  `NameFirst` varchar(255) DEFAULT NULL,
  `NameMiddle` varchar(255) DEFAULT NULL,
  `Room` varchar(255) DEFAULT NULL,
  `Bed` varchar(255) DEFAULT NULL,
  `Delivery` varchar(255) DEFAULT NULL,
  `PointOfCare` varchar(255) DEFAULT NULL,
  `ServiceArea` varchar(255) DEFAULT NULL,
  `Gender` varchar(32) DEFAULT NULL,
  `Birthdate` datetime DEFAULT NULL,
  `PlacerOrderNumber` varchar(255) DEFAULT NULL,
  `GiveCodes` varchar(255) DEFAULT NULL,
  `GiveDrugs` varchar(255) DEFAULT NULL,
  `GiveAmount` double DEFAULT NULL,
  `GiveAmountUnits` varchar(20) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `Priority` varchar(255) DEFAULT NULL,
  `OrderType` varchar(255) DEFAULT NULL,
  `DoseNumber` varchar(16) DEFAULT NULL,
  `OrderProviderID` varchar(255) DEFAULT NULL,
  `OrderProviderNameLast` varchar(255) DEFAULT NULL,
  `OrderProviderNameFirst` varchar(255) DEFAULT NULL,
  `MessageID` varchar(50) DEFAULT NULL,
  `MessageSequence` double DEFAULT NULL,
  `Route` varchar(255) DEFAULT NULL,
  `AdministrationInstructions` longtext,
  `Quantity` varchar(255) DEFAULT NULL,
  `Parent` varchar(255) DEFAULT NULL,
  `DispensingPharmacy` varchar(255) DEFAULT NULL,
  `Frequency` varchar(255) DEFAULT NULL,
  `DispenseCode` varchar(255) DEFAULT NULL,
  `GUID` varchar(256) NOT NULL,
  `ExtFacilityId` varchar(256) DEFAULT NULL,
  `pk_processed` bit(1) NOT NULL DEFAULT b'0',
  `verification_message` bit(1) NOT NULL DEFAULT b'0',
  `status` varchar(255) DEFAULT NULL,
  `DosesDispensed` varchar(255) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL,
  `PKFacilityID` int(11) DEFAULT NULL,
  `PKProcessingInstruction` varchar(64) DEFAULT NULL,
  `TherapeuticClass` varchar(128) DEFAULT NULL,
  `DispenseAmount` varchar(200) DEFAULT NULL,
  `DoseInterval` varchar(200) DEFAULT NULL,
  `CartFill` bit(1) DEFAULT NULL,
  `feed_recipe_identifier` varchar(255) DEFAULT NULL,
  `requires_delivery_signoff` bit(1) NOT NULL DEFAULT b'0',
  `transaction_id` varchar(100) DEFAULT NULL,
  `original_prescription_number` varchar(255) DEFAULT NULL,
  `original_drug_name` varchar(1000) DEFAULT NULL,
  `do_not_tube` bit(1) NOT NULL DEFAULT b'0',
  `ehr_info` longtext,
  `custom_field_value1` varchar(500) DEFAULT NULL,
  `custom_field_value2` varchar(500) DEFAULT NULL,
  `custom_field_value3` varchar(500) DEFAULT NULL,
  `custom_field_date_value1` datetime DEFAULT NULL,
  `custom_field_date_value2` datetime DEFAULT NULL,
  `custom_field_date_value3` datetime DEFAULT NULL,
  PRIMARY KEY (`HL7ID`),
  KEY `idx_message_facilityid_placerordernumber` (`FacilityID`,`PlacerOrderNumber`),
  KEY `idx_message_facilityid_processed_hl7id` (`FacilityID`,`processed`,`HL7ID`),
  KEY `idx_facility_id_pk_processed` (`FacilityID`,`pk_processed`),
  KEY `idx_message_logdatetime` (`LogDateTime`),
  KEY `idx_GUID` (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_store`
--

DROP TABLE IF EXISTS `message_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_UUID` varchar(256) NOT NULL,
  `raw_interface_message` longtext NOT NULL,
  `metadata_payload` longtext,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_message_UUID` (`message_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_store`
--

LOCK TABLES `message_store` WRITE;
/*!40000 ALTER TABLE `message_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_component`
--

DROP TABLE IF EXISTS `outbound_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outbound_message_id` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `amount_dispensed` varchar(255) DEFAULT NULL,
  `amount_wasted` varchar(255) DEFAULT NULL,
  `ndc` varchar(75) DEFAULT NULL,
  `name` varchar(2050) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `processed_fl` bit(1) DEFAULT b'0',
  `amount_dispensed_unit` varchar(10) DEFAULT NULL,
  `mnemonic` varchar(100) DEFAULT NULL,
  `outbound_translation_id` int(10) unsigned DEFAULT NULL,
  `ndc_10` varchar(75) DEFAULT NULL,
  `ndc_11` varchar(75) DEFAULT NULL,
  `amount_wasted_unit` varchar(20) DEFAULT NULL,
  `waste_message_delay_counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_outbound_message_id` (`outbound_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_component`
--

LOCK TABLES `outbound_component` WRITE;
/*!40000 ALTER TABLE `outbound_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_message`
--

DROP TABLE IF EXISTS `outbound_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `outbound_message_type` enum('hev','epic') DEFAULT NULL,
  `ext_facility_id` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `patient_first_name` varchar(255) DEFAULT NULL,
  `patient_middle_name` varchar(255) DEFAULT NULL,
  `patient_last_name` varchar(255) DEFAULT NULL,
  `patient_dob` datetime DEFAULT NULL,
  `patient_gender` varchar(255) DEFAULT NULL,
  `patient_location` varchar(255) DEFAULT NULL,
  `patient_room` varchar(255) DEFAULT NULL,
  `patient_bed` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `dose_interval` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `medication` varchar(255) DEFAULT NULL,
  `give_amount` varchar(255) DEFAULT NULL,
  `give_amount_units` varchar(255) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `dispense_amount` varchar(255) DEFAULT NULL,
  `order_provider_id` varchar(255) DEFAULT NULL,
  `order_provider_first_name` varchar(255) DEFAULT NULL,
  `order_provider_last_name` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `processed_fl` bit(1) DEFAULT b'0',
  `compound_id` int(10) unsigned DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_processed_fl` (`processed_fl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_message`
--

LOCK TABLES `outbound_message` WRITE;
/*!40000 ALTER TABLE `outbound_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outgoing_message_forwarding`
--

DROP TABLE IF EXISTS `outgoing_message_forwarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outgoing_message_forwarding` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `target_outgoing_interface` varchar(256) DEFAULT NULL,
  `original_message_UUID` varchar(256) NOT NULL,
  `compound_id` varchar(256) DEFAULT NULL,
  `forwarded_by` varchar(256) NOT NULL,
  `processed` bit(1) NOT NULL DEFAULT b'0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_account_processed` (`account_id`,`processed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outgoing_message_forwarding`
--

LOCK TABLES `outgoing_message_forwarding` WRITE;
/*!40000 ALTER TABLE `outgoing_message_forwarding` DISABLE KEYS */;
/*!40000 ALTER TABLE `outgoing_message_forwarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talystmessage`
--

DROP TABLE IF EXISTS `talystmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talystmessage` (
  `TalystID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) NOT NULL,
  `Processed` bit(1) DEFAULT b'0',
  `ProcessCode` varchar(255) DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `MessageDateTime` datetime DEFAULT NULL,
  `SendingApp` varchar(255) DEFAULT NULL,
  `SendingFacility` varchar(255) DEFAULT NULL,
  `ReceivingApp` varchar(255) DEFAULT NULL,
  `ReceivingFacility` varchar(255) DEFAULT NULL,
  `MessageType` varchar(255) DEFAULT NULL,
  `OrderNumber` varchar(255) DEFAULT NULL,
  `BarCodeOrderNumber` varchar(255) DEFAULT NULL,
  `OrderNumberType` varchar(255) DEFAULT NULL,
  `OrderStatus` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `ScanDatetime` datetime DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `TransactionId` varchar(255) DEFAULT NULL,
  `AutopharmOrderNumber` varchar(255) DEFAULT NULL,
  `Medication` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Priority` varchar(255) DEFAULT NULL,
  `pk_processed` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TalystID`),
  KEY `idx_talyst_processed` (`FacilityID`,`Processed`),
  KEY `idx_talystmessage_logdatetime` (`LogDateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talystmessage`
--

LOCK TABLES `talystmessage` WRITE;
/*!40000 ALTER TABLE `talystmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `talystmessage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-09  8:41:22
