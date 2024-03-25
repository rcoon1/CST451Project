CREATE DATABASE  IF NOT EXISTS `dpe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dpe`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: dpe
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street_and_landmark` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpv9a6lyjtfiv5c58fdswiamc7` (`user_id`),
  CONSTRAINT `FKpv9a6lyjtfiv5c58fdswiamc7` FOREIGN KEY (`user_id`) REFERENCES `auth_user_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'corpus christi','','78418','texas','3123 djfb',1,NULL,NULL),(2,'austin','','78404','Texas','234 ojno',2,NULL,NULL),(3,'austin',NULL,NULL,'texas',NULL,3,'123 main','78404'),(4,'dallas',NULL,NULL,'texas',NULL,4,'1234 main st','78405'),(5,'dallas',NULL,NULL,'Texas',NULL,5,'1234 main st','78405'),(6,'dallas',NULL,NULL,'Texas',NULL,6,'1234 main st','78404'),(7,'dallas',NULL,NULL,'Texas',NULL,7,'1234 main st','78404');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_authority`
--

DROP TABLE IF EXISTS `auth_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_authority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_code` varchar(255) DEFAULT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_authority`
--

LOCK TABLES `auth_authority` WRITE;
/*!40000 ALTER TABLE `auth_authority` DISABLE KEYS */;
INSERT INTO `auth_authority` VALUES (1,'ADMIN','Admin Role'),(2,'USER','User Role');
/*!40000 ALTER TABLE `auth_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_authority`
--

DROP TABLE IF EXISTS `auth_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_authority` (
  `user_id` int NOT NULL,
  `authorities_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`authorities_id`),
  KEY `FKn7t2r8oft6j1w61po11wnb19w` (`authorities_id`),
  CONSTRAINT `FKn7t2r8oft6j1w61po11wnb19w` FOREIGN KEY (`authorities_id`) REFERENCES `auth_authority` (`id`),
  CONSTRAINT `FKo4vmid5kx45903pdsst9qu1p0` FOREIGN KEY (`user_id`) REFERENCES `auth_user_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_authority`
--

LOCK TABLES `auth_user_authority` WRITE;
/*!40000 ALTER TABLE `auth_user_authority` DISABLE KEYS */;
INSERT INTO `auth_user_authority` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2);
/*!40000 ALTER TABLE `auth_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_details`
--

DROP TABLE IF EXISTS `auth_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_key` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7fx13tfge5grrevwfx5qqwdxn` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_details`
--

LOCK TABLES `auth_user_details` WRITE;
/*!40000 ALTER TABLE `auth_user_details` DISABLE KEYS */;
INSERT INTO `auth_user_details` VALUES (1,'2023-09-27 20:30:26.519000','admin@gmail.com',_binary '','admin','admin','$2a$10$4qrI5AWwbjN2t85qAMhqTeeC1j4oWehUWLNA20gUvRYFvM2rOWz.6','3613613611',NULL,'admin'),(2,'2023-09-27 20:47:07.413000','user@gmail.com',_binary '','user','user','$2a$10$NeSfEVbsBWBmjQSf2h/ndez6fPBgVMJlAqsVlxzA.088/f1bIqs8S','3613613611',NULL,'user'),(3,'2023-09-30 16:34:14.994000','test@gmail.com',_binary '','Ryan','Coon','$2a$10$yPaH7k9UBWGcECxoPY.YW.notnIWLlV.JInjFKJavc4rigb2YVN8y','3613613611',NULL,'test_user'),(4,'2023-09-30 16:35:32.357000','test3@gmail.com',_binary '','test','user','$2a$10$4M7wNsfji.Ntjt05yezxSe7te6tpSazmfFQX//EimrfJovTNMwY6G','3613613611',NULL,'user_test'),(5,'2023-09-30 16:37:42.945000','test@test.com',_binary '','testu','user','$2a$10$MF3SJewcEcfcsvMkJHKvIuwoEU/uzmynIXaJ1Dpm8PI7hRJ7lb7Ky','74774758',NULL,'testuser'),(6,'2023-10-20 11:26:50.324000','test@gmail.com',_binary '','Ryan','Coon','$2a$10$hAUuuCehKtlFsGC9fE/vJONZq.sIX9xcG43FalIQwUWl3/aJSRvP.','3613613611',NULL,'User123'),(7,'2023-10-21 21:30:55.917000','user@gmail.com',_binary '','John','User','$2a$10$2EZsmX139aIu3pv7eakd5ubn/TpHBFZgAHDOpuAqb4mMNIRk23e1e','3613613611',NULL,'user1234');
/*!40000 ALTER TABLE `auth_user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_details_addresses`
--

DROP TABLE IF EXISTS `auth_user_details_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_details_addresses` (
  `user_id` int NOT NULL,
  `addresses_id` int NOT NULL,
  UNIQUE KEY `UK_fmb0k71j3sjh57qix4s0w898j` (`addresses_id`),
  KEY `FKs0f010gw22qs8l6b4tx3otdbh` (`user_id`),
  CONSTRAINT `FKs0f010gw22qs8l6b4tx3otdbh` FOREIGN KEY (`user_id`) REFERENCES `auth_user_details` (`id`),
  CONSTRAINT `FKtrgyvx2hvxci90yairpkqx766` FOREIGN KEY (`addresses_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_details_addresses`
--

LOCK TABLES `auth_user_details_addresses` WRITE;
/*!40000 ALTER TABLE `auth_user_details_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_details_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK9e71rypodo61m679608fdggve` FOREIGN KEY (`id`) REFERENCES `auth_user_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (2),(3),(4),(5),(6),(7);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer_cart_items`
--

DROP TABLE IF EXISTS `buyer_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer_cart_items` (
  `buyer_id` int NOT NULL,
  `cart_items_cartid` int NOT NULL,
  UNIQUE KEY `UK_4j8m6l4ftubo9edxwhradvb1j` (`cart_items_cartid`),
  KEY `FKc50ccbgtr6bm07d7jjf1xc7hw` (`buyer_id`),
  CONSTRAINT `FKc50ccbgtr6bm07d7jjf1xc7hw` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKivf566kha6gqukphxvbgwjojb` FOREIGN KEY (`cart_items_cartid`) REFERENCES `cart_items` (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer_cart_items`
--

LOCK TABLES `buyer_cart_items` WRITE;
/*!40000 ALTER TABLE `buyer_cart_items` DISABLE KEYS */;
INSERT INTO `buyer_cart_items` VALUES (2,8);
/*!40000 ALTER TABLE `buyer_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `buyer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`cartid`),
  KEY `FKedryofpdu4slsh36ilpb5y5a4` (`buyer_id`),
  KEY `FKl7je3auqyq1raj52qmwrgih8x` (`product_id`),
  CONSTRAINT `FKedryofpdu4slsh36ilpb5y5a4` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKl7je3auqyq1raj52qmwrgih8x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (8,1,2,2);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `seller_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKesd6fy52tk7esoo2gcls4lfe3` (`seller_id`),
  CONSTRAINT `FKesd6fy52tk7esoo2gcls4lfe3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'SKEGGOX','Axe','24\" teakwood handle, 6\" 1095 carbon steel axe-head, 6\" sharp blade edge, 55-58 RC hardness, 21 Ib total weight The Norse Tradesman, authentic, hand forged Viking battle axe is no trinket. Though relatively small, this melee weapon wil strike fear into the hearts of your enemies. A skilled Viking warrior would often fight with a small ax in one hand and a shield in the other. The versatility of this weapon made it a staple of Norse raiders and warriors. ','https://us.norsetradesman.com/_next/image?url=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F1408%2F0936%2Ffiles%2F1_1.jpg&w=2048&q=75','BEARDED BATTLE AXE',127.89,1),(3,'Battling Blades','Sword','The longsword, also known as long sword or long-sword, is a type of European sword characterized by a cruciform hilt with a two handed with a straight double-edged blade.  The longsword was prevalent during the late medieval and Renaissance periods (approximately 1350 to 1550), with early and late use reaching the 13th and 17th centuries.  The term bastard sword is used to identify the longsword during the late medieval and Renaissance period. This longsword is 37\" long.','https://battlingblades.com/cdn/shop/products/DSC00978.jpg?v=1527247742&width=1080','Longsword/ Bastard Sword- High Carbon Damascus Steel Sword- 37\"',299.99,1),(4,' By-The-Sword','Misc.','Our Medieval Spiked Battle Flail is a melee weapon that is commonly attributed to the Medieval Germany and Central Europe. The flail was also called ball and chain or mace and chain as most often the flail featured a spiked single ball attached to a handle via metal chain. Medieval Flail is incredible. Own a true museum quality medieval flail with styling based on the actual items found in \"digs\" under and around the castles of Europe. This hand crafted flail masterpiece features a blackened steel ball with spikes over 2-1/2\" long attached to a blackened chain which is linked inside a hand wrought blackened steel bar. The wrought iron bar of this medieval weapon flail is secured to a seared wood handle and has an overall extended length of over four feet!','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRthiFHYd5s9iyhq55bLd79m-lUQoKRhco--eFubqJq0XmkdiFPumOekHxtPfQrSo55chM_cXVfS9V3MAf7QwcEI3c9Z06kdWAR9pTOcG8TupUhckH_hKqU&usqp=CAY','Medieval Spiked Battle Flail 62-2605',262.01,1),(5,'Medieval Collectables','Armor','Accent your home or office with the elegant visage of a Renaissance knight with the 16th Century Italian Full Suit of Armor with Sword. This decorative suit of armor exquisitely displays the famous 16th century Milanese style of armor. During this era Milan was famed for its master armorers which were well known for the use of smooth metallic plates in their stylish designs. This suit is completed with a marvelous men at arms style helmet, which features a working visor and a narrow eye slit. The chest plate features an exceptional relief style shield, which was the coat of arms for the famous Medici family. This suit of armor is handcrafted in Italy from aluminum for a remarkable emulation of this historic armor style in a significantly lighter design. Also included with this armor is an intricate longsword resting between the gauntlets and a sleek wooden display stand. Experience the styling of the era of enlightenment with the ornately detailed design of the 16th Century Italian Full Suit of Armor with Sword.','https://www.medievalcollectibles.com/wp-content/uploads/2019/10/ME-0032.jpg','16th Century Italian Full Suit of Armor with Sword',2945.99,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKcejcqv1f8b9stp4o1qr41lpj6` FOREIGN KEY (`id`) REFERENCES `auth_user_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_products`
--

DROP TABLE IF EXISTS `seller_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_products` (
  `seller_id` int NOT NULL,
  `products_id` int NOT NULL,
  UNIQUE KEY `UK_iemjsutf7nimmyt7xoelaktg1` (`products_id`),
  KEY `FKjq1j598wvddj6vs3ywndurc43` (`seller_id`),
  CONSTRAINT `FK1lvaagcjjuytidwm9608hsg0y` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKjq1j598wvddj6vs3ywndurc43` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_products`
--

LOCK TABLES `seller_products` WRITE;
/*!40000 ALTER TABLE `seller_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 19:30:26
