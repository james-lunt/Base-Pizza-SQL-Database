-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: base_pizza1
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
-- Temporary view structure for view `all_drivers`
--

DROP TABLE IF EXISTS `all_drivers`;
/*!50001 DROP VIEW IF EXISTS `all_drivers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_drivers` AS SELECT 
 1 AS `Employee_name`,
 1 AS `Worker_id`,
 1 AS `Hours_Worked`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `first_name` varchar(20) NOT NULL,
  `second_name` varchar(20) NOT NULL,
  `account_number` varchar(8) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`account_number`),
  CONSTRAINT `customers_chk_1` CHECK ((length(`account_number`) = 8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('Bonnie','Gill','08573556','\"2 Rescue Copse Spring Hill, Colliers Way, Arley\",CV7 8HN','(042)9424070'),('Hugh','Kelly','09897555','\"2 Hales Road, Wednesbury\",WS10 9BP','(090)6488140'),('Harry','Donnelly','10934956','\"11 Cooks Way, Long Buckby\",NN6 7GQ','061310967'),('James','Lunt','19874567','\"Pennyfields, New Barns Lane, Much Hadham\",SG10 6HH','(053)9244660'),('Chloe','Dunne','20858525','\"71 Primrose Close, Annitsford\",NE23 7UH','09532243'),('Zofja','Cautley','24245567','\"19 Hunt Lea, Whickham\",NE16 5TU','(051)386513'),('Jack','Flynn','27476474','\"30 Kimberley Avenue, Thatto Heath\",WA9 5SF','051393630'),('Charlie','Byrne','32667884','\"57 Liswerry Road, Newport\",NP19 4LG','(066)7121779'),('Greg ','Ocarroll','35219334','\"33 Berryhill Close, Blaydon-On-Tyne\",NE21 5JP','(056)7770718'),('Curtis','Winkelmann','35829525','\"2 Davenport Close, Sandbach\",CW11 1YP','(01)6247182'),('Ellie','Finney','38767553','\"2 Pier Avenue, Whitstable\",CT5 2HH','(056)7770161'),('Michael','Mcgagh','39259552','\"11 Pant Lodge Estate, Llanfairpwllgwyngyll\",LL61 5YW','(045)521310'),('Robyn','Tuohy','55567732','\"14 Hill Crescent, Shrewsbury\",SY3 7RN','(043)3346443'),('Rachel ','Dempsey','75601875','\"6 Pennyfathers Lane, Welwyn\",AL6 0EN','(068)31623'),('Cian','Crowley','89347264','\"6 Orchard Terrace, Boroughbridge\",YO51 9AF','(087)6394987');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `order_id` varchar(10) DEFAULT NULL,
  `food_name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `food_type` varchar(20) NOT NULL,
  `popularity` varchar(20) NOT NULL,
  PRIMARY KEY (`food_name`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `foods_chk_1` CHECK (((`food_type` = _utf8mb4'Pizza') or (`food_type` = _utf8mb4'Sides') or (`food_type` = _utf8mb4'Drink') or (`food_type` = _utf8mb4'Desert')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES ('NULL','7up',2,'Drink','31%'),('122','Ben & Jerry\'s Ice Cream',7,'Desert','10%'),('133','Bosco',17,'Pizza','2%'),('145','Caesar Salad',8,'Sides','23%'),('171','Club Orange',2,'Drink','18%'),('192','Coca Cola',2,'Drink','29%'),('234','Diablo',18,'Pizza','22%'),('244','Focaccia',9,'Sides','28%'),('252','Margherita',15,'Pizza','26%'),('335','Nudo',17,'Pizza','9%'),('1993','Pollo Caldo',17,'Pizza','8%'),('7432','Quattro Formaggi',19,'Pizza','2%'),('9825','Reggio',19,'Pizza','7%'),('9825','Rocket & Feta Salad',8,'Sides','19%'),('7432','Salted Caramel Brownie',5,'Desert','15%'),('1993','San Pellegrino',2,'Drink','20%'),('335','San Pellegrino Lemon',2,'Drink','17%'),('252','San Pellegrino Orange',2,'Drink','19%'),('244','Simona',18,'Pizza','4%'),('234','Sweet Potato Salad',8,'Sides','7%'),('192','Tiramisu',6,'Desert','13%'),('171','Torino',17,'Pizza','8%'),('145','Treviso',19,'Pizza','4%'),('133','Tropicana',18,'Pizza','12%'),('122','Trullo',17,'Pizza','3%'),('NULL','Vegetarian',18,'Pizza','18%'),('NULL','Verde',18,'Pizza','18%');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_122`
--

DROP TABLE IF EXISTS `order_122`;
/*!50001 DROP VIEW IF EXISTS `order_122`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_122` AS SELECT 
 1 AS `food_name`,
 1 AS `price`,
 1 AS `topping1`,
 1 AS `topping2`,
 1 AS `topping3`,
 1 AS `topping4`,
 1 AS `topping5`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `order_taker` varchar(10) NOT NULL,
  `ordered_through` varchar(20) NOT NULL,
  `order_time` time NOT NULL,
  `ready_at` time NOT NULL,
  `customer` varchar(8) NOT NULL,
  `store` varchar(255) NOT NULL,
  `service` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer` (`customer`),
  KEY `store` (`store`),
  KEY `orders_ibfk_3` (`order_taker`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`account_number`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`store`) REFERENCES `store` (`Location`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`order_taker`) REFERENCES `staff` (`Worker_id`),
  CONSTRAINT `orders_chk_1` CHECK (((`ordered_through` = _utf8mb4'Just Eat') or (`ordered_through` = _utf8mb4'Deliveroo') or (`ordered_through` = _utf8mb4'Phone') or (`ordered_through` = _utf8mb4'Base Website') or (`ordered_through` = _utf8mb4'In shop'))),
  CONSTRAINT `orders_chk_2` CHECK (((`service` = _utf8mb4'Collection') or (`service` = _utf8mb4'Delivery')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (122,'25265','Phone','14:01:44','14:35:00','09897555','Drumcondra','Delivery'),(133,'97970','Phone','17:43:23','18:15:00','20858525','Stillorgan','Delivery'),(145,'29292','Just Eat','16:33:20','17:20:00','08573556','Glenageary','Delivery'),(171,'97970','In Shop','20:12:54','20:30:00','24245567','Stillorgan','Collection'),(192,'20502','Phone','20:56:54','21:30:00','19874567','Lucan','Collection'),(234,'25865','Just Eat','22:30:43','23:00:00','32667884','Drumcondra','Collection'),(244,'12343','Just Eat','19:12:00','19:30:00','35829525','Glenageary','Collection'),(252,'24567','Just Eat','18:45:07','19:50:00','10934956','Ballsbridge','Delivery'),(335,'29292','Deliveroo','21:27:44','21:45:00','38767553','Glenageary','Delivery'),(1993,'57372','Base Website','21:37:00','22:05:00','27476474','Castleknock','Delivery'),(7432,'86432','Just Eat','22:08:12','22:40:00','35219334','Terenure','Delivery'),(9825,'20502','Just Eat','17:43:23','18:40:00','39259552','Lucan','Delivery');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rush_hour_order`
--

DROP TABLE IF EXISTS `rush_hour_order`;
/*!50001 DROP VIEW IF EXISTS `rush_hour_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rush_hour_order` AS SELECT 
 1 AS `order_id`,
 1 AS `order_taker`,
 1 AS `customer`,
 1 AS `ordered_through`,
 1 AS `store`,
 1 AS `service`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Employee_name` varchar(255) NOT NULL,
  `Worker_id` varchar(10) NOT NULL,
  `Store` varchar(255) NOT NULL,
  `Salary` varchar(20) NOT NULL,
  `Hours_Worked` int NOT NULL,
  `Staff_Role` varchar(30) NOT NULL,
  PRIMARY KEY (`Worker_id`),
  KEY `Store_idx` (`Store`),
  CONSTRAINT `Store` FOREIGN KEY (`Store`) REFERENCES `store` (`Location`),
  CONSTRAINT `staff_chk_1` CHECK ((length(`Worker_id`) = 5)),
  CONSTRAINT `staff_chk_2` CHECK (((`Staff_Role` = _utf8mb4'Chef') or (`Staff_Role` = _utf8mb4'Driver') or (`Staff_Role` = _utf8mb4'Order Taker') or (`Staff_Role` = _utf8mb4'Manager')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('Jasmine','00231','Lucan','13.00',40,'Manager'),('Tack','02822','Stillorgan','11.50',40,'Chef'),('Jack','02855','Castleknock','10.50',25,'Order Taker'),('Barry','08184','Stillorgan','11.50',40,'Driver'),('Jack','08975','Ballsbridge','11.00',20,'Driver'),('Lucy','09098','Stillorgan','11.00',15,'Driver'),('Ali','10102','Lucan','11.00',30,'Chef'),('Lauren','11156','Stillorgan','10.50',30,'Order Taker'),('Charlie','12095','Glenageary','11.00',10,'Driver'),('Michael','12343','Glenageary','10.50',30,'Order Taker'),('Bogdan','12345','Glenageary','11.50',40,'Chef'),('Niamh','13134','Glenageary','10.50',30,'Order Taker'),('Ted','13345','Ballsbridge','11.50',40,'Chef'),('Faye','13453','Glenageary','11.50',40,'Driver'),('Harry','18414','Stillorgan','10.50',30,'Order Taker'),('Simon','20502','Lucan','10.50',40,'Order Taker'),('Caitlin','22999','Stillorgan','11.00',15,'Driver'),('Alex','23525','Ballsbridge','11.00',15,'Driver'),('Samantha','23535','Castleknock','11.00',10,'Driver'),('Greg','24265','Ballsbridge','10.50',40,'Order Taker'),('Barry','24567','Ballsbridge','10.50',30,'Order Taker'),('Bernadette','24580','Lucan','11.00',20,'Driver'),('Zofja','24974','Terenure','11.00',30,'Chef'),('Bernard','25222','Lucan','11.00',20,'Driver'),('John','25265','Drumcondra','10.50',20,'Order Taker'),('Curtis','25326','Drumcondra','11.50',10,'Driver'),('Luca','25677','Ballsbridge','11.00',40,'Chef'),('Patrick','25755','Terenure','13.00',40,'Manager'),('Tray','25782','Drumcondra','11.00',40,'Chef'),('Tom','25865','Drumcondra','10.50',30,'Order Taker'),('Niamh','25925','Drumcondra','11.50',20,'Driver'),('Conall','26262','Castleknock','11.00',15,'Driver'),('Elizabeth','26266','Drumcondra','10.50',35,'Order Taker'),('Sam','26474','Glenageary','10.50',35,'Order Taker'),('Patricia','26478','Ballsbridge','13.00',50,'Manager'),('Aobhinn','26583','Drumcondra','11.50',20,'Driver'),('James','27458','Glenageary','11.00',15,'Driver'),('Jason','27612','Drumcondra','13.00',50,'Manager'),('Ella','28476','Lucan','11.00',20,'Driver'),('Talia','28767','Castleknock','13.00',40,'Manager'),('Louise','29292','Glenageary','10.50',20,'Order Taker'),('Eleanor','32310','Lucan','10.50',20,'Order Taker'),('Sarah','32653','Castleknock','10.50',30,'Order Taker'),('Cathal','34435','Castleknock','11.00',20,'Driver'),('Derek','34643','Castleknock','11.50',30,'Chef'),('James','36233','Drumcondra','11.50',20,'Driver'),('Fernando','36262','Drumcondra','11.00',20,'Chef'),('Dominic','36726','Drumcondra','11.00',20,'Chef'),('Todd','37377','Castleknock','11.50',40,'Driver'),('John','39858','Stillorgan','10.50',35,'Order Taker'),('Jessica','48390','Ballsbridge','11.00',25,'Driver'),('George','55223','Lucan','11.00',30,'Chef'),('Basil','56348','Glenageary','11.00',30,'Chef'),('Amy','56784','Glenageary','13.00',40,'Manager'),('Joslin','57055','Lucan','11.00',25,'Driver'),('Stephen','57372','Castleknock','10.50',20,'Order Taker'),('Hugh','63673','Drumcondra','11.50',15,'Driver'),('Alison','64879','Terenure','11.00',20,'Driver'),('Jatinder','65476','Ballsbridge','11.00',25,'Driver'),('Lizzie','66464','Castleknock','11.00',30,'Driver'),('Jeremy','66653','Terenure','11.00',25,'Driver'),('Bom','67832','Stillorgan','11.00',30,'Chef'),('Caspian','67890','Glenageary','11.00',30,'Chef'),('Lauren','77663','Terenure','11.00',20,'Driver'),('Jim','77888','Stillorgan','13.00',50,'Manager'),('Fiath','83595','Drumcondra','11.50',20,'Driver'),('Elise','83943','Glenageary','11.50',20,'Driver'),('Marc','86432','Terenure','10.50',40,'Order Taker'),('Robert','88399','Stillorgan','11.00',20,'Driver'),('James','88778','Stillorgan','11.00',18,'Driver'),('Max','89892','Terenure','10.50',30,'Order Taker'),('Fatima','93838','Castleknock','11.50',40,'Chef'),('Chloe','97970','Stillorgan','10.50',30,'Order Taker'),('Amy','98345','Glenageary','10.50',20,'Order Taker'),('Una','98377','Stillorgan','11.00',30,'Chef'),('Harry','98456','Glenageary','11.00',20,'Driver'),('Tom','98734','Terenure','11.00',20,'Driver'),('Claire','98765','Terenure','11.00',20,'Driver'),('Sean','99999','Terenure','11.50',40,'Chef');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `Location` varchar(255) NOT NULL,
  `Manager` varchar(255) NOT NULL,
  `Chefs` int DEFAULT NULL,
  `Order_Takers` int DEFAULT NULL,
  `Drivers` int DEFAULT NULL,
  `Opening_Time` time NOT NULL,
  `Closing_Time` time NOT NULL,
  `Website` varchar(255) NOT NULL,
  PRIMARY KEY (`Location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('Ballsbridge','Harry',2,2,4,'14:00:00','00:00:00','www.baseballsbridge.com'),('Castleknock','Cathal',3,3,5,'12:00:00','23:00:00','www.basecastleknock.com'),('Drumcondra','Luke',3,3,6,'12:00:00','23:00:00','www.basedrumcondra.com'),('Glenageary','Amy',3,5,5,'12:00:00','23:00:00','www.baseglenageary.com'),('Lucan','Alannah',2,2,4,'12:00:00','23:00:00','www.baselucan.com'),('Stillorgan','Jessica',3,4,5,'12:00:00','23:00:00','www.basestillorgan.com'),('Terenure','Casper',2,2,5,'12:00:00','23:00:00','www.baseterenure.com');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `food_name` varchar(255) NOT NULL,
  `topping1` varchar(45) NOT NULL,
  `topping2` varchar(45) DEFAULT NULL,
  `topping3` varchar(45) DEFAULT NULL,
  `topping4` varchar(45) DEFAULT NULL,
  `topping5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`food_name`),
  CONSTRAINT `forkey1` FOREIGN KEY (`food_name`) REFERENCES `foods` (`food_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES ('Bosco','Wild Mushrooms','Cotto Ham','Fennel Sausage','Truffle Oil',NULL),('Diablo','Pepperoni','Chorizo','Chillies','Jalapenos',NULL),('Margherita','NULL',NULL,NULL,NULL,NULL),('Nudo','Olives','Goats Cheese','Artichokes','Chillies','Cooked Baby Spinach'),('Pollo Caldo','Smoked Chicken','Mixed Peppers','Pancetta','Chillies',NULL),('Quattro Formaggi','Taleggio','Gorgonzola','Parmesan','Mozarrella',NULL),('Reggio','Talaggio Cheese','Stacciatella','Nduja Sausage',NULL,NULL),('Simona','Salami','Roasted Peppers','Chillies','Fresh Rocket',NULL),('Torino','Chorizo','Pepperoni','Roasted Red Peppers',NULL,NULL),('Tropicana','Pineapple','Sweetcorn','Cotto Ham',NULL,NULL),('Trullo','Smoked Mozzarella','Rosemary','Pancetta','Red Chicory',NULL),('Vegetarian','Aubergine','Courgette','Roasted Red Peppers','Roasted Red Onions',NULL),('Verde','Goats Cheese','Sundried Tomatoes','Chorizo','Basil Pesto','Fresh Rocket');
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_drivers`
--

/*!50001 DROP VIEW IF EXISTS `all_drivers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_drivers` AS select `staff`.`Employee_name` AS `Employee_name`,`staff`.`Worker_id` AS `Worker_id`,`staff`.`Hours_Worked` AS `Hours_Worked` from `staff` where (`staff`.`Staff_Role` = 'Driver') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_122`
--

/*!50001 DROP VIEW IF EXISTS `order_122`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_122` AS select `foods`.`food_name` AS `food_name`,`foods`.`price` AS `price`,`toppings`.`topping1` AS `topping1`,`toppings`.`topping2` AS `topping2`,`toppings`.`topping3` AS `topping3`,`toppings`.`topping4` AS `topping4`,`toppings`.`topping5` AS `topping5` from (`foods` join `toppings`) where ((`foods`.`order_id` = 122) and (`toppings`.`food_name` = `foods`.`food_name`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rush_hour_order`
--

/*!50001 DROP VIEW IF EXISTS `rush_hour_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rush_hour_order` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_taker` AS `order_taker`,`orders`.`customer` AS `customer`,`orders`.`ordered_through` AS `ordered_through`,`orders`.`store` AS `store`,`orders`.`service` AS `service` from `orders` where ((`orders`.`order_time` < '21:00:00') and (`orders`.`order_time` > '19:00:00')) */;
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

-- Dump completed on 2020-12-07 17:43:19
