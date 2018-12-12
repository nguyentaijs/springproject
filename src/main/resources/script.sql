-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.23-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for nguyentaijs
CREATE DATABASE IF NOT EXISTS `nguyentaijs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nguyentaijs`;

-- Dumping structure for table nguyentaijs.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `display_order` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 - newly created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table nguyentaijs.category: ~6 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `path`, `display_order`, `status`) VALUES
	(1, '_languages', 'languages', 3, 0),
	(2, '_images', 'images', 4, 0),
	(3, '_code', 'code', 0, 0),
	(4, '_books', 'books', 1, 0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table nguyentaijs.post
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `status` tinyint(2) NOT NULL COMMENT '0 - Newly created',
  `img_path` varchar(500) DEFAULT NULL,
  `small_img_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nguyentaijs.post: ~0 rows (approximately)
DELETE FROM `post`;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
