
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_db
-- ------------------------------------------------------
-- Server version	8.0.15



--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
SET @saved_cs_client     = @@character_set_client;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `account_holder` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `fees` decimal(20,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `accounts`
--


INSERT INTO `accounts` VALUES (1,'Anna Bengel',8888.00,250.00),(2,'Chase Williams',5444.00,175.00),(3,'Jonelle Wehrman',3333.00,88.00),(4,'Steven Ross',3322.00,88.00);

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(20,2) NOT NULL,
  `txn_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--


INSERT INTO `transactions` VALUES (1,500.00,'Deposit',3),(2,-200.00,'Withdrawl',4),(3,200.00,'Deposit',4),(4,248.00,'Deposit',1);


-- Dump completed on 2019-04-17 13:54:49
