-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 09:39 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coaster_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_tbl`
--

CREATE TABLE `asset_tbl` (
  `asset_id` int(255) NOT NULL,
  `asset_name` varchar(255) NOT NULL DEFAULT '0',
  `amount` double DEFAULT NULL,
  `out_of_order` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_tbl`
--

CREATE TABLE `calendar_tbl` (
  `id` int(11) NOT NULL,
  `title` varchar(126) DEFAULT NULL,
  `description` text,
  `color` varchar(24) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories_tbl`
--

CREATE TABLE `categories_tbl` (
  `categories_id` int(255) NOT NULL,
  `categories_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories_tbl`
--

INSERT INTO `categories_tbl` (`categories_id`, `categories_name`, `date`, `time`, `year`, `status`) VALUES
(3, 'SNACK', '2020-01-11', '05:27:53', 2020, 0),
(4, 'SOUP', '2020-01-11', '05:28:10', 2020, 0),
(5, 'RICE', '2020-01-11', '05:28:29', 2020, 0),
(6, 'CHICKEN', '2020-01-11', '05:28:42', 2020, 0),
(7, 'FISH', '2020-01-11', '05:28:55', 2020, 0),
(8, 'VEGETABLE', '2020-01-11', '05:29:10', 2020, 0),
(9, 'NOODLES', '2020-01-11', '05:29:25', 2020, 0),
(10, 'PASTA', '2020-01-11', '05:29:30', 2020, 0),
(11, 'BEEF', '2020-01-11', '05:29:40', 2020, 0),
(12, 'MENU PAKET', '2020-01-11', '05:29:49', 2020, 0),
(13, 'JUICE', '2020-01-11', '05:57:44', 2020, 0),
(14, 'MOCTAIL', '2020-01-11', '07:22:00', 2020, 0),
(15, 'SQUASH', '2020-01-11', '07:22:15', 2020, 0),
(16, 'ICED BLENDED', '2020-01-11', '07:22:50', 2020, 0),
(17, 'SHAKE AND SMOOTHIES', '2020-01-11', '07:23:09', 2020, 0),
(18, 'COLD DRINK', '2020-01-11', '07:23:40', 2020, 0),
(19, 'HOT DRINK', '2020-01-11', '07:24:17', 2020, 0),
(20, 'PROMO', '2020-01-24', '12:38:03', 2020, 0),
(21, 'BUFFET', '2020-01-30', '07:54:12', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_cost_tbl`
--

CREATE TABLE `food_cost_tbl` (
  `food_cost_id` int(255) NOT NULL,
  `item_id` varchar(255) NOT NULL DEFAULT '0',
  `unit_id` varchar(50) DEFAULT NULL,
  `food_cost_amount` double DEFAULT NULL,
  `food_cost_price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `bgcolor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
(1, 'Admin', 'Administrator', '#c9302c'),
(2, 'F&B Manager', 'F&B Manager', '#5bc0de'),
(3, 'Kitchen', 'Kitchen', '#f0ad4e'),
(4, 'Waitress', 'Waitress', '#45a345');

-- --------------------------------------------------------

--
-- Table structure for table `item_tbl`
--

CREATE TABLE `item_tbl` (
  `item_id` int(255) NOT NULL,
  `product_name_item` varchar(255) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `price_item` double DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `stock` double NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `item_tbl`
--

INSERT INTO `item_tbl` (`item_id`, `product_name_item`, `unit_id`, `price_item`, `image`, `stock`, `date`, `time`, `year`, `status`) VALUES
(1, 'pisang', 7, 10000, '', 0, '2020-01-20', '10:11:12', 2020, 0),
(2, 'Ubi Kayu', 1, 20000, '', 0, '2020-01-31', '05:02:57', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logger_tbl`
--

CREATE TABLE `logger_tbl` (
  `id` bigint(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logger_tbl`
--

INSERT INTO `logger_tbl` (`id`, `created_on`, `created_by`, `type`, `type_id`, `token`, `comment`) VALUES
(1, '2020-01-12 08:41:41', 1, 'post', 3, 'Hapus Menu', ''),
(2, '2020-01-12 08:43:37', 1, 'post', 0, 'Login', ''),
(3, '2020-01-12 08:44:43', 1, 'post', 0, 'Tambah Menu', ''),
(4, '2020-01-12 08:44:55', 1, 'post', 0, 'Tambah Meja', ''),
(5, '2020-01-12 08:47:31', 1, 'post', 0, 'Tambah Transaksi', ''),
(6, '2020-01-12 08:48:53', 1, 'post', 0, 'Tambah Transaksi', ''),
(7, '2020-01-12 08:51:13', 1, 'post', 0, 'Tambah Transaksi', ''),
(8, '2020-01-12 08:52:31', 1, 'post', 0, 'Tambah Transaksi', ''),
(9, '2020-01-12 08:53:04', 1, 'post', 0, 'Tambah Transaksi', ''),
(10, '2020-01-12 08:57:20', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(11, '2020-01-12 08:58:56', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(12, '2020-01-12 09:01:28', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(13, '2020-01-12 09:02:37', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(14, '2020-01-12 09:04:36', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(15, '2020-01-12 09:06:37', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(16, '2020-01-12 09:11:09', 1, 'post', 0, 'Login', ''),
(17, '2020-01-12 09:11:24', 1, 'post', 1, 'Hapus Menu', ''),
(18, '2020-01-12 09:13:15', 1, 'post', 0, 'Tambah Menu', ''),
(19, '2020-01-12 09:13:35', 1, 'post', 0, 'Tambah Menu', ''),
(20, '2020-01-12 09:13:57', 1, 'post', 0, 'Tambah Menu', ''),
(21, '2020-01-12 09:14:13', 1, 'post', 0, 'Tambah Menu', ''),
(22, '2020-01-12 09:14:30', 1, 'post', 0, 'Tambah Menu', ''),
(23, '2020-01-12 09:14:56', 1, 'post', 0, 'Tambah Menu', ''),
(24, '2020-01-12 09:15:17', 1, 'post', 0, 'Tambah Menu', ''),
(25, '2020-01-12 09:15:41', 1, 'post', 0, 'Tambah Menu', ''),
(26, '2020-01-12 09:16:14', 1, 'post', 0, 'Tambah Menu', ''),
(27, '2020-01-12 09:16:38', 1, 'post', 0, 'Tambah Menu', ''),
(28, '2020-01-12 09:16:58', 1, 'post', 0, 'Tambah Menu', ''),
(29, '2020-01-12 09:17:17', 1, 'post', 0, 'Tambah Menu', ''),
(30, '2020-01-12 09:17:40', 1, 'post', 0, 'Tambah Menu', ''),
(31, '2020-01-12 09:18:09', 1, 'post', 0, 'Tambah Menu', ''),
(32, '2020-01-12 09:18:39', 1, 'post', 0, 'Tambah Menu', ''),
(33, '2020-01-12 09:18:58', 1, 'post', 0, 'Tambah Menu', ''),
(34, '2020-01-12 09:19:12', 1, 'post', 0, 'Tambah Menu', ''),
(35, '2020-01-12 09:19:37', 1, 'post', 0, 'Tambah Menu', ''),
(36, '2020-01-12 09:19:54', 1, 'post', 0, 'Tambah Menu', ''),
(37, '2020-01-12 09:20:12', 1, 'post', 0, 'Tambah Menu', ''),
(38, '2020-01-12 09:20:32', 1, 'post', 0, 'Tambah Menu', ''),
(39, '2020-01-12 09:20:52', 1, 'post', 0, 'Tambah Menu', ''),
(40, '2020-01-12 09:21:16', 1, 'post', 0, 'Tambah Menu', ''),
(41, '2020-01-12 09:21:38', 1, 'post', 0, 'Tambah Menu', ''),
(42, '2020-01-12 09:22:05', 1, 'post', 0, 'Tambah Menu', ''),
(43, '2020-01-12 09:27:50', 1, 'post', 0, 'Tambah Menu', ''),
(44, '2020-01-12 09:28:15', 1, 'post', 0, 'Tambah Menu', ''),
(45, '2020-01-12 09:28:54', 1, 'post', 0, 'Tambah Menu', ''),
(46, '2020-01-12 09:29:23', 1, 'post', 0, 'Tambah Menu', ''),
(47, '2020-01-12 10:43:59', 1, 'post', 0, 'Tambah Menu', ''),
(48, '2020-01-12 10:44:27', 1, 'post', 0, 'Tambah Menu', ''),
(49, '2020-01-12 10:45:30', 1, 'post', 0, 'Tambah Menu', ''),
(50, '2020-01-12 10:46:02', 1, 'post', 0, 'Tambah Menu', ''),
(51, '2020-01-12 10:46:34', 1, 'post', 0, 'Tambah Menu', ''),
(52, '2020-01-12 10:47:01', 1, 'post', 0, 'Tambah Menu', ''),
(53, '2020-01-12 10:52:30', 1, 'post', 0, 'Tambah Menu', ''),
(54, '2020-01-12 10:53:33', 1, 'post', 0, 'Tambah Menu', ''),
(55, '2020-01-12 10:54:14', 1, 'post', 0, 'Tambah Menu', ''),
(56, '2020-01-12 10:54:39', 1, 'post', 0, 'Tambah Menu', ''),
(57, '2020-01-12 10:55:05', 1, 'post', 0, 'Tambah Menu', ''),
(58, '2020-01-12 10:55:28', 1, 'post', 0, 'Tambah Menu', ''),
(59, '2020-01-12 10:58:49', 1, 'post', 0, 'Tambah Menu', ''),
(60, '2020-01-12 10:59:29', 1, 'post', 0, 'Tambah Menu', ''),
(61, '2020-01-12 10:59:53', 1, 'post', 0, 'Tambah Menu', ''),
(62, '2020-01-12 11:00:14', 1, 'post', 0, 'Tambah Menu', ''),
(63, '2020-01-12 11:00:29', 1, 'post', 0, 'Tambah Menu', ''),
(64, '2020-01-12 11:01:08', 1, 'post', 0, 'Tambah Menu', ''),
(65, '2020-01-12 11:01:24', 1, 'post', 0, 'Tambah Menu', ''),
(66, '2020-01-12 11:01:38', 1, 'post', 0, 'Tambah Menu', ''),
(67, '2020-01-12 11:01:52', 1, 'post', 0, 'Tambah Menu', ''),
(68, '2020-01-12 11:02:27', 1, 'post', 0, 'Tambah Menu', ''),
(69, '2020-01-12 11:02:54', 1, 'post', 0, 'Tambah Menu', ''),
(70, '2020-01-12 11:04:11', 1, 'post', 0, 'Tambah Menu', ''),
(71, '2020-01-12 11:09:04', 1, 'post', 0, 'Tambah Menu', ''),
(72, '2020-01-12 11:10:52', 1, 'post', 0, 'Tambah Menu', ''),
(73, '2020-01-12 11:11:23', 1, 'post', 0, 'Tambah Menu', ''),
(74, '2020-01-12 11:11:42', 1, 'post', 57, 'Ubah Menu', ''),
(75, '2020-01-12 11:12:17', 1, 'post', 0, 'Tambah Menu', ''),
(76, '2020-01-12 11:12:38', 1, 'post', 0, 'Tambah Menu', ''),
(77, '2020-01-12 11:13:02', 1, 'post', 0, 'Tambah Menu', ''),
(78, '2020-01-12 11:13:45', 1, 'post', 0, 'Tambah Menu', ''),
(79, '2020-01-12 11:14:28', 1, 'post', 0, 'Tambah Menu', ''),
(80, '2020-01-12 11:15:00', 1, 'post', 0, 'Tambah Menu', ''),
(81, '2020-01-12 11:15:45', 1, 'post', 0, 'Tambah Menu', ''),
(82, '2020-01-12 11:16:05', 1, 'post', 0, 'Tambah Menu', ''),
(83, '2020-01-12 11:16:32', 1, 'post', 0, 'Tambah Menu', ''),
(84, '2020-01-12 11:17:15', 1, 'post', 0, 'Tambah Menu', ''),
(85, '2020-01-12 11:17:33', 1, 'post', 0, 'Tambah Menu', ''),
(86, '2020-01-12 11:17:55', 1, 'post', 0, 'Tambah Menu', ''),
(87, '2020-01-12 11:55:48', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(88, '2020-01-12 12:49:02', 4, 'post', 0, 'Login', ''),
(89, '2020-01-12 12:50:04', 1, 'post', 0, 'Login', ''),
(90, '2020-01-12 12:52:10', 1, 'post', 0, 'Tambah Transaksi', ''),
(91, '2020-01-12 13:53:49', 1, 'post', 0, 'Login', ''),
(92, '2020-01-12 13:55:00', 1, 'post', 0, 'Tambah Transaksi', ''),
(93, '2020-01-17 09:17:30', 1, 'post', 0, 'Login', ''),
(94, '2020-01-17 11:46:28', 1, 'post', 0, 'Login', ''),
(95, '2020-01-17 11:56:39', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(96, '2020-01-17 11:59:32', 1, 'post', 1, 'Ubah Meja', ''),
(97, '2020-01-17 11:59:39', 1, 'post', 0, 'Tambah Meja', ''),
(98, '2020-01-17 11:59:49', 1, 'post', 0, 'Tambah Meja', ''),
(99, '2020-01-17 12:00:23', 1, 'post', 1, 'Hapus Meja', ''),
(100, '2020-01-17 12:00:27', 1, 'post', 2, 'Hapus Meja', ''),
(101, '2020-01-17 12:00:30', 1, 'post', 3, 'Hapus Meja', ''),
(102, '2020-01-17 12:01:40', 1, 'post', 0, 'Tambah Meja', ''),
(103, '2020-01-17 12:05:47', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(104, '2020-01-17 12:31:20', 1, 'post', 0, 'Tambah Meja', ''),
(105, '2020-01-17 12:36:18', 1, 'post', 60, 'Ubah Menu', ''),
(106, '2020-01-18 02:42:36', 1, 'post', 0, 'Login', ''),
(107, '2020-01-18 02:46:13', 1, 'post', 0, 'Login', ''),
(108, '2020-01-18 09:14:10', 1, 'post', 0, 'Login', ''),
(109, '2020-01-19 12:33:12', 1, 'post', 0, 'Login', ''),
(110, '2020-01-19 12:35:37', 1, 'post', 0, 'Tambah Transaksi', ''),
(111, '2020-01-19 12:39:11', 1, 'post', 0, 'Tambah Transaksi', ''),
(112, '2020-01-19 12:45:30', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(113, '2020-01-20 01:10:58', 1, 'post', 0, 'Login', ''),
(114, '2020-01-20 01:18:25', 4, 'post', 0, 'Login', ''),
(115, '2020-01-20 04:46:57', 4, 'post', 0, 'Login', ''),
(116, '2020-01-20 04:48:15', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(117, '2020-01-20 04:51:20', 4, 'post', 0, 'Login', ''),
(118, '2020-01-20 05:22:37', 4, 'post', 0, 'Tambah Meja', ''),
(119, '2020-01-20 08:19:30', 1, 'post', 0, 'Login', ''),
(120, '2020-01-20 08:20:39', 4, 'post', 0, 'Login', ''),
(121, '2020-01-20 10:03:08', 4, 'post', 0, 'Tambah Transaksi', ''),
(122, '2020-01-20 10:08:36', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(123, '2020-01-20 10:10:00', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(124, '2020-01-20 10:17:06', 4, 'post', 0, 'Tambah Transaksi', ''),
(125, '2020-01-20 10:24:18', 4, 'post', 0, 'Tambah Transaksi', ''),
(126, '2020-01-20 10:27:23', 4, 'post', 0, 'Tambah Transaksi', ''),
(127, '2020-01-20 10:43:45', 1, 'post', 0, 'Login', ''),
(128, '2020-01-20 10:45:53', 4, 'post', 0, 'Login', ''),
(129, '2020-01-20 12:06:00', 1, 'post', 0, 'Login', ''),
(130, '2020-01-20 14:01:21', 1, 'post', 0, 'Login', ''),
(131, '2020-01-20 14:11:12', 1, 'post', 0, 'Tambah Item', ''),
(132, '2020-01-20 14:13:08', 1, 'post', 0, 'Tambah Stock Food', ''),
(133, '2020-01-20 14:13:57', 1, 'post', 0, 'Tambah Resivi', ''),
(134, '2020-01-20 14:19:00', 1, 'post', 0, 'Tambah Meja', ''),
(135, '2020-01-20 14:19:13', 1, 'post', 0, 'Tambah Meja', ''),
(136, '2020-01-20 14:31:33', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(137, '2020-01-20 14:52:44', 1, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(138, '2020-01-20 15:20:03', 1, 'post', 0, 'Login', ''),
(139, '2020-01-21 01:51:24', 4, 'post', 0, 'Login', ''),
(140, '2020-01-21 02:05:27', 1, 'post', 0, 'Login', ''),
(141, '2020-01-21 02:07:52', 4, 'post', 0, 'Login', ''),
(142, '2020-01-21 03:37:32', 4, 'post', 0, 'Tambah Meja', ''),
(143, '2020-01-21 03:37:37', 4, 'post', 0, 'Tambah Meja', ''),
(144, '2020-01-21 03:37:41', 4, 'post', 0, 'Tambah Meja', ''),
(145, '2020-01-21 03:37:45', 4, 'post', 0, 'Tambah Meja', ''),
(146, '2020-01-21 03:37:51', 4, 'post', 0, 'Tambah Meja', ''),
(147, '2020-01-21 03:37:55', 4, 'post', 0, 'Tambah Meja', ''),
(148, '2020-01-21 03:38:00', 4, 'post', 0, 'Tambah Meja', ''),
(149, '2020-01-21 03:38:06', 4, 'post', 0, 'Tambah Meja', ''),
(150, '2020-01-21 03:38:11', 4, 'post', 0, 'Tambah Meja', ''),
(151, '2020-01-21 03:38:16', 4, 'post', 0, 'Tambah Meja', ''),
(152, '2020-01-21 03:38:32', 4, 'post', 5, 'Hapus Meja', ''),
(153, '2020-01-21 03:38:37', 4, 'post', 6, 'Hapus Meja', ''),
(154, '2020-01-21 03:38:41', 4, 'post', 8, 'Hapus Meja', ''),
(155, '2020-01-21 03:38:47', 4, 'post', 0, 'Tambah Meja', ''),
(156, '2020-01-21 03:38:51', 4, 'post', 0, 'Tambah Meja', ''),
(157, '2020-01-21 03:38:55', 4, 'post', 0, 'Tambah Meja', ''),
(158, '2020-01-21 03:38:59', 4, 'post', 0, 'Tambah Meja', ''),
(159, '2020-01-21 03:39:03', 4, 'post', 0, 'Tambah Meja', ''),
(160, '2020-01-21 03:39:10', 4, 'post', 0, 'Tambah Meja', ''),
(161, '2020-01-21 03:39:14', 4, 'post', 0, 'Tambah Meja', ''),
(162, '2020-01-21 03:39:21', 4, 'post', 0, 'Tambah Meja', ''),
(163, '2020-01-21 03:39:27', 4, 'post', 0, 'Tambah Meja', ''),
(164, '2020-01-21 03:39:31', 4, 'post', 0, 'Tambah Meja', ''),
(165, '2020-01-21 03:39:35', 4, 'post', 0, 'Tambah Meja', ''),
(166, '2020-01-21 03:39:39', 4, 'post', 0, 'Tambah Meja', ''),
(167, '2020-01-21 03:39:43', 4, 'post', 0, 'Tambah Meja', ''),
(168, '2020-01-21 03:40:02', 4, 'post', 0, 'Tambah Meja', ''),
(169, '2020-01-21 03:40:09', 4, 'post', 0, 'Tambah Meja', ''),
(170, '2020-01-21 04:56:49', 4, 'post', 0, 'Login', ''),
(171, '2020-01-21 05:49:56', 4, 'post', 0, 'Tambah Transaksi', ''),
(172, '2020-01-21 05:52:58', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(173, '2020-01-21 10:28:25', 4, 'post', 0, 'Login', ''),
(174, '2020-01-21 10:28:57', 1, 'post', 0, 'Login', ''),
(175, '2020-01-21 12:21:49', 4, 'post', 0, 'Login', ''),
(176, '2020-01-21 14:19:32', 4, 'post', 0, 'Tambah Transaksi', ''),
(177, '2020-01-21 14:43:43', 4, 'post', 0, 'Login', ''),
(178, '2020-01-21 14:44:28', 1, 'post', 0, 'Login', ''),
(179, '2020-01-22 02:32:59', 4, 'post', 0, 'Login', ''),
(180, '2020-01-22 03:06:44', 4, 'post', 0, 'Login', ''),
(181, '2020-01-22 09:24:30', 4, 'post', 0, 'Login', ''),
(182, '2020-01-22 09:50:48', 4, 'post', 0, 'Login', ''),
(183, '2020-01-22 11:10:44', 4, 'post', 0, 'Tambah Transaksi', ''),
(184, '2020-01-22 11:18:39', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(185, '2020-01-22 11:33:22', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(186, '2020-01-22 12:16:46', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(187, '2020-01-22 14:59:34', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(188, '2020-01-23 03:32:31', 4, 'post', 0, 'Login', ''),
(189, '2020-01-23 04:41:37', 4, 'post', 0, 'Tambah Transaksi', ''),
(190, '2020-01-23 06:39:20', 4, 'post', 0, 'Tambah Transaksi', ''),
(191, '2020-01-23 07:25:35', 4, 'post', 0, 'Login', ''),
(192, '2020-01-23 07:26:29', 4, 'post', 0, 'Tambah Transaksi', ''),
(193, '2020-01-23 09:33:15', 4, 'post', 0, 'Login', ''),
(194, '2020-01-23 09:41:37', 1, 'post', 0, 'Login', ''),
(195, '2020-01-23 11:19:37', 4, 'post', 0, 'Login', ''),
(196, '2020-01-23 11:30:24', 4, 'post', 0, 'Tambah Meja', ''),
(197, '2020-01-23 11:33:03', 4, 'post', 0, 'Tambah Transaksi', ''),
(198, '2020-01-23 12:12:21', 1, 'post', 0, 'Login', ''),
(199, '2020-01-23 12:13:53', 4, 'post', 0, 'Login', ''),
(200, '2020-01-23 13:16:43', 4, 'post', 0, 'Tambah Meja', ''),
(201, '2020-01-23 13:31:20', 4, 'post', 0, 'Tambah Transaksi', ''),
(202, '2020-01-23 14:40:45', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(203, '2020-01-23 14:41:10', 1, 'post', 0, 'Login', ''),
(204, '2020-01-24 01:40:41', 4, 'post', 0, 'Login', ''),
(205, '2020-01-24 02:25:28', 1, 'post', 0, 'Login', ''),
(206, '2020-01-24 02:26:29', 4, 'post', 0, 'Login', ''),
(207, '2020-01-24 02:38:31', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(208, '2020-01-24 03:20:44', 4, 'post', 0, 'Login', ''),
(209, '2020-01-24 04:06:33', 1, 'post', 0, 'Login', ''),
(210, '2020-01-24 04:14:47', 4, 'post', 0, 'Login', ''),
(211, '2020-01-24 04:36:52', 1, 'post', 0, 'Login', ''),
(212, '2020-01-24 04:38:03', 1, 'post', 0, 'Tambah Kategori', ''),
(213, '2020-01-24 04:39:09', 1, 'post', 0, 'Tambah Menu', ''),
(214, '2020-01-24 04:39:37', 4, 'post', 0, 'Login', ''),
(215, '2020-01-24 04:52:15', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(216, '2020-01-24 04:53:20', 4, 'post', 0, 'Tambah Transaksi', ''),
(217, '2020-01-24 06:01:30', 4, 'post', 0, 'Tambah Transaksi', ''),
(218, '2020-01-24 06:27:29', 4, 'post', 0, 'Login', ''),
(219, '2020-01-24 08:34:08', 4, 'post', 0, 'Login', ''),
(220, '2020-01-24 08:34:41', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(221, '2020-01-24 08:37:52', 4, 'post', 0, 'Tambah Transaksi', ''),
(222, '2020-01-24 08:50:08', 4, 'post', 0, 'Tambah Transaksi', ''),
(223, '2020-01-24 10:03:04', 4, 'post', 0, 'Tambah Transaksi', ''),
(224, '2020-01-24 11:14:27', 4, 'post', 0, 'Login', ''),
(225, '2020-01-24 12:03:25', 4, 'post', 0, 'Tambah Transaksi', ''),
(226, '2020-01-24 14:00:06', 4, 'post', 0, 'Tambah Transaksi', ''),
(227, '2020-01-24 14:05:58', 1, 'post', 0, 'Login', ''),
(228, '2020-01-25 04:12:50', 1, 'post', 0, 'Login', ''),
(229, '2020-01-25 04:13:17', 4, 'post', 0, 'Login', ''),
(230, '2020-01-25 07:47:47', 4, 'post', 0, 'Login', ''),
(231, '2020-01-25 07:48:46', 4, 'post', 0, 'Tambah Transaksi', ''),
(232, '2020-01-25 08:55:25', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(233, '2020-01-25 09:07:19', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(234, '2020-01-25 09:33:40', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(235, '2020-01-25 09:35:51', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(236, '2020-01-25 09:46:37', 4, 'post', 0, 'Tambah Transaksi', ''),
(237, '2020-01-25 09:47:13', 1, 'post', 0, 'Login', ''),
(238, '2020-01-25 09:47:47', 4, 'post', 0, 'Login', ''),
(239, '2020-01-25 12:06:48', 4, 'post', 0, 'Login', ''),
(240, '2020-01-25 12:21:44', 1, 'post', 0, 'Login', ''),
(241, '2020-01-25 12:23:02', 4, 'post', 0, 'Login', ''),
(242, '2020-01-25 13:05:03', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(243, '2020-01-25 13:21:23', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(244, '2020-01-25 13:22:03', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(245, '2020-01-25 14:51:57', 1, 'post', 0, 'Login', ''),
(246, '2020-01-26 01:10:08', 4, 'post', 0, 'Login', ''),
(247, '2020-01-26 04:41:41', 4, 'post', 0, 'Login', ''),
(248, '2020-01-26 05:39:15', 4, 'post', 0, 'Tambah Transaksi', ''),
(249, '2020-01-26 09:04:31', 1, 'post', 0, 'Login', ''),
(250, '2020-01-26 09:19:46', 4, 'post', 0, 'Login', ''),
(251, '2020-01-26 12:36:22', 4, 'post', 0, 'Login', ''),
(252, '2020-01-26 12:37:59', 4, 'post', 0, 'Tambah Transaksi', ''),
(253, '2020-01-26 13:11:45', 4, 'post', 0, 'Tambah Transaksi', ''),
(254, '2020-01-26 14:43:16', 1, 'post', 0, 'Login', ''),
(255, '2020-01-27 01:07:55', 4, 'post', 0, 'Login', ''),
(256, '2020-01-27 04:31:25', 4, 'post', 0, 'Login', ''),
(257, '2020-01-27 06:33:16', 4, 'post', 0, 'Login', ''),
(258, '2020-01-27 06:33:56', 4, 'post', 0, 'Tambah Transaksi', ''),
(259, '2020-01-27 09:00:45', 4, 'post', 0, 'Login', ''),
(260, '2020-01-27 09:35:21', 1, 'post', 0, 'Login', ''),
(261, '2020-01-27 09:39:36', 4, 'post', 0, 'Login', ''),
(262, '2020-01-27 14:12:50', 1, 'post', 0, 'Login', ''),
(263, '2020-01-27 14:36:35', 4, 'post', 0, 'Login', ''),
(264, '2020-01-28 02:55:40', 4, 'post', 0, 'Login', ''),
(265, '2020-01-28 05:50:32', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(266, '2020-01-28 06:01:23', 1, 'post', 0, 'Login', ''),
(267, '2020-01-28 06:08:02', 4, 'post', 0, 'Login', ''),
(268, '2020-01-28 06:32:31', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(269, '2020-01-28 06:49:20', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(270, '2020-01-28 08:34:25', 4, 'post', 0, 'Login', ''),
(271, '2020-01-28 08:39:10', 4, 'post', 0, 'Tambah Transaksi', ''),
(272, '2020-01-28 09:06:45', 1, 'post', 0, 'Login', ''),
(273, '2020-01-28 09:15:38', 4, 'post', 0, 'Login', ''),
(274, '2020-01-28 10:57:28', 4, 'post', 0, 'Tambah Transaksi', ''),
(275, '2020-01-28 12:04:53', 1, 'post', 0, 'Login', ''),
(276, '2020-01-28 12:54:14', 4, 'post', 0, 'Login', ''),
(277, '2020-01-28 13:38:06', 4, 'post', 0, 'Tambah Transaksi', ''),
(278, '2020-01-28 14:16:51', 1, 'post', 0, 'Login', ''),
(279, '2020-01-29 05:17:51', 4, 'post', 0, 'Login', ''),
(280, '2020-01-29 05:29:22', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(281, '2020-01-29 06:48:52', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(282, '2020-01-29 06:49:13', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(283, '2020-01-29 10:33:21', 4, 'post', 0, 'Login', ''),
(284, '2020-01-29 10:36:03', 4, 'post', 0, 'Tambah Transaksi', ''),
(285, '2020-01-29 11:09:14', 4, 'post', 0, 'Tambah Transaksi', ''),
(286, '2020-01-29 11:50:43', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(287, '2020-01-29 13:37:50', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(288, '2020-01-29 13:42:59', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(289, '2020-01-29 13:50:43', 1, 'post', 0, 'Login', ''),
(290, '2020-01-29 13:56:55', 4, 'post', 0, 'Login', ''),
(291, '2020-01-29 14:02:53', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(292, '2020-01-29 14:27:41', 1, 'post', 0, 'Login', ''),
(293, '2020-01-30 01:29:57', 4, 'post', 0, 'Login', ''),
(294, '2020-01-30 01:38:19', 4, 'post', 0, 'Tambah Transaksi', ''),
(295, '2020-01-30 02:43:17', 4, 'post', 0, 'Tambah Transaksi', ''),
(296, '2020-01-30 05:33:20', 4, 'post', 0, 'Login', ''),
(297, '2020-01-30 07:04:50', 1, 'post', 0, 'Login', ''),
(298, '2020-01-30 08:00:36', 4, 'post', 0, 'Login', ''),
(299, '2020-01-30 08:01:21', 4, 'post', 0, 'Tambah Transaksi', ''),
(300, '2020-01-30 09:37:37', 1, 'post', 0, 'Login', ''),
(301, '2020-01-30 11:53:16', 1, 'post', 0, 'Login', ''),
(302, '2020-01-30 11:54:12', 1, 'post', 0, 'Tambah Kategori', ''),
(303, '2020-01-30 11:54:40', 1, 'post', 0, 'Tambah Menu', ''),
(304, '2020-01-30 11:55:04', 1, 'post', 0, 'Tambah Menu', ''),
(305, '2020-01-30 11:55:24', 1, 'post', 0, 'Tambah Menu', ''),
(306, '2020-01-30 11:55:45', 4, 'post', 0, 'Login', ''),
(307, '2020-01-30 12:39:05', 4, 'post', 0, 'Tambah Transaksi', ''),
(308, '2020-01-30 13:29:15', 1, 'post', 0, 'Login', ''),
(309, '2020-01-30 13:30:04', 1, 'post', 0, 'Tambah Menu', ''),
(310, '2020-01-30 13:30:21', 4, 'post', 0, 'Login', ''),
(311, '2020-01-30 13:51:29', 4, 'post', 0, 'Tambah Transaksi', ''),
(312, '2020-01-30 13:54:19', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(313, '2020-01-30 13:57:44', 1, 'post', 0, 'Login', ''),
(314, '2020-01-31 03:03:29', 4, 'post', 0, 'Login', ''),
(315, '2020-01-31 03:05:07', 4, 'post', 0, 'Tambah Transaksi', ''),
(316, '2020-01-31 03:54:15', 4, 'post', 0, 'Tambah Transaksi', ''),
(317, '2020-01-31 04:03:36', 4, 'post', 0, 'Login', ''),
(318, '2020-01-31 04:27:51', 4, 'post', 0, 'Tambah Transaksi', ''),
(319, '2020-01-31 04:28:08', 1, 'post', 0, 'Login', ''),
(320, '2020-01-31 07:56:54', 1, 'post', 0, 'Login', ''),
(321, '2020-01-31 08:03:09', 1, 'post', 0, 'Login', ''),
(322, '2020-01-31 08:12:46', 4, 'post', 0, 'Login', ''),
(323, '2020-01-31 08:13:22', 1, 'post', 0, 'Login', ''),
(324, '2020-01-31 08:13:47', 4, 'post', 0, 'Login', ''),
(325, '2020-01-31 08:15:44', 4, 'post', 0, 'Tambah Transaksi', ''),
(326, '2020-01-31 08:27:26', 1, 'post', 0, 'Login', ''),
(327, '2020-01-31 09:02:57', 1, 'post', 0, 'Tambah Item', ''),
(328, '2020-01-31 11:27:06', 4, 'post', 0, 'Login', ''),
(329, '2020-01-31 12:46:59', 4, 'post', 0, 'Tambah Transaksi', ''),
(330, '2020-01-31 13:33:11', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(331, '2020-01-31 13:44:47', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(332, '2020-01-31 13:45:14', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(333, '2020-01-31 13:46:11', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(334, '2020-01-31 13:47:08', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(335, '2020-01-31 13:47:47', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(336, '2020-01-31 13:48:19', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(337, '2020-01-31 14:02:21', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(338, '2020-01-31 14:02:46', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(339, '2020-01-31 14:08:48', 1, 'post', 0, 'Login', ''),
(340, '2020-01-31 14:10:30', 4, 'post', 0, 'Login', ''),
(341, '2020-01-31 14:10:59', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(342, '2020-01-31 14:11:28', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(343, '2020-01-31 14:22:37', 1, 'post', 0, 'Login', ''),
(344, '2020-01-31 14:31:17', 4, 'post', 0, 'Login', ''),
(345, '2020-01-31 14:31:38', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(346, '2020-01-31 14:33:07', 1, 'post', 0, 'Login', ''),
(347, '2020-02-01 01:35:14', 4, 'post', 0, 'Login', ''),
(348, '2020-02-01 04:12:42', 4, 'post', 0, 'Login', ''),
(349, '2020-02-01 04:51:56', 4, 'post', 0, 'Tambah Transaksi', ''),
(350, '2020-02-01 04:55:04', 1, 'post', 0, 'Login', ''),
(351, '2020-02-01 05:15:52', 3, 'post', 0, 'Login', ''),
(352, '2020-02-01 05:17:54', 3, 'post', 0, 'Tambah Menu', ''),
(353, '2020-02-01 05:18:19', 3, 'post', 0, 'Tambah Menu', ''),
(354, '2020-02-01 05:18:40', 3, 'post', 0, 'Tambah Menu', ''),
(355, '2020-02-01 05:19:05', 3, 'post', 0, 'Tambah Menu', ''),
(356, '2020-02-01 05:19:29', 3, 'post', 0, 'Tambah Menu', ''),
(357, '2020-02-01 05:19:57', 3, 'post', 0, 'Tambah Menu', ''),
(358, '2020-02-01 05:20:14', 3, 'post', 0, 'Tambah Menu', ''),
(359, '2020-02-01 05:20:42', 3, 'post', 0, 'Tambah Menu', ''),
(360, '2020-02-01 05:31:05', 4, 'post', 0, 'Login', ''),
(361, '2020-02-01 05:32:03', 4, 'post', 0, 'Tambah Transaksi', ''),
(362, '2020-02-01 08:46:41', 4, 'post', 0, 'Login', ''),
(363, '2020-02-01 08:47:41', 4, 'post', 0, 'Tambah Transaksi', ''),
(364, '2020-02-01 08:48:56', 4, 'post', 0, 'Tambah Transaksi', ''),
(365, '2020-02-01 09:21:20', 4, 'post', 0, 'Tambah Transaksi', ''),
(366, '2020-02-01 09:24:07', 4, 'post', 0, 'Tambah Transaksi', ''),
(367, '2020-02-01 09:24:24', 1, 'post', 0, 'Login', ''),
(368, '2020-02-01 10:53:59', 4, 'post', 0, 'Login', ''),
(369, '2020-02-01 11:20:26', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(370, '2020-02-01 11:22:02', 1, 'post', 0, 'Login', ''),
(371, '2020-02-01 12:43:04', 4, 'post', 0, 'Login', ''),
(372, '2020-02-01 13:10:50', 4, 'post', 0, 'Login', ''),
(373, '2020-02-01 13:21:16', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(374, '2020-02-01 13:21:34', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(375, '2020-02-01 13:27:59', 1, 'post', 0, 'Login', ''),
(376, '2020-02-01 13:48:16', 4, 'post', 0, 'Login', ''),
(377, '2020-02-01 14:22:54', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(378, '2020-02-01 14:54:53', 1, 'post', 0, 'Login', ''),
(379, '2020-02-02 01:01:24', 4, 'post', 0, 'Login', ''),
(380, '2020-02-02 04:00:37', 4, 'post', 0, 'Login', ''),
(381, '2020-02-02 04:04:33', 4, 'post', 0, 'Tambah Transaksi', ''),
(382, '2020-02-02 04:12:33', 1, 'post', 0, 'Login', ''),
(383, '2020-02-02 05:25:33', 4, 'post', 0, 'Login', ''),
(384, '2020-02-02 05:39:03', 4, 'post', 0, 'Tambah Transaksi', ''),
(385, '2020-02-02 08:53:59', 1, 'post', 0, 'Login', ''),
(386, '2020-02-02 10:55:59', 4, 'post', 0, 'Login', ''),
(387, '2020-02-02 11:30:51', 4, 'post', 0, 'Tambah Transaksi', ''),
(388, '2020-02-02 11:47:46', 4, 'post', 0, 'Tambah Transaksi', ''),
(389, '2020-02-02 12:41:02', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(390, '2020-02-02 12:41:23', 4, 'post', 0, 'Simpan dan Cetak Transaksi', ''),
(391, '2020-02-02 13:19:58', 4, 'post', 0, 'Login', ''),
(392, '2020-02-02 13:21:30', 4, 'post', 0, 'Simpan dan Cetak Transaksi', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_tbl`
--

CREATE TABLE `menu_tbl` (
  `menu_id` int(255) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `price_menu` double DEFAULT NULL,
  `discount_menu` double NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT '',
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menu_tbl`
--

INSERT INTO `menu_tbl` (`menu_id`, `menu_name`, `categories_id`, `price_menu`, `discount_menu`, `image`, `date`, `time`, `year`, `type`, `status`) VALUES
(2, 'Spice Stick Banana', 3, 16000, 0, 'Spice_Stick_Banana1.jpg', '2020-01-12', '05:13:15', 2020, 1, 0),
(3, 'Spice Stick Casanava', 3, 19000, 0, 'Spice_Stick_Casanava1.jpg', '2020-01-12', '05:13:35', 2020, 1, 0),
(4, 'Ubi Crispy', 3, 15000, 0, 'Ubi_Crispy1.jpg', '2020-01-12', '05:13:57', 2020, 1, 0),
(5, 'Pisang Keju Coklat', 3, 16000, 0, 'Pisang_Keju_Coklat1.jpg', '2020-01-12', '05:14:13', 2020, 1, 0),
(6, 'French Fries', 3, 16000, 0, 'French_Fries1.jpg', '2020-01-12', '05:14:30', 2020, 1, 0),
(7, 'Chicken Wonton', 3, 21000, 0, 'Chicken_Wonton1.jpg', '2020-01-12', '05:14:56', 2020, 1, 0),
(8, 'Garden Satay', 3, 20000, 0, 'Garden_Satay1.jpg', '2020-01-12', '05:15:17', 2020, 1, 0),
(9, 'Soup Ubi Bakso', 4, 21000, 0, 'Soup_Ubi_Bakso1.jpg', '2020-01-12', '05:15:41', 2020, 1, 0),
(10, 'Soup Pallumara', 4, 40000, 0, 'Soup_Pallumara1.jpg', '2020-01-12', '05:16:14', 2020, 1, 0),
(11, 'Steam Rice', 5, 9000, 0, 'Steam_Rice1.jpg', '2020-01-12', '05:16:38', 2020, 1, 0),
(12, 'Nasi Goreng Special', 5, 39000, 0, 'Nasi_Goreng_Special1.jpg', '2020-01-12', '05:16:58', 2020, 1, 0),
(13, 'Nasi Goreng Seafood', 5, 30000, 0, 'Nasi_Goreng_Seafood1.jpg', '2020-01-12', '05:17:17', 2020, 1, 0),
(14, 'Chicken Katsu Teriyaki', 6, 25000, 0, 'Chicken_Katsu_Teriyaki1.jpg', '2020-01-12', '05:17:40', 2020, 1, 0),
(15, 'Ayam Penyet', 6, 40000, 0, 'Ayam_Penyet1.jpg', '2020-01-12', '05:18:09', 2020, 1, 0),
(16, 'Chicken Steak', 6, 46000, 0, 'Chicken_Steak1.jpg', '2020-01-12', '05:18:39', 2020, 1, 0),
(17, 'Ikan Bakar Bumbu Rujak', 7, 57000, 0, 'Ikan_Bakar_Bumbu_Rujak1.jpg', '2020-01-12', '05:18:58', 2020, 1, 0),
(18, 'Ikan Bakar Pedas Manis', 7, 57000, 0, 'Ikan_Bakar_Pedas_Manis1.jpg', '2020-01-12', '05:19:12', 2020, 1, 0),
(19, 'Sukiyaki Pakcoy', 8, 30000, 0, 'Sukiyaki_Pakcoy1.jpg', '2020-01-12', '05:19:37', 2020, 1, 0),
(20, 'Seafood Pakcoy', 8, 25000, 0, 'Seafood_Pakcoy1.jpg', '2020-01-12', '05:19:54', 2020, 1, 0),
(21, 'Cap Cai', 8, 35000, 0, 'Cap_Cai1.jpg', '2020-01-12', '05:20:12', 2020, 1, 0),
(22, 'Mie Goreng Kering', 9, 33000, 0, 'Mie_Goreng_Kering1.jpg', '2020-01-12', '05:20:32', 2020, 1, 0),
(23, 'Mie Panggang', 9, 39000, 0, 'Mie_Panggang1.jpg', '2020-01-12', '05:20:52', 2020, 1, 0),
(24, 'Spaghety Aglio Olio', 10, 35000, 0, 'Spaghety_Aglio_Olio1.jpg', '2020-01-12', '05:21:16', 2020, 1, 0),
(25, 'Spaghety Sambal Matah', 10, 35000, 0, 'Spaghety_Sambal_Matah1.jpg', '2020-01-12', '05:21:38', 2020, 1, 0),
(26, 'Beef Steak', 11, 60000, 0, 'Beef_Steak1.jpg', '2020-01-12', '05:22:05', 2020, 1, 0),
(27, 'Beef Bulgogi ', 11, 30000, 0, 'Beef_Bulgogi_1.jpg', '2020-01-12', '05:27:50', 2020, 1, 0),
(28, 'Ayam Geprek', 12, 36000, 0, 'Ayam_Geprek1.jpg', '2020-01-12', '05:28:15', 2020, 1, 0),
(29, 'QOTHOC COFFEE', 19, 10000, 0, 'QOTHOC_COFFEE.jpg', '2020-01-12', '05:28:54', 2020, 1, 0),
(30, 'CAPPUCINO', 19, 16000, 0, 'CAPPUCINO.jpg', '2020-01-12', '05:29:23', 2020, 1, 0),
(31, 'Hot Chocolate', 19, 18000, 0, 'Hot_Chocolate.jpg', '2020-01-12', '06:43:59', 2020, 1, 0),
(32, 'Hot Lemon Tea', 19, 11000, 0, 'Hot_Lemon_Tea.jpg', '2020-01-12', '06:44:27', 2020, 1, 0),
(33, 'Hot Tea', 19, 10000, 0, 'Hot_Tea.jpg', '2020-01-12', '06:45:30', 2020, 1, 0),
(34, 'Teh Tarik', 19, 11000, 0, 'Teh_Tarik.jpg', '2020-01-12', '06:46:02', 2020, 1, 0),
(35, 'Ice Cappucino', 18, 18000, 0, 'Ice_Cappucino1.jpg', '2020-01-12', '06:46:34', 2020, 1, 0),
(36, 'Ice Coffee', 18, 12000, 0, 'Ice_Coffee1.jpg', '2020-01-12', '06:47:01', 2020, 1, 0),
(37, 'Ice Tea', 18, 10000, 0, 'Ice_Tea1.jpg', '2020-01-12', '06:52:30', 2020, 1, 0),
(38, 'Snow Cappucino', 18, 19000, 0, 'Snow_Cappucino1.jpg', '2020-01-12', '06:53:33', 2020, 1, 0),
(39, 'Strawberry Iced Coffee', 18, 16000, 0, 'Strawberry_Iced_Coffee.jpg', '2020-01-12', '06:54:14', 2020, 1, 0),
(40, 'Ice Chocolate', 18, 18000, 0, 'Ice_Chocolate.jpg', '2020-01-12', '06:54:39', 2020, 1, 0),
(41, 'Ice Lemon Tea', 18, 12000, 0, 'Ice_Lemon_Tea.jpg', '2020-01-12', '06:55:05', 2020, 1, 0),
(42, 'Royal Iced Tea', 18, 12000, 0, 'Royal_Iced_Tea.jpg', '2020-01-12', '06:55:28', 2020, 1, 0),
(43, 'Thai Tea Original', 18, 11000, 0, 'Thai_Tea_Original.jpg', '2020-01-12', '06:58:49', 2020, 1, 0),
(44, 'Thai Tea Strawberry', 18, 13000, 0, 'Thai_Tea_Strawberry.jpg', '2020-01-12', '06:59:29', 2020, 1, 0),
(45, 'Thai Tea Green Tea', 18, 13000, 0, 'Thai_Tea_Green_Tea.jpg', '2020-01-12', '06:59:53', 2020, 1, 0),
(46, 'Strawberry Milk Shake', 17, 18000, 0, 'Strawberry_Milk_Shake2.jpg', '2020-01-12', '07:00:14', 2020, 1, 0),
(47, 'Vanilla Milk Shake', 17, 18000, 0, 'Vanilla_Milk_Shake1.jpg', '2020-01-12', '07:00:28', 2020, 1, 0),
(48, 'Chocolate Milk Shake', 17, 18000, 0, 'Chocolate_Milk_Shake1.jpg', '2020-01-12', '07:01:08', 2020, 1, 0),
(49, 'Orange Milk Shake', 17, 18000, 0, 'Orange_Milk_Shake1.jpg', '2020-01-12', '07:01:24', 2020, 1, 0),
(50, 'Strawberry Milk Shake', 17, 18000, 0, 'Strawberry_Milk_Shake3.jpg', '2020-01-12', '07:01:38', 2020, 1, 0),
(51, 'Green Smoothies', 17, 18000, 0, 'Green_Smoothies1.jpg', '2020-01-12', '07:01:51', 2020, 1, 0),
(52, 'Garden Iced Blend', 16, 18000, 0, 'Garden_Iced_Blend.jpg', '2020-01-12', '07:02:27', 2020, 1, 0),
(53, 'Green Tea Iced Blend', 16, 18000, 0, 'Green_Tea_Iced_Blend.jpg', '2020-01-12', '07:02:54', 2020, 1, 0),
(54, 'Strawberry Pakcoy Iced Blend', 16, 18000, 0, 'Strawberry_Pakcoy_Iced_Blend.jpg', '2020-01-12', '07:04:11', 2020, 1, 0),
(55, 'Coffee And Cocho Blend', 16, 18000, 0, 'Coffee_And_Cocho_Blend.jpg', '2020-01-12', '07:09:04', 2020, 1, 0),
(56, 'Strawberry Kona Moka', 16, 18000, 0, 'Strawberry_Kona_Moka.jpg', '2020-01-12', '07:10:52', 2020, 1, 0),
(57, 'Lemon Squash', 15, 15000, 0, 'Lemon_Shake.jpg', '2020-01-12', '07:11:42', 2020, 1, 0),
(58, 'Strawberry Squash', 15, 15000, 0, 'Strawberry_Squash.jpg', '2020-01-12', '07:12:17', 2020, 1, 0),
(59, 'Orange Squash', 15, 15000, 0, 'Orange_Squash.jpg', '2020-01-12', '07:12:38', 2020, 1, 0),
(60, 'Mineral Water', 15, 9000, 0, 'Mineral_Water.jpg', '2020-01-17', '08:36:18', 2020, 1, 0),
(61, 'Eatery Garden  Sunset', 14, 18000, 0, 'Eatery_Garden_Sunset.jpg', '2020-01-12', '07:13:45', 2020, 1, 0),
(62, 'Shirley Temple', 14, 18000, 0, 'Shirley_Temple.jpg', '2020-01-12', '07:14:28', 2020, 1, 0),
(63, 'Fruit Soup', 14, 25000, 0, 'Fruit_Soup.jpg', '2020-01-12', '07:15:00', 2020, 1, 0),
(64, 'Orange Juice', 13, 15000, 0, 'Orange_Juice1.jpg', '2020-01-12', '07:15:45', 2020, 1, 0),
(65, 'Apple Juice', 13, 15000, 0, 'Apple_Juice1.jpg', '2020-01-12', '07:16:05', 2020, 1, 0),
(66, 'Avocado Juice', 13, 15000, 0, 'Avocado_Juice1.jpg', '2020-01-12', '07:16:32', 2020, 1, 0),
(67, 'Lime Juice', 13, 15000, 0, 'Lime_Juice1.jpg', '2020-01-12', '07:17:14', 2020, 1, 0),
(68, 'Dragon Fruit Juice', 13, 15000, 0, 'Dragon_Fruit_Juice1.jpg', '2020-01-12', '07:17:33', 2020, 1, 0),
(69, 'Mix Juice', 13, 15000, 0, 'Mix_Juice1.jpg', '2020-01-12', '07:17:55', 2020, 1, 0),
(70, 'Mie Imlek', 20, 20000, 0, '', '2020-01-24', '12:39:09', 2020, 1, 0),
(71, 'BUFFET A', 21, 50000, 0, '', '2020-01-30', '07:54:40', 2020, 1, 0),
(72, 'BUFFET B', 21, 65000, 0, '', '2020-01-30', '07:55:04', 2020, 1, 0),
(73, 'BUFFET C', 21, 80000, 0, '', '2020-01-30', '07:55:24', 2020, 1, 0),
(74, 'BUFFET BFI', 21, 1000000, 0, '', '2020-01-30', '09:30:04', 2020, 1, 0),
(75, 'Mie Goreng Curry', 20, 15000, 0, '', '2020-02-01', '01:17:54', 2020, 1, 0),
(76, 'Mie Goreng Singapura', 20, 15000, 0, '', '2020-02-01', '01:18:19', 2020, 1, 0),
(77, 'Nasi Soborudon', 20, 15000, 0, '', '2020-02-01', '01:18:40', 2020, 1, 0),
(78, 'Nasi Goreng Youg Chow', 20, 15000, 0, '', '2020-02-01', '01:19:05', 2020, 1, 0),
(79, 'Ikan Goreng Sambal Mattah', 20, 15000, 0, '', '2020-02-01', '01:19:29', 2020, 1, 0),
(80, 'Chicken Koloke Teriyaki Sauce', 20, 15000, 0, '', '2020-02-01', '01:19:57', 2020, 1, 0),
(81, 'Nasi Goreng Roa', 20, 15000, 0, '', '2020-02-01', '01:20:14', 2020, 1, 0),
(82, 'Mie Kuah Soborudon', 20, 15000, 0, '', '2020-02-01', '01:20:42', 2020, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `operational_tbl`
--

CREATE TABLE `operational_tbl` (
  `operational_id` int(255) NOT NULL,
  `operational_name` varchar(255) DEFAULT NULL,
  `operational_budget` double DEFAULT NULL,
  `time` time DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pay_tbl`
--

CREATE TABLE `pay_tbl` (
  `pay_id` int(11) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `table_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `ppn` double NOT NULL,
  `pay` double DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `year` year(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pay_tbl`
--

INSERT INTO `pay_tbl` (`pay_id`, `invoice_number`, `table_id`, `customer_name`, `discount`, `ppn`, `pay`, `date`, `time`, `year`, `user_id`) VALUES
(1, 'INV-20200120000001', '4', '3', 25, 10, 200000, '2020-01-20', '06:17:06', 2020, 4),
(2, 'INV-20200120000002', '4', '2 ', 25, 10, 0, '2020-01-20', '06:24:18', 2020, 4),
(3, 'INV-20200120000003', '5', '3', 25, 10, 70000, '2020-01-20', '06:27:23', 2020, 4),
(4, 'INV-20200120000004', '5', '2 ', 25, 10, 100000, '2020-01-20', '10:05:15', 2020, 1),
(5, 'INV-20200120000005', '8', '2 ', 25, 10, 20000, '2020-01-20', '10:20:37', 2020, 1),
(6, 'INV-20200121000001', '33', '2 ', 25, 10, 0, '2020-01-21', '11:59:30', 2020, 4),
(7, 'INV-20200121000002', '30', '-', 25, 10, 50000, '2020-01-21', '12:01:00', 2020, 4),
(8, 'INV-20200121000003', '11', '1', 0, 10, 0, '2020-01-21', '01:01:43', 2020, 4),
(9, 'INV-20200121000004', '11', '2 ', 25, 10, 100000, '2020-01-21', '01:49:56', 2020, 4),
(10, 'INV-20200121000005', '30', '2', 25, 10, 0, '2020-01-21', '10:19:32', 2020, 4),
(11, 'INV-20200122000001', '30', '3', 25, 10, 100000, '2020-01-22', '06:25:43', 2020, 4),
(12, 'INV-20200122000002', '24', '3', 25, 10, 0, '2020-01-22', '07:10:44', 2020, 4),
(13, 'INV-20200122000003', '4', '-', 0, 0, 0, '2020-01-22', '07:15:16', 2020, 4),
(14, 'INV-20200122000004', '32', '2 ', 25, 10, 55000, '2020-01-22', '10:37:03', 2020, 4),
(15, 'INV-20200123000001', '12', '1', 0, 10, 0, '2020-01-23', '12:41:37', 2020, 4),
(16, 'INV-20200123000002', '31', '4', 25, 10, 100000, '2020-01-23', '02:39:20', 2020, 4),
(17, 'INV-20200123000003', '17', '6', 25, 10, 160000, '2020-01-23', '03:26:29', 2020, 4),
(18, 'INV-20200123000004', '34', 'TAKE AWAY (GRAB)', 0, 0, 39000, '2020-01-23', '07:33:03', 2020, 4),
(19, 'INV-20200123000005', '27', '3', 25, 10, 0, '2020-01-23', '09:16:14', 2020, 4),
(20, 'INV-20200123000006', '35', 'TAKE AWAY (GRAB)', 0, 0, 100000, '2020-01-23', '09:31:20', 2020, 4),
(21, 'INV-20200124000001', '16', '7', 25, 10, 150000, '2020-01-24', '10:37:58', 2020, 4),
(22, 'INV-20200124000002', '17', '2', 25, 10, 100000, '2020-01-24', '12:51:46', 2020, 4),
(23, 'INV-20200124000003', '17', '2', 0, 0, 0, '2020-01-24', '12:53:20', 2020, 4),
(24, 'INV-20200124000004', '16', '1', 25, 10, 0, '2020-01-24', '02:01:30', 2020, 4),
(25, 'INV-20200124000005', '33', '2', 25, 10, 100000, '2020-01-24', '02:11:25', 2020, 4),
(26, 'INV-20200124000006', '4', 'ibu astrid', 0, 0, 20000, '2020-01-24', '04:37:52', 2020, 4),
(27, 'INV-20200124000007', '34', 'TAKE AWAY (GRAB)', 0, 0, 100000, '2020-01-24', '04:50:08', 2020, 4),
(28, 'INV-20200124000008', '35', 'TAKE AWAY (GRAB)', 0, 0, 60000, '2020-01-24', '06:03:04', 2020, 4),
(29, 'INV-20200124000009', '31', '2', 25, 10, 100000, '2020-01-24', '08:03:25', 2020, 4),
(30, 'INV-20200124000010', '33', '3', 25, 10, 150000, '2020-01-24', '10:00:06', 2020, 4),
(31, 'INV-20200125000001', '34', 'TAKE AWAY (GRAB)', 0, 0, 52000, '2020-01-25', '03:48:46', 2020, 4),
(32, 'INV-20200125000002', '11', '3', 0, 10, 0, '2020-01-25', '04:26:14', 2020, 4),
(33, 'INV-20200125000003', '11', '3', 25, 10, 50000, '2020-01-25', '04:55:05', 2020, 4),
(34, 'INV-20200125000004', '12', '1', 0, 10, 34100, '2020-01-25', '05:13:25', 2020, 4),
(35, 'INV-20200125000005', '11', '1', 0, 0, 20000, '2020-01-25', '05:35:34', 2020, 4),
(36, 'INV-20200125000006', '35', 'TAKE AWAY (GRAB)', 0, 0, 20000, '2020-01-25', '05:46:37', 2020, 4),
(37, 'INV-20200125000007', '32', '2 ', 25, 10, 46200, '2020-01-25', '08:08:26', 2020, 4),
(38, 'INV-20200125000008', '12', '3', 0, 10, 99000, '2020-01-25', '09:02:10', 2020, 4),
(39, 'INV-20200125000009', '12', '3', 0, 10, 19800, '2020-01-25', '09:16:53', 2020, 4),
(40, 'INV-20200126000001', '11', '1', 25, 10, 26000, '2020-01-26', '01:39:15', 2020, 4),
(41, 'INV-20200126000002', '7', '1', 25, 10, 13000, '2020-01-26', '08:37:59', 2020, 4),
(42, 'INV-20200126000003', '25', '1', 25, 10, 13000, '2020-01-26', '09:11:45', 2020, 4),
(43, 'INV-20200127000001', '30', '2 ', 25, 10, 50000, '2020-01-27', '02:33:56', 2020, 4),
(44, 'INV-20200128000001', '33', '2 ', 25, 10, 50325, '2020-01-28', '12:10:01', 2020, 4),
(45, 'INV-20200128000002', '12', '6', 0, 10, 54000, '2020-01-28', '12:11:32', 2020, 4),
(46, 'INV-20200128000003', '30', '3', 25, 10, 130000, '2020-01-28', '01:49:12', 2020, 4),
(47, 'INV-20200128000004', '31', '2 ', 25, 10, 105000, '2020-01-28', '04:39:10', 2020, 4),
(48, 'INV-20200128000005', '32', '3', 25, 10, 200000, '2020-01-28', '06:57:28', 2020, 4),
(49, 'INV-20200128000006', '32', '3', 25, 10, 150000, '2020-01-28', '09:38:06', 2020, 4),
(50, 'INV-20200129000001', '31', '2 ', 25, 10, 200000, '2020-01-29', '01:19:33', 2020, 4),
(51, 'INV-20200129000002', '30', '2', 25, 10, 42075, '2020-01-29', '01:20:05', 2020, 4),
(52, 'INV-20200129000003', '30', '2 ', 25, 10, 7425, '2020-01-29', '01:44:18', 2020, 4),
(53, 'INV-20200129000004', '22', '1', 0, 0, 135000, '2020-01-29', '06:36:03', 2020, 4),
(54, 'INV-20200129000005', '23', '4', 25, 10, 148500, '2020-01-29', '07:07:23', 2020, 4),
(55, 'INV-20200129000006', '4', '1', 0, 0, 50000, '2020-01-29', '07:09:14', 2020, 4),
(56, 'INV-20200129000007', '23', '3', 25, 10, 83325, '2020-01-29', '08:49:34', 2020, 4),
(57, 'INV-20200129000008', '4', '3', 25, 10, 150000, '2020-01-29', '09:14:06', 2020, 4),
(58, 'INV-20200129000009', '32', '2', 25, 10, 60225, '2020-01-29', '09:14:35', 2020, 4),
(59, 'INV-20200130000001', '32', '2 ', 25, 10, 16500, '2020-01-30', '09:38:19', 2020, 4),
(60, 'INV-20200130000002', '34', 'TAKE AWAY (GRAB)', 0, 0, 50000, '2020-01-30', '10:43:16', 2020, 4),
(61, 'INV-20200130000003', '32', '1', 25, 10, 50000, '2020-01-30', '04:01:21', 2020, 4),
(62, 'INV-20200130000004', '7', '1', 0, 0, 0, '2020-01-30', '07:59:37', 2020, 4),
(63, 'INV-20200130000005', '32', '1', 25, 10, 50000, '2020-01-30', '08:39:05', 2020, 4),
(64, 'INV-20200130000006', '4', '20', 0, 0, 1000000, '2020-01-30', '09:30:54', 2020, 4),
(65, 'INV-20200130000007', '32', '2 ', 25, 10, 100000, '2020-01-30', '09:51:29', 2020, 4),
(66, 'INV-20200131000001', '11', '1', 0, 0, 50000, '2020-01-31', '11:05:07', 2020, 4),
(67, 'INV-20200131000002', '11', '3', 25, 10, 150000, '2020-01-31', '11:54:15', 2020, 4),
(68, 'INV-20200131000003', '27', '3', 25, 10, 0, '2020-01-31', '12:27:51', 2020, 4),
(69, 'INV-20200131000004', '35', 'TAKE AWAY', 0, 0, 100000, '2020-01-31', '04:15:44', 2020, 4),
(70, 'INV-20200131000005', '30', '2', 25, 10, 0, '2020-01-31', '08:15:22', 2020, 4),
(71, 'INV-20200131000006', '30', '2 ', 25, 10, 0, '2020-01-31', '08:37:51', 2020, 4),
(72, 'INV-20200131000007', '4', 'TAKE AWAY', 0, 0, 0, '2020-01-31', '08:46:59', 2020, 4),
(73, 'INV-20200131000008', '33', '2 ', 0, 10, 0, '2020-01-31', '08:50:23', 2020, 4),
(74, 'INV-20200131000009', '23', '2', 25, 10, 29700, '2020-01-31', '08:50:52', 2020, 4),
(75, 'INV-20200131000010', '23', '4', 25, 10, 29700, '2020-01-31', '08:56:45', 2020, 4),
(76, 'INV-20200131000011', '23', '4', 25, 10, 88275, '2020-01-31', '09:12:16', 2020, 4),
(77, 'INV-20200131000012', '12', '2', 25, 10, 27225, '2020-01-31', '09:16:21', 2020, 4),
(78, 'INV-20200131000013', '23', '6', 25, 10, 44550, '2020-01-31', '09:17:04', 2020, 4),
(79, 'INV-20200131000014', '12', '3', 25, 10, 14850, '2020-01-31', '09:20:07', 2020, 4),
(80, 'INV-20200131000015', '23', '6', 25, 10, 7425, '2020-01-31', '09:38:06', 2020, 4),
(81, 'INV-20200131000016', '23', '6', 25, 10, 14850, '2020-01-31', '09:43:58', 2020, 4),
(82, 'INV-20200131000017', '12', '2', 25, 10, 100000, '2020-01-31', '10:01:28', 2020, 4),
(83, 'INV-20200201000001', '31', '1', 0, 10, 100000, '2020-02-01', '12:51:56', 2020, 4),
(84, 'INV-20200201000002', '34', 'TAKE AWAY (GRAB)', 0, 0, 50000, '2020-02-01', '01:32:03', 2020, 4),
(85, 'INV-20200201000003', '4', '1', 0, 10, 0, '2020-02-01', '04:47:41', 2020, 4),
(86, 'INV-20200201000004', '7', '2', 0, 10, 33000, '2020-02-01', '04:48:56', 2020, 4),
(87, 'INV-20200201000005', '11', '2', 0, 10, 33000, '2020-02-01', '05:21:20', 2020, 4),
(88, 'INV-20200201000006', '12', '1', 0, 10, 17000, '2020-02-01', '05:24:07', 2020, 4),
(89, 'INV-20200201000007', '23', '2', 0, 10, 92400, '2020-02-01', '06:57:31', 2020, 4),
(90, 'INV-20200201000008', '17', '5', 0, 10, 279400, '2020-02-01', '08:48:27', 2020, 4),
(91, 'INV-20200201000009', '17', '5', 0, 10, 33000, '2020-02-01', '09:09:53', 2020, 4),
(92, 'INV-20200201000010', '23', '3', 0, 10, 102300, '2020-02-01', '10:22:14', 2020, 4),
(93, 'INV-20200202000001', '4', 'kbrk', 0, 10, 0, '2020-02-02', '12:04:33', 2020, 4),
(94, 'INV-20200202000002', '7', 'TAKE AWAY (GRAB)', 0, 0, 109000, '2020-02-02', '01:39:03', 2020, 4),
(95, 'INV-20200202000003', '26', '1', 0, 10, 100000, '2020-02-02', '07:30:51', 2020, 4),
(96, 'INV-20200202000004', '33', '2', 0, 10, 0, '2020-02-02', '07:46:54', 2020, 4),
(97, 'INV-20200202000005', '35', 'TAKE AWAY (GRAB)', 0, 0, 100000, '2020-02-02', '07:47:46', 2020, 4),
(98, 'INV-20200202000006', '23', '2 ', 0, 10, 0, '2020-02-02', '08:08:58', 2020, 4),
(99, 'INV-20200202000007', '11', '1', 0, 10, 50000, '2020-02-02', '08:49:06', 2020, 4);

-- --------------------------------------------------------

--
-- Table structure for table `profile_tbl`
--

CREATE TABLE `profile_tbl` (
  `profile_id` int(255) NOT NULL,
  `store_name` varchar(255) NOT NULL DEFAULT '0',
  `address` varchar(1000) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone2` varchar(50) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_tbl`
--

INSERT INTO `profile_tbl` (`profile_id`, `store_name`, `address`, `phone`, `phone2`, `date`, `time`, `year`, `status`) VALUES
(1, 'GARDEN EATERY RESTAURANT', 'JL. AH. NASUTION NO. 180 ANDONOHU\r\nKendari, Sulawesi Tenggara', '087798973554', '0', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_tbl`
--

CREATE TABLE `purchase_tbl` (
  `purchase_id` int(255) NOT NULL,
  `item_id` int(255) NOT NULL DEFAULT '0',
  `purchase_detail` varchar(255) NOT NULL DEFAULT '0',
  `purchase_qty` double NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `purchase_tbl`
--

INSERT INTO `purchase_tbl` (`purchase_id`, `item_id`, `purchase_detail`, `purchase_qty`, `date`, `time`, `year`, `status`) VALUES
(1, 1, '', 10, '2020-01-20', '10:12:00', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resivi_tbl`
--

CREATE TABLE `resivi_tbl` (
  `resivi_id` int(255) NOT NULL,
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(255) NOT NULL DEFAULT '0',
  `item_id` int(255) NOT NULL DEFAULT '0',
  `resivi_amount` double NOT NULL DEFAULT '0',
  `resivi_price` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `resivi_tbl`
--

INSERT INTO `resivi_tbl` (`resivi_id`, `unit_id`, `menu_id`, `item_id`, `resivi_amount`, `resivi_price`, `date`, `time`, `year`, `status`) VALUES
(1, 7, 2, 1, 1, 1000, '2020-01-20', '10:13:57', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_food_tbl`
--

CREATE TABLE `stock_food_tbl` (
  `stock_food_id` int(255) NOT NULL,
  `item_id` int(255) NOT NULL DEFAULT '0',
  `product_name_item` varchar(255) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `stock` double NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `stock_food_tbl`
--

INSERT INTO `stock_food_tbl` (`stock_food_id`, `item_id`, `product_name_item`, `unit_id`, `stock`, `date`, `time`, `year`, `type`, `status`) VALUES
(1, 1, 'pisang', 7, 2, '2020-01-20', '10:13:08', 2020, 1, 0),
(2, 1, 'pisang', 7, 2, '2020-01-21', '09:51:14', 2020, 1, 0),
(3, 1, 'pisang', 7, 2, '2020-01-22', '10:32:46', 2020, 1, 0),
(4, 1, 'pisang', 7, 2, '2020-01-23', '11:32:24', 2020, 1, 0),
(5, 1, 'pisang', 7, 1, '2020-01-24', '09:40:18', 2020, 1, 0),
(6, 1, 'pisang', 7, 1, '2020-01-24', '09:40:18', 2020, 1, 0),
(7, 1, 'pisang', 7, 1, '2020-01-25', '12:12:39', 2020, 1, 0),
(8, 1, 'pisang', 7, 0, '2020-01-26', '09:09:51', 2020, 1, 0),
(9, 1, 'pisang', 7, 0, '2020-01-26', '09:09:51', 2020, 1, 0),
(10, 1, 'pisang', 7, -1, '2020-01-27', '09:07:46', 2020, 1, 0),
(11, 1, 'pisang', 7, -1, '2020-01-28', '10:55:22', 2020, 1, 0),
(12, 1, 'pisang', 7, -1, '2020-01-29', '01:17:41', 2020, 1, 0),
(13, 1, 'pisang', 7, -1, '2020-01-30', '09:29:50', 2020, 1, 0),
(14, 1, 'pisang', 7, -2, '2020-01-31', '11:03:17', 2020, 1, 0),
(15, 1, 'pisang', 7, -2, '2020-02-01', '09:35:07', 2020, 1, 0),
(16, 1, 'pisang', 7, -2, '2020-02-02', '09:00:00', 2020, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_tbl`
--

CREATE TABLE `table_tbl` (
  `table_id` int(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_tbl`
--

INSERT INTO `table_tbl` (`table_id`, `table_name`, `date`, `time`, `year`, `status`) VALUES
(4, '1', '2020-01-17', '08:01:40', 2020, 0),
(7, '2', '2020-01-20', '10:19:00', 2020, 0),
(9, '3', '2020-01-21', '11:37:32', 2020, 0),
(10, '4', '2020-01-21', '11:37:37', 2020, 0),
(11, '5', '2020-01-21', '11:37:41', 2020, 0),
(12, '6', '2020-01-21', '11:37:45', 2020, 0),
(13, '7', '2020-01-21', '11:37:51', 2020, 0),
(14, '8', '2020-01-21', '11:37:55', 2020, 0),
(15, '9', '2020-01-21', '11:38:00', 2020, 0),
(16, '10', '2020-01-21', '11:38:06', 2020, 0),
(17, '11', '2020-01-21', '11:38:11', 2020, 0),
(18, '12', '2020-01-21', '11:38:16', 2020, 0),
(19, '13', '2020-01-21', '11:38:47', 2020, 0),
(20, '14', '2020-01-21', '11:38:51', 2020, 0),
(21, '15', '2020-01-21', '11:38:55', 2020, 0),
(22, '16', '2020-01-21', '11:38:59', 2020, 0),
(23, '17', '2020-01-21', '11:39:03', 2020, 0),
(24, '18', '2020-01-21', '11:39:10', 2020, 0),
(25, '19', '2020-01-21', '11:39:14', 2020, 0),
(26, '20', '2020-01-21', '11:39:21', 2020, 0),
(27, '21', '2020-01-21', '11:39:27', 2020, 0),
(28, '22', '2020-01-21', '11:39:31', 2020, 0),
(29, '23', '2020-01-21', '11:39:35', 2020, 0),
(30, '24', '2020-01-21', '11:39:39', 2020, 0),
(31, '25', '2020-01-21', '11:39:43', 2020, 0),
(32, '26', '2020-01-21', '11:40:02', 2020, 0),
(33, '27', '2020-01-21', '11:40:09', 2020, 0),
(34, 'T.A. 1', '2020-01-23', '07:30:24', 2020, 0),
(35, 'T.A. 2', '2020-01-23', '09:16:43', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

CREATE TABLE `transaction_tbl` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `table_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `product_name_item` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`transaction_id`, `invoice_number`, `table_id`, `menu_id`, `product_name_item`, `price`, `qty`, `discount`, `total`, `date`, `time`, `year`, `status`, `user_id`) VALUES
(1, 'INV-20200120000001', '4', '12', 'Nasi Goreng Special', 39000, 3, 0, 117000, '2020-01-20', '06:17:06', 2020, 1, 4),
(2, 'INV-20200120000001', '4', '66', 'Avocado Juice', 15000, 3, 0, 45000, '2020-01-20', '06:17:06', 2020, 1, 4),
(3, 'INV-20200120000002', '4', '15', 'Ayam Penyet', 40000, 2, 0, 80000, '2020-01-20', '06:24:18', 2020, 1, 4),
(4, 'INV-20200120000002', '4', '11', 'Steam Rice', 9000, 3, 0, 27000, '2020-01-20', '06:24:18', 2020, 1, 4),
(5, 'INV-20200120000002', '4', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-20', '06:24:18', 2020, 1, 4),
(6, 'INV-20200120000002', '4', '64', 'Orange Juice', 15000, 2, 0, 30000, '2020-01-20', '06:24:18', 2020, 1, 4),
(7, 'INV-20200120000003', '5', '15', 'Ayam Penyet', 40000, 1, 0, 40000, '2020-01-20', '06:27:23', 2020, 1, 4),
(8, 'INV-20200120000003', '5', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-20', '06:27:23', 2020, 1, 4),
(9, 'INV-20200120000003', '5', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-20', '06:27:23', 2020, 1, 4),
(10, 'INV-20200120000003', '5', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-20', '06:27:23', 2020, 1, 4),
(11, 'INV-20200120000004', '5', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-01-20', '10:05:15', 2020, 1, 1),
(12, 'INV-20200120000004', '5', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-20', '10:05:15', 2020, 1, 1),
(13, 'INV-20200120000004', '5', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-20', '10:05:15', 2020, 1, 1),
(14, 'INV-20200120000004', '5', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-20', '10:05:15', 2020, 1, 1),
(15, 'INV-20200120000005', '8', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-20', '10:20:37', 2020, 1, 1),
(16, 'INV-20200121000001', '33', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-21', '11:59:30', 2020, 1, 4),
(17, 'INV-20200121000001', '33', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-21', '11:59:30', 2020, 1, 4),
(18, 'INV-20200121000001', '33', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-21', '11:59:30', 2020, 1, 4),
(19, 'INV-20200121000001', '33', '57', 'Lemon Squash', 15000, 2, 0, 30000, '2020-01-21', '11:59:30', 2020, 1, 4),
(20, 'INV-20200121000001', '33', '47', 'Vanilla Milk Shake', 18000, -1, 0, -18000, '2020-01-21', '11:59:30', 2020, 1, 4),
(21, 'INV-20200121000002', '30', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-21', '12:01:00', 2020, 1, 4),
(22, 'INV-20200121000002', '30', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-21', '12:01:00', 2020, 1, 4),
(23, 'INV-20200121000003', '11', '22', 'Mie Goreng Kering', 33000, 1, 0, 33000, '2020-01-21', '01:01:43', 2020, 0, 4),
(24, 'INV-20200121000004', '11', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-21', '01:49:56', 2020, 1, 4),
(25, 'INV-20200121000004', '11', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-21', '01:49:56', 2020, 1, 4),
(26, 'INV-20200121000004', '11', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-21', '01:49:56', 2020, 1, 4),
(27, 'INV-20200121000005', '30', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-21', '10:19:32', 2020, 1, 4),
(28, 'INV-20200121000005', '30', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-21', '10:19:32', 2020, 1, 4),
(29, 'INV-20200122000001', '30', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-22', '06:25:43', 2020, 1, 4),
(30, 'INV-20200122000001', '30', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-22', '06:25:43', 2020, 1, 4),
(31, 'INV-20200122000001', '30', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-01-22', '06:25:43', 2020, 1, 4),
(32, 'INV-20200122000001', '30', '35', 'Ice Cappucino', 18000, 1, 0, 18000, '2020-01-22', '06:25:43', 2020, 1, 4),
(33, 'INV-20200122000002', '24', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-01-22', '07:10:44', 2020, 1, 4),
(34, 'INV-20200122000002', '24', '26', 'Beef Steak', 60000, 1, 0, 60000, '2020-01-22', '07:10:44', 2020, 1, 4),
(35, 'INV-20200122000002', '24', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-22', '07:10:44', 2020, 1, 4),
(36, 'INV-20200122000002', '24', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-01-22', '07:10:44', 2020, 1, 4),
(37, 'INV-20200122000002', '24', '6', 'French Fries', 16000, 1, 0, 16000, '2020-01-22', '07:10:44', 2020, 1, 4),
(38, 'INV-20200122000003', '4', '19', 'Sukiyaki Pakcoy', 30000, 2, 0, 60000, '2020-01-22', '07:15:16', 2020, 1, 4),
(39, 'INV-20200122000004', '32', '6', 'French Fries', 16000, 1, 0, 16000, '2020-01-22', '10:37:03', 2020, 1, 4),
(40, 'INV-20200122000004', '32', '30', 'CAPPUCINO', 16000, 1, 0, 16000, '2020-01-22', '10:37:03', 2020, 1, 4),
(41, 'INV-20200122000004', '32', '69', 'Mix Juice', 15000, 2, 0, 30000, '2020-01-22', '10:37:03', 2020, 1, 4),
(42, 'INV-20200123000001', '12', '26', 'Beef Steak', 60000, 1, 0, 60000, '2020-01-23', '12:41:37', 2020, 1, 4),
(43, 'INV-20200123000001', '12', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-23', '12:41:37', 2020, 1, 4),
(44, 'INV-20200123000001', '12', '22', 'Mie Goreng Kering', 33000, 1, 0, 33000, '2020-01-23', '12:41:37', 2020, 1, 4),
(45, 'INV-20200123000002', '31', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-23', '02:39:19', 2020, 1, 4),
(46, 'INV-20200123000002', '31', '21', 'Cap Cai', 35000, 1, 0, 35000, '2020-01-23', '02:39:19', 2020, 1, 4),
(47, 'INV-20200123000002', '31', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-23', '02:39:20', 2020, 1, 4),
(48, 'INV-20200123000002', '31', '65', 'Apple Juice', 15000, 1, 0, 15000, '2020-01-23', '02:39:20', 2020, 1, 4),
(49, 'INV-20200123000002', '31', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-23', '02:39:20', 2020, 1, 4),
(50, 'INV-20200123000002', '31', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-23', '02:39:20', 2020, 1, 4),
(51, 'INV-20200123000003', '17', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-23', '03:26:29', 2020, 1, 4),
(52, 'INV-20200123000003', '17', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-23', '03:26:29', 2020, 1, 4),
(53, 'INV-20200123000003', '17', '28', 'Ayam Geprek', 36000, 1, 0, 36000, '2020-01-23', '03:26:29', 2020, 1, 4),
(54, 'INV-20200123000003', '17', '43', 'Thai Tea Original', 11000, 1, 0, 11000, '2020-01-23', '03:26:29', 2020, 1, 4),
(55, 'INV-20200123000003', '17', '37', 'Ice Tea', 10000, 1, 0, 10000, '2020-01-23', '03:26:29', 2020, 1, 4),
(56, 'INV-20200123000003', '17', '63', 'Fruit Soup', 25000, 2, 0, 50000, '2020-01-23', '03:26:29', 2020, 1, 4),
(57, 'INV-20200123000003', '17', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-23', '03:26:29', 2020, 1, 4),
(58, 'INV-20200123000003', '17', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-23', '03:26:29', 2020, 1, 4),
(59, 'INV-20200123000004', '34', '12', 'Nasi Goreng Special', 39000, 1, 0, 39000, '2020-01-23', '07:33:03', 2020, 1, 4),
(60, 'INV-20200123000005', '27', '29', 'QOTHOC COFFEE', 10000, 1, 0, 10000, '2020-01-23', '09:16:14', 2020, 1, 4),
(61, 'INV-20200123000005', '27', '30', 'CAPPUCINO', 16000, 2, 0, 32000, '2020-01-23', '09:16:14', 2020, 1, 4),
(62, 'INV-20200123000005', '27', '2', 'Spice Stick Banana', 16000, 1, 0, 16000, '2020-01-23', '09:16:14', 2020, 1, 4),
(63, 'INV-20200123000006', '35', '17', 'Ikan Bakar Bumbu Rujak', 57000, 1, 0, 57000, '2020-01-23', '09:31:19', 2020, 1, 4),
(64, 'INV-20200123000006', '35', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-23', '09:31:19', 2020, 1, 4),
(65, 'INV-20200123000006', '35', '65', 'Apple Juice', 15000, 1, 0, 15000, '2020-01-23', '09:31:20', 2020, 1, 4),
(66, 'INV-20200124000001', '16', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-24', '10:37:58', 2020, 1, 4),
(67, 'INV-20200124000001', '16', '35', 'Ice Cappucino', 18000, 1, 0, 18000, '2020-01-24', '10:37:58', 2020, 1, 4),
(68, 'INV-20200124000001', '16', '61', 'Eatery Garden  Sunset', 18000, 4, 0, 72000, '2020-01-24', '10:37:58', 2020, 1, 4),
(69, 'INV-20200124000001', '16', '46', 'Strawberry Milk Shake', 18000, 1, 0, 18000, '2020-01-24', '10:37:58', 2020, 1, 4),
(70, 'INV-20200124000001', '16', '34', 'Teh Tarik', 11000, 1, 0, 11000, '2020-01-24', '10:37:58', 2020, 1, 4),
(71, 'INV-20200124000002', '17', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-24', '12:51:46', 2020, 1, 4),
(72, 'INV-20200124000002', '17', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-24', '12:51:46', 2020, 1, 4),
(73, 'INV-20200124000002', '17', '65', 'Apple Juice', 15000, 1, 0, 15000, '2020-01-24', '12:51:46', 2020, 1, 4),
(74, 'INV-20200124000002', '17', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-24', '12:51:46', 2020, 1, 4),
(75, 'INV-20200124000003', '17', '70', 'Mie Imlek', 20000, 1, 0, 20000, '2020-01-24', '12:53:20', 2020, 1, 4),
(76, 'INV-20200124000004', '16', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-24', '02:01:30', 2020, 1, 4),
(77, 'INV-20200124000004', '16', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-24', '02:01:30', 2020, 1, 4),
(78, 'INV-20200124000005', '33', '22', 'Mie Goreng Kering', 33000, 1, 0, 33000, '2020-01-24', '02:11:25', 2020, 1, 4),
(79, 'INV-20200124000005', '33', '15', 'Ayam Penyet', 40000, 1, 0, 40000, '2020-01-24', '02:11:25', 2020, 1, 4),
(80, 'INV-20200124000005', '33', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-24', '02:11:25', 2020, 1, 4),
(81, 'INV-20200124000005', '33', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-24', '02:11:25', 2020, 1, 4),
(82, 'INV-20200124000005', '33', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-24', '02:11:25', 2020, 1, 4),
(83, 'INV-20200124000006', '4', '70', 'Mie Imlek', 20000, 1, 0, 20000, '2020-01-24', '04:37:52', 2020, 1, 4),
(84, 'INV-20200124000007', '34', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-24', '04:50:08', 2020, 1, 4),
(85, 'INV-20200124000007', '34', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-01-24', '04:50:08', 2020, 1, 4),
(86, 'INV-20200124000008', '35', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-01-24', '06:03:04', 2020, 1, 4),
(87, 'INV-20200124000008', '35', '4', 'Ubi Crispy', 15000, 2, 0, 30000, '2020-01-24', '06:03:04', 2020, 1, 4),
(88, 'INV-20200124000009', '31', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-24', '08:03:25', 2020, 1, 4),
(89, 'INV-20200124000009', '31', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-24', '08:03:25', 2020, 1, 4),
(90, 'INV-20200124000009', '31', '30', 'CAPPUCINO', 16000, 1, 0, 16000, '2020-01-24', '08:03:25', 2020, 1, 4),
(91, 'INV-20200124000009', '31', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-24', '08:03:25', 2020, 1, 4),
(92, 'INV-20200124000010', '33', '20', 'Seafood Pakcoy', 25000, 1, 0, 25000, '2020-01-24', '10:00:06', 2020, 1, 4),
(93, 'INV-20200124000010', '33', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-24', '10:00:06', 2020, 1, 4),
(94, 'INV-20200124000010', '33', '12', 'Nasi Goreng Special', 39000, 2, 0, 78000, '2020-01-24', '10:00:06', 2020, 1, 4),
(95, 'INV-20200124000010', '33', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-24', '10:00:06', 2020, 1, 4),
(96, 'INV-20200124000010', '33', '37', 'Ice Tea', 10000, 2, 0, 20000, '2020-01-24', '10:00:06', 2020, 1, 4),
(97, 'INV-20200125000001', '34', '5', 'Pisang Keju Coklat', 16000, 1, 0, 16000, '2020-01-25', '03:48:46', 2020, 1, 4),
(98, 'INV-20200125000001', '34', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-25', '03:48:46', 2020, 1, 4),
(99, 'INV-20200125000002', '11', '70', 'Mie Imlek', 20000, 2, 0, 40000, '2020-01-25', '04:26:14', 2020, 1, 4),
(100, 'INV-20200125000003', '11', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-25', '04:55:04', 2020, 1, 4),
(101, 'INV-20200125000003', '11', '32', 'Hot Lemon Tea', 11000, 1, 0, 11000, '2020-01-25', '04:55:04', 2020, 1, 4),
(102, 'INV-20200125000003', '11', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-25', '04:55:05', 2020, 1, 4),
(103, 'INV-20200125000004', '12', '2', 'Spice Stick Banana', 16000, 1, 0, 16000, '2020-01-25', '05:13:24', 2020, 1, 4),
(104, 'INV-20200125000004', '12', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-25', '05:13:25', 2020, 1, 4),
(105, 'INV-20200125000005', '11', '70', 'Mie Imlek', 20000, 1, 0, 20000, '2020-01-25', '05:35:34', 2020, 1, 4),
(106, 'INV-20200125000006', '35', '3', 'Spice Stick Casanava', 19000, 1, 0, 19000, '2020-01-25', '05:46:37', 2020, 1, 4),
(107, 'INV-20200125000007', '32', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-25', '08:08:26', 2020, 1, 4),
(108, 'INV-20200125000007', '32', '43', 'Thai Tea Original', 11000, 1, 0, 11000, '2020-01-25', '08:08:26', 2020, 1, 4),
(109, 'INV-20200125000007', '32', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-25', '08:08:26', 2020, 1, 4),
(110, 'INV-20200125000008', '12', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-25', '09:02:09', 2020, 1, 4),
(111, 'INV-20200125000008', '12', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-01-25', '09:02:09', 2020, 1, 4),
(112, 'INV-20200125000008', '12', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-25', '09:02:09', 2020, 1, 4),
(113, 'INV-20200125000008', '12', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-25', '09:02:10', 2020, 1, 4),
(114, 'INV-20200125000009', '12', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-25', '09:16:53', 2020, 1, 4),
(115, 'INV-20200126000001', '11', '2', 'Spice Stick Banana', 16000, 1, 0, 16000, '2020-01-26', '01:39:15', 2020, 1, 4),
(116, 'INV-20200126000001', '11', '66', 'Avocado Juice', 15000, 1, 0, 15000, '2020-01-26', '01:39:15', 2020, 1, 4),
(117, 'INV-20200126000002', '7', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-26', '08:37:59', 2020, 1, 4),
(118, 'INV-20200126000003', '25', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-26', '09:11:45', 2020, 1, 4),
(119, 'INV-20200127000001', '30', '65', 'Apple Juice', 15000, 1, 0, 15000, '2020-01-27', '02:33:56', 2020, 1, 4),
(120, 'INV-20200127000001', '30', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-27', '02:33:56', 2020, 1, 4),
(121, 'INV-20200128000001', '33', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-28', '12:10:01', 2020, 1, 4),
(122, 'INV-20200128000001', '33', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-28', '12:10:01', 2020, 1, 4),
(123, 'INV-20200128000001', '33', '45', 'Thai Tea Green Tea', 13000, 1, 0, 13000, '2020-01-28', '12:10:01', 2020, 1, 4),
(124, 'INV-20200128000002', '12', '23', 'Mie Panggang', 39000, 1, 0, 39000, '2020-01-28', '12:11:32', 2020, 1, 4),
(125, 'INV-20200128000002', '12', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-28', '12:11:32', 2020, 1, 4),
(126, 'INV-20200128000003', '30', '27', 'Beef Bulgogi ', 30000, 2, 0, 60000, '2020-01-28', '01:49:12', 2020, 1, 4),
(127, 'INV-20200128000003', '30', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-28', '01:49:12', 2020, 1, 4),
(128, 'INV-20200128000003', '30', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-28', '01:49:12', 2020, 1, 4),
(129, 'INV-20200128000003', '30', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-01-28', '01:49:12', 2020, 1, 4),
(130, 'INV-20200128000003', '30', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-28', '01:49:12', 2020, 1, 4),
(131, 'INV-20200128000004', '31', '12', 'Nasi Goreng Special', 39000, 1, 0, 39000, '2020-01-28', '04:39:09', 2020, 1, 4),
(132, 'INV-20200128000004', '31', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-28', '04:39:10', 2020, 1, 4),
(133, 'INV-20200128000004', '31', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-28', '04:39:10', 2020, 1, 4),
(134, 'INV-20200128000004', '31', '35', 'Ice Cappucino', 18000, 1, 0, 18000, '2020-01-28', '04:39:10', 2020, 1, 4),
(135, 'INV-20200128000004', '31', '34', 'Teh Tarik', 11000, 1, 0, 11000, '2020-01-28', '04:39:10', 2020, 1, 4),
(136, 'INV-20200128000004', '31', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-28', '04:39:10', 2020, 1, 4),
(137, 'INV-20200128000005', '32', '14', 'Chicken Katsu Teriyaki', 25000, 3, 0, 75000, '2020-01-28', '06:57:28', 2020, 1, 4),
(138, 'INV-20200128000005', '32', '11', 'Steam Rice', 9000, 3, 0, 27000, '2020-01-28', '06:57:28', 2020, 1, 4),
(139, 'INV-20200128000005', '32', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-28', '06:57:28', 2020, 1, 4),
(140, 'INV-20200128000005', '32', '57', 'Lemon Squash', 15000, 1, 0, 15000, '2020-01-28', '06:57:28', 2020, 1, 4),
(141, 'INV-20200128000005', '32', '41', 'Ice Lemon Tea', 12000, 1, 0, 12000, '2020-01-28', '06:57:28', 2020, 1, 4),
(142, 'INV-20200128000005', '32', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-28', '06:57:28', 2020, 1, 4),
(143, 'INV-20200128000006', '32', '19', 'Sukiyaki Pakcoy', 30000, 2, 0, 60000, '2020-01-28', '09:38:06', 2020, 1, 4),
(144, 'INV-20200128000006', '32', '15', 'Ayam Penyet', 40000, 1, 0, 40000, '2020-01-28', '09:38:06', 2020, 1, 4),
(145, 'INV-20200128000006', '32', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-28', '09:38:06', 2020, 1, 4),
(146, 'INV-20200128000006', '32', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-28', '09:38:06', 2020, 1, 4),
(147, 'INV-20200128000006', '32', '33', 'Hot Tea', 10000, 1, 0, 10000, '2020-01-28', '09:38:06', 2020, 1, 4),
(148, 'INV-20200129000001', '31', '18', 'Ikan Bakar Pedas Manis', 57000, 1, 0, 57000, '2020-01-29', '01:19:33', 2020, 1, 4),
(149, 'INV-20200129000001', '31', '28', 'Ayam Geprek', 36000, 1, 0, 36000, '2020-01-29', '01:19:33', 2020, 1, 4),
(150, 'INV-20200129000001', '31', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-29', '01:19:33', 2020, 1, 4),
(151, 'INV-20200129000001', '31', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-29', '01:19:33', 2020, 1, 4),
(152, 'INV-20200129000001', '31', '11', 'Steam Rice', 9000, 2, 0, 18000, '2020-01-29', '01:19:33', 2020, 1, 4),
(153, 'INV-20200129000002', '30', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-29', '01:20:05', 2020, 1, 4),
(154, 'INV-20200129000002', '30', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-29', '01:20:05', 2020, 1, 4),
(155, 'INV-20200129000003', '30', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-29', '01:44:17', 2020, 1, 4),
(156, 'INV-20200129000004', '22', '3', 'Spice Stick Casanava', 19000, 1, 0, 19000, '2020-01-29', '06:36:03', 2020, 1, 4),
(157, 'INV-20200129000004', '22', '9', 'Soup Ubi Bakso', 21000, 1, 0, 21000, '2020-01-29', '06:36:03', 2020, 1, 4),
(158, 'INV-20200129000004', '22', '21', 'Cap Cai', 35000, 1, 0, 35000, '2020-01-29', '06:36:03', 2020, 1, 4),
(159, 'INV-20200129000004', '22', '13', 'Nasi Goreng Seafood', 30000, 2, 0, 60000, '2020-01-29', '06:36:03', 2020, 1, 4),
(160, 'INV-20200129000005', '23', '23', 'Mie Panggang', 39000, 2, 0, 78000, '2020-01-29', '07:07:22', 2020, 1, 4),
(161, 'INV-20200129000005', '23', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-01-29', '07:07:23', 2020, 1, 4),
(162, 'INV-20200129000005', '23', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-01-29', '07:07:23', 2020, 1, 4),
(163, 'INV-20200129000005', '23', '35', 'Ice Cappucino', 18000, 1, 0, 18000, '2020-01-29', '07:07:23', 2020, 1, 4),
(164, 'INV-20200129000005', '23', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-29', '07:07:23', 2020, 1, 4),
(165, 'INV-20200129000005', '23', '64', 'Orange Juice', 15000, 1, 0, 15000, '2020-01-29', '07:07:23', 2020, 1, 4),
(166, 'INV-20200129000006', '4', '14', 'Chicken Katsu Teriyaki', 25000, 2, 0, 50000, '2020-01-29', '07:09:14', 2020, 1, 4),
(167, 'INV-20200129000007', '23', '24', 'Spaghety Aglio Olio', 35000, 2, 0, 70000, '2020-01-29', '08:49:34', 2020, 1, 4),
(168, 'INV-20200129000007', '23', '44', 'Thai Tea Strawberry', 13000, 1, 0, 13000, '2020-01-29', '08:49:34', 2020, 1, 4),
(169, 'INV-20200129000007', '23', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-29', '08:49:34', 2020, 1, 4),
(170, 'INV-20200129000008', '4', '61', 'Eatery Garden  Sunset', 18000, 2, 0, 36000, '2020-01-29', '09:14:05', 2020, 1, 4),
(171, 'INV-20200129000008', '4', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-29', '09:14:05', 2020, 1, 4),
(172, 'INV-20200129000008', '4', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-01-29', '09:14:05', 2020, 1, 4),
(173, 'INV-20200129000008', '4', '22', 'Mie Goreng Kering', 33000, 1, 0, 33000, '2020-01-29', '09:14:05', 2020, 1, 4),
(174, 'INV-20200129000008', '4', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-01-29', '09:14:06', 2020, 1, 4),
(175, 'INV-20200129000008', '4', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-29', '09:14:06', 2020, 1, 4),
(176, 'INV-20200129000009', '32', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-29', '09:14:34', 2020, 1, 4),
(177, 'INV-20200129000009', '32', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-01-29', '09:14:34', 2020, 1, 4),
(178, 'INV-20200129000009', '32', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-29', '09:14:35', 2020, 1, 4),
(179, 'INV-20200130000001', '32', '33', 'Hot Tea', 10000, 2, 0, 20000, '2020-01-30', '09:38:19', 2020, 1, 4),
(180, 'INV-20200130000002', '34', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-30', '10:43:16', 2020, 1, 4),
(181, 'INV-20200130000003', '32', '2', 'Spice Stick Banana', 16000, 1, 0, 16000, '2020-01-30', '04:01:21', 2020, 1, 4),
(182, 'INV-20200130000003', '32', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-30', '04:01:21', 2020, 1, 4),
(183, 'INV-20200130000004', '7', '71', 'BUFFET A', 50000, 1409729, 0, 70486450000, '2020-01-30', '07:59:37', 2020, 0, 4),
(184, 'INV-20200130000005', '32', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-01-30', '08:39:05', 2020, 1, 4),
(185, 'INV-20200130000005', '32', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-01-30', '08:39:05', 2020, 1, 4),
(186, 'INV-20200130000006', '4', '74', 'BUFFET BFI', 1000000, 1, 0, 1000000, '2020-01-30', '09:30:54', 2020, 1, 4),
(187, 'INV-20200130000007', '32', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-01-30', '09:51:29', 2020, 1, 4),
(188, 'INV-20200130000007', '32', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-01-30', '09:51:29', 2020, 1, 4),
(189, 'INV-20200130000007', '32', '33', 'Hot Tea', 10000, 2, 0, 20000, '2020-01-30', '09:51:29', 2020, 1, 4),
(190, 'INV-20200131000001', '11', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-31', '11:05:07', 2020, 1, 4),
(191, 'INV-20200131000002', '11', '27', 'Beef Bulgogi ', 30000, 3, 0, 90000, '2020-01-31', '11:54:15', 2020, 1, 4),
(192, 'INV-20200131000002', '11', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-31', '11:54:15', 2020, 1, 4),
(193, 'INV-20200131000002', '11', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-31', '11:54:15', 2020, 1, 4),
(194, 'INV-20200131000002', '11', '37', 'Ice Tea', 10000, 1, 0, 10000, '2020-01-31', '11:54:15', 2020, 1, 4),
(195, 'INV-20200131000003', '27', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-01-31', '12:27:51', 2020, 1, 4),
(196, 'INV-20200131000003', '27', '22', 'Mie Goreng Kering', 33000, 1, 0, 33000, '2020-01-31', '12:27:51', 2020, 1, 4),
(197, 'INV-20200131000003', '27', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-01-31', '12:27:51', 2020, 1, 4),
(198, 'INV-20200131000003', '27', '45', 'Thai Tea Green Tea', 13000, 2, 0, 26000, '2020-01-31', '12:27:51', 2020, 1, 4),
(199, 'INV-20200131000003', '27', '65', 'Apple Juice', 15000, 1, 0, 15000, '2020-01-31', '12:27:51', 2020, 1, 4),
(200, 'INV-20200131000004', '35', '3', 'Spice Stick Casanava', 19000, 5, 0, 95000, '2020-01-31', '04:15:44', 2020, 1, 4),
(201, 'INV-20200131000005', '30', '9', 'Soup Ubi Bakso', 21000, 2, 0, 42000, '2020-01-31', '08:15:22', 2020, 1, 4),
(202, 'INV-20200131000005', '30', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-31', '08:15:22', 2020, 1, 4),
(203, 'INV-20200131000005', '30', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-31', '08:15:22', 2020, 1, 4),
(204, 'INV-20200131000006', '30', '6', 'French Fries', 16000, 1, 0, 16000, '2020-01-31', '08:37:51', 2020, 1, 4),
(205, 'INV-20200131000007', '4', '51', 'Green Smoothies', 18000, 5, 0, 90000, '2020-01-31', '08:46:59', 2020, 1, 4),
(206, 'INV-20200131000008', '33', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-01-31', '08:50:23', 2020, 1, 4),
(207, 'INV-20200131000008', '33', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-01-31', '08:50:23', 2020, 1, 4),
(208, 'INV-20200131000008', '33', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-01-31', '08:50:23', 2020, 1, 4),
(209, 'INV-20200131000008', '33', '47', 'Vanilla Milk Shake', 18000, 1, 0, 18000, '2020-01-31', '08:50:23', 2020, 1, 4),
(210, 'INV-20200131000008', '33', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-01-31', '08:50:23', 2020, 1, 4),
(211, 'INV-20200131000008', '33', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-31', '08:50:23', 2020, 1, 4),
(212, 'INV-20200131000009', '23', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-31', '08:50:52', 2020, 1, 4),
(213, 'INV-20200131000010', '23', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-01-31', '08:56:45', 2020, 1, 4),
(214, 'INV-20200131000011', '23', '5', 'Pisang Keju Coklat', 16000, 1, 0, 16000, '2020-01-31', '09:12:16', 2020, 1, 4),
(215, 'INV-20200131000011', '23', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-31', '09:12:16', 2020, 1, 4),
(216, 'INV-20200131000011', '23', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-01-31', '09:12:16', 2020, 1, 4),
(217, 'INV-20200131000011', '23', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-01-31', '09:12:16', 2020, 1, 4),
(218, 'INV-20200131000012', '12', '4', 'Ubi Crispy', 15000, 1, 0, 15000, '2020-01-31', '09:16:21', 2020, 1, 4),
(219, 'INV-20200131000012', '12', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-31', '09:16:21', 2020, 1, 4),
(220, 'INV-20200131000013', '23', '51', 'Green Smoothies', 18000, 3, 0, 54000, '2020-01-31', '09:17:04', 2020, 1, 4),
(221, 'INV-20200131000014', '12', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-01-31', '09:20:07', 2020, 1, 4),
(222, 'INV-20200131000015', '23', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-01-31', '09:38:06', 2020, 1, 4),
(223, 'INV-20200131000016', '23', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-01-31', '09:43:58', 2020, 1, 4),
(224, 'INV-20200131000017', '12', '5', 'Pisang Keju Coklat', 16000, 1, 0, 16000, '2020-01-31', '10:01:28', 2020, 1, 4),
(225, 'INV-20200131000017', '12', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-01-31', '10:01:28', 2020, 1, 4),
(226, 'INV-20200131000017', '12', '66', 'Avocado Juice', 15000, 2, 0, 30000, '2020-01-31', '10:01:28', 2020, 1, 4),
(227, 'INV-20200201000001', '31', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-02-01', '12:51:56', 2020, 1, 4),
(228, 'INV-20200201000001', '31', '51', 'Green Smoothies', 18000, 1, 0, 18000, '2020-02-01', '12:51:56', 2020, 1, 4),
(229, 'INV-20200201000002', '34', '13', 'Nasi Goreng Seafood', 30000, 1, 0, 30000, '2020-02-01', '01:32:03', 2020, 1, 4),
(230, 'INV-20200201000002', '34', '37', 'Ice Tea', 10000, 1, 0, 10000, '2020-02-01', '01:32:03', 2020, 1, 4),
(231, 'INV-20200201000003', '4', '77', 'Nasi Soborudon', 15000, 1, 0, 15000, '2020-02-01', '04:47:41', 2020, 1, 4),
(232, 'INV-20200201000004', '7', '80', 'Chicken Koloke Teriyaki Sauce', 15000, 2, 0, 30000, '2020-02-01', '04:48:56', 2020, 1, 4),
(233, 'INV-20200201000005', '11', '80', 'Chicken Koloke Teriyaki Sauce', 15000, 2, 0, 30000, '2020-02-01', '05:21:20', 2020, 1, 4),
(234, 'INV-20200201000006', '12', '77', 'Nasi Soborudon', 15000, 1, 0, 15000, '2020-02-01', '05:24:07', 2020, 1, 4),
(235, 'INV-20200201000007', '23', '22', 'Mie Goreng Kering', 33000, 2, 0, 66000, '2020-02-01', '06:57:31', 2020, 1, 4),
(236, 'INV-20200201000007', '23', '31', 'Hot Chocolate', 18000, 1, 0, 18000, '2020-02-01', '06:57:31', 2020, 1, 4),
(237, 'INV-20200201000008', '17', '16', 'Chicken Steak', 46000, 2, 0, 92000, '2020-02-01', '08:48:27', 2020, 1, 4),
(238, 'INV-20200201000008', '17', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-02-01', '08:48:27', 2020, 1, 4),
(239, 'INV-20200201000008', '17', '5', 'Pisang Keju Coklat', 16000, 1, 0, 16000, '2020-02-01', '08:48:27', 2020, 1, 4),
(240, 'INV-20200201000008', '17', '20', 'Seafood Pakcoy', 25000, 1, 0, 25000, '2020-02-01', '08:48:27', 2020, 1, 4),
(241, 'INV-20200201000008', '17', '60', 'Mineral Water', 9000, 2, 0, 18000, '2020-02-01', '08:48:27', 2020, 1, 4),
(242, 'INV-20200201000008', '17', '40', 'Ice Chocolate', 18000, 1, 0, 18000, '2020-02-01', '08:48:27', 2020, 1, 4),
(243, 'INV-20200201000008', '17', '41', 'Ice Lemon Tea', 12000, 2, 0, 24000, '2020-02-01', '08:48:27', 2020, 1, 4),
(244, 'INV-20200201000008', '17', '35', 'Ice Cappucino', 18000, 1, 0, 18000, '2020-02-01', '08:48:27', 2020, 1, 4),
(245, 'INV-20200201000008', '17', '45', 'Thai Tea Green Tea', 13000, 1, 0, 13000, '2020-02-01', '08:48:27', 2020, 1, 4),
(246, 'INV-20200201000009', '17', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-02-01', '09:09:53', 2020, 1, 4),
(247, 'INV-20200201000010', '23', '7', 'Chicken Wonton', 21000, 1, 0, 21000, '2020-02-01', '10:22:14', 2020, 1, 4),
(248, 'INV-20200201000010', '23', '51', 'Green Smoothies', 18000, 2, 0, 36000, '2020-02-01', '10:22:14', 2020, 1, 4),
(249, 'INV-20200201000010', '23', '61', 'Eatery Garden  Sunset', 18000, 2, 0, 36000, '2020-02-01', '10:22:14', 2020, 1, 4),
(250, 'INV-20200202000001', '4', '21', 'Cap Cai', 35000, 3, 0, 105000, '2020-02-02', '12:04:33', 2020, 1, 4),
(251, 'INV-20200202000001', '4', '13', 'Nasi Goreng Seafood', 30000, 3, 0, 90000, '2020-02-02', '12:04:33', 2020, 1, 4),
(252, 'INV-20200202000001', '4', '11', 'Steam Rice', 9000, 1, 0, 9000, '2020-02-02', '12:04:33', 2020, 1, 4),
(253, 'INV-20200202000001', '4', '5', 'Pisang Keju Coklat', 16000, 2, 0, 32000, '2020-02-02', '12:04:33', 2020, 1, 4),
(254, 'INV-20200202000001', '4', '4', 'Ubi Crispy', 15000, 2, 0, 30000, '2020-02-02', '12:04:33', 2020, 1, 4),
(255, 'INV-20200202000001', '4', '2', 'Spice Stick Banana', 16000, 4, 0, 64000, '2020-02-02', '12:04:33', 2020, 1, 4),
(256, 'INV-20200202000001', '4', '3', 'Spice Stick Casanava', 19000, 3, 0, 57000, '2020-02-02', '12:04:33', 2020, 1, 4),
(257, 'INV-20200202000001', '4', '9', 'Soup Ubi Bakso', 21000, 8, 0, 168000, '2020-02-02', '12:04:33', 2020, 1, 4),
(258, 'INV-20200202000001', '4', '16', 'Chicken Steak', 46000, 1, 0, 46000, '2020-02-02', '12:04:33', 2020, 1, 4),
(259, 'INV-20200202000001', '4', '26', 'Beef Steak', 60000, 1, 0, 60000, '2020-02-02', '12:04:33', 2020, 1, 4),
(260, 'INV-20200202000001', '4', '60', 'Mineral Water', 9000, 15, 0, 135000, '2020-02-02', '12:04:33', 2020, 1, 4),
(261, 'INV-20200202000001', '4', '66', 'Avocado Juice', 15000, 2, 0, 30000, '2020-02-02', '12:04:33', 2020, 1, 4),
(262, 'INV-20200202000001', '4', '33', 'Hot Tea', 10000, 2, 0, 20000, '2020-02-02', '12:04:33', 2020, 1, 4),
(263, 'INV-20200202000001', '4', '37', 'Ice Tea', 10000, 1, 0, 10000, '2020-02-02', '12:04:33', 2020, 1, 4),
(264, 'INV-20200202000001', '4', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-02-02', '12:04:33', 2020, 1, 4),
(265, 'INV-20200202000002', '7', '11', 'Steam Rice', 9000, 2, 0, 18000, '2020-02-02', '01:39:03', 2020, 1, 4),
(266, 'INV-20200202000002', '7', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-02-02', '01:39:03', 2020, 1, 4),
(267, 'INV-20200202000002', '7', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-02-02', '01:39:03', 2020, 1, 4),
(268, 'INV-20200202000002', '7', '50', 'Strawberry Milk Shake', 18000, 1, 0, 18000, '2020-02-02', '01:39:03', 2020, 1, 4),
(269, 'INV-20200202000002', '7', '48', 'Chocolate Milk Shake', 18000, 1, 0, 18000, '2020-02-02', '01:39:03', 2020, 1, 4),
(270, 'INV-20200202000003', '26', '27', 'Beef Bulgogi ', 30000, 2, 0, 60000, '2020-02-02', '07:30:51', 2020, 1, 4),
(271, 'INV-20200202000003', '26', '41', 'Ice Lemon Tea', 12000, 1, 0, 12000, '2020-02-02', '07:30:51', 2020, 1, 4),
(272, 'INV-20200202000003', '26', '43', 'Thai Tea Original', 11000, 1, 0, 11000, '2020-02-02', '07:30:51', 2020, 1, 4),
(273, 'INV-20200202000004', '33', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-02-02', '07:46:54', 2020, 1, 4),
(274, 'INV-20200202000004', '33', '24', 'Spaghety Aglio Olio', 35000, 1, 0, 35000, '2020-02-02', '07:46:54', 2020, 1, 4),
(275, 'INV-20200202000004', '33', '61', 'Eatery Garden  Sunset', 18000, 1, 0, 18000, '2020-02-02', '07:46:54', 2020, 1, 4),
(276, 'INV-20200202000004', '33', '31', 'Hot Chocolate', 18000, 1, 0, 18000, '2020-02-02', '07:46:54', 2020, 1, 4),
(277, 'INV-20200202000005', '35', '19', 'Sukiyaki Pakcoy', 30000, 1, 0, 30000, '2020-02-02', '07:47:46', 2020, 1, 4),
(278, 'INV-20200202000005', '35', '14', 'Chicken Katsu Teriyaki', 25000, 1, 0, 25000, '2020-02-02', '07:47:46', 2020, 1, 4),
(279, 'INV-20200202000006', '23', '7', 'Chicken Wonton', 21000, 1, 0, 21000, '2020-02-02', '08:08:58', 2020, 1, 4),
(280, 'INV-20200202000007', '11', '27', 'Beef Bulgogi ', 30000, 1, 0, 30000, '2020-02-02', '08:49:06', 2020, 1, 4),
(281, 'INV-20200202000007', '11', '60', 'Mineral Water', 9000, 1, 0, 9000, '2020-02-02', '08:49:06', 2020, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `unit_tbl`
--

CREATE TABLE `unit_tbl` (
  `unit_id` int(255) NOT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `miligram` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

--
-- Dumping data for table `unit_tbl`
--

INSERT INTO `unit_tbl` (`unit_id`, `unit_name`, `miligram`, `date`, `time`, `year`, `status`) VALUES
(1, 'Kg', 1000000, '2020-01-16', '06:21:43', 2020, 0),
(2, 'Gram', 1000, '2020-01-16', '06:22:14', 2020, 0),
(3, 'Miligram', 1, '2020-01-16', '06:22:22', 2020, 0),
(4, 'Liter', 1000, '2020-01-16', '06:23:08', 2020, 0),
(5, 'Teaspoon', 11, '2020-01-16', '06:23:22', 2020, 0),
(6, 'Mili Liter', 1, '2020-01-16', '06:24:00', 2020, 0),
(7, 'Pcs', 1, '2020-01-16', '06:24:12', 2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `photo`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$26mKnzSjBK54Sq8mCED/de71U3p0Qn5QesJBIN4uLen9rNtVR4LrG', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1580633639, 1, 'Admin', '', NULL, '', '1.png'),
(2, '::1', 'manager', '$2y$08$dxnEh0ZMcXJYZCKyeHqkbOhC1uN8FPOmNW1p9Iwko7P/KuyUcZcHy', NULL, 'manager@gmail.com', NULL, NULL, NULL, NULL, 1578469777, 1578470748, 1, 'manager', '', '', '', NULL),
(3, '::1', 'kitchen', '$2y$08$zvyu1vPc4vXmaVl6rULoDuvjaDC5AUlapf.AMLUgE0zMlsRgSpRL2', NULL, 'kitchen@gmail.com', NULL, NULL, NULL, NULL, 1578469854, 1580534152, 1, 'kitchen', '', '', '', NULL),
(4, '::1', 'waitress', '$2y$08$SW.2EL3QmFQxD4PJzzWZCO6R/qYnSshUIiwXZsxRGflByeC9n5hRq', NULL, 'waitress@gmail.com', NULL, NULL, NULL, NULL, 1578469872, 1580649598, 1, 'waitress', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(168, 1, 1),
(169, 2, 2),
(170, 3, 3),
(171, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_tbl`
--
ALTER TABLE `asset_tbl`
  ADD PRIMARY KEY (`asset_id`) USING BTREE;

--
-- Indexes for table `calendar_tbl`
--
ALTER TABLE `calendar_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  ADD PRIMARY KEY (`categories_id`) USING BTREE;

--
-- Indexes for table `food_cost_tbl`
--
ALTER TABLE `food_cost_tbl`
  ADD PRIMARY KEY (`food_cost_id`) USING BTREE,
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tbl`
--
ALTER TABLE `item_tbl`
  ADD PRIMARY KEY (`item_id`) USING BTREE,
  ADD KEY `categories_id` (`unit_id`),
  ADD KEY `product_name_item` (`product_name_item`);

--
-- Indexes for table `logger_tbl`
--
ALTER TABLE `logger_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_tbl`
--
ALTER TABLE `menu_tbl`
  ADD PRIMARY KEY (`menu_id`) USING BTREE,
  ADD KEY `product_name_item` (`menu_name`),
  ADD KEY `categories_id` (`categories_id`);

--
-- Indexes for table `operational_tbl`
--
ALTER TABLE `operational_tbl`
  ADD PRIMARY KEY (`operational_id`) USING BTREE;

--
-- Indexes for table `pay_tbl`
--
ALTER TABLE `pay_tbl`
  ADD PRIMARY KEY (`pay_id`) USING BTREE,
  ADD KEY `item_barcode` (`pay`),
  ADD KEY `invoice_number` (`invoice_number`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `profile_tbl`
--
ALTER TABLE `profile_tbl`
  ADD PRIMARY KEY (`profile_id`) USING BTREE;

--
-- Indexes for table `purchase_tbl`
--
ALTER TABLE `purchase_tbl`
  ADD PRIMARY KEY (`purchase_id`) USING BTREE,
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `resivi_tbl`
--
ALTER TABLE `resivi_tbl`
  ADD PRIMARY KEY (`resivi_id`) USING BTREE,
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `food_cost_id` (`unit_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `stock_food_tbl`
--
ALTER TABLE `stock_food_tbl`
  ADD PRIMARY KEY (`stock_food_id`) USING BTREE,
  ADD KEY `categories_id` (`unit_id`),
  ADD KEY `product_name_item` (`product_name_item`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `table_tbl`
--
ALTER TABLE `table_tbl`
  ADD PRIMARY KEY (`table_id`) USING BTREE,
  ADD KEY `product_name_item` (`table_name`);

--
-- Indexes for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `item_barcode` (`menu_id`),
  ADD KEY `product_name_item` (`product_name_item`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  ADD PRIMARY KEY (`unit_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_tbl`
--
ALTER TABLE `asset_tbl`
  MODIFY `asset_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calendar_tbl`
--
ALTER TABLE `calendar_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  MODIFY `categories_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `food_cost_tbl`
--
ALTER TABLE `food_cost_tbl`
  MODIFY `food_cost_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item_tbl`
--
ALTER TABLE `item_tbl`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `logger_tbl`
--
ALTER TABLE `logger_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;
--
-- AUTO_INCREMENT for table `menu_tbl`
--
ALTER TABLE `menu_tbl`
  MODIFY `menu_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `operational_tbl`
--
ALTER TABLE `operational_tbl`
  MODIFY `operational_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pay_tbl`
--
ALTER TABLE `pay_tbl`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `profile_tbl`
--
ALTER TABLE `profile_tbl`
  MODIFY `profile_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `purchase_tbl`
--
ALTER TABLE `purchase_tbl`
  MODIFY `purchase_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resivi_tbl`
--
ALTER TABLE `resivi_tbl`
  MODIFY `resivi_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stock_food_tbl`
--
ALTER TABLE `stock_food_tbl`
  MODIFY `stock_food_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `table_tbl`
--
ALTER TABLE `table_tbl`
  MODIFY `table_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  MODIFY `unit_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
