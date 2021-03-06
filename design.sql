/*
SQLyog - Free MySQL GUI v5.18
Host - 5.5.45 : Database - new_multilink
*********************************************************************
Server version : 5.5.45
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `new_multilink`;

USE `new_multilink`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `office_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `for_people` int(11) DEFAULT NULL,
  `for_properties` int(11) DEFAULT NULL,
  `Description` varchar(4096) DEFAULT NULL,
  `WHEN_VISIBLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`office_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `people` */

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `office_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`office_id`,`people_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `people_with_categories` */

DROP TABLE IF EXISTS `people_with_categories`;

CREATE TABLE `people_with_categories` (
  `office_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  PRIMARY KEY (`office_id`,`people_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
