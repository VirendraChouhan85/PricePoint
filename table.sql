/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 5.5.1-m2-community : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `contact_info` */

DROP TABLE IF EXISTS `contact_info`;

CREATE TABLE `contact_info` (
  `contact_primary` varchar(20) DEFAULT NULL,
  `contact_secondary` varchar(20) DEFAULT NULL,
  `gmail_primary` varchar(100) DEFAULT NULL,
  `gmail_secondary` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact_info` */

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `name` varchar(20) DEFAULT 'null',
  `username` varchar(20) NOT NULL,
  `email` varchar(26) DEFAULT 'null',
  `password` varchar(26) DEFAULT 'null',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`name`,`username`,`email`,`password`) values (' Viroang ',' chromeBullGuy ',' viroang@gmail.com ',' 456 '),(' Utkarsh ',' utgupta ',' u@gmail.com ',' 123 '),(' Virendra ',' vc ',' vc@gmail.com ',' xyz '),(' Vinayak ',' VinayakJaiswal ',' v@gmail.com ',' abc ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
