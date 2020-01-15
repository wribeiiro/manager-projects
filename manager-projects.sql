/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.11-MariaDB : Database - project_m
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_m` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `project_m`;

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_user_id` int(11) NOT NULL,
  `project_name` varchar(200) DEFAULT '',
  `project_body` varchar(200) DEFAULT '',
  `date_created` datetime DEFAULT current_timestamp(),
  `date_modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `projects` */

insert  into `projects`(`id`,`project_user_id`,`project_name`,`project_body`,`date_created`,`date_modified`) values (1,1,'IDIMEX','Projeto específico para idimex','2020-01-15 08:57:06','2020-01-15 08:57:18');

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_name` varchar(200) DEFAULT '',
  `task_body` varchar(200) DEFAULT '',
  `due_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date_created` datetime DEFAULT current_timestamp(),
  `date_modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tasks` */

insert  into `tasks`(`id`,`project_id`,`task_name`,`task_body`,`due_date`,`status`,`date_created`,`date_modified`) values (1,1,'Organograma maquinas','Lista oee da fabrica\r\nLista oee do setor\r\nLista oee do grupo\r\nLista oee da maquina','2020-01-31 00:00:00',0,'2020-01-15 08:59:25','2020-01-15 08:59:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) DEFAULT '',
  `last_name` varchar(200) DEFAULT '',
  `email` varchar(200) DEFAULT '',
  `username` varchar(200) DEFAULT '',
  `password` varchar(200) DEFAULT '',
  `date_created` datetime DEFAULT current_timestamp(),
  `date_modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`first_name`,`last_name`,`email`,`username`,`password`,`date_created`,`date_modified`) values (1,'Wellisson','Ribeiro','welleh10@gmail.com','wribeiiro','$2y$12$y24zab2yl4NQps7M.tQLO.QuqTebVtEI60w66dupQSQo5k8pl.kDW','2020-01-15 08:57:45','2020-01-15 08:57:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
