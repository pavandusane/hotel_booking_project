/*
SQLyog Community v10.2 
MySQL - 5.5.27 : Database - hotelbooking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hotelbooking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hotelbooking`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `rid` int(11) DEFAULT NULL,
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `no_of_guest` int(10) DEFAULT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  `availibility` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `rid` (`rid`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `registration` (`Id`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `hotel_rooms` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`rid`,`bid`,`cust_id`,`check_in_date`,`check_out_date`,`no_of_guest`,`room_type`,`availibility`) values (NULL,1,1,'2020-09-13','2020-09-13',2,'delux','yes'),(3,2,2,'2020-09-13','2020-09-13',2,'standard','yes'),(5,3,2,'2020-09-18','2020-09-18',3,'delux','yes'),(2,4,2,'2020-09-20','2020-09-19',3,'null','yes'),(2,5,2,'2020-09-20','2020-09-19',3,'null','yes'),(2,6,2,'2020-09-20','2020-09-19',3,'null','yes'),(2,7,2,'2020-09-20','2020-09-19',3,'null','yes'),(5,8,29,'2020-09-14','2020-09-16',4,'null','yes'),(5,9,30,'2020-09-15','2020-09-17',3,'null','yes'),(5,10,29,'2020-09-14','2020-09-16',2,'null','yes');

/*Table structure for table `hotel_rooms` */

DROP TABLE IF EXISTS `hotel_rooms`;

CREATE TABLE `hotel_rooms` (
  `room_id` int(20) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(10) DEFAULT NULL,
  `room_capacity` varchar(10) DEFAULT NULL,
  `room_capacity_date` date DEFAULT NULL,
  `available` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `hotel_rooms` */

insert  into `hotel_rooms`(`room_id`,`room_type`,`room_capacity`,`room_capacity_date`,`available`) values (1,'Luxury','7','2020-09-13',NULL),(2,'2','2','2020-09-12',NULL),(3,'Standard','10','2020-09-13',NULL),(4,'Standard','4','2020-09-12',NULL),(5,'Luxury','1','2020-09-13','yes'),(6,'Luxury','2','2020-09-13','yes'),(7,'Luxury','2','2020-09-13','yes'),(8,'null','3','2020-09-13','yes'),(9,'null','3','2020-09-13','yes'),(10,'null','3','2020-09-13','yes'),(11,'null','3','2020-09-13','yes'),(12,'null','2','2020-09-13','yes'),(13,'null','5','2020-09-13','yes');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`Id`,`name`,`emailid`,`mobile`,`uname`,`pass`) values (1,'Agrawal','agrawalmahima2015@gmail.com','','Mahima','Mahima@123'),(2,'Dusane','dusanepv7@gmail.com','','Pavan','Pavan@123'),(3,'null','null','','null','null'),(4,'null','null','','null','null'),(5,'Pavan','dusanepv7@gmail.com','','PavanDusane','Dusane@123'),(6,'Pavan','dusanepv7@gmail.com','','PavanDusane','Dusane@123'),(7,'Pavan','dusanepv7@gmail.com','','PavanDusane','Dusane@123'),(8,'null','null','null','',''),(9,'null','null','null','',''),(10,'null','null','null','sgdzb','sfsga'),(11,'null','null','null','sgdzb','sfsga'),(12,'null','null','null','sgdzb','dthdjhedn'),(13,'null','null','null','null','null'),(14,'null','null','null','null','null'),(15,'null','null','null','null','null'),(16,'null','null','null','null','null'),(17,'null','null','null','null','null'),(18,'null','null','null','null','null'),(19,'Khushi','khushi@gmail.com','123090000000','Kushi','Kushi'),(20,'Khushi','khushi@gmail.com','123090000000','Kushi','Kushi'),(21,'Khushi','khushi@gmail.com','123090000000','Kushi','Kushi'),(22,'Shagun','shagun@gmail.com','991-630-3290','Shagun','Shagun@123'),(23,'Shagun','shagun@gmail.com','991-630-3290','Shagun','Shagun@123'),(24,'Shagun','shagun@gmail.com','991-630-3290','Shagun','Shagun@123'),(25,'Shagun','shagun@gmail.com','991-630-3290','Shagun','Shagun@123'),(26,'Shagun','shagun@gmail.com','991-630-3290','Shagun','Shagun123'),(27,'Shagun','shagun@gmail.com','9422740766','Shagun','Shagun123'),(28,'null','null','null','null','null'),(29,'Shanu','shanu@gmail.com','8866331290','Shanu','Shanu@123'),(30,'Riya','riya@gmail.com','8823412345','Riya','Riya@123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
