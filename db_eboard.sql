-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_eboard.bulletin_tbl
CREATE TABLE IF NOT EXISTS `bulletin_tbl` (
  `bulletin_id` int(255) NOT NULL AUTO_INCREMENT,
  `bulletin` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`bulletin_id`) USING BTREE,
  KEY `item_barcode` (`bulletin`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Dumping data for table db_eboard.bulletin_tbl: ~1 rows (approximately)
/*!40000 ALTER TABLE `bulletin_tbl` DISABLE KEYS */;
INSERT INTO `bulletin_tbl` (`bulletin_id`, `bulletin`, `date`, `time`, `year`, `status`) VALUES
	(1, 'SELAMAT DATANG DI KANTOR TANTO KENDARI', '2020-02-07', '05:12:20', '2020', 0);
/*!40000 ALTER TABLE `bulletin_tbl` ENABLE KEYS */;

-- Dumping structure for table db_eboard.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `bgcolor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table db_eboard.groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
	(1, 'Admin', 'Administrator', '#c9302c'),
	(2, 'Operator', 'Operator', '#5bc0de');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table db_eboard.logger_tbl
CREATE TABLE IF NOT EXISTS `logger_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- Dumping data for table db_eboard.logger_tbl: ~116 rows (approximately)
/*!40000 ALTER TABLE `logger_tbl` DISABLE KEYS */;
INSERT INTO `logger_tbl` (`id`, `created_on`, `created_by`, `type`, `type_id`, `token`, `comment`) VALUES
	(1, '2019-12-10 21:16:49', 1, 'post', 0, 'Login', ''),
	(2, '2019-12-10 21:49:38', 1, 'post', 0, 'Tambah Barang', ''),
	(3, '2019-12-10 23:53:47', 1, 'post', 0, 'Login', ''),
	(4, '2019-12-11 06:20:55', 1, 'post', 0, 'Login', ''),
	(5, '2019-12-11 08:29:52', 1, 'post', 0, 'Tambah Transaksi', ''),
	(6, '2019-12-11 08:32:46', 1, 'post', 0, 'Tambah Transaksi', ''),
	(7, '2019-12-11 08:33:01', 1, 'post', 0, 'Tambah Transaksi', ''),
	(8, '2019-12-11 08:51:31', 1, 'post', 0, 'Tambah Transaksi', ''),
	(9, '2019-12-11 10:55:17', 1, 'post', 0, 'Tambah Barang', ''),
	(10, '2019-12-11 10:55:21', 1, 'post', 994, 'Hapus Barang', ''),
	(11, '2019-12-11 12:38:55', 1, 'post', 0, 'Login', ''),
	(12, '2019-12-11 15:16:59', 1, 'post', 0, 'Login', ''),
	(13, '2019-12-11 16:02:32', 1, 'post', 0, 'Login', ''),
	(14, '2020-01-08 17:29:25', 1, 'post', 0, 'Login', ''),
	(15, '2020-01-08 17:29:42', 1, 'post', 0, 'Tambah Transaksi', ''),
	(16, '2020-01-08 21:11:58', 1, 'post', 0, 'Login', ''),
	(17, '2020-01-09 18:34:31', 1, 'post', 0, 'Login', ''),
	(18, '2020-01-09 20:12:23', 1, 'post', 0, 'Tambah Transaksi', ''),
	(19, '2020-01-09 20:15:31', 1, 'post', 0, 'Tambah Transaksi', ''),
	(20, '2020-01-13 16:29:39', 1, 'post', 0, 'Login', ''),
	(21, '2020-01-15 16:45:15', 1, 'post', 0, 'Login', ''),
	(22, '2020-01-15 16:46:46', 1, 'post', 0, 'Tambah Transaksi', ''),
	(23, '2020-01-15 17:06:54', 1, 'post', 0, 'Tambah Retur Barang', ''),
	(24, '2020-01-23 08:53:37', 1, 'post', 0, 'Tambah Obat', ''),
	(25, '2020-01-23 08:54:21', 1, 'post', 0, 'Tambah Kategori', ''),
	(26, '2020-01-23 08:55:38', 1, 'post', 0, 'Tambah Kategori', ''),
	(27, '2020-01-23 08:55:57', 1, 'post', 0, 'Tambah Unit', ''),
	(28, '2020-01-23 08:56:02', 1, 'post', 0, 'Tambah Unit', ''),
	(29, '2020-01-23 08:57:52', 1, 'post', 0, 'Tambah Obat', ''),
	(30, '2020-01-23 09:11:01', 1, 'post', 0, 'Tambah Obat', ''),
	(31, '2020-01-23 09:11:40', 1, 'post', 2, 'Hapus Obat', ''),
	(32, '2020-01-23 09:13:23', 1, 'post', 1, 'Ubah Obat', ''),
	(33, '2020-01-23 09:36:08', 1, 'post', 1, 'Hapus Retur Barang', ''),
	(34, '2020-01-23 09:46:32', 1, 'post', 0, 'Tambah Obat Keluar', ''),
	(35, '2020-01-23 09:57:11', 1, 'post', 0, 'Tambah Obat', ''),
	(36, '2020-01-23 09:57:20', 1, 'post', 4, 'Ubah Obat', ''),
	(37, '2020-01-23 10:00:25', 1, 'post', 0, 'Tambah Obat Keluar', ''),
	(38, '2020-01-23 10:00:35', 1, 'post', 0, 'Tambah Obat Keluar', ''),
	(39, '2020-01-23 10:01:26', 1, 'post', 2, 'Hapus Obat Keluar', ''),
	(40, '2020-01-23 10:01:33', 1, 'post', 4, 'Hapus Obat Keluar', ''),
	(41, '2020-01-23 10:12:12', 1, 'post', 0, 'Login', ''),
	(42, '2020-01-23 10:13:05', 1, 'post', 0, 'Login', ''),
	(43, '2020-01-23 10:17:12', 1, 'post', 0, 'Login', ''),
	(44, '2020-01-23 10:18:45', 1, 'post', 0, 'Login', ''),
	(45, '2020-01-23 10:21:50', 1, 'post', 0, 'Tambah User', ''),
	(46, '2020-01-23 10:23:19', 2, 'post', 0, 'Login', ''),
	(47, '2020-01-23 10:24:01', 1, 'post', 0, 'Login', ''),
	(48, '2020-01-23 10:24:10', 1, 'post', 0, 'Login', ''),
	(49, '2020-01-23 10:26:11', 2, 'post', 0, 'Login', ''),
	(50, '2020-01-23 20:58:34', 1, 'post', 0, 'Login', ''),
	(51, '2020-01-23 21:12:23', 1, 'post', 0, 'Tambah Obat Keluar', ''),
	(52, '2020-01-23 21:41:40', 1, 'post', 0, 'Login', ''),
	(53, '2020-02-05 22:12:42', 1, 'post', 0, 'Login', ''),
	(54, '2020-02-05 23:14:33', 1, 'post', 0, 'Login', ''),
	(55, '2020-02-06 00:13:22', 1, 'post', 0, 'Tambah ship', ''),
	(56, '2020-02-06 07:20:57', 1, 'post', 0, 'Login', ''),
	(57, '2020-02-06 07:27:34', 1, 'post', 5, 'Ubah Jadwal Kapal', ''),
	(58, '2020-02-06 07:28:03', 1, 'post', 5, 'Ubah Jadwal Kapal', ''),
	(59, '2020-02-06 07:28:25', 1, 'post', 3, 'Hapus Jadwal Kapal', ''),
	(60, '2020-02-06 07:29:43', 1, 'post', 4, 'Ubah Jadwal Kapal', ''),
	(61, '2020-02-06 07:47:19', 1, 'post', 0, 'Tambah Video', ''),
	(62, '2020-02-06 07:49:49', 1, 'post', 0, 'Tambah Video', ''),
	(63, '2020-02-06 07:55:42', 1, 'post', 1, 'Hapus Jadwal Kapal', ''),
	(64, '2020-02-06 07:55:46', 1, 'post', 4, 'Hapus Jadwal Kapal', ''),
	(65, '2020-02-06 07:55:48', 1, 'post', 5, 'Hapus Jadwal Kapal', ''),
	(66, '2020-02-06 07:55:49', 1, 'post', 6, 'Hapus Jadwal Kapal', ''),
	(67, '2020-02-06 07:55:57', 1, 'post', 7, 'Hapus Jadwal Kapal', ''),
	(68, '2020-02-06 07:56:12', 1, 'post', 0, 'Tambah Video', ''),
	(69, '2020-02-06 07:59:14', 1, 'post', 0, 'Ubah Video', ''),
	(70, '2020-02-06 07:59:29', 1, 'post', 0, 'Ubah Video', ''),
	(71, '2020-02-06 07:59:40', 1, 'post', 0, 'Ubah Video', ''),
	(72, '2020-02-06 08:00:41', 1, 'post', 8, 'Hapus Jadwal Kapal', ''),
	(73, '2020-02-06 08:01:47', 1, 'post', 0, 'Tambah Video', ''),
	(74, '2020-02-06 08:01:55', 1, 'post', 0, 'Ubah Video', ''),
	(75, '2020-02-06 08:02:26', 1, 'post', 0, 'Ubah Video', ''),
	(76, '2020-02-06 08:02:54', 1, 'post', 9, 'Hapus Video Kapal', ''),
	(77, '2020-02-06 08:03:02', 1, 'post', 0, 'Tambah Video', ''),
	(78, '2020-02-06 08:03:12', 1, 'post', 10, 'Hapus Video Kapal', ''),
	(79, '2020-02-06 08:03:43', 1, 'post', 0, 'Tambah Video', ''),
	(80, '2020-02-06 08:04:21', 1, 'post', 11, 'Hapus Video Kapal', ''),
	(81, '2020-02-06 08:04:35', 1, 'post', 0, 'Tambah Video', ''),
	(82, '2020-02-06 08:13:19', 1, 'post', 1, 'Ubah Pengumuman', ''),
	(83, '2020-02-06 08:14:43', 1, 'post', 2, 'Ubah Pengguna', ''),
	(84, '2020-02-06 08:14:52', 2, 'post', 0, 'Login', ''),
	(85, '2020-02-06 13:49:57', 1, 'post', 0, 'Login', ''),
	(86, '2020-02-06 16:18:03', 1, 'post', 0, 'Login', ''),
	(87, '2020-02-06 16:19:01', 1, 'post', 0, 'Login', ''),
	(88, '2020-02-06 16:22:15', 1, 'post', 1, 'Ubah Pengumuman', ''),
	(89, '2020-02-06 16:22:45', 2, 'post', 0, 'Login', ''),
	(90, '2020-02-06 16:26:22', 2, 'post', 1, 'Ubah Pengumuman', ''),
	(91, '2020-02-06 16:32:06', 2, 'post', 0, 'Tambah Video', ''),
	(92, '2020-02-06 16:32:51', 2, 'post', 12, 'Hapus Video Kapal', ''),
	(93, '2020-02-06 16:32:53', 2, 'post', 13, 'Hapus Video Kapal', ''),
	(94, '2020-02-06 16:48:29', 2, 'post', 0, 'Login', ''),
	(95, '2020-02-06 16:48:47', 2, 'post', 4, 'Ubah Jadwal Kapal', ''),
	(96, '2020-02-06 16:53:47', 2, 'post', 1, 'Hapus Jadwal Kapal', ''),
	(97, '2020-02-06 16:53:49', 2, 'post', 4, 'Hapus Jadwal Kapal', ''),
	(98, '2020-02-06 17:06:12', 2, 'post', 1, 'Ubah Pengumuman', ''),
	(99, '2020-02-07 15:57:33', 1, 'post', 0, 'Login', ''),
	(100, '2020-02-07 15:58:11', 1, 'post', 0, 'Tambah Video', ''),
	(101, '2020-02-07 15:59:03', 1, 'post', 0, 'Tambah Video', ''),
	(102, '2020-02-07 16:10:04', 1, 'post', 0, 'Login', ''),
	(103, '2020-02-07 16:11:41', 1, 'post', 15, 'Hapus Video Kapal', ''),
	(104, '2020-02-07 16:12:14', 1, 'post', 0, 'Ubah Video', ''),
	(105, '2020-02-07 16:12:29', 1, 'post', 14, 'Hapus Video Kapal', ''),
	(106, '2020-02-07 18:11:57', 1, 'post', 0, 'Login', ''),
	(107, '2020-02-07 18:12:20', 1, 'post', 1, 'Ubah Pengumuman', ''),
	(108, '2020-02-07 18:13:21', 1, 'post', 0, 'Tambah Jadwal Kapal', ''),
	(109, '2020-02-07 18:34:35', 1, 'post', 0, 'Tambah Video', ''),
	(110, '2020-02-07 18:53:35', 1, 'post', 6, 'Hapus Jadwal Kapal', ''),
	(111, '2020-02-07 18:54:31', 1, 'post', 0, 'Tambah Jadwal Kapal', ''),
	(112, '2020-02-07 19:00:45', 1, 'post', 7, 'Ubah Jadwal Kapal', ''),
	(113, '2020-02-07 19:02:08', 1, 'post', 7, 'Ubah Jadwal Kapal', ''),
	(114, '2020-02-07 19:02:49', 1, 'post', 5, 'Ubah Jadwal Kapal', ''),
	(115, '2020-02-07 19:03:10', 1, 'post', 7, 'Ubah Jadwal Kapal', ''),
	(116, '2020-02-07 19:08:29', 1, 'post', 7, 'Hapus Jadwal Kapal', '');
/*!40000 ALTER TABLE `logger_tbl` ENABLE KEYS */;

-- Dumping structure for table db_eboard.ship_tbl
CREATE TABLE IF NOT EXISTS `ship_tbl` (
  `ship_id` int(255) NOT NULL AUTO_INCREMENT,
  `ship_name` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `leaning_date` date DEFAULT NULL,
  `leaning_time` time DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `arrived_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ship_id`) USING BTREE,
  KEY `item_barcode` (`ship_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Dumping data for table db_eboard.ship_tbl: ~1 rows (approximately)
/*!40000 ALTER TABLE `ship_tbl` DISABLE KEYS */;
INSERT INTO `ship_tbl` (`ship_id`, `ship_name`, `destination`, `start_date`, `start_time`, `leaning_date`, `leaning_time`, `arrived_date`, `arrived_time`, `date`, `time`, `year`, `status`) VALUES
	(5, 'Tanto berkat 219', 'Kdi-Mks-Sby', '2020-02-02', '11:00:00', '2020-02-04', '13:05:00', '2020-02-04', '02:00:00', '2020-02-07', '06:02:49', '2020', 0);
/*!40000 ALTER TABLE `ship_tbl` ENABLE KEYS */;

-- Dumping structure for table db_eboard.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_eboard.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `photo`) VALUES
	(1, '127.0.0.1', 'administrator', '$2y$08$26mKnzSjBK54Sq8mCED/de71U3p0Qn5QesJBIN4uLen9rNtVR4LrG', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1581070317, 1, 'Admin', '', NULL, '', '1.png'),
	(2, '::1', 'xx', '$2y$08$RkZxhJdy3tdgfDpkYQwtkOgrBv0rLtsaRyM6dQKHQj8O.InMQcM3m', NULL, 'xx@gmail.com', NULL, NULL, NULL, NULL, 1579746110, 1580978909, 1, 'xxx', 'xxx', NULL, '', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_eboard.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- Dumping data for table db_eboard.users_groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(168, 1, 1),
	(170, 2, 2);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;

-- Dumping structure for table db_eboard.video_tbl
CREATE TABLE IF NOT EXISTS `video_tbl` (
  `video_id` int(255) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) DEFAULT NULL,
  `video_file` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`video_id`) USING BTREE,
  KEY `item_barcode` (`video_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Dumping data for table db_eboard.video_tbl: ~1 rows (approximately)
/*!40000 ALTER TABLE `video_tbl` DISABLE KEYS */;
INSERT INTO `video_tbl` (`video_id`, `video_name`, `video_file`, `date`, `time`, `year`, `status`) VALUES
	(16, 'aaaaa', 'aaaaa.mp4', '2020-02-07', '05:34:35', '2020', 0);
/*!40000 ALTER TABLE `video_tbl` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
