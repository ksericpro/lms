/*
SQLyog Community v12.2.0 (64 bit)
MySQL - 5.7.16-log : Database - lms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lms`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(4) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `shelf_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `year_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `books_category_id_foreign` (`category_id`),
  KEY `books_shelf_id_foreign` (`shelf_id`),
  CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `books_shelf_id_foreign` FOREIGN KEY (`shelf_id`) REFERENCES `shelves` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `books` */

insert  into `books`(`id`,`title`,`author`,`year`,`stock`,`category_id`,`shelf_id`,`created_at`,`updated_at`,`year_id`) values 
(1,'Laravel 5','Rahmat Awalludin',2014,10,4,1,'2015-06-09 15:32:45','2016-11-13 00:55:50',0),
(2,'Angular.Js','Mark Zuckerberg',2014,6,4,3,'2015-06-09 16:06:03','2015-06-19 18:21:15',0),
(4,'Vue.Js','Taylor Otwell',2015,0,4,1,'2015-06-09 16:09:01','2015-06-09 16:51:31',0),
(5,'Be Bold','Kingsman',2000,0,5,5,'2015-06-09 16:23:20','2015-06-11 08:50:22',0),
(6,'OOP with PHP','Richard Stallman',1999,7,4,5,'2015-06-19 18:18:06','2015-06-19 18:20:33',0),
(7,'Seputar Antariksa','NASA',2000,1,1,3,'2015-06-19 18:18:48','2015-06-19 18:22:31',0),
(8,'Cinderella','Unyil',2000,1,6,4,'2015-06-19 18:19:47','2015-06-19 18:19:47',0),
(9,'Atom and Neutron','Dr. Zeuz',1999,2,1,3,'2015-06-19 19:00:47','2015-06-19 19:00:47',0),
(11,'dsdsd','dsdsdd',12,12,1,1,'2016-11-12 23:35:26','2016-11-12 23:35:26',0);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category`,`created_at`,`updated_at`) values 
(1,'Science','2015-06-09 08:17:51','2015-06-09 09:01:36'),
(4,'Computer','2015-06-09 09:07:41','2015-06-09 09:07:41'),
(5,'Life Lesson','2015-06-09 09:07:50','2015-06-09 09:07:50'),
(6,'Fairy Tail','2015-06-09 09:08:14','2015-06-09 09:08:14'),
(7,'Prehistoric','2016-11-12 23:00:35','2016-11-12 23:00:35');

/*Table structure for table `fines` */

DROP TABLE IF EXISTS `fines`;

CREATE TABLE `fines` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL,
  `fines` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fines` */

insert  into `fines`(`id`,`days`,`fines`,`created_at`,`updated_at`) values 
(1,3,7000,'2015-06-09 10:27:33','2016-11-12 23:47:54');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2015_06_09_041120_create_categories_table',1),
('2015_06_09_041145_create_shelves_table',1),
('2015_06_09_041212_create_fines_table',1),
('2015_06_09_041219_create_periodes_table',1),
('2015_06_09_041233_create_students_table',1),
('2015_06_09_041242_create_books_table',1),
('2015_06_09_041254_create_transactions_table',1),
('2015_06_09_151248_create_years_table',2),
('2015_06_18_030231_create_lac',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `periodes` */

DROP TABLE IF EXISTS `periodes`;

CREATE TABLE `periodes` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `periodes` */

insert  into `periodes`(`id`,`days`,`created_at`,`updated_at`) values 
(1,7,'2015-06-09 10:59:49','2016-11-12 23:02:41');

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`role_id`,`user_id`) values 
(1,1),
(2,2);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'admin','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'user','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `shelves` */

DROP TABLE IF EXISTS `shelves`;

CREATE TABLE `shelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shelf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `shelves` */

insert  into `shelves`(`id`,`shelf`,`created_at`,`updated_at`) values 
(1,'A','2015-06-09 09:45:37','2015-06-09 09:58:05'),
(3,'B','2015-06-09 11:10:53','2015-06-09 11:10:53'),
(4,'C','2015-06-09 11:10:57','2015-06-09 11:10:57'),
(5,'D','2015-06-09 11:11:00','2015-06-09 11:11:00');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered_at` int(11) NOT NULL,
  `borrow` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `students` */

insert  into `students`(`id`,`name`,`registered_at`,`borrow`,`status`,`created_at`,`updated_at`) values 
(1,'Pramesti Hatta K.',1478998973,0,1,'2015-06-09 14:26:04','2016-11-13 01:02:53'),
(2,'Chelsea Islan',12960000,1,0,'2015-06-10 15:50:57','2016-11-13 01:03:01'),
(3,'John Mayer',1434734048,0,0,'2015-06-19 18:14:08','2016-11-12 22:48:01'),
(4,'Emma Watson',1434734067,1,0,'2015-06-19 18:14:27','2016-11-12 22:48:01'),
(5,'Scarlet Johansson',1434734082,0,0,'2015-06-19 18:14:42','2016-11-12 22:48:01'),
(6,'Rachmanita',1434734225,1,0,'2015-06-19 18:17:05','2016-11-12 22:48:01'),
(8,'Eric See Kian Seng',12960000,0,0,'2016-11-13 01:03:58','2016-11-13 01:04:08');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `borrowed_at` int(11) NOT NULL,
  `returned_at` int(11) DEFAULT NULL,
  `fines` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transactions_student_id_foreign` (`student_id`),
  KEY `transactions_book_id_foreign` (`book_id`),
  CONSTRAINT `transactions_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `transactions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`student_id`,`book_id`,`borrowed_at`,`returned_at`,`fines`,`status`,`created_at`,`updated_at`) values 
(11,1,1,1433030400,1478998550,3703000,1,'2015-06-10 07:31:53','2016-11-13 00:55:50'),
(12,1,5,1433926647,1433926960,0,1,'2015-06-10 09:57:27','2015-06-10 10:02:40'),
(13,1,2,1432080000,1434734475,125000,1,'2015-06-10 09:58:41','2015-06-19 18:21:15'),
(14,1,5,1433927036,1433927038,0,1,'2015-06-10 10:03:38','2015-06-10 10:03:58'),
(16,2,5,1478998713,NULL,0,0,'2015-06-11 08:50:22','2016-11-13 00:58:33'),
(17,4,6,1434734432,NULL,3563000,0,'2015-06-19 18:20:32','2016-11-13 00:55:48'),
(18,6,7,1434734550,NULL,3563000,0,'2015-06-19 18:22:30','2016-11-13 00:55:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Hasan Doha','doha.physics.du@gmail.com','$2y$10$j7YDyJdvfsM99/0XKZ/8w.Cw8BAAR/S1eYQaOLsP.Ozfi9Lg6heoC','IM5FXwueZ9kOKkLoUDkHmOLNkhru91X4NLaLKgQQmyZANPwcIhwLIRd4kb3y','2015-06-09 07:21:52','2015-06-20 16:11:04'),
(2,'Lost Stars','loststars@gmail.com','$2y$10$j7YDyJdvfsM99/0XKZ/8w.Cw8BAAR/S1eYQaOLsP.Ozfi9Lg6heoC','xz35vIdRBpE91ka0E9lLil1XH575cCfvJ4OhgycLdw5QYV18arp5COtSBj7z','2015-06-18 04:24:39','2015-06-18 04:34:49'),
(3,'Eric See','ksericpro@gmail.com','$2y$10$iuN8mXb2svs164d9atTXvOrhZa4y/NUMF2fgyTjyxeKpoxDj1yDmm',NULL,'2016-11-12 22:48:00','2016-11-12 22:48:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
