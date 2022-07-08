-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2022 at 05:06 AM
-- Server version: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.3.28-2+focal

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naul_new1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(1, 'affiliate', 'affiliate_system', '1.2', 1, 'affiliate_banner.jpg', '2020-07-27 01:33:09', '2020-07-27 01:33:09'),
(2, 'refund', 'refund_request', '1.0', 1, 'refund_request.png', '2020-07-27 01:35:18', '2020-07-27 01:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 23, 'kanchanpur jhalari', 'Nepal', 'jhalari', '1234', '9848782987', 0, '2020-07-21 00:45:42', '2020-07-21 00:45:42'),
(2, 39, 'Belauri Muncipality 06 Kanchanpur', 'Nepal', 'Belauri', '977', '9806428228', 0, '2020-07-22 05:40:59', '2020-07-22 05:40:59'),
(3, 39, 'Belauri Muncipality 06', 'Nepal', 'Belauri', '977', '9806428228', 0, '2020-07-22 05:41:32', '2020-07-22 05:41:32'),
(4, 24, 'Gulariya', 'Nepal', 'Gulariya', '20900', '9809465434', 0, '2020-07-23 06:34:56', '2020-07-23 06:34:56'),
(5, 40, 'Belauri', 'Nepal', 'Belauri', '20900', '98373783839', 0, '2020-07-23 08:33:33', '2020-07-23 08:33:33'),
(6, 42, 'Tikapur Kailali', 'Nepal', 'Tikapur', '10901', '9812644206', 0, '2020-07-23 14:08:58', '2020-07-23 14:08:58'),
(7, 46, 'Hetauda', 'Nepal', 'Hetauda', '44107', '9804207911', 0, '2020-07-28 05:01:52', '2020-07-28 05:01:52'),
(8, 48, 'amargadhi', 'Nepal', 'dadeldhura', '0096', '9809456866', 0, '2020-07-30 05:56:36', '2020-07-30 05:56:36'),
(9, 49, 'Tomášikova 15950', 'Afghanistan', 'Bratislava 1 - Old Town', '15950', '+93949801807', 0, '2020-07-31 06:24:26', '2020-07-31 06:24:26'),
(10, 8, 'Tinkune, kathmandu', 'Nepal', 'Kathmandu', '44600', '+977 9801881588', 0, '2020-08-01 06:26:19', '2020-08-01 06:26:19'),
(11, 50, 'nepalgunj,dhumbojhi-1,waterparkroad', 'Nepal', 'bheri', '21900', '9848024977', 0, '2020-08-07 14:13:35', '2020-08-07 14:13:35'),
(12, 50, 'nepalgunj,dhumbojhi-1,waterparkroad', 'Nepal', 'bheri', '21900', '9848024977', 0, '2020-08-07 14:13:36', '2020-08-07 14:13:36'),
(13, 50, 'nepalgunj,dhumbojhi-1,waterparkroad', 'Nepal', 'bheri', '21900', '9848024977', 0, '2020-08-07 14:13:38', '2020-08-07 14:13:38'),
(14, 23, 'nepalgunj-1,dhumbojhi waterparkroaf', 'Nepal', 'bheri, nepalgunj', '21900', '+9779868028345', 0, '2020-08-12 14:07:53', '2020-08-12 14:07:53'),
(15, 53, 'Janaki Rular Municipality-4', 'Nepal', 'Tikapur', '10901', '+9779869748283', 0, '2020-08-15 01:33:51', '2020-08-15 01:33:51'),
(16, 55, 'Bangaun-6', 'Nepal', 'Bhimdatt', '10400', '+9779810661228', 0, '2020-08-19 01:29:20', '2020-08-19 01:29:20'),
(17, 12, 'Attariya', 'Nepal', 'attariya', '10900', '9809465434', 0, '2020-09-06 00:51:35', '2020-09-06 00:51:35'),
(18, 22, 'india', 'Afghanistan', 'null', '446566', 'xaena', 0, '2020-10-07 04:19:11', '2020-10-07 04:19:11'),
(27, 84, 'ktm', 'Nepal', 'morang', 'yu89p', '9876776577', 1, '2020-10-19 13:06:43', '2020-10-20 09:59:07'),
(29, 88, 'attariya', 'Nepal', 'attariya', '400004', '9809465434', 0, '2020-10-19 13:13:41', '2020-10-19 13:13:41'),
(31, 20, 'ddedefefe', 'Nepal', 'fefefe', 'fefefef', '8596325698', 0, '2020-10-19 13:38:04', '2020-10-19 13:38:04'),
(32, 20, 'next', 'Nepal', 'nepal', '89658', '8569874596', 0, '2020-10-19 13:40:07', '2020-10-19 13:40:07'),
(33, 20, 'nextnepal', 'Nepal', 'addede', '856985', '7896542365', 0, '2020-10-19 13:41:00', '2020-10-19 13:41:00'),
(35, 91, 'Attarkya', 'Nepal', 'attariya', NULL, '9812345678', 0, '2020-10-20 05:40:58', '2020-10-20 05:40:58'),
(36, 25, 'attariaya', 'Nepal', 'attariaya', '12377373', '9876544444', 0, '2020-10-20 12:38:22', '2020-10-20 12:38:22'),
(38, 102, 'Kathmandu', 'Nepal', 'Kathmandu', '00', '9861398963', 0, '2020-11-03 12:14:32', '2020-11-03 12:14:32'),
(39, 84, 'morang', 'Nepal', 'letang', '44600', '9865326598', 0, '2020-11-04 08:44:32', '2020-11-04 08:44:32'),
(41, 103, 'koteshwor', 'Nepal', 'ktm', '4568', '9865986532', 1, '2020-11-04 09:10:09', '2020-11-04 09:10:34'),
(42, 104, 'Katan', 'Nepal', 'Mahendranagar Kanchanpur', '10406', '9848901647', 0, '2020-11-05 10:01:00', '2020-11-05 10:01:00'),
(43, 104, 'Katan', 'Nepal', 'Mahendranagar Kanchanpur', '10406', '9848901647', 0, '2020-11-05 10:01:01', '2020-11-05 10:01:01'),
(44, 107, 'Shivnagar', 'Nepal', 'Dhangadhi', '51', '9863361676', 0, '2020-11-07 22:38:24', '2020-11-07 22:38:24'),
(45, 109, 'Surkhet', 'Nepal', 'Birendranagar', '21700', '9841185011', 0, '2020-11-08 09:04:42', '2020-11-08 09:04:42'),
(46, 112, 'Tulsipur', 'Nepal', 'Manpur', '977', '9808671596', 0, '2020-11-09 22:52:28', '2020-11-09 22:52:28'),
(47, 116, 'Bhagatpur 04,Karagar Road', 'Nepal', 'Kanchapur, Mahendranagar', '10406', '9812701288', 0, '2020-11-10 09:07:20', '2020-11-10 09:07:20'),
(48, 117, 'kathmandu', 'Nepal', 'kathmandu', '44600', '9810560652', 0, '2020-11-11 04:49:33', '2020-11-11 04:49:33'),
(49, 122, 'balkumari', 'Nepal', 'lalitpur', '44600', '9800666814', 0, '2020-11-14 00:08:01', '2020-11-14 00:08:01'),
(50, 127, 'Kohalpur 11, dashbigha', 'Nepal', 'Kohalpur', '21904', '+9779858030177', 0, '2020-11-18 18:00:00', '2020-11-18 18:00:00'),
(51, 130, 'dhangadhi 7 manehara (near dlight school(', 'Nepal', 'dhangadhi', NULL, '9804627508', 0, '2020-11-19 06:10:28', '2020-11-19 06:10:28'),
(52, 132, 'balkumari', 'Nepal', 'balkumari', '446600', '9801079136', 0, '2020-11-20 00:49:14', '2020-11-20 00:49:14'),
(53, 137, 'Baijnath 5 Banke', 'Nepal', 'Kohalpur', '081', '9804567668', 0, '2020-11-21 14:22:23', '2020-11-21 14:22:23'),
(54, 139, 'Bardiya', 'Nepal', 'Rajapur', NULL, '9819515187', 0, '2020-11-23 09:39:35', '2020-11-23 09:39:35'),
(55, 141, 'Birendranagar-04, Aerichowk', 'Nepal', 'Surkhet', '00977', '9844809319', 0, '2020-11-24 11:44:02', '2020-11-24 11:44:02'),
(56, 144, 'Belauri Municipality 6 Kanchanpur', 'Nepal', 'Belauri', '104000', '+9779868727999', 0, '2020-11-25 01:15:29', '2020-11-25 01:15:29'),
(57, 145, 'Bardiya Lalibzar shnoshree', 'Nepal', 'Lalibzar  shanoshree', '21814', '9848012798', 0, '2020-11-25 06:40:57', '2020-11-25 06:40:57'),
(58, 145, 'Bardiya Lalibzar shnoshree', 'Nepal', 'Lalibzar  shanoshree', '21814', '9848012798', 0, '2020-11-25 06:41:00', '2020-11-25 06:41:00'),
(59, 146, 'Dhangadhi near worldlink office ratopool-02', 'Nepal', 'Dhangadhi', '10900', '9841053942', 0, '2020-11-25 06:44:07', '2020-11-25 06:44:07'),
(60, 153, 'Tulsipur-6,Near by post office', 'Nepal', 'Tulsipur', '22412', '9857890405', 0, '2020-11-27 21:17:11', '2020-11-27 21:17:11'),
(61, 153, 'Tulsipur-6,Near by post office', 'Nepal', 'Tulsipur', '22412', '9857890405', 0, '2020-11-27 21:17:13', '2020-11-27 21:17:13'),
(62, 155, 'chovar', 'Nepal', 'kathmandu', NULL, '9841376593', 0, '2020-11-29 06:23:55', '2020-11-29 06:23:55'),
(63, 157, 'mahendranagr', 'Nepal', 'mahendranagr kanchanpur', '10400', '9810655947', 0, '2020-11-30 17:18:21', '2020-11-30 17:18:21'),
(64, 161, 'Taranagar satkarchowk', 'Nepal', 'Dhangadi', '10900', '+9779810689610', 0, '2020-12-05 04:38:53', '2020-12-05 04:38:53'),
(65, 123, 'lalitpur', 'Nepal', 'lubu', '77799', '9851096307', 0, '2020-12-06 02:57:24', '2020-12-06 02:57:24'),
(66, 164, 'Mukhtipur 12', 'Nepal', 'Nepalgunj', '21900', '9848126497', 0, '2020-12-06 10:38:32', '2020-12-06 10:38:32'),
(67, 168, 'Kirtipur', 'Nepal', 'Dadeldhura', NULL, '9868769660', 0, '2020-12-07 03:22:21', '2020-12-07 03:22:21'),
(68, 171, 'jogbudha Dadeldhura', 'Nepal', 'parshuram 9 naula', NULL, '9823649274', 0, '2020-12-07 10:43:45', '2020-12-07 10:43:45'),
(69, 172, 'Tikapur', 'Nepal', 'Tikapur', '10901', '9804689298', 0, '2020-12-07 22:15:03', '2020-12-07 22:15:03'),
(70, 175, 'Karkando-18, Nepalgunj Banke', 'Nepal', 'Nepalgunj', '21900', '9814597352', 0, '2020-12-08 01:09:54', '2020-12-08 01:09:54'),
(71, 176, 'Bhimdatta Municipality -18,kanchanpur', 'Nepal', 'Mahendranagar', '10400', '9868700486', 0, '2020-12-08 05:39:23', '2020-12-08 05:39:23'),
(72, 181, 'Vingrelli Chwok Bharatpur', 'Nepal', 'Dang', '22415', '+9779857834598', 0, '2020-12-09 05:20:47', '2020-12-09 05:20:47'),
(73, 182, 'Janakitol-18', 'Nepal', 'Mahendranagar,Kanchanpur', '10400', '9858750667', 0, '2020-12-10 03:54:26', '2020-12-10 03:54:26'),
(75, 183, 'Belauri-10, Sadakghat, Kanchanpur', 'Nepal', 'Calcutta', NULL, '9809410649', 0, '2020-12-10 12:55:14', '2020-12-10 12:55:14'),
(76, 185, 'birendranagar -3,surkhet(yarichowk)', 'Nepal', 'surkhet', 'pu all in one wallet', '9867422922', 0, '2020-12-11 03:12:53', '2020-12-11 03:12:53'),
(77, 27, 'Kohalpur', 'Nepal', 'Kohalpur', NULL, '9809465434', 0, '2020-12-11 10:21:05', '2020-12-11 10:21:05'),
(78, 186, 'Birendranagar 8 Surkhet', 'Nepal', 'Birendranagar', '21700', '±9779868931433', 0, '2020-12-12 01:19:10', '2020-12-12 01:19:10'),
(79, 186, 'Birendranagar 8 Surkhet', 'Nepal', 'Birendranagar', '21700', '±9779868931433', 0, '2020-12-12 01:19:12', '2020-12-12 01:19:12'),
(80, 12, 'Bharatpur-10', 'Nepal', 'Narayangarh', '+977', '9855051158', 0, '2020-12-14 14:27:16', '2020-12-14 14:27:16'),
(81, 243, 'Gongabu', 'Nepal', 'Kathmandu', '0460', '+9779845590200', 0, '2021-10-27 12:36:26', '2021-10-27 12:36:26'),
(82, 8, 'Anamnagar', 'Nepal', 'Kathmandu', '44600', '+9779813815279', 0, '2021-12-06 12:22:38', '2021-12-06 12:22:38'),
(83, 245, 'Munibhairab, Tinkune', 'Nepal', 'Kathmandu', '44600', '9801881583', 0, '2021-12-06 12:24:54', '2021-12-06 12:24:54'),
(84, 250, 'butwal', 'Nepal', 'butwal', '32500', '99555112322', 0, '2021-12-10 07:22:58', '2021-12-10 07:22:58'),
(85, 251, 'Chirtungdhara-09, Palpa', 'Nepal', 'Chirtungdhara', '32500', '8454212222', 0, '2021-12-10 09:13:12', '2021-12-10 09:13:12'),
(86, 265, 'GG', 'Nepal', 'FF', 'FF', '1231231231', 1, '2021-12-13 09:12:32', '2021-12-14 10:03:06'),
(87, 261, 'test', 'Nepal', 'test', 'test', '123123123', 0, '2021-12-13 09:50:50', '2021-12-13 09:50:50'),
(88, 17, 'Kirtipur', 'Nepal', 'Ktm', '9898', '9868152531', 0, '2021-12-14 08:13:02', '2021-12-14 08:13:02'),
(89, 3, 'butwal', 'Nepal', 'Chirtungdhara', '32500', '5412122', 0, '2021-12-15 10:04:36', '2021-12-15 10:04:36'),
(91, 275, 'test', 'Nepal', 'Kathmandu', '1234', '9813957036', 1, '2022-01-04 05:19:09', '2022-01-04 05:35:36'),
(92, 275, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-04 05:19:18', '2022-01-04 05:28:55'),
(93, 234, 'Anamnagar', 'Nepal', 'Kathmandu', '44600', '+9779813815279', 0, '2022-01-11 09:17:20', '2022-01-11 09:17:20'),
(94, 278, 'Tinkunay', 'Nepal', 'Kathmandu', '1234', '9813957036', 0, '2022-01-17 06:46:36', '2022-01-17 06:46:36'),
(95, 268, 'Ullam natus ullamco', 'Nepal', 'Quo ut ut ducimus e', 'Proident cumque vol', '+1 (734) 915-3294', 0, '2022-01-27 11:00:22', '2022-01-27 11:00:22'),
(96, 287, 'kathmandu', 'Nepal', 'kathmandu', '44600', '9841513399', 0, '2022-03-23 21:43:27', '2022-03-23 21:43:27'),
(97, 288, 'baneshwor kathmandu', 'Nepal', 'baneshwor', '44600', '9841513399', 0, '2022-03-23 22:40:32', '2022-03-23 22:40:32'),
(98, 290, 'Gwarko Lalitpur', 'Nepal', 'Kathmandu', '44600', '9815973740', 0, '2022-03-27 03:55:37', '2022-03-27 03:55:37'),
(99, 292, 'Chabahil,', 'Nepal', 'Kathmandu', '2345', '+9779844086792', 0, '2022-03-27 04:01:06', '2022-03-27 04:01:06'),
(100, 311, 'New baneshwor', 'Nepal', 'Kathmandu', '310327', '+9779843545113', 0, '2022-03-27 06:28:59', '2022-03-27 06:28:59'),
(101, 310, 'Gwarko Lalitpur', 'Nepal', 'Kathmandu', '44600', '9815973740', 0, '2022-03-27 06:30:30', '2022-03-27 06:30:30'),
(102, 315, 'Gaushala', 'Nepal', 'Kathmandu', '46600', '+9779809586260', 0, '2022-03-27 06:34:52', '2022-03-27 06:34:52'),
(103, 326, 'asdf', 'Nepal', 'asdf', 'asdf', 'asdf', 0, '2022-03-27 17:28:28', '2022-03-27 17:28:28'),
(104, 330, 'KTM', 'Nepal', 'kathmandu', '446600', '9841513399', 0, '2022-03-28 05:10:44', '2022-03-28 05:10:44'),
(105, 332, 'KTM', 'Nepal', 'kathmandu', '446600', '9841513399', 0, '2022-03-28 07:23:11', '2022-03-28 07:23:11'),
(106, 244, 'Kathmandu', 'Nepal', 'Ktm', '1234', '9843766625', 0, '2022-03-28 08:10:14', '2022-03-28 08:10:14'),
(107, 348, 'aaa', 'Nepal', 'aaa', '123', '123', 0, '2022-03-29 05:16:20', '2022-03-29 05:16:20'),
(108, 364, 'maitidevi', 'Nepal', 'kathmandu', '12444', '9843018383', 0, '2022-03-31 13:55:33', '2022-03-31 13:55:33'),
(109, 365, 'Mandikatar', 'Nepal', 'kathmandu', '123', '+977-9843766625', 0, '2022-04-01 07:11:06', '2022-04-01 07:11:06'),
(110, 366, 'Maitidevi  Temple  Kathmandu', 'Nepal', 'kathmandu', '0012', '9849652394', 0, '2022-04-03 12:35:14', '2022-04-03 12:35:14'),
(111, 368, 'Maitidevi  Temple  Kathmandu', 'Nepal', 'kathmandu', '0012', '9818244143', 0, '2022-04-03 14:01:41', '2022-04-03 14:01:41'),
(114, 370, 'Imadol oppsite off Mega Bank', 'Nepal', 'Lalitpur', '44700', '9861418827', 0, '2022-04-07 05:39:27', '2022-04-07 05:39:27'),
(115, 377, 'Hakatole-17', 'Nepal', 'Lalitpur', '44600', '+9779849944647', 0, '2022-04-27 07:45:51', '2022-04-27 07:45:51'),
(116, 379, 'Nepal', 'Nepal', 'Kathmandu', '+977', '9841039552', 0, '2022-04-27 10:39:00', '2022-04-27 10:39:00'),
(117, 381, 'lalitpur satdobato', 'Nepal', 'Lalitpur', '44600', '9843559712', 0, '2022-05-03 10:59:00', '2022-05-03 10:59:00'),
(118, 383, 'Budhanilkantha', 'Nepal', 'Kathmandu', '44600', '1234567890', 0, '2022-05-05 05:26:03', '2022-05-05 05:26:03'),
(119, 389, 'Dhapasi, Kathmandu\r\nDhapasi', 'Nepal', 'Kathmandu', '44601', '09846641469', 0, '2022-05-21 01:38:33', '2022-05-21 01:38:33'),
(120, 468, 'dfin', 'Nepal', 'ktm', '4600', '987654323', 0, '2022-06-07 12:09:05', '2022-06-07 12:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_configs`
--

CREATE TABLE `affiliate_configs` (
  `id` int(11) NOT NULL,
  `type` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_configs`
--

INSERT INTO `affiliate_configs` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'verification_form', '[{\"type\":\"select\",\"label\":\"Suscipit saepe nulla\",\"options\":\"null\"},{\"type\":\"text\",\"label\":\"Et harum optio libe\",\"options\":\"null\"},{\"type\":\"multi_select\",\"label\":\"Odio quos ipsa aut\",\"options\":\"[\\\"Autem ad obcaecati d\\\",\\\"Vel rerum distinctio\\\",\\\"Voluptates et magnam\\\"]\"},{\"type\":\"file\",\"label\":\"Citizenship Back\",\"options\":\"[\\\"Autem ad obcaecati d\\\",\\\"Vel rerum distinctio\\\",\\\"Voluptates et magnam\\\"]\"},{\"type\":\"file\",\"label\":\"Citizenship Back\",\"options\":\"[\\\"Autem ad obcaecati d\\\",\\\"Vel rerum distinctio\\\",\\\"Voluptates et magnam\\\"]\"}]', '2021-09-23 06:34:50', '2021-09-23 00:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_options`
--

CREATE TABLE `affiliate_options` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf32_unicode_ci DEFAULT NULL,
  `percentage` double NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_options`
--

INSERT INTO `affiliate_options` (`id`, `type`, `details`, `percentage`, `status`, `created_at`, `updated_at`) VALUES
(2, 'user_registration_first_purchase', NULL, 20, 1, '2020-03-03 05:08:37', '2020-03-05 03:56:30'),
(3, 'product_sharing', '{\"commission\":\"3\",\"commission_type\":\"percent\"}', 20, 1, '2020-03-08 01:55:03', '2020-08-24 01:29:33'),
(4, 'category_wise_affiliate', '[{\"category_id\":\"1\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"2\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"3\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"4\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"5\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"6\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"7\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"8\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"9\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"10\",\"commission\":\"3\",\"commission_type\":\"percent\"},{\"category_id\":\"11\",\"commission\":\"3\",\"commission_type\":\"percent\"}]', 0, 1, '2020-03-08 01:55:03', '2021-06-01 03:54:37'),
(5, 'category_wise_affiliate', NULL, 0, 0, '2020-07-27 03:20:43', '2020-07-27 03:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_payments`
--

CREATE TABLE `affiliate_payments` (
  `id` int(11) NOT NULL,
  `affiliate_user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `affiliate_payments`
--

INSERT INTO `affiliate_payments` (`id`, `affiliate_user_id`, `amount`, `payment_method`, `payment_details`, `created_at`, `updated_at`) VALUES
(2, 1, 20.00, 'Paypal', NULL, '2020-03-10 02:04:30', '2020-03-10 02:04:30'),
(3, 1, 30.00, 'Bank', NULL, '2020-07-27 04:12:35', '2020-07-27 04:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE `affiliate_users` (
  `id` int(11) NOT NULL,
  `paypal_email` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `bank_information` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `informations` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `balance` double(10,2) NOT NULL DEFAULT 0.00,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_users`
--

INSERT INTO `affiliate_users` (`id`, `paypal_email`, `bank_information`, `user_id`, `informations`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(1, 'demo@gmail.com', '123456', 8, NULL, 0.00, 1, '2020-03-09 05:35:07', '2021-09-23 00:37:17'),
(2, NULL, NULL, 23, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Yogesh badayak\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"yogeshbadayak1@gmail.com\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Attariya\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"9809465434\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"via my website\"},{\"type\":\"text\",\"label\":null,\"value\":\"jpt\"},{\"type\":\"select\",\"label\":null,\"value\":null}]', 0.00, 1, '2020-08-24 01:40:38', '2020-09-07 09:30:58'),
(3, NULL, NULL, 75, '[{\"type\":\"select\",\"label\":\"Suscipit saepe nulla\",\"value\":null},{\"type\":\"text\",\"label\":\"Et harum optio libe\",\"value\":\"w3worldxyz@gmail.com\"},{\"type\":\"multi_select\",\"label\":\"Odio quos ipsa aut\",\"value\":\"[\\\"Autem ad obcaecati d\\\",\\\"Vel rerum distinctio\\\",\\\"Voluptates et magnam\\\"]\"}]', 0.00, 1, '2020-09-12 15:19:16', '2020-10-29 06:08:49'),
(4, NULL, NULL, 65, '[{\"type\":\"select\",\"label\":\"Suscipit saepe nulla\",\"value\":null},{\"type\":\"text\",\"label\":\"Et harum optio libe\",\"value\":\"yogeshbadayak1@gmail.com\"},{\"type\":\"multi_select\",\"label\":\"Odio quos ipsa aut\",\"value\":\"[\\\"Voluptates et magnam\\\"]\"}]', 0.00, 1, '2020-10-29 06:06:12', '2020-10-29 06:08:38'),
(5, NULL, NULL, 133, '[{\"type\":\"select\",\"label\":\"Suscipit saepe nulla\",\"value\":null},{\"type\":\"text\",\"label\":\"Et harum optio libe\",\"value\":\"???\"},{\"type\":\"multi_select\",\"label\":\"Odio quos ipsa aut\",\"value\":\"[\\\"Voluptates et magnam\\\"]\"}]', 0.00, 0, '2020-11-20 14:53:52', '2020-11-20 14:53:52'),
(10, NULL, NULL, 218, '[{\"type\":\"select\",\"label\":\"Suscipit saepe nulla\",\"value\":null},{\"type\":\"text\",\"label\":\"Et harum optio libe\",\"value\":\"sdhsjhd\"},{\"type\":\"multi_select\",\"label\":\"Odio quos ipsa aut\",\"value\":\"[\\\"Vel rerum distinctio\\\"]\"},{\"type\":\"file\",\"label\":\"Citizenship Back\",\"value\":\"uploads\\/affiliate_verification_form\\/wt7XGrZ7bwODagcbCCUcS6jQRlLMh326dQk5HDTf.jpg\"},{\"type\":\"file\",\"label\":\"Citizenship Back\",\"value\":\"uploads\\/affiliate_verification_form\\/L4Lvx57ECZbjOuhOfDgDSgaEmD0ZhGldmPHAShkk.jpg\"}]', 0.00, 0, '2021-09-28 06:23:03', '2021-09-28 06:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13'),
(3, 'Storage', '2020-06-03 17:57:07', '2020-06-03 17:57:07'),
(4, 'Memory', '2020-06-03 17:57:20', '2020-06-03 17:57:20'),
(5, 'Capacity', '2020-06-03 19:39:10', '2020-06-03 19:39:10'),
(6, 'Load capacity', '2020-06-03 19:39:23', '2020-06-03 19:39:23'),
(7, 'Wheel', '2020-06-03 19:39:35', '2020-06-03 19:39:35'),
(8, 'Weight', '2020-06-03 19:39:46', '2020-06-03 19:39:46'),
(9, 'sleeve', '2020-06-03 19:39:59', '2020-06-03 19:39:59'),
(10, 'Lace', '2020-06-03 19:40:31', '2020-06-03 19:40:31'),
(11, 'Bulbs', '2020-06-03 19:40:42', '2020-06-03 19:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(5, 'uploads/banners/aDrt9EjXDVieqlD6wWNvLDl44vyomvKyjJnxqoPx.jpg', '#', 1, 1, '2019-03-12 05:58:41', '2021-09-29 05:47:44'),
(9, 'uploads/banners/WycbUlHvzuuWKmS28HUMkZLbb2tXRhxvkbx18b7i.jpg', '#', 1, 1, '2019-06-11 05:00:15', '2021-09-29 05:48:05'),
(10, 'uploads/banners/CciphgFcMMlaYzQGHaFItKwSjHqaBRp18H2rKFGs.jpg', '#', 1, 1, '2019-06-11 05:00:24', '2021-09-29 05:48:33'),
(12, 'uploads/banners/ODbQKBCfsjYC5p5sbGgMCLPq8oNqPFPbT5VrxSS6.jpeg', '#', 1, 0, '2020-06-03 17:49:59', '2021-09-29 05:48:32'),
(14, 'uploads/banners/33TmycGZqwHpBYibW8SG1LAjLchYVrriwQmXD5dr.jpg', 'https://almandu.com/search?category=men-clothing-fashion', 2, 1, '2020-06-06 18:51:51', '2021-09-29 05:38:57'),
(15, 'uploads/banners/AAR5mdZYtIar7EsaAdvvJLr3JmvOcIGMPSEOrZO8.jpg', '#', 2, 1, '2020-06-06 18:53:04', '2021-09-29 05:39:10'),
(16, 'uploads/banners/1XCDRGowNBTP1wRu7kJMSsBZW3fs4KoFhIn5y8ak.jpg', 'fb.com', 2, 1, '2021-09-29 05:40:02', '2021-09-29 05:40:25'),
(17, 'uploads/banners/2TS517shrx8fJNTLeujmqyBts4Fyr8wHETLk7BLy.jpg', 'youtube.com', 2, 1, '2021-09-29 05:40:20', '2021-09-29 05:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `becomeavendor`
--

CREATE TABLE `becomeavendor` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `h2` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `about1` longtext DEFAULT NULL,
  `f1text` varchar(255) DEFAULT NULL,
  `f2text` varchar(255) DEFAULT NULL,
  `f3text` varchar(255) DEFAULT NULL,
  `f4text` varchar(255) DEFAULT NULL,
  `f1subtext` varchar(255) DEFAULT NULL,
  `f2subtext` varchar(255) DEFAULT NULL,
  `f3subtext` varchar(255) DEFAULT NULL,
  `f4subtext` varchar(255) DEFAULT NULL,
  `about2h` varchar(255) DEFAULT NULL,
  `about2` longtext DEFAULT NULL,
  `af1` varchar(255) DEFAULT NULL,
  `af2` varchar(255) DEFAULT NULL,
  `af3` varchar(255) DEFAULT NULL,
  `af4` varchar(255) DEFAULT NULL,
  `af5` varchar(255) DEFAULT NULL,
  `af6` varchar(255) DEFAULT NULL,
  `afs1` varchar(255) DEFAULT NULL,
  `afs2` varchar(255) DEFAULT NULL,
  `afs3` varchar(255) DEFAULT NULL,
  `afs4` varchar(255) DEFAULT NULL,
  `afs5` varchar(255) DEFAULT NULL,
  `afs6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `becomeavendor`
--

INSERT INTO `becomeavendor` (`id`, `image`, `h1`, `h2`, `url`, `about1`, `f1text`, `f2text`, `f3text`, `f4text`, `f1subtext`, `f2subtext`, `f3subtext`, `f4subtext`, `about2h`, `about2`, `af1`, `af2`, `af3`, `af4`, `af5`, `af6`, `afs1`, `afs2`, `afs3`, `afs4`, `afs5`, `afs6`) VALUES
(1, '20220105085547.jpg', 'Open your store on Naulobazar & reach millions of buyers all over the Nepal.', 'There\'s no brtter way to showcase your products to a massive, tech-savy audience.', 'shops/create', 'Our contracts are based on the idea that a happy vendor makes for the best partner. Watch your products sell on Naulobazar and grow your business with every sale.', 'FREE COMMISSON', 'NATIONWIDE DELIVERY', 'MONTHLY TRAFFIC', 'FLATFORM SUPPORT', 'Open and operate an online store at no cost', 'Sell across the nation', 'Grap to chance to reach a large customer base', 'Assist you managing your store and orders', 'About Vendor Program', 'Naulobazar E-Commerce gives you a chance to quickly and easily find the phone you want and have it delivered to your home in no time, regardless of your location, as long as it in one of the countries of the EU.When a company is in the business of selling large equipment or technology to businesses, often purchasing through cash is difficult. But the customer might not really be interested in taking a loan and going through all the hassle in order to make that purchase. In such a case, the company provides financial support to the customer through a vendor program like paying in instalments. In a vendor leasing program, the company is effectively buying it\'s own products at that point of time and still increasing it\'s sales.', '30.000+', '1.949', '15.000+', '1M', '47%', '89', 'REGISTERED USERS', 'SELLERS', 'DAILY ORDERED', 'DAILY PAGE VISITS', 'GROWTH PER YEAR', 'TOP GLOBAL BRANDS');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Acer', 'uploads/brands/3tXH1PR2HHzVYXisSnzpnsyf7dYZh2xrH1Fez5w1.png', 1, 'ascer', 'Acer product', NULL, '2019-03-12 06:05:56', '2020-06-03 17:30:14'),
(2, 'Apple', 'uploads/brands/sEkaIm2fidDwOknvjpviQE7qBavx9JRBj16D9ByE.png', 1, 'apple', 'Apple Company in nepal', NULL, '2019-03-12 06:06:13', '2020-06-03 17:29:27'),
(3, 'Adidas', 'uploads/brands/eaYA6YMPMBLAmWMHmBgcWDHW13uLL70kpyzdqwxs.png', 1, 'Adidas-NK2sJ', 'adidas products', NULL, '2020-06-03 17:31:19', '2020-06-03 19:14:13'),
(4, 'Asus', 'uploads/brands/yQ5TbnYMzTdIzUJr8o0DExywEwhb3IhpM9uGx19B.png', 1, 'Asus-TcgNt', 'asus prodcut', 'asus nepal', '2020-06-03 17:32:30', '2020-06-03 19:14:13'),
(5, 'TITAN', 'uploads/brands/CLHJI3hbdKjw1jvhoO82PnuEAEvyQCCTrpx5IiCi.jpeg', 1, 'TITAN-uuwjK', 'Titan product', 'Titan nepal', '2020-06-04 11:51:29', '2020-06-04 14:52:21'),
(6, 'Usupso', 'uploads/brands/JCmLiP6uPmOFDMlOYt8dMPk49i7pkz9pNsaf76iG.png', 0, 'Usupso-PnUYk', 'Usupso product', 'Usupso product in Nepal', '2020-06-04 11:55:02', '2020-06-04 11:57:18'),
(7, 'Nyptra', 'uploads/brands/FaBojd1ziTcLdkuiCwBPrGDpXPhUye5HHy12bW1n.png', 1, 'Nyptra-cjQ7q', 'Nyptra pant', 'Nyptra pant in Nepal', '2020-06-04 11:56:57', '2020-06-04 14:52:21'),
(8, 'Jhonson', 'uploads/brands/RGe47tDwiUAfo1TbElVFF7uvKJcl64YYIRpmsaTe.png', 0, 'Jhonson-KAJTk', 'Jhonson product', 'Jhonson products in Nepal', '2020-06-04 11:59:35', '2020-06-04 11:59:35'),
(9, 'Oppo', 'uploads/brands/VOlBhwwo5rkehErIzXIHYIem0jNDm2tStbAyQjcB.png', 0, 'Oppo-KZGOb', 'Oppo moble', 'Oppo mobile in Nepal', '2020-06-04 12:04:13', '2020-06-04 12:04:13'),
(10, 'KTM Bike', 'uploads/brands/DoG5KgWVP3Th2D5R1nYSUgm5mxJxW7k26L66fDXp.png', 0, 'KTM-Bike-Bq4FZ', 'KTM RC 200', 'KTM Bikes in Nepal', '2020-06-05 16:31:30', '2020-06-05 16:31:30'),
(11, 'Alda', 'uploads/brands/AaPLg9KuuLtOjHRs93WMlCLb38tFvNn7RwjUYgrj.jpeg', 0, 'Alda-mk2SB', 'Alda Products', 'Buy Alda Products', '2020-06-08 09:24:35', '2020-06-08 09:24:35'),
(12, 'Baltra', 'uploads/brands/k4nuHBWbg34H3HIcaQz7RNGz6a1ZrQgecVFNUpq2.jpeg', 0, 'Baltra-gSgtG', 'Bultra Products', 'Buy Baltra prodcuts', '2020-06-08 09:25:06', '2020-06-08 09:25:06'),
(13, 'Brother', 'uploads/brands/X3GEscpHPnMrHHcgRu5ihHcQLY8x8hYW4ZuFrdwz.jpeg', 0, 'Brother-qDRRR', 'brother products', 'buy brother products', '2020-06-08 09:25:51', '2020-06-08 09:26:01'),
(14, 'Capella', 'uploads/brands/sz4NpZ21QeJgwhQ9RPTiTWdyVcUIXaNT94J84xo1.jpeg', 0, 'Capella-8KKnw', 'capella product', 'buy capella products', '2020-06-08 09:26:31', '2020-06-08 09:26:31'),
(15, 'CG', 'uploads/brands/9Euiu1y0yQzFuoSw6JJAL4Kfc2mIr0mSNcFgfL0I.jpeg', 0, 'CG-wzxEL', 'cg products', 'Buy CG brands products', '2020-06-08 09:27:02', '2020-06-08 09:27:02'),
(16, 'Dekha Herbals', 'uploads/brands/cDlKHyWLb0RbMHreml7hUpGlgbbx3w0DRsEuHnON.jpeg', 0, 'Dekha-Herbals-4tmBR', 'dekha herbals', 'Buy dekha-herbals', '2020-06-08 09:30:00', '2020-06-08 09:30:00'),
(17, 'Digicom', 'uploads/brands/Hp3Zcby0FsXpuDOwwz1O1NCLcS1fAiPmomaHxvAp.jpeg', 0, 'Digicom-4TedT', 'digicome', 'Get digicom products', '2020-06-08 09:30:42', '2020-06-08 09:30:42'),
(18, 'Eset Antivirus', 'uploads/brands/IrZ3xbS3FsUI4lZtrEborR00gKFtQe8qoREexwe9.jpeg', 0, 'Eset-Antivirus-M87FV', 'Eset Antivirus', 'Eset Antivirus', '2020-06-08 09:31:15', '2020-06-08 09:31:15'),
(19, 'Feber', 'uploads/brands/dZv5JYjDvJG9jedzJp3KyhMyLOg3RPIp5Jq5wyNR.jpeg', 0, 'Feber-L6emm', 'Feber', 'Feber', '2020-06-08 09:31:39', '2020-06-08 09:31:39'),
(20, 'Happy Feet', 'uploads/brands/DMzFcr7rAVoNXwz0FlZObPMjHeJZav3qPoKsuEEf.jpeg', 0, 'Happy-Feet-sZaRv', 'Happy Feet', 'Happy Feet', '2020-06-08 09:31:59', '2020-06-08 09:31:59'),
(21, 'Holistic Health', 'uploads/brands/8hJrio093yIRs8F8KP36PEzZXWXk1uEOYcbepVHi.jpeg', 0, 'Holistic-Health-z0bEF', 'Holistic Health', 'Holistic Health', '2020-06-08 09:32:26', '2020-06-08 09:32:26'),
(22, 'Johnnie Walker', 'uploads/brands/WjUqO2tCK4HzTJ176qk7kEsJu9shCLl6fDGqFoKn.jpeg', 0, 'Johnnie-Walker-h6QQZ', 'Johnnie Walker', 'Johnnie Walker', '2020-06-08 09:32:54', '2020-06-08 09:32:54'),
(23, 'Juwas', 'uploads/brands/XHzojAHRgNp1YISFwZXMfB6nJopoxr6cO6WFd2MB.jpeg', 0, 'Juwas-4jtRW', 'Juwas', 'Juwas', '2020-06-08 09:33:15', '2020-06-08 09:33:15'),
(24, 'Kaku', 'uploads/brands/Qaqz7yIfAvfM9nYKmohVATdMrX4vUFKzRcMZL8ON.jpeg', 0, 'Kaku-gIE2T', 'Kaku', 'Kaku', '2020-06-08 09:33:34', '2020-06-08 09:33:34'),
(25, 'Kaspersky', 'uploads/brands/35oOHJaYpNtbaIvdPSerIDpFu4PKsfTXL662lZtA.jpeg', 0, 'Kaspersky-4J1Tj', 'Kaspersky', 'Kaspersky', '2020-06-08 09:33:54', '2020-06-08 09:33:54'),
(26, 'Kent', 'uploads/brands/eHplokr8GeZ4J6LbnwizXSTBDYKO8IKAQHTaWnST.jpeg', 0, 'Kent-BGUbf', 'kent', 'kent', '2020-06-08 09:34:08', '2020-06-08 09:34:08'),
(27, 'Livpure Water', 'uploads/brands/kUUJZmKLwfDNkiVY7oi7iRZeyA1skuvLlYlXEzr6.jpeg', 0, 'Livpure-Water-DFYJC', 'Livpure Water', 'Livpure Water', '2020-06-08 09:34:36', '2020-06-08 09:34:36'),
(28, 'Mely', 'uploads/brands/bGzZc99r0N34phFnH73Q2qui6UT0NEaFT1NfPLn5.jpeg', 0, 'Mely-Sm7fZ', 'mely', 'mely', '2020-06-08 09:34:53', '2020-06-08 09:34:53'),
(29, 'Naviforce', 'uploads/brands/t1JIoRtIdPvynkYGI42YjH1BWz7r3koj4SslKVGP.jpeg', 0, 'Naviforce-Rs6uJ', 'Naviforce', 'Naviforce', '2020-06-08 09:35:19', '2020-06-08 09:35:19'),
(30, 'Nikon', 'uploads/brands/tt7yLjAXIfByQrch5Ptc3FD0QRbUepC9TFZMmnS5.jpeg', 0, 'Nikon-ogoKH', 'Nikon products', 'Nikon Products', '2020-06-08 09:35:43', '2020-06-08 09:35:43'),
(31, 'Ptron', 'uploads/brands/kkoQ8hbbQvq9elU0YrP1SPCALmXwGwf270ubXwZS.jpeg', 0, 'Ptron-ir2uz', 'ptron', 'ptron', '2020-06-08 09:36:05', '2020-06-08 09:36:05'),
(32, 'Samsung', 'uploads/brands/nGyGINIlPYemGc10KRZ9CnVP02PxegVjaeJqOa40.jpeg', 0, 'Samsung-JHjHY', 'Samsung', 'Samsung', '2020-06-08 09:36:24', '2020-06-08 09:36:24'),
(33, 'SRI', 'uploads/brands/QjRjCIhNSHZWsPoITZMzLN1zcAFvSeCuTLdDJfy5.jpeg', 0, 'SRI-47goK', 'sri', 'sri', '2020-06-08 09:36:39', '2020-06-08 09:36:39'),
(34, 'Tenda', 'uploads/brands/pqnOk8FDY9g1izSelCQJP3PwcR4IxrQZM408BFEj.jpeg', 0, 'Tenda-ARX36', 'tenda products', 'tenda products', '2020-06-08 09:37:03', '2020-06-08 09:37:03'),
(35, 'Tesla', 'uploads/brands/PPc1kxaq0SmiroXoV9vyzxOfcFO8G3D6JOFjhjpG.jpeg', 0, 'Tesla-mGjI7', 'tesla products', 'Tesla', '2020-06-08 09:37:22', '2020-06-08 09:37:22'),
(36, 'totolink', 'uploads/brands/EPRj4sScHpmTZFw6TLCCkDxTs251SCiuhdvWcvgT.jpeg', 0, 'totolink-lNa5z', 'totolink prodcuts', 'totolink products', '2020-06-08 09:37:48', '2020-06-08 09:37:48'),
(37, 'Transcend', 'uploads/brands/jryVFKkjzZ0jYLK668eXHY5aSG3W0FhmA2hidNo8.jpeg', 0, 'Transcend-NpnfC', 'transcend', 'Transcend', '2020-06-08 09:38:15', '2020-06-08 09:38:15'),
(38, 'View Sonic', 'uploads/brands/WMcTr9uvzVvJ5E5kFcpZdzdTiRc70HARID2wIOTb.jpeg', 0, 'View-Sonic-KN3I3', 'view sonic', 'view sonic', '2020-06-08 09:38:56', '2020-06-08 09:38:56'),
(39, 'Virjeans', 'uploads/brands/CCzJvxFgdO3n9RgkcVddWcOAr6tGuc52iRE1Z52b.jpeg', 0, 'Virjeans-zqbsM', 'Virjeans', 'Virjeans', '2020-06-08 09:39:22', '2020-06-08 09:39:22'),
(40, 'Amul', 'uploads/brands/H3p2zV97vRl6Zn3kL2D4ezEFy14hKi6QYRpBUiPv.jpeg', 0, 'Amul-GLqoQ', 'amul products', 'Amul Products', '2020-06-08 11:31:08', '2020-06-08 11:31:08'),
(41, 'Bikano', 'uploads/brands/Kv19WdzW9OKYg4f0tVj3Hoo3FCQUUfGCokk9x4xF.jpeg', 0, 'Bikano-KVFO1', 'bikano product', 'bikano products', '2020-06-08 11:31:36', '2020-06-08 11:31:36'),
(42, 'DDC', 'uploads/brands/G072rDPrXcg0Mkm7d1oe8F5qzMIOAY5hmwlgsOSx.jpeg', 0, 'DDC-eNHNm', 'ddc products', 'DDC products', '2020-06-08 11:32:37', '2020-06-08 11:32:37'),
(43, 'Hulas', 'uploads/brands/DlBFy6R84w53RIiyntodBM74o9bkY8nem8uer9zS.jpeg', 0, 'Hulas-inbUL', 'hulas products', 'Hulas', '2020-06-08 11:33:17', '2020-06-08 11:33:17'),
(44, 'Aoyu', 'uploads/brands/jTobfBKdgp3LgD4gZp30Olbb9SCYOgpGEASFZtcA.jpeg', 0, 'None-JsKaN', 'Aoyu', 'Aoyu Face Cleanser', '2020-06-08 13:21:56', '2020-06-08 13:34:09'),
(45, 'RoHS', 'uploads/brands/69A4b9qeg21srSp5ywKFqtqpr4Xf2YsI7lyyzi1M.jpeg', 0, 'RoHS-iLy9P', 'RoHS LED light', 'RoHS LED light', '2020-06-08 13:47:12', '2020-06-08 13:47:12'),
(46, 'Autumnz', 'uploads/brands/pJgNYD8mDq87pMWF9nROWvzkQzC0pJSJycHbjgfS.png', 0, 'Autumnz-c20ze', 'Autumnz', 'Autumnz (Baby Detergent)', '2020-06-08 14:00:51', '2020-06-08 14:00:51'),
(47, 'CASIO', 'uploads/brands/UG6C2J07pC5h9bD9Hug48YXX8P37KkpIavppSnPE.jpeg', 0, 'CASIO-pkqgW', 'CASIO watch', 'CASIO watch in Nepal', '2020-06-08 14:07:08', '2020-06-08 14:07:08'),
(48, 'Kilofly', 'uploads/brands/2aw47WDHAQGKUXFtcXpVj5d08ML7yofT2KTwbUWO.jpeg', 0, 'Kilofly-mrrSJ', 'Kilofy', 'Kilofly product', '2020-06-08 14:35:27', '2020-06-08 14:35:27'),
(49, 'Sprite', 'uploads/brands/2M4JByDruZx4D0cYRAJuXRXXDTP309JgbmxoPs36.jpeg', 0, 'Sprite-Q0qPe', 'Sprite', 'Sprite products', '2020-06-08 14:39:37', '2020-06-08 14:39:37'),
(50, 'Nescafe', 'uploads/brands/4poVyrlnF8y9DzpaRAPhiV1AgUDGT3OeJR8yXzKd.jpeg', 0, 'Nescafe-ecdko', 'Coffee Products', 'Coffee', '2020-06-09 08:19:39', '2020-06-09 08:20:15'),
(51, 'BRU Instant Coffee', 'uploads/brands/pqidXBuaU6bEsmnFOvUtT7pAr94hT8a4AUYaLqr7.jpeg', 0, 'BRU-Instant-Coffee-Hpi8q', 'Coffee Products', 'BRU Instant Coffee products in Nepal', '2020-06-09 08:22:06', '2020-06-09 08:22:06'),
(52, 'MacCoffe', 'uploads/brands/hHfxgxE0Wm33B1knSIpu1PWjVgPHV2l1YlJ25xAY.jpeg', 0, 'MacCoffe-HmxQI', 'Coffee Products', 'MacCoffee products in Nepal', '2020-06-09 08:27:37', '2020-06-09 08:27:37'),
(53, 'Red Cherry Coffee( JUAS)', 'uploads/brands/z4FL5tv73xKDkTZ8D4GKOrNw6Gh442h3QpTcPGee.jpeg', 0, 'Red-Cherry-Coffee-Cv5qo', 'Coffee Products', 'Red Cherry Coffee Beans', '2020-06-09 08:30:47', '2020-06-09 13:29:57'),
(54, 'Super-Coffee', 'uploads/brands/LwTorEjomb05m4wHzcctGVXL86jMK2yMY03Slt0n.jpeg', 0, 'Super-Coffee-iinxJ', 'Coffee Products', 'Coffee products in Nepal', '2020-06-09 08:33:47', '2020-06-09 08:33:47'),
(55, 'SY', 'uploads/brands/OYZVZMnskbK4FxxQZEw11Hd756RnrAgC1LFBSQxt.jpg', 0, 'No-Brand-TmsFc', 'No Brand', 'No Brand', '2020-06-09 12:17:25', '2022-01-18 06:19:33'),
(56, 'DEXE', 'uploads/brands/99JUQB01DhWnh3zb72PWGy3lyF8BTZ0IOZq3BxZY.png', 0, 'DEXE-wFD25', 'DEXE', 'DEXe hair shampoo products', '2020-06-09 12:49:35', '2020-06-09 12:49:35'),
(57, 'Kemei', 'uploads/brands/SMc8AYFP7CEMgW1hzPRRS974Lk0xW8HXG26fTStz.png', 0, 'Kemei-shXBH', 'Kemei', NULL, '2020-07-18 15:00:36', '2020-07-18 15:00:36'),
(58, 'Progemei', 'uploads/brands/SgHtCqf9rMSZrkaqGOWmR9sWra57h7uuoTiyo1HD.png', 0, 'Progemei-GQCvt', 'Progemei', NULL, '2020-07-21 11:23:46', '2020-07-21 11:23:46'),
(59, 'JBL', 'uploads/brands/Aql47OhoHLRrBlw1bec7dEZNV2tSAZIyWmIu94Fn.gif', 0, 'JBL-8LVTd', 'JBL', NULL, '2020-07-21 11:24:42', '2020-07-21 11:24:42'),
(60, 'ROMOSS', 'uploads/brands/EYJFY3ZvzaAHVZx7WhW6a8SnzMm2ZqqyPSxpLZ1u.png', 0, 'ROMOSS-SEOgZ', 'Romoss', NULL, '2020-10-27 08:37:18', '2020-10-27 08:37:18'),
(62, 'SMC', 'uploads/brands/eLMWnaT7Y6YPGe5VmgGK2CXeypyvJ4r5m3I9SmWH.jpeg', 0, 'SMC-LxgXZ', 'SMC', NULL, '2021-06-01 07:11:31', '2021-06-01 07:11:31'),
(63, 'V-trek', 'uploads/brands/ajakRvdQ1ZcI8ioGUT7b7Yg23zk9XOsVwSfnk1zb.jpeg', 0, 'V-trek-TslSl', 'V-trek logo', 'V-trek logo', '2021-08-20 08:35:26', '2021-08-20 08:35:26'),
(66, 'Wai Wai', 'uploads/brands/2SN6NLLJHLtodM7Mx6xKw72RnR6K5zVmztnbBpQA.jpg', 0, 'Wai-Wai-uvbwm', NULL, NULL, '2022-03-30 10:42:44', '2022-03-30 10:43:17'),
(67, 'baltra', 'uploads/brands/oL6WZVGpVVLwIqB8WPJeNtV4rGK2hcUW56nQx35F.jpg', 0, 'baltra-Af3Mo', NULL, NULL, '2022-03-31 06:04:09', '2022-03-31 06:04:09'),
(68, 'poison', 'uploads/brands/NhaJ4lUgrm3OXC626SLUc0sPbObE6CjHlUiamYs7.jpg', 0, 'poison-k9JdY', 'Clothing', NULL, '2022-03-31 06:07:06', '2022-03-31 06:07:06'),
(69, 'cocordile', 'uploads/brands/FxB8KnnCSs7uwFfyQDG2LAw6HtmVYtzU25HT9xID.jpg', 0, 'cocordile-0gQ7E', 'Clothing', NULL, '2022-03-31 06:10:19', '2022-03-31 06:10:19'),
(70, 'diesel', 'uploads/brands/MGJ233cqfpWdnpKuE7LqHegMvkpUCovdiXFuLUFN.jpg', 0, 'diesel-faC2o', 'Clothing', NULL, '2022-03-31 06:19:14', '2022-03-31 06:19:14'),
(71, 'macho', 'uploads/brands/ltoaRTVgzqYMYJZc7Glqcz6FXH3TVdD1oNc2ZY7W.png', 0, 'macho-CeJuw', 'Clothing', NULL, '2022-03-31 06:22:14', '2022-03-31 06:22:14'),
(72, 'armani', 'uploads/brands/NWPkPckBBokRK9IYHViMvpZ6I58vtJALhvLF8B68.jpg', 0, 'armani-1Hd56', 'Clothing', NULL, '2022-03-31 06:33:09', '2022-03-31 06:33:09'),
(73, 'bagmati', 'uploads/brands/tDLP6mn4XI21t9Oop7ytdLDOYNvnhxFxdHBY6LZw.png', 0, 'bagmati-1PZKO', 'plastic', NULL, '2022-03-31 06:36:23', '2022-03-31 06:36:23'),
(74, 'samsung', 'uploads/brands/1dhrrZpvycwm5gB8dv3P7XBvJbEr7bBdQIcsbwGX.png', 0, 'samsung-BAOwx', 'electrical', NULL, '2022-03-31 06:40:05', '2022-03-31 06:40:05'),
(75, 'lg', 'uploads/brands/TvFRPyDuVKVDwHEVknrwXALiXHAPTFO4zL0Yx23k.png', 0, 'lg-XUmDp', 'electrical', NULL, '2022-03-31 06:42:05', '2022-03-31 06:42:05'),
(76, 'yasuda', 'uploads/brands/fV0QDUZCqKci3MuHcMTehk1ZEJs5vVNNzrgGr53x.png', 0, 'yasuda-yMl8d', 'electrical', NULL, '2022-03-31 06:44:27', '2022-03-31 06:44:27'),
(77, 'whirlpool', 'uploads/brands/793AGaLC6RUWUHQP11BLYEHHEfFf3H9z4PuFM4xA.svg', 0, 'whirlpool-eY0Qa', 'electrical', NULL, '2022-03-31 06:47:12', '2022-03-31 06:47:12'),
(78, 'intel', 'uploads/brands/KwPqpKWkxG3nAeM8i3l5Wc5GfHI2XWSLXVqAcq4T.jpg', 0, 'intel-3U1fQ', 'electrical', NULL, '2022-03-31 06:50:49', '2022-03-31 06:50:49'),
(79, 'toshiva', 'uploads/brands/z3E0l74ZoqxFuXcFvSc1Wd05iVkNjMT1IIIqmxRI.png', 0, 'toshiva-5GVer', 'electrical', NULL, '2022-03-31 06:53:12', '2022-03-31 06:53:12'),
(80, 'milton', 'uploads/brands/PpizsnsL6K6ZWUrIxxBX3RSKHjQJtpUAL5nnMpb5.png', 0, 'milton-dZHNs', 'electrical', NULL, '2022-03-31 06:59:08', '2022-03-31 06:59:08'),
(81, 'shikhar', 'uploads/brands/teJCLWjy4f9Btrtq713GrOSvGqMrgLRpFf1uvfko.png', 0, 'shikhar-XscNO', 'shoes', NULL, '2022-03-31 07:12:01', '2022-03-31 07:12:01'),
(82, 'reebook', 'uploads/brands/DdcIx99u0iu0ehYaZh4Q2qeROV49IHxlNt6B4Qny.png', 0, 'reebook-gHwvM', 'shoes', NULL, '2022-03-31 07:15:18', '2022-03-31 07:15:18'),
(83, 'nike', 'uploads/brands/JJlDOxCBkStZU72fBXnoLW23b1ixoGXlE33fulGj.jpg', 0, 'nike-2olBw', 'shoes', NULL, '2022-03-31 07:16:39', '2022-03-31 07:16:39'),
(84, 'adidas', 'uploads/brands/6zNrpndU1JKYtXIsPpDqe84OkuSfnbZXWG7eBTOY.png', 0, 'adidas-HzaRn', NULL, NULL, '2022-03-31 07:17:46', '2022-03-31 07:17:46'),
(85, 'puma', 'uploads/brands/29uYfSYpLkPdrv7VkYuB1C5nZwYWRv1mbLx1YIo5.png', 0, 'puma-uqRCl', 'Clothing', NULL, '2022-03-31 07:19:06', '2022-03-31 07:19:06'),
(86, 'fila', 'uploads/brands/mG1rXzJfbAM82TfYsvFGZldFElxoikzzaJT8ucQD.png', 0, 'fila-dZIvV', 'Clothing', NULL, '2022-03-31 07:21:12', '2022-03-31 07:21:12'),
(87, 'nb', 'uploads/brands/ygtD96YDjNYdT4GRUZ4yR8zdyciKtMiADMpjKfER.png', 0, 'nb-bLNTl', 'shoes', NULL, '2022-03-31 07:23:13', '2022-03-31 07:23:13'),
(88, 'jordan', 'uploads/brands/AR6eTC3WgPn8PBdHtwN0zfZn0bm2S3mlMhrBwFs8.png', 0, 'jordan-2YlGn', 'Clothing,shoes', NULL, '2022-03-31 07:25:08', '2022-03-31 07:25:08'),
(89, '361', 'uploads/brands/d0gPG40KMU3tpYKXFVGLqzCWif2N5lKUR4BzQaBS.png', 0, '361-hNvJK', 'Clothing', NULL, '2022-03-31 07:28:27', '2022-03-31 07:28:27'),
(90, 'dell', 'uploads/brands/fs1nLHd0Vr59TrPklAz2lm2aEIc6cIIwxA5jIc0W.png', 0, 'dell-9EoBk', NULL, NULL, '2022-03-31 07:32:59', '2022-03-31 07:32:59'),
(91, 'apple', 'uploads/brands/3lixZ0HDQXqFPSecnTUKYtnDvp2jP0v7tJaGVwYC.png', 0, 'apple-dYtjU', 'phone,laptop', NULL, '2022-03-31 07:35:03', '2022-03-31 07:35:03'),
(92, 'black horse', 'uploads/brands/TGNlL8aKmscmaxl7B1ieauOAqmpeq6Fs3kaFbrn8.gif', 0, 'black-horse-wHWq4', 'shoes', NULL, '2022-03-31 07:51:44', '2022-03-31 07:51:44'),
(93, 'converse', 'uploads/brands/E1zSJQhkAyHVkU9kllbyucraVYTjrusMIaIJspeV.svg', 0, 'converse-g42GA', 'shoes', NULL, '2022-03-31 07:53:11', '2022-03-31 07:53:11'),
(94, 'erke', 'uploads/brands/nV8W8tNC4WIToL0mNo2D1jiQ5jLnAQ9zgYvFrPyD.png', 0, 'erke-2L9zc', 'shoes', NULL, '2022-03-31 07:54:45', '2022-03-31 07:54:45'),
(95, 'goldstar', 'uploads/brands/sJ4O6iLQYJhHM12BJ60ejc9XR9LTQWwAzIcu9W2V.png', 0, 'goldstar-Sm3Lo', 'shoes', NULL, '2022-03-31 07:56:30', '2022-03-31 07:56:30'),
(97, 'nebico', 'uploads/brands/3dfGlI39QtaAguAmsdYFQrebf1TN0kyEcAMRzSqC.html', 0, 'nebico-95sQO', 'biscuit', NULL, '2022-04-01 05:38:33', '2022-04-01 05:38:33'),
(98, 'hilife', 'uploads/brands/tqH4hsilbeRA9xmaFDGCon6Fza46VMdXrgK7ZXrX.png', 0, 'hilife-3A56K', 'Grocery', NULL, '2022-04-03 07:33:25', '2022-04-03 07:33:25'),
(99, 'ponds', 'uploads/brands/w2IdorG2SRQ9lhVndgQW73UasDIvncCJ6BuDdZP9.png', 0, 'ponds-1TxhK', 'face cream', NULL, '2022-04-10 08:22:11', '2022-04-10 08:22:11'),
(100, 'olay', 'uploads/brands/cRnNqvqWIWYb46PG4LCi0sXqy460Omqcz3ueH9lb.jpg', 0, 'olay-9zmM3', 'face cream', NULL, '2022-04-10 08:22:48', '2022-04-10 08:22:48'),
(101, 'lakme', 'uploads/brands/NSgIuudJJJG6yuCJYOGQlRijDCMF8rxcP5yMhQnK.jpg', 0, 'lakme-12kuq', 'face cream', NULL, '2022-04-10 08:25:48', '2022-04-10 08:25:48'),
(102, 'nbd', 'uploads/brands/Gnjirc00f2avhBHgd0r6kgFjh0GYsPvq3c8RkTVv.gif', 0, 'nbd-DMZxO', 'Clothing', NULL, '2022-04-10 08:26:20', '2022-04-10 08:26:20'),
(103, 'neutrogena', 'uploads/brands/RIGiDdeBobH6873586HTEUvC1rX7SP88CRSjA7lS.png', 0, 'neutrogena-QyDTe', 'face cream', NULL, '2022-04-10 08:28:40', '2022-04-10 08:28:40'),
(105, 'Cerave', 'uploads/brands/Izn5um8Y9tLoHQhSVXwpBIVsVLtCR6Qx0h8bx90y.png', 0, 'Cerave-3fF2h', NULL, NULL, '2022-04-24 07:15:57', '2022-04-24 07:15:57'),
(106, 'Cetaphil', 'uploads/brands/KWfiddMaedyfg82gVNzwHVg7zPDkovtBbEx7O1JR.png', 0, 'Cetaphil-ZC715', NULL, NULL, '2022-04-24 07:18:36', '2022-04-24 07:18:36'),
(107, 'Clinique', 'uploads/brands/EKlGYqEzKmMEWWcVOeWC6btKtk0durHy4NvhclRt.png', 0, 'Clinique-vmTAA', NULL, NULL, '2022-04-24 07:24:41', '2022-04-24 07:24:41'),
(108, 'MAC', 'uploads/brands/2WLXiKcd6EjqlfK6iTDJBt8hryNnQDGO1tUP8xZy.jpg', 0, 'MAC-zXaBO', NULL, NULL, '2022-04-24 07:25:21', '2022-04-24 07:25:21'),
(109, 'The Ordinary', 'uploads/brands/qBkJaK42Us44mMTzpIQF3lujdjRFM2OKwuB3v672.png', 0, 'The-Ordinary-5oy48', NULL, NULL, '2022-04-24 07:25:55', '2022-04-24 07:25:55'),
(110, 'Maybelline', 'uploads/brands/AjkHVnEuhePvS3FSkP5jB7TaJrcg7DLqKDIATt0N.png', 0, 'Maybelline-PCl3T', NULL, NULL, '2022-04-24 07:26:20', '2022-04-24 07:26:20'),
(111, 'Bh Cosmetics', 'uploads/brands/g8DlJzGAKXSth3bcASkI8Q8E2osKL2A24ySiLR27.png', 0, 'Bh-Cosmetics-vQ4eQ', NULL, NULL, '2022-04-24 07:26:58', '2022-04-24 07:26:58'),
(112, 'Milani', 'uploads/brands/9FNfaguVsmpbBIi5F4dD4OjAPjELILGeehVNKbpH.png', 0, 'Milani-DA2ms', NULL, NULL, '2022-04-24 07:57:09', '2022-04-24 07:57:09'),
(113, 'e.l.f', 'uploads/brands/j6AUvGn80ZcI1WWNcrThwCbiyrg4yY14vx9D0KVR.png', 0, 'elf-Hz9SH', NULL, NULL, '2022-04-24 07:57:56', '2022-04-24 07:57:56'),
(114, 'Morphe', 'uploads/brands/68A6isu1Y2E4GfUEVp9sOilISa2Jykp5SkpHBP5I.png', 0, 'Morphe-DmdiJ', NULL, NULL, '2022-04-24 07:58:36', '2022-04-24 07:58:36'),
(115, 'Mario Badescu', 'uploads/brands/RI1o7m74l35THcKbWdYcp4xiCZV3a1prK9NBAT9H.png', 0, 'Mario-Badescu-Xcoe0', NULL, NULL, '2022-04-24 08:01:09', '2022-04-24 08:01:09'),
(116, 'Aveeno', 'uploads/brands/TjvStSTId7il7elesP6UFNqLqQHGirWWBTWbob0X.png', 0, 'Aveeno-FsM3U', NULL, NULL, '2022-04-24 08:01:37', '2022-04-24 08:01:37'),
(117, 'Victoria\'s Secret', 'uploads/brands/9bG86xC5c71PmW41q7bp5YvOOCmaXd49n5uhmK8h.png', 0, 'Victorias-Secret-OLP8V', NULL, NULL, '2022-04-24 08:02:47', '2022-04-24 08:02:47'),
(119, 'The Body Shop', 'uploads/brands/JiCoVhO2oHf4IQ4aurHLx6QsPilhEPzQkjRwAp79.png', 0, 'The-Body-Shop-r8YoP', NULL, NULL, '2022-04-24 08:03:31', '2022-04-24 08:03:31'),
(120, 'L\'Oreal', 'uploads/brands/UDmsvVtVKWyaFkZfQhOFKKuWJGpurLg8AzlwlbUY.png', 0, 'LOreal-yFCcV', NULL, NULL, '2022-04-24 08:05:31', '2022-04-24 08:05:31'),
(121, 'EOS', 'uploads/brands/vYcPRaWoLrrCPT9fnWT5iQ0AhDRqsieSa7bPcN8r.png', 0, 'EOS-g6R6C', NULL, NULL, '2022-04-24 08:07:33', '2022-04-24 08:07:33'),
(122, 'Ambi', 'uploads/brands/mhgc737FkyGgebfMWVyDswtRCOTXKWmRB873kqqA.png', 0, 'Ambi-KfnUW', NULL, NULL, '2022-04-24 08:08:59', '2022-04-24 08:08:59'),
(123, 'Eucerin', 'uploads/brands/9YskrM2ku0yAsDga5oyPC1lLVHzKLHxXgHSf0mem.png', 0, 'Eucerin-b98HU', NULL, NULL, '2022-04-24 08:09:39', '2022-04-24 08:09:39'),
(124, 'Ogx', 'uploads/brands/Wtru9FmtSgjj9joRK0ymbTj7WA0NO6Q8YvC5EBrc.png', 0, 'Ogx-iljkY', NULL, NULL, '2022-04-24 08:13:48', '2022-04-24 08:13:48'),
(126, 'John frieda', 'uploads/brands/YiIKeoRbukz5iqSDQJOXJrW2JzbIe9F4On3iQK3X.jpg', 0, 'John-frieda-KZBDk', NULL, NULL, '2022-04-24 08:16:46', '2022-04-24 08:16:46'),
(127, 'Palmer\'s', 'uploads/brands/badrYXjs9sgfKcHdpwsvDKIxI23KptvGZcNud9yo.png', 0, 'Palmers-6OahX', NULL, NULL, '2022-04-24 08:18:31', '2022-04-24 08:18:31'),
(128, 'Revlon', 'uploads/brands/kyB5whxiyclskof1qzsbi9PUGgiH1RbveuNxHzGi.png', 0, 'Revlon-JcZvY', NULL, NULL, '2022-04-24 08:19:45', '2022-04-24 08:19:45'),
(129, 'Bath & Body Works', 'uploads/brands/CWeEL6eDkQ6WqNzCTxHyBKCzv8LfBP9fpTdVIJQF.png', 0, 'Bath--Body-Works-ENNuL', NULL, NULL, '2022-04-24 08:20:52', '2022-04-24 08:20:52'),
(130, 'zara', 'uploads/brands/LVDJQSsPCJS8qMdd14TQyzklyoeHtXdI8e3fxHvN.png', 0, 'zara-hLVAq', 'zara', NULL, '2022-04-27 08:49:57', '2022-04-27 08:49:57'),
(131, 'louis vuitton', 'uploads/brands/cVXnTFRlD8K0mBaByt7wnR4KvmZJWKJrG8e8CoHv.png', 0, 'louis-vuitton-2EMLF', NULL, NULL, '2022-04-27 08:51:09', '2022-04-27 08:51:09'),
(132, 'hermos', 'uploads/brands/8MP4a7IGawYhhYUdfzdL6Wki1ynHWyxYGe2dizo3.jpg', 0, 'hermos-5Iv1Y', NULL, NULL, '2022-04-27 08:51:41', '2022-04-27 08:51:41'),
(133, 'gucci', 'uploads/brands/8vZfSxfUXOPCkOAH0ubCMi4RcjluJ7qRzVsBYexC.png', 0, 'gucci-K96zj', NULL, NULL, '2022-04-27 08:52:05', '2022-04-27 08:52:05'),
(134, 'zalando', 'uploads/brands/6JzJKMLAoerIAX6UBsN4mqFepzNtR8CJx9ik7gIS.png', 0, 'zalando-fy2zJ', NULL, NULL, '2022-04-27 08:52:45', '2022-04-27 08:52:45'),
(135, 'tiffany&co', 'uploads/brands/Ki3xKlTL8nYA12Gs6IyEkXZx85hnGI9niOuB3Y02.png', 0, 'tiffanyco-uXLF8', NULL, NULL, '2022-04-27 08:53:33', '2022-04-27 08:53:33'),
(136, 'cartier', 'uploads/brands/ICQAw65tH53N8aoRr10gJr9IJEe6CGUY0hcsm6By.png', 0, 'cartier-ERxWh', NULL, NULL, '2022-04-27 08:55:04', '2022-04-27 08:55:04'),
(137, 'lululemon', 'uploads/brands/whbAKLJAm6tjM3gBLmH2dbjwFwnZnwGnmXNxBjs4.png', 0, 'lululemon-eZWbK', NULL, NULL, '2022-04-27 08:55:42', '2022-04-27 08:55:42'),
(138, 'chanel', 'uploads/brands/ipNPitintGT84D7kAzBngx4IniixRRESITNYHKvp.jpg', 0, 'chanel-52r1I', NULL, NULL, '2022-04-27 08:56:15', '2022-04-27 08:56:15'),
(139, 'rolex', 'uploads/brands/zJvyk03Je2OsIzPYIFJu72X829Rk4nd90TEMCCmP.png', 0, 'rolex-vQYdp', NULL, NULL, '2022-04-27 08:56:42', '2022-04-27 08:56:42'),
(140, 'prada', 'uploads/brands/AxDNwlhJGLf9SEgTfZXBW7GipfApUmughqsSES2y.jpg', 0, 'prada-cJh4v', NULL, NULL, '2022-04-27 08:57:11', '2022-04-27 08:57:11'),
(141, 'swarouski', 'uploads/brands/BgU9EDqhkiRiuJL3HONMrILGChWzwRDaehSPOhCF.png', 0, 'swarouski-lOPeM', NULL, NULL, '2022-04-27 08:59:09', '2022-04-27 08:59:09'),
(142, 'burberry', 'uploads/brands/RH4EFpZCzM4t3FfyTRyab9ggn3tGSACCtuG2YCou.png', 0, 'burberry-Q6sDX', NULL, NULL, '2022-04-27 08:59:43', '2022-04-27 08:59:43'),
(143, 'tom old', 'uploads/brands/nArCU4LZJHa85ZOKsIffwWaGaOTyXThCzMK6XCKw.png', 0, 'tom-old-G26ee', NULL, NULL, '2022-04-27 09:00:07', '2022-04-27 09:00:07'),
(144, 'levis', 'uploads/brands/UXbI7eG5ZnXFQMFV10qMOuygehvAqyNoHmraWuLq.png', 0, 'levis-wtgrh', NULL, NULL, '2022-04-27 09:00:47', '2022-04-27 09:00:47'),
(145, 'victorias secret', 'uploads/brands/Gg1VePFZZZxfZnKD08Z7qppX6Y6ptXuGa9iifnf5.png', 0, 'victorias-secret-K8oto', NULL, NULL, '2022-04-27 09:02:31', '2022-04-27 09:02:31'),
(146, 'michael kors', 'uploads/brands/cy4jYFGZbG1fDFGhhqwidAUfcRbeZu7rzkYPzR26.png', 0, 'michael-kors-WYNEn', NULL, NULL, '2022-04-27 09:03:11', '2022-04-27 09:03:11'),
(147, 'skechers', 'uploads/brands/NiKYGu5ByoCYvDnnxVoZXSyxdCg01ijKsfGkRwdI.png', 0, 'skechers-ksTY2', NULL, NULL, '2022-04-27 09:03:49', '2022-04-27 09:03:49'),
(148, 'tj maxx', 'uploads/brands/3HI40ckAOWZvFGlR4Yjf7Qw8edv8qL01b3039Tuq.png', 0, 'tj-maxx-wHkjG', NULL, NULL, '2022-04-27 09:04:20', '2022-04-27 09:04:20'),
(149, 'under armour', 'uploads/brands/BYZZGczxZJ7mAGBTqlkvlpX2AlEujiO4UT8Ao92m.png', 0, 'under-armour-BHfms', NULL, NULL, '2022-04-27 09:05:12', '2022-04-27 09:05:12'),
(150, 'asos', 'uploads/brands/QXyaT9uUEAn4RjdJRFHapT4IJeKyeWqYIwtUckrP.png', 0, 'asos-aM1Sd', NULL, NULL, '2022-04-27 09:05:35', '2022-04-27 09:05:35'),
(151, 'coach', 'uploads/brands/HDOeQqhjVsST5tHozo1Rik1kRiQg75jb2eG8roFB.png', 0, 'coach-OVtjH', NULL, NULL, '2022-04-27 09:06:06', '2022-04-27 09:06:06'),
(152, 'c&a', 'uploads/brands/Rmbd3KKtPvNisEpj2tNe6dT1WwpI78iGTy4tkpF2.png', 0, 'ca-Q0Q0T', NULL, NULL, '2022-04-27 09:06:32', '2022-04-27 09:06:32'),
(153, 'nords trom', 'uploads/brands/KKpyNeZ1MkKeeMtLAo5ZhgbkycGn5XJxfwtImBJV.jpg', 0, 'nords-trom-jTAW5', NULL, NULL, '2022-04-27 09:07:02', '2022-04-27 09:07:02'),
(154, 'chopard', 'uploads/brands/GhkHO9IR3HtDcFqGC3NNvuwNOge4TdXrrkCOq3Ip.png', 0, 'chopard-7PvkW', NULL, NULL, '2022-04-27 09:07:41', '2022-04-27 09:07:41'),
(155, 'omega', 'uploads/brands/r8QzU7236WmHqb69TRw2Mu6tRFeNKVewSLF363WB.jpg', 0, 'omega-7NNxC', NULL, NULL, '2022-04-27 09:08:56', '2022-04-27 09:08:56'),
(156, 'Local Brand', 'uploads/brands/okVjBa1yEIdh6sBFKWBYJLIobVPrj4aPw3sNgGJS.jpg', 0, 'Local-Brand-mL8oN', 'Bag', NULL, '2022-06-08 12:03:57', '2022-06-08 12:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', '2018-10-16 01:35:52', '2019-01-28 01:26:53'),
(2, 'system_default_currency', '29', '2018-10-16 01:36:58', '2020-06-03 14:14:04'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2020-06-06 19:17:57'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2022-01-18 11:51:28'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2022-01-18 11:51:29'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2020-06-04 10:57:35'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '1', '2019-01-16 12:44:18', '2022-01-11 09:40:15'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2022-01-18 11:51:31'),
(17, 'vendor_commission', '00', '2019-01-31 06:18:04', '2020-07-25 05:10:02'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"},{\"type\":\"file\",\"label\":\"Citizenship Front\"},{\"type\":\"file\",\"label\":\"Citizenship Back\"}]', '2019-02-03 11:36:58', '2021-09-22 23:45:32'),
(19, 'google_analytics', '1', '2019-02-06 12:22:35', '2020-06-06 18:17:03'),
(20, 'facebook_login', '1', '2019-02-07 12:51:59', '2020-06-03 15:44:13'),
(21, 'google_login', '1', '2019-02-07 12:52:10', '2020-06-03 15:44:12'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '1', '2019-04-15 11:45:04', '2020-06-06 06:29:23'),
(37, 'email_verification', '1', '2019-04-30 07:30:07', '2020-06-03 15:22:22'),
(38, 'wallet_system', '1', '2019-05-19 08:05:44', '2020-08-11 16:00:10'),
(39, 'coupon_system', '1', '2019-06-11 09:46:18', '2020-06-03 15:22:11'),
(40, 'current_version', '3.0', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2022-01-18 11:51:39'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2022-01-18 11:51:42'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2022-01-18 11:51:41'),
(45, 'pickup_point', '1', '2019-10-17 11:50:39', '2020-06-03 15:22:15'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2022-01-18 11:51:44'),
(48, 'voguepay_sandbox', '1', '2019-10-17 11:51:38', '2022-01-11 09:27:33'),
(50, 'category_wise_commission', '1', '2020-01-21 07:22:47', '2020-07-25 02:47:40'),
(51, 'conversation_system', '1', '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '1', '2020-01-22 11:43:58', '2020-06-06 06:47:45'),
(55, 'classified_product', '1', '2020-05-13 13:01:05', '2020-12-18 05:37:12'),
(56, 'pos_activation_for_seller', '1', '2020-07-17 12:06:34', '2020-07-17 12:06:34'),
(57, 'shipping_type', 'product_wise_shipping', '2020-07-17 12:06:34', '2020-11-01 03:11:37'),
(58, 'flat_rate_shipping_cost', '0', '2020-07-17 12:06:34', '2020-07-17 12:06:34'),
(59, 'shipping_cost_admin', '00', '2020-07-17 12:06:34', '2020-12-12 04:29:41'),
(60, 'refund_request_time', '3', '2019-03-12 04:58:23', '2019-03-12 04:58:23'),
(61, 'refund_request_time', '3', '2019-03-12 04:58:23', '2019-03-12 04:58:23'),
(62, 'club_point_convert_rate', '10', '2019-03-12 05:58:23', '2019-03-12 05:58:23'),
(63, 'esewa', '1', '2022-01-10 15:54:11', '2022-01-11 10:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `created_at`, `updated_at`) VALUES
(6, 85, 33, NULL, 700.00, 0.00, 0.00, 1, '2020-10-16 09:48:34', '2020-10-16 09:48:34'),
(7, 85, 14, NULL, 1500.00, 0.00, 0.00, 1, '2020-10-16 09:53:03', '2020-10-16 09:53:03'),
(9, 85, 36, NULL, 1150.00, 0.00, 0.00, 2, '2020-10-18 02:47:44', '2020-10-18 02:54:56'),
(28, 20, 20, '', 1390.00, 0.00, 0.00, 1, '2020-10-18 09:57:04', '2020-10-19 13:37:43'),
(29, 87, 36, '', 1150.00, 0.00, 0.00, 1, '2020-10-19 04:24:53', '2020-10-19 04:24:53'),
(30, 87, 14, '', 1500.00, 0.00, 0.00, 1, '2020-10-19 04:25:33', '2020-10-19 04:25:33'),
(31, 87, 24, '', 76.00, 0.00, 0.00, 1, '2020-10-19 04:25:59', '2020-10-19 04:25:59'),
(36, 88, 14, '', 1500.00, 0.00, 0.00, 2, '2020-10-19 13:11:36', '2020-10-19 13:11:47'),
(39, 88, 36, '', 1150.00, 0.00, 0.00, 1, '2020-10-20 03:44:01', '2020-10-20 03:44:01'),
(40, 91, 36, '', 1150.00, 0.00, 0.00, 1, '2020-10-20 05:40:25', '2020-10-20 05:40:25'),
(44, 95, 57, '', 8455.00, 0.00, 0.00, 1, '2020-10-22 03:44:23', '2020-10-22 03:44:23'),
(47, 65, 57, '', 8455.00, 0.00, 0.00, 3, '2020-10-22 22:41:54', '2020-10-22 22:42:55'),
(56, 106, 78, '10000mAh', 1400.00, 0.00, 0.00, 2, '2020-11-06 10:10:21', '2020-11-06 10:10:28'),
(58, 33, 110, '', 1000.00, 0.00, 0.00, 3, '2020-11-08 12:29:09', '2020-11-08 12:29:27'),
(64, 121, 68, '', 1250.00, 0.00, 0.00, 1, '2020-11-13 08:33:47', '2020-11-13 08:33:47'),
(66, 124, 104, '', 1900.00, 0.00, 0.00, 3, '2020-11-18 04:44:53', '2020-11-18 04:45:03'),
(67, 124, 70, '', 350.00, 0.00, 0.00, 3, '2020-11-18 04:47:48', '2020-11-18 04:48:02'),
(68, 130, 106, '', 1300.00, 0.00, 50.00, 1, '2020-11-19 06:09:14', '2020-11-19 06:09:14'),
(69, 132, 65, '', 1900.00, 0.00, 0.00, 1, '2020-11-20 00:48:41', '2020-11-20 00:48:41'),
(72, 140, 116, '', 350.00, 0.00, 0.00, 2, '2020-11-24 04:34:26', '2020-11-24 04:35:49'),
(74, 168, 110, '', 850.00, 0.00, 50.00, 1, '2020-12-07 03:17:15', '2020-12-07 03:17:55'),
(75, 169, 117, '', 400.00, 0.00, 50.00, 2, '2020-12-07 09:17:56', '2020-12-07 09:18:41'),
(79, 175, 111, '', 900.00, 0.00, 50.00, 1, '2020-12-08 01:11:19', '2020-12-08 01:11:19'),
(80, 179, 101, '', 250.00, 0.00, 50.00, 5, '2020-12-08 12:48:56', '2020-12-08 12:49:16'),
(81, 180, 110, '', 850.00, 0.00, 50.00, 2, '2020-12-09 03:54:59', '2020-12-09 03:55:04'),
(85, 27, 101, '', 250.00, 0.00, 0.00, 2, '2020-12-12 04:27:55', '2020-12-12 04:28:04'),
(86, 187, 117, '', 400.00, 0.00, 50.00, 2, '2020-12-12 11:57:26', '2020-12-12 11:57:36'),
(91, 188, 122, '', 350.00, 0.00, 0.00, 1, '2020-12-13 02:57:10', '2020-12-13 02:57:10'),
(92, 188, 65, '', 1900.00, 0.00, 0.00, 1, '2020-12-13 03:09:59', '2020-12-13 03:09:59'),
(93, NULL, 155, '', 100.00, 0.00, 0.00, 1, '2022-01-03 09:36:05', '2022-01-03 09:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `digital` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery & Home Appliances', 0.00, 'uploads/categories/banner/Ls8v4ZzbXdT944X6zlgO1rOPLDhHEZaYJdfYwYB1.jpg', 'uploads/categories/icon/9ipv2kWvZNwJ2qoq3DUQY8hDTQjhfQTkZEnqv2Tf.png', 1, 0, 0, 'women-clothing-fashion', 'Demo category 1', NULL, '2022-04-26 07:02:41', '2022-04-26 07:02:41'),
(2, 'Baby & Kids', 0.00, 'uploads/categories/banner/VcRLS4qpzApzIwVo6titiuKQx5H76CklZVqb2CFt.jpeg', 'uploads/categories/icon/FUr0bNwSCxkfhUUtQsGd4wNRKrLfLz5RUxyTmoRL.png', 1, 0, 0, 'baby-care', 'Demo category 2', NULL, '2020-06-08 10:08:46', '2020-06-08 10:08:46'),
(3, 'Grocery & Pets', 0.00, 'uploads/categories/banner/FsXKIOKrNMxcewG8G3QYnqsIfi9c1nD685ZhP5x7.jpeg', 'uploads/categories/icon/rKAPw5rNlS84JtD9ZQqn366jwE11qyJqbzAe5yaA.png', 1, 1, 0, 'grocery-shop', 'Online Grocery Shopping and Delivery in Kathmandu | Buy fresh food items, personal care, baby products and more.', 'Nepal online grocery, nepal bazaar, best bazaar, daily bazaar, daily shop, large shop, np shop, shop, online store, buy, sell, home shop, Meat, Oil, rice, Free home delivery, Fresh vegetables, formalin free, free return,', '2020-06-08 15:04:13', '2020-06-08 15:04:13'),
(4, 'Men Clothing & Fashion', 0.00, 'uploads/categories/banner/VUgoVdeVZdHuqsNTFJ6pK9pIhypAOiSFssOXA7cJ.jpeg', 'uploads/categories/icon/Sl92RIDSrmHFfMdDJFvxlc29WHAT9ecn3DQ1Jmbt.png', 1, 1, 0, 'men-clothing-fashion', NULL, NULL, '2020-06-08 10:05:23', '2020-06-08 10:05:23'),
(5, 'Office Product', 0.00, 'uploads/categories/banner/XLjoYTQDkFhu37GxglOsGeAchXUC3YXsQzliMfgy.jpeg', 'uploads/categories/icon/LB8ZYeXscdttoWlrcS3cpIhuBol0yKfvHC5Jv7om.png', 1, 1, 0, 'offic-prodcut', 'Online Office Stationery and Supply Solution in Nepal', 'Online Office Stationery & Supply Solution in Nepal. Add product to cart Paper, Writing Instruments, Desk Organizers, Ink & Cartridge, Files, Folders, IT, Cleaning Item, Safety & Security', '2020-06-08 15:36:52', '2020-06-08 15:36:52'),
(6, 'Beauty, Health & Hair', 0.00, 'uploads/categories/banner/a0tJx0Caf2kA3O45hhiZzs6NcZYR0qJQKZRV1hP3.jpeg', 'uploads/categories/icon/7rsnvRD3O4SXHOObzOOA6qmeQbJPsEn5eo7Jf5UV.png', 1, 1, 0, 'beauty-health-hair', NULL, NULL, '2020-06-08 10:01:57', '2020-06-08 10:01:57'),
(7, 'Kitchen Appliances', 0.00, 'uploads/categories/banner/DpGXFrfnWcHQwYmKhAhkG3KEf7JhsYFFAh5V9Q7y.jpeg', 'uploads/categories/icon/retyjPyMNovi3G5JkvMqL4eHL6gpNx52Sc6Hqksv.png', 1, 1, 0, 'kitchen-appliances', NULL, NULL, '2021-01-18 09:49:59', '2021-01-18 08:49:59'),
(10, 'Computer & Accessories', 0.00, 'uploads/categories/banner/Jlp2zOviQ62OwmqO5y6TGvC0acuMrYGCuk71Gr1f.jpeg', 'uploads/categories/icon/6CoQRs0wG73AGeeaNXmC6S93Og1ZrGQUYQlAdNnE.png', 1, 0, 0, 'computer-accessories', NULL, NULL, '2020-06-08 10:13:44', '2020-06-08 10:13:44'),
(11, 'Cellphones & Tabs', 0.00, 'uploads/categories/banner/iMtTjnSLOzGqtGbJMHvaSV3fpYbcoE1ITPJrqVx2.jpeg', 'uploads/categories/icon/qWVd577DAA804FnQkV6E9ys2xwXozkRHZCcIzKAA.png', 1, 0, 0, 'cellphones-tabs', NULL, NULL, '2020-06-08 10:15:15', '2020-06-08 10:15:15'),
(16, 'Electronics and Electric', 0.00, 'uploads/categories/banner/4Qr2fiwF5mV4NHSfsy0mi8QJnKoZBdt9pkLUzp3l.jpeg', 'uploads/categories/icon/DKJB83jRXiHJXznxnN92SE7UTKscGjEOAWFzqJ7D.jpeg', 1, 0, 1, 'Electronics-and-Electric-Q6MRN', 'Electronics and Electric', 'Electronics  and Electric Products', '2021-08-20 09:40:56', '2021-08-20 07:40:56'),
(19, 'Jewellery', 0.00, 'uploads/categories/banner/72K6bEFP7ZSi03dllHUr3VANDgKV4Y15AAeOK5tf.jpg', 'uploads/categories/icon/aq0eagtycHreW54nO0SjJGPZH1YI8EXVR8LhPNOp.jpg', 1, 0, 0, 'Jewellery-9C2BA', 'Jewellery', NULL, '2022-03-30 10:33:38', '2022-03-30 10:33:38'),
(20, 'Tv and Home Appliance', 0.00, 'uploads/categories/banner/JLk0fe1wKgtYzXuE84PmcbudHw0VhVUcgtljOMGS.jpg', 'uploads/categories/icon/GnbatAkdzaNXPUYzrzqiC0FIBellfGOLXnoVpPFV.png', 1, 0, 0, 'Tv-and-Home-Appliance-kPsMZ', NULL, NULL, '2022-04-26 06:49:55', '2022-04-26 06:49:55'),
(21, 'Electronic devices', 0.00, 'uploads/categories/banner/aMd32nkzVgpQEI5j36W2u5UnyK7rYLJv0C6CF5cu.jpg', 'uploads/categories/icon/wm1bpps2qYFtb8P8EWX3lQkQlWpqNHYvELzwAeox.jpg', 1, 0, 1, 'Electronic-devices-ln0RI', NULL, NULL, '2022-04-26 07:03:05', '2022-04-26 07:03:05'),
(22, 'womens fashion', 0.00, 'uploads/categories/banner/6OrLtBM9hQVw1Posa5tukswLnVc5EuB0AKzq4E3j.jpg', 'uploads/categories/icon/SWlNKHiOgio84prvDuj2n4P8hWS6agfck5SDP0LJ.png', 1, 0, 0, 'womens-fashion-nKSFo', 'clothes', NULL, '2022-04-26 07:00:02', '2022-04-26 07:00:02'),
(23, 'Men\'s Fashion', 0.00, 'uploads/categories/banner/OEXUHEqFgAT7wVhkMx7LnH4Uaxhzh6Vohe9qVSvI.jpg', 'uploads/categories/icon/zAF3IQIST5OjmCMGhMZ7HilCIl7GlEIeqlrZncBB.jpg', 1, 0, 0, 'Mens-Fashion-zc15i', 'clothes', NULL, '2022-04-26 06:59:35', '2022-04-26 06:59:35'),
(24, 'Watches & Accesories', 0.00, 'uploads/categories/banner/kPkaeZAXQBMan73B9uCww7rWs3FPfCQSGbt4BRKP.jpg', 'uploads/categories/icon/A89iSOs1vM3B9335MLHcIqPScjVUNiM95tAeecd0.png', 1, 0, 0, 'Watches--Accesories-N6iV5', NULL, NULL, '2022-04-26 06:59:12', '2022-04-26 06:59:12'),
(25, 'Sports & Outdoor', 0.00, 'uploads/categories/banner/7bjrCdTrs6ZTrmh9R8f0Lc67Ki2BfFZNpI1S0jfV.jpg', 'uploads/categories/icon/rrx5w6vq1YDIrysQiohMcWOUfCIW0utXOXfPYpUQ.png', 1, 0, 0, 'Sports--Outdoor-OaoMd', NULL, NULL, '2022-04-26 06:58:47', '2022-04-26 06:58:47'),
(26, 'Electronic Accessories', 0.00, 'uploads/categories/banner/8ANPB95c99Nnsuk0F5FLeL6OXlig3zikK070UNGz.png', 'uploads/categories/icon/78Xnb779OAlp5oNCCUpQQVnsVIhmADByzSDoWiQB.jpg', 1, 0, 0, 'Electronic-Accessories-YAW9T', 'Electronic', NULL, '2022-04-26 06:55:02', '2022-04-26 06:55:02'),
(27, 'Automotive & Moterbikes', 0.00, 'uploads/categories/banner/0ovojBWGpyBk9k7RGLUfI29FoS718pkF111VsZnT.jpg', 'uploads/categories/icon/kPDAa22i8ZtlCW1KaVZaMzrJYjA6QqhktvCS4B0T.jpg', 1, 0, 0, 'Automotive--Moterbikes-cCmrj', NULL, NULL, '2022-04-26 06:53:28', '2022-04-26 06:53:28'),
(28, 'Home & lifestyle', 0.00, 'uploads/categories/banner/ZtnU4P6tDUZUUqopnOievMMV0PAwoXWfPOrTbZgG.jpg', 'uploads/categories/icon/f69PGG5SPOeFJSk6UJulBjIhtBgxwg9ON4nTrYxj.png', 1, 0, 0, 'Home--lifestyle-DYu3T', 'home & life style', NULL, '2022-04-26 06:52:10', '2022-04-26 06:52:10'),
(32, 'Babies & Toys', 0.00, 'uploads/categories/banner/lHgld0N4omrzNR6OJelFSkFnEpysQOZcCizBkP3x.jpg', 'uploads/categories/icon/E76tu1VCkSKQYDzHh3dXnCqfxZ2tMmj3iHWLQPoQ.png', 1, 0, 0, 'Babies--Toys-8tYpM', NULL, NULL, '2022-04-26 07:46:32', '2022-04-26 07:46:32'),
(33, 'Musical Instruments', 0.00, 'uploads/categories/banner/Wv8L2R5p4P5hZQMDwQyVLaV94h3qATv4H9rUpQyu.jpg', 'uploads/categories/icon/Ir7JWiavaWvUQg6AMaeAn5iTFisyjq59jg3DFhSx.jpg', 1, 0, 1, 'Musical-Instruments-gqBny', NULL, NULL, '2022-04-27 05:13:22', '2022-04-27 05:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `club_points`
--

CREATE TABLE `club_points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double(18,2) NOT NULL,
  `convert_status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `club_point_details`
--

CREATE TABLE `club_point_details` (
  `id` int(11) NOT NULL,
  `club_point_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `point` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(11, 12, 12, 'test2222', 1, 0, '2021-10-27 12:03:30', '2021-10-27 12:03:30'),
(12, 12, 265, 'samsung smart tv', 1, 0, '2022-03-23 16:01:52', '2022-03-23 16:01:52'),
(13, 293, 293, 'xiaomi note 11', 1, 0, '2022-03-27 04:20:42', '2022-03-27 04:20:42'),
(14, 327, 327, 'asf', 1, 1, '2022-03-27 17:50:58', '2022-03-27 17:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 0, NULL, '2020-10-20 13:11:23'),
(2, 'AL', 'Albania', 0, NULL, '2020-10-20 13:11:24'),
(3, 'DZ', 'Algeria', 0, NULL, '2020-10-20 13:11:27'),
(4, 'DS', 'American Samoa', 0, NULL, '2020-10-20 13:11:29'),
(5, 'AD', 'Andorra', 0, NULL, '2020-10-20 13:11:30'),
(6, 'AO', 'Angola', 0, NULL, '2020-10-20 13:11:30'),
(7, 'AI', 'Anguilla', 0, NULL, '2020-10-20 13:11:31'),
(8, 'AQ', 'Antarctica', 0, NULL, '2020-10-20 13:11:33'),
(9, 'AG', 'Antigua and Barbuda', 0, NULL, '2020-10-20 13:11:34'),
(10, 'AR', 'Argentina', 0, NULL, '2020-10-20 13:11:35'),
(11, 'AM', 'Armenia', 0, NULL, '2020-10-20 13:11:36'),
(12, 'AW', 'Aruba', 0, NULL, '2020-10-20 13:11:37'),
(13, 'AU', 'Australia', 0, NULL, '2020-10-20 13:11:39'),
(14, 'AT', 'Austria', 0, NULL, '2020-10-20 13:11:40'),
(15, 'AZ', 'Azerbaijan', 0, NULL, '2020-10-20 13:11:40'),
(16, 'BS', 'Bahamas', 0, NULL, '2020-10-20 13:11:46'),
(17, 'BH', 'Bahrain', 0, NULL, '2020-10-20 13:11:46'),
(18, 'BD', 'Bangladesh', 0, NULL, '2020-10-20 13:11:48'),
(19, 'BB', 'Barbados', 0, NULL, '2020-10-20 13:11:48'),
(20, 'BY', 'Belarus', 0, NULL, '2020-10-20 13:11:49'),
(21, 'BE', 'Belgium', 0, NULL, '2020-10-20 13:11:51'),
(22, 'BZ', 'Belize', 0, NULL, '2020-10-20 13:11:52'),
(23, 'BJ', 'Benin', 0, NULL, '2020-10-20 13:11:53'),
(24, 'BM', 'Bermuda', 0, NULL, '2020-10-20 13:11:56'),
(25, 'BT', 'Bhutan', 0, NULL, '2020-10-20 13:11:57'),
(26, 'BO', 'Bolivia', 0, NULL, '2020-10-20 13:11:57'),
(27, 'BA', 'Bosnia and Herzegovina', 0, NULL, '2020-10-20 13:11:58'),
(28, 'BW', 'Botswana', 0, NULL, '2020-10-20 13:12:00'),
(29, 'BV', 'Bouvet Island', 0, NULL, '2020-10-20 13:12:00'),
(30, 'BR', 'Brazil', 0, NULL, '2020-10-20 13:12:01'),
(31, 'IO', 'British Indian Ocean Territory', 0, NULL, '2020-10-20 13:12:08'),
(32, 'BN', 'Brunei Darussalam', 0, NULL, '2020-10-20 13:12:09'),
(33, 'BG', 'Bulgaria', 0, NULL, '2020-10-20 13:12:11'),
(34, 'BF', 'Burkina Faso', 0, NULL, '2020-10-20 13:12:12'),
(35, 'BI', 'Burundi', 0, NULL, '2020-10-20 13:12:13'),
(36, 'KH', 'Cambodia', 0, NULL, '2020-10-20 13:12:13'),
(37, 'CM', 'Cameroon', 0, NULL, '2020-10-20 13:12:14'),
(38, 'CA', 'Canada', 0, NULL, '2020-10-20 13:12:15'),
(39, 'CV', 'Cape Verde', 0, NULL, '2020-10-20 13:12:15'),
(40, 'KY', 'Cayman Islands', 0, NULL, '2020-10-20 13:12:16'),
(41, 'CF', 'Central African Republic', 0, NULL, '2020-10-20 13:12:17'),
(42, 'TD', 'Chad', 0, NULL, '2020-10-20 13:12:19'),
(43, 'CL', 'Chile', 0, NULL, '2020-10-20 13:12:20'),
(44, 'CN', 'China', 0, NULL, '2020-10-20 13:12:21'),
(45, 'CX', 'Christmas Island', 0, NULL, '2020-10-20 13:12:22'),
(46, 'CC', 'Cocos (Keeling) Islands', 0, NULL, '2020-10-20 13:12:27'),
(47, 'CO', 'Colombia', 0, NULL, '2020-10-20 13:12:27'),
(48, 'KM', 'Comoros', 0, NULL, '2020-10-20 13:12:29'),
(49, 'CG', 'Congo', 0, NULL, '2020-10-20 13:12:30'),
(50, 'CK', 'Cook Islands', 0, NULL, '2020-10-20 13:12:30'),
(51, 'CR', 'Costa Rica', 0, NULL, '2020-10-20 13:12:32'),
(52, 'HR', 'Croatia (Hrvatska)', 0, NULL, '2020-10-20 13:12:33'),
(53, 'CU', 'Cuba', 0, NULL, '2020-10-20 13:12:35'),
(54, 'CY', 'Cyprus', 0, NULL, '2020-10-20 13:12:37'),
(55, 'CZ', 'Czech Republic', 0, NULL, '2020-10-20 13:12:37'),
(56, 'DK', 'Denmark', 0, NULL, '2020-10-20 13:12:38'),
(57, 'DJ', 'Djibouti', 0, NULL, '2020-10-20 13:12:39'),
(58, 'DM', 'Dominica', 0, NULL, '2020-10-20 13:12:40'),
(59, 'DO', 'Dominican Republic', 0, NULL, '2020-10-20 13:12:41'),
(60, 'TP', 'East Timor', 0, NULL, '2020-10-20 13:12:41'),
(61, 'EC', 'Ecuador', 0, NULL, '2020-10-20 13:12:47'),
(62, 'EG', 'Egypt', 0, NULL, '2020-10-20 13:12:48'),
(63, 'SV', 'El Salvador', 0, NULL, '2020-10-20 13:12:49'),
(64, 'GQ', 'Equatorial Guinea', 0, NULL, '2020-10-20 13:12:50'),
(65, 'ER', 'Eritrea', 0, NULL, '2020-10-20 13:12:51'),
(66, 'EE', 'Estonia', 0, NULL, '2020-10-20 13:12:51'),
(67, 'ET', 'Ethiopia', 0, NULL, '2020-10-20 13:12:52'),
(68, 'FK', 'Falkland Islands (Malvinas)', 0, NULL, '2020-10-20 13:12:53'),
(69, 'FO', 'Faroe Islands', 0, NULL, '2020-10-20 13:12:55'),
(70, 'FJ', 'Fiji', 0, NULL, '2020-10-20 13:12:56'),
(71, 'FI', 'Finland', 0, NULL, '2020-10-20 13:12:57'),
(72, 'FR', 'France', 0, NULL, '2020-10-20 13:12:58'),
(73, 'FX', 'France, Metropolitan', 0, NULL, '2020-10-20 13:12:59'),
(74, 'GF', 'French Guiana', 0, NULL, '2020-10-20 13:13:00'),
(75, 'PF', 'French Polynesia', 0, NULL, '2020-10-20 13:13:01'),
(76, 'TF', 'French Southern Territories', 0, NULL, '2020-10-20 13:13:07'),
(77, 'GA', 'Gabon', 0, NULL, '2020-10-20 13:13:08'),
(78, 'GM', 'Gambia', 0, NULL, '2020-10-20 13:13:10'),
(79, 'GE', 'Georgia', 0, NULL, '2020-10-20 13:13:10'),
(80, 'DE', 'Germany', 0, NULL, '2020-10-20 13:13:12'),
(81, 'GH', 'Ghana', 0, NULL, '2020-10-20 13:13:11'),
(82, 'GI', 'Gibraltar', 0, NULL, '2020-10-20 13:13:13'),
(83, 'GK', 'Guernsey', 0, NULL, '2020-10-20 13:13:14'),
(84, 'GR', 'Greece', 0, NULL, '2020-10-20 13:13:18'),
(85, 'GL', 'Greenland', 0, NULL, '2020-10-20 13:13:19'),
(86, 'GD', 'Grenada', 0, NULL, '2020-10-20 13:13:19'),
(87, 'GP', 'Guadeloupe', 0, NULL, '2020-10-20 13:13:20'),
(88, 'GU', 'Guam', 0, NULL, '2020-10-20 13:13:21'),
(89, 'GT', 'Guatemala', 0, NULL, '2020-10-20 13:13:21'),
(90, 'GN', 'Guinea', 0, NULL, '2020-10-20 13:13:22'),
(91, 'GW', 'Guinea-Bissau', 0, NULL, '2020-10-20 13:13:26'),
(92, 'GY', 'Guyana', 0, NULL, '2020-10-20 13:13:27'),
(93, 'HT', 'Haiti', 0, NULL, '2020-10-20 13:13:27'),
(94, 'HM', 'Heard and Mc Donald Islands', 0, NULL, '2020-10-20 13:13:28'),
(95, 'HN', 'Honduras', 0, NULL, '2020-10-20 13:13:28'),
(96, 'HK', 'Hong Kong', 0, NULL, '2020-10-20 13:13:29'),
(97, 'HU', 'Hungary', 0, NULL, '2020-10-20 13:13:30'),
(98, 'IS', 'Iceland', 0, NULL, '2020-10-20 13:13:30'),
(99, 'IN', 'India', 0, NULL, '2020-10-20 13:13:31'),
(100, 'IM', 'Isle of Man', 0, NULL, '2020-10-20 13:13:33'),
(101, 'ID', 'Indonesia', 0, NULL, '2020-10-20 13:13:35'),
(102, 'IR', 'Iran (Islamic Republic of)', 0, NULL, '2020-10-20 13:13:36'),
(103, 'IQ', 'Iraq', 0, NULL, '2020-10-20 13:13:37'),
(104, 'IE', 'Ireland', 0, NULL, '2020-10-20 13:13:38'),
(105, 'IL', 'Israel', 0, NULL, '2020-10-20 13:13:38'),
(106, 'IT', 'Italy', 0, NULL, '2020-10-20 13:13:43'),
(107, 'CI', 'Ivory Coast', 0, NULL, '2020-10-20 13:13:43'),
(108, 'JE', 'Jersey', 0, NULL, '2020-10-20 13:13:44'),
(109, 'JM', 'Jamaica', 0, NULL, '2020-10-20 13:13:44'),
(110, 'JP', 'Japan', 0, NULL, '2020-10-20 13:13:45'),
(111, 'JO', 'Jordan', 0, NULL, '2020-10-20 13:13:46'),
(112, 'KZ', 'Kazakhstan', 0, NULL, '2020-10-20 13:13:46'),
(113, 'KE', 'Kenya', 0, NULL, '2020-10-20 13:13:47'),
(114, 'KI', 'Kiribati', 0, NULL, '2020-10-20 13:13:54'),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 0, NULL, '2020-10-20 13:13:49'),
(116, 'KR', 'Korea, Republic of', 0, NULL, '2020-10-20 13:13:49'),
(117, 'XK', 'Kosovo', 0, NULL, '2020-10-20 13:13:51'),
(118, 'KW', 'Kuwait', 0, NULL, '2020-10-20 13:13:55'),
(119, 'KG', 'Kyrgyzstan', 0, NULL, '2020-10-20 13:13:56'),
(120, 'LA', 'Lao People\'s Democratic Republic', 0, NULL, '2020-10-20 13:13:57'),
(121, 'LV', 'Latvia', 0, NULL, '2020-10-20 13:14:01'),
(122, 'LB', 'Lebanon', 0, NULL, '2020-10-20 13:14:02'),
(123, 'LS', 'Lesotho', 0, NULL, '2020-10-20 13:14:03'),
(124, 'LR', 'Liberia', 0, NULL, '2020-10-20 13:14:03'),
(125, 'LY', 'Libyan Arab Jamahiriya', 0, NULL, '2020-10-20 13:14:05'),
(126, 'LI', 'Liechtenstein', 0, NULL, '2020-10-20 13:14:05'),
(127, 'LT', 'Lithuania', 0, NULL, '2020-10-20 13:14:09'),
(128, 'LU', 'Luxembourg', 0, NULL, '2020-10-20 13:14:08'),
(129, 'MO', 'Macau', 0, NULL, '2020-10-20 13:14:09'),
(130, 'MK', 'Macedonia', 0, NULL, '2020-10-20 13:14:09'),
(131, 'MG', 'Madagascar', 0, NULL, '2020-10-20 13:14:10'),
(132, 'MW', 'Malawi', 0, NULL, '2020-10-20 13:14:11'),
(133, 'MY', 'Malaysia', 0, NULL, '2020-10-20 13:14:14'),
(134, 'MV', 'Maldives', 0, NULL, '2020-10-20 13:14:12'),
(135, 'ML', 'Mali', 0, NULL, '2020-10-20 13:14:15'),
(136, 'MT', 'Malta', 0, NULL, '2020-10-20 13:14:22'),
(137, 'MH', 'Marshall Islands', 0, NULL, '2020-10-20 13:14:23'),
(138, 'MQ', 'Martinique', 0, NULL, '2020-10-20 13:14:24'),
(139, 'MR', 'Mauritania', 0, NULL, '2020-10-20 13:14:25'),
(140, 'MU', 'Mauritius', 0, NULL, '2020-10-20 13:14:29'),
(141, 'TY', 'Mayotte', 0, NULL, '2020-10-20 13:14:28'),
(142, 'MX', 'Mexico', 0, NULL, '2020-10-20 13:14:31'),
(143, 'FM', 'Micronesia, Federated States of', 0, NULL, '2020-10-20 13:14:32'),
(144, 'MD', 'Moldova, Republic of', 0, NULL, '2020-10-20 13:14:34'),
(145, 'MC', 'Monaco', 0, NULL, '2020-10-20 13:14:35'),
(146, 'MN', 'Mongolia', 0, NULL, '2020-10-20 13:14:36'),
(147, 'ME', 'Montenegro', 0, NULL, '2020-10-20 13:14:37'),
(148, 'MS', 'Montserrat', 0, NULL, '2020-10-20 13:14:37'),
(149, 'MA', 'Morocco', 0, NULL, '2020-10-20 13:14:38'),
(150, 'MZ', 'Mozambique', 0, NULL, '2020-10-20 13:14:39'),
(151, 'MM', 'Myanmar', 0, NULL, '2020-10-20 13:14:44'),
(152, 'NA', 'Namibia', 0, NULL, '2020-10-20 13:14:45'),
(153, 'NR', 'Nauru', 0, NULL, '2020-10-20 13:14:47'),
(154, 'NP', 'Nepal', 1, NULL, NULL),
(155, 'NL', 'Netherlands', 0, NULL, '2020-10-20 13:14:49'),
(156, 'AN', 'Netherlands Antilles', 0, NULL, '2020-10-20 13:14:50'),
(157, 'NC', 'New Caledonia', 0, NULL, '2020-10-20 13:14:51'),
(158, 'NZ', 'New Zealand', 0, NULL, '2020-10-20 13:14:52'),
(159, 'NI', 'Nicaragua', 0, NULL, '2020-10-20 13:14:54'),
(160, 'NE', 'Niger', 0, NULL, '2020-10-20 13:14:55'),
(161, 'NG', 'Nigeria', 0, NULL, '2020-10-20 13:14:56'),
(162, 'NU', 'Niue', 0, NULL, '2020-10-20 13:14:56'),
(163, 'NF', 'Norfolk Island', 0, NULL, '2020-10-20 13:14:57'),
(164, 'MP', 'Northern Mariana Islands', 0, NULL, '2020-10-20 13:14:58'),
(165, 'NO', 'Norway', 0, NULL, '2020-10-20 13:14:58'),
(166, 'OM', 'Oman', 0, NULL, '2020-10-20 13:15:05'),
(167, 'PK', 'Pakistan', 0, NULL, '2020-10-20 13:15:06'),
(168, 'PW', 'Palau', 0, NULL, '2020-10-20 13:15:06'),
(169, 'PS', 'Palestine', 0, NULL, '2020-10-20 13:15:08'),
(170, 'PA', 'Panama', 0, NULL, '2020-10-20 13:15:09'),
(171, 'PG', 'Papua New Guinea', 0, NULL, '2020-10-20 13:15:10'),
(172, 'PY', 'Paraguay', 0, NULL, '2020-10-20 13:15:10'),
(173, 'PE', 'Peru', 0, NULL, '2020-10-20 13:15:11'),
(174, 'PH', 'Philippines', 0, NULL, '2020-10-20 13:15:12'),
(175, 'PN', 'Pitcairn', 0, NULL, '2020-10-20 13:15:14'),
(176, 'PL', 'Poland', 0, NULL, '2020-10-20 13:15:15'),
(177, 'PT', 'Portugal', 0, NULL, '2020-10-20 13:15:17'),
(178, 'PR', 'Puerto Rico', 0, NULL, '2020-10-20 13:15:18'),
(179, 'QA', 'Qatar', 0, NULL, '2020-10-20 13:15:19'),
(180, 'RE', 'Reunion', 0, NULL, '2020-10-20 13:15:20'),
(181, 'RO', 'Romania', 0, NULL, '2020-10-20 13:15:25'),
(182, 'RU', 'Russian Federation', 0, NULL, '2020-10-20 13:15:26'),
(183, 'RW', 'Rwanda', 0, NULL, '2020-10-20 13:15:29'),
(184, 'KN', 'Saint Kitts and Nevis', 0, NULL, '2020-10-20 13:15:30'),
(185, 'LC', 'Saint Lucia', 0, NULL, '2020-10-20 13:15:32'),
(186, 'VC', 'Saint Vincent and the Grenadines', 0, NULL, '2020-10-20 13:15:32'),
(187, 'WS', 'Samoa', 0, NULL, '2020-10-20 13:15:33'),
(188, 'SM', 'San Marino', 0, NULL, '2020-10-20 13:15:34'),
(189, 'ST', 'Sao Tome and Principe', 0, NULL, '2020-10-20 13:15:36'),
(190, 'SA', 'Saudi Arabia', 0, NULL, '2020-10-20 13:15:36'),
(191, 'SN', 'Senegal', 0, NULL, '2020-10-20 13:15:37'),
(192, 'RS', 'Serbia', 0, NULL, '2020-10-20 13:15:41'),
(193, 'SC', 'Seychelles', 0, NULL, '2020-10-20 13:15:40'),
(194, 'SL', 'Sierra Leone', 0, NULL, '2020-10-20 13:15:41'),
(195, 'SG', 'Singapore', 0, NULL, '2020-10-20 13:15:42'),
(196, 'SK', 'Slovakia', 0, NULL, '2020-10-20 13:15:46'),
(197, 'SI', 'Slovenia', 0, NULL, '2020-10-20 13:15:47'),
(198, 'SB', 'Solomon Islands', 0, NULL, '2020-10-20 13:15:48'),
(199, 'SO', 'Somalia', 0, NULL, '2020-10-20 13:15:48'),
(200, 'ZA', 'South Africa', 0, NULL, '2020-10-20 13:15:49'),
(201, 'GS', 'South Georgia South Sandwich Islands', 0, NULL, '2020-10-20 13:15:50'),
(202, 'SS', 'South Sudan', 0, NULL, '2020-10-20 13:15:50'),
(203, 'ES', 'Spain', 0, NULL, '2020-10-20 13:15:51'),
(204, 'LK', 'Sri Lanka', 0, NULL, '2020-10-20 13:15:52'),
(205, 'SH', 'St. Helena', 0, NULL, '2020-10-20 13:15:53'),
(206, 'PM', 'St. Pierre and Miquelon', 0, NULL, '2020-10-20 13:15:54'),
(207, 'SD', 'Sudan', 0, NULL, '2020-10-20 13:15:55'),
(208, 'SR', 'Suriname', 0, NULL, '2020-10-20 13:16:00'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', 0, NULL, '2020-10-20 13:15:56'),
(210, 'SZ', 'Swaziland', 0, NULL, '2020-10-20 13:15:59'),
(211, 'SE', 'Sweden', 0, NULL, '2020-10-20 13:16:05'),
(212, 'CH', 'Switzerland', 0, NULL, '2020-10-20 13:16:05'),
(213, 'SY', 'Syrian Arab Republic', 0, NULL, '2020-10-20 13:16:07'),
(214, 'TW', 'Taiwan', 0, NULL, '2020-10-20 13:16:07'),
(215, 'TJ', 'Tajikistan', 0, NULL, '2020-10-20 13:16:08'),
(216, 'TZ', 'Tanzania, United Republic of', 0, NULL, '2020-10-20 13:16:10'),
(217, 'TH', 'Thailand', 0, NULL, '2020-10-20 13:16:10'),
(218, 'TG', 'Togo', 0, NULL, '2020-10-20 13:16:10'),
(219, 'TK', 'Tokelau', 0, NULL, '2020-10-20 13:16:12'),
(220, 'TO', 'Tonga', 0, NULL, '2020-10-20 13:16:19'),
(221, 'TT', 'Trinidad and Tobago', 0, NULL, '2020-10-20 13:16:13'),
(222, 'TN', 'Tunisia', 0, NULL, '2020-10-20 13:16:15'),
(223, 'TR', 'Turkey', 0, NULL, '2020-10-20 13:16:15'),
(224, 'TM', 'Turkmenistan', 0, NULL, '2020-10-20 13:16:16'),
(225, 'TC', 'Turks and Caicos Islands', 0, NULL, '2020-10-20 13:16:21'),
(226, 'TV', 'Tuvalu', 0, NULL, '2020-10-20 13:16:25'),
(227, 'UG', 'Uganda', 0, NULL, '2020-10-20 13:16:27'),
(228, 'UA', 'Ukraine', 0, NULL, '2020-10-20 13:16:27'),
(229, 'AE', 'United Arab Emirates', 0, NULL, '2020-10-20 13:16:28'),
(230, 'GB', 'United Kingdom', 0, NULL, '2020-10-20 13:16:28'),
(231, 'US', 'United States', 0, NULL, '2020-10-20 13:16:29'),
(232, 'UM', 'United States minor outlying islands', 0, NULL, '2020-10-20 13:16:30'),
(233, 'UY', 'Uruguay', 0, NULL, '2020-10-20 13:16:32'),
(234, 'UZ', 'Uzbekistan', 0, NULL, '2020-10-20 13:16:34'),
(235, 'VU', 'Vanuatu', 0, NULL, '2020-10-20 13:16:34'),
(236, 'VA', 'Vatican City State', 0, NULL, '2020-10-20 13:16:36'),
(237, 'VE', 'Venezuela', 0, NULL, '2020-10-20 13:16:37'),
(238, 'VN', 'Vietnam', 0, NULL, '2020-10-20 13:16:38'),
(239, 'VG', 'Virgin Islands (British)', 0, NULL, '2020-10-20 13:16:42'),
(240, 'VI', 'Virgin Islands (U.S.)', 0, NULL, '2020-10-20 13:16:40'),
(241, 'WF', 'Wallis and Futuna Islands', 0, NULL, '2020-10-20 13:16:48'),
(242, 'EH', 'Western Sahara', 0, NULL, '2020-10-20 13:16:51'),
(243, 'YE', 'Yemen', 0, NULL, '2020-10-20 13:16:52'),
(244, 'ZR', 'Zaire', 0, NULL, '2020-10-20 13:16:53'),
(245, 'ZM', 'Zambia', 0, NULL, '2020-10-20 13:16:54'),
(246, 'ZW', 'Zimbabwe', 0, NULL, '2020-10-20 13:16:54'),
(247, 'AF', 'Afghanistan', 0, NULL, '2020-10-20 13:16:55'),
(248, 'AL', 'Albania', 0, NULL, '2020-10-20 13:16:57'),
(249, 'DZ', 'Algeria', 0, NULL, '2020-10-20 13:16:58'),
(250, 'DS', 'American Samoa', 0, NULL, '2020-10-20 13:17:00'),
(251, 'AD', 'Andorra', 0, NULL, '2020-10-20 13:17:00'),
(252, 'AO', 'Angola', 0, NULL, '2020-10-20 13:17:02'),
(253, 'AI', 'Anguilla', 0, NULL, '2020-10-20 13:17:03'),
(254, 'AQ', 'Antarctica', 0, NULL, '2020-10-20 13:17:05'),
(255, 'AG', 'Antigua and Barbuda', 0, NULL, '2020-10-20 13:17:05'),
(256, 'AR', 'Argentina', 0, NULL, '2020-10-20 13:17:55'),
(257, 'AM', 'Armenia', 0, NULL, '2020-10-20 13:17:56'),
(258, 'AW', 'Aruba', 0, NULL, '2020-10-20 13:17:56'),
(259, 'AU', 'Australia', 0, NULL, '2020-10-20 13:17:57'),
(260, 'AT', 'Austria', 0, NULL, '2020-10-20 13:17:58'),
(261, 'AZ', 'Azerbaijan', 0, NULL, '2020-10-20 13:17:58'),
(262, 'BS', 'Bahamas', 0, NULL, '2020-10-20 13:18:04'),
(263, 'BH', 'Bahrain', 0, NULL, '2020-10-20 13:18:00'),
(264, 'BD', 'Bangladesh', 0, NULL, '2020-10-20 13:18:02'),
(265, 'BB', 'Barbados', 0, NULL, '2020-10-20 13:18:05'),
(266, 'BY', 'Belarus', 0, NULL, '2020-10-20 13:18:06'),
(267, 'BE', 'Belgium', 0, NULL, '2020-10-20 13:18:08'),
(268, 'BZ', 'Belize', 0, NULL, '2020-10-20 13:18:09'),
(269, 'BJ', 'Benin', 0, NULL, '2020-10-20 13:18:11'),
(270, 'BM', 'Bermuda', 0, NULL, '2020-10-20 13:18:11'),
(271, 'BT', 'Bhutan', 0, NULL, '2020-10-20 13:17:37'),
(272, 'BO', 'Bolivia', 0, NULL, '2020-10-20 13:17:38'),
(273, 'BA', 'Bosnia and Herzegovina', 0, NULL, '2020-10-20 13:17:38'),
(274, 'BW', 'Botswana', 0, NULL, '2020-10-20 13:17:40'),
(275, 'BV', 'Bouvet Island', 0, NULL, '2020-10-20 13:17:40'),
(276, 'BR', 'Brazil', 0, NULL, '2020-10-20 13:17:42'),
(277, 'IO', 'British Indian Ocean Territory', 0, NULL, '2020-10-20 13:17:43'),
(278, 'BN', 'Brunei Darussalam', 0, NULL, '2020-10-20 13:17:46'),
(279, 'BG', 'Bulgaria', 0, NULL, '2020-10-20 13:17:45'),
(280, 'BF', 'Burkina Faso', 0, NULL, '2020-10-20 13:17:46'),
(281, 'BI', 'Burundi', 0, NULL, '2020-10-20 13:17:47'),
(282, 'KH', 'Cambodia', 0, NULL, '2020-10-20 13:17:48'),
(283, 'CM', 'Cameroon', 0, NULL, '2020-10-20 13:17:49'),
(284, 'CA', 'Canada', 0, NULL, '2020-10-20 13:17:49'),
(285, 'CV', 'Cape Verde', 0, NULL, '2020-10-20 13:17:51'),
(286, 'KY', 'Cayman Islands', 0, NULL, '2020-10-20 13:17:31'),
(287, 'CF', 'Central African Republic', 0, NULL, '2020-10-20 13:17:30'),
(288, 'TD', 'Chad', 0, NULL, '2020-10-20 13:17:26'),
(289, 'CL', 'Chile', 0, NULL, '2020-10-20 13:17:25'),
(290, 'CN', 'China', 0, NULL, '2020-10-20 13:17:25'),
(291, 'CX', 'Christmas Island', 0, NULL, '2020-10-20 13:17:24'),
(292, 'CC', 'Cocos (Keeling) Islands', 0, NULL, '2020-10-20 13:17:24'),
(293, 'CO', 'Colombia', 0, NULL, '2020-10-20 13:17:21'),
(294, 'KM', 'Comoros', 0, NULL, '2020-10-20 13:17:21'),
(295, 'CG', 'Congo', 0, NULL, '2020-10-20 13:17:20'),
(296, 'CK', 'Cook Islands', 0, NULL, '2020-10-20 13:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'cart_base', 'covid19', '{\"min_buy\":\"1000\",\"max_discount\":\"10000\"}', 50.00, 'amount', 1599523200, 1600128000, '2020-06-03 19:36:37', '2020-09-08 15:30:31'),
(2, 'product_base', 'CLOSETNEPAL', '[{\"category_id\":\"8\",\"subcategory_id\":\"21\",\"subsubcategory_id\":\"78\",\"product_id\":\"111\"}]', 100.00, 'amount', 1604620800, 1606694400, '2020-11-06 10:55:21', '2020-11-06 10:55:21'),
(3, 'product_base', 'CLOSET20', '[{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"85\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"90\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"91\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"92\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"93\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"94\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"95\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"96\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"97\"},{\"category_id\":\"4\",\"subcategory_id\":\"79\",\"subsubcategory_id\":\"88\",\"product_id\":\"100\"}]', 100.00, 'amount', 1604620800, 1606694400, '2020-11-06 12:28:59', '2020-11-06 12:28:59'),
(4, 'product_base', 'DISH', '[{\"category_id\":\"7\",\"subcategory_id\":\"68\",\"subsubcategory_id\":\"83\",\"product_id\":\"101\"}]', 50.00, 'amount', 1604707200, 1606694400, '2020-11-07 00:55:45', '2020-11-07 00:55:45'),
(5, 'product_base', 'STEAM', '[{\"category_id\":\"6\",\"subcategory_id\":\"48\",\"subsubcategory_id\":\"72\",\"product_id\":\"105\"}]', 100.00, 'amount', 1604707200, 1606694400, '2020-11-07 01:12:18', '2020-11-07 01:12:18'),
(6, 'product_base', 'HOT', '[{\"category_id\":\"6\",\"subcategory_id\":\"50\",\"subsubcategory_id\":\"37\",\"product_id\":\"116\"}]', 50.00, 'amount', 1604707200, 1606694400, '2020-11-07 02:19:55', '2020-11-07 03:00:25'),
(7, 'product_base', 'WINTER2020', '[{\"category_id\":\"7\",\"subcategory_id\":\"8\",\"subsubcategory_id\":\"90\",\"product_id\":\"102\"}]', 100.00, 'amount', 1604707200, 1606694400, '2020-11-07 06:22:57', '2020-11-07 06:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon_usages`
--

INSERT INTO `coupon_usages` (`id`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(1, 24, 1, '2020-09-08 15:31:39', '2020-09-08 15:31:39'),
(2, 23, 2, '2020-11-06 10:56:57', '2020-11-06 10:56:57'),
(3, 23, 4, '2020-11-09 03:59:29', '2020-11-09 03:59:29'),
(4, 112, 4, '2020-11-10 14:17:47', '2020-11-10 14:17:47'),
(5, 153, 2, '2020-11-27 21:18:29', '2020-11-27 21:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 0, 'USD', '2018-10-09 11:35:08', '2020-06-04 11:07:57'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2020-06-04 11:07:58'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2020-06-04 11:07:59'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2020-06-04 11:08:00'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2020-06-04 11:08:01'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2020-06-04 11:08:01'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2020-06-04 11:08:03'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2020-06-04 11:08:04'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2020-06-04 11:08:05'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2020-06-04 11:08:07'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2020-06-04 11:08:26'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2020-06-04 11:08:21'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2020-06-04 11:08:20'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2020-06-04 11:08:19'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2020-06-04 11:08:17'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2020-06-04 11:08:15'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2020-06-04 11:08:14'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2020-06-04 11:08:13'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2020-06-04 11:08:12'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2020-06-04 11:08:11'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2020-06-04 11:08:31'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2020-06-04 11:08:32'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2020-06-04 11:08:33'),
(27, 'Taka', '৳', 84.00000, 0, 'BDT', '2018-10-09 11:35:08', '2020-06-04 11:08:34'),
(28, 'Indian Rupee', 'Rs', 68.45000, 0, 'Rupee', '2019-07-07 10:33:46', '2020-06-04 11:08:35'),
(29, 'Nepalese rupee', 'Rs', 120.00000, 1, 'NPR', '2020-06-03 14:13:31', '2020-06-03 14:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09'),
(5, 21, '2020-06-06 09:45:25', '2020-06-06 09:45:25'),
(7, 24, '2020-07-01 03:30:38', '2020-07-01 03:30:38'),
(9, 26, '2020-07-01 03:52:15', '2020-07-01 03:52:15'),
(10, 30, '2020-07-02 13:28:36', '2020-07-02 13:28:36'),
(11, 32, '2020-07-11 14:29:10', '2020-07-11 14:29:10'),
(12, 33, '2020-07-13 15:38:15', '2020-07-13 15:38:15'),
(13, 34, '2020-07-16 13:05:43', '2020-07-16 13:05:43'),
(15, 37, '2020-07-21 09:02:27', '2020-07-21 09:02:27'),
(16, 38, '2020-07-21 19:36:35', '2020-07-21 19:36:35'),
(17, 39, '2020-07-22 05:37:32', '2020-07-22 05:37:32'),
(19, 41, '2020-07-23 10:05:09', '2020-07-23 10:05:09'),
(20, 42, '2020-07-23 14:07:00', '2020-07-23 14:07:00'),
(22, 44, '2020-07-27 22:56:22', '2020-07-27 22:56:22'),
(23, 45, '2020-07-27 23:19:32', '2020-07-27 23:19:32'),
(24, 46, '2020-07-28 05:00:16', '2020-07-28 05:00:16'),
(25, 47, '2020-07-30 05:09:51', '2020-07-30 05:09:51'),
(26, 48, '2020-07-30 05:53:09', '2020-07-30 05:53:09'),
(27, 49, '2020-07-31 06:21:30', '2020-07-31 06:21:30'),
(28, 50, '2020-08-07 09:01:27', '2020-08-07 09:01:27'),
(29, 51, '2020-08-10 06:44:53', '2020-08-10 06:44:53'),
(30, 52, '2020-08-14 13:08:34', '2020-08-14 13:08:34'),
(31, 53, '2020-08-15 01:24:28', '2020-08-15 01:24:28'),
(32, 54, '2020-08-16 03:17:45', '2020-08-16 03:17:45'),
(33, 55, '2020-08-19 01:27:46', '2020-08-19 01:27:46'),
(34, 56, '2020-08-19 14:05:35', '2020-08-19 14:05:35'),
(35, 57, '2020-08-20 17:13:50', '2020-08-20 17:13:50'),
(36, 58, '2020-09-02 04:18:55', '2020-09-02 04:18:55'),
(37, 59, '2020-09-06 04:06:43', '2020-09-06 04:06:43'),
(38, 60, '2020-09-06 04:22:01', '2020-09-06 04:22:01'),
(39, 61, '2020-09-06 04:23:06', '2020-09-06 04:23:06'),
(40, 62, '2020-09-06 04:48:20', '2020-09-06 04:48:20'),
(41, 63, '2020-09-06 06:22:35', '2020-09-06 06:22:35'),
(42, 65, '2020-09-08 16:34:03', '2020-09-08 16:34:03'),
(47, 70, '2020-09-10 08:38:31', '2020-09-10 08:38:31'),
(48, 71, '2020-09-11 02:51:57', '2020-09-11 02:51:57'),
(49, 72, '2020-09-11 03:25:45', '2020-09-11 03:25:45'),
(51, 74, '2020-09-11 13:15:51', '2020-09-11 13:15:51'),
(52, 75, '2020-09-12 15:19:16', '2020-09-12 15:19:16'),
(53, 76, '2020-09-15 06:51:51', '2020-09-15 06:51:51'),
(55, 78, '2020-09-27 12:05:20', '2020-09-27 12:05:20'),
(57, 80, '2020-09-30 05:04:23', '2020-09-30 05:04:23'),
(58, 81, '2020-10-01 06:23:37', '2020-10-01 06:23:37'),
(59, 82, '2020-10-01 09:44:44', '2020-10-01 09:44:44'),
(60, 83, '2020-10-12 04:29:39', '2020-10-12 04:29:39'),
(61, 84, '2020-10-16 06:17:11', '2020-10-16 06:17:11'),
(62, 85, '2020-10-16 08:52:36', '2020-10-16 08:52:36'),
(63, 88, '2020-10-19 13:10:14', '2020-10-19 13:10:14'),
(64, 89, '2020-10-19 13:31:27', '2020-10-19 13:31:27'),
(65, 90, '2020-10-20 03:56:39', '2020-10-20 03:56:39'),
(66, 91, '2020-10-20 05:39:49', '2020-10-20 05:39:49'),
(67, 92, '2020-10-20 06:29:11', '2020-10-20 06:29:11'),
(68, 93, '2020-10-20 08:39:36', '2020-10-20 08:39:36'),
(69, 94, '2020-10-20 09:53:19', '2020-10-20 09:53:19'),
(70, 95, '2020-10-22 03:42:17', '2020-10-22 03:42:17'),
(71, 96, '2020-10-22 22:54:02', '2020-10-22 22:54:02'),
(73, 98, '2020-10-27 06:12:09', '2020-10-27 06:12:09'),
(74, 99, '2020-10-29 15:38:50', '2020-10-29 15:38:50'),
(75, 100, '2020-10-30 13:39:29', '2020-10-30 13:39:29'),
(76, 101, '2020-11-01 11:33:32', '2020-11-01 11:33:32'),
(77, 102, '2020-11-03 12:13:30', '2020-11-03 12:13:30'),
(78, 103, '2020-11-04 09:07:04', '2020-11-04 09:07:04'),
(79, 104, '2020-11-05 09:52:01', '2020-11-05 09:52:01'),
(81, 106, '2020-11-06 10:09:25', '2020-11-06 10:09:25'),
(82, 107, '2020-11-07 22:32:12', '2020-11-07 22:32:12'),
(83, 108, '2020-11-08 03:49:42', '2020-11-08 03:49:42'),
(84, 109, '2020-11-08 09:03:36', '2020-11-08 09:03:36'),
(85, 110, '2020-11-09 00:57:14', '2020-11-09 00:57:14'),
(86, 111, '2020-11-09 03:09:03', '2020-11-09 03:09:03'),
(87, 112, '2020-11-09 22:50:43', '2020-11-09 22:50:43'),
(88, 113, '2020-11-10 00:34:13', '2020-11-10 00:34:13'),
(89, 114, '2020-11-10 01:40:52', '2020-11-10 01:40:52'),
(90, 115, '2020-11-10 06:39:47', '2020-11-10 06:39:47'),
(91, 116, '2020-11-10 09:00:40', '2020-11-10 09:00:40'),
(92, 117, '2020-11-11 04:46:59', '2020-11-11 04:46:59'),
(93, 118, '2020-11-11 08:58:27', '2020-11-11 08:58:27'),
(94, 119, '2020-11-11 16:12:06', '2020-11-11 16:12:06'),
(95, 120, '2020-11-13 06:16:08', '2020-11-13 06:16:08'),
(96, 121, '2020-11-13 08:28:37', '2020-11-13 08:28:37'),
(97, 122, '2020-11-14 00:05:16', '2020-11-14 00:05:16'),
(98, 123, '2020-11-18 03:39:41', '2020-11-18 03:39:41'),
(99, 124, '2020-11-18 04:42:47', '2020-11-18 04:42:47'),
(100, 125, '2020-11-18 05:44:43', '2020-11-18 05:44:43'),
(101, 126, '2020-11-18 11:17:43', '2020-11-18 11:17:43'),
(102, 127, '2020-11-18 17:49:41', '2020-11-18 17:49:41'),
(103, 128, '2020-11-18 19:51:33', '2020-11-18 19:51:33'),
(104, 129, '2020-11-18 20:20:31', '2020-11-18 20:20:31'),
(105, 130, '2020-11-19 06:03:47', '2020-11-19 06:03:47'),
(106, 131, '2020-11-19 13:51:55', '2020-11-19 13:51:55'),
(107, 132, '2020-11-20 00:48:20', '2020-11-20 00:48:20'),
(108, 134, '2020-11-21 00:51:21', '2020-11-21 00:51:21'),
(109, 135, '2020-11-21 02:40:56', '2020-11-21 02:40:56'),
(110, 137, '2020-11-21 14:20:23', '2020-11-21 14:20:23'),
(111, 138, '2020-11-21 17:07:44', '2020-11-21 17:07:44'),
(112, 139, '2020-11-23 09:38:16', '2020-11-23 09:38:16'),
(113, 140, '2020-11-24 04:33:36', '2020-11-24 04:33:36'),
(114, 141, '2020-11-24 11:42:49', '2020-11-24 11:42:49'),
(115, 143, '2020-11-24 12:44:50', '2020-11-24 12:44:50'),
(117, 145, '2020-11-25 06:34:52', '2020-11-25 06:34:52'),
(118, 146, '2020-11-25 06:37:18', '2020-11-25 06:37:18'),
(119, 147, '2020-11-25 11:10:16', '2020-11-25 11:10:16'),
(120, 148, '2020-11-26 01:03:58', '2020-11-26 01:03:58'),
(121, 149, '2020-11-26 13:34:13', '2020-11-26 13:34:13'),
(122, 150, '2020-11-26 13:36:34', '2020-11-26 13:36:34'),
(123, 151, '2020-11-26 16:31:57', '2020-11-26 16:31:57'),
(124, 152, '2020-11-27 01:36:41', '2020-11-27 01:36:41'),
(125, 153, '2020-11-27 21:12:45', '2020-11-27 21:12:45'),
(126, 154, '2020-11-28 14:05:23', '2020-11-28 14:05:23'),
(127, 155, '2020-11-29 06:21:24', '2020-11-29 06:21:24'),
(128, 156, '2020-11-30 02:55:14', '2020-11-30 02:55:14'),
(129, 157, '2020-11-30 17:06:33', '2020-11-30 17:06:33'),
(130, 158, '2020-12-01 13:29:42', '2020-12-01 13:29:42'),
(131, 159, '2020-12-03 08:09:24', '2020-12-03 08:09:24'),
(132, 160, '2020-12-04 04:12:29', '2020-12-04 04:12:29'),
(133, 161, '2020-12-05 04:36:58', '2020-12-05 04:36:58'),
(134, 162, '2020-12-05 06:40:50', '2020-12-05 06:40:50'),
(135, 163, '2020-12-05 13:12:44', '2020-12-05 13:12:44'),
(136, 164, '2020-12-06 10:35:10', '2020-12-06 10:35:10'),
(137, 165, '2020-12-06 13:24:53', '2020-12-06 13:24:53'),
(138, 166, '2020-12-06 16:22:58', '2020-12-06 16:22:58'),
(139, 167, '2020-12-07 00:30:06', '2020-12-07 00:30:06'),
(140, 168, '2020-12-07 03:14:06', '2020-12-07 03:14:06'),
(141, 169, '2020-12-07 09:17:40', '2020-12-07 09:17:40'),
(142, 170, '2020-12-07 10:20:32', '2020-12-07 10:20:32'),
(143, 171, '2020-12-07 10:34:31', '2020-12-07 10:34:31'),
(144, 172, '2020-12-07 11:17:47', '2020-12-07 11:17:47'),
(145, 173, '2020-12-07 13:22:12', '2020-12-07 13:22:12'),
(146, 174, '2020-12-08 00:41:16', '2020-12-08 00:41:16'),
(147, 175, '2020-12-08 01:07:50', '2020-12-08 01:07:50'),
(148, 176, '2020-12-08 05:31:30', '2020-12-08 05:31:30'),
(149, 177, '2020-12-08 10:39:50', '2020-12-08 10:39:50'),
(150, 178, '2020-12-08 11:46:12', '2020-12-08 11:46:12'),
(151, 179, '2020-12-08 12:48:37', '2020-12-08 12:48:37'),
(152, 180, '2020-12-09 03:54:20', '2020-12-09 03:54:20'),
(153, 181, '2020-12-09 05:18:33', '2020-12-09 05:18:33'),
(154, 182, '2020-12-10 03:45:52', '2020-12-10 03:45:52'),
(155, 183, '2020-12-10 12:52:59', '2020-12-10 12:52:59'),
(156, 184, '2020-12-10 14:18:10', '2020-12-10 14:18:10'),
(157, 185, '2020-12-11 01:14:29', '2020-12-11 01:14:29'),
(158, 186, '2020-12-12 01:17:28', '2020-12-12 01:17:28'),
(159, 187, '2020-12-12 11:56:18', '2020-12-12 11:56:18'),
(160, 188, '2020-12-12 15:43:49', '2020-12-12 15:43:49'),
(161, 189, '2020-12-13 00:43:05', '2020-12-13 00:43:05'),
(162, 190, '2020-12-28 00:02:54', '2020-12-28 00:02:54'),
(163, 191, '2021-01-13 12:51:17', '2021-01-13 12:51:17'),
(164, 192, '2021-01-18 03:08:29', '2021-01-18 03:08:29'),
(165, 193, '2021-01-30 16:07:39', '2021-01-30 16:07:39'),
(166, 194, '2021-02-08 20:40:39', '2021-02-08 20:40:39'),
(167, 195, '2021-02-19 09:40:04', '2021-02-19 09:40:04'),
(168, 196, '2021-02-20 08:10:56', '2021-02-20 08:10:56'),
(169, 197, '2021-03-01 14:57:11', '2021-03-01 14:57:11'),
(171, 199, '2021-03-22 19:20:02', '2021-03-22 19:20:02'),
(172, 200, '2021-04-27 01:33:23', '2021-04-27 01:33:23'),
(173, 201, '2021-05-06 00:43:25', '2021-05-06 00:43:25'),
(174, 203, '2021-07-29 13:42:43', '2021-07-29 13:42:43'),
(175, 207, '2021-09-22 22:32:21', '2021-09-22 22:32:21'),
(178, 210, '2021-09-23 00:11:54', '2021-09-23 00:11:54'),
(179, 211, '2021-09-23 05:09:32', '2021-09-23 05:09:32'),
(180, 212, '2021-09-23 05:19:21', '2021-09-23 05:19:21'),
(181, 213, '2021-09-23 05:20:35', '2021-09-23 05:20:35'),
(182, 214, '2021-09-23 05:29:17', '2021-09-23 05:29:17'),
(183, 215, '2021-09-23 05:32:32', '2021-09-23 05:32:32'),
(185, 217, '2021-09-23 05:39:45', '2021-09-23 05:39:45'),
(186, 218, '2021-09-28 06:23:03', '2021-09-28 06:23:03'),
(194, 229, '2021-09-29 07:15:08', '2021-09-29 07:15:08'),
(196, 231, '2021-09-29 07:31:47', '2021-09-29 07:31:47'),
(198, 233, '2021-09-29 07:45:17', '2021-09-29 07:45:17'),
(199, 234, '2021-09-29 08:34:31', '2021-09-29 08:34:31'),
(200, 237, '2021-09-29 11:51:44', '2021-09-29 11:51:44'),
(201, 238, '2021-09-29 11:56:00', '2021-09-29 11:56:00'),
(202, 240, '2021-10-03 09:54:19', '2021-10-03 09:54:19'),
(204, 244, '2021-11-14 10:34:11', '2021-11-14 10:34:11'),
(205, 245, '2021-12-06 12:13:15', '2021-12-06 12:13:15'),
(207, 249, '2021-12-07 04:05:00', '2021-12-07 04:05:00'),
(210, 266, '2021-12-13 11:29:50', '2021-12-13 11:29:50'),
(211, 267, '2021-12-13 12:23:53', '2021-12-13 12:23:53'),
(212, 269, '2021-12-26 14:48:27', '2021-12-26 14:48:27'),
(214, 271, '2021-12-30 12:42:10', '2021-12-30 12:42:10'),
(215, 272, '2021-12-30 20:49:00', '2021-12-30 20:49:00'),
(216, 273, '2021-12-31 00:50:11', '2021-12-31 00:50:11'),
(217, 274, '2022-01-02 00:53:21', '2022-01-02 00:53:21'),
(218, 275, '2022-01-03 05:29:10', '2022-01-03 05:29:10'),
(219, 276, '2022-01-03 12:24:09', '2022-01-03 12:24:09'),
(220, 277, '2022-01-04 10:09:35', '2022-01-04 10:09:35'),
(221, 278, '2022-01-17 06:44:36', '2022-01-17 06:44:36'),
(222, 279, '2022-01-27 02:58:54', '2022-01-27 02:58:54'),
(223, 281, '2022-02-01 21:37:22', '2022-02-01 21:37:22'),
(224, 290, '2022-03-27 03:51:54', '2022-03-27 03:51:54'),
(231, 371, '2022-04-18 06:27:58', '2022-04-18 06:27:58'),
(232, 375, '2022-04-25 16:11:45', '2022-04-25 16:11:45'),
(233, 378, '2022-04-27 08:44:36', '2022-04-27 08:44:36'),
(234, 380, '2022-05-01 18:56:49', '2022-05-01 18:56:49'),
(235, 386, '2022-05-18 13:15:44', '2022-05-18 13:15:44'),
(236, 387, '2022-05-18 21:05:44', '2022-05-18 21:05:44'),
(237, 393, '2022-05-27 04:07:29', '2022-05-27 04:07:29'),
(238, 457, '2022-06-03 05:38:20', '2022-06-03 05:38:20'),
(239, 460, '2022-06-03 11:01:00', '2022-06-03 11:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(28,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_packages`
--

INSERT INTO `customer_packages` (`id`, `name`, `amount`, `product_upload`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'free', 0.00, 5, 'uploads/customer_package/ctdXkwgHCE94WUefStaIEHBHmZsRRRI8XKTiyeWS.png', '2020-06-03 18:41:55', '2020-08-01 06:29:44'),
(2, 'Silver', 800.00, 8, 'uploads/customer_package/y7lI9K9H88xFzxL7V3OiCe2TToGAvvMYeq8V1Lgj.png', '2020-06-03 18:42:58', '2020-06-03 18:42:58'),
(3, 'Gold', 1200.00, 20, 'uploads/customer_package/hmlhYy43RMaVpx5JKEulbYY8cvgJnPZa2ReKEVmU.png', '2020-06-03 18:43:29', '2020-06-03 18:43:29'),
(4, 'Platinum', 1500.00, 30, 'uploads/customer_package/pPnPWvk4YEQXGUuUj4nCthWI9oj0FWgENZJ5Purl.png', '2020-06-03 18:44:06', '2020-06-03 18:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(28,2) DEFAULT 0.00,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_products`
--

INSERT INTO `customer_products` (`id`, `name`, `published`, `status`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `conditon`, `location`, `video_provider`, `video_link`, `unit`, `tags`, `description`, `unit_price`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Hp  laptop', 1, 1, 'customer', 24, 8, 21, NULL, NULL, '[\"uploads\\/customer_products\\/photos\\/irnZ6nlQJATCa3MWKmELiKthJ0QpRUcJYkNt8ubY.jpeg\"]', 'uploads/customer_products/thumbnail/taCBr2AZy00aibXYHjhGZISzxiQEldzK26h5RHVW.jpeg', 'used', 'attariya', 'youtube', NULL, '1', 'Laptop', NULL, 42000.00, NULL, NULL, 'uploads/customer_products/meta/2uNHKkzGbSbjHeS6uvF5hjoMwKwMRfonqB7j2J2v.jpeg', NULL, 'hp--laptop-xla5q', '2020-09-08 15:58:25', '2022-01-18 06:14:58'),
(8, 'Test Product', 0, 0, 'seller', 265, 4, 27, NULL, NULL, NULL, NULL, 'new', 'asdf', 'youtube', NULL, 'kg', '', NULL, 110.98, NULL, NULL, NULL, NULL, 'test-product-inpnp', '2021-12-14 12:28:09', '2021-12-14 12:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `created_by`) VALUES
(31, 'Tshirt', 1648649880, 1649168280, 1, 1, '#FFFFFF', 'white', 'uploads/offers/banner/h2CxZjb9hniuUm6Wu9tPd3Mkl4mZjYoV1JjZCZ5e.png', 'tshirt-she02', '2022-03-30 08:34:07', '2022-04-03 12:50:52', NULL),
(32, 'Rice', 1649010780, 1649183580, 1, 1, '#FFFFF', 'dark', 'uploads/offers/banner/NDrQZJZq2U3oLN1NVI40tL0CBrecwp4nkVAjrIWn.jpg', 'rice-p4s6h', '2022-04-03 12:49:31', '2022-04-03 12:50:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(195, 24, 159, 0.00, 'amount', '2022-01-13 11:00:19', '2022-01-13 11:00:19'),
(254, 31, 196, 10.00, 'percent', '2022-04-03 12:50:52', '2022-04-03 12:50:52'),
(255, 32, 200, 0.00, 'percent', '2022-04-03 12:52:56', '2022-04-03 12:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/tM0mpo0EKHMIoumLGdRh66KA3SXWHO9O6F5MelXl.png', 'uploads/admin_logo/MnIpURMh4lgxjXfju3KAa7DR8l57f770JfFswZpF.png', 'uploads/admin_login_background/8JinBWm3o5ZKckmRZWilEakT6Eqz6mdJBAJEkkaZ.png', 'uploads/admin_login_sidebar/CftqdtyljbrJu2YUxTbWpxPJ8yTbIVrcXMzSazml.png', 'uploads/favicon/HaaBwLyQkPjKrjlISmDCtjE5AruWgCDrC0BpZMrZ.png', 'Naulo Bazar', 'Mandikatar, Kathmandu', 'Be a member of Naulo family and get exciting products at exciting prices.', '014371412', 'contact.naulobazar@gmail.com', 'https://www.facebook.com/Naulo Bazar Online Shopping', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.youtube.com/channel/', 'https://www.googleplus.com', '2022-04-07 08:25:30', '2022-04-07 08:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, '[\"16\"]', 1, '2019-03-12 06:38:23', '2020-06-04 14:55:17'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54'),
(3, 1, 'null', 1, '2020-07-30 08:50:02', '2020-07-30 08:56:47'),
(4, 3, 'null', 1, '2020-08-01 06:54:16', '2020-08-01 06:54:16'),
(5, 4, 'null', 0, '2020-08-01 06:54:29', '2020-08-01 07:53:44'),
(6, 5, 'null', 0, '2020-08-01 06:54:40', '2020-08-01 07:53:39'),
(7, 6, 'null', 0, '2020-08-01 06:54:49', '2020-08-01 07:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2020-08-11 15:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Warranty', '#', '2022-01-27 10:58:27', '2022-01-27 10:58:27'),
(2, 'Full Refund', '#', '2020-06-08 08:40:20', '2020-06-08 08:40:20'),
(3, 'Referral', '#', '2020-06-08 08:41:28', '2020-06-08 08:41:28'),
(4, 'Smart Advertise', 'https://advertisement.smartkinmel.com/', '2020-12-14 14:23:40', '2020-12-14 14:23:40'),
(5, 'Prasun Page', '/about-us/', '2022-01-27 06:14:04', '2022-01-27 06:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `login_content`
--

CREATE TABLE `login_content` (
  `id` int(11) NOT NULL,
  `photo` varchar(222) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `head` varchar(121) NOT NULL,
  `subheader` varchar(121) NOT NULL,
  `body` varchar(121) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_content`
--

INSERT INTO `login_content` (`id`, `photo`, `url`, `position`, `published`, `head`, `subheader`, `body`, `created_at`, `updated_at`) VALUES
(2, NULL, 'www.fb.com', 1, 1, 'Advantages Of Becoming A Member', 'Naulobazar Buyer Protection has you covered from click to delivery. Sign up or sign in and you will be able to:', 'Easily Track Orders, Hassle free Returns\r\n\r\nGet Relevant Alerts and Recommendation\r\n\r\nWishlist, Reviews, Ratings and more', '2021-12-30 09:17:17', '2021-12-30 09:17:17'),
(3, NULL, 'www.naulobazar.com', 2, 1, 'Need Help?', 'If you are facing any problem and have any query then feel free to ask.', '+977-9843766625\n\n contact.naulobazar@gmail.com', '2022-05-31 10:42:50', '2021-12-31 04:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `manual_payment_methods`
--

CREATE TABLE `manual_payment_methods` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 'https://almandu.com/product/Johnson-Powder-aHjaH\r\n\r\nHello provider this is test msg', '2020-06-04 10:55:14', '2020-06-04 10:55:14'),
(2, 1, 12, 'can you please pay money for the prodcut', '2020-06-04 11:00:43', '2020-06-04 11:00:43'),
(3, 2, 24, 'Can I use for adults also?', '2020-07-01 03:32:14', '2020-07-01 03:32:14'),
(4, 2, 12, 'yes you can', '2020-07-01 11:40:23', '2020-07-01 11:40:23'),
(5, 3, 23, 'explain please', '2020-07-08 00:47:10', '2020-07-08 00:47:10'),
(6, 3, 27, 'Type on google', '2020-07-08 00:48:22', '2020-07-08 00:48:22'),
(7, 4, 23, 'https://closetnepal.com.np/product/Progemei-3-in-1-trimmer-KNVRa', '2020-07-21 01:38:16', '2020-07-21 01:38:16'),
(8, 5, 12, 'what is this', '2020-09-10 08:52:19', '2020-09-10 08:52:19'),
(9, 6, 12, 'https://closetnepal.com.np/product/Mens-Luggage-bag-crFLf\r\nwhat is this', '2020-09-10 08:53:00', '2020-09-10 08:53:00'),
(10, 7, 12, 'https://closetnepal.com.np/product/Mens-Luggage-bag-crFLf', '2020-09-10 08:55:01', '2020-09-10 08:55:01'),
(11, 8, 148, 'I need a gaming mouse. Do you have them ?', '2020-11-26 01:07:58', '2020-11-26 01:07:58'),
(12, 9, 148, 'https://closetnepal.com.np/product/FrontTech-Multimeda-speaker21-channel-viiZC\r\n\r\nHow many speakers does it have ?', '2020-11-26 01:08:32', '2020-11-26 01:08:32'),
(13, 10, 77, 'https://smartbigmart.com/product/Pearl-Green-Tea-ACSSP\r\n\r\nStock Not available', '2021-06-01 07:26:33', '2021-06-01 07:26:33'),
(14, 11, 12, 'https://naulobazar.com/product/test2222-vsKHZ', '2021-10-27 12:03:30', '2021-10-27 12:03:30'),
(15, 12, 12, 'https://naulobazar.com/product/samsung-smart-tv-MwRMc', '2022-03-23 16:01:52', '2022-03-23 16:01:52'),
(16, 13, 293, 'very good product', '2022-03-27 04:20:42', '2022-03-27 04:20:42'),
(17, 14, 327, 'https://www.naulobazar.com/product/asf-DqM4M\r\nhey', '2022-03-27 17:50:58', '2022-03-27 17:50:58'),
(18, 14, 327, 'rgr', '2022-03-27 17:51:22', '2022-03-27 17:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00e35389540956aa555a20ad344312a8c2b6f0d654036846132ab02d7bc6d4bfa7fd7cf0b14ae789', 120, 1, 'Personal Access Token', '[]', 0, '2020-11-27 12:03:04', '2020-11-27 12:03:04', '2022-10-28 13:03:04'),
('05cf110aae9d31c118cadf764c1f704ace181ecccd73ab4205a2a9f7aa9fd6a345251290a671b353', 95, 1, 'Personal Access Token', '[]', 0, '2020-10-22 03:42:32', '2020-10-22 03:42:32', '2022-09-22 05:42:32'),
('0696d8822e2469e03709187e87367c9c07a0d345f057b8ddaf014ba704fe059e81b00558db80be5f', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-19 13:05:33', '2020-10-19 13:05:33', '2022-09-19 15:05:33'),
('07216d8a54c7532abf086c2dc2de6d8dc53092b9da2b483239296fb6c5e3ea7a34584fd0ea9d6357', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:02:41', '2020-09-11 03:02:41', '2022-08-12 05:02:41'),
('089167e931d278844838228ca5ec9611c212f68c1131c44e98796010709de1a5058a286312dc79e1', 8, 1, 'Personal Access Token', '[]', 0, '2020-07-18 17:32:12', '2020-07-18 17:32:12', '2022-06-18 19:32:12'),
('09591e19288fb60ec629b269a30a1d2d49df1f803666b5467f763651b06eee1ef7056413d2fba8eb', 275, 1, NULL, '[]', 0, '2022-01-03 05:39:07', '2022-01-03 05:39:07', '2023-01-03 05:39:07'),
('097c64f1338c7dc5f5f1e82a45fa0e7753562830b05b2b7bb69a8ff17c4c9e20ffc952a986e24ff9', 65, 1, 'Personal Access Token', '[]', 0, '2020-10-21 13:04:31', '2020-10-21 13:04:31', '2022-09-21 15:04:31'),
('0adae4cae9d7f30e2103949416bf2d473d66bd9efbed69e4394af7997a44b57a601c8143d1961a60', 275, 1, 'Personal Access Token', '[]', 0, '2022-01-03 06:00:58', '2022-01-03 06:00:58', '2023-12-04 06:00:58'),
('0b3bcbb3cf37ae37c0f4652ce375fa2c8d5adb2dd0e5848c9ae9539f9bafe96f582c2fb5b944adf8', 139, 1, 'Personal Access Token', '[]', 0, '2020-11-23 09:38:16', '2020-11-23 09:38:16', '2022-10-24 10:38:16'),
('0ca7a28c8186eb0db120b37d92a944c1dd5c6fb57368d95b92c8d226b6e069aa477a595b86087e8b', 123, 1, 'Personal Access Token', '[]', 0, '2020-11-28 02:10:10', '2020-11-28 02:10:10', '2022-10-29 03:10:10'),
('0d530a9e69d1e95ca76dd5d63f5a42969e318039f280caf3cae15761bf9ceb79036f8a4f1e299977', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-20 08:20:08', '2020-09-20 08:20:08', '2022-08-21 10:20:08'),
('0f5cde4c459942b312aa5500859a5f6cd10aa16ba7ce451d93ed27d1d14052f82e0609cb62eed950', 97, 1, 'Personal Access Token', '[]', 0, '2020-10-23 08:55:31', '2020-10-23 08:55:31', '2022-09-23 10:55:31'),
('0fdc3921b3a39db3c3daf7ff91b525b1c0918a261c411d428d8cdfdf5ff87a2ef8463ec1f9d406bb', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:58:28', '2020-09-09 09:58:28', '2022-08-10 11:58:28'),
('111d127619d51d07c09c82d4ecdc9ae49d957362188fb1f8c2745b0f8097e385769773ede5ce7991', 17, 1, NULL, '[]', 0, '2021-12-30 12:14:47', '2021-12-30 12:14:47', '2022-12-30 12:14:47'),
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('12f141705f24ea7ec6da57325ee8edea562ef56a0023e1d79917c29816dd35b28dae099f4b6bbfa8', 189, 1, 'Personal Access Token', '[]', 0, '2020-12-13 00:43:05', '2020-12-13 00:43:05', '2022-11-13 01:43:05'),
('13a59886eeb23c32e344af4e30d3033a73740a41e2f4d6d0fbc7eb64cd2998add28c05b113e115b7', 25, 1, 'Personal Access Token', '[]', 0, '2020-10-27 04:22:52', '2020-10-27 04:22:52', '2022-09-27 05:22:52'),
('1562d6f08e6e086de8cd88edd76ce43534bd6128ebe4274af2f6d7c8614ed0068bf79358f3ebd56f', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 00:59:02', '2020-09-10 00:59:02', '2022-08-11 02:59:02'),
('1950b520984abc1ecacb398154f806647661f212c261fcf5b5592e3aca92743bfc89b64f3b1a2559', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-12 09:56:00', '2020-11-12 09:56:00', '2022-10-13 10:56:00'),
('1ba3c60353635c06da722669870c88cee886ad4f118b11bdd69ae41a85f759f909ad356dfa6a9428', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-16 09:44:33', '2020-10-16 09:44:33', '2022-09-16 11:44:33'),
('1bda476c4f6ef6ad1697d122ea37ef1701bf495896b41f861fa12d6c380a883c1797cf8954f144bd', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-18 09:51:04', '2020-10-18 09:51:04', '2022-09-18 11:51:04'),
('1d9e57dc0032f1a158dc3cbaff75240e54ca4f7b1776b0d9462e7620f0833268032e873ce74f3bb5', 79, 1, 'Personal Access Token', '[]', 0, '2020-11-15 16:02:21', '2020-11-15 16:02:21', '2022-10-16 17:02:21'),
('1defa8c1d0d8b93c842aad086ea85c98e65cb1e3c1876353ff85f4857d3745d145a5f5dfb1e65692', 87, 1, 'Personal Access Token', '[]', 0, '2020-10-24 07:10:49', '2020-10-24 07:10:49', '2022-09-24 09:10:49'),
('1f5bf21661d562e2ab9a3532997d3f9e501abc2187f8395db5d1abc1938dff7c3ea0fdc43a9d227a', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-03 12:11:08', '2020-09-03 12:11:08', '2022-08-04 14:11:08'),
('1f678fbc72378c096736bc92b64644fc8c20369232fb050a07d467e394a4f891a48d9fefda5e0d75', 159, 1, 'Personal Access Token', '[]', 0, '2020-12-03 08:09:43', '2020-12-03 08:09:43', '2022-11-03 09:09:43'),
('20d36e0d38a6c9789bfb9602a2613f6a3d5b9d1c8600aa9f02a8d2bcf360f6d7e29baf31538595c8', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-16 06:17:25', '2020-10-16 06:17:25', '2022-09-16 08:17:25'),
('213e2520689067a96c5745328196e008d8c9518365723f7e8e7af4aa572f1c67dfba612aef18db39', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:32:35', '2020-09-09 09:32:35', '2022-08-10 11:32:35'),
('248ae44151973f8e01b01bf316a8e8a16aa76f54abd8b0273b3d235736d9cccbfaa9d09ac275ded2', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-19 10:07:45', '2020-10-19 10:07:45', '2022-09-19 12:07:45'),
('24c27962451818f42e12b484eefe42900875b9b2113aea2ff17311763c7cb833109dd1a9c9b7a389', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-20 00:04:20', '2020-10-20 00:04:20', '2022-09-20 02:04:20'),
('24ddbe3def94bbd04376ec39ffffca86f40d2a3e739d265eed31053ac5d6f40f5839f8f879cf5af2', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-13 11:22:21', '2020-09-13 11:22:21', '2022-08-14 13:22:21'),
('260f750b467143e9ce5c232da19d0b88000cd8f89c765a6152a230b8a426c493d585533d9f10e65a', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-20 08:01:20', '2020-09-20 08:01:20', '2022-08-21 10:01:20'),
('26dbf5a703b2eb746837d289d9aa0f5d8950055530f63669125b6ce24388b11143083e7ff766567b', 85, 1, 'Personal Access Token', '[]', 0, '2020-10-16 09:46:00', '2020-10-16 09:46:00', '2022-09-16 11:46:00'),
('27fefc15e4d27b94b2151359e22859d26775c33698244120dc9c1698c676c8b24a087f5a07b4e471', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-18 09:55:16', '2020-10-18 09:55:16', '2022-09-18 11:55:16'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('2c2d257b5a587def24e528df1a975a484a5d794cc41f0ae8226fcc22d0e7d986b8a636ee73a04297', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 07:36:44', '2020-09-10 07:36:44', '2022-08-11 09:36:44'),
('2d4298f2a1cbb935e888327be6d0ac1b687251293c259995c15bf66e770de40a9a155da11a1c2b2f', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 03:03:47', '2020-10-18 03:03:47', '2022-09-18 05:03:48'),
('2de1996effd31864d4bbdc2f199028d5bb0decd7a0186ba66d4feff0352ff986f235fafcebe8f39d', 165, 1, 'Personal Access Token', '[]', 0, '2020-12-06 13:24:53', '2020-12-06 13:24:53', '2022-11-06 14:24:53'),
('2e2355a7a9e8848872c4d7ee8514655b673c854370e900b9418de5bed7a8d6d097495146ae82fbe0', 132, 1, 'Personal Access Token', '[]', 0, '2020-11-20 00:48:20', '2020-11-20 00:48:20', '2022-10-21 01:48:20'),
('2e5693dae392e5a4f70529808a3288527c080a392b8309e11b596ca52f02500ca462bc8d02f59e38', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:53:37', '2020-09-11 03:53:37', '2022-08-12 05:53:37'),
('2ea5b291134512ef731f2b3c23d3981412d5dff373726215736874da8775f843afe8d5e07cb36c35', 27, 1, 'Personal Access Token', '[]', 0, '2020-12-11 01:12:21', '2020-12-11 01:12:21', '2022-11-11 02:12:21'),
('2f7bdd640b81ef350d1f2067fe4ff3eb8e2d1dccf2b0ae6092a376159cce02e0ee625c60e292594b', 122, 1, 'Personal Access Token', '[]', 0, '2020-11-14 00:05:16', '2020-11-14 00:05:16', '2022-10-15 01:05:16'),
('3012a16942937eecf8604ef10eaed6bc02f8a5415ffaf6dd2fd2c28125b63e297495c43c83869e80', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-19 13:44:30', '2020-10-19 13:44:30', '2022-09-19 15:44:30'),
('308f0e1177fb20b60a6a406ebb44d7d3138cb3e69c7713f8a083dd48baef29bb5e6a2bf919981c2a', 123, 1, 'Personal Access Token', '[]', 0, '2020-11-18 03:39:41', '2020-11-18 03:39:41', '2022-10-19 04:39:41'),
('30d2d0e7e84ef8338b97988cf9d403bb1369f546786c9f71b3d233aa2a952c14b6b746608e33f9bf', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 08:33:30', '2020-09-10 08:33:30', '2022-08-11 10:33:30'),
('33253d7b3c267e600b92dba4c0454f7fba91ad7d74a795a68bb3cfefe94d70d907f107872455b1df', 87, 1, 'Personal Access Token', '[]', 0, '2020-10-21 13:58:43', '2020-10-21 13:58:43', '2022-09-21 15:58:43'),
('35c35b5f53f988a5c3ed2e1dcbb37a6c1b59fb851fba7f252d50ffafb96add6b2ac7a33333be421e', 172, 1, 'Personal Access Token', '[]', 0, '2020-12-07 11:18:08', '2020-12-07 11:18:08', '2022-11-07 12:18:08'),
('3628068fdb57af60f73a528493e483c7fc3a044c73d1b21a77a9f92a5f30bf4b575db4e03a5f922e', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:11:49', '2020-09-11 03:11:49', '2022-08-12 05:11:49'),
('37b9d3db83911d0efdf705e02b0772f91b8614fd46a41084f998acbbb8c38f2f245ca2b6db3b8931', 84, 1, 'Personal Access Token', '[]', 0, '2020-11-04 08:42:58', '2020-11-04 08:42:58', '2022-10-05 09:42:58'),
('393cfca1cf440ac558b6e254d6d3cea10eec9b18e3d6ce10747536cd392716521031e426b8eaa60a', 169, 1, 'Personal Access Token', '[]', 0, '2020-12-07 09:17:40', '2020-12-07 09:17:40', '2022-11-07 10:17:40'),
('3a4b23bcb054d78bbdf445401704ee7a050528de1942b610378c8aa80da09f704a284df30d12947c', 155, 1, 'Personal Access Token', '[]', 0, '2020-11-29 06:21:56', '2020-11-29 06:21:56', '2022-10-30 07:21:56'),
('3cb53d709ec6836069d5b6d5aa89ae016a981fae930f55b6090150818f507a76bb4ad67a022e0c8b', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 09:50:40', '2020-10-18 09:50:40', '2022-09-18 11:50:40'),
('3ef36b7f30bd7bee86d8d840e1ef23a06ee064174b449e1841650ed0b5202ff902c253e3337ad589', 106, 1, 'Personal Access Token', '[]', 0, '2020-11-06 10:09:25', '2020-11-06 10:09:25', '2022-10-07 11:09:25'),
('411f1134c4551f8ff0018adb7f7b0d3b9825caa6b3a5a63dca246e1eec1638067e1d09ab6a68280f', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-24 07:11:43', '2020-10-24 07:11:43', '2022-09-24 09:11:43'),
('41c186fb02210de37b610fb65bb06872f1efa8739eb28709453fa5c2ecedd0002c30c909275b0a99', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-06 03:55:18', '2020-09-06 03:55:18', '2022-08-07 05:55:18'),
('434ed00520c4f7ae1d4a91b3bd0f600400371577c0c44d55027ccf843688e01c2aff55e23db2eb77', 120, 1, 'Personal Access Token', '[]', 0, '2020-11-26 08:55:57', '2020-11-26 08:55:57', '2022-10-27 09:55:57'),
('44a867861bfb11036a5369f45a5de27a28162f51f721992895016ad56e9fa0741615f32c0acaf951', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-22 03:50:05', '2020-10-22 03:50:05', '2022-09-22 05:50:05'),
('478d3302ee94561b6c61d76526c75dfb63328f0550948032254be60032c391cbc9ef1014d6af4e1e', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:59:19', '2020-09-10 02:59:19', '2022-08-11 04:59:19'),
('49c09b65efd2557111cb14af7974dfac2a1cbdd33707fdefe3db2efa589a7e360cee253f67c4d91f', 120, 1, 'Personal Access Token', '[]', 0, '2020-11-26 08:36:23', '2020-11-26 08:36:23', '2022-10-27 09:36:23'),
('4b840013c4fefbe4d4a725c390211dd5b49664fcf3d7e32ffed7040c7c71eae58f11271fc2277997', 68, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:47:36', '2020-09-09 06:47:36', '2022-08-10 08:47:36'),
('4bdf469b008e8ef61c92c238fce02c760734f06e93378cb0250c29b80d8c97daf9f0cb8d3b880964', 101, 1, 'Personal Access Token', '[]', 0, '2020-11-01 11:33:32', '2020-11-01 11:33:32', '2022-10-02 12:33:32'),
('4c5c3145b88cbef0afe7726f8c9f4b6736a097dce657d38d5aa133e850a0cef0574ac8dd6e7af2aa', 20, 1, 'Personal Access Token', '[]', 0, '2020-11-19 16:53:17', '2020-11-19 16:53:17', '2022-10-20 17:53:17'),
('532520ee0dd339dd515b12c65c492577096f31fa55d169aa01245583fcb53f05e661e0264687dcd2', 173, 1, 'Personal Access Token', '[]', 0, '2020-12-07 13:22:12', '2020-12-07 13:22:12', '2022-11-07 14:22:12'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('536ea0bc4ec77aecc6d8abba352c957d8b5366af9c79643c21bb4def3c0d1ec58954ad9a767c8eae', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 08:36:57', '2020-09-10 08:36:57', '2022-08-11 10:36:57'),
('5427377d97c7d29b46c55e6d28aea831021d9ac03c67b52e628945dd4c1dd343a77d40027aee4d41', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 07:07:40', '2020-09-10 07:07:40', '2022-08-11 09:07:40'),
('54c81e84ff620714dbfa99d823a6fa2457240336460509c251f21a3dc61b1b6db1ea582b048abc39', 73, 1, 'Personal Access Token', '[]', 0, '2020-09-11 05:25:39', '2020-09-11 05:25:39', '2022-08-12 07:25:39'),
('5514b5c133e16de6626452647506b4f97ddb664920b17dd5883db35ac2c4d57a7a3b08df9190ee8c', 20, 1, 'Personal Access Token', '[]', 0, '2020-12-01 13:24:29', '2020-12-01 13:24:29', '2022-11-01 14:24:29'),
('5693a22e5156d9517181d31b6ff5a8ffaaea42ea4c7a310427bdfc582ab9902fe133e6a490bd59aa', 183, 1, 'Personal Access Token', '[]', 0, '2020-12-10 12:52:59', '2020-12-10 12:52:59', '2022-11-10 13:52:59'),
('58bea1b63327270d9eb9bd4500d8e53e12ce78a9667579166c4d61d37c12ed29f7eba373cbaac498', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-13 07:33:52', '2020-09-13 07:33:52', '2022-08-14 09:33:52'),
('58f2a19f40aac5b948c654d8e30c79e5fd417ceb9a35b5ca2f335caa8714e3e1c8be6b3110cb5bce', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-07 04:26:32', '2020-09-07 04:26:32', '2022-08-08 06:26:32'),
('59731bde55b04c0fd076db57418ffba761137c8f3d43519e043b23bef11f282f819cf9a22b64bfb7', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:11:26', '2020-09-11 03:11:26', '2022-08-12 05:11:26'),
('5aae53f90aa53167578bcca8700fb5c61da201953d5aa1459195a4ed3013fa6c78504026dd69dcee', 85, 1, 'Personal Access Token', '[]', 0, '2020-10-16 08:53:00', '2020-10-16 08:53:00', '2022-09-16 10:53:00'),
('5d78165acd18815e8d915ee15ed31397c2031bd4d7c65f9299d8a0f4eaefc6ce45d6d09da61b42fc', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-05 05:42:39', '2020-11-05 05:42:39', '2022-10-06 06:42:39'),
('5e960cf3a8c746231ee2d0bd3557caf347f813aeb786462e10431f96eb7d0ffd0fc0c9c365d067a0', 182, 1, 'Personal Access Token', '[]', 0, '2020-12-10 03:46:15', '2020-12-10 03:46:15', '2022-11-10 04:46:15'),
('601fc7a20c92396a006ef9402d86e46d0cd86fc60ff856b24f51b5ccdf0c2cf303b83ce549028f1e', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 07:07:21', '2020-09-10 07:07:21', '2022-08-11 09:07:21'),
('619a8aa62109874f73a085d62044fa72637efd2022d817716d48be496384b11220e97296e9107a2d', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:40:32', '2020-09-10 02:40:32', '2022-08-11 04:40:32'),
('643e8ec2ffc621fc3a15a40038bb8e0cacec9c82b0a864081f528fd364338a9ebe7c021ff5c20714', 20, 1, 'Personal Access Token', '[]', 0, '2020-11-23 16:06:28', '2020-11-23 16:06:28', '2022-10-24 17:06:28'),
('65334743bf614be31b53b24e84f2f919fec1ed3ab35513247973047f81ea81048fb9a3cb2afb6a2f', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-13 10:03:44', '2020-09-13 10:03:44', '2022-08-14 12:03:44'),
('654d056f6727491bc47ec4d1d9090d2a02646b6ae28269acf2a9e37f15ac6710f8cd7d3b4c064ab2', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-04 09:04:13', '2020-09-04 09:04:13', '2022-08-05 11:04:13'),
('65c1b908f460ad3c83238e618d7b06cbe08886a798a5194707fc9156d6173df1ef5c7ea7a81de7f2', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:28:15', '2020-09-09 06:28:15', '2022-08-10 08:28:15'),
('66a3e9ce766d17babe2ce0f7cf9d8d6c054f45bc48699d297c32355d676d6c8cdda7a8566b66d51d', 188, 1, 'Personal Access Token', '[]', 0, '2020-12-12 15:43:49', '2020-12-12 15:43:49', '2022-11-12 16:43:49'),
('67df7e6d9e7f69555fe53a2ce527cf4e0891a7ff34442f5b865350d8a3c02cb7757cc867f37c871c', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-12 09:59:03', '2020-11-12 09:59:03', '2022-10-13 10:59:03'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6c40ded33b12e7f2246160e267efb48a979eb850cb010a8376606ba3ef34361308baecc2909ee7b0', 71, 1, 'Personal Access Token', '[]', 0, '2020-09-11 02:58:14', '2020-09-11 02:58:14', '2022-08-12 04:58:14'),
('6c6467c198af0d39fa30532289a5c41610112d51e07ba5aab8f6fd1c180144a5bf56ec3aad787017', 271, 1, NULL, '[]', 0, '2021-12-30 12:42:30', '2021-12-30 12:42:30', '2022-12-30 12:42:30'),
('6c9cc377ddcccaabe5303c17cc47d5ced76df90dcac0abc7cad06a40738119176bf982353a384867', 69, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:50:54', '2020-09-09 06:50:54', '2022-08-10 08:50:54'),
('6cbfd68ddded10b1d003dfa15b8c44f8da166658b012d9bde49857be4560702f7ffc9e31baea5d2b', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-19 05:18:48', '2020-10-19 05:18:48', '2022-09-19 07:18:48'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6de58c0a4de203206daa791848ed8fed7b3976aa2315a57ac84c5731e0b10fd9c5203bd9f9a280b0', 93, 1, 'Personal Access Token', '[]', 0, '2020-10-20 08:39:36', '2020-10-20 08:39:36', '2022-09-20 10:39:37'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('71d1b8771476448095b4faa334cb8ac5e73e5a015da8379b1c053caf08e3e2ad98b26feaf7ff6e9b', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 12:38:21', '2020-09-09 12:38:21', '2022-08-10 14:38:21'),
('730a769ee817c73f9868a28b51eed1e02955960ab64dec4c9926e8a2e4504009f420b167d06a7245', 87, 1, 'Personal Access Token', '[]', 0, '2020-10-20 06:31:44', '2020-10-20 06:31:44', '2022-09-20 08:31:44'),
('7610ea6ef411f1edd108558e63b750e9d075de8ffcaafb839981ad2ed563b70efcc1bbfcde8e3098', 275, 1, 'Personal Access Token', '[]', 1, '2022-01-03 06:07:15', '2022-01-03 06:07:15', '2023-12-04 06:07:15'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('77e15a9e31f36afccc1c6aeeb7479c42d492b71b735cea1f39fa59fbc60cf87979c11d7c49de53bf', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-19 05:16:02', '2020-10-19 05:16:02', '2022-09-19 07:16:02'),
('78053f665fcd7dafd24c577ffacfc847b4dbcdfe665bc5c338c3169030310382392bffd812766800', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 00:13:59', '2020-09-10 00:13:59', '2022-08-11 02:13:59'),
('781172367999f0e3d3240fcff6cc835c6d306a9e8b2b9fdaea63437d5608fa69fde531127b801f8d', 137, 1, 'Personal Access Token', '[]', 0, '2020-11-21 14:20:23', '2020-11-21 14:20:23', '2022-10-22 15:20:23'),
('7839f0317c244f46acc494781bbfbaf2901ca2d0e1b475c34ade388638a4ff464287ce0a3e2be4a3', 91, 1, 'Personal Access Token', '[]', 0, '2020-10-20 05:40:14', '2020-10-20 05:40:14', '2022-09-20 07:40:14'),
('78eb4eee76520c447531c79d77260e62d09538b25c8a21ef57621d9342048e5f9d3a08b6683c54b1', 130, 1, 'Personal Access Token', '[]', 0, '2020-11-19 06:03:48', '2020-11-19 06:03:48', '2022-10-20 07:03:48'),
('7ad843eac1edcd17c22c77fa57203b7fa025afb62fe07e9984e8b7f08a09855fc932001be79ab142', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-03 12:10:41', '2020-09-03 12:10:41', '2022-08-04 14:10:41'),
('7ae14da7863366f901dc082e3afc9c425ca8abdf8287a971f5a429e8d7b3d031ddb8822f9e9e017b', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 12:37:48', '2020-09-09 12:37:48', '2022-08-10 14:37:48'),
('7b3cb01d25aba41e074fbc65c2c560414c2f6325bab47627d9b370a84f8f2ea698675674e11feb36', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-08 09:07:49', '2020-09-08 09:07:49', '2022-08-09 11:07:49'),
('7be33d74496f0abe2ed4a64b6c134aa8b851374858c40815d981d47ecde903546a0193a7285002f6', 12, 1, 'Personal Access Token', '[]', 0, '2020-09-13 08:32:28', '2020-09-13 08:32:28', '2022-08-14 10:32:28'),
('7d4e4009526b75a9ab5b774e788a98398dd9bdee085c498f3bca352ce3efb1192e949c9f506b5f5c', 58, 1, 'Personal Access Token', '[]', 0, '2020-10-01 01:33:12', '2020-10-01 01:33:12', '2022-09-01 03:33:12'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8206313fe58ad743f4d366f71cc7a15a882a865f8bcb47f4fba600468fab44fd4cd7eeac1f15a8c9', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-12 09:53:58', '2020-11-12 09:53:58', '2022-10-13 10:53:58'),
('82a93b326826e1e9c4411902a09acc3aaeda55ff8394eb6f6e715317f16fd11fcbd0b060f5213c31', 265, 1, 'Personal Access Token', '[]', 0, '2022-01-03 06:59:51', '2022-01-03 06:59:51', '2023-12-04 06:59:51'),
('8319f0736c6fb5889874d868edd218173b40d01490caf80230d00b3b57c136557ce04f5cd5ffca48', 234, 1, 'Personal Access Token', '[]', 0, '2022-01-03 06:00:27', '2022-01-03 06:00:27', '2023-12-04 06:00:27'),
('832d410a8c5ed47225cdc5f4765a37b7983799471be5869e86f9210896db86c0cb1afc10537af86d', 171, 1, 'Personal Access Token', '[]', 0, '2020-12-07 10:42:03', '2020-12-07 10:42:03', '2022-11-07 11:42:03'),
('83a40fdf01169175f7b27bfb2292d6cee0a5e96064d5ed55bbef6f4efffa7915722f97098a85c215', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-16 10:05:47', '2020-10-16 10:05:47', '2022-09-16 12:05:47'),
('850f4ad20cd1b8ddd73e77ad421b03e8f8b1383293ded89384182eca75167d39f285786e5f3ad25c', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:19:42', '2020-09-11 03:19:42', '2022-08-12 05:19:42'),
('85efb41245d571198ae4db6cb9b6df441945bc47e2a1665ae434163ca8f4ff8a5d4de540b33a0f90', 275, 1, 'Personal Access Token', '[]', 0, '2022-01-03 06:13:25', '2022-01-03 06:13:25', '2023-12-04 06:13:25'),
('864fcbd30205cc5eedc448973cbd7db2243f3e4b0810757f5bd02e6ef64600262b27e93ea7be0c0c', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:37:45', '2020-09-10 02:37:45', '2022-08-11 04:37:45'),
('871c7768d2aed19b63ef64b7cee63742c89716b109092fa884f8bc230ddec074e533bfbea2a5db96', 70, 1, 'Personal Access Token', '[]', 0, '2020-09-10 08:38:52', '2020-09-10 08:38:52', '2022-08-11 10:38:52'),
('87be6bb25259715235ca303bfe91c89350f1fa94ce19869e44f64b1a6ff4cbdb7d8f040f05d0aa9f', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 02:49:04', '2020-10-18 02:49:04', '2022-09-18 04:49:04'),
('88d75541aaecbbd045eb5439f621640cb0b135996da0e6629de67da9ad652d596ae4ba06492dc4cb', 58, 1, 'Personal Access Token', '[]', 0, '2020-10-12 03:59:38', '2020-10-12 03:59:38', '2022-09-12 05:59:38'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8a6ca97aac0441091f67f60b8b494a22e7f5cb6d4d8e5ef19e5a19ff0ca8681972442452b54d7f71', 84, 1, 'Personal Access Token', '[]', 0, '2020-11-26 08:55:05', '2020-11-26 08:55:05', '2022-10-27 09:55:06'),
('8ac75ef76f5d2b6be0a561dfe27cb0e0a1b8ebf2b532417aab8795bb9a149093b493e7b65a73709b', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 07:34:43', '2020-09-10 07:34:43', '2022-08-11 09:34:43'),
('8ad05251523c9b6f51ff8a7d2316385785e6c90a67ea212702bcd76243e5a5dc7982e14af20b4f19', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:13:39', '2020-09-11 03:13:39', '2022-08-12 05:13:39'),
('8ae3fba7d1a188f4bdeec02767049fd2b67db811c8e2be7e9986c4059c0a1f47426b5a911248b736', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-22 03:39:12', '2020-10-22 03:39:12', '2022-09-22 05:39:12'),
('8cb6a1730a57235dd3b2d000b415a14198b614ffac7c46a7a96b406d39936a58586ab48bde86c167', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-20 08:28:57', '2020-09-20 08:28:57', '2022-08-21 10:28:57'),
('8d26007146b18067f93e5738247caa51ec93b95c2dd87025f6e5379f1ed2c7e124e44b9863789aa0', 87, 1, 'Personal Access Token', '[]', 0, '2020-12-08 06:55:18', '2020-12-08 06:55:18', '2022-11-08 07:55:18'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('8e60ed2897e8d1f6111b41b84bd09365e14cfda5a6615f9257bb15dbb9fe244903080292564f820f', 131, 1, 'Personal Access Token', '[]', 0, '2020-11-19 13:52:12', '2020-11-19 13:52:12', '2022-10-20 14:52:12'),
('8e8d44e769fc4ca42281da2997c76cd0e3b9f8ae23be3a1fa3d48c02ee802d8927a437aeddd9916c', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:32:07', '2020-09-09 09:32:07', '2022-08-10 11:32:07'),
('8ea9b3460823fe19f23e5693e927e2115df7ca1a6d1c43c2fb2c0a0c20859db050db1ce7998c0e4b', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 08:34:21', '2020-09-10 08:34:21', '2022-08-11 10:34:21'),
('8f22e3d1080a9b589c14c1eff44319c7510784a5acf4581ca8c7db7a21cd4efef55bcb6ff367d713', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 08:35:14', '2020-09-10 08:35:14', '2022-08-11 10:35:14'),
('9090bef8fd3c0ce0eea7224f1106fc36883e4fb15da56ddc9a61a1709c9acba49955c20603e5f337', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 00:40:33', '2020-09-10 00:40:33', '2022-08-11 02:40:33'),
('90d80f6f135db163f37626cec4f2cef9b8dc9546b1a4fb92fe0dab38447124715218cd20dad43856', 92, 1, 'Personal Access Token', '[]', 0, '2020-10-20 06:29:11', '2020-10-20 06:29:11', '2022-09-20 08:29:11'),
('91cd11e912196b9a0841feb6882763d76a60712d93b7a870c8d170bedccd82a240fd1fdefa1d1ebb', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:37:40', '2020-09-11 03:37:40', '2022-08-12 05:37:40'),
('923dbb53ee9939d8a06ef8dfe239bd7f88da8e75f31afa3183205efc2775fccb1d84605ca9fb5b0b', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:22:45', '2020-09-09 06:22:45', '2022-08-10 08:22:45'),
('9297a12b8d8d8553378e74de7e8628d8f08b049e8f369d68476239b8677065f818a5176d6d80ffc2', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:39:05', '2020-09-10 02:39:05', '2022-08-11 04:39:05'),
('92bd08fd28862634a6a1f31a6e07738a6c29c37b138dc72461c091db1f3a1e8a175281da93fe6c9c', 107, 1, 'Personal Access Token', '[]', 0, '2020-11-07 22:32:12', '2020-11-07 22:32:12', '2022-10-08 23:32:12'),
('93b2f4fa599241aa1cc5d9e5561720ee1f5cd61baaeb752deefd97dded3183d6cb91bef735ab7562', 58, 1, 'Personal Access Token', '[]', 0, '2020-10-16 06:11:49', '2020-10-16 06:11:49', '2022-09-16 08:11:49'),
('953c0a63577163c5ceae97572914edc6c420dd6f189c7e1f5e23c05b48189be70d9c8e37a4cd8c74', 275, 1, 'Personal Access Token', '[]', 0, '2022-01-03 12:38:25', '2022-01-03 12:38:25', '2023-12-04 12:38:25'),
('977ea1282c21108417a7256a14d7a240e116687c1c09689e4b20efe23704a628ec962ad4ff7934e3', 17, 1, NULL, '[]', 0, '2021-12-30 12:14:37', '2021-12-30 12:14:37', '2022-12-30 12:14:37'),
('98f240fe35b9487f2c419544f79b77f7b21fedd46389729a257dde2d99e2556dc20c61e98a392b84', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-16 06:56:21', '2020-10-16 06:56:21', '2022-09-16 08:56:21'),
('9cb6ca5db3f3c898a990eaad6b9093cff9b3846c7094be1bf3c68f2e78c03e8f4f604694ed03dbe5', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-12 09:56:15', '2020-11-12 09:56:15', '2022-10-13 10:56:15'),
('9da32d508d3c80d6b0599649fcbe05cc1c18a128c265cb63ed7cc16160d30e503246546a32615079', 87, 1, 'Personal Access Token', '[]', 0, '2020-12-08 06:56:16', '2020-12-08 06:56:16', '2022-11-08 07:56:16'),
('9f3893852487b7ae986445a03315c84a6a4ef1b00b7a8c0cb4e2114914299008fb1f2300ff4ec2a1', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:37:21', '2020-09-09 09:37:21', '2022-08-10 11:37:21'),
('9feb9e8d0c0669b3924dfb7e9258b31a77934c3e6988d4b0b3f9d157498c53cfc3abe928a6ec6585', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-19 13:33:01', '2020-10-19 13:33:01', '2022-09-19 15:33:01'),
('a10d28ed02be9a5fd6191e544f696715173cdbdf9ca99f5dd2932bb7693eb478a1d795be72bce5bc', 8, 1, 'Personal Access Token', '[]', 0, '2020-07-18 17:32:12', '2020-07-18 17:32:12', '2022-06-18 19:32:12'),
('a1564b7d6af7ec531758ede16cb7e7725e2aaae7256e57c95f6ad64b12c33e54540fe88e68450474', 275, 1, 'Personal Access Token', '[]', 0, '2022-01-03 10:52:20', '2022-01-03 10:52:20', '2023-12-04 10:52:20'),
('a15db040458f7a7ad9b411b25d2c235f7843f27e9129b20b1b931bec53063cf5264069eabb0f7b46', 33, 1, 'Personal Access Token', '[]', 0, '2020-11-08 12:28:25', '2020-11-08 12:28:25', '2022-10-09 13:28:25'),
('a172efafc9998d8a95c0a119fde659e0620a7693449f4ee85d819fd6d8a811ed7b4f738f642908d8', 103, 1, 'Personal Access Token', '[]', 0, '2020-11-04 09:07:18', '2020-11-04 09:07:18', '2022-10-05 10:07:18'),
('a3098d0e08548ab2e355216aba124a6098c13137ec96b6109fc61d86c4e20d5245a22f08653bd3c9', 87, 1, 'Personal Access Token', '[]', 0, '2020-10-20 06:28:27', '2020-10-20 06:28:27', '2022-09-20 08:28:27'),
('a4b29451652cfa10e6c8e7849afbb39c3472448b436ca1905a9f91348180951eb3e576b5374c4ecd', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:53:36', '2020-09-09 09:53:36', '2022-08-10 11:53:36'),
('a88b9a096999612a25ebf634407723e8cf929f2e6d2d8678324a85cee1a9ce9f70a68342e8f62258', 265, 1, 'Personal Access Token', '[]', 0, '2022-01-03 10:51:37', '2022-01-03 10:51:37', '2023-12-04 10:51:37'),
('aaad7379c0f370650ebec79479d790358949196bd32409cb4d1715f2fd8cf6c8d0f5f300009ea7a7', 128, 1, 'Personal Access Token', '[]', 0, '2020-11-18 19:52:02', '2020-11-18 19:52:02', '2022-10-19 20:52:02'),
('ab95bb5c66b4f5a882bd74fd3ecb351c9e20f701a5642b0fdadd46a57032ffa78cc481d2c5905db0', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:27:25', '2020-09-09 06:27:25', '2022-08-10 08:27:25'),
('b1512a215b1ba0618dbd6a2c1dc273d500a87af25d89fcc927c67fb13c0065d5bed153e51b585ad8', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-06 05:08:17', '2020-09-06 05:08:17', '2022-08-07 07:08:17'),
('b1dab4005c7ebb87f9a8ce46e1db0fa9bde3d5173355ea98379966a678a8f6499d27886448c07d55', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:33:14', '2020-09-09 06:33:14', '2022-08-10 08:33:14'),
('b1ffe0e4a133d7da6f96d7423f23c80407333c22048b9f00272f4f3749ce0c769f06d5436cf733e0', 117, 1, 'Personal Access Token', '[]', 0, '2020-11-11 04:47:12', '2020-11-11 04:47:12', '2022-10-12 05:47:12'),
('b2ba6d6fd81a8d1882edb87bdb540a9fb6a1e4cd74a1bfc7773fce5b617bef0be7983dce0fb3a816', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 00:24:53', '2020-09-10 00:24:53', '2022-08-11 02:24:53'),
('b356b87f49e3531035b2b2b448fbb1c3c899eb1bb0abf38ca8d762bc26003c728eba5de14799e86f', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:12:10', '2020-09-11 03:12:10', '2022-08-12 05:12:10'),
('b6d89c1c17bb2a0cf18d0c467a8a599ab1d86dc7d32812bee96b83abe3fb966c4f3d5615212437af', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-20 06:46:46', '2020-10-20 06:46:46', '2022-09-20 08:46:46'),
('b80f6a811bb4b20d67d5f6948c13efb94224de4899d9be4f26d0a52e1c9feb8c7be26a502e6a1fa2', 73, 1, 'Personal Access Token', '[]', 0, '2020-09-11 05:21:04', '2020-09-11 05:21:04', '2022-08-12 07:21:05'),
('b964bb588e2969152c84289a4f60e21b704a81fdd99da678570d5a23a41c2c3ee38d7259813e73be', 123, 1, 'Personal Access Token', '[]', 0, '2020-12-07 13:33:21', '2020-12-07 13:33:21', '2022-11-07 14:33:21'),
('b972930539df680ec98bea062f8a648058e1feb0e8572a949799239bfc3129e796c4fe00a0acc680', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-16 10:05:15', '2020-10-16 10:05:15', '2022-09-16 12:05:15'),
('ba58fe64e9153479d0ebb8eebe58a15da14178ebce76b736dc706e88275143a15101c0afd42bc590', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-03 15:03:45', '2020-09-03 15:03:45', '2022-08-04 17:03:45'),
('bc7b0622a00aa0bd6ca5c48e9578458cf96340573aa92cc84c54f129b94d125ec15bf67f3423e61c', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 02:58:23', '2020-10-18 02:58:23', '2022-09-18 04:58:23'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('be63c0f68675811be30fe9b348c48d6cff656d6a1f00063491c948229131c905d5559ae35b3f7722', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-06 09:17:33', '2020-09-06 09:17:33', '2022-08-07 11:17:33'),
('c04ed3b48f52405c27fd2f819c702ed669020144261ae79dc0586de1823aaaf92b24125ba1595935', 168, 1, 'Personal Access Token', '[]', 0, '2020-12-07 03:14:06', '2020-12-07 03:14:06', '2022-11-07 04:14:07'),
('c1eb8cde8cfa85cd13dc0d2293ccb772109ef357365293436a1d2ab1222285d374a4aa91fbd6e6c6', 102, 1, 'Personal Access Token', '[]', 0, '2020-11-03 12:13:49', '2020-11-03 12:13:49', '2022-10-04 13:13:49'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c2ad041c506a7a7f27bd791efe2e19c3eb8a23d1fcd1dd033dd56f50d88a641bf499fc9af8c31f77', 124, 1, 'Personal Access Token', '[]', 0, '2020-11-18 04:43:04', '2020-11-18 04:43:04', '2022-10-19 05:43:04'),
('c6263cc7f302eb5b9bae4e429699a22d4dd07dcd19fb42359e1c2671ebe60b4d415d605767fe9778', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-19 12:43:45', '2020-09-19 12:43:45', '2022-08-20 14:43:45'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('c750f7d6da94d067ce634097ec8dca83fe4f95ed4a364b2e5d03e0769d4d7150567048df28656787', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-18 08:12:23', '2020-09-18 08:12:23', '2022-08-19 10:12:23'),
('ca8872d08110f7189dc4b2dbd7f638391788457898e18ae0e127987282c1fc0fe3672ca10ba79940', 120, 1, 'Personal Access Token', '[]', 0, '2020-11-13 06:16:18', '2020-11-13 06:16:18', '2022-10-14 07:16:18'),
('ca91563001c9f763c4c1379acdd45adad010173be1aaf84e43b44351abc5a2ff98d80058530cfee2', 85, 1, 'Personal Access Token', '[]', 0, '2020-10-18 02:47:26', '2020-10-18 02:47:26', '2022-09-18 04:47:26'),
('cb334401436c356f53ea6d403e73e50a78aa81184067c0b4c7010cf0adad90af080ce41e18f29b72', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-12 09:54:26', '2020-11-12 09:54:26', '2022-10-13 10:54:26'),
('ccb08d3aa110b36fa4e788894340d01883f9093eb583d6b56d41d6eea2e590a33b05af77e417634a', 85, 1, 'Personal Access Token', '[]', 0, '2020-10-16 09:24:34', '2020-10-16 09:24:34', '2022-09-16 11:24:34'),
('cd832ef1bea1dadbf957261b7d6ea7a2735f7c07b13ebdb2143c63fc0a9a9fa0a4f08da0a144cdea', 71, 1, 'Personal Access Token', '[]', 0, '2020-09-11 02:51:58', '2020-09-11 02:51:58', '2022-08-12 04:51:58'),
('cdd4662155e70965f23f28d1ba9ad79e23023efeb69a4b495112324d8e800b67ec440c88b6f84023', 94, 1, 'Personal Access Token', '[]', 0, '2020-10-20 09:53:19', '2020-10-20 09:53:19', '2022-09-20 11:53:19'),
('ce828b5b426b44cc2525e292a0d72760ef7fc4715f49f035fadf289858362ef7a2c4ae638d54549d', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:52:28', '2020-09-10 02:52:28', '2022-08-11 04:52:28'),
('cec70173f856be118a8baed24e796a16709bea1a613f29951035dbecd989f80cf8089be2cff0a24b', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-20 09:11:30', '2020-10-20 09:11:30', '2022-09-20 11:11:30'),
('cedf21e114a803a4861c600f99a262511e66aaee3633e271ba73a41edbc1b4c0f6c9c41786630e34', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-19 05:24:29', '2020-11-19 05:24:29', '2022-10-20 06:24:29'),
('cf1d4b8ace221330d96f0a9c7c2b6c9270053cb7cded410c898205301d3ce65b07aa00fbc7e70dd6', 88, 1, 'Personal Access Token', '[]', 0, '2020-10-19 13:10:58', '2020-10-19 13:10:58', '2022-09-19 15:10:58'),
('cf5b24546b3dc36efe304ab4b393a3500e29159c2ab3b6111c2a34ce6bb104428d89f46e786fa27a', 87, 1, 'Personal Access Token', '[]', 0, '2020-10-19 04:22:40', '2020-10-19 04:22:40', '2022-09-19 06:22:40'),
('cfd156d9cbb72b784f0bcd4ac5b69c6e61181f9389199451c2b66ffe9732fdc34dcd710a327f7098', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-04 04:26:42', '2020-09-04 04:26:42', '2022-08-05 06:26:42'),
('d026d4a1039f24e709cfd54b3bbbefd91d6172fb8736b565a2a3b3fcca866af8105d7a86b06b2538', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-11 03:20:43', '2020-09-11 03:20:43', '2022-08-12 05:20:43'),
('d039fef27ecb92ea77f9d482f577dc7b06c89dbee8824d2d60779d310f50fa7b48ca3ae96dc9500a', 275, 1, NULL, '[]', 0, '2022-01-03 05:43:47', '2022-01-03 05:43:47', '2023-01-03 05:43:47'),
('d08bcda96e9d431b2e375944910d395e9367411272f162faa416e1614307d1c2e38bb7984e9ca51c', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:23:40', '2020-09-09 06:23:40', '2022-08-10 08:23:40'),
('d133e347a0a28070c5ba00b58969c8c91f1d7e9a08b1768766bc3b53cf75181fd7f3fb84bad99ab4', 158, 1, 'Personal Access Token', '[]', 0, '2020-12-01 13:29:42', '2020-12-01 13:29:42', '2022-11-01 14:29:42'),
('d3c1563b8b2880b48472f72b794473257ecf400ccb843a02ca5aefcca7628233b3ff17206c29e78a', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 03:13:31', '2020-09-10 03:13:31', '2022-08-11 05:13:31'),
('d5284876c44318c4635338655173d4eed4b16cb8ebedba5940348731be022ca60ca0ea9215f75407', 166, 1, 'Personal Access Token', '[]', 0, '2020-12-06 16:23:23', '2020-12-06 16:23:23', '2022-11-06 17:23:23'),
('d737d78b598d9a54cfd2902fb53f1ce3d0994b1cfad59cc5fbd7450be93ecc1e09ee4a2988c96202', 275, 1, NULL, '[]', 0, '2022-01-03 05:38:48', '2022-01-03 05:38:48', '2023-01-03 05:38:48'),
('d7707d4d172f30a7851dd6aaf127ffbda71f814e99945b452f9d20a5de0e09cb4a0369c6bad4ef44', 67, 1, 'Personal Access Token', '[]', 0, '2020-09-09 06:45:47', '2020-09-09 06:45:47', '2022-08-10 08:45:47'),
('d89a9f53cefae311d66139457695cf69a49cb402f5d3d88d58c72eb2d18c921ac4e7bd8921852358', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-04 05:22:04', '2020-09-04 05:22:04', '2022-08-05 07:22:04'),
('d8d4cb73e6b31d855ef1b426fef50ab2260d53cbc43a545e8e99b9aad4e79296b0bae073340a8897', 20, 1, 'Personal Access Token', '[]', 0, '2020-10-19 07:53:17', '2020-10-19 07:53:17', '2022-09-19 09:53:17'),
('d911d83596f18f7bac14515e5a73b13eb166100d0763cb03e3a96a264ae456ca06168f06d23d409f', 140, 1, 'Personal Access Token', '[]', 0, '2020-11-24 04:34:08', '2020-11-24 04:34:08', '2022-10-25 05:34:09'),
('d960ad34fce3aedfc6de26d28faf1407dbd498fa761def2248e14db06c8d98e6cd416c91613781d7', 65, 1, 'Personal Access Token', '[]', 0, '2020-10-22 22:40:21', '2020-10-22 22:40:21', '2022-09-23 00:40:21'),
('d9a0e54476eca8ae5c064f07a9f66670b497899772b85a901f1a1cf831217e30b91f07848fbb2554', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-19 04:27:39', '2020-10-19 04:27:39', '2022-09-19 06:27:39'),
('db1e3d121eea715439edf3a03bc01398e607a458b60d610b1e087d162fe486717e1d58687d90378e', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-02 04:21:49', '2020-09-02 04:21:49', '2022-08-03 06:21:49'),
('db2791ce53e585da2f8aaff86a0d60c8601fb6be003a2ba6b47002a5133d3b09245dc3d3705c5a1b', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 06:57:18', '2020-10-18 06:57:18', '2022-09-18 08:57:18'),
('dca5986179ae670f497a1291c087ffefe6458c74646eef2a279274a0e286d0ee9732a725f9cfde32', 185, 1, 'Personal Access Token', '[]', 0, '2020-12-11 01:14:29', '2020-12-11 01:14:29', '2022-11-11 02:14:29'),
('dd536ef93dffd49db1d0ced69d3bf5447bd07990557def564470bfb4a1c549b039a8ae513f3e62d2', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-06 04:48:38', '2020-09-06 04:48:38', '2022-08-07 06:48:38'),
('dd9c4cbc65f47c02ddce5df37d515a5b07720b6e6a38b3c70fa1b202d0c720863bdd0fca7bbecf5d', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-03 10:07:38', '2020-09-03 10:07:38', '2022-08-04 12:07:38'),
('ddaeb4ea531609d36c552f6dfb1567db88fdd992de2447d84d59775fa45e6171602542911bf5af15', 87, 1, 'Personal Access Token', '[]', 0, '2020-11-13 06:16:39', '2020-11-13 06:16:39', '2022-10-14 07:16:39'),
('def095b101194e7d5c21129a55b4f02fcf726d90e089eabba8f2eb85dca70ffe748cff86736908ea', 71, 1, 'Personal Access Token', '[]', 0, '2020-09-11 02:59:06', '2020-09-11 02:59:06', '2022-08-12 04:59:06'),
('df5f98903df2a8eac416a3961bb2c592b4433cf58fd62ac33af2927769f04e4f8279992dd9f730cb', 59, 1, 'Personal Access Token', '[]', 0, '2020-09-06 04:07:29', '2020-09-06 04:07:29', '2022-08-07 06:07:29'),
('e23f5a4b0a08d18f2c8045d51183ceef4d1208e42aaa8a46bc8191663463084bc0141f2b7f1f1de5', 184, 1, 'Personal Access Token', '[]', 0, '2020-12-10 14:18:10', '2020-12-10 14:18:10', '2022-11-10 15:18:10'),
('e4d5b1cb79b92013397f48c925da69458b8429592590fb22c4c2b34bdce8171e0c6ae8183fcbe63c', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 07:02:03', '2020-09-10 07:02:03', '2022-08-11 09:02:03'),
('e5a29f4557ec86e1118be651e6b198bf6fb62b056704277f21e16136c5f31935360672f7364b349f', 180, 1, 'Personal Access Token', '[]', 0, '2020-12-09 03:54:20', '2020-12-09 03:54:20', '2022-11-09 04:54:20'),
('e5ba559aca18463c2b4418076592d117eb20673a91d65875944f2e53fd3b139a3fd18c5afdc14b95', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-13 07:16:00', '2020-09-13 07:16:00', '2022-08-14 09:16:00'),
('e6ee951b542e95ccac2c3b29a7ea8ff89d23e9dd80ebcd759c35a5ca4bd745e5544a616defbc925e', 271, 1, NULL, '[]', 0, '2021-12-30 12:43:17', '2021-12-30 12:43:17', '2022-12-30 12:43:17'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('e817548280c9fdcbb1162e1d79d20c847d2af76d33cb091a5186f59aabbe17c69483265ea93aab4f', 187, 1, 'Personal Access Token', '[]', 0, '2020-12-12 11:56:18', '2020-12-12 11:56:18', '2022-11-12 12:56:18'),
('e836dbbcc084473fd02b7683bacb9ea515888538262481d5d28a7813dbb12e619b6e116d826211ba', 25, 1, 'Personal Access Token', '[]', 0, '2020-10-22 22:44:36', '2020-10-22 22:44:36', '2022-09-23 00:44:36'),
('e83f6f5ded8dd8397e5a7b4bffc9e19fa03272ebd250ae97e9b63adfccdea3f5a6297f7f34f5f3ff', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 00:59:52', '2020-09-10 00:59:52', '2022-08-11 02:59:52'),
('e85bc7502d16c8b8e2353b074dbec5d3603a8b3567acf308d0b47e626ac75904f80a0608f2383556', 20, 1, 'Personal Access Token', '[]', 0, '2020-11-21 14:26:44', '2020-11-21 14:26:44', '2022-10-22 15:26:44'),
('e98335fc7f93eb3f0eabfe9a75bb736161814af41a91334ffeb139f4d6a06bcc261da62ab493e11e', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-10 02:46:04', '2020-09-10 02:46:04', '2022-08-11 04:46:04'),
('ea4b536e0191015a20f842d4a0cd3d5570e7af08b56a094bb71596ba5ea5f3e3e3dd70e60d18c6b8', 121, 1, 'Personal Access Token', '[]', 0, '2020-11-13 08:28:50', '2020-11-13 08:28:50', '2022-10-14 09:28:50'),
('ec042b41888510baec880e7ba431e3346e53cb945af85b61fe039fa605abcfcccdb5d7054c640814', 58, 1, 'Personal Access Token', '[]', 0, '2020-09-04 08:18:30', '2020-09-04 08:18:30', '2022-08-05 10:18:30'),
('ec673f367858a6dcf9b7c590ef7687ff9fe586759f540634e961b8fe3e8dd5efbae365d76662f2f9', 74, 1, 'Personal Access Token', '[]', 0, '2020-09-11 13:15:51', '2020-09-11 13:15:51', '2022-08-12 15:15:52'),
('ec9f28838581579b8dff7b215a873fd5a444970e6db3e1e73f3ea46cbe3d2359c63b3ff3abf3aba1', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 02:51:15', '2020-10-18 02:51:15', '2022-09-18 04:51:15'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f01a69b2f4871488a450d2c1241a892e49b9d88bdec3a8714ff23d228a8f883606c59588fc0dbc96', 99, 1, 'Personal Access Token', '[]', 0, '2020-10-29 15:38:50', '2020-10-29 15:38:50', '2022-09-29 16:38:50'),
('f0b5a47dd2262f7b8418401cc42edff47a58bb359f55dff9afe4dadf546d32ad47873266f72f2259', 20, 1, 'Personal Access Token', '[]', 0, '2020-09-10 09:57:15', '2020-09-10 09:57:15', '2022-08-11 11:57:15'),
('f16a6cfa374cbfb6485ce559e3e16b1c03e48a7166309beeb519978aae0ff71157e1f0c4c51189fa', 84, 1, 'Personal Access Token', '[]', 0, '2020-10-18 02:50:32', '2020-10-18 02:50:32', '2022-09-18 04:50:32'),
('f1c8bdf236d8f93e5974f1a7d952070c4a0d60699cdcbd66bec0b22b42ef9fa72b94771db8740be2', 66, 1, 'Personal Access Token', '[]', 0, '2020-09-09 09:36:17', '2020-09-09 09:36:17', '2022-08-10 11:36:17'),
('f5e91814a544d8dd12d6e65d95ac6471d5f275ef799d7c0265b1100637254da1b138c63d38ca0004', 83, 1, 'Personal Access Token', '[]', 0, '2020-10-12 04:29:58', '2020-10-12 04:29:58', '2022-09-12 06:29:58'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f8221c627e9b2443c6601580659ff56f2fcb1d78e65cc20ec1fce1c1e0b6b0286851ee0cc5aae634', 84, 1, 'Personal Access Token', '[]', 0, '2020-11-09 03:24:42', '2020-11-09 03:24:42', '2022-10-10 04:24:42'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55'),
('f969c2789c6cffc6dad8f483411ffa3faf8aa62c6fb95d500d06edbbbe665ab9f4c4bf29adc5ecfe', 25, 1, 'Personal Access Token', '[]', 0, '2020-10-20 12:37:39', '2020-10-20 12:37:39', '2022-09-20 14:37:39'),
('fa0d42f97bcf045d8b15109ace0d19fd638bdf5d48220f977f09829510291b34593c227b28b9ef98', 108, 1, 'Personal Access Token', '[]', 0, '2020-11-08 03:50:00', '2020-11-08 03:50:00', '2022-10-09 04:50:00'),
('fa94d9dc6900e26578d051e4a92d967dd459fd370f01c2d09aff82d31e51aec3ee3d7e70c3eff85c', 179, 1, 'Personal Access Token', '[]', 0, '2020-12-08 12:48:37', '2020-12-08 12:48:37', '2022-11-08 13:48:37'),
('fdaba4fafe8d533aaa5729ff6946b9a63ba7e1831a9ecb9e64769a51d43a24603cbe5aa74a903f76', 234, 1, 'Personal Access Token', '[]', 0, '2022-01-24 06:30:10', '2022-01-24 06:30:10', '2023-12-25 06:30:10'),
('fde9e29a02a54f06ed9dde71ef412a3e45270131ef45514b7ca754b466689cdddd5f88628c9f1dc1', 174, 1, 'Personal Access Token', '[]', 0, '2020-12-08 00:41:54', '2020-12-08 00:41:54', '2022-11-08 01:41:54'),
('fe9192ba898efa8034249b7999ffa85127814dd56b978a204fa773b8a09a98f5c5b5644d35d5616e', 275, 1, 'Personal Access Token', '[]', 0, '2022-01-04 05:17:56', '2022-01-04 05:17:56', '2023-12-05 05:17:56'),
('fef09d81fbc6554b2d4f21df4646730c34b7e3bdba24c5fe18f037416af36e336fe8f47e79218cf0', 175, 1, 'Personal Access Token', '[]', 0, '2020-12-08 01:07:50', '2020-12-08 01:07:50', '2022-11-08 02:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manual_payment` int(1) NOT NULL DEFAULT 0,
  `manual_payment_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `delivery_viewed` int(1) NOT NULL DEFAULT 1,
  `payment_status_viewed` int(1) DEFAULT 1,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(14, 48, NULL, '{\"name\":\"Backteria Virus\",\"email\":\"backteria.virus@gmail.com\",\"address\":\"amargadhi\",\"country\":\"Nepal\",\"city\":\"dadeldhura\",\"postal_code\":\"0096\",\"phone\":\"9809456866\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 500.01, 0.00, '20200730-07571252', 1596095832, 1, 0, 0, 1, '2020-07-30 05:57:12', '2020-07-31 14:50:45'),
(15, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20200801-08264929', 1596270409, 1, 1, 1, 0, '2020-08-01 06:26:49', '2020-08-01 07:12:53'),
(16, 50, NULL, '{\"name\":\"kta newar\",\"email\":\"newarkta420@gmail.com\",\"address\":\"nepalgunj,dhumbojhi-1,waterparkroad\",\"country\":\"Nepal\",\"city\":\"bheri\",\"postal_code\":\"21900\",\"phone\":\"9848024977\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 500.01, 0.00, '20200807-16184662', 1596817126, 1, 0, 0, 0, '2020-08-07 14:18:46', '2020-08-10 09:40:27'),
(18, 53, NULL, '{\"name\":\"DB Traders\",\"email\":\"dbtraders4@gmail.com\",\"address\":\"Janaki Rular Municipality-4\",\"country\":\"Nepal\",\"city\":\"Tikapur\",\"postal_code\":\"10901\",\"phone\":\"+9779869748283\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20200815-03342326', 1597462463, 1, 0, 0, 0, '2020-08-15 01:34:23', '2020-10-07 04:13:33'),
(19, 39, NULL, '{\"name\":\"Chandra Bdr Rana\",\"email\":\"chandarrana143@gmail.com\",\"address\":\"Belauri Muncipality 06 Kanchanpur\",\"country\":\"Nepal\",\"city\":\"Belauri\",\"postal_code\":\"977\",\"phone\":\"9806428228\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 1920.00, 0.00, '20200816-02363143', 1597545391, 1, 0, 0, 1, '2020-08-16 00:36:31', '2020-08-24 01:26:39'),
(20, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2460.00, 0.00, '20200903-19182261', 1599160702, 1, 0, 0, 0, '2020-09-03 17:18:22', '2020-09-04 02:36:33'),
(21, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20200905-12552658', 1599310526, 1, 0, 0, 0, '2020-09-05 10:55:26', '2020-10-07 04:13:33'),
(22, 12, NULL, '{\"name\":\"Pramod Lamsal\",\"email\":\"plamsal6@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1450.00, 0.00, '20200906-02523372', 1599360753, 1, 0, 0, 0, '2020-09-06 00:52:33', '2020-09-06 04:57:21'),
(23, NULL, 161615, '{\"name\":\"yogesh badayak\",\"email\":\"closetnepal100@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20200907-05050858', 1599455108, 1, 0, 0, 0, '2020-09-07 03:05:08', '2020-10-07 04:13:33'),
(24, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 180.00, 0.00, '20200907-15515298', 1599493912, 1, 0, 0, 0, '2020-09-07 13:51:52', '2021-09-27 08:52:44'),
(25, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20200908-02551115', 1599533711, 1, 1, 1, 0, '2020-09-08 00:55:11', '2020-10-07 04:13:33'),
(26, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20200908-03164978', 1599535009, 1, 0, 0, 0, '2020-09-08 01:16:49', '2020-10-07 04:13:33'),
(27, NULL, 760460, '{\"name\":\"yogesh badayak\",\"email\":\"closetnepal100@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 3900.00, 0.00, '20200908-08252849', 1599553528, 1, 0, 0, 0, '2020-09-08 06:25:28', '2020-09-08 15:25:13'),
(29, 24, NULL, '{\"name\":\"Yogesh Badayak\",\"email\":\"roadromeo.rr@gmail.com\",\"address\":\"Gulariya\",\"country\":\"Nepal\",\"city\":\"Gulariya\",\"postal_code\":\"20900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1450.00, 50.00, '20200908-17313971', 1599586299, 1, 0, 0, 0, '2020-09-08 15:31:39', '2020-10-07 04:13:33'),
(36, NULL, 563359, '{\"name\":\"G\",\"email\":\"roshan.16cs193@cambridge.edu.in\",\"address\":\"H\",\"country\":\"Afghanistan\",\"city\":\"H\",\"postal_code\":\"3\",\"phone\":\"9\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20201007-17205633', 1602091256, 0, 0, 0, 0, '2020-10-07 15:20:56', '2020-10-07 15:20:56'),
(37, 12, NULL, '{\"name\":\"Pramod Lamsal\",\"email\":\"plamsal6@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2250.00, 0.00, '20201011-05352547', 1602394525, 0, 0, 0, 0, '2020-10-11 03:35:25', '2020-10-11 03:35:25'),
(38, 84, NULL, '{\"address\":\"fefefe\",\"country\":\"Nepal\",\"city\":\"fefef\",\"postal_code\":\"fefefe\",\"phone\":\"5689325674\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-085956', 1603011596, 0, 1, 1, 0, '2020-10-18 06:59:56', '2020-10-18 06:59:56'),
(39, 84, NULL, '{\"address\":\"fefefe\",\"country\":\"Nepal\",\"city\":\"fefef\",\"postal_code\":\"fefefe\",\"phone\":\"5689325674\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-101627', 1603016187, 0, 1, 1, 0, '2020-10-18 08:16:27', '2020-10-18 08:16:27'),
(40, 84, NULL, '{\"address\":\"nepal\",\"country\":\"Nepal\",\"city\":\"kathamndu\",\"postal_code\":\"44600\",\"phone\":\"2356897456\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-102642', 1603016802, 0, 1, 1, 0, '2020-10-18 08:26:42', '2020-10-18 08:26:42'),
(41, 84, NULL, '{\"address\":\"nepal\",\"country\":\"Nepal\",\"city\":\"kathamndu\",\"postal_code\":\"44600\",\"phone\":\"2356897456\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-102725', 1603016845, 0, 1, 1, 0, '2020-10-18 08:27:25', '2020-10-18 08:27:25'),
(42, 84, NULL, '{\"address\":\"nepal\",\"country\":\"Nepal\",\"city\":\"kathamndu\",\"postal_code\":\"44600\",\"phone\":\"2356897456\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-104637', 1603017997, 0, 1, 1, 0, '2020-10-18 08:46:37', '2020-10-18 08:46:37'),
(43, 84, NULL, '{\"address\":\"nextnepal\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"896589\",\"phone\":\"8596325698\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-104830', 1603018110, 0, 1, 1, 0, '2020-10-18 08:48:30', '2020-10-18 08:48:30'),
(44, 84, NULL, '12', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105102', 1603018262, 0, 1, 1, 0, '2020-10-18 08:51:02', '2020-10-18 08:51:02'),
(45, 84, NULL, '12', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105139', 1603018299, 0, 1, 1, 0, '2020-10-18 08:51:39', '2020-10-18 08:51:39'),
(47, 84, NULL, '{\"address\":\"nepal\",\"country\":\"Nepal\",\"city\":\"kathamndu\",\"postal_code\":\"44600\",\"phone\":\"2356897456\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105355', 1603018435, 0, 1, 1, 0, '2020-10-18 08:53:55', '2020-10-18 08:53:55'),
(48, 84, NULL, '12', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105546', 1603018546, 0, 1, 1, 0, '2020-10-18 08:55:46', '2020-10-18 08:55:46'),
(50, 84, NULL, '12', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105622', 1603018582, 0, 1, 1, 0, '2020-10-18 08:56:22', '2020-10-18 08:56:22'),
(51, 84, NULL, '{\"address\":\"nextnepal\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"896589\",\"phone\":\"8596325698\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-105939', 1603018779, 0, 1, 1, 0, '2020-10-18 08:59:39', '2020-10-18 08:59:39'),
(52, 84, NULL, '{\"address\":\"nepal\",\"country\":\"Nepal\",\"city\":\"kathamndu\",\"postal_code\":\"44600\",\"phone\":\"2356897456\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-110015', 1603018815, 0, 1, 1, 0, '2020-10-18 09:00:15', '2020-10-18 09:00:15'),
(54, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"city\",\"postal_code\":\"859632\",\"phone\":\"7412589636\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-110935', 1603019375, 1, 1, 1, 0, '2020-10-18 09:09:35', '2021-09-27 08:52:44'),
(55, 84, NULL, '{\"address\":\"nextnepal\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"896589\",\"phone\":\"8596325698\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-111117', 1603019477, 1, 1, 1, 0, '2020-10-18 09:11:17', '2021-09-27 08:52:44'),
(56, 20, NULL, '{\"address\":\"gedgegege\",\"country\":\"Nepal\",\"city\":\"gegegg\",\"postal_code\":\"egegge\",\"phone\":\"7896541236\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-115555', 1603022155, 0, 1, 1, 0, '2020-10-18 09:55:55', '2020-10-18 09:55:55'),
(57, 20, NULL, '{\"address\":\"gedgegege\",\"country\":\"Nepal\",\"city\":\"gegegg\",\"postal_code\":\"egegge\",\"phone\":\"7896541236\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201018-115638', 1603022198, 0, 1, 1, 0, '2020-10-18 09:56:38', '2020-10-18 09:56:38'),
(58, 84, NULL, '{\"address\":\"nextnepal\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"896589\",\"phone\":\"8596325698\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-062820', 1603088900, 1, 1, 1, 0, '2020-10-19 04:28:20', '2020-12-08 00:14:23'),
(59, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"city\",\"postal_code\":\"859632\",\"phone\":\"7412589636\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-071949', 1603091989, 0, 1, 1, 0, '2020-10-19 05:19:49', '2020-10-19 05:19:49'),
(60, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"city\",\"postal_code\":\"859632\",\"phone\":\"7412589636\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-120904', 1603109344, 1, 0, 1, 0, '2020-10-19 10:09:04', '2020-12-08 00:14:01'),
(62, 88, NULL, '{\"address\":\"attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"35400\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-031441', 1603120481, 0, 1, 1, 0, '2020-10-19 13:14:41', '2020-10-19 13:14:41'),
(63, 88, NULL, '{\"address\":\"attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"35400\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-031443', 1603120483, 0, 1, 1, 0, '2020-10-19 13:14:43', '2020-10-19 13:14:43'),
(64, 20, NULL, '{\"address\":\"nextnepal\",\"country\":\"Nepal\",\"city\":\"addede\",\"postal_code\":\"856985\",\"phone\":\"7896542365\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201019-034112', 1603122072, 1, 1, 1, 0, '2020-10-19 13:41:12', '2021-09-27 08:52:44'),
(65, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"city\",\"postal_code\":\"859632\",\"phone\":\"7412589636\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201020-020500', 1603159500, 1, 1, 1, 0, '2020-10-20 00:05:00', '2020-10-20 05:54:10'),
(66, 88, NULL, '{\"address\":\"attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"400004\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201020-054406', 1603172646, 0, 1, 1, 0, '2020-10-20 03:44:06', '2020-10-20 03:44:06'),
(67, 91, NULL, '{\"address\":\"Attarkya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":null,\"phone\":\"9812345678\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201020-074215', 1603179735, 0, 1, 1, 0, '2020-10-20 05:42:15', '2020-10-20 05:42:15'),
(71, 12, NULL, '{\"name\":\"Closet Nepal\",\"email\":\"plamsal6@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2000.00, 0.00, '20201023-03260058', 1603423560, 1, 0, 0, 0, '2020-10-23 01:26:00', '2020-10-23 01:41:43'),
(72, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"morang\",\"postal_code\":\"yu89p\",\"phone\":\"9876776577\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201024-091340', 1603530820, 1, 1, 1, 0, '2020-10-24 07:13:40', '2020-10-24 09:28:15'),
(74, 84, NULL, '{\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"morang\",\"postal_code\":\"yu89p\",\"phone\":\"9876776577\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201027-073157', 1603783917, 1, 1, 1, 0, '2020-10-27 06:31:57', '2020-10-27 08:19:09'),
(76, 102, NULL, '{\"address\":\"Kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"00\",\"phone\":\"9861398963\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201103-011442', 1604409282, 1, 1, 1, 0, '2020-11-03 12:14:42', '2020-11-04 00:51:07'),
(77, 84, NULL, '{\"address\":\"morang\",\"country\":\"Nepal\",\"city\":\"letang\",\"postal_code\":\"44600\",\"phone\":\"9865326598\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201104-094441', 1604483081, 1, 1, 1, 0, '2020-11-04 08:44:41', '2020-11-05 04:37:04'),
(78, 103, NULL, '{\"address\":\"koteshwor\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"4568\",\"phone\":\"9865986532\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201104-101017', 1604484617, 1, 1, 1, 0, '2020-11-04 09:10:17', '2020-11-04 12:35:15'),
(79, 104, NULL, '{\"name\":\"Savitri Bhatt\",\"email\":\"bhattsavitri743@gmail.com\",\"address\":\"Katan\",\"country\":\"Nepal\",\"city\":\"Mahendranagar Kanchanpur\",\"postal_code\":\"10406\",\"phone\":\"9848901647\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 650.00, 0.00, '20201105-11014016', 1604574100, 1, 0, 0, 0, '2020-11-05 10:01:40', '2020-11-06 02:08:59'),
(81, 107, NULL, '{\"address\":\"Shivnagar\",\"country\":\"Nepal\",\"city\":\"Dhangadhi\",\"postal_code\":\"51\",\"phone\":\"9863361676\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 0.00, 0.00, '20201107-113844', 1604792324, 1, 0, 0, 1, '2020-11-07 22:38:44', '2020-11-09 08:33:53'),
(83, 112, NULL, '{\"name\":\"Santosh Giri\",\"email\":\"jinuwagaun96@gmail.com\",\"address\":\"Tulsipur\",\"country\":\"Nepal\",\"city\":\"Manpur\",\"postal_code\":\"977\",\"phone\":\"9808671596\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 300.00, 50.00, '20201110-15174763', 1605021467, 1, 0, 0, 1, '2020-11-10 14:17:47', '2020-12-08 00:09:02'),
(84, 117, NULL, '{\"address\":\"kathmandu\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9810560652\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201111-054936', 1605073776, 0, 1, 1, 0, '2020-11-11 04:49:36', '2020-11-11 04:49:36'),
(85, 117, NULL, '{\"address\":\"kathmandu\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9810560652\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201111-055023', 1605073823, 0, 1, 1, 0, '2020-11-11 04:50:23', '2020-11-11 04:50:23'),
(86, 122, NULL, '{\"address\":\"balkumari\",\"country\":\"Nepal\",\"city\":\"lalitpur\",\"postal_code\":\"44600\",\"phone\":\"9800666814\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 0.00, 0.00, '20201114-010813', 1605316093, 1, 0, 0, 1, '2020-11-14 00:08:13', '2020-12-08 00:13:06'),
(87, 132, NULL, '{\"address\":\"balkumari\",\"country\":\"Nepal\",\"city\":\"balkumari\",\"postal_code\":\"446600\",\"phone\":\"9801079136\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201120-014936', 1605836976, 0, 1, 1, 0, '2020-11-20 00:49:36', '2020-11-20 00:49:36'),
(88, 132, NULL, '{\"address\":\"balkumari\",\"country\":\"Nepal\",\"city\":\"balkumari\",\"postal_code\":\"446600\",\"phone\":\"9801079136\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201120-015050', 1605837050, 0, 1, 1, 0, '2020-11-20 00:50:50', '2020-11-20 00:50:50'),
(89, 137, NULL, '{\"address\":\"Baijnath 5 Banke\",\"country\":\"Nepal\",\"city\":\"Kohalpur\",\"postal_code\":\"081\",\"phone\":\"9804567668\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 0.00, 0.00, '20201122-123550', 1606048550, 1, 0, 0, 1, '2020-11-22 11:35:50', '2020-12-08 00:12:48'),
(90, 141, NULL, '{\"name\":\"\\u0938\\u0941\\u0915\\u0930\\u093e\\u0924 \\u0936\\u0930\\u094d\\u092e\\u093e\",\"email\":\"jijijazed@flurred.com\",\"address\":\"Birendranagar-04, Aerichowk\",\"country\":\"Nepal\",\"city\":\"Surkhet\",\"postal_code\":\"00977\",\"phone\":\"9844809319\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 550.00, 0.00, '20201124-12451324', 1606221913, 1, 0, 0, 1, '2020-11-24 11:45:13', '2020-12-08 00:12:25'),
(91, 145, NULL, '{\"name\":\"Pradeep Shahi\",\"email\":\"oct.unknown@gmail.com\",\"address\":\"Bardiya Lalibzar shnoshree\",\"country\":\"Nepal\",\"city\":\"Lalibzar  shanoshree\",\"postal_code\":\"21814\",\"phone\":\"9848012798\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 550.00, 0.00, '20201125-07415338', 1606290113, 1, 0, 0, 1, '2020-11-25 06:41:53', '2020-12-08 00:12:07'),
(92, 146, NULL, '{\"name\":\"Asmita Khatri\",\"email\":\"khatriasmita26@gmail.com\",\"address\":\"Dhangadhi near worldlink office ratopool-02\",\"country\":\"Nepal\",\"city\":\"Dhangadhi\",\"postal_code\":\"10900\",\"phone\":\"9841053942\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 550.00, 0.00, '20201125-07444840', 1606290288, 1, 0, 0, 1, '2020-11-25 06:44:48', '2020-11-27 08:26:47'),
(93, 153, NULL, '{\"name\":\"Prakash Dhait\",\"email\":\"here_uma@yahoo.com\",\"address\":\"Tulsipur-6,Near by post office\",\"country\":\"Nepal\",\"city\":\"Tulsipur\",\"postal_code\":\"22412\",\"phone\":\"9857890405\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 850.00, 100.00, '20201127-22182946', 1606515509, 1, 0, 0, 1, '2020-11-27 21:18:29', '2020-11-29 06:55:07'),
(94, 155, NULL, '{\"address\":\"chovar\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":null,\"phone\":\"9841376593\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201129-072407', 1606634647, 0, 1, 1, 0, '2020-11-29 06:24:07', '2020-11-29 06:24:07'),
(95, 157, NULL, '{\"name\":\"Sagar Tiruwa\",\"email\":\"sagartiruwa655@gmail.com\",\"address\":\"mahendranagr\",\"country\":\"Nepal\",\"city\":\"mahendranagr kanchanpur\",\"postal_code\":\"10400\",\"phone\":\"9810655947\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 1400.00, 0.00, '20201130-18190076', 1606760340, 1, 0, 0, 1, '2020-11-30 17:19:00', '2020-12-08 00:11:51'),
(96, NULL, 880656, '{\"name\":\"Indrajit Bhattarai\",\"email\":\"arunbhattarai94@gmail.com\",\"address\":\"Muktipur, Nepalgunj\",\"country\":\"Nepal\",\"city\":\"Nepalgunj\",\"postal_code\":\"44600\",\"phone\":\"9801061310\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 550.00, 0.00, '20201204-01363712', 1607045797, 1, 0, 0, 1, '2020-12-04 00:36:37', '2020-12-08 00:10:00'),
(97, 161, NULL, '{\"name\":\"Bhuwan Karki\",\"email\":\"info.bhuwankarki5@gmail.com\",\"address\":\"Taranagar satkarchowk\",\"country\":\"Nepal\",\"city\":\"Dhangadi\",\"postal_code\":\"10900\",\"phone\":\"+9779810689610\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 950.00, 0.00, '20201205-05395758', 1607146797, 1, 0, 0, 1, '2020-12-05 04:39:57', '2020-12-08 00:11:29'),
(98, 164, NULL, '{\"name\":\"Shiva\",\"email\":\"shivakc1630@gmail.com\",\"address\":\"Mukhtipur 12\",\"country\":\"Nepal\",\"city\":\"Nepalgunj\",\"postal_code\":\"21900\",\"phone\":\"9848126497\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 550.00, 0.00, '20201206-11394448', 1607254784, 1, 0, 0, 1, '2020-12-06 10:39:44', '2020-12-08 00:09:41'),
(99, NULL, 983769, '{\"name\":\"Rajesh Tharu\",\"email\":\"rajapurtechnicalcollege@gmail.com\",\"address\":\"Rajapur Bardiya\",\"country\":\"Nepal\",\"city\":\"Rajapur\",\"postal_code\":\"084\",\"phone\":\"9848254875\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 300.00, 0.00, '20201207-01272424', 1607304444, 1, 0, 0, 1, '2020-12-07 00:27:24', '2020-12-08 00:09:21'),
(100, 171, NULL, '{\"address\":\"jogbudha Dadeldhura\",\"country\":\"Nepal\",\"city\":\"parshuram 9 naula\",\"postal_code\":null,\"phone\":\"9823649274\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201207-114358', 1607341438, 1, 0, 1, 0, '2020-12-07 10:43:58', '2020-12-07 15:02:42'),
(101, 176, NULL, '{\"name\":\"Prak\'s Thagunna\",\"email\":\"mr_prakash6@yahoo.com\",\"address\":\"Bhimdatta Municipality -18,kanchanpur\",\"country\":\"Nepal\",\"city\":\"Mahendranagar\",\"postal_code\":\"10400\",\"phone\":\"9868700486\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 700.00, 0.00, '20201208-06420548', 1607409725, 1, 1, 1, 0, '2020-12-08 05:42:05', '2020-12-09 05:53:45'),
(102, 181, NULL, '{\"name\":\"Purna Chandra Pandeya\",\"email\":\"saradpandey72@gmail.com\",\"address\":\"Vingrelli Chwok Bharatpur\",\"country\":\"Nepal\",\"city\":\"Dang\",\"postal_code\":\"22415\",\"phone\":\"+9779857834598\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 950.00, 0.00, '20201209-06213031', 1607494890, 1, 0, 0, 0, '2020-12-09 05:21:30', '2020-12-09 06:07:00'),
(103, 182, NULL, '{\"address\":\"Janakitol-18\",\"country\":\"Nepal\",\"city\":\"Mahendranagar,Kanchanpur\",\"postal_code\":\"10400\",\"phone\":\"9858750667\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201210-045537', 1607576137, 1, 0, 1, 0, '2020-12-10 03:55:37', '2020-12-10 05:24:25'),
(104, 185, NULL, '{\"address\":\"birendranagar -3,surkhet(yarichowk)\",\"country\":\"Nepal\",\"city\":\"surkhet\",\"postal_code\":\"pu all in one wallet\",\"phone\":\"9867422922\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20201211-041334', 1607660014, 1, 0, 1, 0, '2020-12-11 03:13:34', '2020-12-11 08:14:42'),
(107, 186, NULL, '{\"name\":\"Shailendra Pun\",\"email\":\"dearshailendra1997@gmail.com\",\"address\":\"Birendranagar 8 Surkhet\",\"country\":\"Nepal\",\"city\":\"Birendranagar\",\"postal_code\":\"21700\",\"phone\":\"\\u00b19779868931433\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 550.00, 0.00, '20201212-02215674', 1607739716, 1, 1, 1, 0, '2020-12-12 01:21:56', '2020-12-12 03:55:24'),
(108, 12, NULL, '{\"name\":\"SmartBigMart\",\"email\":\"plamsal6@gmail.com\",\"address\":\"Bharatpur-10\",\"country\":\"Nepal\",\"city\":\"Narayangarh\",\"postal_code\":\"+977\",\"phone\":\"9855051158\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 250.00, 0.00, '20201214-15275338', 1607959673, 1, 0, 0, 0, '2020-12-14 14:27:53', '2021-01-25 09:51:37'),
(109, 12, NULL, '{\"name\":\"SmartBigMart\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 24.00, 0.00, '20210920-05172896', 1632115048, 0, 0, 0, 0, '2021-09-19 23:32:28', '2021-09-19 23:32:28'),
(110, 12, NULL, '{\"name\":\"SmartBigMart\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 24.00, 0.00, '20210920-05331098', 1632115990, 1, 0, 0, 0, '2021-09-19 23:48:10', '2021-09-20 12:13:43'),
(111, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 24.00, 0.00, '20210922-06354366', 1632292543, 0, 0, 0, 0, '2021-09-22 00:50:43', '2021-09-22 00:50:44'),
(112, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 24.00, 0.00, '20210922-06370025', 1632292620, 1, 0, 0, 0, '2021-09-22 00:52:00', '2021-09-22 01:15:33'),
(113, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'paid', NULL, 2000.00, 0.00, '20210927-11413812', 1632742898, 1, 0, 0, 1, '2021-09-27 11:41:38', '2021-09-28 06:28:26'),
(114, 12, NULL, '{\"name\":\"SmartBigMart\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 12312.00, 0.00, '20210928-12043834', 1632830678, 0, 0, 0, 0, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(115, 12, NULL, '{\"name\":\"SmartBigMart\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 9800.00, 0.00, '20210929-04485026', 1632890930, 1, 0, 0, 0, '2021-09-29 04:48:50', '2021-09-29 08:34:46'),
(116, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1050.00, 0.00, '20211027-08522451', 1635324744, 0, 0, 0, 0, '2021-10-27 08:52:24', '2021-10-27 08:52:24'),
(117, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 550.00, 0.00, '20211027-11304242', 1635334242, 0, 0, 0, 0, '2021-10-27 11:30:42', '2021-10-27 11:30:42'),
(118, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1900.00, 0.00, '20211027-11434531', 1635335025, 0, 0, 0, 0, '2021-10-27 11:43:45', '2021-10-27 11:43:45'),
(119, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"admin@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.07, 0.00, '20211027-12224089', 1635337360, 0, 0, 0, 0, '2021-10-27 12:22:40', '2021-10-27 12:22:40'),
(120, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 560.00, 0.00, '20211115-10514394', 1636973503, 1, 0, 0, 0, '2021-11-15 10:51:43', '2021-12-08 06:29:31'),
(121, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 3600.00, 0.00, '20211115-10535842', 1636973638, 0, 0, 0, 0, '2021-11-15 10:53:58', '2021-11-15 10:53:58'),
(122, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2925.00, 0.00, '20211115-11004716', 1636974047, 1, 0, 0, 0, '2021-11-15 11:00:47', '2021-12-08 06:29:31'),
(123, 245, NULL, '{\"name\":\"Ranjan Pandey\",\"email\":\"jobs@justnep.com\",\"address\":\"Munibhairab, Tinkune\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9801881583\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 550.00, 0.00, '20211206-12252812', 1638793528, 0, 0, 0, 0, '2021-12-06 12:25:28', '2021-12-06 12:25:28'),
(124, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 411.94, 0.00, '20211210-05543240', 1639115672, 0, 0, 0, 0, '2021-12-10 05:54:32', '2021-12-10 05:54:32'),
(125, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 900.00, 0.00, '20211210-07193254', 1639120772, 0, 0, 0, 0, '2021-12-10 07:19:32', '2021-12-10 07:19:32'),
(128, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1000.00, 0.00, '20211210-09322428', 1639128744, 0, 0, 0, 0, '2021-12-10 09:32:24', '2021-12-10 09:32:24'),
(129, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 12100.00, 0.00, '20211210-10064364', 1639130803, 0, 0, 0, 0, '2021-12-10 10:06:43', '2021-12-10 10:06:43'),
(177, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-04531278', 1639716792, 1, 0, 0, 0, '2021-12-17 04:53:12', '2021-12-17 04:54:10'),
(178, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 950.00, 0.00, '20211217-05425534', 1639719775, 0, 0, 0, 0, '2021-12-17 05:42:55', '2021-12-17 05:42:55'),
(179, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 950.00, 0.00, '20211217-05531898', 1639720398, 1, 0, 0, 0, '2021-12-17 05:53:18', '2022-01-03 06:19:05'),
(180, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-05554439', 1639720544, 0, 1, 1, 0, '2021-12-17 05:55:44', '2022-03-27 18:02:17'),
(181, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-05564137', 1639720601, 0, 0, 0, 0, '2021-12-17 05:56:41', '2021-12-17 05:56:41'),
(182, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05565192', 1639720611, 0, 0, 0, 0, '2021-12-17 05:56:51', '2021-12-17 05:56:51'),
(183, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05572363', 1639720643, 0, 0, 0, 0, '2021-12-17 05:57:23', '2021-12-17 05:57:23'),
(184, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05581846', 1639720698, 0, 0, 0, 0, '2021-12-17 05:58:18', '2021-12-17 05:58:18'),
(185, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05583354', 1639720713, 0, 0, 0, 0, '2021-12-17 05:58:33', '2021-12-17 05:58:33'),
(186, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05585218', 1639720732, 0, 0, 0, 0, '2021-12-17 05:58:52', '2021-12-17 05:58:52'),
(187, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05591319', 1639720753, 0, 0, 0, 0, '2021-12-17 05:59:13', '2021-12-17 05:59:13'),
(188, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-05595480', 1639720794, 0, 0, 0, 0, '2021-12-17 05:59:54', '2021-12-17 05:59:54'),
(189, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06001269', 1639720812, 0, 0, 0, 0, '2021-12-17 06:00:12', '2021-12-17 06:00:12'),
(190, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06003097', 1639720830, 0, 0, 0, 0, '2021-12-17 06:00:30', '2021-12-17 06:00:30'),
(191, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06053460', 1639721134, 0, 0, 0, 0, '2021-12-17 06:05:34', '2021-12-17 06:05:34'),
(192, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06071845', 1639721238, 0, 0, 0, 0, '2021-12-17 06:07:18', '2021-12-17 06:07:18'),
(193, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06080216', 1639721282, 0, 0, 0, 0, '2021-12-17 06:08:02', '2021-12-17 06:08:02'),
(194, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06082543', 1639721305, 0, 0, 0, 0, '2021-12-17 06:08:25', '2021-12-17 06:08:25'),
(195, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06083921', 1639721319, 0, 0, 0, 0, '2021-12-17 06:08:39', '2021-12-17 06:08:39'),
(196, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06103657', 1639721436, 0, 0, 0, 0, '2021-12-17 06:10:36', '2021-12-17 06:10:36'),
(197, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06104957', 1639721449, 0, 0, 0, 0, '2021-12-17 06:10:49', '2021-12-17 06:10:49'),
(198, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06122980', 1639721549, 0, 0, 0, 0, '2021-12-17 06:12:29', '2021-12-17 06:12:29'),
(199, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06124411', 1639721564, 0, 0, 0, 0, '2021-12-17 06:12:44', '2021-12-17 06:12:44'),
(200, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06135230', 1639721632, 0, 0, 0, 0, '2021-12-17 06:13:52', '2021-12-17 06:13:52'),
(201, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06160741', 1639721767, 0, 0, 0, 0, '2021-12-17 06:16:07', '2021-12-17 06:16:07'),
(202, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06280981', 1639722489, 0, 0, 0, 0, '2021-12-17 06:28:09', '2021-12-17 06:28:09'),
(203, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06284814', 1639722528, 0, 0, 0, 0, '2021-12-17 06:28:48', '2021-12-17 06:28:48'),
(204, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06290146', 1639722541, 0, 0, 0, 0, '2021-12-17 06:29:01', '2021-12-17 06:29:01'),
(205, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-06312631', 1639722686, 0, 0, 0, 0, '2021-12-17 06:31:26', '2021-12-17 06:31:26'),
(206, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06322645', 1639722746, 0, 0, 0, 0, '2021-12-17 06:32:26', '2021-12-17 06:32:26'),
(207, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-06330194', 1639722781, 0, 0, 0, 0, '2021-12-17 06:33:01', '2021-12-17 06:33:01'),
(208, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06344091', 1639722880, 0, 0, 0, 0, '2021-12-17 06:34:40', '2021-12-17 06:34:40'),
(209, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06345158', 1639722891, 0, 0, 0, 0, '2021-12-17 06:34:51', '2021-12-17 06:34:51'),
(210, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06352380', 1639722923, 0, 0, 0, 0, '2021-12-17 06:35:23', '2021-12-17 06:35:23'),
(211, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06390822', 1639723148, 0, 0, 0, 0, '2021-12-17 06:39:08', '2021-12-17 06:39:08'),
(212, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06435259', 1639723432, 0, 0, 0, 0, '2021-12-17 06:43:52', '2021-12-17 06:43:52'),
(213, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06451220', 1639723512, 0, 0, 0, 0, '2021-12-17 06:45:12', '2021-12-17 06:45:12'),
(214, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06470695', 1639723626, 0, 0, 0, 0, '2021-12-17 06:47:06', '2021-12-17 06:47:06'),
(215, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06474755', 1639723667, 0, 0, 0, 0, '2021-12-17 06:47:47', '2021-12-17 06:47:48'),
(216, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06481424', 1639723694, 0, 0, 0, 0, '2021-12-17 06:48:14', '2021-12-17 06:48:14'),
(217, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-06532260', 1639724002, 0, 0, 0, 0, '2021-12-17 06:53:22', '2021-12-17 06:53:22'),
(218, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07000296', 1639724402, 0, 0, 0, 0, '2021-12-17 07:00:02', '2021-12-17 07:00:02'),
(219, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07002110', 1639724421, 0, 0, 0, 0, '2021-12-17 07:00:21', '2021-12-17 07:00:21'),
(220, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07010319', 1639724463, 0, 0, 0, 0, '2021-12-17 07:01:03', '2021-12-17 07:01:03');
INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(221, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07014795', 1639724507, 0, 0, 0, 0, '2021-12-17 07:01:47', '2021-12-17 07:01:47'),
(222, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07020088', 1639724520, 0, 0, 0, 0, '2021-12-17 07:02:00', '2021-12-17 07:02:00'),
(223, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07023862', 1639724558, 0, 0, 0, 0, '2021-12-17 07:02:38', '2021-12-17 07:02:38'),
(224, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07024141', 1639724561, 0, 0, 0, 0, '2021-12-17 07:02:41', '2021-12-17 07:02:41'),
(225, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07025629', 1639724576, 0, 0, 0, 0, '2021-12-17 07:02:56', '2021-12-17 07:02:56'),
(226, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07032947', 1639724609, 0, 0, 0, 0, '2021-12-17 07:03:29', '2021-12-17 07:03:29'),
(227, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07040233', 1639724642, 0, 0, 0, 0, '2021-12-17 07:04:02', '2021-12-17 07:04:02'),
(228, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07051584', 1639724715, 0, 0, 0, 0, '2021-12-17 07:05:15', '2021-12-17 07:05:15'),
(229, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07082166', 1639724901, 0, 0, 0, 0, '2021-12-17 07:08:21', '2021-12-17 07:08:21'),
(230, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07130044', 1639725180, 0, 0, 0, 0, '2021-12-17 07:13:00', '2021-12-17 07:13:00'),
(231, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07162767', 1639725387, 0, 0, 0, 0, '2021-12-17 07:16:27', '2021-12-17 07:16:27'),
(232, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07170063', 1639725420, 0, 0, 0, 0, '2021-12-17 07:17:00', '2021-12-17 07:17:00'),
(233, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07173064', 1639725450, 0, 0, 0, 0, '2021-12-17 07:17:30', '2021-12-17 07:17:30'),
(234, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07181979', 1639725499, 0, 0, 0, 0, '2021-12-17 07:18:19', '2021-12-17 07:18:19'),
(235, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-07185057', 1639725530, 0, 0, 0, 0, '2021-12-17 07:18:50', '2021-12-17 07:18:50'),
(236, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07192028', 1639725560, 0, 0, 0, 0, '2021-12-17 07:19:20', '2021-12-17 07:19:20'),
(237, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07193819', 1639725578, 0, 0, 0, 0, '2021-12-17 07:19:38', '2021-12-17 07:19:38'),
(238, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07205446', 1639725654, 0, 0, 0, 0, '2021-12-17 07:20:54', '2021-12-17 07:20:54'),
(239, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07210955', 1639725669, 0, 0, 0, 0, '2021-12-17 07:21:09', '2021-12-17 07:21:09'),
(240, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 194100.04, 0.00, '20211217-07223632', 1639725756, 0, 0, 0, 0, '2021-12-17 07:22:36', '2021-12-17 07:22:36'),
(241, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 194100.04, 0.00, '20211217-07231392', 1639725793, 0, 0, 0, 0, '2021-12-17 07:23:13', '2021-12-17 07:23:13'),
(242, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07233016', 1639725810, 0, 0, 0, 0, '2021-12-17 07:23:30', '2021-12-17 07:23:30'),
(243, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07234076', 1639725820, 0, 0, 0, 0, '2021-12-17 07:23:40', '2021-12-17 07:23:40'),
(244, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07243053', 1639725870, 0, 0, 0, 0, '2021-12-17 07:24:30', '2021-12-17 07:24:30'),
(245, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07245541', 1639725895, 0, 0, 0, 0, '2021-12-17 07:24:55', '2021-12-17 07:24:55'),
(246, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07270419', 1639726024, 0, 0, 0, 0, '2021-12-17 07:27:04', '2021-12-17 07:27:04'),
(247, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07275414', 1639726074, 0, 0, 0, 0, '2021-12-17 07:27:54', '2021-12-17 07:27:54'),
(248, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07290439', 1639726144, 0, 0, 0, 0, '2021-12-17 07:29:04', '2021-12-17 07:29:04'),
(249, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07293866', 1639726178, 0, 0, 0, 0, '2021-12-17 07:29:38', '2021-12-17 07:29:38'),
(250, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07295747', 1639726197, 0, 0, 0, 0, '2021-12-17 07:29:57', '2021-12-17 07:29:57'),
(251, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07305652', 1639726256, 0, 0, 0, 0, '2021-12-17 07:30:56', '2021-12-17 07:30:56'),
(252, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07311085', 1639726270, 0, 0, 0, 0, '2021-12-17 07:31:10', '2021-12-17 07:31:10'),
(253, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07312440', 1639726284, 0, 0, 0, 0, '2021-12-17 07:31:24', '2021-12-17 07:31:24'),
(254, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07325064', 1639726370, 0, 0, 0, 0, '2021-12-17 07:32:50', '2021-12-17 07:32:50'),
(255, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07351666', 1639726516, 0, 0, 0, 0, '2021-12-17 07:35:16', '2021-12-17 07:35:16'),
(256, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07384610', 1639726726, 0, 0, 0, 0, '2021-12-17 07:38:46', '2021-12-17 07:38:46'),
(257, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07390949', 1639726749, 0, 0, 0, 0, '2021-12-17 07:39:09', '2021-12-17 07:39:09'),
(258, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07392892', 1639726768, 0, 0, 0, 0, '2021-12-17 07:39:28', '2021-12-17 07:39:28'),
(259, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07410847', 1639726868, 0, 0, 0, 0, '2021-12-17 07:41:08', '2021-12-17 07:41:08'),
(260, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07420383', 1639726923, 0, 0, 0, 0, '2021-12-17 07:42:03', '2021-12-17 07:42:03'),
(261, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07453745', 1639727137, 0, 0, 0, 0, '2021-12-17 07:45:37', '2021-12-17 07:45:37'),
(262, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07474786', 1639727267, 0, 0, 0, 0, '2021-12-17 07:47:47', '2021-12-17 07:47:47'),
(263, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07480865', 1639727288, 0, 0, 0, 0, '2021-12-17 07:48:08', '2021-12-17 07:48:08'),
(264, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20211217-07502982', 1639727429, 0, 0, 0, 0, '2021-12-17 07:50:29', '2021-12-17 07:50:29'),
(265, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-07512929', 1639727489, 0, 0, 0, 0, '2021-12-17 07:51:29', '2021-12-17 07:51:29'),
(266, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-10302228', 1639737022, 0, 0, 0, 0, '2021-12-17 10:30:22', '2021-12-17 10:30:22'),
(267, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-10311781', 1639737077, 0, 0, 0, 0, '2021-12-17 10:31:17', '2021-12-17 10:31:17'),
(268, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20211217-10315848', 1639737118, 0, 0, 0, 0, '2021-12-17 10:31:58', '2021-12-17 10:31:58'),
(269, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10465732', 1639738017, 0, 0, 0, 0, '2021-12-17 10:46:57', '2021-12-17 10:46:57'),
(270, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10473157', 1639738051, 0, 0, 0, 0, '2021-12-17 10:47:31', '2021-12-17 10:47:31'),
(271, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10514467', 1639738304, 0, 0, 0, 0, '2021-12-17 10:51:44', '2021-12-17 10:51:44'),
(272, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10544443', 1639738484, 0, 0, 0, 0, '2021-12-17 10:54:44', '2021-12-17 10:54:44'),
(273, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10545853', 1639738498, 0, 0, 0, 0, '2021-12-17 10:54:58', '2021-12-17 10:54:58'),
(274, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10551337', 1639738513, 0, 0, 0, 0, '2021-12-17 10:55:13', '2021-12-17 10:55:13'),
(275, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-10580672', 1639738686, 0, 0, 0, 0, '2021-12-17 10:58:06', '2021-12-17 10:58:06'),
(276, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-11022165', 1639738941, 0, 0, 0, 0, '2021-12-17 11:02:21', '2021-12-17 11:02:21'),
(277, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-11053717', 1639739137, 0, 0, 0, 0, '2021-12-17 11:05:37', '2021-12-17 11:05:37'),
(278, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 140.00, 0.00, '20211217-11060566', 1639739165, 0, 0, 0, 0, '2021-12-17 11:06:05', '2021-12-17 11:06:05'),
(279, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1081.80, 0.00, '20211217-11224816', 1639740168, 0, 0, 0, 0, '2021-12-17 11:22:48', '2021-12-17 11:22:48'),
(280, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 981.80, 0.00, '20211217-11294267', 1639740582, 0, 0, 0, 0, '2021-12-17 11:29:42', '2021-12-17 11:29:42'),
(281, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200.00, 0.00, '20220111-09192784', 1641892767, 0, 0, 0, 0, '2022-01-11 09:19:27', '2022-01-11 09:19:27'),
(282, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'paypal', 0, NULL, 'unpaid', NULL, 360.00, 0.00, '20220111-09474335', 1641894463, 0, 0, 0, 0, '2022-01-11 09:47:43', '2022-01-11 09:47:43'),
(283, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 1, NULL, 'unpaid', NULL, 360.00, 0.00, '20220111-10292088', 1641896960, 0, 0, 0, 0, '2022-01-11 10:29:20', '2022-01-11 10:29:31'),
(284, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-10330951', 1641897189, 0, 0, 0, 0, '2022-01-11 10:33:09', '2022-01-11 10:33:09'),
(285, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-10423128', 1641897751, 0, 0, 0, 0, '2022-01-11 10:42:31', '2022-01-11 10:42:31'),
(286, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-10570860', 1641898628, 0, 0, 0, 0, '2022-01-11 10:57:08', '2022-01-11 10:57:08'),
(287, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-10583367', 1641898713, 0, 0, 0, 0, '2022-01-11 10:58:33', '2022-01-11 10:58:33'),
(288, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11003762', 1641898837, 0, 0, 0, 0, '2022-01-11 11:00:37', '2022-01-11 11:00:37'),
(289, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11020254', 1641898922, 0, 0, 0, 0, '2022-01-11 11:02:02', '2022-01-11 11:02:02'),
(290, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11042274', 1641899062, 0, 0, 0, 0, '2022-01-11 11:04:22', '2022-01-11 11:04:22'),
(291, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11120379', 1641899523, 0, 0, 0, 0, '2022-01-11 11:12:03', '2022-01-11 11:12:03'),
(292, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11125547', 1641899575, 0, 0, 0, 0, '2022-01-11 11:12:55', '2022-01-11 11:12:55'),
(293, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11153818', 1641899738, 0, 0, 0, 0, '2022-01-11 11:15:38', '2022-01-11 11:15:38'),
(294, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11161879', 1641899778, 0, 0, 0, 0, '2022-01-11 11:16:18', '2022-01-11 11:16:18'),
(295, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11242599', 1641900265, 0, 0, 0, 0, '2022-01-11 11:24:25', '2022-01-11 11:24:25'),
(296, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11250678', 1641900306, 0, 0, 0, 0, '2022-01-11 11:25:06', '2022-01-11 11:25:06'),
(297, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11260266', 1641900362, 0, 0, 0, 0, '2022-01-11 11:26:02', '2022-01-11 11:26:02'),
(298, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11275044', 1641900470, 0, 0, 0, 0, '2022-01-11 11:27:50', '2022-01-11 11:27:50'),
(299, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11315443', 1641900714, 0, 0, 0, 0, '2022-01-11 11:31:54', '2022-01-11 11:31:54'),
(300, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11394642', 1641901186, 0, 0, 0, 0, '2022-01-11 11:39:46', '2022-01-11 11:39:46'),
(301, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11415381', 1641901313, 0, 0, 0, 0, '2022-01-11 11:41:53', '2022-01-11 11:41:53'),
(302, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11422538', 1641901345, 0, 0, 0, 0, '2022-01-11 11:42:25', '2022-01-11 11:42:25'),
(303, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11454576', 1641901545, 0, 0, 0, 0, '2022-01-11 11:45:45', '2022-01-11 11:45:46'),
(304, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11484367', 1641901723, 0, 0, 0, 0, '2022-01-11 11:48:43', '2022-01-11 11:48:43'),
(305, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11491868', 1641901758, 0, 0, 0, 0, '2022-01-11 11:49:18', '2022-01-11 11:49:18'),
(306, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11502418', 1641901824, 0, 0, 0, 0, '2022-01-11 11:50:24', '2022-01-11 11:50:24'),
(307, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11505899', 1641901858, 0, 0, 0, 0, '2022-01-11 11:50:58', '2022-01-11 11:50:58'),
(308, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11521765', 1641901937, 0, 0, 0, 0, '2022-01-11 11:52:17', '2022-01-11 11:52:17'),
(309, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11551416', 1641902114, 0, 0, 0, 0, '2022-01-11 11:55:14', '2022-01-11 11:55:14'),
(310, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-11563097', 1641902190, 0, 0, 0, 0, '2022-01-11 11:56:30', '2022-01-11 11:56:30'),
(311, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12051143', 1641902711, 0, 0, 0, 0, '2022-01-11 12:05:11', '2022-01-11 12:05:11'),
(312, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12072981', 1641902849, 0, 0, 0, 0, '2022-01-11 12:07:29', '2022-01-11 12:07:29'),
(313, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12075983', 1641902879, 0, 0, 0, 0, '2022-01-11 12:07:59', '2022-01-11 12:07:59'),
(314, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12095991', 1641902999, 0, 0, 0, 0, '2022-01-11 12:09:59', '2022-01-11 12:09:59'),
(315, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12104369', 1641903043, 0, 0, 0, 0, '2022-01-11 12:10:43', '2022-01-11 12:10:43'),
(316, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220111-12115535', 1641903115, 0, 0, 0, 0, '2022-01-11 12:11:55', '2022-01-11 12:11:55'),
(317, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, NULL, 0.00, '20220111-12143983', 1641903279, 0, 0, 0, 0, '2022-01-11 12:14:39', '2022-01-11 12:14:39'),
(318, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, NULL, 0.00, '20220111-12144954', 1641903289, 0, 0, 0, 0, '2022-01-11 12:14:49', '2022-01-11 12:14:49'),
(319, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2250.00, 0.00, '20220111-12151054', 1641903310, 0, 0, 0, 0, '2022-01-11 12:15:10', '2022-01-11 12:15:10'),
(320, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2250.00, 0.00, '20220111-12192511', 1641903565, 0, 0, 0, 0, '2022-01-11 12:19:25', '2022-01-11 12:19:26'),
(321, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12220221', 1641903722, 0, 0, 0, 0, '2022-01-11 12:22:02', '2022-01-11 12:22:02'),
(322, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12224249', 1641903762, 0, 0, 0, 0, '2022-01-11 12:22:42', '2022-01-11 12:22:42'),
(323, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12242967', 1641903869, 0, 0, 0, 0, '2022-01-11 12:24:29', '2022-01-11 12:24:29'),
(324, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12263224', 1641903992, 0, 0, 0, 0, '2022-01-11 12:26:32', '2022-01-11 12:26:32'),
(325, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12271422', 1641904034, 0, 0, 0, 0, '2022-01-11 12:27:14', '2022-01-11 12:27:14'),
(326, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12392196', 1641904761, 0, 0, 0, 0, '2022-01-11 12:39:21', '2022-01-11 12:39:21'),
(327, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1150.00, 0.00, '20220111-12402250', 1641904822, 0, 0, 0, 0, '2022-01-11 12:40:22', '2022-01-11 12:40:22'),
(328, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05380663', 1641965886, 0, 0, 0, 0, '2022-01-12 05:38:06', '2022-01-12 05:38:06'),
(329, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05432030', 1641966200, 0, 0, 0, 0, '2022-01-12 05:43:20', '2022-01-12 05:43:20'),
(330, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05463178', 1641966391, 0, 0, 0, 0, '2022-01-12 05:46:31', '2022-01-12 05:46:31'),
(331, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05473659', 1641966456, 0, 0, 0, 0, '2022-01-12 05:47:36', '2022-01-12 05:47:36'),
(332, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05510733', 1641966667, 0, 0, 0, 0, '2022-01-12 05:51:07', '2022-01-12 05:51:07'),
(333, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05520723', 1641966727, 0, 0, 0, 0, '2022-01-12 05:52:07', '2022-01-12 05:52:07'),
(334, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1730.00, 0.00, '20220112-05531135', 1641966791, 0, 0, 0, 0, '2022-01-12 05:53:11', '2022-01-12 05:53:11'),
(335, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20220112-05532289', 1641966802, 0, 0, 0, 0, '2022-01-12 05:53:22', '2022-01-12 05:53:22'),
(336, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 1490.00, 0.00, '20220112-05542199', 1641966861, 0, 0, 0, 0, '2022-01-12 05:54:21', '2022-01-12 05:54:21'),
(337, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2140.00, 0.00, '20220112-06040389', 1641967443, 0, 0, 0, 0, '2022-01-12 06:04:03', '2022-01-12 06:04:03'),
(338, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2140.00, 0.00, '20220112-06131144', 1641967991, 0, 0, 0, 0, '2022-01-12 06:13:11', '2022-01-12 06:13:11'),
(339, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', NULL, 2140.00, 0.00, '20220112-06142048', 1641968060, 1, 0, 0, 0, '2022-01-12 06:14:20', '2022-01-12 06:14:44'),
(340, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002OL1\",\"order id\":\"20220112-06195648\",\"amt\":\"2140.0\"}', 2140.00, 0.00, '20220112-06195648', 1641968396, 0, 0, 0, 0, '2022-01-12 06:19:56', '2022-01-12 07:08:39'),
(341, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', '{\"refid id\":\"0002OLU\",\"order id\":\"20220112-07113011\",\"amt\":\"2140.0\"}', 2140.00, 0.00, '20220112-07113011', 1641971490, 1, 0, 0, 0, '2022-01-12 07:11:30', '2022-01-12 07:32:02'),
(342, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', NULL, 2140.00, 0.00, '20220112-07271746', 1641972437, 1, 0, 0, 0, '2022-01-12 07:27:17', '2022-01-12 07:30:12'),
(343, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2140.00, 0.00, '20220112-07452136', 1641973521, 0, 0, 0, 0, '2022-01-12 07:45:21', '2022-01-12 07:45:21'),
(344, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2140.00, 0.00, '20220112-09282961', 1641979709, 0, 0, 0, 0, '2022-01-12 09:28:29', '2022-01-12 09:28:29'),
(345, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002ONE\",\"order id\":\"20220112-09402882\",\"amt\":\"2140.0\"}', 2140.00, 0.00, '20220112-09402882', 1641980428, 0, 0, 0, 0, '2022-01-12 09:40:28', '2022-01-12 09:42:54'),
(346, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2140.00, 0.00, '20220112-09453340', 1641980733, 0, 0, 0, 0, '2022-01-12 09:45:33', '2022-01-12 09:45:33'),
(347, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 200650.00, 0.00, '20220112-09524765', 1641981167, 0, 0, 0, 0, '2022-01-12 09:52:47', '2022-01-12 09:52:47');
INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(348, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 200650.00, 0.00, '20220112-09534889', 1641981228, 0, 0, 0, 0, '2022-01-12 09:53:48', '2022-01-12 09:53:48'),
(349, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 650.00, 0.00, '20220112-09545583', 1641981295, 0, 0, 0, 0, '2022-01-12 09:54:55', '2022-01-12 09:54:55'),
(350, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002ONK\",\"order id\":\"20220112-09590574\",\"amt\":\"650.0\"}', 650.00, 0.00, '20220112-09590574', 1641981545, 0, 0, 0, 0, '2022-01-12 09:59:05', '2022-01-12 09:59:26'),
(351, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002ONN\",\"order id\":\"20220112-10010482\",\"amt\":\"650.0\"}', 650.00, 0.00, '20220112-10010482', 1641981664, 0, 0, 0, 0, '2022-01-12 10:01:04', '2022-01-12 10:01:31'),
(352, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002ONT\",\"order id\":\"20220112-10063335\",\"amt\":\"650.0\"}', 650.00, 0.00, '20220112-10063335', 1641981993, 0, 0, 0, 0, '2022-01-12 10:06:33', '2022-01-12 10:07:03'),
(353, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002OOD\",\"order id\":\"20220112-10560657\",\"amt\":\"650.0\"}', 650.00, 0.00, '20220112-10560657', 1641984966, 0, 0, 0, 1, '2022-01-12 10:56:06', '2022-01-12 11:01:00'),
(354, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 650.00, 0.00, '20220112-11030698', 1641985386, 0, 0, 0, 0, '2022-01-12 11:03:06', '2022-01-12 11:03:06'),
(355, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 650.00, 0.00, '20220112-11043223', 1641985472, 0, 0, 0, 0, '2022-01-12 11:04:32', '2022-01-12 11:04:32'),
(356, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 650.00, 0.00, '20220112-11110039', 1641985860, 0, 0, 0, 0, '2022-01-12 11:11:00', '2022-01-12 11:11:00'),
(357, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 200.00, 0.00, '20220112-11150081', 1641986100, 0, 0, 0, 0, '2022-01-12 11:15:00', '2022-01-12 11:15:00'),
(358, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 800.00, 0.00, '20220112-11171892', 1641986238, 0, 0, 0, 0, '2022-01-12 11:17:18', '2022-01-12 11:17:18'),
(359, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 800.00, 0.00, '20220112-11193476', 1641986374, 0, 0, 0, 0, '2022-01-12 11:19:34', '2022-01-12 11:19:34'),
(360, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 200.00, 0.00, '20220112-11213548', 1641986495, 0, 0, 0, 0, '2022-01-12 11:21:35', '2022-01-12 11:21:35'),
(361, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 99100.04, 0.00, '20220114-10053365', 1642154733, 0, 0, 0, 0, '2022-01-14 10:05:33', '2022-01-14 10:05:33'),
(362, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002P8S\",\"order id\":\"20220117-05013320\",\"amt\":\"100.0\"}', 100.00, 0.00, '20220117-05013320', 1642395693, 0, 0, 0, 1, '2022-01-17 05:01:33', '2022-01-17 05:01:55'),
(363, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220117-05372786', 1642397847, 0, 0, 0, 0, '2022-01-17 05:37:27', '2022-01-17 05:37:27'),
(364, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002P9U\",\"order id\":\"20220117-05400298\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-05400298', 1642398002, 0, 0, 0, 1, '2022-01-17 05:40:02', '2022-01-17 05:42:52'),
(365, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002P9X\",\"order id\":\"20220117-05490447\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-05490447', 1642398544, 0, 0, 0, 1, '2022-01-17 05:49:04', '2022-01-17 05:49:36'),
(366, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PA1\",\"order id\":\"20220117-05543948\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-05543948', 1642398879, 0, 0, 0, 1, '2022-01-17 05:54:39', '2022-01-17 05:55:04'),
(367, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PA2\",\"order id\":\"20220117-05554737\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-05554737', 1642398947, 0, 0, 0, 1, '2022-01-17 05:55:47', '2022-01-17 05:56:10'),
(368, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PA3\",\"order id\":\"20220117-05594980\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-05594980', 1642399189, 0, 0, 0, 1, '2022-01-17 05:59:49', '2022-01-17 06:00:11'),
(369, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PA4\",\"order id\":\"20220117-06011653\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-06011653', 1642399276, 0, 0, 0, 1, '2022-01-17 06:01:16', '2022-01-17 06:01:36'),
(370, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PAA\",\"order id\":\"20220117-06052136\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-06052136', 1642399521, 0, 0, 0, 1, '2022-01-17 06:05:21', '2022-01-17 06:05:41'),
(371, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PAG\",\"order id\":\"20220117-06152935\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-06152935', 1642400129, 0, 0, 0, 1, '2022-01-17 06:15:29', '2022-01-17 06:16:26'),
(372, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PAH\",\"order id\":\"20220117-06164597\",\"amt\":\"550.0\"}', 550.00, 0.00, '20220117-06164597', 1642400205, 0, 0, 0, 1, '2022-01-17 06:16:45', '2022-01-17 06:17:05'),
(373, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PAP\",\"order id\":\"20220117-06253811\",\"amt\":\"100.0\"}', 100.00, 0.00, '20220117-06253811', 1642400738, 0, 0, 0, 1, '2022-01-17 06:25:38', '2022-01-17 06:25:58'),
(374, 278, NULL, '{\"name\":\"Amar\",\"email\":\"raiamar021@gmail.com\",\"address\":\"Tinkunay\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"1234\",\"phone\":\"9813957036\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PB2\",\"order id\":\"20220117-06465330\",\"amt\":\"280.0\"}', 280.00, 0.00, '20220117-06465330', 1642402013, 0, 0, 0, 1, '2022-01-17 06:46:53', '2022-01-17 06:47:48'),
(375, 8, NULL, '{\"name\":\"Mr. Customer\",\"email\":\"anish.budhathoki18@gmail.com\",\"address\":\"Tinkune, kathmandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+977 9801881588\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220118-06145645', 1642486496, 0, 0, 0, 0, '2022-01-18 06:14:56', '2022-01-18 06:14:56'),
(376, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PMI\",\"order id\":\"20220118-11280472\",\"amt\":\"850.0\"}', 850.00, 0.00, '20220118-11280472', 1642505284, 1, 0, 0, 1, '2022-01-18 11:28:04', '2022-01-18 11:31:33'),
(377, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 850.00, 0.00, '20220118-11294366', 1642505383, 1, 0, 0, 0, '2022-01-18 11:29:43', '2022-01-26 15:07:00'),
(378, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220118-11522350', 1642506743, 0, 0, 0, 0, '2022-01-18 11:52:23', '2022-01-18 11:52:23'),
(379, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'paid', '{\"refid id\":\"0002PN0\",\"order id\":\"20220118-11542497\",\"amt\":\"100.0\"}', 100.00, 0.00, '20220118-11542497', 1642506864, 0, 0, 0, 1, '2022-01-18 11:54:24', '2022-01-18 11:54:52'),
(380, 234, NULL, '{\"name\":\"prasundahal@gmail.com\",\"email\":\"prasundahal@gmail.com\",\"address\":\"Anamnagar\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"+9779813815279\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220118-12121882', 1642507938, 0, 0, 0, 0, '2022-01-18 12:12:18', '2022-01-18 12:12:18'),
(385, 268, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact11.naulobazar@gmail.com\",\"address\":\"Ullam natus ullamco\",\"country\":\"Nepal\",\"city\":\"Quo ut ut ducimus e\",\"postal_code\":\"Proident cumque vol\",\"phone\":\"+1 (734) 915-3294\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 300.00, 0.00, '20220127-11004414', 1643281244, 0, 0, 0, 0, '2022-01-27 11:00:44', '2022-01-27 11:00:44'),
(386, NULL, 759991, '{\"name\":\"dsffd\",\"email\":\"sdfsd@gmail\",\"address\":\"dgsgsg\",\"country\":\"Nepal\",\"city\":\"kat\",\"postal_code\":\"456\",\"phone\":\"0456456456\",\"checkout_type\":\"guest\"}', 'esewa', 0, NULL, 'unpaid', NULL, 2500.00, 0.00, '20220227-06201930', 1645942819, 1, 0, 0, 0, '2022-02-27 06:20:19', '2022-03-21 12:26:22'),
(387, NULL, 755988, '{\"name\":\"BoAPt0pLzF\",\"email\":\"customer@example.com\",\"address\":\"bfs9BYGsMy\",\"country\":\"Nepal\",\"city\":\"Ba2novP0Bw\",\"postal_code\":\"704380\",\"phone\":\"271953\",\"checkout_type\":\"guest\"}', 'esewa', 0, NULL, 'unpaid', NULL, 357.32, 0.00, '20220321-12051613', 1647864316, 0, 0, 0, 0, '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(391, NULL, 822437, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22465933', 1648075619, 1, 0, 0, 0, '2022-03-23 22:46:59', '2022-03-24 07:17:33'),
(392, NULL, 848696, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22470960', 1648075629, 1, 0, 0, 0, '2022-03-23 22:47:09', '2022-03-24 07:17:33'),
(393, NULL, 760332, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'esewa', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22472882', 1648075648, 1, 0, 0, 0, '2022-03-23 22:47:28', '2022-03-24 07:17:33'),
(394, NULL, 386248, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22473548', 1648075655, 1, 0, 0, 0, '2022-03-23 22:47:35', '2022-03-24 07:17:33'),
(395, NULL, 299781, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22474440', 1648075664, 1, 0, 0, 0, '2022-03-23 22:47:44', '2022-03-24 07:17:33'),
(396, NULL, 951038, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"Kathamandu\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 43998.00, 0.00, '20220323-22475614', 1648075676, 1, 0, 0, 0, '2022-03-23 22:47:56', '2022-03-24 07:17:33'),
(397, NULL, 389028, '{\"name\":\"Nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"44600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 105623.00, 0.00, '20220323-22495822', 1648075798, 0, 0, 0, 0, '2022-03-23 22:49:58', '2022-03-23 22:49:58'),
(398, NULL, 715500, '{\"name\":\"nepali\",\"email\":\"bishwas.kalika.c1@gmail.com\",\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"446600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220323-22512435', 1648075884, 0, 0, 0, 0, '2022-03-23 22:51:24', '2022-03-23 22:51:24'),
(399, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220324-04441932', 1648097059, 0, 0, 0, 0, '2022-03-24 04:44:19', '2022-03-24 04:44:19'),
(400, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220324-04452265', 1648097122, 0, 0, 0, 0, '2022-03-24 04:45:22', '2022-03-24 04:45:22'),
(401, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220324-04455365', 1648097153, 0, 0, 0, 0, '2022-03-24 04:45:53', '2022-03-24 04:45:53'),
(403, NULL, 137745, '{\"name\":\"Ganes\",\"email\":\"ganeshkhakda@gmail.com\",\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"446600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 105623.00, 0.00, '20220324-05475164', 1648100871, 0, 0, 0, 0, '2022-03-24 05:47:51', '2022-03-24 05:47:51'),
(404, NULL, 908734, '{\"name\":\"Ganes\",\"email\":\"ganeshkhakda@gmail.com\",\"address\":\"ktm\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"446600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'esewa', 0, NULL, 'unpaid', NULL, 105623.00, 0.00, '20220324-05480614', 1648100886, 0, 0, 0, 0, '2022-03-24 05:48:06', '2022-03-24 05:48:06'),
(406, NULL, 668555, '{\"name\":\"Aspen Torres\",\"email\":\"rahi@mailinator.com\",\"address\":\"Pariatur Pariatur\",\"country\":\"Nepal\",\"city\":\"Excepturi dolor vita\",\"postal_code\":\"71\",\"phone\":\"16\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220324-06562655', 1648104986, 0, 0, 0, 0, '2022-03-24 06:56:26', '2022-03-24 06:56:26'),
(407, NULL, 584997, '{\"name\":\"Aspen Torres\",\"email\":\"rahi@mailinator.com\",\"address\":\"Pariatur Pariatur\",\"country\":\"Nepal\",\"city\":\"Excepturi dolor vita\",\"postal_code\":\"71\",\"phone\":\"16\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220324-06571236', 1648105032, 0, 0, 0, 0, '2022-03-24 06:57:12', '2022-03-24 06:57:12'),
(409, 268, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact11.naulobazar@gmail.com\",\"address\":\"Ullam natus ullamco\",\"country\":\"Nepal\",\"city\":\"Quo ut ut ducimus e\",\"postal_code\":\"Proident cumque vol\",\"phone\":\"+1 (734) 915-3294\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 550.00, 0.00, '20220324-09522476', 1648115544, 1, 0, 0, 0, '2022-03-24 09:52:24', '2022-06-03 07:19:08'),
(412, NULL, 407553, '{\"name\":\"April Kinney\",\"email\":\"zemufarem@mailinator.com\",\"address\":\"Dolorem quo ad ipsam\",\"country\":\"Nepal\",\"city\":\"Aliqua Adipisicing\",\"postal_code\":\"49\",\"phone\":\"11\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 250.00, 0.00, '20220324-11381682', 1648121896, 1, 0, 0, 0, '2022-03-24 11:38:16', '2022-06-03 05:18:36'),
(424, NULL, 798157, '{\"name\":\"Nabin thapa\",\"email\":\"bishwas.kalika@gmail.com\",\"address\":\"KTM\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"446600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 105623.00, 0.00, '20220327-03473774', 1648352857, 0, 0, 0, 0, '2022-03-27 03:47:37', '2022-03-27 03:47:37'),
(425, 290, NULL, '{\"name\":\"Bhupen Rajbanshi\",\"email\":\"rbhupen265@gmail.com\",\"address\":\"Gwarko Lalitpur\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44600\",\"phone\":\"9815973740\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1500.00, 0.00, '20220327-03555357', 1648353353, 0, 0, 0, 0, '2022-03-27 03:55:53', '2022-03-27 03:55:53'),
(426, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1553.00, 0.00, '20220327-04041317', 1648353853, 0, 0, 0, 0, '2022-03-27 04:04:13', '2022-03-27 04:04:13'),
(427, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Attariya\",\"country\":\"Nepal\",\"city\":\"attariya\",\"postal_code\":\"10900\",\"phone\":\"9809465434\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 105623.00, 0.00, '20220327-07524328', 1648367563, 0, 0, 0, 0, '2022-03-27 07:52:43', '2022-03-27 07:52:43'),
(428, 12, NULL, '{\"name\":\"NauloBazar\",\"email\":\"contact.naulobazar@gmail.com\",\"address\":\"Bharatpur-10\",\"country\":\"Nepal\",\"city\":\"Narayangarh\",\"postal_code\":\"+977\",\"phone\":\"9855051158\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 101.97, 0.00, '20220327-08471011', 1648370830, 0, 0, 0, 0, '2022-03-27 08:47:10', '2022-03-27 08:47:10'),
(429, NULL, 333412, '{\"name\":\"Diwash gautam\",\"email\":\"gdiwash507@gmail.com\",\"address\":\"Kathmandu ,chabahil\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"2345\",\"phone\":\"9829273559\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 999999.99, 0.00, '20220328-05333160', 1648445611, 0, 0, 0, 0, '2022-03-28 05:33:31', '2022-03-28 05:33:31'),
(430, NULL, 904432, '{\"name\":\"Bishwas kalika\",\"email\":\"bishwas.kalika@gmail.com\",\"address\":\"Kathmandu\",\"country\":\"Nepal\",\"city\":\"Ktm\",\"postal_code\":\"446600\",\"phone\":\"9841513399\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 999999.99, 0.00, '20220328-05360046', 1648445760, 0, 0, 0, 0, '2022-03-28 05:36:00', '2022-03-28 05:36:00'),
(431, NULL, 184221, '{\"name\":\"Diwash gautam\",\"email\":\"gautamdiwash36@gmail.com\",\"address\":\"Kathmandu ,chabahil\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"2345\",\"phone\":\"9829273559\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 3724.00, 0.00, '20220328-06115731', 1648447917, 0, 0, 0, 0, '2022-03-28 06:11:57', '2022-03-28 06:11:57'),
(433, 244, NULL, '{\"name\":\"Ganesh Khadka\",\"email\":\"ganesh.brks@gmail.com\",\"address\":\"Kathmandu\",\"country\":\"Nepal\",\"city\":\"Ktm\",\"postal_code\":\"1234\",\"phone\":\"9843766625\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2000.00, 0.00, '20220328-12192828', 1648469968, 0, 0, 0, 0, '2022-03-28 12:19:28', '2022-03-28 12:19:28'),
(434, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 30000.00, 0.00, '20220329-05162984', 1648530989, 0, 0, 0, 0, '2022-03-29 05:16:29', '2022-03-29 05:16:29'),
(435, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09012553', 1648630885, 0, 0, 0, 0, '2022-03-30 09:01:25', '2022-03-30 09:01:25'),
(436, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09023522', 1648630955, 0, 0, 0, 0, '2022-03-30 09:02:35', '2022-03-30 09:02:35'),
(437, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09031084', 1648630990, 0, 0, 0, 0, '2022-03-30 09:03:10', '2022-03-30 09:03:10'),
(438, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 300100.01, 0.00, '20220330-09172931', 1648631849, 0, 0, 0, 0, '2022-03-30 09:17:29', '2022-03-30 09:17:29'),
(439, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09283043', 1648632510, 0, 0, 0, 0, '2022-03-30 09:28:30', '2022-03-30 09:28:30'),
(440, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09322498', 1648632744, 0, 0, 0, 0, '2022-03-30 09:32:24', '2022-03-30 09:32:24'),
(441, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09404160', 1648633241, 0, 0, 0, 0, '2022-03-30 09:40:41', '2022-03-30 09:40:41'),
(442, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-09413188', 1648633291, 0, 0, 0, 0, '2022-03-30 09:41:31', '2022-03-30 09:41:31'),
(444, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 301400.03, 0.00, '20220330-09493629', 1648633776, 0, 0, 0, 0, '2022-03-30 09:49:36', '2022-03-30 09:49:36'),
(445, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 401400.04, 0.00, '20220330-09515639', 1648633916, 0, 0, 0, 0, '2022-03-30 09:51:56', '2022-03-30 09:51:56'),
(446, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200340.00, 0.00, '20220330-09540983', 1648634049, 0, 0, 0, 0, '2022-03-30 09:54:09', '2022-03-30 09:54:09'),
(447, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200340.00, 0.00, '20220330-09555733', 1648634157, 0, 0, 0, 0, '2022-03-30 09:55:57', '2022-03-30 09:55:57'),
(448, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200340.00, 0.00, '20220330-10023317', 1648634553, 0, 0, 0, 0, '2022-03-30 10:02:33', '2022-03-30 10:02:33'),
(449, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 340.00, 0.00, '20220330-10032036', 1648634600, 0, 0, 0, 0, '2022-03-30 10:03:20', '2022-03-30 10:03:20'),
(450, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200340.00, 0.00, '20220330-10041944', 1648634659, 0, 0, 0, 0, '2022-03-30 10:04:19', '2022-03-30 10:04:19'),
(451, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10051666', 1648634716, 0, 0, 0, 0, '2022-03-30 10:05:16', '2022-03-30 10:05:16'),
(452, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10061779', 1648634777, 0, 0, 0, 0, '2022-03-30 10:06:17', '2022-03-30 10:06:17'),
(453, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200340.00, 0.00, '20220330-10083747', 1648634917, 0, 0, 0, 0, '2022-03-30 10:08:37', '2022-03-30 10:08:37'),
(454, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10094083', 1648634980, 0, 0, 0, 0, '2022-03-30 10:09:40', '2022-03-30 10:09:40'),
(455, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10110155', 1648635061, 0, 0, 0, 0, '2022-03-30 10:11:01', '2022-03-30 10:11:01'),
(456, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10122717', 1648635147, 0, 0, 0, 0, '2022-03-30 10:12:27', '2022-03-30 10:12:27'),
(457, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10140763', 1648635247, 0, 0, 0, 0, '2022-03-30 10:14:07', '2022-03-30 10:14:07'),
(458, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10210674', 1648635666, 0, 0, 0, 0, '2022-03-30 10:21:06', '2022-03-30 10:21:06'),
(459, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10260219', 1648635962, 0, 0, 0, 0, '2022-03-30 10:26:02', '2022-03-30 10:26:02'),
(460, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10265723', 1648636017, 0, 0, 0, 0, '2022-03-30 10:26:57', '2022-03-30 10:26:57'),
(461, 348, NULL, '{\"name\":\"Bipin Joshi\",\"email\":\"hunters.prey143@gmail.com\",\"address\":\"aaa\",\"country\":\"Nepal\",\"city\":\"aaa\",\"postal_code\":\"123\",\"phone\":\"123\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 200000.00, 0.00, '20220330-10520241', 1648637522, 0, 0, 0, 0, '2022-03-30 10:52:02', '2022-03-30 10:52:02'),
(462, 364, NULL, '{\"name\":null,\"email\":\"susantkrl2052@gmail.com\",\"address\":\"maitidevi\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"12444\",\"phone\":\"9843018383\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220331-13560257', 1648734962, 0, 0, 0, 0, '2022-03-31 13:56:02', '2022-03-31 13:56:02'),
(463, 364, NULL, '{\"name\":null,\"email\":\"susantkrl2052@gmail.com\",\"address\":\"maitidevi\",\"country\":\"Nepal\",\"city\":\"kathmandu\",\"postal_code\":\"12444\",\"phone\":\"9843018383\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220331-13564352', 1648735003, 0, 0, 0, 0, '2022-03-31 13:56:43', '2022-03-31 13:56:43'),
(465, 370, NULL, '{\"name\":\"Glam Me\",\"email\":\"info.glammehnb@gmail.com\",\"address\":\"Imadol\",\"country\":\"Nepal\",\"city\":\"Lalitpur\",\"postal_code\":\"44700\",\"phone\":\"9861418827\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1727.20, 0.00, '20220406-06422291', 1649227342, 1, 1, 1, 0, '2022-04-06 06:42:22', '2022-04-06 09:04:16'),
(467, 389, NULL, '{\"name\":null,\"email\":\"srdpbhujel@gmail.com\",\"address\":\"Dhapasi, Kathmandu\\r\\nDhapasi\",\"country\":\"Nepal\",\"city\":\"Kathmandu\",\"postal_code\":\"44601\",\"phone\":\"09846641469\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 100.00, 0.00, '20220521-01394221', 1653097182, 0, 1, 1, 0, '2022-05-21 01:39:42', '2022-05-21 01:40:23'),
(468, NULL, 113903, '{\"name\":\"Hero\",\"email\":\"susantkrl2052@gmail.com\",\"address\":\"ghandhakkar nagar 420 galli\",\"country\":\"Nepal\",\"city\":\"Dhulomandu\",\"postal_code\":\"01929383\",\"phone\":\"9818097369\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 2727.00, 0.00, '20220602-10340991', 1654166049, 0, 0, 0, 0, '2022-06-02 10:34:09', '2022-06-02 10:34:09'),
(469, 468, NULL, '{\"name\":\"BP Shoe Center\",\"email\":\"arrivalmart@gmail.com\",\"address\":\"dfin\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"4600\",\"phone\":\"987654323\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1050.00, 0.00, '20220607-12111736', 1654603877, 0, 0, 0, 0, '2022-06-07 12:11:17', '2022-06-07 12:11:17'),
(470, 468, NULL, '{\"name\":\"BP Shoe Center\",\"email\":\"arrivalmart@gmail.com\",\"address\":\"dfin\",\"country\":\"Nepal\",\"city\":\"ktm\",\"postal_code\":\"4600\",\"phone\":\"987654323\",\"checkout_type\":\"logged\"}', 'esewa', 0, NULL, 'unpaid', NULL, 0.00, 0.00, '20220607-12131414', 1654603994, 0, 0, 0, 0, '2022-06-07 12:13:14', '2022-06-07 12:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(13, 11, 12, 38, '', 960.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-07-22 05:43:18', '2020-07-25 02:26:44'),
(17, 14, 12, 41, '', 450.01, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-07-30 05:57:12', '2020-07-31 14:50:48'),
(18, 15, 12, 42, '', 1100.00, 0.00, 50.00, 1, 'unpaid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-01 06:26:49', '2020-08-01 06:27:29'),
(19, 16, 12, 41, '', 450.01, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-08-07 14:18:46', '2020-08-07 14:18:46'),
(22, 19, 12, 38, '', 1920.00, 0.00, 0.00, 2, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-16 00:36:31', '2020-08-24 01:26:43'),
(23, 20, 12, 38, '', 960.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-09-03 17:18:22', '2020-09-04 02:36:42'),
(26, 22, 12, 47, 'Black', 1400.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-06 00:52:33', '2020-09-06 00:52:33'),
(31, 27, 12, 47, 'Black', 1400.00, 0.00, 0.00, 1, 'paid', 'delivered', 'pickup_point', 4, NULL, '2020-09-08 06:25:28', '2020-09-08 15:25:32'),
(35, 30, 12, 38, '', 960.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-09-12 00:49:17', '2020-09-12 00:49:47'),
(36, 31, 12, 47, 'Black', 1400.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-09-12 00:54:00', '2020-09-12 00:54:23'),
(56, 58, 12, 36, '', 1150.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-19 04:28:20', '2020-10-19 04:28:20'),
(58, 60, 12, 36, '', 1150.00, 0.00, 49.99, 1, 'unpaid', 'on_review', NULL, NULL, NULL, '2020-10-19 10:09:04', '2020-12-08 00:14:01'),
(63, 65, 12, 36, '', 1150.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-20 00:05:00', '2020-10-20 00:05:00'),
(68, 71, 12, 65, '', 2000.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-10-23 01:26:00', '2020-10-23 01:26:00'),
(69, 72, 12, 70, '', 350.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-24 07:13:40', '2020-10-24 07:13:40'),
(71, 73, 12, 65, '', 2000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-27 04:23:05', '2020-10-27 04:23:05'),
(72, 74, 12, 75, '', 1000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-27 06:31:57', '2020-10-27 06:31:57'),
(73, 75, 12, 76, '', 800.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-10-29 14:08:44', '2020-10-29 14:08:44'),
(74, 76, 12, 65, '', 2000.00, 0.00, 50.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-11-03 12:14:42', '2020-11-03 12:14:42'),
(75, 77, 12, 65, '', 2000.00, 0.00, 50.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-11-04 08:44:41', '2020-11-04 08:44:41'),
(76, 78, 12, 112, '', 1750.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2020-11-04 09:10:17', '2020-11-04 09:10:17'),
(77, 79, 12, 60, '2XL', 600.00, 0.00, 50.00, 1, 'unpaid', 'on_review', 'home_delivery', NULL, NULL, '2020-11-05 10:01:40', '2020-11-06 02:17:28'),
(79, 81, 12, 108, '', 1750.00, 0.00, 0.00, 1, 'paid', 'delivered', NULL, NULL, NULL, '2020-11-07 22:38:44', '2020-11-09 08:33:53'),
(80, 82, 12, 101, '', 1400.00, 0.00, 0.00, 4, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-09 03:59:29', '2020-11-10 01:03:17'),
(81, 83, 12, 101, '', 350.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-10 14:17:47', '2020-12-08 00:09:05'),
(82, 86, 12, 105, '', 950.00, 0.00, 0.00, 1, 'paid', 'delivered', NULL, NULL, NULL, '2020-11-14 00:08:13', '2020-12-08 00:13:06'),
(83, 89, 12, 101, '', 250.00, 0.00, 0.00, 1, 'paid', 'delivered', NULL, NULL, NULL, '2020-11-22 11:35:50', '2020-12-08 00:12:48'),
(84, 90, 12, 101, '', 500.00, 0.00, 50.00, 2, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-24 11:45:13', '2020-12-08 00:12:30'),
(85, 91, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-25 06:41:53', '2020-12-08 00:12:09'),
(86, 92, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-25 06:44:48', '2020-11-27 08:26:47'),
(87, 93, 12, 111, '', 900.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-27 21:18:29', '2020-11-29 06:55:10'),
(88, 95, 12, 81, '', 1400.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-30 17:19:00', '2020-12-08 00:11:51'),
(89, 96, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-04 00:36:37', '2020-12-08 00:10:00'),
(90, 97, 12, 111, '', 900.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-05 04:39:57', '2020-12-08 00:11:32'),
(91, 98, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-06 10:39:44', '2020-12-08 00:09:41'),
(92, 99, 12, 101, '', 250.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-07 00:27:24', '2020-12-08 00:09:24'),
(93, 100, 12, 111, '', 900.00, 0.00, 0.00, 1, 'unpaid', 'on_review', NULL, NULL, NULL, '2020-12-07 10:43:58', '2020-12-07 15:02:42'),
(94, 101, 12, 84, '', 650.00, 0.00, 50.00, 1, 'unpaid', 'on_review', 'home_delivery', NULL, NULL, '2020-12-08 05:42:06', '2020-12-08 08:51:20'),
(95, 102, 12, 111, '', 900.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-09 05:21:30', '2020-12-09 05:21:30'),
(96, 103, 12, 111, '', 2700.00, 0.00, 0.00, 3, 'unpaid', 'on_review', NULL, NULL, NULL, '2020-12-10 03:55:37', '2020-12-10 05:24:25'),
(97, 104, 12, 107, '', 1100.00, 0.00, 50.00, 2, 'unpaid', 'on_review', NULL, NULL, NULL, '2020-12-11 03:13:34', '2020-12-11 08:14:42'),
(98, 107, 12, 101, '', 500.00, 0.00, 50.00, 2, 'unpaid', 'on_review', 'home_delivery', NULL, NULL, '2020-12-12 01:21:56', '2020-12-12 03:14:23'),
(99, 108, 12, 101, '', 250.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-14 14:27:53', '2020-12-14 14:27:53'),
(100, 109, 12, 140, 'Amethyst', 20.00, 4.00, 0.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-19 23:32:28', '2021-09-19 23:32:28'),
(101, 110, 12, 140, 'Amethyst', 20.00, 4.00, 0.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-19 23:48:10', '2021-09-19 23:48:10'),
(102, 111, 12, 140, 'Amethyst', 20.00, 4.00, 0.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-22 00:50:43', '2021-09-22 00:50:43'),
(103, 112, 12, 140, 'Amethyst', 20.00, 4.00, 0.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-22 00:52:00', '2021-09-22 00:52:00'),
(104, 113, 12, 101, '', 2000.00, 0.00, 0.00, 8, 'paid', 'pending', 'home_delivery', NULL, NULL, '2021-09-27 11:41:38', '2021-09-28 06:28:26'),
(105, 114, 12, 101, '', 250.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(106, 114, 12, 112, '', 3450.00, 0.00, 0.00, 3, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(107, 114, 12, 105, '', 5000.00, 0.00, 50.00, 10, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(108, 114, 12, 121, '', 2100.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(109, 114, 12, 116, '', 350.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(110, 114, 12, 84, '', 650.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(111, 114, 12, 140, 'Amethyst', 10.00, 2.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(112, 114, 12, 122, '', 350.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-28 12:04:38', '2021-09-28 12:04:38'),
(113, 115, 12, 112, '', 3450.00, 0.00, 0.00, 3, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-29 04:48:50', '2021-09-29 04:48:50'),
(114, 115, 12, 121, '', 6300.00, 0.00, 50.00, 3, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-09-29 04:48:50', '2021-09-29 04:48:50'),
(115, 116, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-10-27 08:52:24', '2021-10-27 08:52:24'),
(116, 117, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-10-27 11:30:42', '2021-10-27 11:30:42'),
(117, 118, 12, 119, '', 1000.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-10-27 11:43:45', '2021-10-27 11:43:45'),
(118, 118, 12, 60, '', 800.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-10-27 11:43:45', '2021-10-27 11:43:45'),
(119, 119, 12, 142, '', -7.92, 88.00, 19.99, 4, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-10-27 12:22:40', '2021-10-27 12:22:40'),
(121, 121, 12, 117, '', 3600.00, 0.00, 0.00, 9, 'unpaid', 'pending', 'pickup_point', 4, NULL, '2021-11-15 10:53:58', '2021-11-15 10:53:58'),
(123, 123, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-06 12:25:28', '2021-12-06 12:25:28'),
(124, 124, 12, 136, '', 299.96, 11.98, 100.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-10 05:54:32', '2021-12-10 05:54:32'),
(125, 125, 12, 110, '', 850.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-10 07:19:32', '2021-12-10 07:19:32'),
(126, 126, 12, 106, '', 1300.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-10 07:24:08', '2021-12-10 07:24:08'),
(127, 127, 12, 136, '', 299.96, 11.98, 100.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-10 09:17:38', '2021-12-10 09:17:38'),
(176, 173, 12, 111, '', 900.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-14 08:13:18', '2021-12-14 08:13:18'),
(183, 178, 12, 111, '', 900.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-17 05:42:55', '2021-12-17 05:42:55'),
(184, 179, 12, 111, '', 900.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-12-17 05:53:18', '2021-12-17 05:53:18'),
(277, 319, 12, 121, '', 2100.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:15:10', '2022-01-11 12:15:10'),
(279, 320, 12, 121, '', 2100.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:19:26', '2022-01-11 12:19:26'),
(281, 321, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:22:02', '2022-01-11 12:22:02'),
(283, 322, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:22:42', '2022-01-11 12:22:42'),
(285, 323, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:24:29', '2022-01-11 12:24:29'),
(287, 324, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:26:32', '2022-01-11 12:26:32'),
(289, 325, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:27:14', '2022-01-11 12:27:14'),
(291, 326, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:39:21', '2022-01-11 12:39:21'),
(293, 327, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-11 12:40:22', '2022-01-11 12:40:22'),
(313, 337, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 06:04:03', '2022-01-12 06:04:03'),
(317, 338, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 06:13:11', '2022-01-12 06:13:11'),
(321, 339, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 06:14:20', '2022-01-12 06:14:20'),
(325, 340, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 06:19:56', '2022-01-12 06:19:56'),
(329, 341, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'on_delivery', 'home_delivery', NULL, NULL, '2022-01-12 07:11:30', '2022-01-12 07:32:06'),
(333, 342, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 07:27:18', '2022-01-12 07:30:17'),
(337, 343, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 07:45:21', '2022-01-12 07:45:21'),
(341, 344, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:28:29', '2022-01-12 09:28:29'),
(345, 345, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:40:28', '2022-01-12 09:42:54'),
(349, 346, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:45:33', '2022-01-12 09:45:33'),
(351, 347, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:52:47', '2022-01-12 09:52:47'),
(354, 348, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:53:48', '2022-01-12 09:53:48'),
(357, 349, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:54:55', '2022-01-12 09:54:55'),
(359, 350, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 09:59:05', '2022-01-12 10:00:37'),
(361, 351, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 10:01:04', '2022-01-12 10:06:13'),
(363, 352, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 10:06:33', '2022-01-12 10:55:51'),
(365, 353, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 10:56:06', '2022-01-12 11:02:47'),
(367, 354, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:03:06', '2022-01-12 11:03:06'),
(369, 355, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:04:32', '2022-01-12 11:04:32'),
(371, 356, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:11:00', '2022-01-12 11:11:00'),
(374, 358, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:17:18', '2022-01-12 11:17:18'),
(375, 358, 12, 101, '', 250.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:17:18', '2022-01-12 11:17:18'),
(376, 359, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:19:34', '2022-01-12 11:19:34'),
(377, 359, 12, 101, '', 250.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-12 11:19:34', '2022-01-12 11:19:34'),
(383, 364, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 05:40:02', '2022-01-17 05:43:09'),
(384, 365, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 05:49:04', '2022-01-17 05:49:36'),
(385, 366, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 05:54:39', '2022-01-17 05:55:04'),
(386, 367, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 05:55:47', '2022-01-17 05:56:10'),
(387, 368, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 05:59:49', '2022-01-17 06:01:02'),
(388, 369, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 06:01:16', '2022-01-17 06:03:13'),
(389, 370, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 06:05:21', '2022-01-17 06:05:58'),
(390, 371, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 06:15:29', '2022-01-17 06:16:26'),
(391, 372, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-17 06:16:45', '2022-01-17 06:17:05'),
(396, 376, 12, 60, '', 800.00, 0.00, 50.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2022-01-18 11:28:04', '2022-01-18 11:28:55'),
(397, 377, 12, 60, '', 800.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-01-18 11:29:43', '2022-01-18 11:29:43'),
(406, 386, 12, 70, '', 350.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-02-27 06:20:19', '2022-02-27 06:20:19'),
(407, 386, 12, 121, '', 2100.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-02-27 06:20:19', '2022-02-27 06:20:19'),
(426, 405, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-24 06:50:03', '2022-03-24 06:50:03'),
(430, 409, 12, 105, '', 500.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-24 09:52:24', '2022-03-24 09:52:24'),
(433, 412, 12, 101, '', 250.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-24 11:38:16', '2022-03-24 11:38:16'),
(435, 414, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 04:33:58', '2022-03-25 04:33:58'),
(437, 416, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 05:43:37', '2022-03-25 05:43:37'),
(438, 417, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 05:46:56', '2022-03-25 05:46:56'),
(439, 418, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 05:47:54', '2022-03-25 05:47:54'),
(440, 419, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 05:49:12', '2022-03-25 05:49:12'),
(441, 420, 12, 105, '', 1000.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-03-25 05:51:38', '2022-03-25 05:51:38'),
(445, 423, 12, 105, '', 500.00, 0.00, 50.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2022-03-26 16:11:03', '2022-03-27 03:42:23'),
(497, 465, 370, 203, '150ml', 1440.00, 187.20, 100.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-04-06 06:42:22', '2022-04-06 06:42:22'),
(500, 468, 353, 196, 'Black-xll', 2700.00, 27.00, 0.00, 3, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-06-02 10:34:09', '2022-06-02 10:34:09'),
(501, 469, 12, 119, '', 1000.00, 0.00, 50.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-06-07 12:11:17', '2022-06-07 12:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(2, 'vendor', 'vendorbecome', '&lt;table class=\"table table-striped table-bordered demo-dt-basic dataTable no-footer dtr-inline\" cellspacing=\"0\" width=\"100%\" id=\"DataTables_Table_0\" role=\"grid\" aria-describedby=\"DataTables_Table_0_info\" style=\"box-sizing: border-box; border-spacing: 0px; border-collapse: separate !important; background-color: rgb(255, 255, 255); width: 881.818px; max-width: none !important; margin-bottom: 6px !important; border: 1px solid rgba(0, 0, 0, 0.07); clear: both; margin-top: 6px !important; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"&gt;&lt;tbody style=\"box-sizing: border-box;\"&gt;&lt;tr role=\"row\" class=\"odd\" style=\"box-sizing: border-box; background-color: rgba(0, 0, 0, 0.016);\"&gt;&lt;td style=\"box-sizing: content-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-width: 1px 1px 0px 0px; border-style: solid; border-color: rgba(0, 0, 0, 0.07); border-image: initial;\"&gt;&lt;br class=\"Apple-interchange-newline\"&gt;https://naulobazar.com/vendorbecome&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'vencorbecome', 'vencorbecome', 'vencorbecome', 'uploads/custom-pages/FIrsVhJIEmKi9mFBECx3YtMqqH0AeH3H9fWRrMRn.jpg', '2021-12-30 07:20:03', '2021-12-30 07:20:49'),
(3, 'Contact Us', 'contact-us', 'Contact Us page', 'contactus', 'contactus', 'contactus', 'uploads/custom-pages/QWRK6jgzYhMZ53vTd6MZZ3YBk7pwVavrBE98qxyu.jpg', '2022-01-26 12:14:21', '2022-01-26 12:14:21'),
(4, 'About Us', 'about-us', '<p>                                Naulo Bazar , a new digital platform like its name, which combines all the scattered businesses into a single search engine (search engine) and provides the same to the customer. There is a facility here to list not only some items but also the entire business in \"Naulo Bazar\". Whether it is household daily necessities or other non-existent items such as: clothing, service convenient business, cosmetics, electronics etc. all the facilities and the same can be found in the same online market quickly and at low prices. Now the reliable choice of all customers as well as sellers is \"Naulo Bazar\"</p><p>Various online businesses in the market charge commissions for selling the same. Which, of course, made the video an overnight sensation. Also, in any online business, no one has the facility to list their entire store. The \"Naulo Bazar\" has come to make the same inconvenience comfortable and convenient. By paying only the annual fee, you can register the same or complete shop here. Get rid of clutter you don\'t need. Let\'s start a \"new business\" by joining the \"new market\".</p><p>                            </p>', 'About us', 'About us', 'About us', 'uploads/custom-pages/z1dN4YZAM5POSHeX5r70GvbXvXPgmkljwzj9uadZ.jpg', '2022-01-26 12:19:47', '2022-04-27 10:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pramodlamsal@yahoo.com', '$2y$10$9HCcaY8EVKkLcPWNSZLTvu.A8hbfAgus7wMC3HtqiNnuYW2Ssgz3.', '2020-06-04 07:17:46'),
('tushar.khadka@gmail.com', '$2y$10$uYMJFxfLNnbwtv0zLn0GY.b3SoXfpYOu5wHdXcZeLvPylEZB56T7W', '2021-10-10 01:35:37'),
('joshibipin2052@gmail.com', '$2y$10$LaDDFu3H4j7qu/Y84DbjG./rr2ACaZ1n6JDZCKAXBFjaSySzGlcmm', '2021-10-27 12:26:40'),
('ganesh.brks@gmail.com', '$2y$10$i2oPYuf7SwkW8fipXNBIKOkCQbj0e2LLAtlESwqSHeMxOh5IKzvye', '2021-11-14 10:34:54'),
('susmagp1@gmail.com', '$2y$10$dw50i5sJ3r9FNT3UXgsP2OxKDWE2CN19Sy0XgyLlObQvNv9TwnvI2', '2022-05-30 10:35:10'),
('mansurislam286@gmail.com', '$2y$10$EVKXxL5w4g3MkbDDJ0HnBOWGOA9L/0xrZPdLdBZTH6caj4./AvzG2', '2022-05-31 10:28:39'),
('susantkrl95@gmail.com', '$2y$10$6ax2GW28Gn9IEn3ZqnqbmOqJzUs2YvcBxBXuwXqKHEF89kit9RrJm', '2022-06-07 15:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `staff_id`, `name`, `address`, `phone`, `pick_up_status`, `cash_on_pickup_status`, `created_at`, `updated_at`) VALUES
(4, 5, 'Kohalpur Store', 'Near hotel City Plaza, New road, Banke', '9815650318', 1, NULL, '2020-09-08 00:25:53', '2022-03-23 05:52:01'),
(5, 1, 'Attariya Store', 'Attariya, kailali', '9812727525', 1, NULL, '2020-11-22 01:12:27', '2020-11-22 01:12:27'),
(6, 5, 'Kathamndu', 'Mandikatar -07, Kumari temple', '9843766625', 1, NULL, '2022-06-03 07:27:47', '2022-06-03 07:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 12:54:45', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2019-10-29 12:54:47', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 12:54:49', '2019-02-04 17:50:15'),
(5, 'terms', '<p>The domain name www.closetnepal.com.np&nbsp;is owned by Closet Nepal Private Limited.&nbsp;Your use of this e-commerce portal and services and tools are governed by the following terms and conditions (Terms of Use) as applicable to the website. When you visit the website, you are subject to the policies that are applicable here.</p><p>For the purpose of these Terms of Use, wherever the context so requires ‘You’ or ‘User’ or ‘Visitor’ will mean any natural or legal person who has agreed to become a member of the site by signing up. Closet Nepal&nbsp;allows user to surf the website or making purchases without registering on the website. The term “we”, “us”, “our” will mean Closet Nepal.</p><p>When you use Closet Nepal, we collect and store your personal information which is provided by you from time to time. Our primary goal in doing so is to provide you a safe, efficient, and customized experience. This allows us to provide services and features that most likely meet your needs. If you choose to buy on the website, we collect information about your buying behavior.</p><p>If you choose to mail us or leave feedback, we will collect that information you provide to us. We retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.In our efforts to continually improve our product and service offerings, we collect and analyze demographic and profile data about our users’ activity on our website.Our website may link to other websites too. These links are provided for your convenience to provide further information. Closet Nepal&nbsp;is not responsible for the practices, term of use or the content of those linked websites.</p><p>This website contains materials which are owned by us. These materials include, but are not limited to, the design, look, appearance, data, and graphics. Reproduction is prohibited other than in accordance with the copyright law. Unauthorized use of this site may give rise to a claim for damages. Products at this e-commerce portal&nbsp;sold by respective sellers. All materials on this site are protected by copyrights, trademarks, and other intellectual property rights. Material on website is solely for personal and non-commercial use of users. Without the prior written consent of the owner, modification or use of the materials on any other website is violation of the law, and is prohibited.</p><p>We reserve the right to change, modify, add or remove portions of these Terms of Use at any time without any prior written notice. If we decide to change the terms of use, we will post those changes on this page so that you are always aware of what information we collect and how we use it.</p>', '2020-08-30 08:32:31', '2020-08-30 06:32:31'),
(6, 'privacy_policy', '<p>This privacy policy sets out how Closet Nepal uses and protects any information that you give here when you use this website. We view protection of your privacy as a very important principle. We are committed to ensuring your privacy here. Your information will only be used in accordance with this privacy statement whenever we ask you to provide any information by which you can be identified while using this website.\r\n</p><p>\r\nYou will be required to enter a valid phone number while signing up and placing an order on Closet Nepal. By registering your phone number with us, you consent to be contacted by us via phone calls and/or SMS, in case of any order or delivery related updates. </p><p>Closet Nepal will not use your personal information to initiate any promotional phone call or SMS. We store and process your information in computers that are protected by physical as well as reasonable technological security measures. Closet Nepal&nbsp;may change this privacy policy from time to time if needed by updating this page. Please check this page periodically to ensure that you are happy with our privacy policy.</p>', '2020-08-30 08:29:59', '2020-08-30 06:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `variant_product` int(1) NOT NULL DEFAULT 0,
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT 0.00,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `earn_point` double(8,2) NOT NULL DEFAULT 0.00,
  `refundable` int(1) NOT NULL DEFAULT 0,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(36, 'Kemei rechargeable epilator', 'admin', 12, 6, 2, 71, 57, '[\"uploads\\/products\\/photos\\/FHq8z00Utehdw8szoVT2RKQWjjRQ74LnTz2Lpz8O.jpeg\",\"uploads\\/products\\/photos\\/UlUJD46riBnR0OMhjPfC9wK251CZB1FaYuDGHfm6.jpeg\",\"uploads\\/products\\/photos\\/6pUBiNgnYvQ1aNCmzfB1k9oLwOdJNIPrQfnFyr0v.jpeg\",\"uploads\\/products\\/photos\\/S2SWs1QeDxHbdmSxfGjiL0T2OtCl5cb33frR0qWp.jpeg\"]', 'uploads/products/thumbnail/7ZkxT3E7BGvCett0AEDDHPxgsZrWiPYAXdQfMxSo.jpeg', 'uploads/products/featured/5bMdVLAb38Ofrz9WCrb3VZL4cKxujfTmeAuteWsL.jpeg', 'uploads/products/flash_deal/hHG4LMDke1gMt83J6LYQcbRn7nlfh7yBpsqklydW.jpeg', 'youtube', NULL, 'epilator,kemei', '<div style=\"box-sizing: content-box; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\"><strong style=\"box-sizing: border-box; font-weight: 700 !important;\">Description:</strong></span></div><ul style=\"box-sizing: border-box; list-style: disc; margin: 0px; padding: 0px; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; padding-inline-start: 40px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Washable</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Smart light</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Rechargeable, cordless use</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Easy to use anywhere and anytime</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Delicate appearance, easy to carry</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Reduce the skin sensation to avoid discomfort</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">Remove unwanted hair from legs, face, underarms</span></li></ul><div style=\"box-sizing: content-box; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div><div style=\"box-sizing: content-box; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div><div style=\"box-sizing: content-box; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\"><strong style=\"box-sizing: border-box; font-weight: 700 !important;\">Package Content:&nbsp;</strong></span></div><ol style=\"box-sizing: border-box; list-style: decimal; margin: 0px; padding: 0px; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; padding-inline-start: 40px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">1 x Hair Epilator,&nbsp;</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">1 x Bag,&nbsp;</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">1 x Brush,&nbsp;</span></li><li style=\"box-sizing: border-box; margin-left: 0px;\"><span style=\"box-sizing: border-box; max-width: 100%; word-break: break-word; font-family: georgia, serif;\">1 x Bilingual User Manual in English and Chinese &nbsp; &nbsp;</span></li></ol><br>', 1500.00, 750.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 884, 'Pc', 350.00, 'amount', 0.00, 'amount', 'free', 0.00, 8, 'rechargeable epilator', 'buy rechargeable epilator online at closet nepal.Choose variety of products from Closet nepal', NULL, NULL, 'Kemei-rechargeable-epilator-yYdno', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-07-18 15:13:33', '2022-03-31 08:41:04'),
(38, 'Progemei 3 in 1 trimmer', 'admin', 12, 6, 47, 67, 55, '[\"uploads\\/products\\/photos\\/04PqVYuwUCI7u2qPKBbtZqkLskkmXKh40J2Uyshh.jpeg\",\"uploads\\/products\\/photos\\/nuTW2Hyr0c3in4goJCbTWpzD9uEfHHUZcpsrYwCM.jpeg\",\"uploads\\/products\\/photos\\/Y2XHQlC2tc4PzmHiM5DDYSDDCSv2ICJLFkn1v1c2.jpeg\",\"uploads\\/products\\/photos\\/eCWBqOmwQTFoY8ywIML4aSCWUX8SsmuKO4jmA5XH.jpeg\"]', 'uploads/products/thumbnail/vnVHhkzU5eHZACoxb5jAKuRF5Y9jqfKbRNKoj3iK.jpeg', 'uploads/products/featured/dauWup0g4k4N6p1WzzpU3mX5Q4Kh1XjhBg2k3ak8.jpeg', 'uploads/products/flash_deal/wVCQqKhhQSLVBzT3A6XbpPPe1noOKZBJQImnXxIw.jpeg', 'youtube', NULL, 'trimmer,shaver,3 in 1 trimmer,progemei trimmer', NULL, 1200.00, 760.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 20.00, 'percent', 0.00, 'amount', 'free', 0.00, 5, 'Progemei 3 in 1 trimmer', 'Buy 3 in 1 trimmer from closet nepal at affordable price .Get extra 20% discount at online order.', 'uploads/products/meta/gXpUEvCsL8ofhjvmXKGNIoDCZ76Irt31IrHM53EX.jpeg', NULL, 'Progemei-3-in-1-trimmer-KNVRa', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-07-20 06:24:11', '2022-03-31 08:41:03'),
(41, 'JBL XB-450 Headphone', 'admin', 12, 11, 4, NULL, 59, '[\"uploads\\/products\\/photos\\/R7zzcYo9NxpCv1vzYbkOXn89lZIpKLQBV06KYDWf.jpeg\"]', 'uploads/products/thumbnail/jpjbotFoEd0L0BvnlQoQUDn9t33qYmo0ftxahOHz.jpeg', 'uploads/products/featured/FdIVoAvaULq6S0cintXcDAfZZcf8wEd1nq6I8PyV.jpeg', 'uploads/products/flash_deal/QZJFnilvOQB6tho1uBzhAuJXgs2mgKP6Hcil0pic.jpeg', 'youtube', NULL, 'jbl headphone,headphones', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;Open Sans&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: -0.14px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 0px;\">General Features</strong></p><ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(104, 108, 111); font-family: &quot;Open Sans&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: -0.14px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box;\">In-line mic for hands-free calling</li><li style=\"box-sizing: border-box;\">Cushioned earpads for long-wearing comfort</li><li style=\"box-sizing: border-box;\">Flashy metallic finish housing</li><li style=\"box-sizing: border-box;\">30mm dynamic driver unit for powerful extra bass sound</li><li style=\"box-sizing: border-box; margin-bottom: 0px;\">JBL Headset, Earphones</li></ul>', 800.00, 349.99, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 349.99, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 4, 'JBl headphones', 'Buy jbl headphones at very reasonable price at closet nepal.', NULL, NULL, 'JBL-XB-450-Headphone-vldP7', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-07-21 11:32:03', '2022-03-31 08:41:03'),
(42, 'Vegetable Chopper', 'admin', 12, 7, 68, 83, 57, '[\"uploads\\/products\\/photos\\/c4HfzHsQ94kWI3UdRVr6bYh8FoH3drPGPNxZCS0o.jpeg\",\"uploads\\/products\\/photos\\/qMylGGPm5upR5BMaf3lAuqbzFN9w3CbNgZdfHY0z.jpeg\",\"uploads\\/products\\/photos\\/0IM0cLih0UAxTmpXpZGi2hEmMetdfY8JNkVY43Wv.jpeg\",\"uploads\\/products\\/photos\\/5Qh5EJNkqr8g7IoOmAE6N3zJTVEiiCcZxmd07C1L.jpeg\"]', 'uploads/products/thumbnail/JABW9wclbNouGmEOoLiUvWlZBA7rlZVx9waXI4kq.jpeg', 'uploads/products/featured/KAIWsUjz1O8NpOghfCn1ydRVH4Olctb8eJkg5F4Q.jpeg', 'uploads/products/flash_deal/KSa9KqVHi0Pa5DQRGCzugmOVUNoGTcjue6VYKNym.jpeg', 'youtube', NULL, 'vegetable chopper,keema machine', '<p>Product Discription&nbsp;<br></p>', 1500.00, 650.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 1, 'Vegetable Chopper', 'Buy Keema maker vegetable chopper from closet nepal at very exciting price.', NULL, NULL, 'Vegetable-Chopper-s9owE', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-07-22 01:09:38', '2022-03-31 08:41:02'),
(47, 'Men\'s Luggage bag', 'admin', 12, 4, 11, NULL, 55, '[\"uploads\\/products\\/photos\\/0gabJfR11yLvxCmwNdXOtZPRL2rAjrXYmLPZP8uq.png\"]', 'uploads/products/thumbnail/k4mJP3odLTWqoyeTRjJHOofnQIIN1vtmbFxwuiQf.png', 'uploads/products/featured/5NjEMEjPT8jXvCIA23hT7JoZrkQuNsASnQ2yKoHs.png', 'uploads/products/flash_deal/rrXb70qr69NBeQwit9RSZFB8F61KzY9ScOZPLd0k.png', 'youtube', NULL, 'bag,luggage bag,men\'s bag,latest bag,leather bag', '<p><strong>Specification:-</strong></p><ul><li>Material - Synthetic Leather</li><li>It can be used for bot casual and official purposes.<br></li></ul><p><br></p>', 1550.00, 1100.00, 1, '[]', '[]', '[\"#000000\"]', NULL, 1, 1, 1, 0, 'pc', 150.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 3, 'Luggage bag for men', 'buy men\'s luaggage online from closet nepal at very reasonable price.', 'uploads/products/meta/QxqGBi3T4WUxiXOIXJnr1VvcWQEWl7kxIfn4Xnc9.png', NULL, 'Mens-Luggage-bag-crFLf', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-09-06 00:49:28', '2022-03-31 08:41:01'),
(48, 'Fresh Cabbage', 'admin', 12, 7, 68, 83, 55, '[\"uploads\\/products\\/photos\\/JXMgmDW20dMHd9Lyg3ccTRCsX9b5bAfYih9HbzqT.jpg\"]', 'uploads/products/thumbnail/r6uTfLVtnAOqhsTKVMImziyHphrAACQqPtPriGSy.jpg', 'uploads/products/featured/DSpwXh6JonREwBdseyPgJoynbLAiRPMfOeUfpN0P.jpg', 'uploads/products/flash_deal/BZGHJIz77CGgOatPYy31J9S5VU0NcQKr6z58DNYA.jpg', 'youtube', NULL, 'roti maker,electric roti maker,chapati maker,original roti maker', '<p><strong>Description:</strong></p><ul><li>Easy to use</li><li>Extra Power</li><li>Energy Saver</li><li>Electric Shock Resistant</li><li style=\"text-align: left;\">Performance Guaranteed</li></ul><strong>Technical Specification<p>&nbsp; &nbsp; &nbsp;Quantity: One Unit</p><p>&nbsp; &nbsp; &nbsp;Volatage: 230V AC 50 Hz</p><p>&nbsp; &nbsp; &nbsp;Watts&nbsp; :&nbsp; &nbsp; &nbsp;900W</p><p>&nbsp; &nbsp; &nbsp;Class of Insulation : E<br></p><p>&nbsp;</p></strong><hr id=\"null\">', 3350.00, 2200.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 45, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 80.00, 0, 'Roti maker', 'Buy electric roti maker online at closet nepal', 'uploads/products/meta/XjPLTOel6X1RLAK1ymNN8lyznW8kc82Ccmkk2Aq2.jpg', NULL, 'Fresh-Cabbage-tGuwg', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-09-24 02:17:59', '2022-03-31 08:41:00'),
(49, 'Soda Drink', 'admin', 12, 7, 68, 83, 55, '[\"uploads\\/products\\/photos\\/CHBy84J5PyjlrCcjpUfUmHxCDkVOS7h5DDlPuehZ.jpg\"]', 'uploads/products/thumbnail/ePu7wdWagNWHgf5RJDL6oOTO5QnVQGPhtunvv3t1.jpg', 'uploads/products/featured/HUKXCfKHRt4NCdd2f4wmfpX6FHKZwKt5nrZr1nST.jpg', 'uploads/products/flash_deal/rUCteSLefDQ7yB6VGT82EYPHgc2Nu3PF4gulG7V1.jpg', 'youtube', NULL, 'pocket hammer, knife,axe,bottle opener', NULL, 1250.00, 550.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 10, 'pc', 200.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, 'Pocket hammer', NULL, NULL, NULL, 'Soda-Drink-24ZmJ', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-09-24 02:23:09', '2022-03-31 08:41:30'),
(50, 'Food CupBoard', 'admin', 12, 6, 43, NULL, 55, '[]', 'uploads/products/thumbnail/KmvDQDhU3zCUJevT9Yo04dZXl1HXlEAhqkv7v2zF.jpg', 'uploads/products/featured/GmJM9ZqV6O6nWuhWiGIMLD2tmP8SktX8WF6HGV9Y.jpg', 'uploads/products/flash_deal/VjcVvXaB2D17xe6xLnPCGyVVlUjSnELHQzXSxrhX.jpg', 'youtube', NULL, 'kayaplus', '<p><strong>Description:</strong></p><p>Ingredients:&nbsp;</p><p>Benefits: it helps to increase weight organically and heal gastric.</p><p>100% Herbal Products.<br></p>', 1500.00, 500.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 60, 'pc', 250.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, 'Kayaplus price in nepal', 'kayaplus price in nepal', NULL, NULL, 'Food-CupBoard-dW9Xd', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-09-24 02:43:20', '2022-03-31 08:41:31'),
(51, 'Chinese Chowmin', 'admin', 12, 1, 77, NULL, 55, '[\"uploads\\/products\\/photos\\/rltEtkpnQ5yPYsgxdLy9OA5cIIPAQWAQyTxUT9X4.jpg\"]', 'uploads/products/thumbnail/39YpWSscLKBL3spph2VJrq2yKtCuWWYjBlnR9HRg.jpg', 'uploads/products/featured/sVwoLZ3LhvuOYRRRJG3MrKxu789ItAKnYHCTFt4C.jpg', 'uploads/products/flash_deal/sA1L4AwVrdNP89NRLjTCMCLCJm9jXWgpSz0S6uoq.jpg', 'youtube', NULL, 'blood circulation mat,mat', NULL, 950.00, 325.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 23, 'pc', 350.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'Chinese-Chowmin-8ZBcy', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-09-24 03:39:53', '2022-03-31 08:41:32'),
(52, 'American Diet', 'admin', 12, 1, 77, NULL, 55, '[\"uploads\\/products\\/photos\\/DQrI4ZCqoBKFbsoHVevfkX9QuJ5O0L5r400kSSGx.jpg\"]', 'uploads/products/thumbnail/GAdfwvugn2tw3RyscTIrBJst8P69hySWKu0EBIMD.jpg', 'uploads/products/featured/Wks1Avj3qOprwyQD59dMsCo1mHK6cEdH1phdFbxJ.jpg', 'uploads/products/flash_deal/itQ3MlRnZywWzuUPUc0IZhU9R5iDu7fJOACdfZcZ.jpg', 'youtube', NULL, 'detoxy slim,max slim', NULL, 1500.00, 550.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 35, 'pc', 350.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'American-Diet-jfzEB', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-09-24 03:41:41', '2022-03-31 08:41:32'),
(54, 'Non-stick double sided fry pan', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/cSZ6DSxcGXJmHfESIeUDWy7jPb8CA8PHVOhV63us.jpg\"]', 'uploads/products/thumbnail/jjnrcMDhCNM3mKpPpvVW9OO5etZ80FCjjhXdIJ6f.jpg', 'uploads/products/featured/hT27lfqz79n2Dkazcz8SRjuEfVnDEIy8B7Cy8OnT.jpg', 'uploads/products/flash_deal/nnpfWKaphQEHROSKSjWpFbdFi1Zo1jZNBVIJ0GvU.jpg', 'youtube', NULL, 'fry pan,non-stick fry pan,double sided fry pan,magic pan', NULL, 2500.00, 1800.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 5, 'pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'Non-stick-double-sided-fry-pan-Nw0dC', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-09-24 04:04:14', '2022-03-31 08:41:34'),
(60, 'Hot shaper 10mm slim belt', 'admin', 12, 6, 48, NULL, 55, '[\"uploads\\/products\\/photos\\/vdMVxDScLE28fDpzZ1El4jaSOkstDPEHGEKPQty2.png\",\"uploads\\/products\\/photos\\/8uXFcp8vcZ3ZFQR8Abt3RaTdLxxftMN3mti654Uf.jpeg\",\"uploads\\/products\\/photos\\/DbjD4MQaMNDkNP7xSN1tQIlsanOLeBpzWNTq5k5H.jpeg\",\"uploads\\/products\\/photos\\/PdnbUGUv3CsnDWJTdHFviUQ28qBqGlbvYn6S4lDp.jpeg\"]', 'uploads/products/thumbnail/u93xybT4dINDJ6ajPhcz5PZeFwFVCHRPDGUwDgJw.png', 'uploads/products/featured/e6TmYRXKXbHGhZ1F5T0UCHXPEMDjTI6ldsBYUBrw.png', 'uploads/products/flash_deal/Lk4kEojmbL7Eb6JI35DPj5kCfzGruiNQasHOPXdk.png', 'youtube', NULL, 'slim belt,hot shaper belt,weight loosing product,waist pain healer', NULL, 1200.00, 400.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 7, 'pc', 400.00, 'amount', 0.00, 'amount', NULL, 50.00, 4, 'slim belt price in nepal', 'Buy slim belt at closet nepal', NULL, NULL, 'Hot-shaper-10mm-slim-belt-G6uW7', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-10-20 06:37:39', '2022-01-18 11:29:43'),
(65, 'Electric BBQ Grill', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/By4bBMoEqWQOlndOV0yAaf1oAieyGlBXcm2UHEnS.png\"]', 'uploads/products/thumbnail/EEdWRUvQznizPvNrmAcT5LUr68j22vlG8HQR83PO.png', 'uploads/products/featured/S1zcXpCsOpGIPxAE2OkqUawtCVxZlYzI29S8uv2f.png', 'uploads/products/flash_deal/t6Os3mkb2tC7uTaLtCebTISuY0qSCZWEDYT0s9Dr.png', 'youtube', NULL, 'bbq grill,electric bbq grill', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.3f1d746cv6aA0H\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Product details of Electric Barbecue Grill And Barbecue Grill Toaster Multi function</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box; background-color: rgb(255, 255, 255);\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: Metal body &amp; tray, stainless steel grill, plastic parts</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.3f1d746cv6aA0H\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Chrome grill</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">230V~%0Hz, 1800W with power indicator light</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">2 grills &amp; 1 tray</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Adjustable grill level - cooking height adjustments</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Detachable grill wire &amp; water tray max. capacity - 2.5 L</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cool touch handles</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Automatic control with thermostat</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy to clean bbq grill</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Durable stainless steel heating elements</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Household use only</li></ul></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Electric Barbecue Grill And Barbecue Grill Toaster Multi function</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto; box-sizing: border-box; font-size: 14px;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word; font-size: 14px;\">Brand</span></li></ul></div></div></div></div><br>', 2500.00, 1749.99, 0, '[]', '[]', '[]', NULL, 1, 1, 1, -1, 'pc', 600.00, 'amount', 0.00, 'amount', NULL, 0.00, 4, NULL, NULL, NULL, NULL, 'Electric-BBQ-Grill-WE7uV', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-10-23 01:23:19', '2020-11-20 00:50:50'),
(66, '4 in one Nicer Dicer', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/9kLiwYRKgJmOhYGtAslPr7VAdHkKOmGLlfGcol3J.jpeg\"]', 'uploads/products/thumbnail/e2VaIVBSQ7FFLMyM6JgG7Xirl8WPL5WZHSqDoLup.jpeg', 'uploads/products/featured/ESfZKC6FIellOgxPlCxPAFRGlTgwYRnh90UOkfWr.jpeg', 'uploads/products/flash_deal/s9YUwV6MhkPxiaNpjBy2UxLsil1vIhw0YEE2eCyr.jpeg', 'youtube', NULL, '', '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Container Capacity - 1100 ml Size</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Easy to dose flour, sugar, rice, noodles or cereals, and even oil can be used in it.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Clear View, Side Window, Long-Lasting, Sturdy, Scratch Resistant &amp; Unbreakable Container</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Keep your food dry and safe - with this set of amazing plastic containers, you can safely store away your food without worrying about insects, rats or other pests, they are suitable for cereal, snacks, flour, nuts, sugar, coffee, tea, dry pet food or anything else you may need to store</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Space saving design - these durable cereal holders have been especially designed to minimize space and will easily fit into your refrigerator, freezer or cupboard which enables you to get the kitchen organized and give you up space in the pantry, these clear containers are completely dishwasher safe for an easy clean, extremely user friendly and ready to use</span></li></ul><br>', 1500.00, 750.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 2, 'pc', 500.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, '4-in-one-Nicer-Dicer-roRus', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 01:49:14', '2022-03-31 08:41:35'),
(67, 'Miracle teeth', 'admin', 12, 6, 48, 68, 55, '[\"uploads\\/products\\/photos\\/kpLqcKVNCeKok0NWo2l1OgeyWa0BBcFpA44Ug8ZM.jpeg\"]', 'uploads/products/thumbnail/Ef3yr91wTwkbisbmbUlAndOIZVM1rJCglI9u4veb.jpeg', 'uploads/products/featured/92Qu1YbeTXGUJMXbN2ctoBtmO6ZOPrf5gyN9xdeQ.jpeg', 'uploads/products/flash_deal/N5pHFPfISNyqiTMCfU7GE6xKOpjw0QABJqnsaFqv.jpeg', 'youtube', NULL, '', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">MIRACLE TEETH WHITENER is completely natural and gentle on teeth and gums. Made of Natural Activated Coconut Charcoal, Bentonite Powder, and Orange Seed Oil Gentle on Gums &amp; Sensitive Teeth QUICKLY &amp; EASILY whiten teeth that have been stained by smoking, coffee, soda, red wine &amp; more. Easy to Use – Just Brush Like Toothpaste!</span></li></ul><br>', 1000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 3, 'pc', 400.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Miracle-teeth-of7b6', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-10-23 02:01:37', '2022-03-31 08:41:36'),
(68, 'Weight gainer Ayurvedic Kaya plus', 'admin', 12, 6, 49, 40, 55, '[\"uploads\\/products\\/photos\\/146SfcOe6l5fVriXPh0DhLNxug3F0q0mJn2z2TGz.jpeg\"]', 'uploads/products/thumbnail/TLLVG5z7WG8qoDjiFfKNjrVWChWea63BaICJKTM5.jpeg', 'uploads/products/featured/bAJgdmPWZl3XkCsT4pfRKMEQnsbE1xNFUIwtKSX9.jpeg', 'uploads/products/flash_deal/IAhoXjJ6GOWnmQl5wvxhFEVBgT26gfSH848TQr3y.jpeg', 'youtube', NULL, 'kayaplus,weight gaining products', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Results may vary depending upon age, diet, gender, etc.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">May help increase your appetite and calories and gain body mass in typical masculine or feminine weight areas.</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.391c34034swsKu\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dosage 1 gm two times aday after meals.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% original weight gain ayurvedic powder,Volume=30g</li></ul><br>', 1500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 50, 'pc', 250.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Weight-gainer-Ayurvedic-Kaya-plus-NTtX1', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 02:10:58', '2022-03-31 08:41:36'),
(70, 'pubbg trigger pubg trigger for mobile 4 finger', 'admin', 12, 5, 32, NULL, 55, '[\"uploads\\/products\\/photos\\/KpW3RvEyu0BAEik08qiLCzrzIKlBX9EdiHnzlVXA.jpeg\"]', 'uploads/products/thumbnail/NXZaozbDX9zSgHQjXoC530caDTdu5IXGiT99wnSV.jpeg', 'uploads/products/featured/Dud3mahWCxqcqUqiu4lbgYf6mVnW9t7VrGtFMNtX.jpeg', 'uploads/products/flash_deal/8QS8SPyXtPWIHDpPoj7exc0RZpRpDgwldIdomR1X.jpeg', 'youtube', NULL, 'pubbg trigger,pubg trigger for 4 finger', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.38d2236couHkIo\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Product details of 1 Pair PUBG Moible Controller Gamepad Trigger L1 R1 Sensitive Shoot and Aim compatible with all smartphone (Black &amp; Red)</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box; background-color: rgb(255, 255, 255);\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.38d2236couHkIo\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Works with mobile shooters that allow users to customize their interfaces, shoot with your index finger while your thumb is moving, no delays again, makes your gaming more easy and fun. (Note: you need to do a few things to the game setting, please scroll down this page to read the instructions)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">The Joystick gives you a real physical joystick for increased precision with touchscreen based games</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">No Power supply and driver needed, easy to use, High precision, High sensitive</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">New 3.0 version clips-on designed easy to use, support almost all games on Android or IOS phone and tablet.phone and tablet</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Supported Most touchscreen devices. Supported Games but not limited to Rules of Survival, Survivor Royale, Knives Out, PUBG Mobile,<span>&nbsp;</span></li></ul></div></div></div><br>', 500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 18, 'pc', 150.00, 'amount', 0.00, 'amount', NULL, 0.00, 2, NULL, NULL, NULL, NULL, 'pubbg-trigger-pubg-trigger-for-mobile-4-finger-bCdao', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 05:48:04', '2022-03-31 08:41:38'),
(71, 'Combo pack of pubg trigger and finger sleeves', 'admin', 12, 11, 4, NULL, NULL, '[\"uploads\\/products\\/photos\\/9Ke0E7xcfd7GkJWG5ZRUUVUUjSHPruuheV4SVlfK.jpeg\",\"uploads\\/products\\/photos\\/csVi5Vam4ojUmzmEMW6qugRLyWjvMj7Jz4NJqpUQ.jpeg\",\"uploads\\/products\\/photos\\/uoYFrN79GhNrzjgOW6QnhusJeeyUYlPEU4AA7DcY.png\"]', 'uploads/products/thumbnail/FU878N07B39koOioHBhhUv3zuUDPPjk0Su7o8xFK.png', 'uploads/products/featured/PR4PJPgIUn8QtO6JkxUatmyBz8TkXXd1A9Jpuspg.png', 'uploads/products/flash_deal/9kksd1uziCHStJnWO8LB9UsRtrIkeLaMnA9fPBF2.png', 'youtube', NULL, 'pubg tiggerr,finger sleeve cap,finger sleeves', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.30fc59e7X1VRG3\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Combo Pack Of Finger Sleeve Cap And Trigger For Sweat Breathable Full Touch Screen To Mobile Pubg/Call Off Duty/Free Fire Game Trigger Battle Royal Sensitive Shoot And Aim Supports</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative;\"><div class=\"pdp-product-desc height-limit\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.30fc59e7X1VRG3\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box; background-color: rgb(255, 255, 255);\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Combo pack</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">touch smoothly run</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">finger sleeve cap and fastest firing sensored</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Trigger for sweat breathable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Suitable for all types android and IOS Mobile -1 pair</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><br class=\"Apple-interchange-newline\"></div></div></div><br>', 1000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 29, 'pc', 400.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Combo-pack-of-pubg-trigger-and-finger-sleeves-cJ9MP', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:03:14', '2022-03-31 08:41:38'),
(74, 'Blood Circulation mat', 'admin', 12, 6, 1, NULL, NULL, '[\"uploads\\/products\\/photos\\/3KcoXA8OqFcAbEij5VW3dDLt0pPyNhD0x0UmzeYJ.jpeg\"]', 'uploads/products/thumbnail/jrp9fgBFD0DMIg4DXxHzbiQl7wg4P1ItDYiZJNiz.jpeg', 'uploads/products/featured/wUt8OMWWyAQFmDd0IJgLp2K8dQ3pk5k0kdsBv6lU.jpeg', 'uploads/products/flash_deal/m2U6zRDO4XSONDd9g7hUsXd80FpH0shwyaFdnx29.jpeg', 'youtube', NULL, 'blood circulation mat', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.7d5e2b57LUr7gM\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.7d5e2b57LUr7gM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">This Yoga Mat is designed to give you the most comfortable yoga experience possible. The extra thick mat protects joints without compromising support or stability</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ideal For yoga, floor-exercises, pilates</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Anti slip, durable, light weight</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy to roll up to carry anywhere, washable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Non-slip bottom provides stability during yoga or workout</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><p style=\"margin: 0px; padding: 0px; font-size: 14px;\">ALL-ROUNDER- Soft, Lightweight, Anti-Slip, Washable and Easy to Carry Mat which is perfect for Yoga, Cardio, Pilates, Meditation or Stretching. EASY TO CLEAN AND CARE FOR. Wash your mat by simply wiping down with water. and hang to dry. DO NOT BLEACH, DO NOT IRON. and It provides padding and support which helps you perform the posture comfortably.</p></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Specifications of Yoga Mat</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br class=\"Apple-interchange-newline\"></div></div><br>', 900.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 3, 'pc', 200.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Blood-Circulation-mat-OYLBT', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:10:21', '2022-03-31 08:41:39');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(75, 'Tummy trimmer double  spring', 'admin', 12, 6, 1, NULL, 55, '[\"uploads\\/products\\/photos\\/KZyUXudR3BBBRzvRfnZzvLeMKOb147IDG7VC5mpK.jpeg\"]', 'uploads/products/thumbnail/vlImQI85nY7MiX2ykDZk6kz869rT2zoEWIvPO8Ww.jpeg', 'uploads/products/featured/llfn1ALxprHwZ5Vg6Z2jdZBgLilcBdxuCEqvRICc.png', 'uploads/products/flash_deal/u4j609PrsTHQSwEZ61yREAnkwMrwT4UsQtzjhcvf.jpeg', 'youtube', NULL, 'tummy trimmer,Double spring', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.7d5e2b57LUr7gM\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.7d5e2b57LUr7gM\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">This Yoga Mat is designed to give you the most comfortable yoga experience possible. The extra thick mat protects joints without compromising support or stability</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ideal For yoga, floor-exercises, pilates</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Anti slip, durable, light weight</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy to roll up to carry anywhere, washable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Non-slip bottom provides stability during yoga or workout</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><p style=\"margin: 0px; padding: 0px; font-size: 14px;\">ALL-ROUNDER- Soft, Lightweight, Anti-Slip, Washable and Easy to Carry Mat which is perfect for Yoga, Cardio, Pilates, Meditation or Stretching. EASY TO CLEAN AND CARE FOR. Wash your mat by simply wiping down with water. and hang to dry. DO NOT BLEACH, DO NOT IRON. and It provides padding and support which helps you perform the posture comfortably.</p></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Specifications of Yoga Mat</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br class=\"Apple-interchange-newline\"></div></div><br>', 1200.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 8, 'pc', 200.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, NULL, NULL, 'Tummy-trimmer-double--spring-l18Ib', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:15:40', '2022-03-31 08:41:41'),
(77, 'Detoxi slim', 'admin', 12, 6, 1, NULL, 55, '[\"uploads\\/products\\/photos\\/JOBOjQZqV9UO0rn3567vOCxyqec8TjDZ8TwpdIht.png\"]', 'uploads/products/thumbnail/QbafN6uA0Pnbi8nbrlvG4JAvChBNFWugRTp6OLNL.jpeg', 'uploads/products/featured/KH9Bax4C0uBUqJH880Ml5gciz4kKN3iCcthQ0HdD.jpeg', 'uploads/products/flash_deal/70PtUnKdnlbIE2urlub6BEBscO24R7cEJyUqjESK.png', 'youtube', NULL, 'detoxi slim', '<ul><li>Reduces appetite Reduce fat absorption. Dough and sugar Formula for the drug resistance\r\nHigh fiber helps to gently exfoliate the skin as a natural extract. No side effects Suitable for women and men. Allows you to slim body pretty tight skin shine. Natural health\r\nSlimming Detoxi Slim\r\nFiber, Phelium husk, Chomium, CLA\r\nGreen Tea Extract, Garlic Extract\r\nPsyllium Husk (Cyan Hugs)\r\n30 Capsules\r\nLOT D36-101\r\nMFD 16-06-18\r\nEXP 16-06-20\r\nDetoxi Slim Fast Slimming Capsule helps reduce appetite and fat absorption, while blocking starch and sugar. The formula is for those with difficulty in losing weight and resistant to weight loss products. It contains high fibers serving as a laxative to help promote a healthy glowing skin. The product is formulated with 100% natural extracts with no side effect and suitable for both men and women. It helps promote a slender, beautiful, firming, and healthy-looking body skin naturally</li></ul>', 1500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 11, 'pc', 300.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Detoxi-slim-bDFjH', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:35:34', '2022-03-31 08:42:03'),
(78, 'ROMOSS Sense 6S Li-Polymer Power Bank, 20000mAh Ultra High Capacity Portable Charger with Dual USB Output Ports & 3 Inputs, External Battery Pack Compatible for iPhone, iPad & Samsung', 'admin', 12, 11, 4, NULL, 60, '[\"uploads\\/products\\/photos\\/07XKKWLYepJx2tZ5Vsu8Svebosmrmq7ZEY73DtKE.jpeg\"]', 'uploads/products/thumbnail/nTLGiLoxLu6t7eYQpeTxpekX84EpAQZzFdM2ya11.jpeg', 'uploads/products/featured/HE6ZWD25PWvyJ4NXW0haB9Z2JUROVJurOj8mWpY4.jpeg', 'uploads/products/flash_deal/spd1C44dtfpdJD1DoJZIksPqMe9sLI7VXaanTsI4.jpeg', 'youtube', NULL, 'power bank,romoss powerbank', '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">The ROMOSS Advantage: With more than 15 years of experience and technology accumulation in the field of power supply manufacturing.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">4X Faster than Conventional Chargers -- Charges QC-support devices up to 80% in just 35 minutes. ROMOSS exclusive fit+ two-way fast charging technology to deliver a max speed charge to any device, support Max 18W Input.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Power for Days -- 20000mAh capacity battery charger charges an iPhone X for 7.3 times, and 3 output ports (USB*2 and Type-C) allow you charge 3 devices at a time.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Life Gets Easier -- With 3 different input port options, you can conveniently carry just one cable to charge both the power bank and your phone.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">What You Get: Sense 6+ 20000mAh Portable Battery Charger, User Manual, our worry-free 12-month and friendly service.<span>&nbsp;</span></span></li></ul><br>', 2500.00, 1500.00, 1, '[\"5\"]', '[{\"attribute_id\":\"5\",\"values\":[\"10000mAh\",\"20000mAh\"]}]', '[]', NULL, 1, 1, 1, 2, 'pc', 700.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'ROMOSS-Sense-6S-Li-Polymer-Power-Bank-20000mAh-Ultra-High-Capacity-Portable-Charger-with-Dual-USB-Output-Ports--3-Inputs-External-Battery-Pack-Compatible-for-iPhone-iPad--Samsung-0eKTm', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:40:46', '2022-03-31 08:42:03'),
(79, 'Double sided grill fry pan', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/ZeS4hbPN9DB8Pt9sZ4HETI2nqo5vocO4FXDqVvnd.jpeg\"]', 'uploads/products/thumbnail/RycNzArNf2NiqKBsPHDiy82qbNOV4C1kGntS4NRQ.jpeg', 'uploads/products/featured/74pXx8Xmm1pCNBSZTK0EMXH1QCDC5bpKt7H4t9FT.jpeg', 'uploads/products/flash_deal/1bTUogUQopEkiYNEbYQ2cyrehDX7fErcY47DT5ck.jpeg', 'youtube', NULL, 'fry pan,non-stick fry pan', NULL, 2200.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 4, 'pc', 200.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Double-sided-grill-fry-pan-e291Q', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-10-23 06:50:56', '2022-03-31 08:42:05'),
(80, 'Kemei ladies hair remover Epilator', 'admin', 12, 6, 2, NULL, 55, '[\"uploads\\/products\\/photos\\/dnc1ApLKziZZEqphPjw9GpNuYkZLKyJkeofutivt.jpeg\"]', 'uploads/products/thumbnail/kA0fEFcL9oirvOcnsB8uEwAdAWubEGIGsku1T2UR.jpeg', 'uploads/products/featured/FHgsn1HQ7M1Hcsuc7wRPIoTCPJ9xCCABveQg3ohN.jpeg', 'uploads/products/flash_deal/LHnFwWCETzL05WgAS3xSeLBs89AuOuxIOL3gHuw5.png', 'youtube', NULL, 'body hair remover, epilator,ladies trimmer', 'Product details of Kemei Women Shaver Bikini Epilator Hair Eyebrow Body Hair Removal Trimmer\r\nUsed For Face/Body/Underarm/Bikini. Stainless steel blade which is thin to 0.2 mm; sharp angle design which makes it does not hurt the skin.\r\nErgonomic design with non-slip handle, USB charging. Suitable for face, body, head,armpit, back, neck, arm, pubic hair\r\nDouble protection system ➣Quickly Charging ➣USB charging with LED light charging indicator ➣Three guide combs ➣Rechargeable One Blade Pro can trim, edge, and shave any length of hair. ➣Waterproof handle for wet or dry use.\r\nEdge it up - dual-sided blade for precise edging to line up your style easier than ever before', 1500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 7, 'pc', 550.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Kemei-ladies-hair-remover-Epilator-UEXh7', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-10-23 07:02:51', '2022-03-31 08:42:06'),
(84, 'Electric Jug 2 Litre', 'admin', 12, 7, 68, NULL, NULL, '[\"uploads\\/products\\/photos\\/I9tEd3OtaXEW9vbElQKjEJc3wyNTpNw0z0KtC14u.jpeg\",\"uploads\\/products\\/photos\\/3fRo7h33V7IsLwDR32anKdLqlbgfov5U6RWF4wva.jpeg\",\"uploads\\/products\\/photos\\/slEbC200mrAwMHqcS5Ldec54zkk0bS7mpO6m23xz.jpeg\"]', 'uploads/products/thumbnail/p57KRAhcV0joKpBgIuPGTbfy31RmSAMb6l3YX6oy.jpeg', 'uploads/products/featured/P4Icip2ZgusSpxw2t2l4OWNE53wvSfmGB8PZfNvr.jpeg', 'uploads/products/flash_deal/lqtdBYRJs965hJnScume307Pwv7q0lIr0wW2pgFW.jpeg', 'youtube', NULL, '', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; font-size: 12px;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; font-size: 14px;\"><strong>Features:</strong></li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; font-size: 14px;\"><br></li><li class=\"\" style=\"font-size: 14px; margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features : Power indicator light that lights up as it begins to boil water and automatic shut-off after boiling ; Its water level indicator enables you to easily measure the amount of water you need</li><li class=\"\" style=\"font-size: 14px; margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">kettle electric 2 litre; Automatic cut off will not function when the lid is open</li><li class=\"\" style=\"font-size: 14px; margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Troubleshooting guidelines: i)Never operate the appliance empty ii) Never lift the kettle from the base when the unit is in operation.</li><li class=\"\" style=\"font-size: 14px; margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cattle Electric with Power - 1500 watts and Capacity - 2L</li><li class=\"\" style=\"font-size: 14px; margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Max 3 differentiators Great Features - i)Automatic Cutoff ii) 360 Degree<span>&nbsp;</span></li></ul>', 1000.00, 500.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 48, 'pc', 350.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 2, NULL, NULL, NULL, NULL, 'Electric-Jug-2-Litre-lI5fH', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-01 15:07:27', '2021-09-28 12:04:38'),
(85, 'Sports Shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/coRQoJAO0emUH6vQrfR1vcoynTMSXIOvpRp6DWym.jpeg\"]', 'uploads/products/thumbnail/UoVrPAYEtd9FTCZ20xfBF36rkkmTK6S7mQ1UC5j7.jpeg', 'uploads/products/featured/ioqCDYalZ2LhDG9I3UGBTixs2tH5gqqY6oEqKC3F.jpeg', 'uploads/products/flash_deal/TL9C9FbdpmMdkf41ePyJ05tyrsRm9SgfoWCr6Ccn.jpeg', 'youtube', NULL, 'latest shoes,sports shoes', NULL, 3200.00, 1750.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"39\"]}]', '[]', NULL, 1, 1, 1, 0, 'pc', 1000.06, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sports-Shoes-for-men-KzhYT', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-02 06:53:18', '2022-03-31 08:42:10'),
(87, 'Sport  shoes for man', 'admin', 12, 1, 78, NULL, 55, '[\"uploads\\/products\\/photos\\/I8nfZ0FNJhUKwjOP2zIuljYup01lemdB0zWd5u3K.jpeg\"]', 'uploads/products/thumbnail/Iz5mTHqI4vca5osgs2KAhsNnZ6kTQVe7zmQwJeLS.jpeg', 'uploads/products/featured/rq8mG8SIWYHC9uLqp0ow4zwteTTpyXeU5KV28GLq.jpeg', NULL, 'youtube', NULL, 'sport shoes ,shoes for men,stylish shoes', NULL, 2200.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"37\",\"38\",\"39\",\"40\"]}]', '[]', NULL, 1, 1, 1, 0, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sport--shoes-for-man-HFWqk', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 07:52:25', '2022-03-31 08:42:11'),
(88, 'Sport shoes shoes for girls', 'admin', 12, 1, 78, NULL, NULL, '[\"uploads\\/products\\/photos\\/MhcvgObXA9mnwRztmpgAAY6QhYJ0J7fTkJg6TWlP.jpeg\"]', 'uploads/products/thumbnail/Zet5uhS20uU3ozQVEPjyhsQkfe9ULbREgfLBXn0w.jpeg', 'uploads/products/featured/Ef39ACZD1YKSg8VVcWDEajYyLi91CEytKpSLExf0.jpeg', 'uploads/products/flash_deal/3DXzPSvxMZJidf0lUGeUODO0AnuXymbN3LhOijk2.jpeg', 'youtube', NULL, 'sport shoes ,shoes for girls', NULL, 2000.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"39\",\"40\"]}]', '[]', NULL, 1, 1, 1, 0, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sport-shoes-shoes-for-girls-oMkQY', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:03:46', '2022-03-31 08:42:11'),
(89, 'Sports Shoes for Girls', 'admin', 12, 1, 78, NULL, 55, '[\"uploads\\/products\\/photos\\/t7SP42PVLUQZ30yOq2tXlYwn3LbtXXba7XKpNQSj.jpeg\"]', 'uploads/products/thumbnail/a9hdmKddl4OyrWjkaIUHrC7f2QAfxpwocIL2IzTB.jpeg', 'uploads/products/featured/4dkKwL25Mos3B5CY1rzlOWeSCxwwCWdEdNr6zNQd.jpeg', 'uploads/products/flash_deal/uy3p9zQMEnSjlCvnCF0hw6WYzVCEtqMJEqy2Yd6M.jpeg', 'youtube', NULL, 'stylish shoes,sport shoes,shoes for men', NULL, 3000.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"39\"]}]', '[]', NULL, 1, 1, 1, 0, 'pc', 1000.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sports-Shoes-for-Girls-CKe9u', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:08:18', '2022-03-31 08:41:51'),
(90, 'sport shoes shoes for man', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/LSVpPB1BKDcy32ilNmLAT8xDNZlTvMMbkD0xc48C.jpeg\"]', 'uploads/products/thumbnail/WRsYCmLimKL2Dd0Q7oqVTQkQeprXRNkYTAWNTAQY.jpeg', 'uploads/products/featured/Nzyx8EPAvF1obhnZNxusN3Hsu1UZElWRNxc7aVVb.jpeg', 'uploads/products/flash_deal/CSaJ7CaJwMiV5euXzWYfqhE0oI6TnNPW9Ib9DhDM.jpeg', 'youtube', NULL, 'stylish shoes,shoes for men', NULL, 2500.00, 0.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"39\"]}]', '[]', NULL, 1, 1, 1, 0, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-man-TySNH', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:12:43', '2022-03-31 08:41:51'),
(91, 'sport shoes shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/qgiHZeqkoHhYqjVdFJWZefZjCYxwjFLDPxumPFpK.jpeg\"]', 'uploads/products/thumbnail/zgXSppC2ZtKi9NHoSTf5144t9QwrBpS5XC5JhlvG.jpeg', 'uploads/products/featured/W9iV3WjlH55Jsf8yeaxojSx60iY6fY8vTvEVQlHI.jpeg', 'uploads/products/flash_deal/o31CJRFxJhIZigT4XHXdgyyYikqJ7aWTbYomi2jY.jpeg', 'youtube', NULL, 'stylish shoes,sport shoes,shoes for men', NULL, 2500.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-men-ltvCO', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:18:44', '2022-03-31 08:41:50'),
(92, 'Sport shoes for man', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/GqQZOew8nUgdDTdhLzzMwRo688CVXNEh0CXvHcfP.jpeg\"]', 'uploads/products/thumbnail/KXJkS3tceB9Vz2087zRdjByCSagmtfNWBg7VNMkB.jpeg', 'uploads/products/featured/2YDmytWnnpGhesemEeLd7XaoKkcot3A7Tnaqllpg.jpeg', 'uploads/products/flash_deal/QS44JVhLGTWL0uB7EWedcYfClaxYNdhHk3wHRnd6.jpeg', 'youtube', NULL, '42', NULL, 2800.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 600.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sport-shoes-for-man-mRhMD', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:22:06', '2022-03-31 08:41:49'),
(93, 'sport shoes shoes for man', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/sqq1iJGnHiYvCxi3eOmsAWcmaJUBwitbsZjU9GsC.jpeg\"]', 'uploads/products/thumbnail/cw19yAA57uK7kle6DWBr3gtVEmemnWKXg6kvN02P.jpeg', 'uploads/products/featured/PqN5zu9JhyQh7QWiYF1vke2WwCHCS9C4zJeuKyNW.jpeg', 'uploads/products/flash_deal/heNIJV4DDIs0qfewEQXRDxZk8UtAy61shoxzhFSi.jpeg', 'youtube', NULL, 'stylish shoes,sport shoes,shoes for men', NULL, 2600.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-man-8ppCL', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:26:59', '2022-03-31 08:41:49'),
(94, 'Sport shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/odWzOuMWFT5OYRRXJJGYFBH6ZDGbv8ixD085HvNp.jpeg\"]', 'uploads/products/thumbnail/CYmbSbWPfevzBtfl1kv6pqoucmB8eLWUoL0ZHJSJ.jpeg', 'uploads/products/featured/4dqOEu1eo9GYxtuFYuPZ21in380KWccSNEDoPumB.jpeg', 'uploads/products/flash_deal/uSmyhBh9cGXkDJ1sBOyqyi3rHOPF33zsIyt2x8ue.jpeg', 'youtube', NULL, 'sport shoes ,stylish shoes,shoes for men', NULL, 3000.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 800.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sport-shoes-for-men-gHUFW', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:33:24', '2022-03-31 08:42:22'),
(95, 'sport shoes shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/Y1uM3s2OwBzmKf9PIr4OcqCYZz5K7S7y99NnZQdJ.jpeg\"]', 'uploads/products/thumbnail/aw9eBERr0fy69ebx0wlBhiZuhJCZRghDKhaydXwl.jpeg', 'uploads/products/featured/tDh3DAHPEJXzh1lOxYl9lKPot19ZCW2UcmiTO89N.jpeg', 'uploads/products/flash_deal/okyVtoUN77N7hx1gMrDhKyFtKhF6Q8ayuGc1F2Kd.jpeg', 'youtube', NULL, 'shoes for men ,sport shoes', NULL, 2500.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-men-WB1DV', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:38:48', '2022-03-31 08:42:22'),
(96, 'Sport  shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/CxJ5H6FypABq52aCwcQz9o4Cy1x2MKomTDlxyUWp.jpeg\"]', 'uploads/products/thumbnail/5AFx1e4Exj7AQIUmoUBjCFWM9dAYUydAJWLMNVG6.jpeg', 'uploads/products/featured/PXqRvnWHnevJUZRDmvimeD1IKEIaZRhQmwTCgY93.jpeg', 'uploads/products/flash_deal/y0wxLLgUMrTntXbMwEprAn8B0PPrYAT8bXF06IOP.jpeg', 'youtube', NULL, 'shoes ,sport shoes,shoes for men', NULL, 3000.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 800.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Sport--shoes-for-men-ZH3rO', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:41:56', '2022-03-31 08:42:23'),
(97, 'sport shoes shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/3VAkbRsm9AIJhYSmZ3chjo9RVgE4c4hV2x3NcZq2.jpeg\"]', 'uploads/products/thumbnail/lccRJ5wgz7oUkzaJwOW2wTv8crTfjRrXNOssjwD9.jpeg', 'uploads/products/featured/3JPB3GiCMpTcFlTZL4RAWiHh9nAAmVkAFSwX7Gxw.jpeg', 'uploads/products/flash_deal/HSVmXtRmyYFwE46GPwVCmTtiMqAUqyxGYZOT2yTB.jpeg', 'youtube', NULL, 'sport shoes,stylish shoes,shoes for men', NULL, 2200.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-men-1GbSC', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:45:34', '2022-03-31 08:42:24'),
(100, 'sport shoes shoes for men', 'admin', 12, 4, 79, 88, 55, '[\"uploads\\/products\\/photos\\/bHQ8VT7lsos7AkN1D2sLR9f7nc5k9uuBtkPZ5qIN.jpeg\"]', 'uploads/products/thumbnail/MiKcTo394mxsNZyO7SBYcSMQPgdAzTTSAXYa6s3X.jpeg', 'uploads/products/featured/H08g5aytH35oh0Ru0vQTx1COgKQwACjLx8nY7pte.jpeg', 'uploads/products/flash_deal/duot0O5tafhILtKtLmaYfvqCgG9O2IyELLjugxuL.jpeg', 'youtube', NULL, 'shoes for men,sport shoes,stylish shoes', NULL, 2500.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'sport-shoes-shoes-for-men-UtZwt', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-02 08:49:17', '2022-03-31 08:42:26'),
(101, 'Dish washing gloves', 'admin', 12, 7, 68, 83, 55, '[\"uploads\\/products\\/photos\\/Ki4hvaq6TJEwx2XilRk8oCMCY4uIFKD10OpLoElx.jpeg\",\"uploads\\/products\\/photos\\/38103z2USNmomhSxVm4WeNtva21iQX6dAew4ys9T.jpeg\"]', 'uploads/products/thumbnail/3yRYINXCLl46cwiuEIgjyqdI8Ig7kHftTehnBz3B.jpeg', 'uploads/products/featured/T50V5KRqlPnAPisyIq660lb4lIM7DuI3DQdnonjf.jpeg', 'uploads/products/flash_deal/CrBXDAsDzGdMICuA1n3p2fjP0WSsBBwxWknsaIPv.jpeg', 'youtube', NULL, 'dish washing gloves ,panja,water proves gloves', '<ul><li><span aria-hidden=\"true\" class=\"a-size-base a-color-base a-text-bold\" style=\"text-align: center; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-weight: 700 !important; line-height: 20px !important;\">This item&nbsp;</span><span aria-hidden=\"true\" class=\"a-size-base a-color-base\" style=\"text-align: center; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 20px !important;\">Woogor Reusable Rubber Latex Pvc Flock lined Hand Gloves For Kitchen Long Sleeves Safety Kitchen Gloves For Dish-Washing, Cleaning, Gardening, Lab Work,Laundry Cleaning Gardening and Sanitation, Free Size,&nbsp;Multi Colors</span></li></ul>', 500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 17, 'pc', 250.00, 'amount', 0.00, 'amount', 'free', 0.00, 14, NULL, NULL, NULL, NULL, 'Dish-washing-gloves-ehdil', 0.00, 1, 1.50, NULL, 0, NULL, NULL, '2020-11-03 04:04:31', '2022-03-31 08:42:28'),
(102, 'Waken lint remover', 'admin', 12, 7, 8, 90, 55, '[\"uploads\\/products\\/photos\\/3P7qI4XsQjLyJ3t79u0VhB6z8uShF6JAZfYwdQIv.jpeg\",\"uploads\\/products\\/photos\\/aA9kPjzBQ3tCMj3HEvq8KXA49UPgT4HNqJgZFIyZ.jpeg\",\"uploads\\/products\\/photos\\/yLEXJhKfW6TSWKIG0ywRx5vVYkW591TXuJyAp71n.jpeg\"]', 'uploads/products/thumbnail/pGxjeroTKhJCwfOyghAEnuMVytIMbeHf767jAK7m.jpeg', 'uploads/products/featured/xukOkYTQlASyxz8Gava2Z02v3RqwQs1qafVSSoYU.jpeg', 'uploads/products/flash_deal/oq8HCZm4zJMUwPwNcnZ8Wf2pumcX7sqss43621v5.jpeg', 'youtube', NULL, 'waken lint remover', NULL, 1100.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 30, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'Waken-lint-remover-SP1et', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 04:14:52', '2022-03-31 08:42:43'),
(103, 'Mobil holder for bike', 'admin', 12, 11, 4, NULL, 55, '[\"uploads\\/products\\/photos\\/efMlukGWVdsIReEtFItW6it9siXWZzEGg27rRKT7.jpeg\"]', 'uploads/products/thumbnail/7LbT1NLWyh7c7tlLlZz18Nbiy4D9ca1IDAeIFTwL.jpeg', 'uploads/products/featured/XOJlXeycZeP6I3OSwhKVtqc6yeoSciyPJ8V9xL0u.jpeg', 'uploads/products/flash_deal/opk1eGQ1Td5Ub7xXn71l3tJvAtlJKmZTN5XgRgL3.jpeg', 'youtube', NULL, 'mobile holder for bike,mobile holder', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">WHY RIDERSCART X-GRIP - If you are looking for a compact mount for your mobile without the cookie cutter shape, you’ve found it. X-Grip expands to fit a wide range of phones while keeping all of your buttons accessible.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">ALWAYS CONNECTED - With X-Grip you will never get lost on the road and you don’t need to worry about running out of battery on the go. The 5V 2A output can charge your mobile as fast as your mobile charger.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">ALWAYS SECURED - The clean and clever 4 legged design sports great holding power without hiding your smartphone behind foam pads and plastic. The cradle expands and contracts for perfect fit of most smart phones.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">OUR QUALITY - Riderscart X-GRIP is made of high strength composite and stainless steel with silicone rubber tips to hold the device firmly. All the material used make our product a complete shockproof and waterproof mount.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">For Returns / Replacement / Complaint / Inquiry / Suggestions Please Whatsup on 8368680923</span></li></ul><br>', 1500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 30, 'pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Mobil-holder-for-bike-oUV18', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-03 04:23:04', '2022-03-31 08:42:30'),
(104, 'Boya-mic', 'admin', 12, 11, 4, NULL, 55, '[\"uploads\\/products\\/photos\\/xRAo4IopekWfb3ZShdxAfyYqyivsPoNtmGNMt4v5.jpeg\"]', 'uploads/products/thumbnail/uVVsnpaouz9809DU5owaU6Q4LXCVkqi13VuQ5y1R.jpeg', 'uploads/products/featured/h3wZ4VpIFCRHBM7Uw2QObqgFkLb54sBBLV9Lj2DU.jpeg', 'uploads/products/flash_deal/gaMAt1tKK0V2i4xLJr2bVaDf4V6P1me6lpBfIKul.jpeg', 'youtube', NULL, 'boya-M1 mic,boya mic', '<div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-id=\"79vds5-2e1ix2-vjp5x5-c07rks\" data-cel-widget=\"featurebullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"box-sizing: border-box; margin-top: 8px !important; margin-bottom: 0px;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Clip-On Mic for Smartphones, DSLR, Camcorders, Audio recorders, PC etc</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Omni directional condenser microphone</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">High-quality condenser is ideal for video use</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Free Windshield Together and Low handling noise</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Vidpro XM-L Wired Lavalier microphone - 20\' Audio Cabl</span></li></ul></div><span class=\"a-declarative\" data-action=\"hlcx-send-reftag\" data-hlcx-send-reftag=\"{&quot;refTag&quot;:&quot;psdc_4654389031_c_B01M2VC8GF&quot;,&quot;allowLinkDefault&quot;:&quot;true&quot;}\" style=\"box-sizing: border-box;\"><a class=\"a-link-normal HLCXComparisonJumplinkLink\" href=\"https://www.amazon.in/BOYA-Microphone-AriMic-Windscreen-Smartphones/dp/B01M2VC8GF/ref=sr_1_6?crid=2N74NPSO5SDUC&amp;dchild=1&amp;keywords=boya+m1+mic&amp;qid=1604381152&amp;sprefix=Boya%2Caps%2C338&amp;sr=8-6#HLCXComparisonWidget_feature_div\" style=\"box-sizing: border-box; text-decoration: none; color: rgb(0, 113, 133);\"><span style=\"box-sizing: border-box;\"><br></span></a></span></div>', 2200.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 25, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Boya-mic-0hQAJ', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 04:31:02', '2022-03-31 08:42:31'),
(105, 'Steam vaporizer, Nozzle inhaler', 'admin', 12, 6, 48, 72, 55, '[\"uploads\\/products\\/photos\\/lkRs0U0HhovY1JYvpRaRs7fA6CpvNOyu1mzkwUZI.jpeg\"]', 'uploads/products/thumbnail/Gni0VDvqt2OxkKnum5gGSH1bnAzeA7BWhuIyWOYS.jpeg', 'uploads/products/featured/rWSOtBNp88qJALcbo3rp0jjubIkWZXCTvUSOAzYj.jpeg', 'uploads/products/flash_deal/lTAwkhQLy9zHnEv638HoG7VaClis0V87trXzhufR.jpeg', 'youtube', NULL, '', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">UNIQUE FEATURE: A pure form of Vapor, Power Indicator, Two Level Heating Control (Off/Low/High), Steam Controller, Exhale Outlet, Auto Power Off, Specially designed nasal mask for nose &amp; mouth. No sprinkling of water. Best for kids &amp; adults</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">QUICK, ACCURATE AND EASY TO USE - VAPORIZER is an ideal treatment prescribed as steam therapy for health and beauty. The warm, moist steam relieves persistent cold and cough. It also open up pores for deep skin cleansing and frees it from germs &amp; impurities.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">HEALTHCARE BENEFITS: Warm, moist steam relieves persistent cold &amp; cough. Open clogged nasal &amp; sinus passages to ease congestion. Relief from Bronchitis, helps clear out mucus. Helps in parched throat &amp; chest congestion to breathe more comfortably &amp; naturally.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">BEAUTYCARE BENEFITS: Open pores for deep skin</span></li></ul><br>', 1000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 235, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 58, NULL, NULL, NULL, NULL, 'Steam-vaporizer-Nozzle-inhaler-MCFux', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 04:39:31', '2022-03-31 08:42:32'),
(106, 'Luggage bag', 'admin', 12, 4, 27, NULL, 55, '[\"uploads\\/products\\/photos\\/8VVRLLxkGbB0hXt3Joi1cwIWuiBba8YEsTSjUSQu.jpeg\",\"uploads\\/products\\/photos\\/s8ILQXtX4NfL1DYFnAcFvDdVTydn0HfjUOI0h3RP.png\"]', 'uploads/products/thumbnail/BlftbZlHYRYtTijzrmDVGSd0l6Jh3vANZaBOX9F1.jpeg', 'uploads/products/featured/wmvjma5oAbgm9QzuDmqpb4jTEEqYe8U3gUb16xPw.jpeg', 'uploads/products/flash_deal/3VRlaM9329DvdSn9ItF7tv9Hgev2qSJC9BAld364.jpeg', 'youtube', NULL, 'luggage bag,stylish bag,Lether bag', NULL, 2000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 19, 'pc', 700.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 1, NULL, NULL, NULL, NULL, 'Luggage-bag-23myl', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 04:57:30', '2022-03-31 08:42:37'),
(107, 'Pu all in one wallet', 'admin', 12, 4, 27, NULL, 55, '[\"uploads\\/products\\/photos\\/iYTOp66PygDv6O6iQldsPRux2NNc1qgfAFblsPYh.jpeg\",\"uploads\\/products\\/photos\\/vLK6EvzJMh0atfUrEfgv5NMSKaWh9YjMfH5l6G9D.jpeg\",\"uploads\\/products\\/photos\\/mvJyxj3BKBMqwfV72eZ2SxFKITrjnvbFzGvsz0aL.jpeg\"]', 'uploads/products/thumbnail/YLBjk4YSsFKb4vmIht0jC6cculnJtSmgCoz8mvJu.jpeg', 'uploads/products/featured/e1OG6LUUEKkoVQGhGkvR4pffh0T8NucRrOMyuRkc.jpeg', 'uploads/products/flash_deal/D2waz0u0z2xP61TGK4sgwcr5gccqfkryDoqUwQKG.jpeg', 'youtube', NULL, 'pu all in one wallet,wallet', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">This Portlee bifold card holder wallet has elegant catchy design. It can carries all yours cards. It\'s slim,so will fit comfortably in your pocket. This is a high-quality classic genuine leather wallet from Portlee. This wallet acts as the perfect accessory to complete your look and make you stand out.this wallet is long-lasting, light weight and a fine quality genuine leather product. It shows your personality and style every time you pull it out</span></li></ul><br>', 1000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 88, 'pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 2, NULL, NULL, NULL, NULL, 'Pu-all-in-one-wallet-M22SF', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 05:03:42', '2022-03-31 08:42:38'),
(108, 'Trimmer men hair trimmer  hair remover', 'admin', 12, 4, 27, NULL, 55, '[\"uploads\\/products\\/photos\\/mSNNU1vCPn72EryMqsV0Zz8ALhgt3HtWpVdPF3RJ.jpeg\"]', 'uploads/products/thumbnail/cmKxFZX76bsrVvFuGCzIB9rnxb1zOheIVeo3gjCs.jpeg', 'uploads/products/featured/o1F3KUmuJBYDNpI5tjB44rNwrdnbDRHT2bm6cee1.jpeg', 'uploads/products/flash_deal/17134ZIBgTEXMj95nyt1iFvLbx7xX3L2ZQ5jo1W4.jpeg', 'youtube', NULL, 'Trimmer,men hair trimmer', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">*High Quality Home Haircuts*: Using the blade fitting technology to reduce the friction between the movable knife and the fixed knife, effectively reducing noise. 5 limit combs, novices and shaved gospel. Length as you want, suitable for a variety of haircuts.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">*Stainless Steel Material*: Made of detachable stainless steel premium blade with sharp angle design. All-steel acute angle blade is safe, sharp and wear-resistant. The stainless steel not only has high hardness, but also it can be polished automatically without rust.</span></li></ul><br>', 2000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 59, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 1, NULL, NULL, NULL, NULL, 'Trimmer-men-hair-trimmer--hair-remover-JFoQM', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-03 07:57:11', '2022-03-31 08:42:38'),
(109, 'Roti maker', 'admin', 12, 7, 8, NULL, 55, '[\"uploads\\/products\\/photos\\/ZvjCaJUCRyxMVfC6zLrL4KrX1BDA3dqnbp5F1uxr.jpeg\",\"uploads\\/products\\/photos\\/yBywtYCEpHAze9KIy9Zgf6LV3Iw1iICBuLYkTy5K.jpeg\"]', 'uploads/products/thumbnail/erAsftHNsZLD2AC6XrHoa9fuubHG69m2fomcLT3W.jpeg', 'uploads/products/featured/sHKXp3hV4HPuYTr17uziKUMQFXHOuyKthS3e9oIU.jpeg', 'uploads/products/flash_deal/oqQXWyEg88ztctQ0hlJgNkS9bJMXRZn1eIewjfbu.jpeg', 'youtube', NULL, 'Electric Roti maker,Roti maker', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Stainless steel Outer Covers</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">It rolls and cooks chapattis in less than a minute</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Heating Elements on both Top and Bottom Plates</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Double Coated Non-Stick Surface</span></li></ul><br>', 3000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 10, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Roti-maker-WFs0g', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-04 01:27:53', '2022-03-31 08:42:40'),
(110, 'Travel bag Grey taps sport bag', 'admin', 12, 4, 27, NULL, 55, '[\"uploads\\/products\\/photos\\/s4eohQv2xjApYLwLu7iXHUOeVi4OUFiHqeOYN0LH.jpeg\"]', 'uploads/products/thumbnail/2mgkx32xtsyM2gYhv9VL4e0dFm4gcsWjhjiGIVhD.jpeg', 'uploads/products/featured/r51KuUDlduyfRHCorIdYSJWbiKtMNyU86Pprg0nJ.jpeg', 'uploads/products/flash_deal/qu2v8vg15DjnMrVbDJVTtfda6NolKHHx9jUooZYA.jpeg', 'youtube', NULL, 'Travel bag,Grey taps sport bag', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.718b4cd483td5q\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Tape Color: Grey in all coloured bags</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: Polyester(Waterproof)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: 48 cm x 28 cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">[Conversion: 1cm=0.3937 inch, 1inch=2.54 cm]</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Laptop : 18 Inch +</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">.</div><ul><li style=\"text-align: center;\"><br></li></ul>', 1500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 4, 'pc', 650.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 1, NULL, NULL, NULL, NULL, 'Travel-bag-Grey-taps-sport-bag-CXGAd', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-04 05:25:31', '2022-04-25 10:51:45');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(112, 'Electric keema machine keema maker', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/UkvnBCK1fN775Vbhj9Cz96UKDsSDzNtzywZlojHV.jpeg\",\"uploads\\/products\\/photos\\/LFyJa5pHLSBYgquSNGXkUMfazioChUPgjBlgPYp5.jpeg\",\"uploads\\/products\\/photos\\/RpNi6VGbMieQrdKxmtmb0FLednWHtvNljSw7k6pY.jpeg\",\"uploads\\/products\\/photos\\/vopImJrROiSfI93PS97y6w37xRsCqPfSe6tcDWlj.jpeg\"]', 'uploads/products/thumbnail/awQYj0DwQtoWwENvsPuEeWNoHTzOqOZIihRxRj2u.jpeg', 'uploads/products/featured/H5QWD5tHNRdU5qB2lHTGl5G3fKDuq9XZ6oPWZukb.jpeg', 'uploads/products/flash_deal/ZPq5OcCYaLIqUfODEbIcFWvoRkjRJFnM1p8nChfl.jpeg', 'youtube', NULL, 'Electric keema machine,keema maker', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">Much faster than cutting by hand; chop onions, slice salad ingredients, e Watermelon, spinach, pumpkin, peanuts, meats, mix sauces or puree soups, etc just in seconds. Choose different speed for fine, normal and coarse grinding to meet your need- fast speed for meats, nuts, carrots; slow speed for eggs, vegetables, fruits, etc.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">4 detachable stainless steel blades allows the upper and lower blades to chop food evenly. Chop vegetables in 6 seconds and chop meats in 8 seconds, making an indispensible helper in your kitchen when having friends gathering or family reunion.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">This ergonomically designed white hand blender is compact and doesn’t take too much space on your kitchen shelf.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">One-touch operation, 300 watts, just press the button, and get it faster</span></li></ul><br>', 2000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 3, 'pc', 850.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 3, NULL, NULL, NULL, NULL, 'Electric-keema-machine-keema-maker-Wm2ac', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-04 05:57:01', '2022-03-31 08:42:53'),
(113, 'Manual BBQ Grill Mini portable manual barbel que grill', 'admin', 12, 7, 8, NULL, 55, '[\"uploads\\/products\\/photos\\/WhPBGIaGZfmYenN8JtEh4DiDy78ZvwR4DGPIVdCg.jpeg\"]', 'uploads/products/thumbnail/6xV01MMwCzKZnKYWreYadBRX3rKEbBxlQ4Ci9i18.jpeg', 'uploads/products/featured/aseDMjqpHVBdfmKTFt09zpkBXAlByuBeUhFUOtAS.jpeg', 'uploads/products/flash_deal/mPNUfi3q2Hs3bp33e777pH5r0n6Nquif8zM13bzw.jpeg', 'youtube', NULL, 'Manual BBQ grill,Mini portable barbel grill', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.488947e4IBJ3dy\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Light, fine workmanship, durable for use.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy to disassemble and assemble.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy to carry wherever you like.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">It is allowed to fold and clean.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ingenious design folding , make BBQ grill of easy to use.</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.488947e4IBJ3dy\" style=\"margin: 0px; padding: 0px; font-size: 14px;\"><em style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><br></strong></em></p></div>', 2000.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 20, 'pc', 500.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Manual-BBQ-Grill-Mini-portable-manual-barbel-que-grill-PeCeq', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-11-04 06:05:15', '2022-03-31 08:42:54'),
(116, 'Electric hot water bag', 'admin', 12, 6, 50, 37, 55, '[\"uploads\\/products\\/photos\\/4ybwGklBHhFR2bhMus2U1TSMTE0oMmVY9P3kP3QT.png\"]', 'uploads/products/thumbnail/WQn3x3sOwbJPye7W9NSSgzne5D2x0Ya19IUQF9h3.png', 'uploads/products/featured/n4PCoUZtc8ixl8GtH73atulgwKng1KdcGEKXOd72.png', 'uploads/products/flash_deal/HdFNEGCuIYfYbIqr8LijPNHXcV7HQtSRBwEtPI1f.png', 'youtube', NULL, 'water bag,hot water bag,electric hot water bag', NULL, 800.00, 240.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 39, 'Pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, NULL, NULL, 'Electric-hot-water-bag-DE3LN', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-07 02:56:50', '2021-12-24 05:16:28'),
(117, 'ClouDisk 16GB memory card', 'admin', 12, 11, 4, NULL, NULL, '[\"uploads\\/products\\/photos\\/ulBVBHkOshdDWHolzniS5bOP7t3HviyKIMTVCjzv.png\"]', 'uploads/products/thumbnail/mmB1FQppCU5L6HqU8jGJjFFGyxHnx8LKiBFeTogC.png', 'uploads/products/featured/eAVgViOi2hKfmubAiAz6gecS0m0PrxEYXtg938w3.png', 'uploads/products/flash_deal/Q1LcJ7cEKY0RvuCDAaDUVFDoizllfub6GSxa6pQH.png', 'youtube', NULL, 'memory card,SD Card,16gb memory card', NULL, 850.00, 310.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 1, 'pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 1, NULL, NULL, NULL, NULL, 'ClouDisk-16GB-memory-card-IZWMc', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-20 10:41:36', '2021-12-24 05:16:27'),
(118, 'ClouDisk 32GB Memory Card', 'admin', 12, 11, 4, NULL, NULL, '[\"uploads\\/products\\/photos\\/u01EkFkbBFNOOhu0sUR7zv5OYxLKDsp1R8LnC6vc.png\"]', 'uploads/products/thumbnail/e2dJXSUzCojS4QMuqSKPR7jF7bhHmRgwrNQ6bSaf.png', 'uploads/products/featured/XpTLyVnMpTae4m3L7idRvJ4LzP3jWisRoqaozzYy.png', 'uploads/products/flash_deal/6ixa3h05Ww1oL0CT1bXJTliELIBv5lnn0lumPcgM.png', 'youtube', NULL, '32gb memory card', NULL, 950.00, 380.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'ClouDisk-32GB-Memory-Card-1QUFM', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-20 10:46:38', '2021-12-24 05:16:22'),
(119, 'SanDisk 64Gb Pendrive', 'admin', 12, 11, 4, NULL, NULL, '[\"uploads\\/products\\/photos\\/FUtPWw0FWFBKYVIcN7kEYLPHpwP4jDdEvMTMhvyj.png\"]', 'uploads/products/thumbnail/Fs8kz0hpk3f9rxveWFwHz8UrE8akw1HECjXs2jiC.png', 'uploads/products/featured/SvVdHRelkKMnFSs8VG3yd2Cq39SIf11aONeQK3jN.png', 'uploads/products/flash_deal/3MUcOs1yzhtc0ty2JgjIQBdnqgERb6DouFVNiUAM.png', 'youtube', NULL, 'pendrive,64gb pendrive', NULL, 1450.00, 850.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 3, 'pc', 450.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 2, NULL, NULL, NULL, NULL, 'SanDisk-64Gb-Pendrive-jqqPt', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-11-20 10:51:35', '2022-06-07 12:11:17'),
(120, 'MOON 15000mAh Powerbank', 'admin', 12, 11, 4, NULL, 55, '[\"uploads\\/products\\/photos\\/iIOAdCLI9M9rkjW4fCH0SKJ8vfr9KdtToXR2mqEo.png\"]', 'uploads/products/thumbnail/kkTkJmXrrTMx3mSEavprekLhfSFyPjr4dqEVzmrZ.png', 'uploads/products/featured/0JohjBobBDdxyzktMdRujoAtryYhV7OrjEfTWz4f.png', 'uploads/products/flash_deal/85IPxzsa9ght9Ox4aiMUzbqeWFhmm3oka9FVAFa6.png', 'youtube', NULL, 'powerbank, 15000mah pwerbank', NULL, 1500.00, 1000.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 10, 'Pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 0, NULL, NULL, NULL, NULL, 'MOON-15000mAh-Powerbank-5dOVA', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-12-07 06:48:50', '2021-12-24 05:16:19'),
(121, 'MOON 25000mAh Powerbank', 'admin', 12, 11, 4, NULL, 55, '[\"uploads\\/products\\/photos\\/Rls0KhmhCOkqckXgDn0qJXvzAw0E31IJadS35ooA.png\"]', 'uploads/products/thumbnail/VJJTocCV6tp4I9ZSzJM9j5PPBnCaZsokq1sKE7X9.png', 'uploads/products/featured/JysavdbSdnaORG027DhEolSQQOSdHWmVMa6nRVSN.png', 'uploads/products/flash_deal/9Du7YPC5PVCD89VkzwNddPctUcxE8kqum3pXpWFe.png', 'youtube', NULL, 'Powerbank,25000mAh Powerbank', NULL, 2500.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 1, 'pc', 400.00, 'amount', 0.00, 'amount', 'flat_rate', 50.00, 5, NULL, NULL, NULL, NULL, 'MOON-25000mAh-Powerbank-FmmSD', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2020-12-07 06:56:37', '2022-02-27 06:20:19'),
(122, 'Magic Silicon Gloves', 'admin', 12, 7, 68, 83, NULL, '[\"uploads\\/products\\/photos\\/jVgOIt3BWtSYACi9xiBDiLkZX51LSfbIMg27jK0G.jpeg\",\"uploads\\/products\\/photos\\/Rgx6crh1czLyzNxThIeVoaOzu2A5kKaeq5Z1aYyv.jpeg\"]', 'uploads/products/thumbnail/yLe8N4amxhiDBvYkGcfCiYlq1vcWX2TnlP88IGN1.jpeg', 'uploads/products/featured/xdulPI0dBU9w6w5hg3vMFahGL0AAsCaBq8Fs4gvE.jpeg', 'uploads/products/flash_deal/M9vWI24UNozSpYfjXJ8dHraC6lNSlmSa1TCgQ1uM.jpeg', 'youtube', NULL, 'gloves,silicon gloves,dish washing gloves,kada wala gloves', NULL, 600.00, 200.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 99, 'pc', 250.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, NULL, NULL, 'Magic-Silicon-Gloves-NyT2E', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-12-08 14:57:57', '2021-12-24 05:16:17'),
(123, 'Electric Rice Cooker', 'admin', 12, 7, 68, NULL, 55, '[\"uploads\\/products\\/photos\\/CqNWAEtd6huT7U6T0IziWUUsRkdCKjT3eK6oMER6.jpeg\"]', 'uploads/products/thumbnail/gDZXMHGqHhDmXXwpLPfWvHHdJjhgwDYFVmM2ql0O.jpeg', 'uploads/products/featured/g8prrUXbnOrwHaSSik6429BupTUMiJ5EG9rH29gY.jpeg', 'uploads/products/flash_deal/NOFn93CjFyySQnICdk3dtZ7CdqqxEeqidc41OWo0.jpeg', 'youtube', NULL, 'Rice Cooker ,Electric Rice Cooker', NULL, 2250.00, 0.00, 1, '[]', '[]', '[]', NULL, 1, 1, 1, 0, 'pc', 300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, NULL, NULL, 'Electric-Rice-Cooker-JbpFm', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2020-12-09 07:01:31', '2021-12-24 05:16:15'),
(137, 'tes new', 'admin', 12, 3, 33, 11, 3, '[\"uploads\\/products\\/photos\\/RCyPv4omppacQLnTREBtPqMbgIL5WtO7CrKKSyCa.png\"]', 'uploads/products/thumbnail/K4X3FxLFY7CGtfxH2lCJBouRWWryXqgojMAgMv4f.png', 'uploads/products/featured/KHSLBnvATaxT3czIleZlrj0TPxq2OUYtdeieWdFR.png', 'uploads/products/flash_deal/DCUX3qWyjtLyCKDx4WPJjf6HCG5F5jwSWY5VNpqT.png', 'youtube', NULL, '', 'teafaf', 22.00, 20.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 12, 'pc', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 0.00, 0, 'daff', 'afadfa', 'uploads/products/meta/InifBdPgeEyXLBFohKapSUHSzVLPqXiDXXmIABfp.png', NULL, 'tes-new-mnUrE', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2021-08-20 14:55:22', '2021-12-24 05:16:10'),
(138, '32\" Led Tv', 'admin', 12, 16, 82, 92, 63, '[\"uploads\\/products\\/photos\\/yQygPF5tzPZVp8CN2auo3o0FlSOxyqV0OdlWAPMH.jpeg\"]', 'uploads/products/thumbnail/jX3cQS62ODKIG9D4QvZ9LzRi5VJcM1PB6gNYx8LP.jpeg', 'uploads/products/featured/7wWoM1wzgxvk80PdPNvf6updukAcHxStRG3ppwfH.jpeg', 'uploads/products/flash_deal/rSD1bGocxPixEz5RAcrSr9odLK0PgRQ2YNuun3mN.jpeg', 'youtube', NULL, '', 'Led Tv A+ Panle', 24000.00, 16800.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 100, 'Pic', 20.00, 'percent', 0.00, 'amount', 'free', 0.00, 0, 'V-Trek Led Tv 32\"', NULL, 'uploads/products/meta/E0r5s4DDPVPAI8l6i7WzmLqGkrsnVoveuv27Af4B.jpeg', NULL, '32-Led-Tv-cNhBP', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2021-08-20 15:01:50', '2021-12-24 05:16:07'),
(139, '32\" Led Tv', 'admin', 12, 16, 82, NULL, 63, '[\"uploads\\/products\\/photos\\/fSeSADNg7cotTipuZbtFtfD4e5hOzijuq1WIG0O5.jpg\",\"uploads\\/products\\/photos\\/SyRYxbeBifhPErjbzBhjEpqBvKJ4v0Q2IQCG7WkZ.jpg\"]', 'uploads/products/thumbnail/CrAtQwhvNR6ys8e5oI1ZGzge0Dzo7jIQGaHCvKu5.jpg', 'uploads/products/featured/KOkonW5DdJoMfNZsQ908cJ4OmZ7z2nZBjRC80LHJ.jpg', 'uploads/products/flash_deal/OIx9BwvzZN3nuibebOUGzbb6NRD83MWx00ZzE8o7.jpg', 'youtube', NULL, 'V-trek Led Tv', 'Led Tv A+ Panle', 24000.00, 16800.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 100, 'Pic', 20.00, 'percent', 0.00, 'amount', 'free', 0.00, 0, NULL, NULL, 'uploads/products/meta/eso4klxgQOYOcjDQswocgc0L34Ex6pWZGRcrmZ2V.jpg', NULL, '32-Led-Tv-X4irY', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2021-08-20 15:05:49', '2022-03-23 05:48:25'),
(196, 'Bandanaa t-shirt', 'seller', 353, 4, 29, NULL, NULL, '[\"uploads\\/products\\/photos\\/ybritEyAQPAGFiJJ65JC56OQkBkLxpk3fc0a2Uu6.jpg\",\"uploads\\/products\\/photos\\/CNKv9MGndni9cLUDE1PJVt4pUX433A7XW7IHMCbh.png\"]', 'uploads/products/thumbnail/3NJgCqDthFGwFdSV1mLqIFLbyVj0dZpdbXI1YyCO.png', 'uploads/products/featured/FfB7mly64egPUGr4zk0PYC0KoAA4AbwwvoZAKaHP.png', 'uploads/products/flash_deal/GsXn1Cb892c83KVEPHb6gKdli4044jORKQfYrwKN.png', 'youtube', NULL, 'T-shirt,Half shirt', 'Summer T-shirt black &amp; white', 1000.00, 1000.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"L\",\"xL\",\"xll\",\"m\"]}]', '[\"#000000\"]', NULL, 1, 1, 1, 0, '5', 10.00, 'percent', 1.00, 'percent', 'free', 0.00, 1, 'Clothing & fashion', 'Black and white t-shirt', 'uploads/products/meta/bgXLR1TZMAsuxbRfCYltnzn2EXGbC2lJ1drZXaW7.png', NULL, 'Bandanaa-t-shirt-2KJRx', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-03-30 06:50:20', '2022-06-02 10:34:09'),
(199, 'School bag', 'seller', 353, 4, 27, NULL, NULL, '[\"uploads\\/products\\/photos\\/ahGG6Ao112t9ikgVwGOz1shopiwgP1QwxfjEeWLa.jpg\"]', 'uploads/products/thumbnail/cToWeyVcf0RSOFJBNoWnRj8gAvXkobMk9LRukeua.jpg', 'uploads/products/featured/LvRFC0VH5crFhnXWa3hd640wnTZbG5pNmFa3jm3Q.jpg', NULL, 'youtube', NULL, 'SCHOOL BAG', '<p>Beautiful bag for girls \r\nColour pink ,blue,purple and more</p><p><br></p><p>Free delivery inside&nbsp;&nbsp;Kathmandu valley</p>', 1600.00, 1500.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 4, '4', 5.00, 'percent', 1.00, 'percent', 'free', 0.00, 0, 'School bag for girls', 'Beautiful bag for girls \r\nColours pink ,blue,purple and more', 'uploads/products/meta/T4rP8MmJ4yIFPLAkHOk85A2zQzL49W1EDSyxO0Tz.jpg', NULL, 'School-bag-owpSt', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-03-30 13:50:59', '2022-03-31 05:05:27'),
(200, 'good luck', 'seller', 366, 1, 77, NULL, NULL, '[\"uploads\\/products\\/photos\\/B4VpCSENR2FS1aRXcosS96KoscvCDZwBgKLpXYSo.jpg\"]', 'uploads/products/thumbnail/LMfK3LtCFWwV38yM5OiWZijC3sEebpg2KOHEagsT.jpg', 'uploads/products/featured/AhxTNsTua240J3RcvlhNM0LdgXC96R4V66ytqXIh.jpg', 'uploads/products/flash_deal/Ndc5xqmo9mCo2NPSNWMGNZqUu4HrqEsTmYFTAEqA.jpg', 'youtube', NULL, '2022/03/15', 'good rice', 1700.00, 1700.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"25kg\"]}]', '[\"#FAEBD7\"]', NULL, 1, 1, 1, 1, '1', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'cooking', 'cooking rice', 'uploads/products/meta/Xwmj4JWJbbc562vw7s9CxLIlI2JR6HgtCghgs7uk.jpg', 'uploads/products/pdf/kLXLbeqg1C2fFTSMQB200LvbIvGyKZ7VlXjWx0cr.jpg', 'good-luck-OAQ12', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-03 06:59:58', '2022-04-03 12:23:55'),
(201, 'Rani Haar', 'seller', 368, 19, 87, NULL, 26, '[\"uploads\\/products\\/photos\\/quc4QhEjJdGdYbLWbCqQs3dcmskQXWIk7MlFolE9.jpg\"]', 'uploads/products/thumbnail/dawVIzqjaIu75mORKjGGj1j4uN24ZcwGOI1AqbZI.jpg', NULL, NULL, 'youtube', NULL, '2078/12/20', 'Best Jewellery Product', 330000.00, 330000.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 3, '3', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'Jewellery', 'Best Jewelley Product', 'uploads/products/meta/QqkwAMwdm17jJPVL7nzrEZP99nixT36erLZIpork.jpg', NULL, 'Rani-Haar-gCHyc', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-03 13:57:24', '2022-04-03 13:58:31'),
(202, 'rice flakes', 'seller', 366, 1, 77, NULL, 98, '[\"uploads\\/products\\/photos\\/waO2Qdo4xeAiKR5xH58nF7Oc6kPr7qKa4nyaH0iA.jpg\"]', 'uploads/products/thumbnail/BJGcPOLUqdN3EI2JzlNNRQR6v1RV9XBzKR86CA9J.jpg', 'uploads/products/featured/tXvyi5WA5Dah3bEHVmttkjyOntw8X645mTBDjUix.jpg', 'uploads/products/flash_deal/wazwET7FcAhZneZLL38iCo2OHJL1fyi3c5OC5l1d.jpg', 'youtube', NULL, '2022/03/15', 'good rice flakes', 110.00, 110.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"1kg\"]}]', '[\"#FAEBD7\"]', NULL, 1, 1, 1, 0, '5', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'Grocery', 'good rice flakes', 'uploads/products/meta/WWT4RaBg4alazMjOh36sZ2LOm53mnMEkC4i5sHR8.jpg', 'uploads/products/pdf/IFJQ6m52XXg8d5rO1drtrJ4gyhKlPi6yffgdBR4w.jpg', 'rice-flakes-5po22', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-04 05:54:02', '2022-04-06 06:50:41'),
(204, 'Neutrogena Oil Free Moisture with Sunscreen Spf 35', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/APLk0rlnswFlVNaCpHxIXm88mtxIDMycCYGXNtUC.jpg\",\"uploads\\/products\\/photos\\/qEO3kht5xovbZG76P7T5zR8330a7YXnQoS1ojg24.jpg\",\"uploads\\/products\\/photos\\/UmK6MDt0oQVpBAh8tDmTov1PXWtuc3oVnyDPS4yP.jpg\",\"uploads\\/products\\/photos\\/7xY3ue1HFLjyUs8e6MFQ8fpcQAvzDGXChw2eJK9o.jpg\"]', 'uploads/products/thumbnail/EG1SKBIYY6zLUeDW9WBKiXi9SUUk2K7qa1CccXNU.jpg', 'uploads/products/featured/AtFgdF7LpTeZXLK6hgXfYFnJNOQPu1MFcGappa4g.jpg', 'uploads/products/flash_deal/jfEk8cZsoD2WeDqGe1ChCbuA1Ug1nihLQRRD7hAo.jpg', 'youtube', NULL, 'Neutrogena,Moisture,Sunscreen', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Oil Free Daily Long lasting Facial Moisturizer and neck cream-oil free moisturizer won\'t clog pores with SPF 35 sunscreen, glycerin. This moisturizer is hypollaergenic and non-comedogenic while also being fragrance-free and oil-free.</span>', 1991.15, 1991.15, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"73ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Oil Free Moisture with Sunscreen Spf 35', 'Neutrogena Oil Free Daily Long lasting Facial Moisturizer and neck cream-oil free moisturizer won\'t clog pores with SPF 35 sunscreen, glycerin. This moisturizer is hypollaergenic and non-comedogenic while also being fragrance-free and oil-free.', 'uploads/products/meta/omPS0XYCRyXJWoW2yfPAHhnp8SHbUkshp5JDdHIe.jpg', NULL, 'Neutrogena-Oil-Free-Moisture-with-Sunscreen-Spf-35-GtXOd', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-06 06:32:13', '2022-04-24 08:46:31'),
(205, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen spf 45', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/7ImtWLCepbry4k924fRUnmpgDNgIYWh3vvS2S8Py.jpg\",\"uploads\\/products\\/photos\\/ZKkGRm6rpP5bZLpSn8KnPXKJbhPVHg8LsndNhXf2.jpg\"]', 'uploads/products/thumbnail/AUXmz9h4V6XSEy5AjU3twQViMAPiZbshsEr9XG3O.jpg', 'uploads/products/featured/ZQQ9ImWOoP4eFradSfeuttq2CiY9ZmT1pdR0trlt.jpg', 'uploads/products/flash_deal/RCa5HZ8Ft0ycXkZzzyDPEGGYWdyGXJBYhTuH9lbF.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', 'Neutrogena Ultra Sheer Dry Touch Sunscreen SPF 45 goes on easily and absorbs quickly for an invisible light-weight feel on your skin. It formulated with helloplex technology . It offers superior broad spectrum protection from aging UVA rays and burning UVB rays.', 1902.65, 1902.65, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"88ml\"]}]', '[]', NULL, 1, 0, 0, 2, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen spf 45', 'Neutrogena Ultra Sheer Dry Touch Sunscreen SPF 45 goes on easily and absorbs quickly for an invisible light-weight feel on your skin. It formulated with helloplex technology . It offers superior broad spectrum protection from aging UVA rays and burning UVB rays.', 'uploads/products/meta/rwESzfBC6raD1BKdy0KktAK8rBVVsG2yfiVnQFBV.jpg', NULL, 'Neutrogena-Ultra-Sheer-Dry---Touch-Sunscreen-spf-45-O2KYf', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-07 06:21:26', '2022-05-26 05:24:33'),
(206, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen spf 55', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/9OQ89NiKGq41pRlyH4mWRHvEVe9u5NyOrutCSiz8.jpg\",\"uploads\\/products\\/photos\\/NlmWEM21q41fTSLesVEuqjehDD7aB8LDRSTydYxL.jpg\"]', 'uploads/products/thumbnail/ml6j91SvBxMXjSuh4egM24vH4qVgCXLtBWo4aDTa.jpg', 'uploads/products/featured/QdiMpMlvbb1C6zQ5riD0dkA7Fw6pvgkvHtBF5jch.jpg', 'uploads/products/flash_deal/HXcSDWgMPuUcWZpukaV6tJ4bucLS4Exbipx9iwGW.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', '<span style=\"color: rgb(130, 130, 130); font-family: Rubik, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Ultra Sheer Dry Touch SPF 55 Ultra Sheer provides powerful sun protection. It is light-weighted on the skin. It decreases the risk of skin cancer and early skin aging caused by the sun. It helps to prevent from sun.</span><br>', 1902.65, 1902.65, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"88ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen spf 55', 'Neutrogena Ultra Sheer Dry Touch SPF 55 Ultra Sheer provides powerful sun protection. It is light-weighted on the skin. It decreases the risk of skin cancer and early skin aging caused by the sun. It helps to prevent from sun.', 'uploads/products/meta/0Zvs8rYNmITMu1vXkiGAI7UXS88BMHPmvrrTwR5t.jpg', NULL, 'Neutrogena-Ultra-Sheer-Dry---Touch-Sunscreen-spf-55-TatNT', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-07 06:32:03', '2022-04-24 08:44:44'),
(207, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen Spf 70', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/WFJ9YVVSnoWQA1IBUFC0PMNGJW0TEXuz3mGebWFs.jpg\",\"uploads\\/products\\/photos\\/LdpHmBdvBxnamLYDI0qmSOTdiueKKl9ZxE4ZEUmp.jpg\"]', 'uploads/products/thumbnail/qL437gToMzBZ3c55fpmnszEna2nJQt5Syc5vBkwB.jpg', 'uploads/products/featured/S3f4n48hcHq6FIWuQYop2pfxWFX3p3245yC758wb.jpg', 'uploads/products/flash_deal/irZFtZujIuz5hjwoITgMP3HsEPYbM3ge90BlSAYk.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', '<span style=\"color: rgb(130, 130, 130); font-family: Rubik, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena ultra-sheer dry touch SPF 70 goes on easily and absorbs quickly for an individual, light- weight feel on your skin. Formulated with helioplex technology, it offers superior broad spectrum protection from aging UVB rays and burning UVB rays. It is non- comedogenic (won’t clog pores), PABA-free, lightweight, non-greasy feel and fast absorbing.</span><br>', 2035.39, 2035.39, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"88ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen Spf 70', 'Neutrogena ultra-sheer dry touch SPF 70 goes on easily and absorbs quickly for an individual, light- weight feel on your skin. Formulated with helioplex technology, it offers superior broad spectrum protection from aging UVB rays and burning UVB rays. It is non- comedogenic (won’t clog pores), PABA-free, lightweight, non-greasy feel and fast absorbing.', 'uploads/products/meta/z2yLisIX5JDBcR8v5eObPePqhymCMtMoANfaaB1O.jpg', NULL, 'Neutrogena-Ultra-Sheer-Dry---Touch-Sunscreen-Spf-70-OSlP9', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-07 06:43:11', '2022-04-24 08:44:05'),
(210, 'Neutrogena Oil Free Acne Moisturizer (Pink Grapefruit)', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/zhCQZ0IOLWSMYr2mMMZ4bh2fhZQafRUfTundK2mM.jpg\",\"uploads\\/products\\/photos\\/SZ9UOlnEdaPGrstrwGrfxwLCe8SaBeYwPkZ9Zyyb.jpg\"]', 'uploads/products/thumbnail/Lt9m7IblhnsVb7SbzK4ry47wXaj8UjuE6SO89p0g.jpg', 'uploads/products/featured/uFPDkDZk0VvaFFwijfNvbEiRfu89eSNnbHQTxwbN.jpg', 'uploads/products/flash_deal/XDA0YxnpAGfyBcIXwTtrZFkIU4rLtnPPj6qzA692.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Oil Free Acne Moisturizer Pink Grape Fruit is daily lotion which moisturizes and clears breakouts, with a light grapefruit scent, for clearer, soften skin.</span><br>', 1902.65, 1902.65, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"118ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Hydro Boost Water Gel Lotion Spf 30', 'Neutrogena Oil Free Acne Moisturizer Pink Grape Fruit is daily lotion which moisturizes and clears breakouts, with a light grapefruit scent, for clearer, soften skin.', 'uploads/products/meta/74jabWctUsUhbYf8zgTwQDXpCL5wGmuPCra7lZof.jpg', NULL, 'Neutrogena-Oil-Free-Acne-Moisturizer-Pink-Grapefruit-J9HaB', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-07 12:16:32', '2022-04-24 08:43:20'),
(211, 'Neutrogena Ultra Gentle Daily Cleanser (Foaming Formula)', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/v3mclzizFmtbE7I7RsFGziOzUjnTR6tRMMrp0Rk3.jpg\",\"uploads\\/products\\/photos\\/xsjgepElObrfXNQT78bQsPTT3NBQeeRksNK5EKAl.jpg\"]', 'uploads/products/thumbnail/ehcdqYWyewnoR9aDdRx0zt1HPwSQ7uO7SgLNIPeN.jpg', 'uploads/products/featured/MbmSeavrDZYCNIagHESXqlZCmnwjv4t1rWE5mrYe.jpg', 'uploads/products/flash_deal/ipJBIEEdIEJG3TefEMbmFMIVaYoY8K7M7jm5yHTv.jpg', 'youtube', NULL, 'Neutrogena,Cleanser', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">This cleanser is an effective sensitive skin cleanser for acne-prone skin. It removes excess oil, dirt and makeup without over-drying or irritating skin. It is soap-free. It cleans skin without over-drying.</span><br>', 2522.12, 2522.12, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"354ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, NULL, 'This cleanser is an effective sensitive skin cleanser for acne-prone skin. It removes excess oil, dirt and makeup without over-drying or irritating skin. It is soap-free. It cleans skin without over-drying.', 'uploads/products/meta/JTpDEmJ3UrkuaOCKVbWeYi40RLcZxnHGvqHtzsyK.jpg', NULL, 'Neutrogena-Ultra-Gentle-Daily-Cleanser-Foaming-Formula-SiF1w', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-08 17:03:49', '2022-04-24 08:42:39'),
(212, 'Neutrogena Hydro Boost Exfoliating Cleanser', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/q4Vysyoo6cgzkDgn6vZsv4o621zVIwvjHsKRTPzL.jpg\",\"uploads\\/products\\/photos\\/UuO6ryIabv3C8ReYCBgtRLW8wb02FJUN36KofoA0.jpg\"]', 'uploads/products/thumbnail/5NGMrwT9ZvM6xze8E6k4MflGHA8bKUTJgK5JPp4i.jpg', 'uploads/products/featured/vNus1FwsBDePUTsD7sEchYVrQK4WnpKHFVMdER5C.jpg', 'uploads/products/flash_deal/v3dVjbpf82vOrDBxx4zs59zNQcypPqe6l0NEh0aQ.jpg', 'youtube', NULL, 'Neutrogena,Cleanser', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Hydro Boost exfoliating cleanser lightweight gel-cream cleanser with naturally-derived skin smoothers effectively removes dirt, oil and dry surface skin. Formulated with hyaluronic acid it\'s clinically proven to increase skin\'s hydration level and lock it in-for instantly soft, supple and refreshed skin. Gentle enough for daily use. It helps to cleanses away dirt, oil, grime, impurities and bacteria.</span><br>', 1902.65, 1902.65, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"141gram\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Hydro Boost Exfoliating Cleanser', 'Neutrogena Hydro Boost exfoliating cleanser lightweight gel-cream cleanser with naturally-derived skin smoothers effectively removes dirt, oil and dry surface skin. Formulated with hyaluronic acid it\'s clinically proven to increase skin\'s hydration level and lock it in-for instantly soft, supple and refreshed skin. Gentle enough for daily use. It helps to cleanses away dirt, oil, grime, impurities and bacteria.', 'uploads/products/meta/TK9CTyKGVccbQp52SXWHL928RiU7Jx4v5gyYS8gj.jpg', NULL, 'Neutrogena-Hydro-Boost-Exfoliating-Cleanser-r91s9', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-09 04:29:41', '2022-04-24 08:42:06'),
(213, 'Neutrogena Hydro Boost Hydrating Cleansing Gel', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/YSgGaXYejg8cuy7tr4k3MmwTmyfVY6TtxHIlRXA6.jpg\",\"uploads\\/products\\/photos\\/il7bmJz7SAWVXxHTYPDfuHeXAardVdF7xRPdCbsf.jpg\"]', 'uploads/products/thumbnail/Q0ZbIu5l7dYaw0idPe6ViDcnAR277E7uaLcQZdNM.jpg', 'uploads/products/featured/AxxhX9oxKeESOJ1YnZIZkbBTVEBTNXM5YpEXxB3z.jpg', 'uploads/products/flash_deal/MeXz5q5udr7YK9BsJcys6a4K4IVhkrHKhMKEH0Ac.jpg', 'youtube', NULL, 'Neutrogena,Cleanser', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Hydro Boost Hydrating Cleansing Gel lightweight gel transforms into a silky lather that effectively lifts away dirt, oil, makeup. With hyaluronic acid, the formula is clinically proven to increase skin\'s hydrating level and lock it in, leaving skin refreshingly clean and touchably supple, every time you cleanse.</span><br>', 2079.64, 2079.64, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"170gram\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Hydro Boost Hydrating Cleansing Gel', 'Neutrogena Hydro Boost Hydrating Cleansing Gel lightweight gel transforms into a silky lather that effectively lifts away dirt, oil, makeup. With hyaluronic acid, the formula is clinically proven to increase skin\'s hydrating level and lock it in, leaving skin refreshingly clean and touchably supple, every time you cleanse.', 'uploads/products/meta/mpioAToAoas5NCKE6KwIoQFUTS3wJ0zTqKvdk8ZI.jpg', NULL, 'Neutrogena-Hydro-Boost-Hydrating-Cleansing-Gel-cmN7e', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-09 06:56:34', '2022-04-24 08:41:26'),
(214, 'Neutrogena Soothing Clear Turmeric Oil-Free Gel Moisturizer', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/EAGPpE9dMZnnp42cV03YjPfGW19DIlLu0bGCQhEy.jpg\",\"uploads\\/products\\/photos\\/VwyVin1QKUJHGB10OIz89etbEk0yd82Sgoh4LtNE.jpg\"]', 'uploads/products/thumbnail/w2wgV8jFUnoq3nTxUqIAbwbLQ1NoHKIPLXPhaHpA.jpg', 'uploads/products/featured/QUVqQZz9gr9Y6drkKLjScLIYvpcJQyEnh0iY0WK8.jpg', 'uploads/products/flash_deal/gdpFWTrDEX4WYJefyfUVMV1Cr0DUF2O0IJY2szkF.jpg', 'youtube', NULL, 'Neutrogena,Moisturizer,Turmeric', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">It helps to calm your skin with this turmeric enriched water gel moisturizer as well as it also leaves skin feeling nourished and comforted for healthy-looking and hydrated skin. This lightweight oil free moisturizer also leaves stressed acne-prone skin feeling replenished and also it is ideal for combination or dehydration dry skin care.</span><br>', 2168.14, 2168.14, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"88ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Soothing Clear Turmeric Oil-Free Gel Moisturizer', 'It helps to calm your skin with this turmeric enriched water gel moisturizer as well as it also leaves skin feeling nourished and comforted for healthy-looking and hydrated skin. This lightweight oil free moisturizer also leaves stressed acne-prone skin feeling replenished and also it is ideal for combination or dehydration dry skin care.', 'uploads/products/meta/rWUHJOj1GsUmqkXAVXQfjVcZUBaRgiBb0mFFOS9h.jpg', NULL, 'Neutrogena-Soothing-Clear-Turmeric-Oil-Free-Gel-Moisturizer-NyASl', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-09 08:30:15', '2022-04-24 08:40:47'),
(215, 'Neutrogena Liquid Facial Cleansing Formula', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/Bc9Affca86sURvLZP6dd5TmdLIP4DQar0nnl71vR.jpg\",\"uploads\\/products\\/photos\\/V0d8mQBS1p3N5ERmmB8QjEJXpSo8NS5Rqvoukuz7.jpg\",\"uploads\\/products\\/photos\\/jPG1Q2TI8Tg4AEFMDprIb1Mhy6uMb3reznC6VJqj.jpg\",\"uploads\\/products\\/photos\\/418sUgIav1QpGxpIepdguf6ikLGWddi1ZwC2jER3.jpg\"]', 'uploads/products/thumbnail/2GK8P9k5CWltztGDzxFNqrV5NaM5TJEbSjGCF37R.jpg', 'uploads/products/featured/IRUIf6wFxTn6C2pWLdBivFkqoHPYNfd35qosOl89.jpg', 'uploads/products/flash_deal/mNtrVhKVUDoAqBuUsxzWn4C467aA4nVepAcePuPk.jpg', 'youtube', NULL, 'Neutrogena,Cleanser', '<span style=\"color: rgb(34, 34, 34); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Liquid is pure and gentle facial cleansing for cleaner, clearer, and healthier-looking skin. This glycerin-rich, daily facial cleanser contains no harsh detergents. It removes excess oil from your face and then rinses clean-without leaving any pore-clogging residue.</span><br>', 2522.12, 2522.13, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"236ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Liquid Facial Cleansing Formula', 'Neutrogena Liquid is pure and gentle facial cleansing for cleaner, clearer, and healthier-looking skin. This glycerin-rich, daily facial cleanser contains no harsh detergents. It removes excess oil from your face and then rinses clean-without leaving any pore-clogging residue.', 'uploads/products/meta/nvoksKb7smkKYQH7KL1CfUE82Uucne9yZ4HkKDUg.jpg', NULL, 'Neutrogena-Liquid-Facial-Cleansing-Formula-LbZ1A', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-09 12:11:10', '2022-04-24 08:40:11'),
(216, 'Neutrogena Clear Body Wash (Pink Grape Fruit)', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/jaXObfTJJpLXVs0fZMD7CeGMe9OSU9h5Unn2uYhV.jpg\",\"uploads\\/products\\/photos\\/FJr0HDPNyY5ot989XJFujDLf5HKx3gchkh7eWSQh.jpg\"]', 'uploads/products/thumbnail/8IKjFlxhMx7EKBb54amc0K4mrnivSeUTIamqjPnj.jpg', 'uploads/products/featured/g1c0JT8pOnzpJyem8DfZGcjUfooaMb3uhYiZGoD6.jpg', 'uploads/products/flash_deal/y3paVkPRLM3PX8b0mICTD1nQbraUcREcquxCkzB6.jpg', 'youtube', NULL, 'Neutrogena,Body Wash', '<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-family: Poppins, sans-serif; font-size: 14px; line-height: 1.7; font-weight: 400; color: rgb(130, 130, 130); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(60, 64, 67);\">The refreshing scent of&nbsp;</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(82, 86, 90);\">grapefruit</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(60, 64, 67);\">&nbsp;will energize you while you shower or bathe and treat, and help prevent,&nbsp;</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(82, 86, 90);\">body</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(60, 64, 67);\">&nbsp;breakouts for cleaner, clearer skin from head to toe using&nbsp;</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(82, 86, 90);\">Neutrogena Body Clear Body Wash Pink Grapefruit</span><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(60, 64, 67);\">.</span></p><p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-family: Poppins, sans-serif; font-size: 14px; line-height: 1.7; font-weight: 400; color: rgb(130, 130, 130); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span source=\"\" sans=\"\" pro\";=\"\" font-size:=\"\" 14px;\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; color: rgb(60, 64, 67);\">Active Ingredient: Salicylic Acid 2%.. . Purpose: Acne Treatment.</span></p><br>', 2256.63, 2256.63, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"250ml\"]}]', '[]', NULL, 1, 1, 1, 2, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Clear Body Wash (Pink Grape Fruit)', 'The refreshing scent of grapefruit will energize you while you shower or bathe and treat, and help prevent, body breakouts for cleaner, clearer skin from head to toe using Neutrogena Body Clear Body Wash Pink Grapefruit.\r\n\r\nActive Ingredient: Salicylic Acid 2%.. . Purpose: Acne Treatment.', 'uploads/products/meta/2GyLFb5kU8SdFuwsnTuIFfmpahjspNLJcRlmHrFT.jpg', NULL, 'Neutrogena-Clear-Body-Wash-Pink-Grape-Fruit-uiNfk', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-10 05:55:16', '2022-04-24 08:39:21'),
(217, 'Neutrogena Clear Face Break Out Free Oil Free Sunscreen Broad Spectrum SPF 50', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/Cmh33Dkc4afd1W4kVWyuub3Glij3Ei5x5Q9C31Xb.jpg\",\"uploads\\/products\\/photos\\/Xj3D7qmZraAX4Rkgg4BlqPnM5qO99mLOPUBRMGbA.jpg\"]', 'uploads/products/thumbnail/9h5bPE7ebj5VCWkufHf1DzrhRDLm0aLKINcYy847.jpg', 'uploads/products/featured/9qIUlvYwOvHMgAB8iZYP0iGkQoZBajyTIS5yuSiu.jpg', 'uploads/products/flash_deal/fWeza4ogJNr65LR3tH3QGLDHUGjbQywV1KM7aSh0.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', '<p>Our best-selling, oil-free sunscreen for acne-prone skin is specially formulated with Helioplex® Technology. It provides superior broad spectrum UVA/UVB protection, without causing breakouts. Perfect for the face and body, this liquid sunscreen lotion has a water-light texture that leaves a weightless, matte finish so skin can breathe.\r\n</p><ul><li>\r\nNon-comedogenic (won\'t clog pores)\r\n</li><li>Fragrance-free sunscreen\r\n</li><li>Water resistant (80 minutes)\r\n</li><li>Broad Spectrum 50 UVA/UVB\r\n</li><li>Oil-free</li></ul>', 2256.63, 2256.63, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"88ml\"]}]', '[]', NULL, 1, 0, 0, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Clear Face Break Out Free Oil Free Sunscreen Broad Spectrum SPF 50', 'Our best-selling, oil-free sunscreen for acne-prone skin is specially formulated with Helioplex® Technology. It provides superior broad spectrum UVA/UVB protection, without causing breakouts. Perfect for the face and body, this liquid sunscreen lotion has a water-light texture that leaves a weightless, matte finish so skin can breathe.\r\n\r\nNon-comedogenic (won\'t clog pores)\r\nFragrance-free sunscreen\r\nWater resistant (80 minutes)\r\nBroad Spectrum 50 UVA/UVB\r\nOil-free', 'uploads/products/meta/YtRWlm2gcDgdhAzVvUlYh12pNYYnzXc6DhdRP7g3.jpg', NULL, 'Neutrogena-Clear-Face-Break-Out-Free-Oil-Free-Sunscreen-Broad-Spectrum-SPF-50-ae4ho', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-10 08:29:40', '2022-05-27 13:10:51'),
(218, 'Neutrogena Sport Face Oil-Free Sunscreen Broad Spectrum SPF 70+', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/uERQ9zrLkJDVX3HNtxTjB9JKZd66DV56kDb3EuQw.jpg\",\"uploads\\/products\\/photos\\/X8EDC090YpRIViYr8miUrz6I3acjJGo0XUm11WYa.jpg\"]', 'uploads/products/thumbnail/s747KWsjsXeiQYeqXpxH4lgMRr5K3TR2Vpb9jTBr.jpg', 'uploads/products/featured/GxSuSH6VK4A4AQa6adWRqmqy1VK3L8xLOj03CwS5.jpg', 'uploads/products/flash_deal/t20gZaEwvHzBz8ym8BtIZ5dC55WI10QQ3GL81Are.jpg', 'youtube', NULL, 'Neutrogena,Sunscreen', '<p>Our sport face lotion sunscreen formula harnesses the power of Helioplex® Technology to provide superior broad-spectrum UVA/UVB protection from the sun. It also resists water (up to 80 minutes), rubbing, sweat and wiping so you can remain active, without the worry of a sunburn.\r\n</p><ul><li>\r\nNon-comedogenic (won\'t clog pores)\r\n</li><li>Oil-free\r\n</li><li>PABA-free\r\n</li><li>Sweat-resistant/water resistant (80 minutes)</li></ul>', 1902.65, 1902.65, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"73ml\"]}]', '[]', NULL, 1, 0, 0, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Sport Face Oil-Free Sunscreen Broad Spectrum SPF 70+', 'Our sport face lotion sunscreen formula harnesses the power of Helioplex® Technology to provide superior broad-spectrum UVA/UVB protection from the sun. It also resists water (up to 80 minutes), rubbing, sweat and wiping so you can remain active, without the worry of a sunburn.\r\n\r\nNon-comedogenic (won\'t clog pores)\r\nOil-free\r\nPABA-free\r\nSweat-resistant/water resistant (80 minutes)', 'uploads/products/meta/BSGxtHDpUztE3HPYTdKnhMUFpDTx4ggSrxYQMWMl.jpg', NULL, 'Neutrogena-Sport-Face-Oil-Free-Sunscreen-Broad-Spectrum-SPF-70-PPmoG', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-10 08:37:43', '2022-05-26 05:24:49');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(220, 'Neutrogena Skin Clearing Mineral Powder (Soft Beige 50)', 'seller', 370, 6, 3, 59, 103, '[\"uploads\\/products\\/photos\\/ngMwgAMjAxJxX0nbzcsN0gIJ2dDoZbu5WQVppU1S.jpg\"]', 'uploads/products/thumbnail/hhDaK7a6VA35jpS5ujZO15qMaB3DgUXwZqU7tQYE.jpg', 'uploads/products/featured/IInOiVXvgIY3vkB5gUn3TlIofm9kL4S3T6yYaXjk.jpg', 'uploads/products/flash_deal/NgMRjL64HjquKhu2VMsoy0o44bycChnK1ihKSLSI.jpg', 'youtube', NULL, 'Neutrogena,Face,Powder', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Skin Clearing Mineral Powder is gentle, oil-free foundation powder for acne-prone skin works quickly to treat and help prevent breakouts. It\'s the first and only gentle powder to blend soothing minerals with micro clear technology that cuts through oil unclogs pores for fast result.</span><br>', 2168.14, 2168.14, 1, '[\"8\"]', '[{\"attribute_id\":\"8\",\"values\":[\"11gram\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', NULL, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Skin Clearing Mineral Powder (Soft Beige 50)', 'Neutrogena Skin Clearing Mineral Powder is gentle, oil-free foundation powder for acne-prone skin works quickly to treat and help prevent breakouts. It\'s the first and only gentle powder to blend soothing minerals with micro clear technology that cuts through oil unclogs pores for fast result.', 'uploads/products/meta/mTE7i8hgBnOquhUyo6CKG6NN734TpXIsg7XeQPGR.jpg', NULL, 'Neutrogena-Skin-Clearing-Mineral-Powder-Soft-Beige-50-PcU0m', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-11 10:20:49', '2022-04-24 08:36:15'),
(221, 'Neutrogena Skin Clearing Mineral Powder (Natural Ivory 20)', 'seller', 370, 6, 3, 59, 103, '[\"uploads\\/products\\/photos\\/dJm6q6em9ujMGJGWXUtLCVWQcLWNfTvYQiPEc3kD.jpg\"]', 'uploads/products/thumbnail/iuKNrpeOi92jSCFvBYNYde83FWQiYmUi6bhzd5NF.jpg', 'uploads/products/featured/O4IsBRQcvjCI0ybY9LLbwMSdhssPG5i0zNJz02XZ.jpg', 'uploads/products/flash_deal/eekxGLNFqsPXGWJR2LqQHpc6Kn6iUvklscDpZWPV.jpg', 'youtube', NULL, 'Neutrogena,Face,Powder', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Skin Clearing Mineral Powder is gentle, oil-free foundation powder for acne-prone skin works quickly to treat and help prevent breakouts. It\'s the first and only gentle powder to blend soothing minerals with micro clear technology that cuts through oil unclogs pores for fast result.</span><br>', 2168.14, 2168.14, 1, '[\"8\"]', '[{\"attribute_id\":\"8\",\"values\":[\"11gram\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Skin Clearing Mineral Powder (Natural Ivory 20)', 'Neutrogena Skin Clearing Mineral Powder is gentle, oil-free foundation powder for acne-prone skin works quickly to treat and help prevent breakouts. It\'s the first and only gentle powder to blend soothing minerals with micro clear technology that cuts through oil unclogs pores for fast result.', 'uploads/products/meta/owA5XbeVM8EGirZE29wgYFrWLEByOJRe4gBo4H1O.jpg', NULL, 'Neutrogena-Skin-Clearing-Mineral-Powder-Natural-Ivory-20-RvC3v', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-11 11:45:50', '2022-04-24 08:35:27'),
(222, 'Neutrogena Deep Clean Cream Cleanser', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/rUV5QuifDEwk9z6NY0fbYMSMO7Pcs5v0Wpq3rsXI.jpg\",\"uploads\\/products\\/photos\\/5JsSNKf1vDqYV4BTrmgCqMsMtTKX0RAoPwWzaz66.jpg\"]', 'uploads/products/thumbnail/OnbMFfJlpovS2JPNWoLoMqucvTaWj27UH0NoO28H.jpg', 'uploads/products/featured/33jS7ZC2dJKak8BXHLcBnCddQ65FIREuLWhjlQpm.jpg', 'uploads/products/flash_deal/a2nJvmDC2X82Ox9yUNeMtyx1xyKLaMAawRE3ZJtL.jpg', 'youtube', NULL, 'Neutrogena,Body Wash', '<span style=\"font-size: 16px; font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: rgb(34, 34, 34); color: rgb(34, 34, 34); font-family: arial, sans-serif; text-align: left; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%; background-color: rgb(255, 255, 255); float: none; display: inline !important;\">Neutrogena Deep Clean Cream Cleanser cleans so deeply and thoroughly that it improves the look and feel of skin. Skin is left refreshingly clean with no pore-clogging residue. Your complexion looks fresh and healthy. Feels smooth and soft from deeper, more thorough cleansing.</span><br>', 1902.65, 1902.65, 1, '[\"8\"]', '[{\"attribute_id\":\"8\",\"values\":[\"200g\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Deep Clean Cream Cleanser', 'Neutrogena Deep Clean Cream Cleanser cleans so deeply and thoroughly that it improves the look and feel of skin. Skin is left refreshingly clean with no pore-clogging residue. Your complexion looks fresh and healthy. Feels smooth and soft from deeper, more thorough cleansing.', 'uploads/products/meta/F8cQN3TJWKoxHmieL1iONEmJcoY0ClGsRohRvp9n.jpg', NULL, 'Neutrogena-Deep-Clean-Cream-Cleanser-GLw6Y', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-13 14:30:14', '2022-04-24 08:34:29'),
(223, 'Neutrogena Pore Refining Toner', 'seller', 370, 6, 2, 71, 103, '[\"uploads\\/products\\/photos\\/VdNewJVz8XtXRHSzyuCYukIOOmXSwyYStpADB5Vo.jpg\",\"uploads\\/products\\/photos\\/ax5iLs2dbAcLncuqJK1E44XRtfkHmIR9eS7blEHJ.jpg\"]', 'uploads/products/thumbnail/3EU5OiROyNkBcDPKBc0csnxsXCZR6NLC5SA7tUi8.jpg', 'uploads/products/featured/C08ZWJVV71SmSoQY8CSDeVemCI9815rg04TDyMs7.jpg', 'uploads/products/flash_deal/LEOyfiBkH93r98bA36GOwGngxifnmVPyOoqCCQaf.jpg', 'youtube', NULL, 'Neutrogena,Toner', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Neutrogena Pore Refining Toner&nbsp; visibly reduces the appearance of pores and refines skin to be clear, smooth and more even tones. It sweep away the dead surface skin and smoothes over rough, uneven patches.&nbsp;</span><br>', 1991.15, 1991.15, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"250ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, NULL, 'Neutrogena Pore Refining Toner  visibly reduces the appearance of pores and refines skin to be clear, smooth and more even tones. It sweep away the dead surface skin and smoothes over rough, uneven patches.', 'uploads/products/meta/CVxWrgfQum13TAEEpPw5JsFvR43eIfa2xuOoYwD6.jpg', NULL, 'Neutrogena-Pore-Refining-Toner-hyrWs', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-17 08:03:28', '2022-04-24 08:33:00'),
(224, 'coat', 'seller', 372, 4, 28, NULL, 63, '[\"uploads\\/products\\/photos\\/Ww5pyQfwr8mmrGbOkKU51iMrAUewT5ihfKaKrZGt.jpg\"]', 'uploads/products/thumbnail/hReiFgYM4EG2SLigPaHggeRGy52s93kRF8tnYtji.jpg', 'uploads/products/featured/R8oLzvZX16ky2QH2Pha898vIofVpl2EA4Z4yyjLk.jpg', NULL, 'youtube', NULL, '6000', 'Customizable white coat', 6500.00, 6000.00, 1, '[]', '[]', '[\"#FFFFFF\"]', NULL, 1, 1, 1, 0, '5', 5.00, 'percent', 1.00, 'percent', 'free', 0.00, 0, 'Men coat', 'White in colour', 'uploads/products/meta/b4hM1AmDOYY1uham2Bznc2qpbpQJXrCymv8u7GZU.jpg', NULL, 'coat-xau2d', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-18 07:50:09', '2022-04-18 07:55:33'),
(225, 'Neutrogena Body Clear Body Scrub', 'seller', 370, 6, 43, 284, 103, '[\"uploads\\/products\\/photos\\/8W3eoj2cnLQDMrfRj1WXOKoclT0Sz3hkTxEiV1NE.jpg\",\"uploads\\/products\\/photos\\/pwuCo7S0RWLMAHxI9mnYtoxWPlYYSh5CbFDTSesk.jpg\"]', 'uploads/products/thumbnail/b9IMBJIDp67D4LwnxtKSAgqKnbrlczfkO5FxlvZ8.jpg', 'uploads/products/featured/dd55UsNPRz8fE2ebDMBRFB90IrE16PCLbyJtY8SJ.jpg', 'uploads/products/flash_deal/4Go9IxBIRZvPpe4lEYVH9ERAGImnwIaSHcee9eku.jpg', 'youtube', NULL, 'Neutrogena,Body,Scrub', '<p>Fight body acne and get clearer skin with  best-selling oil-free acne body scrub. This effective yet gentle body scrub contains Salicylic Acid, a proven acne-fighting ingredient. It cleans deep into pores using gentle exfoliators, sweeping away dead skin cells to give you clear looking skin. And its foaming lather rinses completely without pore-clogging residue, so your skin is left feeling clean.</p><ul class=\"bulleted-list\" helveticaneueltstd=\"\" th\",=\"\" arial,=\"\" sans-serif;=\"\" letter-spacing:=\"\" 0.35px;=\"\" background-color:=\"\" rgb(246,=\"\" 246,=\"\" 246);\"=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 20px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; list-style: square; color: rgb(0, 0, 0); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 0.8125rem; width: 710.313px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-size: 1.36585vw; letter-spacing: 0.025em; line-height: 1.5em;\">Oil - Free</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-size: 1.36585vw; letter-spacing: 0.025em; line-height: 1.5em;\">Non- Comedogenic (Won\'t clog Pores)\r\n</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-size: 1.36585vw; letter-spacing: 0.025em; line-height: 1.5em;\">use for body wash and body scrub</li></ul>', 1991.15, 1991.15, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"250 ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Neutrogena Body Clear Body Scrub', 'Fight body acne and get clearer skin with  best-selling oil-free acne body scrub. This effective yet gentle body scrub contains Salicylic Acid, a proven acne-fighting ingredient. It cleans deep into pores using gentle exfoliators, sweeping away dead skin cells to give you clear looking skin. And its foaming lather rinses completely without pore-clogging residue, so your skin is left feeling clean.\r\n\r\nOil- Free\r\nNon- Comedogenic (Won\'t clog Pores)\r\nuse for body wash and body scrub', 'uploads/products/meta/riG8w1p8ZZWSHbj4qHvJl1jZInzgW23aAt1LIxeZ.jpg', NULL, 'Neutrogena-Body-Clear-Body-Scrub-2szAs', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-26 09:27:56', '2022-04-27 08:49:13'),
(226, 'Cetaphil Extra Gentle Daily Scrub', 'seller', 370, 6, 2, 71, 106, '[\"uploads\\/products\\/photos\\/W3co1e5c7z6r5CzGtV5m6bHQvOAbxeOMWgxKWoOQ.jpg\",\"uploads\\/products\\/photos\\/HDS3AyF7Vpj5pnXsd0YwLfZZEawAcp02mfl9D4Pr.jpg\"]', 'uploads/products/thumbnail/PIXxFJVI7EsfBGGCN5RIuEa2XtAfuCI1wrblrY0H.jpg', 'uploads/products/featured/VtCTDjfgqwp6lkciE210RHTYHbnTDfgZjDY8rcYg.jpg', 'uploads/products/flash_deal/pUybPdXpHzowYWV7Tiqcx66rGeCAR2hFd05PEMgo.jpg', 'youtube', NULL, 'Cetaphil,Face,Scrub', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cetaphil gentle exfoliating facial cleanser that removes dirt,oil and impurities while micro-fine granules buff away dry, dull skin to support natural surface cell turnover. Infused with skin conditioners and a vitamin complex, it leaves skin feeling soft,smooth and radiant.&nbsp;</span><br>', 2079.64, 2079.64, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"178 ml\"]}]', '[]', NULL, 1, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Cetaphil Extra Gentle Daily Scrub', 'Cetaphil gentle exfoliating facial cleanser that removes dirt,oil and impurities while micro-fine granules buff away dry, dull skin to support natural surface cell turnover. Infused with skin conditioners and a vitamin complex, it leaves skin feeling soft,smooth and radiant.', 'uploads/products/meta/lDOV2Pg3rsYGJZWfh9dV0Rw348pEE2JpNrx7aaRW.jpg', NULL, 'Cetaphil-Extra-Gentle-Daily-Scrub-Exs7R', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-26 09:47:37', '2022-04-27 08:49:11'),
(228, 'PMC-17 Harmonium', 'seller', 377, 33, 188, NULL, NULL, '[\"uploads\\/products\\/photos\\/s6rgBwIDU7VFT70H3ZeZZvJmshfXGEbaKfLXaxNj.jpg\",\"uploads\\/products\\/photos\\/HpgUEbQvV7JFs6m8NnFpmLHLRkOxrNyOPgoszlTf.jpg\",\"uploads\\/products\\/photos\\/i6c0y3VJyV4p4zqoalaHcN0opNns2x6huCie8LLx.jpg\"]', 'uploads/products/thumbnail/Rwp9VGNJxVStYGpIbDcrO82Cn2k5kWVaBp5THjp6.jpg', 'uploads/products/featured/ovWHfzyLIPco5gUW1ESz6UQhPtO3M5atun4verZ4.jpg', 'uploads/products/flash_deal/HPRli0baxzylSYd7itcqiBU7WYok3ZCjJrTuarFw.jpg', 'youtube', NULL, 'Harmonium', '<p>42 keys with coupler</p><p>7 bellows</p><p>Bass Male Reeds</p><p>Hand crafted with outstanding sustainability</p><p>Powerful sound&nbsp;</p><p>440 Hz tuned<br></p>', 25500.00, 25000.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"42 keys\"]}]', '[]', NULL, 1, 1, 1, 0, '12', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, NULL, NULL, NULL, NULL, 'PMC-17-Harmonium-Es6bl', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-27 07:39:01', '2022-04-27 08:48:50'),
(229, 'CG Deluxe rice coocker', 'seller', 379, 1, 77, NULL, 15, '[\"uploads\\/products\\/photos\\/fvxpmFMo2UmmVJiqLjw6u2j6pvijJOxoSrfjv6xq.webp\"]', 'uploads/products/thumbnail/6bAAvR2GrfxXpmDCZIzz8EYAZw5BAo9VHl762a07.webp', NULL, 'uploads/products/flash_deal/F1vn4TuU2X8EWiPfKp4tZ7WL7B14v1CUKFuRHuUV.webp', 'youtube', NULL, 'Deluxe', '2.2 Liter rice cooker', 3530.00, 3530.00, 1, '[\"5\"]', '[{\"attribute_id\":\"5\",\"values\":[\"\"]}]', '[\"#FFFFFF\"]', NULL, 1, 1, 1, 0, '4', 18.00, 'percent', 13.00, 'percent', 'flat_rate', 0.00, 0, 'Rice cooker', '2.2 Liter capacity', 'uploads/products/meta/Rqp07NydLKN3eANi8pEnPgVtrFbsSgoRnQEHtIAx.webp', 'uploads/products/pdf/0RhJVMnjK07aaNaPIN6WX0LxQYv6mMUoSLWMt1Ng.webp', 'CG-Deluxe-rice-coocker-pIJ3v', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-04-27 10:47:49', '2022-04-29 07:31:05'),
(230, 'Cetaphil Deep Cleansing Bar', 'seller', 370, 6, 2, 71, 106, '[\"uploads\\/products\\/photos\\/ofYSR8m4De2OBApxHoGBerdWDtc5cKN99ZcWGT30.jpg\",\"uploads\\/products\\/photos\\/KYSZ8VS9kCnIVuzwr1H68W2Uen56oDQoadibYUaF.jpg\"]', 'uploads/products/thumbnail/ZKV57do39vhVPiNYqWQSkt8ZW5hBeNX5OyyXwKMH.jpg', 'uploads/products/featured/j0tXGmhwWghoXmSTg8Ef96ut2tKj2ZLOuWCGcUyd.jpg', 'uploads/products/flash_deal/8HxwowW1Cx9VTjkYbAsWqdJqlN6ElGo6RjrzGnPW.jpg', 'youtube', NULL, 'Cetaphil,Face Wash,Soap', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cetaphil Deep Cleansing Bar is non-comedogenic, non-irritating and suitable for all skin types. It cleanse without irritation and dryness. It is perfectly formulated for sensitive skin and leave you with your smoothest, nourished the skin . Cleanse without stripping or drying the skin.&nbsp;</span><br>', 1106.19, 1106.19, 1, '[\"8\"]', '[{\"attribute_id\":\"8\",\"values\":[\"144 g\"]}]', '[]', NULL, 1, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Cetaphil Deep Cleansing Bar', 'Cetaphil Deep Cleansing Bar is non-comedogenic, non-irritating and suitable for all skin types. It cleanse without irritation and dryness. It is perfectly formulated for sensitive skin and leave you with your smoothest, nourished the skin . Cleanse without stripping or drying the skin.', 'uploads/products/meta/Y7ThqwLt78kCSlMi5iH0tblDdpLlTsvO6iY6hpMP.jpg', NULL, 'Cetaphil-Deep-Cleansing-Bar-kvNZ6', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-28 14:40:07', '2022-04-29 07:31:06'),
(231, 'Cetaphil Baby Wash & Shampoo', 'seller', 370, 6, 2, 71, 106, '[\"uploads\\/products\\/photos\\/8RYuoyoh1yQ7ZZ3jBHZ62fY160DlacUFi77it3P0.jpg\",\"uploads\\/products\\/photos\\/1F4oFQdezUH5WYZkpnr5gn4aSwKAsDDMQph6kF7b.jpg\"]', 'uploads/products/thumbnail/50giFnZgZQevBXMjZD9poLcg9PTrCe3QliVSA12g.jpg', 'uploads/products/featured/DpDAkiqFgIwDCfji8riWW4EYOPnsCKrQ7LBcgHPS.jpg', 'uploads/products/flash_deal/SMbGsXiy7AwhfjWk4wTkjREkMCjFC89FkzsfwYvr.jpg', 'youtube', NULL, 'Cetaphil,Baby,Face,Body,Shampoo', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cetaphil Baby Wash and Shampoo is dermatologist tested and formulated to be gentle enough for infant\'s skin. This tear-free hypoallergenic formula blends into a rich,lathering wash that gently cleans your baby\'s delicate skin and hair . It is tear-free,paraben-free and mineral oil-free. This gentle wash and shampoo rinses clean,leaving a soft,fresh fragrance.</span><br>', 2522.12, 2522.12, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"230 ml\"]}]', '[]', NULL, 1, 0, 0, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Cetaphil Baby Wash & Shampoo', 'Cetaphil Baby Wash and Shampoo is dermatologist tested and formulated to be gentle enough for infant\'s skin. This tear-free hypoallergenic formula blends into a rich,lathering wash that gently cleans your baby\'s delicate skin and hair . It is tear-free,paraben-free and mineral oil-free. This gentle wash and shampoo rinses clean,leaving a soft,fresh fragrance.', 'uploads/products/meta/aUuqNnu8tAcqR5hYyK4UdQhL6XRCOVPDoMFxlhwv.jpg', NULL, 'Cetaphil-Baby-Wash--Shampoo-V8kIR', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-04-28 15:55:12', '2022-05-26 05:23:05'),
(232, 'Shiffon Stripped one piece', 'seller', 373, 22, 148, 153, NULL, '[\"uploads\\/products\\/photos\\/2GeFW2edsIuu6DzuveCb0T4ORlxsyRyAOtGORwZ2.jpg\"]', NULL, NULL, NULL, 'youtube', NULL, 'Shiffon,Stripped,Onepiece', 'This product comes in different colors , It is useful for girls and womens. With full sleeves outer that is adjustable in length.', 2290.00, 0.00, 1, '[]', '[]', '[\"#000000\",\"#FFEBCD\",\"#FFC0CB\",\"#9ACD32\"]', NULL, 0, 1, 0, 0, '4', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'One Piece Stripped In different colors', 'One piece with outer and adjustable in length. Comes in four colors . Light pink , yellow green, Black and Almond color', NULL, NULL, 'Shiffon-Stripped-one-piece-NBdjG', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-05-04 09:10:30', '2022-05-04 09:10:47'),
(233, 'Plazo', 'seller', 373, 22, 104, 185, NULL, '[\"uploads\\/products\\/photos\\/wPsO0vj9GTAC49FXYI8Bhf8XsMYH3dUoDGgdkjc4.jpg\"]', NULL, NULL, NULL, 'youtube', NULL, 'Threading', '<p>Plazo stretchable threaded cotton materials<br></p>', 1590.00, 0.00, 1, '[]', '[]', '[\"#000000\",\"#778899\",\"#9370DB\",\"#8B4513\"]', NULL, 0, 1, 0, 0, '5', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, NULL, 'Stretchebal', 'uploads/products/meta/W7JZegjsjekQAMZPtCAtmG9cez59ceJ9a4PLKD0A.jpg', NULL, 'Plazo-qyA7Y', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-05-04 09:34:27', '2022-05-04 09:56:46'),
(234, 'half sleave', 'seller', 373, 22, 92, NULL, NULL, '[\"uploads\\/products\\/photos\\/RZrA9ZnfVwP0l9YEazEX4QIzgaOqsVSPJIyUVHXJ.jpg\"]', NULL, NULL, NULL, 'youtube', NULL, 'Rightfront,Butterflylogo', NULL, 990.00, 0.00, 1, '[]', '[]', '[\"#000000\",\"#F8F8FF\",\"#9370DB\"]', NULL, 0, 1, 0, 0, '4', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'Stretchable t-shirt', NULL, NULL, NULL, 'half-sleave-vFXT9', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-05-04 09:52:49', '2022-05-04 09:56:53'),
(235, 'Cetaphil Baby Ultra Soothing Lotion with Shea Butter', 'seller', 370, 6, 166, NULL, 106, '[\"uploads\\/products\\/photos\\/vWlSYlVx9vG6wfMpVbvpDILheP9XjzaPgWkTqxIx.jpg\",\"uploads\\/products\\/photos\\/lIFJpIIfHMqYv0FRrK7NOm035LLBUFXEtjEeSunO.jpg\"]', 'uploads/products/thumbnail/NFUUUqexvDlrwQ1jC4QeTVZXr27fsfIo9v2Wogj8.jpg', 'uploads/products/featured/H2sImWM3nVBFuVN3SdWWQ9T48UVWBR6JH7bi38tS.jpg', 'uploads/products/flash_deal/NnAfLV0BNann8mqUkDiIo92HP1X6fUpR4QqHvlAd.jpg', 'youtube', NULL, 'Cetaphil,Baby,Lotion', '<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; font-size: 1rem;\">Cetaphil Baby Ultra Soothing Lotion With Shea Butter and rich emollients is clinically proven to moisturize and soothe dry skin all day, even dry skin associated with eczema. Dermatologist tested and recommended, it helps calm and protect your baby\'s sensitive skin, leaving it soft and smooth.</span></p>', 2522.12, 2522.11, 1, '[\"8\"]', '[{\"attribute_id\":\"8\",\"values\":[\"226g\"]}]', '[]', NULL, 0, 1, 1, 0, 'gram', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Cetaphil Baby Ultra Soothing Lotion with Shea Butter', 'Cetaphil Baby Ultra Soothing Lotion With Shea Butter and rich emollients is clinically proven to moisturize and soothe dry skin all day, even dry skin associated with eczema. Dermatologist tested and recommended, it helps calm and protect your baby\'s sensitive skin, leaving it soft and smooth.', 'uploads/products/meta/tHg70PN1JS1U6cVyCIE4Uvb8RxdarG4G43nY4BTK.jpg', NULL, 'Cetaphil-Baby-Ultra-Soothing-Lotion-with-Shea-Butter-Rozfp', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-05-12 08:53:11', '2022-05-12 09:10:40'),
(236, 'Cetaphil Redness Relieving Daily Facial Moisturizer with Sunscreen', 'seller', 370, 6, 166, NULL, 106, '[\"uploads\\/products\\/photos\\/YDUVpw3UK1CxQe9x3gcjIg75MForHM2Hw6UuVhXH.jpg\"]', 'uploads/products/thumbnail/1tfutrApPP7Jh6bB0fdNfsp8yK1CIIh7pGKCMaKR.jpg', 'uploads/products/featured/eMMalREshSznMBvMb1zbA8NgzWGu3MmvgDWDqbC7.jpg', 'uploads/products/flash_deal/HbGWaeXnghagmnnDCcfijgw8mA4mWYPuYg6lRQSS.jpg', 'youtube', NULL, 'Cetaphil,Moisturzier,Sunscreen', '<span style=\"color: rgb(130, 130, 130); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Cetaphil Redness Relieving Daily Facial Moisturizer with SPF 20 is an neutral tinted moisturizer easily blends to skin immediately. It reduce the appearance of redness and even skin tone. This daily moisturizer also provides mineral-based. It is lightweight formula with sunscreen that moisturizes dry skin help to reduce the appearance of redness due to dry skin. Neutral tinted moisturizer hydrates natural, protective skin barrier leaving it soothed and balanced the skin.</span><br>', 2522.12, 2522.12, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"50ml\"]}]', '[]', NULL, 0, 1, 1, 0, 'ml', 0.00, 'amount', 13.00, 'percent', 'flat_rate', 100.00, 0, 'Cetaphil Redness Relieving Daily Facial Moisturizer with Sunscreen', 'Cetaphil Redness Relieving Daily Facial Moisturizer with SPF 20 is an neutral tinted moisturizer easily blends to skin immediately. It reduce the appearance of redness and even skin tone. This daily moisturizer also provides mineral-based. It is lightweight formula with sunscreen that moisturizes dry skin help to reduce the appearance of redness due to dry skin. Neutral tinted moisturizer hydrates natural, protective skin barrier leaving it soothed and balanced the skin.', 'uploads/products/meta/bmUyKJv9BdRV1hIl0M3xOPi5HPa3QzSJuxhY96GG.jpg', NULL, 'Cetaphil-Redness-Relieving-Daily-Facial-Moisturizer-with-Sunscreen-W3EKv', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-05-26 06:49:19', '2022-05-26 07:59:35'),
(237, 'HUBLOT analog watch', 'seller', 395, 24, 111, 218, NULL, '[\"uploads\\/products\\/photos\\/lSeRVRl4br07Q0MLdcXjShjPn4GKnvz6eP3BijQA.heic\"]', 'uploads/products/thumbnail/wIIAGrYPZi3zzFXejIHfVva0NHsNNwuinvbkfvGq.heic', 'uploads/products/featured/1CAVLCtHZbDnh71xONlPOaNsl6s436JA1wbZQRJU.heic', NULL, 'youtube', NULL, 'Ladies&Jents', 'This watch is Hublot brand .It is of rubber black belt that is colored black. This is a analog watch .', 2500.00, 2500.00, 1, '[]', '[]', '[\"#000000\"]', NULL, 0, 1, 1, 0, '5', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'Analog watch', 'Comfortable and weightless hublot watch is rubber material belt colored black', 'uploads/products/meta/P8K1RHQ7GEeZ4pCjksMm1y7I9Vd6gJRmz4IeIUMl.heic', NULL, 'HUBLOT-analog-watch-tyGTJ', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-05-29 09:10:27', '2022-05-29 09:24:29'),
(238, 'MEGIR ANALOG WATCH', 'seller', 395, 4, 11, NULL, NULL, '[\"uploads\\/products\\/photos\\/hwUNSww2dlIL0uNTYd9o00bTctMXJY3JvcTUtTTp.heic\"]', 'uploads/products/thumbnail/DSOOGELRH40He6PbG3hkJ0c8BMActvjy6bXWldMe.heic', 'uploads/products/featured/wkmBKdWWtfkitErplXT3QzhwNoNe9yjusbkmF7uz.heic', 'uploads/products/flash_deal/8Rvd5hlcUEnLbaCIEPvGEW1LKuPlphhfFzbwFEFs.heic', 'youtube', NULL, 'Black ,Analog,Chronograph', 'This watch has one year warranty.&nbsp;', 4500.00, 4500.00, 1, '[]', '[]', '[\"#000000\"]', NULL, 0, 1, 1, 0, '1', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 0, 'Analog watch', 'This is a Analog watch that has rubber belt , water proof , consists date & time, and has got Chronograph features .', 'uploads/products/meta/JZIgbZWFJwi7PXlbL5YLwjl7qHgBZHG4jemxhoiO.heic', NULL, 'MEGIR-ANALOG-WATCH-oOuOS', 0.00, 1, 0.00, NULL, 0, NULL, NULL, '2022-05-30 07:26:50', '2022-05-30 07:27:48'),
(239, 'T-shirt', 'seller', 448, 4, 29, NULL, 85, '[\"uploads\\/products\\/photos\\/d1xD6MIER6o4jygCjsophDuvVYIKeZYYEBLOcMTe.jpg\"]', 'uploads/products/thumbnail/KLifUUulVIU1aBQzHEPI4WJrrmQdt1m6RTi2Qk2M.jpg', 'uploads/products/featured/V309m4gTvti2Ws8bmqCfYZKarr5bziq3XwXmautl.jpg', 'uploads/products/flash_deal/vHFX196mTJh0ij5uGeCbsnd1n51Oh92JppwgnJxM.jpg', 'youtube', NULL, 'T-shirt,outwear,black t shirt', 'Summer wear, thin comfortable shirt&nbsp;', 1500.00, 1500.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"Small\",\"medium\",\"large\"]}]', '[\"#000000\",\"#FFFFFF\"]', NULL, 0, 1, 1, 0, '1', 0.00, 'percent', 0.00, 'percent', 'free', 0.00, 0, 'T shirt', 'Summer wear', 'uploads/products/meta/mc286ngOU7dGA4TfT4XKXv10rjQ8ASUnDdbswjpY.jpg', NULL, 'T-shirt-5z91R', 0.00, 0, 0.00, NULL, 0, NULL, NULL, '2022-05-31 10:14:03', '2022-05-31 10:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 11, '16inch', 'SB2i2sddmFB-16inch', 12000.00, 10, '2020-06-06 19:05:11', '2020-06-06 19:05:11'),
(2, 11, '20inch', 'SB2i2sddmFB-20inch', 13000.00, 10, '2020-06-06 19:05:11', '2020-06-06 19:05:11'),
(3, 12, 'Aqua-16inch', 'SB2i2sddmFB-Aqua-16inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(4, 12, 'Aqua-20inch', 'SB2i2sddmFB-Aqua-20inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(5, 12, 'Blue-16inch', 'SB2i2sddmFB-Blue-16inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(6, 12, 'Blue-20inch', 'SB2i2sddmFB-Blue-20inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(7, 12, 'DarkOrange-16inch', 'SB2i2sddmFB-DarkOrange-16inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(8, 12, 'DarkOrange-20inch', 'SB2i2sddmFB-DarkOrange-20inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(9, 12, 'Yellow-16inch', 'SB2i2sddmFB-Yellow-16inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(10, 12, 'Yellow-20inch', 'SB2i2sddmFB-Yellow-20inch', 11000.00, 10, '2020-06-06 19:15:56', '2020-06-06 19:15:56'),
(11, 18, 'White', 'A2G65-6S5LCLW7L-White', 425.00, 10, '2020-06-08 13:55:30', '2020-06-08 13:55:30'),
(13, 13, 'Black', 'KMCCP-Black', 2500.00, 6, '2020-06-08 14:37:06', '2020-10-19 05:19:49'),
(14, 46, '4gm', 't-4gm', 1200.00, 10, '2020-08-01 06:52:58', '2020-08-01 06:52:58'),
(16, 47, 'Black', 'MLb-Black', 1550.00, 7, '2020-09-12 00:53:17', '2020-09-12 00:54:00'),
(17, 55, 'Black', 'FMsc-Black', 3700.00, 1, '2020-10-14 09:51:48', '2020-10-14 09:51:48'),
(18, 58, 'Amethyst-12', 'D-Amethyst-12', 560.00, 20, '2020-10-18 07:34:20', '2020-10-18 07:43:51'),
(19, 58, 'Amethyst-13', 'D-Amethyst-13', 100.00, 2, '2020-10-18 07:34:20', '2020-10-18 07:40:20'),
(20, 58, 'Amethyst-14', 'D-Amethyst-14', 100.00, 2, '2020-10-18 07:34:20', '2020-10-18 07:40:20'),
(21, 58, 'Amethyst-15', 'D-Amethyst-15', 100.00, 2, '2020-10-18 07:34:20', '2020-10-18 07:40:20'),
(22, 58, 'Amethyst-16', 'D-Amethyst-16', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(23, 58, 'AntiqueWhite-12', 'D-AntiqueWhite-12', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(24, 58, 'AntiqueWhite-13', 'D-AntiqueWhite-13', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(25, 58, 'AntiqueWhite-14', 'D-AntiqueWhite-14', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(26, 58, 'AntiqueWhite-15', 'D-AntiqueWhite-15', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(27, 58, 'AntiqueWhite-16', 'D-AntiqueWhite-16', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(28, 58, 'Aqua-12', 'D-Aqua-12', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(29, 58, 'Aqua-13', 'D-Aqua-13', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(30, 58, 'Aqua-14', 'D-Aqua-14', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(31, 58, 'Aqua-15', 'D-Aqua-15', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(32, 58, 'Aqua-16', 'D-Aqua-16', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(33, 58, 'BlueViolet-12', 'D-BlueViolet-12', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(34, 58, 'BlueViolet-13', 'D-BlueViolet-13', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(35, 58, 'BlueViolet-14', 'D-BlueViolet-14', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(36, 58, 'BlueViolet-15', 'D-BlueViolet-15', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(37, 58, 'BlueViolet-16', 'D-BlueViolet-16', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(38, 58, 'Brown-12', 'D-Brown-12', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(39, 58, 'Brown-13', 'D-Brown-13', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(40, 58, 'Brown-14', 'D-Brown-14', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(41, 58, 'Brown-15', 'D-Brown-15', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(42, 58, 'Brown-16', 'D-Brown-16', 100.00, 10, '2020-10-18 07:34:20', '2020-10-18 07:34:20'),
(43, 58, 'Chocolate-12', 'D-Chocolate-12', 100.00, 10, '2020-10-18 07:42:00', '2020-10-18 07:42:00'),
(44, 58, 'Chocolate-13', 'D-Chocolate-13', 100.00, 10, '2020-10-18 07:42:00', '2020-10-18 07:42:00'),
(45, 58, 'Chocolate-14', 'D-Chocolate-14', 100.00, 10, '2020-10-18 07:42:00', '2020-10-18 07:42:00'),
(46, 58, 'Chocolate-15', 'D-Chocolate-15', 100.00, 10, '2020-10-18 07:42:00', '2020-10-18 07:42:00'),
(47, 59, 'Aqua-10', 'kj-Aqua-10', 1000.00, 20, '2020-10-18 07:49:56', '2020-10-18 07:49:56'),
(48, 60, 'S', 'Hs1sb-S', 1200.00, 20, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(49, 60, 'M', 'Hs1sb-M', 1200.00, 10, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(50, 60, 'L', 'Hs1sb-L', 1200.00, 10, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(51, 60, 'XL', 'Hs1sb-XL', 1200.00, 10, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(52, 60, '2XL', 'Hs1sb-2XL', 1200.00, 9, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(53, 60, '3XL', 'Hs1sb-3XL', 1200.00, 10, '2020-10-20 06:37:39', '2020-11-06 02:15:40'),
(54, 78, '10000mAh', 'RS6LPB2UHCPCwDUOP&3IEBPCfii&S-10000mAh', 2100.00, 10, '2020-10-27 08:39:34', '2020-10-27 08:42:04'),
(55, 78, '20000mAh', 'RS6LPB2UHCPCwDUOP&3IEBPCfii&S-20000mAh', 2500.00, 10, '2020-10-27 08:39:34', '2020-10-27 08:42:04'),
(65, 85, '39', 'SSfm-39', 3200.00, 1, '2020-11-02 07:46:57', '2020-11-02 07:58:39'),
(66, 87, '37', 'sssfm-37', 2200.00, 1, '2020-11-02 07:57:22', '2020-11-02 07:57:22'),
(67, 87, '38', 'sssfm-38', 2200.00, 2, '2020-11-02 07:57:22', '2020-11-02 07:57:22'),
(68, 87, '39', 'sssfm-39', 2200.00, 1, '2020-11-02 07:57:22', '2020-11-02 07:57:22'),
(69, 87, '40', 'sssfm-40', 2200.00, 1, '2020-11-02 07:57:22', '2020-11-02 07:57:22'),
(70, 88, '39', 'sssfg-39', 2000.00, 2, '2020-11-02 08:03:46', '2020-11-06 07:26:09'),
(71, 88, '40', 'sssfg-40', 2000.00, 2, '2020-11-02 08:03:46', '2020-11-06 07:26:09'),
(72, 89, '39', 'sfmss-39', 3000.00, 1, '2020-11-02 08:08:18', '2020-11-06 07:25:27'),
(73, 90, '39', 'sssfm-39', 2500.00, 1, '2020-11-02 08:12:43', '2020-11-02 08:12:43'),
(74, 91, '41', 'sssfm-41', 250.00, 1, '2020-11-02 08:18:44', '2020-11-02 08:18:44'),
(75, 92, '42', 'sssfm-42', 2800.00, 1, '2020-11-02 08:22:06', '2020-11-02 08:22:06'),
(76, 93, '38', 'sssfm-38', 2600.00, 1, '2020-11-02 08:26:59', '2020-11-02 08:26:59'),
(77, 94, '39', 'sssfm-39', 3000.00, 1, '2020-11-02 08:33:24', '2020-11-02 08:33:24'),
(78, 95, '40', 'sssfm-40', 2500.00, 1, '2020-11-02 08:38:48', '2020-11-02 08:38:48'),
(79, 95, '42', 'sssfm-42', 2500.00, 1, '2020-11-02 08:38:48', '2020-11-02 08:38:48'),
(80, 96, '39', 'sssfm-39', 3000.00, 1, '2020-11-02 08:41:56', '2020-11-02 08:41:56'),
(81, 97, '39', 'sssfm-39', 2200.00, 1, '2020-11-02 08:45:34', '2020-11-02 08:45:34'),
(82, 97, '42', 'sssfm-42', 2200.00, 2, '2020-11-02 08:45:34', '2020-11-02 08:45:34'),
(83, 98, '39', 'sssfm-39', 2500.00, 1, '2020-11-02 08:49:17', '2020-11-02 08:49:17'),
(84, 99, '39', 'sssfm-39', 2500.00, 1, '2020-11-02 08:49:17', '2020-11-02 08:49:17'),
(85, 100, '39', 'sssfm-39', 2500.00, 1, '2020-11-02 08:49:17', '2020-11-02 08:49:17'),
(86, 115, 'm', 's-m', 1150.00, 10, '2020-11-06 08:58:37', '2020-11-06 08:58:37'),
(87, 115, 'l', 's-l', 1150.00, 10, '2020-11-06 08:58:37', '2020-11-06 08:58:37'),
(88, 115, 'xl', 's-xl', 1150.00, 10, '2020-11-06 08:58:37', '2020-11-06 08:58:37'),
(91, 124, '10-100', 'RE-10-100', 663.00, 10, '2021-01-20 08:37:52', '2021-01-20 08:37:52'),
(92, 125, '10-10', 'JN-10-10', 96.00, 10, '2021-01-21 06:38:29', '2021-01-21 06:38:29'),
(93, 127, 'regular', 'PGT-regular', 900.00, 199, '2021-08-16 04:51:57', '2021-08-16 04:51:57'),
(94, 132, 'v-trek', '3vlt-v-trek', 24000.00, 10, '2021-08-20 08:55:34', '2021-08-20 08:55:34'),
(95, 133, 'v-trek', '3vlt-v-trek', 24000.00, 10, '2021-08-20 08:56:07', '2021-08-20 08:56:07'),
(96, 134, 'Black-1', '4svt-Black-1', 45000.00, 10, '2021-08-20 09:47:36', '2021-08-20 09:47:36'),
(97, 135, 'Black', '4vt-Black', 45000.00, 10, '2021-08-20 10:22:50', '2021-08-20 10:22:50'),
(110, 141, 'MediumPurple', 'OMP-MediumPurple', 420.00, 25, '2021-10-06 11:37:02', '2021-10-06 11:37:02'),
(121, 156, 'CornflowerBlue', 'PO-CornflowerBlue', 1400.00, 98, '2021-12-13 11:34:53', '2022-03-30 09:51:56'),
(124, 157, 'AntiqueWhite---', 'LL-AntiqueWhite---', 603.00, 6, '2021-12-14 12:14:14', '2022-03-21 12:05:16'),
(125, 157, 'Blue---', 'LL-Blue---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(126, 157, 'Chartreuse---', 'LL-Chartreuse---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(127, 157, 'DarkMagenta---', 'LL-DarkMagenta---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(128, 157, 'DimGray---', 'LL-DimGray---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(129, 157, 'ForestGreen---', 'LL-ForestGreen---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(130, 157, 'LightBlue---', 'LL-LightBlue---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(131, 157, 'LightCoral---', 'LL-LightCoral---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(132, 157, 'LightSalmon---', 'LL-LightSalmon---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(133, 157, 'LightSeaGreen---', 'LL-LightSeaGreen---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(134, 157, 'MediumBlue---', 'LL-MediumBlue---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(135, 157, 'MediumSlateBlue---', 'LL-MediumSlateBlue---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(136, 157, 'MintCream---', 'LL-MintCream---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(137, 157, 'MistyRose---', 'LL-MistyRose---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(138, 157, 'Moccasin---', 'LL-Moccasin---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(139, 157, 'NavajoWhite---', 'LL-NavajoWhite---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(140, 157, 'PapayaWhip---', 'LL-PapayaWhip---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(141, 157, 'Pink---', 'LL-Pink---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(142, 157, 'SkyBlue---', 'LL-SkyBlue---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(143, 157, 'Thistle---', 'LL-Thistle---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(144, 157, 'Violet---', 'LL-Violet---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(145, 157, 'WhiteSmoke---', 'LL-WhiteSmoke---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(146, 157, 'Yellow---', 'LL-Yellow---', 603.00, 10, '2021-12-14 12:14:14', '2021-12-14 12:14:14'),
(148, 154, 'CornflowerBlue', 'PT-CornflowerBlue', 964.00, 0, '2022-01-18 06:09:09', '2022-01-18 06:09:09'),
(158, 160, 'Black-32', 'sst-Black-32', 120000.00, 10, '2022-03-23 15:55:09', '2022-03-23 15:55:09'),
(159, 160, 'Blue-32', 'sst-Blue-32', 120000.00, 10, '2022-03-23 15:55:09', '2022-03-23 15:55:09'),
(160, 161, 'AntiqueWhite---', 'sst-AntiqueWhite---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(161, 161, 'Blue---', 'sst-Blue---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(162, 161, 'Chartreuse---', 'sst-Chartreuse---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(163, 161, 'DarkMagenta---', 'sst-DarkMagenta---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(164, 161, 'DimGray---', 'sst-DimGray---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(165, 161, 'ForestGreen---', 'sst-ForestGreen---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(166, 161, 'LightBlue---', 'sst-LightBlue---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(167, 161, 'LightCoral---', 'sst-LightCoral---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(168, 161, 'LightSalmon---', 'sst-LightSalmon---', 105000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(169, 161, 'LightSeaGreen---', 'sst-LightSeaGreen---', 107000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(170, 161, 'MediumBlue---', 'sst-MediumBlue---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(171, 161, 'MediumSlateBlue---', 'sst-MediumSlateBlue---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(172, 161, 'MintCream---', 'sst-MintCream---', 80000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(173, 161, 'MistyRose---', 'sst-MistyRose---', 90000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(174, 161, 'Moccasin---', 'sst-Moccasin---', 75000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(175, 161, 'NavajoWhite---', 'sst-NavajoWhite---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(176, 161, 'PapayaWhip---', 'sst-PapayaWhip---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(177, 161, 'Pink---', 'sst-Pink---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(178, 161, 'SkyBlue---', 'sst-SkyBlue---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(179, 161, 'Thistle---', 'sst-Thistle---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(180, 161, 'Violet---', 'sst-Violet---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(181, 161, 'WhiteSmoke---', 'sst-WhiteSmoke---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(182, 161, 'Yellow---', 'sst-Yellow---', 100000.00, 10, '2022-03-23 15:59:23', '2022-03-23 16:03:37'),
(183, 162, 'Black-32', 'LT-Black-32', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(184, 162, 'Black-53', 'LT-Black-53', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(185, 162, 'Blue-32', 'LT-Blue-32', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(186, 162, 'Blue-53', 'LT-Blue-53', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(187, 162, 'Brown-32', 'LT-Brown-32', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(188, 162, 'Brown-53', 'LT-Brown-53', 150000.00, 10, '2022-03-23 16:07:44', '2022-03-23 16:07:44'),
(189, 164, 'AntiqueWhite---', 'Lst-AntiqueWhite---', 120000.00, 8, '2022-03-23 16:11:27', '2022-03-27 07:52:43'),
(190, 164, 'Blue---', 'Lst-Blue---', 120000.00, 9, '2022-03-23 16:11:27', '2022-03-23 22:49:58'),
(191, 164, 'Chartreuse---', 'Lst-Chartreuse---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(192, 164, 'DarkMagenta---', 'Lst-DarkMagenta---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(193, 164, 'DimGray---', 'Lst-DimGray---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(194, 164, 'ForestGreen---', 'Lst-ForestGreen---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(195, 164, 'LightBlue---', 'Lst-LightBlue---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(196, 164, 'LightCoral---', 'Lst-LightCoral---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(197, 164, 'LightSalmon---', 'Lst-LightSalmon---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(198, 164, 'LightSeaGreen---', 'Lst-LightSeaGreen---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(199, 164, 'MediumBlue---', 'Lst-MediumBlue---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(200, 164, 'MediumSlateBlue---', 'Lst-MediumSlateBlue---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(201, 164, 'MintCream---', 'Lst-MintCream---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(202, 164, 'MistyRose---', 'Lst-MistyRose---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(203, 164, 'Moccasin---', 'Lst-Moccasin---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(204, 164, 'NavajoWhite---', 'Lst-NavajoWhite---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(205, 164, 'PapayaWhip---', 'Lst-PapayaWhip---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(206, 164, 'Pink---', 'Lst-Pink---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(207, 164, 'SkyBlue---', 'Lst-SkyBlue---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(208, 164, 'Thistle---', 'Lst-Thistle---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(209, 164, 'Violet---', 'Lst-Violet---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(210, 164, 'WhiteSmoke---', 'Lst-WhiteSmoke---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(211, 164, 'Yellow---', 'Lst-Yellow---', 120000.00, 10, '2022-03-23 16:11:27', '2022-03-23 16:12:25'),
(221, 165, '4GB', 'xn1-4GB', 22000.00, 10, '2022-03-24 05:56:54', '2022-03-24 05:56:54'),
(222, 165, '6GB', 'xn1-6GB', 22000.00, 10, '2022-03-24 05:56:54', '2022-03-24 05:56:54'),
(223, 165, '8GB', 'xn1-8GB', 22000.00, 10, '2022-03-24 05:56:54', '2022-03-24 05:56:54'),
(224, 166, 'AliceBlue-32GB', 'i-AliceBlue-32GB', 119999.99, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(225, 166, 'AliceBlue-64GB', 'i-AliceBlue-64GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(226, 166, 'AliceBlue-128GB', 'i-AliceBlue-128GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(227, 166, 'Black-32GB', 'i-Black-32GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(228, 166, 'Black-64GB', 'i-Black-64GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(229, 166, 'Black-128GB', 'i-Black-128GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(230, 166, 'Gold-32GB', 'i-Gold-32GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(231, 166, 'Gold-64GB', 'i-Gold-64GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(232, 166, 'Gold-128GB', 'i-Gold-128GB', 120000.00, 10, '2022-03-24 06:02:56', '2022-03-24 06:02:56'),
(233, 169, 'Amethyst-22', 't-Amethyst-22', 100.00, 10, '2022-03-24 10:04:54', '2022-03-24 10:04:54'),
(234, 169, 'Aqua-22', 't-Aqua-22', 100.00, 10, '2022-03-24 10:04:54', '2022-03-24 10:04:54'),
(237, 167, 'AliceBlue-a-l', 'ta-AliceBlue-a-l', 567.00, 21, '2022-03-25 07:11:08', '2022-04-01 07:11:52'),
(238, 167, 'AliceBlue-a-m', 'ta-AliceBlue-a-m', 456.00, 33, '2022-03-25 07:11:08', '2022-03-25 07:11:08'),
(239, 167, 'AntiqueWhite-a-l', 'ta-AntiqueWhite-a-l', 345.00, 44, '2022-03-25 07:11:08', '2022-03-25 07:11:08'),
(240, 167, 'AntiqueWhite-a-m', 'ta-AntiqueWhite-a-m', 123.00, 55, '2022-03-25 07:11:08', '2022-03-25 07:11:08'),
(241, 170, 'AntiqueWhite-L', 'Bsa-AntiqueWhite-L', 2500.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(242, 170, 'AntiqueWhite-XL', 'Bsa-AntiqueWhite-XL', 2000.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(243, 170, 'AntiqueWhite-S', 'Bsa-AntiqueWhite-S', 1800.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(244, 170, 'Black-L', 'Bsa-Black-L', 2500.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(245, 170, 'Black-XL', 'Bsa-Black-XL', 2000.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(246, 170, 'Black-S', 'Bsa-Black-S', 1800.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(247, 170, 'DarkRed-L', 'Bsa-DarkRed-L', 2500.00, 100, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(248, 170, 'DarkRed-XL', 'Bsa-DarkRed-XL', 2000.00, 9, '2022-03-26 14:40:23', '2022-03-26 14:41:32'),
(249, 170, 'DarkRed-S', 'Bsa-DarkRed-S', 1800.00, 10, '2022-03-26 14:40:23', '2022-03-26 14:40:23'),
(250, 171, 'Black-4GB', 'xn1-Black-4GB', 24000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(251, 171, 'Black-6GB', 'xn1-Black-6GB', 26000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(252, 171, 'Black-8GB', 'xn1-Black-8GB', 28000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(253, 171, 'Blue-4GB', 'xn1-Blue-4GB', 24000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(254, 171, 'Blue-6GB', 'xn1-Blue-6GB', 26000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(255, 171, 'Blue-8GB', 'xn1-Blue-8GB', 28000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(256, 171, 'DarkRed-4GB', 'xn1-DarkRed-4GB', 24000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(257, 171, 'DarkRed-6GB', 'xn1-DarkRed-6GB', 26000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(258, 171, 'DarkRed-8GB', 'xn1-DarkRed-8GB', 28000.00, 10, '2022-03-27 04:18:26', '2022-03-27 04:18:26'),
(259, 172, 'Black-L', 'T-Black-L', 100.00, 9, '2022-03-27 08:38:00', '2022-03-27 08:47:10'),
(260, 172, 'Black-XL', 'T-Black-XL', 100.00, 10, '2022-03-27 08:38:00', '2022-03-27 08:38:00'),
(261, 172, 'Black-S', 'T-Black-S', 90.00, 10, '2022-03-27 08:38:00', '2022-03-27 08:38:00'),
(262, 172, 'DarkRed-L', 'T-DarkRed-L', 100.00, 10, '2022-03-27 08:38:00', '2022-03-27 08:38:00'),
(263, 172, 'DarkRed-XL', 'T-DarkRed-XL', 100.00, 10, '2022-03-27 08:38:00', '2022-03-27 08:38:00'),
(264, 172, 'DarkRed-S', 'T-DarkRed-S', 90.00, 10, '2022-03-27 08:38:00', '2022-03-27 08:38:00'),
(265, 173, 'Black-4gb', 'w-Black-4gb', 3000.00, 10, '2022-03-27 08:49:23', '2022-03-27 08:49:23'),
(266, 175, 'AliceBlue-4GB', 'SW-AliceBlue-4GB', 20000.00, 10, '2022-03-28 05:15:45', '2022-03-28 05:15:45'),
(267, 175, 'AliceBlue-6GB', 'SW-AliceBlue-6GB', 25000.00, 10, '2022-03-28 05:15:45', '2022-03-28 05:15:45'),
(268, 175, 'White-4GB', 'SW-White-4GB', 20000.00, 10, '2022-03-28 05:15:45', '2022-03-28 05:15:45'),
(269, 175, 'White-6GB', 'SW-White-6GB', 25000.00, 10, '2022-03-28 05:15:45', '2022-03-28 05:15:45'),
(270, 176, 'Black', 'T-Black', 1000.00, 10, '2022-03-28 05:24:28', '2022-03-28 05:24:28'),
(271, 177, 'Black-128gb', 'mp-Black-128gb', 1234567.00, 8, '2022-03-28 05:27:08', '2022-03-28 05:36:00'),
(272, 177, 'Blue-128gb', 'mp-Blue-128gb', 1234567.00, 10, '2022-03-28 05:27:08', '2022-03-28 05:27:08'),
(273, 178, 'Blue-32', 'jp-Blue-32', 3500.00, 9, '2022-03-28 06:04:26', '2022-03-28 06:11:57'),
(274, 179, 'Black-15inch-1tb', 'DI15s-Black-15inch-1tb', 60000.00, 8, '2022-03-28 06:25:10', '2022-03-28 07:23:31'),
(275, 179, 'Black-15inch-500gb', 'DI15s-Black-15inch-500gb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(276, 179, 'Black-18inch-1tb', 'DI15s-Black-18inch-1tb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(277, 179, 'Black-18inch-500gb', 'DI15s-Black-18inch-500gb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(278, 179, 'LightGrey-15inch-1tb', 'DI15s-LightGrey-15inch-1tb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(279, 179, 'LightGrey-15inch-500gb', 'DI15s-LightGrey-15inch-500gb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(280, 179, 'LightGrey-18inch-1tb', 'DI15s-LightGrey-18inch-1tb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(281, 179, 'LightGrey-18inch-500gb', 'DI15s-LightGrey-18inch-500gb', 60000.00, 10, '2022-03-28 06:25:10', '2022-03-28 06:25:10'),
(284, 180, 'Black', 'E-Black', 10000.00, 5, '2022-03-28 07:34:27', '2022-03-28 07:34:27'),
(285, 180, 'White', 'E-White', 10000.00, 14, '2022-03-28 07:34:27', '2022-03-28 07:34:27'),
(286, 183, 'Black-L', 'T-Black-L', 1000.00, 10, '2022-03-28 08:25:14', '2022-03-28 08:25:14'),
(287, 185, 'AliceBlue-4', 'g-AliceBlue-4', 100.00, 10, '2022-03-28 11:14:03', '2022-03-28 11:14:03'),
(288, 186, 'Amethyst-128', 'L-Amethyst-128', 15000.00, 8, '2022-03-28 11:51:47', '2022-03-29 05:16:29'),
(289, 185, 'AliceBlue-5', 'g-AliceBlue-5', 100.00, 10, '2022-03-28 17:25:29', '2022-03-28 17:25:29'),
(290, 189, 'AntiqueWhite', 'J-AntiqueWhite', 2000.00, 10, '2022-03-29 03:45:11', '2022-03-29 03:45:11'),
(291, 191, 'Blue-8gb', 'Mp-Blue-8gb', 120000.00, 10, '2022-03-29 04:46:34', '2022-03-29 04:46:34'),
(292, 192, 'Black-120000', 'Rc-Black-120000', 120000.00, 10, '2022-03-29 04:53:22', '2022-03-29 04:53:22'),
(293, 192, 'Blue-120000', 'Rc-Blue-120000', 120000.00, 10, '2022-03-29 04:53:22', '2022-03-29 04:53:22'),
(294, 194, 'DarkCyan-', 'G-DarkCyan-', 500.00, 10, '2022-03-29 05:56:54', '2022-03-29 05:56:54'),
(295, 195, 'AliceBlue-30-26000', 'C-AliceBlue-30-26000', 120000.00, 10, '2022-03-30 04:10:33', '2022-03-30 04:10:33'),
(296, 195, 'AliceBlue-000-26000', 'C-AliceBlue-000-26000', 120000.00, 10, '2022-03-30 04:10:33', '2022-03-30 04:10:33'),
(297, 195, 'Black-30-26000', 'C-Black-30-26000', 120000.00, 10, '2022-03-30 04:10:33', '2022-03-30 04:10:33'),
(298, 195, 'Black-000-26000', 'C-Black-000-26000', 120000.00, 10, '2022-03-30 04:10:33', '2022-03-30 04:10:33'),
(299, 196, 'Black-L', 'Bt-Black-L', 1000.00, 10, '2022-03-30 06:50:20', '2022-03-30 06:50:20'),
(300, 196, 'Black-xL', 'Bt-Black-xL', 1000.00, 10, '2022-03-30 06:50:20', '2022-03-30 06:50:20'),
(301, 196, 'Black-xll', 'Bt-Black-xll', 1000.00, 7, '2022-03-30 06:50:20', '2022-06-02 10:34:09'),
(302, 196, 'Black-m', 'Bt-Black-m', 1000.00, 10, '2022-03-30 06:50:20', '2022-03-30 06:50:20'),
(303, 197, 'Amethyst-1Tb', 'E-Amethyst-1Tb', 120000.00, 10, '2022-03-30 09:17:55', '2022-03-30 09:17:55'),
(304, 197, 'AntiqueWhite-1Tb', 'E-AntiqueWhite-1Tb', 120000.00, 10, '2022-03-30 09:17:55', '2022-03-30 09:17:55'),
(305, 198, 'Gold-22', 'GJ-Gold-22', 110000.00, 10, '2022-03-30 10:39:51', '2022-03-30 10:39:51'),
(306, 198, 'Gold-24', 'GJ-Gold-24', 120000.00, 10, '2022-03-30 10:39:51', '2022-03-30 10:39:51'),
(307, 200, 'AntiqueWhite-25kg', 'gl-AntiqueWhite-25kg', 1700.00, 10, '2022-04-03 06:59:58', '2022-04-03 06:59:58'),
(308, 202, 'AntiqueWhite-1kg', 'rf-AntiqueWhite-1kg', 110.00, 5, '2022-04-04 05:54:02', '2022-04-04 05:54:02'),
(311, 205, '88ml', 'NUSD-TSs4-88ml', 1902.65, 2, '2022-04-07 06:21:26', '2022-04-07 11:31:11'),
(312, 206, '88ml', 'NUSD-TSs5-88ml', 1902.65, 2, '2022-04-07 06:32:03', '2022-04-24 08:44:44'),
(313, 207, '88ml', 'NUSD-TSS7-88ml', 2035.39, 2, '2022-04-07 06:43:11', '2022-04-07 11:29:31'),
(314, 208, '1kg', 'k-1kg', 1500.00, 2, '2022-04-07 08:15:37', '2022-04-07 08:15:37'),
(315, 210, '88ml', 'NHBWGLS3-88ml', 1902.65, 2, '2022-04-07 12:16:32', '2022-04-07 12:16:32'),
(316, 210, '118ml', 'NOFAM(G-118ml', 1902.65, 0, '2022-04-08 16:45:34', '2022-04-08 17:07:00'),
(317, 211, '354ml', 'NUGDC(F-354ml', 2522.12, 2, '2022-04-08 17:03:49', '2022-04-08 17:03:49'),
(318, 212, '141gram', 'NHBEC-141gram', 1902.65, 2, '2022-04-09 04:29:41', '2022-04-09 04:29:41'),
(319, 213, '170gram', 'NHBHCG-170gram', 2079.64, 2, '2022-04-09 06:56:34', '2022-04-09 06:56:34'),
(320, 214, '88ml', 'NSCTOGM-88ml', 2168.14, 2, '2022-04-09 08:30:15', '2022-04-09 08:30:43'),
(321, 215, '236ml', 'NLFCF-236ml', 2522.12, 2, '2022-04-09 12:11:10', '2022-04-09 12:11:10'),
(322, 204, '73ml', 'NOFMwSS3-73ml', 1991.15, 2, '2022-04-09 12:24:22', '2022-04-09 12:26:00'),
(323, 216, '250ml', 'NCBW(GF-250ml', 2256.63, 2, '2022-04-10 05:55:16', '2022-04-10 05:55:16'),
(324, 217, '88ml', 'NCFBOFOFSBSS5-88ml', 2256.63, 2, '2022-04-10 08:29:40', '2022-04-10 10:16:58'),
(325, 218, '73ml', 'NSFOSBSS7-73ml', 1902.65, 2, '2022-04-10 08:37:43', '2022-04-10 10:19:04'),
(326, 219, '11gram', 'NSCMP(I2-11gram', 2168.14, 1, '2022-04-11 05:43:15', '2022-04-11 05:43:15'),
(327, 219, 'Bisque-11gram', 'NSCMP(I2-Bisque-11gram', 2168.14, 1, '2022-04-11 05:49:34', '2022-04-11 05:49:34'),
(328, 219, 'BurlyWood-11gram', 'NSCMP(I2-BurlyWood-11gram', 2168.14, 1, '2022-04-11 05:49:34', '2022-04-11 05:49:34'),
(329, 219, '15gram', 'NSCMP(I2-15gram', 2168.14, 1, '2022-04-11 06:02:39', '2022-04-11 06:02:39'),
(331, 221, '11gram', 'NSCMP(I2-11gram', 2168.14, 1, '2022-04-11 11:45:50', '2022-04-11 16:39:20'),
(332, 220, '11gram', 'NSCMP(B5-11gram', 2168.14, 1, '2022-04-11 11:48:07', '2022-04-11 11:48:07'),
(334, 222, '200g', 'NDCCC-200g', 1902.65, 2, '2022-04-13 14:59:50', '2022-04-13 16:46:13'),
(335, 223, '250ml', 'NPRT-250ml', 1991.15, 2, '2022-04-17 08:03:28', '2022-04-17 08:03:28'),
(336, 224, 'White', 'c-White', 6500.00, 10, '2022-04-18 07:50:09', '2022-04-18 07:50:09'),
(337, 225, '250ml', 'NBCBS-250ml', 1991.15, 2, '2022-04-26 09:27:56', '2022-04-26 09:27:56'),
(338, 226, '178ml', 'CEGDS-178ml', 2079.64, 2, '2022-04-26 09:47:37', '2022-04-26 09:47:37'),
(339, 227, '150', 'fpo-150', 240.00, 10, '2022-04-27 03:54:34', '2022-04-27 03:54:34'),
(340, 227, '200', 'fpo-200', 360.00, 10, '2022-04-27 03:54:34', '2022-04-27 03:54:34'),
(341, 227, '100', 'fpo-100', 180.00, 10, '2022-04-27 03:54:34', '2022-04-27 03:54:34'),
(342, 228, '42keys', 'PH-42keys', 25500.00, 10, '2022-04-27 07:39:01', '2022-04-27 07:39:01'),
(343, 229, 'White-', 'CDrc-White-', 3530.00, 10, '2022-04-27 10:47:49', '2022-04-27 10:47:49'),
(344, 230, '144g', 'CDCB-144g', 1106.19, 2, '2022-04-28 14:40:07', '2022-04-28 15:55:43'),
(345, 231, '230ml', 'CBW&S-230ml', 2522.12, 2, '2022-04-28 15:55:12', '2022-04-28 15:55:12'),
(346, 232, 'Black', 'SSop-Black', 2290.00, 4, '2022-05-04 09:10:30', '2022-05-04 09:10:30'),
(347, 232, 'BlanchedAlmond', 'SSop-BlanchedAlmond', 2290.00, 4, '2022-05-04 09:10:30', '2022-05-04 09:10:30'),
(348, 232, 'Pink', 'SSop-Pink', 2290.00, 4, '2022-05-04 09:10:30', '2022-05-04 09:10:30'),
(349, 232, 'YellowGreen', 'SSop-YellowGreen', 2290.00, 4, '2022-05-04 09:10:30', '2022-05-04 09:10:30'),
(350, 233, 'Black', 'P-Black', 1590.00, 10, '2022-05-04 09:34:27', '2022-05-04 09:34:27'),
(351, 233, 'LightSlateGray', 'P-LightSlateGray', 1590.00, 10, '2022-05-04 09:34:27', '2022-05-04 09:34:27'),
(352, 233, 'MediumPurple', 'P-MediumPurple', 1590.00, 10, '2022-05-04 09:34:27', '2022-05-04 09:34:27'),
(353, 233, 'SaddleBrown', 'P-SaddleBrown', 1590.00, 10, '2022-05-04 09:34:27', '2022-05-04 09:34:27'),
(354, 234, 'Black', 'hs-Black', 990.00, 1, '2022-05-04 09:52:49', '2022-05-04 09:52:49'),
(355, 234, 'GhostWhite', 'hs-GhostWhite', 990.00, 1, '2022-05-04 09:52:49', '2022-05-04 09:52:49'),
(356, 234, 'MediumPurple', 'hs-MediumPurple', 990.00, 1, '2022-05-04 09:52:49', '2022-05-04 09:52:49'),
(357, 235, '226g', 'CBUSLwSB-226g', 2522.12, 2, '2022-05-12 08:53:11', '2022-05-12 08:53:11'),
(358, 236, '50ml', 'CRRDFMwS-50ml', 2522.12, 1, '2022-05-26 06:49:19', '2022-05-28 16:13:07'),
(359, 237, 'Black', 'Haw-Black', 2500.00, 5, '2022-05-29 09:10:27', '2022-05-29 09:10:27'),
(360, 238, 'Black', 'MAW-Black', 4500.00, 10, '2022-05-30 07:26:50', '2022-05-30 07:26:50'),
(361, 239, 'Black-Small', 'T-Black-Small', 1500.00, 1, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(362, 239, 'Black-medium', 'T-Black-medium', 1500.00, 1, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(363, 239, 'Black-large', 'T-Black-large', 1500.00, 1, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(364, 239, 'White-Small', 'T-White-Small', 1500.00, 5, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(365, 239, 'White-medium', 'T-White-medium', 1500.00, 2, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(366, 239, 'White-large', 'T-White-large', 1500.00, 1, '2022-05-31 10:14:03', '2022-05-31 10:14:03'),
(367, 242, 'Black', 'lB-Black', 1499.00, 10, '2022-06-08 12:15:09', '2022-06-08 12:15:09'),
(368, 242, 'Brown', 'lB-Brown', 1499.00, 10, '2022-06-08 12:15:09', '2022-06-08 12:15:09'),
(369, 242, 'DarkGray', 'lB-DarkGray', 1499.00, 10, '2022-06-08 12:15:09', '2022-06-08 12:15:09'),
(370, 242, 'LightBlue', 'lB-LightBlue', 1499.00, 10, '2022-06-08 12:15:09', '2022-06-08 12:15:09'),
(371, 242, 'PeachPuff', 'lB-PeachPuff', 1499.00, 10, '2022-06-08 12:15:09', '2022-06-08 12:15:09'),
(372, 243, 'Black', 'LB-Black', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(373, 243, 'Chocolate', 'LB-Chocolate', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(374, 243, 'DarkOliveGreen', 'LB-DarkOliveGreen', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(375, 243, 'LightBlue', 'LB-LightBlue', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(376, 243, 'LightSkyBlue', 'LB-LightSkyBlue', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(377, 243, 'PeachPuff', 'LB-PeachPuff', 1499.00, 10, '2022-06-08 12:23:38', '2022-06-08 12:23:38'),
(378, 244, 'Black-', 'LB-Black-', 1298.99, 10, '2022-06-08 12:39:50', '2022-06-08 12:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_approval` int(1) NOT NULL DEFAULT 0,
  `admin_approval` int(1) NOT NULL DEFAULT 0,
  `refund_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `reason` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_seen` int(11) NOT NULL,
  `refund_status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `refund_requests`
--

INSERT INTO `refund_requests` (`id`, `user_id`, `order_id`, `order_detail_id`, `seller_id`, `seller_approval`, `admin_approval`, `refund_amount`, `reason`, `admin_seen`, `refund_status`, `created_at`, `updated_at`) VALUES
(2, 23, 31, 36, 12, 0, 1, 1400.00, 'I recieved damage product', 1, 1, '2020-09-12 00:55:54', '2020-09-12 00:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `status`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 159, 19, 2, 'Very nice product', 1, 0, '2020-06-04 11:13:07', '2020-06-04 11:13:07'),
(2, 159, 19, 3, 'Very nice product', 1, 0, '2020-06-04 11:13:07', '2020-06-04 11:13:07'),
(3, 159, 19, 3, 'Very nice product', 1, 0, '2020-06-04 11:13:07', '2020-06-04 11:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"10\",\"11\",\"13\",\"14\"]', '2018-10-10 04:39:47', '2020-06-04 10:07:57'),
(2, 'Accountant', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"13\",\"14\"]', '2018-10-10 04:52:09', '2021-08-19 06:36:19'),
(3, 'Delivary Boy', '[\"14\"]', '2021-08-16 09:06:06', '2021-08-16 09:06:06'),
(4, 'Support', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"13\",\"14\"]', '2021-08-19 06:35:50', '2021-08-19 06:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 154, '2020-03-08 00:29:09', '2021-06-07 23:36:58'),
(3, 'das', 168, '2020-03-08 00:29:15', '2021-08-18 17:04:04'),
(4, 'shoe', 166, '2020-06-05 16:54:59', '2021-08-18 17:04:06'),
(5, 'Shampoo', 146, '2020-06-21 08:28:59', '2022-02-06 09:18:21'),
(6, 'Book', 4, '2020-06-30 04:31:34', '2020-11-10 10:04:26'),
(7, 'Meat', 1, '2020-06-30 04:31:48', '2020-06-30 04:31:48'),
(8, 's', 9, '2020-06-30 14:55:57', '2021-12-14 10:36:52'),
(9, 'Mask', 153, '2020-07-03 08:37:28', '2021-06-07 23:36:59'),
(10, 'Ask', 1, '2020-07-03 08:39:25', '2020-07-03 08:39:25'),
(11, 'Roti maker', 3, '2020-07-05 14:52:47', '2020-11-02 09:05:54'),
(12, 'Samsung A9 pro', 1, '2020-07-11 23:16:02', '2020-07-11 23:16:02'),
(13, 'Wi fi', 2, '2020-07-11 23:20:25', '2020-07-11 23:20:32'),
(14, 'Battery', 1, '2020-07-12 07:07:16', '2020-07-12 07:07:16'),
(15, 'Shirt', 8, '2020-07-14 04:52:06', '2020-11-06 09:02:30'),
(16, 'Brown rice', 2, '2020-07-14 07:55:14', '2021-05-21 16:43:27'),
(17, 'Pc', 1, '2020-07-16 13:01:39', '2020-07-16 13:01:39'),
(18, 'Cake', 1, '2020-07-16 13:01:52', '2020-07-16 13:01:52'),
(19, 'watch', 12, '2020-07-21 02:23:17', '2022-05-30 07:29:53'),
(20, 'Wallet', 10, '2020-07-21 08:58:46', '2020-12-10 04:57:51'),
(21, 'Headphone', 4, '2020-07-23 14:59:19', '2022-04-16 07:03:23'),
(22, 'Microphone', 2, '2020-07-23 14:59:43', '2020-11-20 04:44:19'),
(23, 'Jacket', 13, '2020-07-23 15:00:19', '2022-03-29 03:33:22'),
(24, 'nikesoose', 1, '2020-07-24 03:04:11', '2020-07-24 03:04:11'),
(25, 'Daraz', 7, '2020-07-27 02:20:35', '2020-10-18 08:53:39'),
(26, 'Headphones', 2, '2020-07-27 20:04:33', '2020-09-12 06:46:04'),
(27, 'Gift', 2, '2020-07-28 04:53:02', '2020-11-26 01:28:18'),
(28, 'Kurti', 2, '2020-07-29 00:48:43', '2020-07-29 00:48:44'),
(29, 'Badminton shoes', 1, '2020-07-30 00:57:07', '2020-07-30 00:57:07'),
(30, 'Shoes', 32, '2020-07-30 00:57:38', '2022-06-01 06:29:07'),
(31, 'Closet', 2, '2020-07-30 20:25:11', '2020-08-11 00:49:01'),
(32, 'computer', 3, '2020-08-02 09:52:52', '2020-09-14 02:12:25'),
(33, 'Earphone', 5, '2020-08-02 09:55:29', '2020-11-19 00:24:00'),
(34, 'Speaker', 4, '2020-08-02 12:42:11', '2020-12-05 08:26:43'),
(35, 'Speaker bufar', 2, '2020-08-02 12:42:30', '2020-08-02 12:42:48'),
(36, 'Dress', 7, '2020-08-02 13:51:37', '2022-05-26 07:11:13'),
(37, 'Realme x2', 1, '2020-08-03 10:50:15', '2020-08-03 10:50:15'),
(38, 'Earphones', 9, '2020-08-04 05:41:04', '2020-10-01 15:34:38'),
(39, 'Google', 2, '2020-08-04 07:14:41', '2020-11-21 00:43:48'),
(40, 'Tv', 11, '2020-08-05 03:24:11', '2022-05-05 15:36:57'),
(41, 'nokia', 1, '2020-08-05 03:24:35', '2020-08-05 03:24:35'),
(42, 'Running shoes', 1, '2020-08-06 05:01:29', '2020-08-06 05:01:29'),
(43, 'Running spikes', 1, '2020-08-06 05:02:16', '2020-08-06 05:02:16'),
(44, 'Boxer for men', 2, '2020-08-07 08:53:34', '2020-08-07 08:53:39'),
(45, 'Boxer', 2, '2020-08-07 08:54:06', '2020-08-07 08:55:52'),
(46, 'mixture grinder', 2, '2020-08-07 09:35:34', '2020-08-07 09:35:42'),
(47, 'baby carier', 3, '2020-08-07 11:55:12', '2020-08-07 11:55:20'),
(48, 'Intex mobile', 8, '2020-08-13 09:50:07', '2020-08-13 09:50:34'),
(49, 'Intex+mobile', 3, '2020-08-13 09:50:07', '2020-08-13 09:50:32'),
(50, 'Itel mobile', 8, '2020-08-13 11:17:53', '2020-08-13 11:18:10'),
(51, 'Itel+mobile', 2, '2020-08-13 11:17:55', '2020-08-13 11:18:12'),
(52, 'Mobile phone', 13, '2020-08-13 11:20:13', '2022-06-05 14:09:48'),
(53, 'Mobile+phone+', 1, '2020-08-13 11:20:14', '2020-08-13 11:20:14'),
(54, 'Slim belt', 2, '2020-08-14 06:47:00', '2022-03-25 04:59:11'),
(55, 'Intex', 11, '2020-08-14 09:50:25', '2020-08-14 09:50:34'),
(56, 'Boya', 5, '2020-08-15 01:02:26', '2020-11-27 09:54:04'),
(57, 'Boya by m1', 6, '2020-08-15 01:03:32', '2020-08-15 01:04:05'),
(58, 'acer', 1, '2020-08-15 01:04:17', '2020-08-15 01:04:17'),
(59, 'Sandal', 1, '2020-08-15 03:23:25', '2020-08-15 03:23:25'),
(60, 'Boya mic', 2, '2020-08-15 11:02:47', '2020-08-15 11:02:54'),
(61, 'Mic', 3, '2020-08-15 11:03:01', '2020-08-15 11:04:43'),
(62, 'Bag', 10, '2020-08-15 11:39:01', '2022-06-02 02:30:04'),
(63, 'Boot', 5, '2020-08-15 11:39:08', '2020-08-15 11:39:22'),
(64, 'mobile', 9, '2020-08-19 01:30:50', '2022-06-01 15:54:15'),
(65, 'Gorilla tripod', 2, '2020-08-19 08:07:55', '2020-08-19 08:08:08'),
(66, 'tripod', 1, '2020-08-19 08:08:21', '2020-08-19 08:08:21'),
(67, 'shirt for men', 1, '2020-08-20 12:56:49', '2020-08-20 12:56:49'),
(68, 'Belt', 1, '2020-08-20 15:35:29', '2020-08-20 15:35:29'),
(69, 'Mouse', 4, '2020-08-21 02:51:35', '2020-08-27 10:23:12'),
(70, 'computer mouse', 1, '2020-08-21 02:52:01', '2020-08-21 02:52:01'),
(71, 'Grinder', 2, '2020-08-22 01:34:23', '2020-08-22 01:34:27'),
(72, 'Women cloth', 7, '2020-08-22 07:56:55', '2021-07-29 13:56:24'),
(73, 'Women clothing', 1, '2020-08-22 07:57:13', '2020-08-22 07:57:13'),
(74, 'Guitar', 8, '2020-08-26 06:22:38', '2020-08-26 06:25:43'),
(75, 'Keyboard', 2, '2020-08-28 08:22:26', '2022-05-13 05:28:25'),
(76, 'Mike', 1, '2020-08-28 08:26:22', '2020-08-28 08:26:22'),
(77, 'Sweat Slim Belt', 3, '2020-08-28 11:55:45', '2020-10-01 13:05:52'),
(78, 'plastic pot', 1, '2020-09-03 13:20:25', '2020-09-03 13:20:25'),
(79, '3 in 1 trimmer', 1, '2020-09-03 17:16:35', '2020-09-03 17:16:35'),
(80, 'leather bag', 2, '2020-09-06 00:50:26', '2020-11-30 17:14:52'),
(81, 'Meansural cup', 4, '2020-09-06 18:08:49', '2020-09-06 18:08:52'),
(82, 'Meansural+cup', 1, '2020-09-06 18:08:51', '2020-09-06 18:08:51'),
(83, 'Pant', 3, '2020-09-08 13:18:23', '2020-09-08 13:18:53'),
(84, 'Android app development', 1, '2020-09-08 15:39:17', '2020-09-08 15:39:17'),
(85, 'Laptop', 12, '2020-09-08 15:45:23', '2022-06-08 03:16:03'),
(86, 'Solar light', 1, '2020-09-09 06:22:48', '2020-09-09 06:22:48'),
(87, 'Saree', 1, '2020-09-11 14:48:17', '2020-09-11 14:48:17'),
(88, 'trimmer', 6, '2020-09-12 00:48:29', '2022-06-01 16:06:03'),
(89, 'Dog', 1, '2020-09-12 06:44:40', '2020-09-12 06:44:40'),
(90, 'purse', 5, '2020-09-12 15:22:00', '2020-09-25 23:25:54'),
(91, 'hand purse', 1, '2020-09-14 12:16:23', '2020-09-14 12:16:23'),
(92, 'ladiesbag', 1, '2020-09-14 12:16:37', '2020-09-14 12:16:37'),
(93, 'Watches', 3, '2020-09-18 10:56:08', '2020-11-18 01:42:08'),
(94, 'Sleeping bag', 1, '2020-09-29 10:19:11', '2020-09-29 10:19:11'),
(95, 'face', 2, '2020-10-01 06:03:55', '2022-03-29 06:27:53'),
(96, 'head phone with microphone', 3, '2020-10-02 04:58:26', '2020-10-02 04:59:35'),
(97, 'realme', 2, '2020-10-03 05:12:58', '2020-10-03 05:14:22'),
(98, 'Miksar', 2, '2020-10-04 12:05:52', '2020-10-04 12:05:54'),
(99, 'Grender', 1, '2020-10-04 12:06:13', '2020-10-04 12:06:13'),
(100, 'laptops', 2, '2020-10-05 03:54:59', '2020-11-29 15:09:54'),
(101, 'oven', 1, '2020-10-05 04:34:01', '2020-10-05 04:34:01'),
(102, 'Skin product', 2, '2020-10-05 12:07:33', '2020-10-05 12:07:34'),
(103, 'a', 3, '2020-10-06 03:33:53', '2022-03-28 10:25:58'),
(104, 'kayaplus', 1, '2020-10-07 03:11:46', '2020-10-07 03:11:46'),
(105, 'Gimbal', 1, '2020-10-09 14:42:46', '2020-10-09 14:42:46'),
(106, 'Hand watch', 1, '2020-10-09 15:29:42', '2020-10-09 15:29:42'),
(107, 'Tshrt', 3, '2020-10-11 03:56:40', '2020-10-11 03:56:58'),
(108, 'Cloth', 2, '2020-10-11 12:50:27', '2020-10-11 12:50:40'),
(109, 'Shoes for girls', 2, '2020-10-17 03:24:42', '2020-10-17 03:24:45'),
(110, 'Hair iron', 1, '2020-10-17 06:59:56', '2020-10-17 06:59:56'),
(111, 'coats', 1, '2020-10-21 02:30:32', '2020-10-21 02:30:32'),
(112, 'Nike', 2, '2020-10-22 03:43:17', '2020-10-22 03:43:27'),
(113, 'pw.@mymandu123#', 1, '2020-10-23 04:33:08', '2020-10-23 04:33:08'),
(114, 'sun', 2, '2020-10-27 06:05:28', '2020-10-27 06:10:55'),
(115, 'sunglasses', 1, '2020-10-27 06:08:39', '2020-10-27 06:08:39'),
(116, 'oil', 1, '2020-10-30 15:18:28', '2020-10-30 15:18:28'),
(117, 'finger sleeve', 1, '2020-11-02 07:34:15', '2020-11-02 07:34:15'),
(118, 'airpod', 1, '2020-11-02 09:09:25', '2020-11-02 09:09:25'),
(119, 'airpod case', 1, '2020-11-02 09:09:35', '2020-11-02 09:09:35'),
(120, 'Realme c11', 4, '2020-11-02 11:24:00', '2020-11-02 11:24:58'),
(121, 'canvas', 3, '2020-11-03 07:00:19', '2022-05-12 00:56:20'),
(122, 'stylish bag', 2, '2020-11-04 05:56:38', '2020-12-09 00:49:43'),
(123, 'mens luggage bag', 2, '2020-11-05 13:34:34', '2020-12-09 00:49:35'),
(124, 'Trouser sut for man', 3, '2020-11-05 14:24:41', '2020-11-05 14:24:46'),
(125, 'Trouser', 1, '2020-11-05 14:24:54', '2020-11-05 14:24:54'),
(126, 'latest shoes', 2, '2020-11-06 01:55:57', '2020-11-07 12:47:54'),
(127, 'cup', 1, '2020-11-06 06:19:00', '2020-11-06 06:19:00'),
(128, 'combo', 1, '2020-11-06 07:51:56', '2020-11-06 07:51:56'),
(129, 'stemer', 2, '2020-11-07 01:04:14', '2020-11-07 01:16:43'),
(130, 'gta 5', 4, '2020-11-07 12:46:10', '2020-11-07 12:46:38'),
(131, 'games', 1, '2020-11-07 12:46:56', '2020-11-07 12:46:56'),
(132, 'walet', 1, '2020-11-08 09:02:18', '2020-11-08 09:02:18'),
(133, 'Exfoliator', 3, '2020-11-08 14:22:33', '2020-11-08 14:22:52'),
(134, 'Boom', 1, '2020-11-10 10:04:07', '2020-11-10 10:04:07'),
(135, 't shirt', 2, '2020-11-10 12:28:28', '2022-06-04 17:42:56'),
(136, 'Ram', 1, '2020-11-11 08:06:04', '2020-11-11 08:06:04'),
(137, 'Finger sleeves', 1, '2020-11-11 13:16:22', '2020-11-11 13:16:22'),
(138, 'Pubg', 1, '2020-11-11 13:16:38', '2020-11-11 13:16:38'),
(139, 'Iphone 11', 1, '2020-11-11 13:45:37', '2020-11-11 13:45:37'),
(140, 'Hoodies', 4, '2020-11-11 13:52:18', '2020-11-18 11:42:08'),
(141, 'amazon alexa', 1, '2020-11-13 07:34:32', '2020-11-13 07:34:32'),
(142, 'smart speaker', 1, '2020-11-13 07:35:27', '2020-11-13 07:35:27'),
(143, 'Shoes for men', 2, '2020-11-13 09:13:11', '2020-11-13 09:15:09'),
(144, 'Books', 1, '2020-11-13 15:44:32', '2020-11-13 15:44:32'),
(145, 'Watch women', 1, '2020-11-15 16:58:44', '2020-11-15 16:58:44'),
(146, 'Mens wear', 1, '2020-11-17 01:57:39', '2020-11-17 01:57:39'),
(147, 'Smartwatch', 1, '2020-11-17 06:23:58', '2020-11-17 06:23:58'),
(148, 'Trench coats', 1, '2020-11-17 14:23:32', '2020-11-17 14:23:32'),
(149, 'All', 3, '2020-11-18 01:27:16', '2020-11-18 01:28:42'),
(150, 'Cloths', 3, '2020-11-18 01:27:33', '2020-11-30 00:45:13'),
(151, 'Shose', 2, '2020-11-18 01:27:46', '2020-11-18 01:28:35'),
(152, 'Macbook', 1, '2020-11-18 06:49:13', '2020-11-18 06:49:13'),
(153, 'Router', 5, '2020-11-18 09:38:29', '2020-11-18 09:39:22'),
(154, 'Franiture', 1, '2020-11-18 11:09:15', '2020-11-18 11:09:15'),
(155, 'Tshirts', 1, '2020-11-18 11:41:47', '2020-11-18 11:41:47'),
(156, 'Dish washer gloves', 2, '2020-11-18 12:53:46', '2020-11-18 12:54:15'),
(157, 'Camera', 1, '2020-11-19 01:54:37', '2020-11-19 01:54:37'),
(158, 'electric bbq grill', 2, '2020-11-19 03:22:26', '2020-11-19 03:24:15'),
(159, 'Silicon foot wear', 2, '2020-11-20 02:23:50', '2020-12-01 10:17:51'),
(160, 'Rodpanty', 1, '2020-11-20 07:18:44', '2020-11-20 07:18:44'),
(161, 'heater', 1, '2020-11-20 10:11:41', '2020-11-20 10:11:41'),
(162, 'weight gaining products', 1, '2020-11-20 14:37:42', '2020-11-20 14:37:42'),
(163, 'Dell', 1, '2020-11-20 22:43:53', '2020-11-20 22:43:53'),
(164, 'guggle', 3, '2020-11-21 00:44:20', '2020-11-21 00:44:33'),
(165, 'guggleचस्मा', 1, '2020-11-21 00:45:14', '2020-11-21 00:45:14'),
(166, 'चस्मा', 1, '2020-11-21 00:46:09', '2020-11-21 00:46:09'),
(167, 'Hoodi', 1, '2020-11-21 01:14:58', '2020-11-21 01:14:58'),
(168, 'Nivea shoes', 2, '2020-11-21 02:21:35', '2020-11-21 02:21:39'),
(169, 'Nevia shoes', 1, '2020-11-21 02:22:35', '2020-11-21 02:22:35'),
(170, 'Condom', 3, '2020-11-21 08:16:05', '2022-06-07 15:34:36'),
(171, 'Realme mobile phone', 1, '2020-11-21 23:10:51', '2020-11-21 23:10:51'),
(172, 'jug', 2, '2020-11-22 01:47:03', '2020-12-07 03:14:45'),
(173, '32\'\' led tv', 1, '2020-11-22 10:41:40', '2020-11-22 10:41:40'),
(174, 'Allstar', 1, '2020-11-24 02:36:11', '2020-11-24 02:36:11'),
(175, 'Converse', 2, '2020-11-24 02:36:28', '2020-11-24 02:36:35'),
(176, 'Glasses', 4, '2020-11-25 01:35:19', '2020-11-25 01:35:29'),
(177, 'Steamer', 1, '2020-11-25 06:41:38', '2020-11-25 06:41:38'),
(178, 'sunglass', 1, '2020-11-25 14:03:17', '2020-11-25 14:03:17'),
(179, 'Hade phone', 1, '2020-11-25 14:37:32', '2020-11-25 14:37:32'),
(180, 'Ear phone', 1, '2020-11-25 14:37:50', '2020-11-25 14:37:50'),
(181, 'Baby diper', 1, '2020-11-25 16:53:00', '2020-11-25 16:53:00'),
(182, 'study lamp', 1, '2020-11-26 10:45:52', '2020-11-26 10:45:52'),
(183, 'Tik tok stan', 1, '2020-11-26 12:36:18', '2020-11-26 12:36:18'),
(184, 'Iphone', 1, '2020-11-26 13:17:27', '2020-11-26 13:17:27'),
(185, 'Steam inhaler', 1, '2020-11-27 03:21:35', '2020-11-27 03:21:35'),
(186, 'gkk 360', 1, '2020-11-27 04:18:30', '2020-11-27 04:18:30'),
(187, 'mobile case', 1, '2020-11-27 04:18:43', '2020-11-27 04:18:43'),
(188, 'pu all in one wallet', 1, '2020-11-27 04:21:00', '2020-11-27 04:21:00'),
(189, 'redmi 9a', 1, '2020-11-27 05:12:45', '2020-11-27 05:12:45'),
(190, 'baby dress', 1, '2020-11-27 12:52:26', '2020-11-27 12:52:26'),
(191, 'Colour ful electric jug 2 litter', 3, '2020-11-27 16:05:10', '2020-11-27 16:05:28'),
(192, 'Utensil washing gloves', 3, '2020-11-27 16:29:43', '2020-11-27 16:29:49'),
(193, 'Globes', 2, '2020-11-27 16:30:03', '2020-11-27 16:30:03'),
(194, 'Gloves', 1, '2020-11-27 16:30:10', '2020-11-27 16:30:10'),
(195, 'Cupboard', 4, '2020-11-28 12:28:02', '2020-11-28 12:28:10'),
(196, 'Nonsty pan', 1, '2020-11-28 14:04:06', '2020-11-28 14:04:06'),
(197, 'pan', 1, '2020-11-28 14:04:12', '2020-11-28 14:04:12'),
(198, 'p', 1, '2020-11-28 14:04:35', '2020-11-28 14:04:35'),
(199, 'Fry pan', 1, '2020-11-28 14:04:48', '2020-11-28 14:04:48'),
(200, 'erkie', 4, '2020-11-28 14:07:49', '2020-11-28 14:09:27'),
(201, 'Sex toyes', 2, '2020-11-28 14:10:24', '2020-11-28 14:10:26'),
(202, 'curtains', 1, '2020-11-28 23:28:27', '2020-11-28 23:28:27'),
(203, 'glass', 2, '2020-11-29 02:13:34', '2020-11-29 02:13:57'),
(204, 'glass for men', 1, '2020-11-29 02:13:48', '2020-11-29 02:13:48'),
(205, 'Winter jacket', 2, '2020-11-29 02:25:10', '2020-11-29 02:25:11'),
(206, 'School bags', 2, '2020-11-29 06:56:43', '2020-11-29 06:56:46'),
(207, 'Digital taraju', 1, '2020-11-29 13:24:10', '2020-11-29 13:24:10'),
(208, 'Mobile cover', 1, '2020-11-29 13:35:35', '2020-11-29 13:35:35'),
(209, 'Usupso', 1, '2020-11-29 14:39:42', '2020-11-29 14:39:42'),
(210, 'Dell laptops', 1, '2020-11-29 15:11:19', '2020-11-29 15:11:19'),
(211, 'table', 1, '2020-11-30 03:11:31', '2020-11-30 03:11:31'),
(212, 'Hainek', 1, '2020-11-30 06:09:35', '2020-11-30 06:09:35'),
(213, 'Electric ketle', 1, '2020-11-30 10:48:45', '2020-11-30 10:48:45'),
(214, 'School bag', 2, '2020-11-30 11:19:51', '2020-11-30 11:20:00'),
(215, 'Jocket jeans', 2, '2020-11-30 11:42:12', '2020-11-30 11:42:20'),
(216, 'Jocket', 1, '2020-11-30 11:42:57', '2020-11-30 11:42:57'),
(217, 'gold star', 1, '2020-11-30 14:40:44', '2020-11-30 14:40:44'),
(218, 'leather jacket', 1, '2020-11-30 17:14:37', '2020-11-30 17:14:37'),
(219, 'Eye wash cup', 4, '2020-12-01 14:01:27', '2020-12-01 14:01:52'),
(220, 'Womens clothing', 2, '2020-12-02 06:40:12', '2020-12-02 06:40:29'),
(221, 'Folding daraz', 1, '2020-12-04 05:52:17', '2020-12-04 05:52:17'),
(222, 'coat', 1, '2020-12-04 08:25:26', '2020-12-04 08:25:26'),
(223, 'Cumin seeds', 1, '2020-12-05 06:09:46', '2020-12-05 06:09:46'),
(224, 'drone', 1, '2020-12-05 08:26:02', '2020-12-05 08:26:02'),
(225, 'Jackets', 2, '2020-12-05 13:53:34', '2020-12-05 13:53:45'),
(226, 'Shoose', 5, '2020-12-06 04:27:13', '2020-12-06 04:27:29'),
(227, 'Hoods uman', 1, '2020-12-06 04:27:55', '2020-12-06 04:27:55'),
(228, 'Hoods', 9, '2020-12-06 04:28:05', '2020-12-06 04:28:26'),
(229, 'Hood women', 1, '2020-12-06 04:28:47', '2020-12-06 04:28:47'),
(230, 'Hoods women', 1, '2020-12-06 04:29:09', '2020-12-06 04:29:09'),
(231, 'Luga', 2, '2020-12-06 04:29:18', '2020-12-06 04:29:21'),
(232, 'Shoping', 2, '2020-12-06 04:29:33', '2020-12-06 04:29:36'),
(233, 'Brss', 1, '2020-12-06 04:29:49', '2020-12-06 04:29:49'),
(234, 'Adidas mens shoes', 1, '2020-12-06 10:54:07', '2020-12-06 10:54:07'),
(235, 'Electric jag', 5, '2020-12-06 12:44:11', '2020-12-06 12:44:27'),
(236, 'Memory card', 4, '2020-12-06 23:27:41', '2022-06-01 10:53:02'),
(237, 'Shoes for geans', 1, '2020-12-07 01:46:28', '2020-12-07 01:46:28'),
(238, 'Shoes for jeans', 2, '2020-12-07 01:46:42', '2020-12-07 01:46:51'),
(239, 'Jaket', 1, '2020-12-07 02:37:23', '2020-12-07 02:37:23'),
(240, 'Nike shoes', 1, '2020-12-07 07:30:58', '2020-12-07 07:30:58'),
(241, 'shoes men', 1, '2020-12-07 07:31:35', '2020-12-07 07:31:35'),
(242, 'Tab', 2, '2020-12-08 06:11:13', '2020-12-08 06:12:57'),
(243, 'Tabs', 1, '2020-12-08 06:13:35', '2020-12-08 06:13:35'),
(244, 'trekking bag', 1, '2020-12-09 00:48:27', '2020-12-09 00:48:27'),
(245, 'bags', 1, '2020-12-09 00:48:33', '2020-12-09 00:48:33'),
(246, 'travel bag', 1, '2020-12-09 00:49:01', '2020-12-09 00:49:01'),
(247, 'grey taps sport bag', 1, '2020-12-09 00:49:15', '2020-12-09 00:49:15'),
(248, 'luggage bag', 1, '2020-12-09 00:49:23', '2020-12-09 00:49:23'),
(249, 'lether bag', 1, '2020-12-09 00:49:51', '2020-12-09 00:49:51'),
(250, 'electric rice cooker', 3, '2020-12-09 07:01:44', '2020-12-09 07:03:22'),
(251, 'Tiktok stand', 1, '2020-12-09 13:02:07', '2020-12-09 13:02:07'),
(252, 'snikers shoes', 1, '2020-12-10 07:44:53', '2020-12-10 07:44:53'),
(253, 'Jeans', 3, '2020-12-11 00:56:13', '2020-12-11 00:56:25'),
(254, 'Vivo', 3, '2020-12-11 07:15:41', '2020-12-11 07:16:20'),
(255, 'hand globs', 1, '2020-12-11 08:36:17', '2020-12-11 08:36:17'),
(256, 'Cat food', 1, '2021-01-24 04:19:33', '2021-01-24 04:19:33'),
(257, 'Facewash', 1, '2021-02-03 06:46:17', '2021-02-03 06:46:17'),
(258, 'YsJP', 5, '2021-04-17 18:24:15', '2021-04-17 18:24:44'),
(259, '9855', 1, '2021-04-17 18:24:25', '2021-04-17 18:24:25'),
(260, 'YsJP).\')..,\"((', 1, '2021-04-17 18:24:28', '2021-04-17 18:24:28'),
(261, 'YsJP\'dmwDFL<\'\">UkMmVX', 1, '2021-04-17 18:24:31', '2021-04-17 18:24:31'),
(262, 'YdDu', 5, '2021-04-18 10:59:59', '2021-04-18 11:00:33'),
(263, '8341', 1, '2021-04-18 11:00:09', '2021-04-18 11:00:09'),
(264, 'YdDu(,..\',,.,\"', 1, '2021-04-18 11:00:15', '2021-04-18 11:00:15'),
(265, 'YdDu\'KtrCGX<\'\">qcWAaW', 1, '2021-04-18 11:00:21', '2021-04-18 11:00:21'),
(266, 'ofEP', 5, '2021-04-29 17:36:11', '2021-04-29 17:36:39'),
(267, '3530', 1, '2021-04-29 17:36:20', '2021-04-29 17:36:20'),
(268, 'ofEP(.\'),(.\".)', 1, '2021-04-29 17:36:24', '2021-04-29 17:36:24'),
(269, 'ofEP\'MmQvwU<\'\">xbNbrM', 1, '2021-04-29 17:36:27', '2021-04-29 17:36:27'),
(270, 'EGrb', 17, '2021-05-01 22:30:21', '2021-05-01 22:31:36'),
(271, '2634', 1, '2021-05-01 22:30:45', '2021-05-01 22:30:45'),
(272, 'EGrb(.().,,\',\"', 1, '2021-05-01 22:30:50', '2021-05-01 22:30:50'),
(273, 'EGrb\'DfxQIj<\'\">Kpnxda', 1, '2021-05-01 22:30:55', '2021-05-01 22:30:55'),
(274, 'oRrt', 2, '2021-05-01 22:33:26', '2021-05-01 22:33:32'),
(275, 'zWVr', 14, '2021-05-03 02:06:23', '2021-05-03 02:07:23'),
(276, '7678', 1, '2021-05-03 02:06:30', '2021-05-03 02:06:30'),
(277, 'zWVr\",.))...\')', 1, '2021-05-03 02:06:34', '2021-05-03 02:06:34'),
(278, 'zWVr\'HWSxHZ<\'\">rfmfSj', 1, '2021-05-03 02:06:38', '2021-05-03 02:06:38'),
(279, 'EJNC', 5, '2021-05-03 02:08:13', '2021-05-03 02:08:28'),
(280, 'KmUs', 14, '2021-05-03 15:57:27', '2021-05-03 15:58:16'),
(281, '7124', 1, '2021-05-03 15:57:34', '2021-05-03 15:57:34'),
(282, 'KmUs.\'()(.)((\"', 1, '2021-05-03 15:57:36', '2021-05-03 15:57:36'),
(283, 'KmUs\'GwjCPv<\'\">uqJyZA', 1, '2021-05-03 15:57:39', '2021-05-03 15:57:39'),
(284, 'KMam', 5, '2021-05-03 15:58:19', '2021-05-03 15:58:33'),
(285, 'HYVS', 5, '2021-05-04 14:14:58', '2021-05-04 14:15:21'),
(286, '2456', 1, '2021-05-04 14:15:05', '2021-05-04 14:15:05'),
(287, 'HYVS)\',)),,..\"', 1, '2021-05-04 14:15:08', '2021-05-04 14:15:08'),
(288, 'HYVS\'TDROcC<\'\">obzLoF', 1, '2021-05-04 14:15:11', '2021-05-04 14:15:11'),
(289, 'Pfwd', 14, '2021-05-04 14:17:28', '2021-05-04 14:18:27'),
(290, 'ZUeN', 17, '2021-05-07 06:32:06', '2021-05-07 06:33:13'),
(291, '8088', 1, '2021-05-07 06:32:25', '2021-05-07 06:32:25'),
(292, 'ZUeN)\'\",)),(()', 1, '2021-05-07 06:32:29', '2021-05-07 06:32:29'),
(293, 'ZUeN\'HzSydj<\'\">cyaLLl', 1, '2021-05-07 06:32:32', '2021-05-07 06:32:32'),
(294, 'CtaF', 2, '2021-05-07 06:34:04', '2021-05-07 06:34:07'),
(295, 'XvhB', 5, '2021-05-08 07:51:55', '2021-05-08 07:52:21'),
(296, '6024', 1, '2021-05-08 07:52:03', '2021-05-08 07:52:03'),
(297, 'XvhB))\"\'...(.,', 1, '2021-05-08 07:52:07', '2021-05-08 07:52:07'),
(298, 'XvhB\'zvKRjy<\'\">ikSZyH', 1, '2021-05-08 07:52:10', '2021-05-08 07:52:10'),
(299, 'oBYY', 14, '2021-05-08 07:54:34', '2021-05-08 07:55:23'),
(300, 'Iqpn', 14, '2021-05-09 12:10:57', '2021-05-09 12:11:54'),
(301, '2256', 1, '2021-05-09 12:11:05', '2021-05-09 12:11:05'),
(302, 'Iqpn.).,\")\',()', 1, '2021-05-09 12:11:09', '2021-05-09 12:11:09'),
(303, 'Iqpn\'iUCjTK<\'\">lBbThx', 1, '2021-05-09 12:11:13', '2021-05-09 12:11:13'),
(304, 'CPHf', 5, '2021-05-09 12:12:09', '2021-05-09 12:12:24'),
(305, 'SGwu', 5, '2021-05-10 02:49:57', '2021-05-10 02:50:24'),
(306, '6346', 1, '2021-05-10 02:50:05', '2021-05-10 02:50:05'),
(307, 'SGwu,\'),(\"(),.', 1, '2021-05-10 02:50:09', '2021-05-10 02:50:09'),
(308, 'SGwu\'WBSObN<\'\">qfJAVG', 1, '2021-05-10 02:50:13', '2021-05-10 02:50:13'),
(309, 'faAd', 14, '2021-05-10 02:51:34', '2021-05-10 02:52:24'),
(310, 'UfVf', 5, '2021-05-11 13:51:00', '2021-05-11 13:51:24'),
(311, '9290', 1, '2021-05-11 13:51:07', '2021-05-11 13:51:07'),
(312, 'UfVf.))))(\"(\',', 1, '2021-05-11 13:51:10', '2021-05-11 13:51:10'),
(313, 'UfVf\'IsaTJY<\'\">FWAUhr', 1, '2021-05-11 13:51:14', '2021-05-11 13:51:14'),
(314, 'Zfmv', 14, '2021-05-11 13:51:28', '2021-05-11 13:52:12'),
(315, 'XijQ', 5, '2021-05-13 01:10:00', '2021-05-13 01:10:21'),
(316, '2820', 1, '2021-05-13 01:10:07', '2021-05-13 01:10:07'),
(317, 'XijQ\'(..,,(\".(', 1, '2021-05-13 01:10:09', '2021-05-13 01:10:09'),
(318, 'XijQ\'LyeVDz<\'\">RdhbpV', 1, '2021-05-13 01:10:12', '2021-05-13 01:10:12'),
(319, 'ozKR', 14, '2021-05-13 01:12:11', '2021-05-13 01:13:00'),
(320, 'Kipb', 14, '2021-05-15 17:21:36', '2021-05-15 17:23:09'),
(321, '9762', 1, '2021-05-15 17:22:06', '2021-05-15 17:22:06'),
(322, 'Kipb,.)\'.)\".),', 1, '2021-05-15 17:22:27', '2021-05-15 17:22:27'),
(323, 'Kipb\'QEcQRd<\'\">uKxNud', 1, '2021-05-15 17:22:33', '2021-05-15 17:22:33'),
(324, 'iGdA', 6, '2021-05-15 17:23:13', '2021-05-15 17:28:55'),
(325, 'NLjl', 17, '2021-05-19 09:07:59', '2021-05-19 09:08:51'),
(326, '6329', 1, '2021-05-19 09:08:14', '2021-05-19 09:08:14'),
(327, 'NLjl,,..\"\'(.))', 1, '2021-05-19 09:08:16', '2021-05-19 09:08:16'),
(328, 'NLjl\'VAAVXA<\'\">yWPcRs', 1, '2021-05-19 09:08:19', '2021-05-19 09:08:19'),
(329, 'pVFs', 2, '2021-05-19 09:09:18', '2021-05-19 09:09:22'),
(330, 'QeYw', 88, '2021-06-10 01:04:26', '2021-06-10 01:12:47'),
(331, '7637', 1, '2021-06-10 01:04:35', '2021-06-10 01:04:35'),
(332, 'QeYw)\',).,.,\")', 1, '2021-06-10 01:04:39', '2021-06-10 01:04:39'),
(333, 'QeYw\'vvTYYh<\'\">dqRolS', 1, '2021-06-10 01:04:42', '2021-06-10 01:04:42'),
(334, 'QeYw\')/**/AND/**/4361=9629/**/AND/**/(\'uQnR\'=\'uQnR', 1, '2021-06-10 01:04:50', '2021-06-10 01:04:50'),
(335, 'QeYw\')/**/AND/**/4184=4184/**/AND/**/(\'rOea\'=\'rOea', 1, '2021-06-10 01:04:54', '2021-06-10 01:04:54'),
(336, 'QeYw\')/**/AND/**/8287=4605/**/AND/**/(\'ujBZ\'=\'ujBZ', 1, '2021-06-10 01:04:58', '2021-06-10 01:04:58'),
(337, 'QeYw\'/**/AND/**/1533=2353/**/AND/**/\'tmtR\'=\'tmtR', 1, '2021-06-10 01:05:01', '2021-06-10 01:05:01'),
(338, 'QeYw\'/**/AND/**/4184=4184/**/AND/**/\'aQMz\'=\'aQMz', 1, '2021-06-10 01:05:04', '2021-06-10 01:05:04'),
(339, 'QeYw\'/**/AND/**/8544=9192/**/AND/**/\'jCkQ\'=\'jCkQ', 1, '2021-06-10 01:05:07', '2021-06-10 01:05:07'),
(340, 'QeYw)/**/AND/**/4474=3119/**/AND/**/(7059=7059', 1, '2021-06-10 01:05:10', '2021-06-10 01:05:10'),
(341, 'QeYw)/**/AND/**/4184=4184/**/AND/**/(9971=9971', 1, '2021-06-10 01:05:13', '2021-06-10 01:05:13'),
(342, 'QeYw)/**/AND/**/3389=6137/**/AND/**/(8071=8071', 1, '2021-06-10 01:05:16', '2021-06-10 01:05:16'),
(343, 'QeYw/**/AND/**/6761=5743', 1, '2021-06-10 01:05:18', '2021-06-10 01:05:18'),
(344, 'QeYw/**/AND/**/4184=4184', 1, '2021-06-10 01:05:21', '2021-06-10 01:05:21'),
(345, 'QeYw/**/AND/**/2763=1825', 1, '2021-06-10 01:05:24', '2021-06-10 01:05:24'),
(346, 'QeYw/**/AND/**/1641=1920--/**/jBJa', 1, '2021-06-10 01:05:27', '2021-06-10 01:05:27'),
(347, 'QeYw/**/AND/**/4184=4184--/**/odlP', 1, '2021-06-10 01:05:30', '2021-06-10 01:05:30'),
(348, 'QeYw/**/AND/**/8251=4126--/**/htKx', 1, '2021-06-10 01:05:33', '2021-06-10 01:05:33'),
(349, '(SELECT/**/(CASE/**/WHEN/**/(1078=1256)/**/THEN/**/\'QeYw\'/**/ELSE/**/(SELECT/**/1256/**/UNION/**/SELECT/**/1222)/**/END))', 1, '2021-06-10 01:05:36', '2021-06-10 01:05:36'),
(350, '(SELECT/**/(CASE/**/WHEN/**/(1578=1578)/**/THEN/**/\'QeYw\'/**/ELSE/**/(SELECT/**/5131/**/UNION/**/SELECT/**/8858)/**/END))', 1, '2021-06-10 01:05:39', '2021-06-10 01:05:39'),
(351, '(SELECT/**/(CASE/**/WHEN/**/(1528=3795)/**/THEN/**/\'QeYw\'/**/ELSE/**/(SELECT/**/3795/**/UNION/**/SELECT/**/9358)/**/END))', 1, '2021-06-10 01:05:42', '2021-06-10 01:05:42'),
(352, 'QeYw\')/**/AND/**/EXTRACTVALUE(8863,CONCAT(0x5c,0x7162626a71,(SELECT/**/(ELT(8863=8863,1))),0x7162627671))/**/AND/**/(\'kQRM\'=\'kQRM', 1, '2021-06-10 01:05:45', '2021-06-10 01:05:45'),
(353, 'QeYw\'/**/AND/**/EXTRACTVALUE(8863,CONCAT(0x5c,0x7162626a71,(SELECT/**/(ELT(8863=8863,1))),0x7162627671))/**/AND/**/\'amPi\'=\'amPi', 1, '2021-06-10 01:05:47', '2021-06-10 01:05:47'),
(354, 'QeYw)/**/AND/**/EXTRACTVALUE(8863,CONCAT(0x5c,0x7162626a71,(SELECT/**/(ELT(8863=8863,1))),0x7162627671))/**/AND/**/(7003=7003', 1, '2021-06-10 01:05:50', '2021-06-10 01:05:50'),
(355, 'QeYw/**/AND/**/EXTRACTVALUE(8863,CONCAT(0x5c,0x7162626a71,(SELECT/**/(ELT(8863=8863,1))),0x7162627671))', 1, '2021-06-10 01:05:53', '2021-06-10 01:05:53'),
(356, 'QeYw/**/AND/**/EXTRACTVALUE(8863,CONCAT(0x5c,0x7162626a71,(SELECT/**/(ELT(8863=8863,1))),0x7162627671))--/**/mckd', 1, '2021-06-10 01:05:56', '2021-06-10 01:05:56'),
(357, 'QeYw\')/**/AND/**/6721=CAST((CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(6721=6721)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'Uswr\'=\'Uswr', 1, '2021-06-10 01:05:59', '2021-06-10 01:05:59'),
(358, 'QeYw\'/**/AND/**/6721=CAST((CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(6721=6721)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'noPk\'=\'noPk', 1, '2021-06-10 01:06:02', '2021-06-10 01:06:02'),
(359, 'QeYw)/**/AND/**/6721=CAST((CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(6721=6721)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(3532=3532', 1, '2021-06-10 01:06:06', '2021-06-10 01:06:06'),
(360, 'QeYw/**/AND/**/6721=CAST((CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(6721=6721)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)', 1, '2021-06-10 01:06:09', '2021-06-10 01:06:09'),
(361, 'QeYw/**/AND/**/6721=CAST((CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(6721=6721)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)--/**/aaAC', 1, '2021-06-10 01:06:11', '2021-06-10 01:06:11'),
(362, 'QeYw\')/**/AND/**/3197/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(98)+CHAR(98)+CHAR(106)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(3197=3197)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(98)+CHAR(98)+CHAR(118)+CHAR(113)))/**/AND/**/(\'NpJy\'=\'NpJy', 1, '2021-06-10 01:06:14', '2021-06-10 01:06:14'),
(363, 'QeYw\'/**/AND/**/3197/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(98)+CHAR(98)+CHAR(106)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(3197=3197)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(98)+CHAR(98)+CHAR(118)+CHAR(113)))/**/AND/**/\'bPpi\'=\'bPpi', 1, '2021-06-10 01:06:17', '2021-06-10 01:06:17'),
(364, 'QeYw)/**/AND/**/3197/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(98)+CHAR(98)+CHAR(106)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(3197=3197)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(98)+CHAR(98)+CHAR(118)+CHAR(113)))/**/AND/**/(8808=8808', 1, '2021-06-10 01:06:20', '2021-06-10 01:06:20'),
(365, 'QeYw/**/AND/**/3197/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(98)+CHAR(98)+CHAR(106)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(3197=3197)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(98)+CHAR(98)+CHAR(118)+CHAR(113)))', 1, '2021-06-10 01:06:23', '2021-06-10 01:06:23'),
(366, 'QeYw/**/AND/**/3197/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(98)+CHAR(98)+CHAR(106)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(3197=3197)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(98)+CHAR(98)+CHAR(118)+CHAR(113)))--/**/LUCo', 1, '2021-06-10 01:06:26', '2021-06-10 01:06:26'),
(367, 'QeYw\')/**/AND/**/6482=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(6482=6482)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'BrNA\'=\'BrNA', 1, '2021-06-10 01:06:29', '2021-06-10 01:06:29'),
(368, 'QeYw\'/**/AND/**/6482=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(6482=6482)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'iamq\'=\'iamq', 1, '2021-06-10 01:06:31', '2021-06-10 01:06:31'),
(369, 'QeYw)/**/AND/**/6482=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(6482=6482)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(4460=4460', 1, '2021-06-10 01:06:34', '2021-06-10 01:06:34'),
(370, 'QeYw/**/AND/**/6482=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(6482=6482)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2021-06-10 01:06:38', '2021-06-10 01:06:38'),
(371, 'QeYw/**/AND/**/6482=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(98)||CHR(98)||CHR(106)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(6482=6482)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(98)||CHR(98)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/uTpO', 1, '2021-06-10 01:06:40', '2021-06-10 01:06:40'),
(372, '(SELECT/**/CONCAT(CONCAT(\'qbbjq\',(CASE/**/WHEN/**/(6209=6209)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qbbvq\'))', 1, '2021-06-10 01:06:43', '2021-06-10 01:06:43'),
(373, 'QeYw\');SELECT/**/PG_SLEEP(5)--', 1, '2021-06-10 01:06:46', '2021-06-10 01:06:46'),
(374, 'QeYw\';SELECT/**/PG_SLEEP(5)--', 1, '2021-06-10 01:06:49', '2021-06-10 01:06:49'),
(375, 'QeYw);SELECT/**/PG_SLEEP(5)--', 1, '2021-06-10 01:06:51', '2021-06-10 01:06:51'),
(376, 'QeYw;SELECT/**/PG_SLEEP(5)--', 1, '2021-06-10 01:06:54', '2021-06-10 01:06:54'),
(377, 'QeYw\');WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-10 01:06:57', '2021-06-10 01:06:57'),
(378, 'QeYw\';WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-10 01:07:00', '2021-06-10 01:07:00'),
(379, 'QeYw);WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-10 01:07:03', '2021-06-10 01:07:03'),
(380, 'QeYw;WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-10 01:07:06', '2021-06-10 01:07:06'),
(381, 'QeYw\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)||CHR(120)||CHR(78)||CHR(99),5)/**/FROM/**/DUAL--', 1, '2021-06-10 01:07:09', '2021-06-10 01:07:09'),
(382, 'QeYw\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)||CHR(120)||CHR(78)||CHR(99),5)/**/FROM/**/DUAL--', 1, '2021-06-10 01:07:12', '2021-06-10 01:07:12'),
(383, 'QeYw);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)||CHR(120)||CHR(78)||CHR(99),5)/**/FROM/**/DUAL--', 1, '2021-06-10 01:07:14', '2021-06-10 01:07:14'),
(384, 'QeYw;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)||CHR(120)||CHR(78)||CHR(99),5)/**/FROM/**/DUAL--', 1, '2021-06-10 01:07:17', '2021-06-10 01:07:17'),
(385, 'QeYw\')/**/AND/**/(SELECT/**/9138/**/FROM/**/(SELECT(SLEEP(5)))Piql)/**/AND/**/(\'ozmX\'=\'ozmX', 1, '2021-06-10 01:07:21', '2021-06-10 01:07:21'),
(386, 'QeYw\'/**/AND/**/(SELECT/**/9138/**/FROM/**/(SELECT(SLEEP(5)))Piql)/**/AND/**/\'lsAr\'=\'lsAr', 1, '2021-06-10 01:07:23', '2021-06-10 01:07:23'),
(387, 'QeYw)/**/AND/**/(SELECT/**/9138/**/FROM/**/(SELECT(SLEEP(5)))Piql)/**/AND/**/(3790=3790', 1, '2021-06-10 01:07:26', '2021-06-10 01:07:26'),
(388, 'QeYw/**/AND/**/(SELECT/**/9138/**/FROM/**/(SELECT(SLEEP(5)))Piql)', 1, '2021-06-10 01:07:29', '2021-06-10 01:07:29'),
(389, 'QeYw/**/AND/**/(SELECT/**/9138/**/FROM/**/(SELECT(SLEEP(5)))Piql)--/**/Dizu', 1, '2021-06-10 01:07:31', '2021-06-10 01:07:31'),
(390, 'QeYw\')/**/AND/**/1784=(SELECT/**/1784/**/FROM/**/PG_SLEEP(5))/**/AND/**/(\'ZdEf\'=\'ZdEf', 1, '2021-06-10 01:07:34', '2021-06-10 01:07:34'),
(391, 'QeYw\'/**/AND/**/1784=(SELECT/**/1784/**/FROM/**/PG_SLEEP(5))/**/AND/**/\'ukev\'=\'ukev', 1, '2021-06-10 01:07:37', '2021-06-10 01:07:37'),
(392, 'QeYw)/**/AND/**/1784=(SELECT/**/1784/**/FROM/**/PG_SLEEP(5))/**/AND/**/(1931=1931', 1, '2021-06-10 01:07:40', '2021-06-10 01:07:40'),
(393, 'QeYw/**/AND/**/1784=(SELECT/**/1784/**/FROM/**/PG_SLEEP(5))', 1, '2021-06-10 01:07:43', '2021-06-10 01:07:43'),
(394, 'QeYw/**/AND/**/1784=(SELECT/**/1784/**/FROM/**/PG_SLEEP(5))--/**/keym', 1, '2021-06-10 01:07:46', '2021-06-10 01:07:46'),
(395, 'QeYw\')/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(\'YswN\'=\'YswN', 1, '2021-06-10 01:07:49', '2021-06-10 01:07:49'),
(396, 'QeYw\'/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/\'rrij\'=\'rrij', 1, '2021-06-10 01:07:51', '2021-06-10 01:07:51'),
(397, 'QeYw)/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(9956=9956', 1, '2021-06-10 01:07:54', '2021-06-10 01:07:54'),
(398, 'QeYw/**/WAITFOR/**/DELAY/**/\'0:0:5\'', 1, '2021-06-10 01:07:57', '2021-06-10 01:07:57'),
(399, 'QeYw/**/WAITFOR/**/DELAY/**/\'0:0:5\'--/**/YWwG', 1, '2021-06-10 01:08:00', '2021-06-10 01:08:00'),
(400, 'QeYw\')/**/AND/**/1496=DBMS_PIPE.RECEIVE_MESSAGE(CHR(67)||CHR(100)||CHR(110)||CHR(87),5)/**/AND/**/(\'SiUj\'=\'SiUj', 1, '2021-06-10 01:08:02', '2021-06-10 01:08:02'),
(401, 'QeYw\'/**/AND/**/1496=DBMS_PIPE.RECEIVE_MESSAGE(CHR(67)||CHR(100)||CHR(110)||CHR(87),5)/**/AND/**/\'SMGW\'=\'SMGW', 1, '2021-06-10 01:08:05', '2021-06-10 01:08:05'),
(402, 'QeYw)/**/AND/**/1496=DBMS_PIPE.RECEIVE_MESSAGE(CHR(67)||CHR(100)||CHR(110)||CHR(87),5)/**/AND/**/(6350=6350', 1, '2021-06-10 01:08:08', '2021-06-10 01:08:08'),
(403, 'QeYw/**/AND/**/1496=DBMS_PIPE.RECEIVE_MESSAGE(CHR(67)||CHR(100)||CHR(110)||CHR(87),5)', 1, '2021-06-10 01:08:11', '2021-06-10 01:08:11'),
(404, 'QeYw/**/AND/**/1496=DBMS_PIPE.RECEIVE_MESSAGE(CHR(67)||CHR(100)||CHR(110)||CHR(87),5)--/**/CKFY', 1, '2021-06-10 01:08:14', '2021-06-10 01:08:14'),
(405, 'QeYw\')/**/ORDER/**/BY/**/1--/**/gZYM', 1, '2021-06-10 01:08:16', '2021-06-10 01:08:16'),
(406, 'QeYw\')/**/ORDER/**/BY/**/8037--/**/sEDC', 1, '2021-06-10 01:08:19', '2021-06-10 01:08:19'),
(407, 'QeYw\'/**/ORDER/**/BY/**/1--/**/WikY', 1, '2021-06-10 01:08:22', '2021-06-10 01:08:22'),
(408, 'QeYw\'/**/ORDER/**/BY/**/5720--/**/Yeqq', 1, '2021-06-10 01:08:25', '2021-06-10 01:08:25'),
(409, 'QeYw)/**/ORDER/**/BY/**/1--/**/Hgrj', 1, '2021-06-10 01:08:27', '2021-06-10 01:08:27'),
(410, 'QeYw)/**/ORDER/**/BY/**/8597--/**/kWVf', 1, '2021-06-10 01:08:30', '2021-06-10 01:08:30'),
(411, 'QeYw/**/ORDER/**/BY/**/1--/**/tiJR', 1, '2021-06-10 01:08:33', '2021-06-10 01:08:33'),
(412, 'QeYw/**/ORDER/**/BY/**/9421--/**/IfIk', 1, '2021-06-10 01:08:36', '2021-06-10 01:08:36'),
(413, 'QeYw/**/ORDER/**/BY/**/1--/**/tqui', 1, '2021-06-10 01:08:39', '2021-06-10 01:08:39'),
(414, 'QeYw/**/ORDER/**/BY/**/3949--/**/zxAv', 1, '2021-06-10 01:08:42', '2021-06-10 01:08:42'),
(415, 'HWhQ', 349, '2021-06-10 01:29:55', '2021-08-20 06:48:14'),
(416, 'Rain food cover', 7, '2021-06-14 02:23:23', '2021-06-14 02:23:29'),
(417, 'FDQt', 85, '2021-06-14 11:37:20', '2021-06-14 11:43:35'),
(418, '9676', 1, '2021-06-14 11:37:28', '2021-06-14 11:37:28'),
(419, 'FDQt.\",\',(,.,)', 1, '2021-06-14 11:37:31', '2021-06-14 11:37:31'),
(420, 'FDQt\'zHQbIz<\'\">VxyJRa', 1, '2021-06-14 11:37:34', '2021-06-14 11:37:34'),
(421, 'FDQt\')/**/AND/**/1302=4160/**/AND/**/(\'Lgpa\'=\'Lgpa', 1, '2021-06-14 11:37:40', '2021-06-14 11:37:40'),
(422, 'FDQt\')/**/AND/**/2016=2016/**/AND/**/(\'vpdQ\'=\'vpdQ', 1, '2021-06-14 11:37:43', '2021-06-14 11:37:43'),
(423, 'FDQt\')/**/AND/**/7175=9183/**/AND/**/(\'orxv\'=\'orxv', 1, '2021-06-14 11:37:47', '2021-06-14 11:37:47'),
(424, 'FDQt\'/**/AND/**/4538=6639/**/AND/**/\'vwLp\'=\'vwLp', 1, '2021-06-14 11:37:49', '2021-06-14 11:37:49'),
(425, 'FDQt\'/**/AND/**/2016=2016/**/AND/**/\'FlZm\'=\'FlZm', 1, '2021-06-14 11:37:52', '2021-06-14 11:37:52'),
(426, 'FDQt\'/**/AND/**/4052=6448/**/AND/**/\'JLoV\'=\'JLoV', 1, '2021-06-14 11:37:54', '2021-06-14 11:37:54'),
(427, 'FDQt)/**/AND/**/9508=9650/**/AND/**/(5680=5680', 1, '2021-06-14 11:37:56', '2021-06-14 11:37:56'),
(428, 'FDQt)/**/AND/**/2016=2016/**/AND/**/(7060=7060', 1, '2021-06-14 11:37:59', '2021-06-14 11:37:59'),
(429, 'FDQt)/**/AND/**/5462=5118/**/AND/**/(6313=6313', 1, '2021-06-14 11:38:01', '2021-06-14 11:38:01'),
(430, 'FDQt/**/AND/**/7676=1576', 1, '2021-06-14 11:38:03', '2021-06-14 11:38:03'),
(431, 'FDQt/**/AND/**/2016=2016', 1, '2021-06-14 11:38:06', '2021-06-14 11:38:06'),
(432, 'FDQt/**/AND/**/3569=7423', 1, '2021-06-14 11:38:08', '2021-06-14 11:38:08'),
(433, 'FDQt/**/AND/**/9533=7453--/**/KSgO', 1, '2021-06-14 11:38:11', '2021-06-14 11:38:11'),
(434, 'FDQt/**/AND/**/2016=2016--/**/PKvo', 1, '2021-06-14 11:38:13', '2021-06-14 11:38:13'),
(435, 'FDQt/**/AND/**/5825=4322--/**/ioQH', 1, '2021-06-14 11:38:16', '2021-06-14 11:38:16'),
(436, 'FDQt\')/**/AND/**/EXTRACTVALUE(3349,CONCAT(0x5c,0x71717a7171,(SELECT/**/(ELT(3349=3349,1))),0x7170767a71))/**/AND/**/(\'dJLY\'=\'dJLY', 1, '2021-06-14 11:38:21', '2021-06-14 11:38:21'),
(437, 'FDQt\'/**/AND/**/EXTRACTVALUE(3349,CONCAT(0x5c,0x71717a7171,(SELECT/**/(ELT(3349=3349,1))),0x7170767a71))/**/AND/**/\'rsEk\'=\'rsEk', 1, '2021-06-14 11:38:23', '2021-06-14 11:38:23'),
(438, 'FDQt)/**/AND/**/EXTRACTVALUE(3349,CONCAT(0x5c,0x71717a7171,(SELECT/**/(ELT(3349=3349,1))),0x7170767a71))/**/AND/**/(9676=9676', 1, '2021-06-14 11:38:25', '2021-06-14 11:38:25'),
(439, 'FDQt/**/AND/**/EXTRACTVALUE(3349,CONCAT(0x5c,0x71717a7171,(SELECT/**/(ELT(3349=3349,1))),0x7170767a71))', 1, '2021-06-14 11:38:27', '2021-06-14 11:38:27'),
(440, 'FDQt/**/AND/**/EXTRACTVALUE(3349,CONCAT(0x5c,0x71717a7171,(SELECT/**/(ELT(3349=3349,1))),0x7170767a71))--/**/DSEG', 1, '2021-06-14 11:38:30', '2021-06-14 11:38:30'),
(441, 'FDQt\')/**/AND/**/2298=CAST((CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(2298=2298)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'HCEk\'=\'HCEk', 1, '2021-06-14 11:38:32', '2021-06-14 11:38:32'),
(442, 'FDQt\'/**/AND/**/2298=CAST((CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(2298=2298)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'XCdj\'=\'XCdj', 1, '2021-06-14 11:38:34', '2021-06-14 11:38:34'),
(443, 'FDQt)/**/AND/**/2298=CAST((CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(2298=2298)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(3817=3817', 1, '2021-06-14 11:38:37', '2021-06-14 11:38:37'),
(444, 'FDQt/**/AND/**/2298=CAST((CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(2298=2298)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)', 1, '2021-06-14 11:38:39', '2021-06-14 11:38:39'),
(445, 'FDQt/**/AND/**/2298=CAST((CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(2298=2298)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)--/**/BDus', 1, '2021-06-14 11:38:42', '2021-06-14 11:38:42'),
(446, 'FDQt\')/**/AND/**/8704/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(8704=8704)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(112)+CHAR(118)+CHAR(122)+CHAR(113)))/**/AND/**/(\'hgMD\'=\'hgMD', 1, '2021-06-14 11:38:44', '2021-06-14 11:38:44'),
(447, 'FDQt\'/**/AND/**/8704/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(8704=8704)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(112)+CHAR(118)+CHAR(122)+CHAR(113)))/**/AND/**/\'zSCw\'=\'zSCw', 1, '2021-06-14 11:38:46', '2021-06-14 11:38:46'),
(448, 'FDQt)/**/AND/**/8704/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(8704=8704)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(112)+CHAR(118)+CHAR(122)+CHAR(113)))/**/AND/**/(2911=2911', 1, '2021-06-14 11:38:48', '2021-06-14 11:38:48'),
(449, 'FDQt/**/AND/**/8704/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(8704=8704)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(112)+CHAR(118)+CHAR(122)+CHAR(113)))', 1, '2021-06-14 11:38:51', '2021-06-14 11:38:51'),
(450, 'FDQt/**/AND/**/8704/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(8704=8704)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(112)+CHAR(118)+CHAR(122)+CHAR(113)))--/**/bySt', 1, '2021-06-14 11:38:53', '2021-06-14 11:38:53'),
(451, 'FDQt\')/**/AND/**/8887=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8887=8887)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'Dcfc\'=\'Dcfc', 1, '2021-06-14 11:38:55', '2021-06-14 11:38:55'),
(452, 'FDQt\'/**/AND/**/8887=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8887=8887)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'jqPL\'=\'jqPL', 1, '2021-06-14 11:38:57', '2021-06-14 11:38:57'),
(453, 'FDQt)/**/AND/**/8887=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8887=8887)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(9322=9322', 1, '2021-06-14 11:39:00', '2021-06-14 11:39:00'),
(454, 'FDQt/**/AND/**/8887=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8887=8887)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2021-06-14 11:39:02', '2021-06-14 11:39:02'),
(455, 'FDQt/**/AND/**/8887=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8887=8887)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(112)||CHR(118)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/RzUk', 1, '2021-06-14 11:39:04', '2021-06-14 11:39:04'),
(456, '(SELECT/**/CONCAT(CONCAT(\'qqzqq\',(CASE/**/WHEN/**/(4792=4792)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qpvzq\'))', 1, '2021-06-14 11:39:06', '2021-06-14 11:39:06'),
(457, 'FDQt\');SELECT/**/PG_SLEEP(5)--', 1, '2021-06-14 11:39:08', '2021-06-14 11:39:08'),
(458, 'FDQt\';SELECT/**/PG_SLEEP(5)--', 1, '2021-06-14 11:39:11', '2021-06-14 11:39:11'),
(459, 'FDQt);SELECT/**/PG_SLEEP(5)--', 1, '2021-06-14 11:39:13', '2021-06-14 11:39:13'),
(460, 'FDQt;SELECT/**/PG_SLEEP(5)--', 1, '2021-06-14 11:39:15', '2021-06-14 11:39:15'),
(461, 'FDQt\');WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-14 11:39:17', '2021-06-14 11:39:17'),
(462, 'FDQt\';WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-14 11:39:19', '2021-06-14 11:39:19'),
(463, 'FDQt);WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-14 11:39:21', '2021-06-14 11:39:21'),
(464, 'FDQt;WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-14 11:39:23', '2021-06-14 11:39:23'),
(465, 'FDQt\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(72)||CHR(97)||CHR(114)||CHR(110),5)/**/FROM/**/DUAL--', 1, '2021-06-14 11:39:25', '2021-06-14 11:39:25'),
(466, 'FDQt\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(72)||CHR(97)||CHR(114)||CHR(110),5)/**/FROM/**/DUAL--', 1, '2021-06-14 11:39:28', '2021-06-14 11:39:28'),
(467, 'FDQt);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(72)||CHR(97)||CHR(114)||CHR(110),5)/**/FROM/**/DUAL--', 1, '2021-06-14 11:39:30', '2021-06-14 11:39:30'),
(468, 'FDQt;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(72)||CHR(97)||CHR(114)||CHR(110),5)/**/FROM/**/DUAL--', 1, '2021-06-14 11:39:32', '2021-06-14 11:39:32'),
(469, 'FDQt\')/**/AND/**/(SELECT/**/5953/**/FROM/**/(SELECT(SLEEP(5)))eyJh)/**/AND/**/(\'sTEK\'=\'sTEK', 1, '2021-06-14 11:39:34', '2021-06-14 11:39:34'),
(470, 'FDQt\'/**/AND/**/(SELECT/**/5953/**/FROM/**/(SELECT(SLEEP(5)))eyJh)/**/AND/**/\'fVDy\'=\'fVDy', 1, '2021-06-14 11:39:36', '2021-06-14 11:39:36'),
(471, 'FDQt)/**/AND/**/(SELECT/**/5953/**/FROM/**/(SELECT(SLEEP(5)))eyJh)/**/AND/**/(8193=8193', 1, '2021-06-14 11:39:39', '2021-06-14 11:39:39'),
(472, 'FDQt/**/AND/**/(SELECT/**/5953/**/FROM/**/(SELECT(SLEEP(5)))eyJh)', 1, '2021-06-14 11:39:41', '2021-06-14 11:39:41'),
(473, 'FDQt/**/AND/**/(SELECT/**/5953/**/FROM/**/(SELECT(SLEEP(5)))eyJh)--/**/exZo', 1, '2021-06-14 11:39:43', '2021-06-14 11:39:43'),
(474, 'FDQt\')/**/AND/**/3567=(SELECT/**/3567/**/FROM/**/PG_SLEEP(5))/**/AND/**/(\'OKTf\'=\'OKTf', 1, '2021-06-14 11:39:45', '2021-06-14 11:39:45'),
(475, 'FDQt\'/**/AND/**/3567=(SELECT/**/3567/**/FROM/**/PG_SLEEP(5))/**/AND/**/\'qIIY\'=\'qIIY', 1, '2021-06-14 11:39:47', '2021-06-14 11:39:47'),
(476, 'FDQt)/**/AND/**/3567=(SELECT/**/3567/**/FROM/**/PG_SLEEP(5))/**/AND/**/(9062=9062', 1, '2021-06-14 11:39:49', '2021-06-14 11:39:49'),
(477, 'FDQt/**/AND/**/3567=(SELECT/**/3567/**/FROM/**/PG_SLEEP(5))', 1, '2021-06-14 11:39:51', '2021-06-14 11:39:51'),
(478, 'FDQt/**/AND/**/3567=(SELECT/**/3567/**/FROM/**/PG_SLEEP(5))--/**/rRCP', 1, '2021-06-14 11:39:53', '2021-06-14 11:39:53'),
(479, 'FDQt\')/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(\'tSVM\'=\'tSVM', 1, '2021-06-14 11:39:56', '2021-06-14 11:39:56'),
(480, 'FDQt\'/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/\'jMXV\'=\'jMXV', 1, '2021-06-14 11:39:58', '2021-06-14 11:39:58'),
(481, 'FDQt)/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(6995=6995', 1, '2021-06-14 11:40:00', '2021-06-14 11:40:00'),
(482, 'FDQt/**/WAITFOR/**/DELAY/**/\'0:0:5\'', 1, '2021-06-14 11:40:02', '2021-06-14 11:40:02'),
(483, 'FDQt/**/WAITFOR/**/DELAY/**/\'0:0:5\'--/**/GlyU', 1, '2021-06-14 11:40:04', '2021-06-14 11:40:04'),
(484, 'FDQt\')/**/AND/**/6982=DBMS_PIPE.RECEIVE_MESSAGE(CHR(114)||CHR(66)||CHR(112)||CHR(103),5)/**/AND/**/(\'HGCW\'=\'HGCW', 1, '2021-06-14 11:40:06', '2021-06-14 11:40:06'),
(485, 'FDQt\'/**/AND/**/6982=DBMS_PIPE.RECEIVE_MESSAGE(CHR(114)||CHR(66)||CHR(112)||CHR(103),5)/**/AND/**/\'wTYJ\'=\'wTYJ', 1, '2021-06-14 11:40:08', '2021-06-14 11:40:08'),
(486, 'FDQt)/**/AND/**/6982=DBMS_PIPE.RECEIVE_MESSAGE(CHR(114)||CHR(66)||CHR(112)||CHR(103),5)/**/AND/**/(2674=2674', 1, '2021-06-14 11:40:11', '2021-06-14 11:40:11'),
(487, 'FDQt/**/AND/**/6982=DBMS_PIPE.RECEIVE_MESSAGE(CHR(114)||CHR(66)||CHR(112)||CHR(103),5)', 1, '2021-06-14 11:40:13', '2021-06-14 11:40:13'),
(488, 'FDQt/**/AND/**/6982=DBMS_PIPE.RECEIVE_MESSAGE(CHR(114)||CHR(66)||CHR(112)||CHR(103),5)--/**/WNoE', 1, '2021-06-14 11:40:15', '2021-06-14 11:40:15'),
(489, 'FDQt\')/**/ORDER/**/BY/**/1--/**/AOdU', 1, '2021-06-14 11:40:17', '2021-06-14 11:40:17'),
(490, 'FDQt\')/**/ORDER/**/BY/**/4888--/**/bOIW', 1, '2021-06-14 11:40:19', '2021-06-14 11:40:19'),
(491, 'FDQt\'/**/ORDER/**/BY/**/1--/**/wTGD', 1, '2021-06-14 11:40:22', '2021-06-14 11:40:22'),
(492, 'FDQt\'/**/ORDER/**/BY/**/9562--/**/aTir', 1, '2021-06-14 11:40:24', '2021-06-14 11:40:24'),
(493, 'FDQt)/**/ORDER/**/BY/**/1--/**/NZKG', 1, '2021-06-14 11:40:26', '2021-06-14 11:40:26'),
(494, 'FDQt)/**/ORDER/**/BY/**/8320--/**/njlb', 1, '2021-06-14 11:40:29', '2021-06-14 11:40:29'),
(495, 'FDQt/**/ORDER/**/BY/**/1--/**/biew', 1, '2021-06-14 11:40:31', '2021-06-14 11:40:31'),
(496, 'FDQt/**/ORDER/**/BY/**/9250--/**/unDK', 1, '2021-06-14 11:40:33', '2021-06-14 11:40:33'),
(497, 'FDQt/**/ORDER/**/BY/**/1--/**/LyyK', 1, '2021-06-14 11:40:36', '2021-06-14 11:40:36'),
(498, 'FDQt/**/ORDER/**/BY/**/9273--/**/cKvR', 1, '2021-06-14 11:40:38', '2021-06-14 11:40:38'),
(499, 'hOxI', 338, '2021-06-14 11:51:51', '2021-08-18 17:04:03'),
(500, 'ieqa', 86, '2021-06-18 18:52:45', '2021-06-18 19:03:28'),
(501, '4913', 1, '2021-06-18 18:52:53', '2021-06-18 18:52:53'),
(502, 'ieqa,)\"(,\').(.', 1, '2021-06-18 18:52:55', '2021-06-18 18:52:55'),
(503, 'ieqa\'zZRYbf<\'\">fsBSbg', 1, '2021-06-18 18:52:58', '2021-06-18 18:52:58'),
(504, 'ieqa\')/**/AND/**/1941=1741/**/AND/**/(\'oGQG\'=\'oGQG', 1, '2021-06-18 18:53:04', '2021-06-18 18:53:04'),
(505, 'ieqa\')/**/AND/**/9817=9817/**/AND/**/(\'uYcH\'=\'uYcH', 1, '2021-06-18 18:53:10', '2021-06-18 18:53:10'),
(506, 'ieqa\')/**/AND/**/6826=6974/**/AND/**/(\'UsKA\'=\'UsKA', 1, '2021-06-18 18:53:13', '2021-06-18 18:53:13'),
(507, 'ieqa\'/**/AND/**/4939=6088/**/AND/**/\'XbhH\'=\'XbhH', 1, '2021-06-18 18:53:15', '2021-06-18 18:53:15'),
(508, 'ieqa\'/**/AND/**/9817=9817/**/AND/**/\'EzRa\'=\'EzRa', 1, '2021-06-18 18:53:17', '2021-06-18 18:53:17'),
(509, 'ieqa\'/**/AND/**/2647=9670/**/AND/**/\'EXhr\'=\'EXhr', 1, '2021-06-18 18:53:19', '2021-06-18 18:53:19'),
(510, 'ieqa)/**/AND/**/5963=8445/**/AND/**/(5401=5401', 1, '2021-06-18 18:53:21', '2021-06-18 18:53:21'),
(511, 'ieqa)/**/AND/**/9817=9817/**/AND/**/(1895=1895', 1, '2021-06-18 18:53:23', '2021-06-18 18:53:23'),
(512, 'ieqa)/**/AND/**/3569=4631/**/AND/**/(9948=9948', 1, '2021-06-18 18:53:25', '2021-06-18 18:53:25'),
(513, 'ieqa/**/AND/**/1227=9126', 1, '2021-06-18 18:53:27', '2021-06-18 18:53:27'),
(514, 'ieqa/**/AND/**/9817=9817', 1, '2021-06-18 18:53:29', '2021-06-18 18:53:29'),
(515, 'ieqa/**/AND/**/7938=9330', 1, '2021-06-18 18:53:32', '2021-06-18 18:53:32'),
(516, 'ieqa/**/AND/**/7037=2188--/**/LtXY', 1, '2021-06-18 18:53:34', '2021-06-18 18:53:34'),
(517, 'ieqa/**/AND/**/9817=9817--/**/QJMa', 1, '2021-06-18 18:53:36', '2021-06-18 18:53:36');
INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(518, 'ieqa/**/AND/**/4964=2157--/**/WsZO', 1, '2021-06-18 18:53:38', '2021-06-18 18:53:38'),
(519, 'ieqa\')/**/AND/**/EXTRACTVALUE(1959,CONCAT(0x5c,0x71766b6271,(SELECT/**/(ELT(1959=1959,1))),0x716a627871))/**/AND/**/(\'eTCL\'=\'eTCL', 1, '2021-06-18 18:53:42', '2021-06-18 18:53:42'),
(520, 'ieqa\'/**/AND/**/EXTRACTVALUE(1959,CONCAT(0x5c,0x71766b6271,(SELECT/**/(ELT(1959=1959,1))),0x716a627871))/**/AND/**/\'oFlQ\'=\'oFlQ', 1, '2021-06-18 18:53:44', '2021-06-18 18:53:44'),
(521, 'ieqa)/**/AND/**/EXTRACTVALUE(1959,CONCAT(0x5c,0x71766b6271,(SELECT/**/(ELT(1959=1959,1))),0x716a627871))/**/AND/**/(2178=2178', 1, '2021-06-18 18:53:46', '2021-06-18 18:53:46'),
(522, 'ieqa/**/AND/**/EXTRACTVALUE(1959,CONCAT(0x5c,0x71766b6271,(SELECT/**/(ELT(1959=1959,1))),0x716a627871))', 1, '2021-06-18 18:53:48', '2021-06-18 18:53:48'),
(523, 'ieqa/**/AND/**/EXTRACTVALUE(1959,CONCAT(0x5c,0x71766b6271,(SELECT/**/(ELT(1959=1959,1))),0x716a627871))--/**/bttM', 1, '2021-06-18 18:53:50', '2021-06-18 18:53:50'),
(524, 'ieqa\')/**/AND/**/8287=CAST((CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(8287=8287)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'CmeS\'=\'CmeS', 1, '2021-06-18 18:53:52', '2021-06-18 18:53:52'),
(525, 'ieqa\'/**/AND/**/8287=CAST((CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(8287=8287)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'cPUl\'=\'cPUl', 1, '2021-06-18 18:53:54', '2021-06-18 18:53:54'),
(526, 'ieqa)/**/AND/**/8287=CAST((CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(8287=8287)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(2610=2610', 1, '2021-06-18 18:53:56', '2021-06-18 18:53:56'),
(527, 'ieqa/**/AND/**/8287=CAST((CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(8287=8287)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113))/**/AS/**/NUMERIC)', 1, '2021-06-18 18:54:01', '2021-06-18 18:54:01'),
(528, 'ieqa/**/AND/**/8287=CAST((CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(8287=8287)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113))/**/AS/**/NUMERIC)--/**/HNwr', 1, '2021-06-18 18:54:03', '2021-06-18 18:54:03'),
(529, 'ieqa\')/**/AND/**/4850/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(118)+CHAR(107)+CHAR(98)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4850=4850)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(106)+CHAR(98)+CHAR(120)+CHAR(113)))/**/AND/**/(\'vuZW\'=\'vuZW', 1, '2021-06-18 18:54:05', '2021-06-18 18:54:05'),
(530, 'ieqa\'/**/AND/**/4850/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(118)+CHAR(107)+CHAR(98)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4850=4850)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(106)+CHAR(98)+CHAR(120)+CHAR(113)))/**/AND/**/\'PPkc\'=\'PPkc', 1, '2021-06-18 18:54:07', '2021-06-18 18:54:07'),
(531, 'ieqa)/**/AND/**/4850/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(118)+CHAR(107)+CHAR(98)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4850=4850)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(106)+CHAR(98)+CHAR(120)+CHAR(113)))/**/AND/**/(3167=3167', 1, '2021-06-18 18:54:09', '2021-06-18 18:54:09'),
(532, 'ieqa/**/AND/**/4850/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(118)+CHAR(107)+CHAR(98)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4850=4850)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(106)+CHAR(98)+CHAR(120)+CHAR(113)))', 1, '2021-06-18 18:54:11', '2021-06-18 18:54:11'),
(533, 'ieqa/**/AND/**/4850/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(118)+CHAR(107)+CHAR(98)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4850=4850)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(106)+CHAR(98)+CHAR(120)+CHAR(113)))--/**/IKSq', 1, '2021-06-18 18:54:13', '2021-06-18 18:54:13'),
(534, 'ieqa\')/**/AND/**/1274=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(1274=1274)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'NNpE\'=\'NNpE', 1, '2021-06-18 18:54:15', '2021-06-18 18:54:15'),
(535, 'ieqa\'/**/AND/**/1274=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(1274=1274)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'qdUs\'=\'qdUs', 1, '2021-06-18 18:54:18', '2021-06-18 18:54:18'),
(536, 'ieqa)/**/AND/**/1274=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(1274=1274)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(2449=2449', 1, '2021-06-18 18:54:21', '2021-06-18 18:54:21'),
(537, 'ieqa/**/AND/**/1274=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(1274=1274)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2021-06-18 18:54:23', '2021-06-18 18:54:23'),
(538, 'ieqa/**/AND/**/1274=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(118)||CHR(107)||CHR(98)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(1274=1274)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(120)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/MnDP', 1, '2021-06-18 18:54:25', '2021-06-18 18:54:25'),
(539, '(SELECT/**/CONCAT(CONCAT(\'qvkbq\',(CASE/**/WHEN/**/(7228=7228)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qjbxq\'))', 1, '2021-06-18 18:54:26', '2021-06-18 18:54:26'),
(540, 'ieqa\');SELECT/**/PG_SLEEP(5)--', 1, '2021-06-18 18:54:29', '2021-06-18 18:54:29'),
(541, 'ieqa\';SELECT/**/PG_SLEEP(5)--', 1, '2021-06-18 18:54:31', '2021-06-18 18:54:31'),
(542, 'ieqa);SELECT/**/PG_SLEEP(5)--', 1, '2021-06-18 18:54:32', '2021-06-18 18:54:32'),
(543, 'ieqa;SELECT/**/PG_SLEEP(5)--', 1, '2021-06-18 18:54:35', '2021-06-18 18:54:35'),
(544, 'ieqa\');WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-18 18:54:36', '2021-06-18 18:54:36'),
(545, 'ieqa\';WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-18 18:54:38', '2021-06-18 18:54:38'),
(546, 'ieqa);WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-18 18:54:40', '2021-06-18 18:54:40'),
(547, 'ieqa;WAITFOR/**/DELAY/**/\'0:0:5\'--', 1, '2021-06-18 18:54:42', '2021-06-18 18:54:42'),
(548, 'ieqa\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(86)||CHR(79)||CHR(112)||CHR(77),5)/**/FROM/**/DUAL--', 1, '2021-06-18 18:54:44', '2021-06-18 18:54:44'),
(549, 'ieqa\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(86)||CHR(79)||CHR(112)||CHR(77),5)/**/FROM/**/DUAL--', 1, '2021-06-18 18:54:47', '2021-06-18 18:54:47'),
(550, 'ieqa);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(86)||CHR(79)||CHR(112)||CHR(77),5)/**/FROM/**/DUAL--', 1, '2021-06-18 18:54:49', '2021-06-18 18:54:49'),
(551, 'ieqa;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(86)||CHR(79)||CHR(112)||CHR(77),5)/**/FROM/**/DUAL--', 1, '2021-06-18 18:54:51', '2021-06-18 18:54:51'),
(552, 'ieqa\')/**/AND/**/(SELECT/**/4868/**/FROM/**/(SELECT(SLEEP(5)))HPkh)/**/AND/**/(\'ZVDc\'=\'ZVDc', 1, '2021-06-18 18:54:53', '2021-06-18 18:54:53'),
(553, 'ieqa\'/**/AND/**/(SELECT/**/4868/**/FROM/**/(SELECT(SLEEP(5)))HPkh)/**/AND/**/\'WqFM\'=\'WqFM', 1, '2021-06-18 18:54:54', '2021-06-18 18:54:54'),
(554, 'ieqa)/**/AND/**/(SELECT/**/4868/**/FROM/**/(SELECT(SLEEP(5)))HPkh)/**/AND/**/(2077=2077', 1, '2021-06-18 18:54:56', '2021-06-18 18:54:56'),
(555, 'ieqa/**/AND/**/(SELECT/**/4868/**/FROM/**/(SELECT(SLEEP(5)))HPkh)', 1, '2021-06-18 18:54:58', '2021-06-18 18:54:58'),
(556, 'ieqa/**/AND/**/(SELECT/**/4868/**/FROM/**/(SELECT(SLEEP(5)))HPkh)--/**/tWAe', 1, '2021-06-18 18:55:00', '2021-06-18 18:55:00'),
(557, 'ieqa\')/**/AND/**/1367=(SELECT/**/1367/**/FROM/**/PG_SLEEP(5))/**/AND/**/(\'dODm\'=\'dODm', 1, '2021-06-18 18:55:02', '2021-06-18 18:55:02'),
(558, 'ieqa\'/**/AND/**/1367=(SELECT/**/1367/**/FROM/**/PG_SLEEP(5))/**/AND/**/\'IIVV\'=\'IIVV', 1, '2021-06-18 18:55:04', '2021-06-18 18:55:04'),
(559, 'ieqa)/**/AND/**/1367=(SELECT/**/1367/**/FROM/**/PG_SLEEP(5))/**/AND/**/(4631=4631', 1, '2021-06-18 18:55:06', '2021-06-18 18:55:06'),
(560, 'ieqa/**/AND/**/1367=(SELECT/**/1367/**/FROM/**/PG_SLEEP(5))', 1, '2021-06-18 18:55:08', '2021-06-18 18:55:08'),
(561, 'ieqa/**/AND/**/1367=(SELECT/**/1367/**/FROM/**/PG_SLEEP(5))--/**/SIeb', 1, '2021-06-18 18:55:09', '2021-06-18 18:55:09'),
(562, 'ieqa\')/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(\'ziHl\'=\'ziHl', 1, '2021-06-18 18:55:11', '2021-06-18 18:55:11'),
(563, 'ieqa\'/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/\'QuoB\'=\'QuoB', 1, '2021-06-18 18:55:13', '2021-06-18 18:55:13'),
(564, 'ieqa)/**/WAITFOR/**/DELAY/**/\'0:0:5\'/**/AND/**/(6599=6599', 1, '2021-06-18 18:55:15', '2021-06-18 18:55:15'),
(565, 'ieqa/**/WAITFOR/**/DELAY/**/\'0:0:5\'', 1, '2021-06-18 18:55:17', '2021-06-18 18:55:17'),
(566, 'ieqa/**/WAITFOR/**/DELAY/**/\'0:0:5\'--/**/QLBg', 1, '2021-06-18 18:55:19', '2021-06-18 18:55:19'),
(567, 'ieqa\')/**/AND/**/5483=DBMS_PIPE.RECEIVE_MESSAGE(CHR(66)||CHR(111)||CHR(113)||CHR(117),5)/**/AND/**/(\'NDod\'=\'NDod', 1, '2021-06-18 18:55:21', '2021-06-18 18:55:21'),
(568, 'ieqa\'/**/AND/**/5483=DBMS_PIPE.RECEIVE_MESSAGE(CHR(66)||CHR(111)||CHR(113)||CHR(117),5)/**/AND/**/\'JszS\'=\'JszS', 1, '2021-06-18 18:55:23', '2021-06-18 18:55:23'),
(569, 'ieqa)/**/AND/**/5483=DBMS_PIPE.RECEIVE_MESSAGE(CHR(66)||CHR(111)||CHR(113)||CHR(117),5)/**/AND/**/(2289=2289', 1, '2021-06-18 18:55:24', '2021-06-18 18:55:24'),
(570, 'ieqa/**/AND/**/5483=DBMS_PIPE.RECEIVE_MESSAGE(CHR(66)||CHR(111)||CHR(113)||CHR(117),5)', 1, '2021-06-18 18:55:26', '2021-06-18 18:55:26'),
(571, 'ieqa/**/AND/**/5483=DBMS_PIPE.RECEIVE_MESSAGE(CHR(66)||CHR(111)||CHR(113)||CHR(117),5)--/**/xXTH', 1, '2021-06-18 18:55:28', '2021-06-18 18:55:28'),
(572, 'ieqa\')/**/ORDER/**/BY/**/1--/**/JsAe', 1, '2021-06-18 18:55:29', '2021-06-18 18:55:29'),
(573, 'ieqa\')/**/ORDER/**/BY/**/4923--/**/YpRZ', 1, '2021-06-18 18:55:31', '2021-06-18 18:55:31'),
(574, 'ieqa\'/**/ORDER/**/BY/**/1--/**/aNsE', 1, '2021-06-18 18:55:33', '2021-06-18 18:55:33'),
(575, 'ieqa\'/**/ORDER/**/BY/**/4605--/**/caoy', 1, '2021-06-18 18:55:35', '2021-06-18 18:55:35'),
(576, 'ieqa)/**/ORDER/**/BY/**/1--/**/irMG', 1, '2021-06-18 18:55:37', '2021-06-18 18:55:37'),
(577, 'ieqa)/**/ORDER/**/BY/**/8181--/**/EREB', 1, '2021-06-18 18:55:39', '2021-06-18 18:55:39'),
(578, 'ieqa/**/ORDER/**/BY/**/1--/**/cVqq', 1, '2021-06-18 18:55:41', '2021-06-18 18:55:41'),
(579, 'ieqa/**/ORDER/**/BY/**/9242--/**/RyJJ', 1, '2021-06-18 18:55:43', '2021-06-18 18:55:43'),
(580, 'ieqa/**/ORDER/**/BY/**/1--/**/nnUg', 1, '2021-06-18 18:55:45', '2021-06-18 18:55:45'),
(581, 'ieqa/**/ORDER/**/BY/**/2571--/**/WeTi', 1, '2021-06-18 18:55:47', '2021-06-18 18:55:47'),
(582, 'dVBg', 337, '2021-06-18 19:03:30', '2021-08-18 17:04:04'),
(583, 'Ghee', 2, '2021-06-25 09:24:03', '2021-06-25 09:24:04'),
(584, 'Walker', 1, '2021-06-26 06:17:41', '2021-06-26 06:17:41'),
(585, 'Fancy', 2, '2021-07-29 13:55:20', '2021-07-29 13:55:21'),
(586, 'HWhQ\'[0]', 1, '2021-08-20 06:48:26', '2021-08-20 06:48:26'),
(587, 'http://www.google.com', 1, '2021-08-20 06:49:28', '2021-08-20 06:49:28'),
(588, 'prasun', 2, '2021-09-21 04:19:44', '2021-09-24 05:48:04'),
(589, 'ip', 1, '2021-09-28 06:59:48', '2021-09-28 06:59:48'),
(590, '200ml-Dexe-Anti-Hair-Loss-Shampoo-K1QBo', 1, '2021-09-28 16:16:29', '2021-09-28 16:16:29'),
(591, 'toolbox', 1, '2021-09-29 05:15:31', '2021-09-29 05:15:31'),
(592, 'power bank', 1, '2021-09-29 09:43:20', '2021-09-29 09:43:20'),
(593, 'नजवज', 1, '2021-10-06 06:48:21', '2021-10-06 06:48:21'),
(594, 'optical', 1, '2021-10-06 11:13:19', '2021-10-06 11:13:19'),
(595, 'test', 64, '2021-10-29 10:09:16', '2022-03-25 08:44:05'),
(596, 'coffee', 2, '2021-11-29 03:42:23', '2021-12-29 11:11:53'),
(597, 'Test Shop', 1, '2021-12-13 05:23:39', '2021-12-13 05:23:39'),
(598, 'Test Product', 2, '2021-12-13 09:24:34', '2021-12-13 09:38:42'),
(599, 'Graiden Mcleod', 2, '2021-12-13 09:36:37', '2021-12-14 10:13:16'),
(600, 'Test Vendor', 2, '2021-12-17 11:16:15', '2021-12-24 05:09:58'),
(601, 'moon', 1, '2022-01-18 11:03:33', '2022-01-18 11:03:33'),
(602, 'vans', 1, '2022-02-23 02:18:54', '2022-02-23 02:18:54'),
(603, 'khaM', 4, '2022-02-25 22:25:13', '2022-02-25 22:25:32'),
(604, '3794', 1, '2022-02-25 22:25:22', '2022-02-25 22:25:22'),
(605, 'khaM\'\"(()(.).,', 1, '2022-02-25 22:25:25', '2022-02-25 22:25:25'),
(606, 'khaM\'TtEEgr<\'\">uOVSKD', 1, '2022-02-25 22:25:28', '2022-02-25 22:25:28'),
(607, 'khaM\')/**/AND/**/2223=9836/**/AND/**/(\'tALg\'=\'tALg', 1, '2022-02-25 22:25:34', '2022-02-25 22:25:34'),
(608, 'khaM\')/**/AND/**/8756=8756/**/AND/**/(\'vKcV\'=\'vKcV', 1, '2022-02-25 22:25:38', '2022-02-25 22:25:38'),
(609, 'khaM\')/**/AND/**/9797=8695/**/AND/**/(\'bPtN\'=\'bPtN', 1, '2022-02-25 22:25:40', '2022-02-25 22:25:40'),
(610, 'khaM\'/**/AND/**/7452=4093/**/AND/**/\'AGGu\'=\'AGGu', 1, '2022-02-25 22:25:42', '2022-02-25 22:25:42'),
(611, 'khaM\'/**/AND/**/8756=8756/**/AND/**/\'wCKD\'=\'wCKD', 1, '2022-02-25 22:25:44', '2022-02-25 22:25:44'),
(612, 'khaM\'/**/AND/**/3422=6822/**/AND/**/\'gADm\'=\'gADm', 1, '2022-02-25 22:25:46', '2022-02-25 22:25:46'),
(613, 'khaM)/**/AND/**/1398=4070/**/AND/**/(3826=3826', 1, '2022-02-25 22:25:48', '2022-02-25 22:25:48'),
(614, 'khaM)/**/AND/**/8756=8756/**/AND/**/(7361=7361', 1, '2022-02-25 22:25:50', '2022-02-25 22:25:50'),
(615, 'khaM)/**/AND/**/8331=7890/**/AND/**/(6143=6143', 1, '2022-02-25 22:25:51', '2022-02-25 22:25:51'),
(616, 'khaM/**/AND/**/4186=6090', 1, '2022-02-25 22:25:53', '2022-02-25 22:25:53'),
(617, 'khaM/**/AND/**/8756=8756', 1, '2022-02-25 22:25:55', '2022-02-25 22:25:55'),
(618, 'khaM/**/AND/**/4300=9708', 1, '2022-02-25 22:25:58', '2022-02-25 22:25:58'),
(619, 'khaM/**/AND/**/8124=2616--/**/BrMh', 1, '2022-02-25 22:26:00', '2022-02-25 22:26:00'),
(620, 'khaM/**/AND/**/8756=8756--/**/NoPd', 1, '2022-02-25 22:26:02', '2022-02-25 22:26:02'),
(621, 'khaM/**/AND/**/8084=9592--/**/thxl', 1, '2022-02-25 22:26:03', '2022-02-25 22:26:03'),
(622, '(SELECT/**/(CASE/**/WHEN/**/(3060=5515)/**/THEN/**/\'khaM\'/**/ELSE/**/(SELECT/**/5515/**/UNION/**/SELECT/**/4650)/**/END))', 1, '2022-02-25 22:26:05', '2022-02-25 22:26:05'),
(623, '(SELECT/**/(CASE/**/WHEN/**/(9491=9491)/**/THEN/**/\'khaM\'/**/ELSE/**/(SELECT/**/3003/**/UNION/**/SELECT/**/7286)/**/END))', 1, '2022-02-25 22:26:07', '2022-02-25 22:26:07'),
(624, '(SELECT/**/(CASE/**/WHEN/**/(1342=6720)/**/THEN/**/\'khaM\'/**/ELSE/**/(SELECT/**/6720/**/UNION/**/SELECT/**/2736)/**/END))', 1, '2022-02-25 22:26:09', '2022-02-25 22:26:09'),
(625, 'khaM\')/**/AND/**/EXTRACTVALUE(8509,CONCAT(0x5c,0x717a717a71,(SELECT/**/(ELT(8509=8509,1))),0x71717a7a71))/**/AND/**/(\'ocKs\'=\'ocKs', 1, '2022-02-25 22:26:11', '2022-02-25 22:26:11'),
(626, 'khaM\'/**/AND/**/EXTRACTVALUE(8509,CONCAT(0x5c,0x717a717a71,(SELECT/**/(ELT(8509=8509,1))),0x71717a7a71))/**/AND/**/\'caSr\'=\'caSr', 1, '2022-02-25 22:26:13', '2022-02-25 22:26:13'),
(627, 'khaM)/**/AND/**/EXTRACTVALUE(8509,CONCAT(0x5c,0x717a717a71,(SELECT/**/(ELT(8509=8509,1))),0x71717a7a71))/**/AND/**/(1081=1081', 1, '2022-02-25 22:26:14', '2022-02-25 22:26:14'),
(628, 'khaM/**/AND/**/EXTRACTVALUE(8509,CONCAT(0x5c,0x717a717a71,(SELECT/**/(ELT(8509=8509,1))),0x71717a7a71))', 1, '2022-02-25 22:26:17', '2022-02-25 22:26:17'),
(629, 'khaM/**/AND/**/EXTRACTVALUE(8509,CONCAT(0x5c,0x717a717a71,(SELECT/**/(ELT(8509=8509,1))),0x71717a7a71))--/**/MSwm', 1, '2022-02-25 22:26:18', '2022-02-25 22:26:18'),
(630, 'khaM\')/**/AND/**/7399=CAST((CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(7399=7399)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'ZMvd\'=\'ZMvd', 1, '2022-02-25 22:26:20', '2022-02-25 22:26:20'),
(631, 'khaM\'/**/AND/**/7399=CAST((CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(7399=7399)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'LLIW\'=\'LLIW', 1, '2022-02-25 22:26:22', '2022-02-25 22:26:22'),
(632, 'khaM)/**/AND/**/7399=CAST((CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(7399=7399)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(1834=1834', 1, '2022-02-25 22:26:23', '2022-02-25 22:26:23'),
(633, 'khaM/**/AND/**/7399=CAST((CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(7399=7399)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)', 1, '2022-02-25 22:26:25', '2022-02-25 22:26:25'),
(634, 'khaM/**/AND/**/7399=CAST((CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(7399=7399)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)--/**/QvIQ', 1, '2022-02-25 22:26:26', '2022-02-25 22:26:26'),
(635, 'khaM\')/**/AND/**/6317/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(122)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(6317=6317)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(122)+CHAR(113)))/**/AND/**/(\'NGeM\'=\'NGeM', 1, '2022-02-25 22:26:28', '2022-02-25 22:26:28'),
(636, 'khaM\'/**/AND/**/6317/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(122)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(6317=6317)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(122)+CHAR(113)))/**/AND/**/\'vtfv\'=\'vtfv', 1, '2022-02-25 22:26:31', '2022-02-25 22:26:31'),
(637, 'khaM)/**/AND/**/6317/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(122)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(6317=6317)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(122)+CHAR(113)))/**/AND/**/(3851=3851', 1, '2022-02-25 22:26:32', '2022-02-25 22:26:32'),
(638, 'khaM/**/AND/**/6317/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(122)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(6317=6317)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(122)+CHAR(113)))', 1, '2022-02-25 22:26:34', '2022-02-25 22:26:34'),
(639, 'khaM/**/AND/**/6317/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(122)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(6317=6317)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(122)+CHAR(113)))--/**/cduf', 1, '2022-02-25 22:26:35', '2022-02-25 22:26:35'),
(640, 'khaM\')/**/AND/**/7747=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(7747=7747)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'fiEp\'=\'fiEp', 1, '2022-02-25 22:26:37', '2022-02-25 22:26:37'),
(641, 'khaM\'/**/AND/**/7747=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(7747=7747)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'PCYl\'=\'PCYl', 1, '2022-02-25 22:26:39', '2022-02-25 22:26:39'),
(642, 'khaM)/**/AND/**/7747=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(7747=7747)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(6924=6924', 1, '2022-02-25 22:26:40', '2022-02-25 22:26:40'),
(643, 'khaM/**/AND/**/7747=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(7747=7747)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2022-02-25 22:26:42', '2022-02-25 22:26:42'),
(644, 'khaM/**/AND/**/7747=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(122)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(7747=7747)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(122)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/RWuc', 1, '2022-02-25 22:26:44', '2022-02-25 22:26:44'),
(645, '(SELECT/**/CONCAT(CONCAT(\'qzqzq\',(CASE/**/WHEN/**/(8312=8312)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qqzzq\'))', 1, '2022-02-25 22:26:45', '2022-02-25 22:26:45'),
(646, 'khaM\');SELECT/**/PG_SLEEP(15)--', 1, '2022-02-25 22:26:47', '2022-02-25 22:26:47'),
(647, 'khaM\';SELECT/**/PG_SLEEP(15)--', 1, '2022-02-25 22:26:48', '2022-02-25 22:26:48'),
(648, 'khaM);SELECT/**/PG_SLEEP(15)--', 1, '2022-02-25 22:26:50', '2022-02-25 22:26:50'),
(649, 'khaM;SELECT/**/PG_SLEEP(15)--', 1, '2022-02-25 22:26:52', '2022-02-25 22:26:52'),
(650, 'khaM\');WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-25 22:26:53', '2022-02-25 22:26:53'),
(651, 'khaM\';WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-25 22:26:55', '2022-02-25 22:26:55'),
(652, 'khaM);WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-25 22:26:56', '2022-02-25 22:26:56'),
(653, 'khaM;WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-25 22:26:58', '2022-02-25 22:26:58'),
(654, 'khaM\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(97)||CHR(78)||CHR(75),15)/**/FROM/**/DUAL--', 1, '2022-02-25 22:27:00', '2022-02-25 22:27:00'),
(655, 'khaM\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(97)||CHR(78)||CHR(75),15)/**/FROM/**/DUAL--', 1, '2022-02-25 22:27:01', '2022-02-25 22:27:01'),
(656, 'khaM);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(97)||CHR(78)||CHR(75),15)/**/FROM/**/DUAL--', 1, '2022-02-25 22:27:03', '2022-02-25 22:27:03'),
(657, 'khaM;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(97)||CHR(78)||CHR(75),15)/**/FROM/**/DUAL--', 1, '2022-02-25 22:27:04', '2022-02-25 22:27:04'),
(658, 'khaM\')/**/AND/**/(SELECT/**/6373/**/FROM/**/(SELECT(SLEEP(15)))LtRb)/**/AND/**/(\'EEoz\'=\'EEoz', 1, '2022-02-25 22:27:06', '2022-02-25 22:27:06'),
(659, 'khaM\'/**/AND/**/(SELECT/**/6373/**/FROM/**/(SELECT(SLEEP(15)))LtRb)/**/AND/**/\'SAkW\'=\'SAkW', 1, '2022-02-25 22:27:08', '2022-02-25 22:27:08'),
(660, 'khaM)/**/AND/**/(SELECT/**/6373/**/FROM/**/(SELECT(SLEEP(15)))LtRb)/**/AND/**/(3186=3186', 1, '2022-02-25 22:27:10', '2022-02-25 22:27:10'),
(661, 'khaM/**/AND/**/(SELECT/**/6373/**/FROM/**/(SELECT(SLEEP(15)))LtRb)', 1, '2022-02-25 22:27:12', '2022-02-25 22:27:12'),
(662, 'khaM/**/AND/**/(SELECT/**/6373/**/FROM/**/(SELECT(SLEEP(15)))LtRb)--/**/bRnU', 1, '2022-02-25 22:27:13', '2022-02-25 22:27:13'),
(663, 'khaM\')/**/AND/**/4382=(SELECT/**/4382/**/FROM/**/PG_SLEEP(15))/**/AND/**/(\'cnLD\'=\'cnLD', 1, '2022-02-25 22:27:15', '2022-02-25 22:27:15'),
(664, 'khaM\'/**/AND/**/4382=(SELECT/**/4382/**/FROM/**/PG_SLEEP(15))/**/AND/**/\'rMxb\'=\'rMxb', 1, '2022-02-25 22:27:17', '2022-02-25 22:27:17'),
(665, 'khaM)/**/AND/**/4382=(SELECT/**/4382/**/FROM/**/PG_SLEEP(15))/**/AND/**/(1581=1581', 1, '2022-02-25 22:27:18', '2022-02-25 22:27:18'),
(666, 'khaM/**/AND/**/4382=(SELECT/**/4382/**/FROM/**/PG_SLEEP(15))', 1, '2022-02-25 22:27:20', '2022-02-25 22:27:20'),
(667, 'khaM/**/AND/**/4382=(SELECT/**/4382/**/FROM/**/PG_SLEEP(15))--/**/JNap', 1, '2022-02-25 22:27:22', '2022-02-25 22:27:22'),
(668, 'khaM\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(\'beea\'=\'beea', 1, '2022-02-25 22:27:23', '2022-02-25 22:27:23'),
(669, 'khaM\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'MhCX\'=\'MhCX', 1, '2022-02-25 22:27:25', '2022-02-25 22:27:25'),
(670, 'khaM)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(1340=1340', 1, '2022-02-25 22:27:26', '2022-02-25 22:27:26'),
(671, 'khaM/**/WAITFOR/**/DELAY/**/\'0:0:15\'', 1, '2022-02-25 22:27:28', '2022-02-25 22:27:28'),
(672, 'khaM/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/EGhH', 1, '2022-02-25 22:27:29', '2022-02-25 22:27:29'),
(673, 'khaM\')/**/AND/**/4868=DBMS_PIPE.RECEIVE_MESSAGE(CHR(74)||CHR(97)||CHR(121)||CHR(97),15)/**/AND/**/(\'BqHL\'=\'BqHL', 1, '2022-02-25 22:27:31', '2022-02-25 22:27:31'),
(674, 'khaM\'/**/AND/**/4868=DBMS_PIPE.RECEIVE_MESSAGE(CHR(74)||CHR(97)||CHR(121)||CHR(97),15)/**/AND/**/\'iryA\'=\'iryA', 1, '2022-02-25 22:27:33', '2022-02-25 22:27:33'),
(675, 'khaM)/**/AND/**/4868=DBMS_PIPE.RECEIVE_MESSAGE(CHR(74)||CHR(97)||CHR(121)||CHR(97),15)/**/AND/**/(4916=4916', 1, '2022-02-25 22:27:34', '2022-02-25 22:27:34'),
(676, 'khaM/**/AND/**/4868=DBMS_PIPE.RECEIVE_MESSAGE(CHR(74)||CHR(97)||CHR(121)||CHR(97),15)', 1, '2022-02-25 22:27:36', '2022-02-25 22:27:36'),
(677, 'khaM/**/AND/**/4868=DBMS_PIPE.RECEIVE_MESSAGE(CHR(74)||CHR(97)||CHR(121)||CHR(97),15)--/**/lHfU', 1, '2022-02-25 22:27:37', '2022-02-25 22:27:37'),
(678, 'khaM\')/**/ORDER/**/BY/**/1--/**/XyYu', 1, '2022-02-25 22:27:39', '2022-02-25 22:27:39'),
(679, 'khaM\')/**/ORDER/**/BY/**/8415--/**/iDrn', 1, '2022-02-25 22:27:41', '2022-02-25 22:27:41'),
(680, 'khaM\'/**/ORDER/**/BY/**/1--/**/oNkd', 1, '2022-02-25 22:27:43', '2022-02-25 22:27:43'),
(681, 'khaM\'/**/ORDER/**/BY/**/8523--/**/jMjJ', 1, '2022-02-25 22:27:44', '2022-02-25 22:27:44'),
(682, 'khaM)/**/ORDER/**/BY/**/1--/**/NnBE', 1, '2022-02-25 22:27:46', '2022-02-25 22:27:46'),
(683, 'khaM)/**/ORDER/**/BY/**/7364--/**/pgdB', 1, '2022-02-25 22:27:48', '2022-02-25 22:27:48'),
(684, 'khaM/**/ORDER/**/BY/**/1--/**/OjSm', 1, '2022-02-25 22:27:50', '2022-02-25 22:27:50'),
(685, 'khaM/**/ORDER/**/BY/**/5389--/**/wVfs', 1, '2022-02-25 22:27:52', '2022-02-25 22:27:52'),
(686, 'khaM/**/ORDER/**/BY/**/1--/**/cmWU', 1, '2022-02-25 22:27:54', '2022-02-25 22:27:54'),
(687, 'khaM/**/ORDER/**/BY/**/1383--/**/riHH', 1, '2022-02-25 22:27:56', '2022-02-25 22:27:56'),
(688, 'yJBo', 4, '2022-02-27 01:46:54', '2022-02-27 01:47:15'),
(689, '4516', 1, '2022-02-27 01:47:04', '2022-02-27 01:47:04'),
(690, 'yJBo\",\'()),.,,', 1, '2022-02-27 01:47:08', '2022-02-27 01:47:08'),
(691, 'yJBo\'ULSlpt<\'\">VojRBp', 1, '2022-02-27 01:47:11', '2022-02-27 01:47:11'),
(692, 'yJBo\')/**/AND/**/9679=2819/**/AND/**/(\'MgiJ\'=\'MgiJ', 1, '2022-02-27 01:47:18', '2022-02-27 01:47:18'),
(693, 'yJBo\')/**/AND/**/7521=7521/**/AND/**/(\'aqAA\'=\'aqAA', 1, '2022-02-27 01:47:21', '2022-02-27 01:47:21'),
(694, 'yJBo\')/**/AND/**/5973=8307/**/AND/**/(\'cjcR\'=\'cjcR', 1, '2022-02-27 01:47:24', '2022-02-27 01:47:24'),
(695, 'yJBo\'/**/AND/**/5132=9216/**/AND/**/\'ULOQ\'=\'ULOQ', 1, '2022-02-27 01:47:26', '2022-02-27 01:47:26'),
(696, 'yJBo\'/**/AND/**/7521=7521/**/AND/**/\'ybtE\'=\'ybtE', 1, '2022-02-27 01:47:28', '2022-02-27 01:47:28'),
(697, 'yJBo\'/**/AND/**/5654=8733/**/AND/**/\'Jiix\'=\'Jiix', 1, '2022-02-27 01:47:30', '2022-02-27 01:47:30'),
(698, 'yJBo)/**/AND/**/2088=1586/**/AND/**/(5013=5013', 1, '2022-02-27 01:47:32', '2022-02-27 01:47:32'),
(699, 'yJBo)/**/AND/**/7521=7521/**/AND/**/(1567=1567', 1, '2022-02-27 01:47:34', '2022-02-27 01:47:34'),
(700, 'yJBo)/**/AND/**/1485=8855/**/AND/**/(8727=8727', 1, '2022-02-27 01:47:36', '2022-02-27 01:47:36'),
(701, 'yJBo/**/AND/**/9076=8988', 1, '2022-02-27 01:47:38', '2022-02-27 01:47:38'),
(702, 'yJBo/**/AND/**/7521=7521', 1, '2022-02-27 01:47:40', '2022-02-27 01:47:40'),
(703, 'yJBo/**/AND/**/5688=1719', 1, '2022-02-27 01:47:42', '2022-02-27 01:47:42'),
(704, 'yJBo/**/AND/**/7741=1863--/**/YODS', 1, '2022-02-27 01:47:43', '2022-02-27 01:47:43'),
(705, 'yJBo/**/AND/**/7521=7521--/**/Ymhx', 1, '2022-02-27 01:47:46', '2022-02-27 01:47:46'),
(706, 'yJBo/**/AND/**/3862=7869--/**/rcSc', 1, '2022-02-27 01:47:47', '2022-02-27 01:47:47'),
(707, '(SELECT/**/(CASE/**/WHEN/**/(5225=6540)/**/THEN/**/\'yJBo\'/**/ELSE/**/(SELECT/**/6540/**/UNION/**/SELECT/**/8325)/**/END))', 1, '2022-02-27 01:47:49', '2022-02-27 01:47:49'),
(708, '(SELECT/**/(CASE/**/WHEN/**/(8486=8486)/**/THEN/**/\'yJBo\'/**/ELSE/**/(SELECT/**/6444/**/UNION/**/SELECT/**/6930)/**/END))', 1, '2022-02-27 01:47:52', '2022-02-27 01:47:52'),
(709, '(SELECT/**/(CASE/**/WHEN/**/(8180=3933)/**/THEN/**/\'yJBo\'/**/ELSE/**/(SELECT/**/3933/**/UNION/**/SELECT/**/9239)/**/END))', 1, '2022-02-27 01:47:54', '2022-02-27 01:47:54'),
(710, 'yJBo\')/**/AND/**/EXTRACTVALUE(1726,CONCAT(0x5c,0x7171717a71,(SELECT/**/(ELT(1726=1726,1))),0x7171627a71))/**/AND/**/(\'ZGoT\'=\'ZGoT', 1, '2022-02-27 01:47:56', '2022-02-27 01:47:56'),
(711, 'yJBo\'/**/AND/**/EXTRACTVALUE(1726,CONCAT(0x5c,0x7171717a71,(SELECT/**/(ELT(1726=1726,1))),0x7171627a71))/**/AND/**/\'pDHp\'=\'pDHp', 1, '2022-02-27 01:47:58', '2022-02-27 01:47:58'),
(712, 'yJBo)/**/AND/**/EXTRACTVALUE(1726,CONCAT(0x5c,0x7171717a71,(SELECT/**/(ELT(1726=1726,1))),0x7171627a71))/**/AND/**/(4628=4628', 1, '2022-02-27 01:48:00', '2022-02-27 01:48:00'),
(713, 'yJBo/**/AND/**/EXTRACTVALUE(1726,CONCAT(0x5c,0x7171717a71,(SELECT/**/(ELT(1726=1726,1))),0x7171627a71))', 1, '2022-02-27 01:48:01', '2022-02-27 01:48:01'),
(714, 'yJBo/**/AND/**/EXTRACTVALUE(1726,CONCAT(0x5c,0x7171717a71,(SELECT/**/(ELT(1726=1726,1))),0x7171627a71))--/**/gLZC', 1, '2022-02-27 01:48:03', '2022-02-27 01:48:03'),
(715, 'yJBo\')/**/AND/**/9871=CAST((CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(9871=9871)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'zwUf\'=\'zwUf', 1, '2022-02-27 01:48:05', '2022-02-27 01:48:05'),
(716, 'yJBo\'/**/AND/**/9871=CAST((CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(9871=9871)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'NLlD\'=\'NLlD', 1, '2022-02-27 01:48:08', '2022-02-27 01:48:08'),
(717, 'yJBo)/**/AND/**/9871=CAST((CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(9871=9871)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(1772=1772', 1, '2022-02-27 01:48:09', '2022-02-27 01:48:09'),
(718, 'yJBo/**/AND/**/9871=CAST((CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(9871=9871)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)', 1, '2022-02-27 01:48:11', '2022-02-27 01:48:11'),
(719, 'yJBo/**/AND/**/9871=CAST((CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(9871=9871)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113))/**/AS/**/NUMERIC)--/**/Qvlf', 1, '2022-02-27 01:48:13', '2022-02-27 01:48:13'),
(720, 'yJBo\')/**/AND/**/5476/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(5476=5476)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(98)+CHAR(122)+CHAR(113)))/**/AND/**/(\'nwwh\'=\'nwwh', 1, '2022-02-27 01:48:14', '2022-02-27 01:48:14'),
(721, 'yJBo\'/**/AND/**/5476/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(5476=5476)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(98)+CHAR(122)+CHAR(113)))/**/AND/**/\'uTWj\'=\'uTWj', 1, '2022-02-27 01:48:16', '2022-02-27 01:48:16'),
(722, 'yJBo)/**/AND/**/5476/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(5476=5476)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(98)+CHAR(122)+CHAR(113)))/**/AND/**/(9373=9373', 1, '2022-02-27 01:48:18', '2022-02-27 01:48:18'),
(723, 'yJBo/**/AND/**/5476/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(5476=5476)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(98)+CHAR(122)+CHAR(113)))', 1, '2022-02-27 01:48:19', '2022-02-27 01:48:19'),
(724, 'yJBo/**/AND/**/5476/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(113)+CHAR(113)+CHAR(122)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(5476=5476)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(113)+CHAR(98)+CHAR(122)+CHAR(113)))--/**/WFzV', 1, '2022-02-27 01:48:21', '2022-02-27 01:48:21'),
(725, 'yJBo\')/**/AND/**/5556=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(5556=5556)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'QAhT\'=\'QAhT', 1, '2022-02-27 01:48:23', '2022-02-27 01:48:23'),
(726, 'yJBo\'/**/AND/**/5556=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(5556=5556)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'qCpi\'=\'qCpi', 1, '2022-02-27 01:48:25', '2022-02-27 01:48:25'),
(727, 'yJBo)/**/AND/**/5556=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(5556=5556)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(3797=3797', 1, '2022-02-27 01:48:27', '2022-02-27 01:48:27'),
(728, 'yJBo/**/AND/**/5556=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(5556=5556)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2022-02-27 01:48:29', '2022-02-27 01:48:29'),
(729, 'yJBo/**/AND/**/5556=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(113)||CHR(113)||CHR(122)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(5556=5556)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(113)||CHR(98)||CHR(122)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/BLfR', 1, '2022-02-27 01:48:30', '2022-02-27 01:48:30'),
(730, '(SELECT/**/CONCAT(CONCAT(\'qqqzq\',(CASE/**/WHEN/**/(8968=8968)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qqbzq\'))', 1, '2022-02-27 01:48:32', '2022-02-27 01:48:32'),
(731, 'yJBo\');SELECT/**/PG_SLEEP(15)--', 1, '2022-02-27 01:48:34', '2022-02-27 01:48:34'),
(732, 'yJBo\';SELECT/**/PG_SLEEP(15)--', 1, '2022-02-27 01:48:35', '2022-02-27 01:48:35'),
(733, 'yJBo);SELECT/**/PG_SLEEP(15)--', 1, '2022-02-27 01:48:37', '2022-02-27 01:48:37'),
(734, 'yJBo;SELECT/**/PG_SLEEP(15)--', 1, '2022-02-27 01:48:39', '2022-02-27 01:48:39'),
(735, 'yJBo\');WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-27 01:48:40', '2022-02-27 01:48:40'),
(736, 'yJBo\';WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-27 01:48:42', '2022-02-27 01:48:42'),
(737, 'yJBo);WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-27 01:48:44', '2022-02-27 01:48:44'),
(738, 'yJBo;WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-02-27 01:48:45', '2022-02-27 01:48:45'),
(739, 'yJBo\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(100)||CHR(114)||CHR(114)||CHR(72),15)/**/FROM/**/DUAL--', 1, '2022-02-27 01:48:47', '2022-02-27 01:48:47'),
(740, 'yJBo\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(100)||CHR(114)||CHR(114)||CHR(72),15)/**/FROM/**/DUAL--', 1, '2022-02-27 01:48:48', '2022-02-27 01:48:48'),
(741, 'yJBo);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(100)||CHR(114)||CHR(114)||CHR(72),15)/**/FROM/**/DUAL--', 1, '2022-02-27 01:48:50', '2022-02-27 01:48:50'),
(742, 'yJBo;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(100)||CHR(114)||CHR(114)||CHR(72),15)/**/FROM/**/DUAL--', 1, '2022-02-27 01:48:52', '2022-02-27 01:48:52'),
(743, 'yJBo\')/**/AND/**/(SELECT/**/8874/**/FROM/**/(SELECT(SLEEP(15)))NeNS)/**/AND/**/(\'vRBO\'=\'vRBO', 1, '2022-02-27 01:48:53', '2022-02-27 01:48:53'),
(744, 'yJBo\'/**/AND/**/(SELECT/**/8874/**/FROM/**/(SELECT(SLEEP(15)))NeNS)/**/AND/**/\'JWPM\'=\'JWPM', 1, '2022-02-27 01:48:55', '2022-02-27 01:48:55'),
(745, 'yJBo)/**/AND/**/(SELECT/**/8874/**/FROM/**/(SELECT(SLEEP(15)))NeNS)/**/AND/**/(2205=2205', 1, '2022-02-27 01:48:57', '2022-02-27 01:48:57'),
(746, 'yJBo/**/AND/**/(SELECT/**/8874/**/FROM/**/(SELECT(SLEEP(15)))NeNS)', 1, '2022-02-27 01:48:58', '2022-02-27 01:48:58'),
(747, 'yJBo/**/AND/**/(SELECT/**/8874/**/FROM/**/(SELECT(SLEEP(15)))NeNS)--/**/dgzX', 1, '2022-02-27 01:49:00', '2022-02-27 01:49:00'),
(748, 'yJBo\')/**/AND/**/1900=(SELECT/**/1900/**/FROM/**/PG_SLEEP(15))/**/AND/**/(\'iNfG\'=\'iNfG', 1, '2022-02-27 01:49:02', '2022-02-27 01:49:02'),
(749, 'yJBo\'/**/AND/**/1900=(SELECT/**/1900/**/FROM/**/PG_SLEEP(15))/**/AND/**/\'AMmE\'=\'AMmE', 1, '2022-02-27 01:49:03', '2022-02-27 01:49:03'),
(750, 'yJBo)/**/AND/**/1900=(SELECT/**/1900/**/FROM/**/PG_SLEEP(15))/**/AND/**/(4618=4618', 1, '2022-02-27 01:49:05', '2022-02-27 01:49:05'),
(751, 'yJBo/**/AND/**/1900=(SELECT/**/1900/**/FROM/**/PG_SLEEP(15))', 1, '2022-02-27 01:49:07', '2022-02-27 01:49:07'),
(752, 'yJBo/**/AND/**/1900=(SELECT/**/1900/**/FROM/**/PG_SLEEP(15))--/**/lKHc', 1, '2022-02-27 01:49:08', '2022-02-27 01:49:08'),
(753, 'yJBo\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(\'Bzfc\'=\'Bzfc', 1, '2022-02-27 01:49:10', '2022-02-27 01:49:10'),
(754, 'yJBo\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'Vxcg\'=\'Vxcg', 1, '2022-02-27 01:49:11', '2022-02-27 01:49:11'),
(755, 'yJBo)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(9492=9492', 1, '2022-02-27 01:49:13', '2022-02-27 01:49:13'),
(756, 'yJBo/**/WAITFOR/**/DELAY/**/\'0:0:15\'', 1, '2022-02-27 01:49:15', '2022-02-27 01:49:15'),
(757, 'yJBo/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/mCGc', 1, '2022-02-27 01:49:16', '2022-02-27 01:49:16'),
(758, 'yJBo\')/**/AND/**/7305=DBMS_PIPE.RECEIVE_MESSAGE(CHR(76)||CHR(71)||CHR(70)||CHR(69),15)/**/AND/**/(\'NXsT\'=\'NXsT', 1, '2022-02-27 01:49:18', '2022-02-27 01:49:18'),
(759, 'yJBo\'/**/AND/**/7305=DBMS_PIPE.RECEIVE_MESSAGE(CHR(76)||CHR(71)||CHR(70)||CHR(69),15)/**/AND/**/\'YJoq\'=\'YJoq', 1, '2022-02-27 01:49:20', '2022-02-27 01:49:20'),
(760, 'yJBo)/**/AND/**/7305=DBMS_PIPE.RECEIVE_MESSAGE(CHR(76)||CHR(71)||CHR(70)||CHR(69),15)/**/AND/**/(4759=4759', 1, '2022-02-27 01:49:21', '2022-02-27 01:49:21'),
(761, 'yJBo/**/AND/**/7305=DBMS_PIPE.RECEIVE_MESSAGE(CHR(76)||CHR(71)||CHR(70)||CHR(69),15)', 1, '2022-02-27 01:49:23', '2022-02-27 01:49:23'),
(762, 'yJBo/**/AND/**/7305=DBMS_PIPE.RECEIVE_MESSAGE(CHR(76)||CHR(71)||CHR(70)||CHR(69),15)--/**/NbFj', 1, '2022-02-27 01:49:25', '2022-02-27 01:49:25'),
(763, 'yJBo\')/**/ORDER/**/BY/**/1--/**/EEXS', 1, '2022-02-27 01:49:26', '2022-02-27 01:49:26'),
(764, 'yJBo\')/**/ORDER/**/BY/**/1210--/**/HyZq', 1, '2022-02-27 01:49:29', '2022-02-27 01:49:29'),
(765, 'yJBo\'/**/ORDER/**/BY/**/1--/**/fKDn', 1, '2022-02-27 01:49:31', '2022-02-27 01:49:31'),
(766, 'yJBo\'/**/ORDER/**/BY/**/5628--/**/UgVS', 1, '2022-02-27 01:49:33', '2022-02-27 01:49:33'),
(767, 'yJBo)/**/ORDER/**/BY/**/1--/**/VEoA', 1, '2022-02-27 01:49:35', '2022-02-27 01:49:35'),
(768, 'yJBo)/**/ORDER/**/BY/**/2028--/**/tBTj', 1, '2022-02-27 01:49:37', '2022-02-27 01:49:37'),
(769, 'yJBo/**/ORDER/**/BY/**/1--/**/AQao', 1, '2022-02-27 01:49:39', '2022-02-27 01:49:39'),
(770, 'yJBo/**/ORDER/**/BY/**/6929--/**/friA', 1, '2022-02-27 01:49:41', '2022-02-27 01:49:41'),
(771, 'yJBo/**/ORDER/**/BY/**/1--/**/KVoN', 1, '2022-02-27 01:49:42', '2022-02-27 01:49:42'),
(772, 'yJBo/**/ORDER/**/BY/**/7499--/**/ydDQ', 1, '2022-02-27 01:49:44', '2022-02-27 01:49:44'),
(773, 'admin', 2, '2022-03-21 12:15:29', '2022-03-28 08:56:33'),
(774, 'loremipsum0.645084016549451', 1, '2022-03-23 09:31:05', '2022-03-23 09:31:05'),
(775, 'lagerfeld hat', 2, '2022-03-23 09:34:29', '2022-03-23 09:42:27'),
(776, 'kl hat', 2, '2022-03-23 09:35:26', '2022-03-23 09:48:33'),
(777, 'chanel', 2, '2022-03-23 09:35:29', '2022-03-23 09:46:40'),
(778, 'FUCIDIN', 2, '2022-03-23 09:36:25', '2022-03-23 09:43:50'),
(779, 'samsung', 1, '2022-03-23 14:45:58', '2022-03-23 14:45:58'),
(780, 'men hair trimmer', 1, '2022-03-24 10:56:29', '2022-03-24 10:56:29'),
(781, 'test-admin-eMBJw', 1, '2022-03-25 08:31:22', '2022-03-25 08:31:22'),
(782, 'test admin', 1, '2022-03-25 08:47:53', '2022-03-25 08:47:53'),
(783, 'xiaomi note 11', 1, '2022-03-27 04:19:38', '2022-03-27 04:19:38'),
(784, 'hemp', 1, '2022-03-27 05:40:45', '2022-03-27 05:40:45'),
(785, 'lg', 1, '2022-03-27 05:57:58', '2022-03-27 05:57:58'),
(786, 'asf', 1, '2022-03-27 17:48:30', '2022-03-27 17:48:30'),
(787, 'tshirt', 2, '2022-03-28 04:57:25', '2022-05-31 10:14:32'),
(788, 'apple', 1, '2022-03-28 05:28:03', '2022-03-28 05:28:03'),
(789, 'aa', 2, '2022-03-28 10:22:58', '2022-03-28 17:41:39'),
(790, 'aaa', 3, '2022-03-28 10:23:13', '2022-03-28 10:25:20'),
(791, 'just', 1, '2022-03-28 11:08:21', '2022-03-28 11:08:21'),
(792, 'men jacket', 1, '2022-03-29 03:33:57', '2022-03-29 03:33:57'),
(793, 'Grass', 3, '2022-03-29 05:57:15', '2022-03-29 05:59:19'),
(794, 'Face lotion', 5, '2022-03-29 06:27:20', '2022-03-29 06:28:41'),
(795, '20220325-05523716', 1, '2022-03-29 07:25:57', '2022-03-29 07:25:57'),
(796, 'Car', 2, '2022-03-30 04:26:05', '2022-03-30 04:37:34'),
(797, 'Royal car', 2, '2022-03-30 04:26:25', '2022-03-30 04:26:29'),
(798, 'Three p and g', 1, '2022-03-30 06:06:15', '2022-03-30 06:06:15'),
(799, 'Nepalese MoMo', 1, '2022-03-30 09:16:41', '2022-03-30 09:16:41'),
(800, 'momo', 3, '2022-03-30 09:28:57', '2022-03-30 09:48:17'),
(801, 'Iphone x cover', 1, '2022-04-03 05:57:51', '2022-04-03 05:57:51'),
(802, 'Men Delay', 1, '2022-04-05 07:52:34', '2022-04-05 07:52:34'),
(803, 'Jewellery', 2, '2022-04-05 11:48:30', '2022-04-05 11:48:34'),
(804, 'Olay', 3, '2022-04-06 06:27:24', '2022-04-06 06:34:39'),
(805, 'Olqy', 1, '2022-04-06 06:34:21', '2022-04-06 06:34:21'),
(806, 'Neutrogena Ultra Sheer Dry - Touch Sunscreen spf 45', 7, '2022-04-06 09:27:28', '2022-04-07 06:22:27'),
(807, 'Neutrogena', 68, '2022-04-06 09:53:47', '2022-04-26 11:24:43'),
(808, 'Sunscreen', 1, '2022-04-06 10:10:56', '2022-04-06 10:10:56'),
(809, 'Neutrogena Ultra Sheer Dry Touch', 1, '2022-04-07 06:33:30', '2022-04-07 06:33:30'),
(810, 'neutrogrna', 1, '2022-04-09 04:30:09', '2022-04-09 04:30:09'),
(811, 'Magnesium', 1, '2022-04-10 04:59:08', '2022-04-10 04:59:08'),
(812, 'clothes', 1, '2022-04-10 15:06:10', '2022-04-10 15:06:10'),
(813, 'Neutropenia', 1, '2022-04-11 16:33:12', '2022-04-11 16:33:12'),
(814, 'Headphone wireless', 2, '2022-04-16 07:03:47', '2022-04-16 07:03:51'),
(815, 'sVkp', 4, '2022-04-16 15:41:49', '2022-04-16 15:42:14'),
(816, '4390', 1, '2022-04-16 15:42:01', '2022-04-16 15:42:01'),
(817, 'sVkp(,,.(.\")\')', 1, '2022-04-16 15:42:06', '2022-04-16 15:42:06'),
(818, 'sVkp\'lMSgsp<\'\">THsWAu', 1, '2022-04-16 15:42:09', '2022-04-16 15:42:09'),
(819, 'sVkp\')/**/AND/**/6555=9914/**/AND/**/(\'sxCu\'=\'sxCu', 1, '2022-04-16 15:42:17', '2022-04-16 15:42:17'),
(820, 'sVkp\')/**/AND/**/7691=7691/**/AND/**/(\'eFKI\'=\'eFKI', 1, '2022-04-16 15:42:21', '2022-04-16 15:42:21'),
(821, 'sVkp\')/**/AND/**/5931=5177/**/AND/**/(\'ZHpH\'=\'ZHpH', 1, '2022-04-16 15:42:23', '2022-04-16 15:42:23'),
(822, 'sVkp\'/**/AND/**/2915=9069/**/AND/**/\'NdgK\'=\'NdgK', 1, '2022-04-16 15:42:26', '2022-04-16 15:42:26'),
(823, 'sVkp\'/**/AND/**/7691=7691/**/AND/**/\'aRPL\'=\'aRPL', 1, '2022-04-16 15:42:30', '2022-04-16 15:42:30'),
(824, 'sVkp\'/**/AND/**/1695=1561/**/AND/**/\'emjh\'=\'emjh', 1, '2022-04-16 15:42:32', '2022-04-16 15:42:32'),
(825, 'sVkp)/**/AND/**/9082=1090/**/AND/**/(9149=9149', 1, '2022-04-16 15:42:34', '2022-04-16 15:42:34'),
(826, 'sVkp)/**/AND/**/7691=7691/**/AND/**/(4867=4867', 1, '2022-04-16 15:42:37', '2022-04-16 15:42:37'),
(827, 'sVkp)/**/AND/**/9587=4297/**/AND/**/(7045=7045', 1, '2022-04-16 15:42:40', '2022-04-16 15:42:40'),
(828, 'sVkp/**/AND/**/4547=7852', 1, '2022-04-16 15:42:42', '2022-04-16 15:42:42'),
(829, 'sVkp/**/AND/**/7691=7691', 1, '2022-04-16 15:42:44', '2022-04-16 15:42:44'),
(830, 'sVkp/**/AND/**/7245=4236', 1, '2022-04-16 15:42:47', '2022-04-16 15:42:47'),
(831, 'sVkp/**/AND/**/8186=1776--/**/osQu', 1, '2022-04-16 15:42:49', '2022-04-16 15:42:49'),
(832, 'sVkp/**/AND/**/7691=7691--/**/gZOg', 1, '2022-04-16 15:42:51', '2022-04-16 15:42:51'),
(833, 'sVkp/**/AND/**/2012=7566--/**/UYOJ', 1, '2022-04-16 15:42:53', '2022-04-16 15:42:53'),
(834, '(SELECT/**/(CASE/**/WHEN/**/(1223=9581)/**/THEN/**/\'sVkp\'/**/ELSE/**/(SELECT/**/9581/**/UNION/**/SELECT/**/3623)/**/END))', 1, '2022-04-16 15:42:57', '2022-04-16 15:42:57'),
(835, '(SELECT/**/(CASE/**/WHEN/**/(5827=5827)/**/THEN/**/\'sVkp\'/**/ELSE/**/(SELECT/**/9579/**/UNION/**/SELECT/**/9127)/**/END))', 1, '2022-04-16 15:42:59', '2022-04-16 15:42:59'),
(836, '(SELECT/**/(CASE/**/WHEN/**/(6505=6688)/**/THEN/**/\'sVkp\'/**/ELSE/**/(SELECT/**/6688/**/UNION/**/SELECT/**/6095)/**/END))', 1, '2022-04-16 15:43:01', '2022-04-16 15:43:01'),
(837, 'sVkp\')/**/AND/**/EXTRACTVALUE(9855,CONCAT(0x5c,0x71786b7171,(SELECT/**/(ELT(9855=9855,1))),0x7176787671))/**/AND/**/(\'OYQM\'=\'OYQM', 1, '2022-04-16 15:43:04', '2022-04-16 15:43:04'),
(838, 'sVkp\'/**/AND/**/EXTRACTVALUE(9855,CONCAT(0x5c,0x71786b7171,(SELECT/**/(ELT(9855=9855,1))),0x7176787671))/**/AND/**/\'Rcjd\'=\'Rcjd', 1, '2022-04-16 15:43:06', '2022-04-16 15:43:06'),
(839, 'sVkp)/**/AND/**/EXTRACTVALUE(9855,CONCAT(0x5c,0x71786b7171,(SELECT/**/(ELT(9855=9855,1))),0x7176787671))/**/AND/**/(9623=9623', 1, '2022-04-16 15:43:09', '2022-04-16 15:43:09'),
(840, 'sVkp/**/AND/**/EXTRACTVALUE(9855,CONCAT(0x5c,0x71786b7171,(SELECT/**/(ELT(9855=9855,1))),0x7176787671))', 1, '2022-04-16 15:43:12', '2022-04-16 15:43:12'),
(841, 'sVkp/**/AND/**/EXTRACTVALUE(9855,CONCAT(0x5c,0x71786b7171,(SELECT/**/(ELT(9855=9855,1))),0x7176787671))--/**/UyiD', 1, '2022-04-16 15:43:13', '2022-04-16 15:43:13'),
(842, 'sVkp\')/**/AND/**/3715=CAST((CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(3715=3715)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(\'WDkl\'=\'WDkl', 1, '2022-04-16 15:43:16', '2022-04-16 15:43:16'),
(843, 'sVkp\'/**/AND/**/3715=CAST((CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(3715=3715)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/\'dTVo\'=\'dTVo', 1, '2022-04-16 15:43:19', '2022-04-16 15:43:19'),
(844, 'sVkp)/**/AND/**/3715=CAST((CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(3715=3715)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)/**/AND/**/(2650=2650', 1, '2022-04-16 15:43:22', '2022-04-16 15:43:22'),
(845, 'sVkp/**/AND/**/3715=CAST((CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(3715=3715)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)', 1, '2022-04-16 15:43:24', '2022-04-16 15:43:24'),
(846, 'sVkp/**/AND/**/3715=CAST((CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113))||(SELECT/**/(CASE/**/WHEN/**/(3715=3715)/**/THEN/**/1/**/ELSE/**/0/**/END))::text||(CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113))/**/AS/**/NUMERIC)--/**/VTTT', 1, '2022-04-16 15:43:25', '2022-04-16 15:43:25'),
(847, 'sVkp\')/**/AND/**/4473/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(120)+CHAR(107)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4473=4473)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(118)+CHAR(120)+CHAR(118)+CHAR(113)))/**/AND/**/(\'Cryq\'=\'Cryq', 1, '2022-04-16 15:43:28', '2022-04-16 15:43:28'),
(848, 'sVkp\'/**/AND/**/4473/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(120)+CHAR(107)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4473=4473)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(118)+CHAR(120)+CHAR(118)+CHAR(113)))/**/AND/**/\'RxqH\'=\'RxqH', 1, '2022-04-16 15:43:30', '2022-04-16 15:43:30'),
(849, 'sVkp)/**/AND/**/4473/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(120)+CHAR(107)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4473=4473)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(118)+CHAR(120)+CHAR(118)+CHAR(113)))/**/AND/**/(5219=5219', 1, '2022-04-16 15:43:32', '2022-04-16 15:43:32'),
(850, 'sVkp/**/AND/**/4473/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(120)+CHAR(107)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4473=4473)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(118)+CHAR(120)+CHAR(118)+CHAR(113)))', 1, '2022-04-16 15:43:34', '2022-04-16 15:43:34'),
(851, 'sVkp/**/AND/**/4473/**/IN/**/(SELECT/**/(CHAR(113)+CHAR(120)+CHAR(107)+CHAR(113)+CHAR(113)+(SELECT/**/(CASE/**/WHEN/**/(4473=4473)/**/THEN/**/CHAR(49)/**/ELSE/**/CHAR(48)/**/END))+CHAR(113)+CHAR(118)+CHAR(120)+CHAR(118)+CHAR(113)))--/**/HOOQ', 1, '2022-04-16 15:43:36', '2022-04-16 15:43:36'),
(852, 'sVkp\')/**/AND/**/8978=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8978=8978)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(\'FutQ\'=\'FutQ', 1, '2022-04-16 15:43:38', '2022-04-16 15:43:38'),
(853, 'sVkp\'/**/AND/**/8978=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8978=8978)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/\'oFvH\'=\'oFvH', 1, '2022-04-16 15:43:39', '2022-04-16 15:43:39'),
(854, 'sVkp)/**/AND/**/8978=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8978=8978)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)/**/AND/**/(6620=6620', 1, '2022-04-16 15:43:41', '2022-04-16 15:43:41'),
(855, 'sVkp/**/AND/**/8978=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8978=8978)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)', 1, '2022-04-16 15:43:43', '2022-04-16 15:43:43');
INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(856, 'sVkp/**/AND/**/8978=(SELECT/**/UPPER(XMLType(CHR(60)||CHR(58)||CHR(113)||CHR(120)||CHR(107)||CHR(113)||CHR(113)||(SELECT/**/(CASE/**/WHEN/**/(8978=8978)/**/THEN/**/1/**/ELSE/**/0/**/END)/**/FROM/**/DUAL)||CHR(113)||CHR(118)||CHR(120)||CHR(118)||CHR(113)||CHR(62)))/**/FROM/**/DUAL)--/**/Hcnp', 1, '2022-04-16 15:43:45', '2022-04-16 15:43:45'),
(857, '(SELECT/**/CONCAT(CONCAT(\'qxkqq\',(CASE/**/WHEN/**/(2599=2599)/**/THEN/**/\'1\'/**/ELSE/**/\'0\'/**/END)),\'qvxvq\'))', 1, '2022-04-16 15:43:48', '2022-04-16 15:43:48'),
(858, 'sVkp\');SELECT/**/PG_SLEEP(15)--', 1, '2022-04-16 15:43:50', '2022-04-16 15:43:50'),
(859, 'sVkp\';SELECT/**/PG_SLEEP(15)--', 1, '2022-04-16 15:43:53', '2022-04-16 15:43:53'),
(860, 'sVkp);SELECT/**/PG_SLEEP(15)--', 1, '2022-04-16 15:43:55', '2022-04-16 15:43:55'),
(861, 'sVkp;SELECT/**/PG_SLEEP(15)--', 1, '2022-04-16 15:43:57', '2022-04-16 15:43:57'),
(862, 'sVkp\');WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-04-16 15:43:59', '2022-04-16 15:43:59'),
(863, 'sVkp\';WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-04-16 15:44:01', '2022-04-16 15:44:01'),
(864, 'sVkp);WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-04-16 15:44:03', '2022-04-16 15:44:03'),
(865, 'sVkp;WAITFOR/**/DELAY/**/\'0:0:15\'--', 1, '2022-04-16 15:44:05', '2022-04-16 15:44:05'),
(866, 'sVkp\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(101)||CHR(110)||CHR(86),15)/**/FROM/**/DUAL--', 1, '2022-04-16 15:44:08', '2022-04-16 15:44:08'),
(867, 'sVkp\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(101)||CHR(110)||CHR(86),15)/**/FROM/**/DUAL--', 1, '2022-04-16 15:44:11', '2022-04-16 15:44:11'),
(868, 'sVkp);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(101)||CHR(110)||CHR(86),15)/**/FROM/**/DUAL--', 1, '2022-04-16 15:44:13', '2022-04-16 15:44:13'),
(869, 'sVkp;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(117)||CHR(101)||CHR(110)||CHR(86),15)/**/FROM/**/DUAL--', 1, '2022-04-16 15:44:14', '2022-04-16 15:44:14'),
(870, 'sVkp\')/**/AND/**/(SELECT/**/3547/**/FROM/**/(SELECT(SLEEP(15)))JFIN)/**/AND/**/(\'hgii\'=\'hgii', 1, '2022-04-16 15:44:16', '2022-04-16 15:44:16'),
(871, 'sVkp\'/**/AND/**/(SELECT/**/3547/**/FROM/**/(SELECT(SLEEP(15)))JFIN)/**/AND/**/\'YaYF\'=\'YaYF', 1, '2022-04-16 15:44:18', '2022-04-16 15:44:18'),
(872, 'sVkp)/**/AND/**/(SELECT/**/3547/**/FROM/**/(SELECT(SLEEP(15)))JFIN)/**/AND/**/(5844=5844', 1, '2022-04-16 15:44:20', '2022-04-16 15:44:20'),
(873, 'sVkp/**/AND/**/(SELECT/**/3547/**/FROM/**/(SELECT(SLEEP(15)))JFIN)', 1, '2022-04-16 15:44:22', '2022-04-16 15:44:22'),
(874, 'sVkp/**/AND/**/(SELECT/**/3547/**/FROM/**/(SELECT(SLEEP(15)))JFIN)--/**/wcYC', 1, '2022-04-16 15:44:23', '2022-04-16 15:44:23'),
(875, 'sVkp\')/**/AND/**/3927=(SELECT/**/3927/**/FROM/**/PG_SLEEP(15))/**/AND/**/(\'ZUKB\'=\'ZUKB', 1, '2022-04-16 15:44:25', '2022-04-16 15:44:25'),
(876, 'sVkp\'/**/AND/**/3927=(SELECT/**/3927/**/FROM/**/PG_SLEEP(15))/**/AND/**/\'hteG\'=\'hteG', 1, '2022-04-16 15:44:27', '2022-04-16 15:44:27'),
(877, 'sVkp)/**/AND/**/3927=(SELECT/**/3927/**/FROM/**/PG_SLEEP(15))/**/AND/**/(2018=2018', 1, '2022-04-16 15:44:29', '2022-04-16 15:44:29'),
(878, 'sVkp/**/AND/**/3927=(SELECT/**/3927/**/FROM/**/PG_SLEEP(15))', 1, '2022-04-16 15:44:32', '2022-04-16 15:44:32'),
(879, 'sVkp/**/AND/**/3927=(SELECT/**/3927/**/FROM/**/PG_SLEEP(15))--/**/MPVU', 1, '2022-04-16 15:44:33', '2022-04-16 15:44:33'),
(880, 'sVkp\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(\'BWOa\'=\'BWOa', 1, '2022-04-16 15:44:35', '2022-04-16 15:44:35'),
(881, 'sVkp\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'uZaN\'=\'uZaN', 1, '2022-04-16 15:44:38', '2022-04-16 15:44:38'),
(882, 'sVkp)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(2879=2879', 1, '2022-04-16 15:44:40', '2022-04-16 15:44:40'),
(883, 'sVkp/**/WAITFOR/**/DELAY/**/\'0:0:15\'', 1, '2022-04-16 15:44:41', '2022-04-16 15:44:41'),
(884, 'sVkp/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/OJaC', 1, '2022-04-16 15:44:44', '2022-04-16 15:44:44'),
(885, 'sVkp\')/**/AND/**/7719=DBMS_PIPE.RECEIVE_MESSAGE(CHR(87)||CHR(103)||CHR(73)||CHR(75),15)/**/AND/**/(\'FUxA\'=\'FUxA', 1, '2022-04-16 15:44:45', '2022-04-16 15:44:45'),
(886, 'sVkp\'/**/AND/**/7719=DBMS_PIPE.RECEIVE_MESSAGE(CHR(87)||CHR(103)||CHR(73)||CHR(75),15)/**/AND/**/\'HSFp\'=\'HSFp', 1, '2022-04-16 15:44:47', '2022-04-16 15:44:47'),
(887, 'sVkp)/**/AND/**/7719=DBMS_PIPE.RECEIVE_MESSAGE(CHR(87)||CHR(103)||CHR(73)||CHR(75),15)/**/AND/**/(8204=8204', 1, '2022-04-16 15:44:49', '2022-04-16 15:44:49'),
(888, 'sVkp/**/AND/**/7719=DBMS_PIPE.RECEIVE_MESSAGE(CHR(87)||CHR(103)||CHR(73)||CHR(75),15)', 1, '2022-04-16 15:44:50', '2022-04-16 15:44:50'),
(889, 'sVkp/**/AND/**/7719=DBMS_PIPE.RECEIVE_MESSAGE(CHR(87)||CHR(103)||CHR(73)||CHR(75),15)--/**/uPYB', 1, '2022-04-16 15:44:52', '2022-04-16 15:44:52'),
(890, 'sVkp\')/**/ORDER/**/BY/**/1--/**/DMBw', 1, '2022-04-16 15:44:54', '2022-04-16 15:44:54'),
(891, 'sVkp\')/**/ORDER/**/BY/**/7891--/**/cRhn', 1, '2022-04-16 15:44:57', '2022-04-16 15:44:57'),
(892, 'sVkp\'/**/ORDER/**/BY/**/1--/**/PjKF', 1, '2022-04-16 15:44:59', '2022-04-16 15:44:59'),
(893, 'sVkp\'/**/ORDER/**/BY/**/1350--/**/KAhK', 1, '2022-04-16 15:45:01', '2022-04-16 15:45:01'),
(894, 'sVkp)/**/ORDER/**/BY/**/1--/**/Dwuf', 1, '2022-04-16 15:45:05', '2022-04-16 15:45:05'),
(895, 'sVkp)/**/ORDER/**/BY/**/6662--/**/bEZT', 1, '2022-04-16 15:45:08', '2022-04-16 15:45:08'),
(896, 'sVkp/**/ORDER/**/BY/**/1--/**/RfMC', 1, '2022-04-16 15:45:10', '2022-04-16 15:45:10'),
(897, 'sVkp/**/ORDER/**/BY/**/7775--/**/CIzN', 1, '2022-04-16 15:45:12', '2022-04-16 15:45:12'),
(898, 'sVkp/**/ORDER/**/BY/**/1--/**/ZFIe', 1, '2022-04-16 15:45:15', '2022-04-16 15:45:15'),
(899, 'sVkp/**/ORDER/**/BY/**/6527--/**/FXrP', 1, '2022-04-16 15:45:17', '2022-04-16 15:45:17'),
(900, 'glame', 1, '2022-04-17 08:10:13', '2022-04-17 08:10:13'),
(901, 'Fantech', 4, '2022-04-22 03:25:42', '2022-04-22 03:26:11'),
(902, 'GlamMe', 2, '2022-04-22 15:16:36', '2022-04-22 15:16:47'),
(903, 'cetaphil', 16, '2022-04-26 09:49:33', '2022-05-28 16:14:09'),
(904, 'outlook', 2, '2022-04-27 03:55:05', '2022-04-27 03:56:31'),
(905, 'Harmonium', 2, '2022-04-27 07:39:28', '2022-04-27 07:41:00'),
(906, 'nail', 1, '2022-04-27 12:24:45', '2022-04-27 12:24:45'),
(907, 'Gym belt', 2, '2022-04-30 05:24:14', '2022-04-30 05:24:21'),
(908, 'harmony', 2, '2022-05-02 06:23:17', '2022-05-02 06:23:21'),
(909, 'body scrub', 2, '2022-05-02 06:23:30', '2022-05-02 06:53:50'),
(910, 'Shiffon one piece', 1, '2022-05-04 09:13:13', '2022-05-04 09:13:13'),
(911, 'Mi 11 lite ne', 1, '2022-05-04 12:48:44', '2022-05-04 12:48:44'),
(912, '<scrip>echo \"hello\" <script\\>', 1, '2022-05-05 05:24:47', '2022-05-05 05:24:47'),
(913, 'Anime sword', 1, '2022-05-07 02:34:45', '2022-05-07 02:34:45'),
(914, 'Anime', 1, '2022-05-07 02:35:03', '2022-05-07 02:35:03'),
(915, 'Games devices', 1, '2022-05-07 11:58:04', '2022-05-07 11:58:04'),
(916, 'Nepali carpet', 2, '2022-05-11 08:24:58', '2022-05-11 08:25:00'),
(917, 'Art', 1, '2022-05-12 00:55:58', '2022-05-12 00:55:58'),
(918, 'Painting', 2, '2022-05-12 00:56:08', '2022-05-12 00:56:11'),
(919, 'GTR2e Smartwatch', 1, '2022-05-12 03:20:07', '2022-05-12 03:20:07'),
(920, 'wireless cctv', 2, '2022-05-12 13:01:14', '2022-05-12 13:01:23'),
(921, 'gaming laptop', 1, '2022-05-12 13:05:59', '2022-05-12 13:05:59'),
(922, 'Tie', 1, '2022-05-13 05:28:14', '2022-05-13 05:28:14'),
(923, 'Peanut butter', 2, '2022-05-15 16:38:36', '2022-05-15 16:38:43'),
(924, 'mama earth', 1, '2022-05-19 15:08:37', '2022-05-19 15:08:37'),
(925, 'lado', 1, '2022-05-21 01:36:56', '2022-05-21 01:36:56'),
(926, 'Furnitu', 1, '2022-05-22 07:21:00', '2022-05-22 07:21:00'),
(927, '64 inch tv', 1, '2022-05-26 05:23:59', '2022-05-26 05:23:59'),
(928, 'regal clothings', 1, '2022-05-26 10:15:41', '2022-05-26 10:15:41'),
(929, 'refrigerator', 1, '2022-05-27 12:01:27', '2022-05-27 12:01:27'),
(930, '/', 1, '2022-05-27 12:02:13', '2022-05-27 12:02:13'),
(931, 'Hot shapes belt', 1, '2022-05-28 03:48:08', '2022-05-28 03:48:08'),
(932, 'Electric barbecue', 1, '2022-05-28 03:49:06', '2022-05-28 03:49:06'),
(933, 'Hublot watch', 5, '2022-05-29 09:11:54', '2022-05-29 09:42:49'),
(934, 'Hubot watch', 2, '2022-05-29 09:14:31', '2022-05-29 09:14:35'),
(935, 'Manakamana mobile shop', 2, '2022-05-29 09:18:54', '2022-05-29 09:18:57'),
(936, 'Manakamana fancy store', 1, '2022-05-29 09:28:11', '2022-05-29 09:28:11'),
(937, 'Manakamana', 3, '2022-05-29 09:39:10', '2022-05-31 16:29:12'),
(938, 'Manaksmana', 2, '2022-05-29 09:47:29', '2022-05-29 09:47:37'),
(939, 'MRGIR ANALOG WATCH', 2, '2022-05-30 07:27:27', '2022-05-30 07:27:31'),
(940, 'T-shirt', 1, '2022-05-31 10:14:45', '2022-05-31 10:14:45'),
(941, 'Summer t shirt', 1, '2022-06-01 03:21:11', '2022-06-01 03:21:11'),
(942, 'frozen momo', 1, '2022-06-01 03:36:44', '2022-06-01 03:36:44'),
(943, '128 gb sd card', 1, '2022-06-01 10:52:50', '2022-06-01 10:52:50'),
(944, 'Hair trimmer', 1, '2022-06-01 16:06:26', '2022-06-01 16:06:26'),
(945, 'mustard oil', 1, '2022-06-02 06:43:14', '2022-06-02 06:43:14'),
(946, 'iphone charger', 1, '2022-06-02 10:42:58', '2022-06-02 10:42:58'),
(947, 'Arduino', 1, '2022-06-04 02:39:41', '2022-06-04 02:39:41'),
(948, 'Screw driver', 1, '2022-06-04 02:40:19', '2022-06-04 02:40:19'),
(949, 'Samsung m21', 1, '2022-06-04 17:40:06', '2022-06-04 17:40:06'),
(950, 'Jeans pant', 1, '2022-06-05 06:35:03', '2022-06-05 06:35:03'),
(951, 'us polo tshirt', 1, '2022-06-05 08:57:13', '2022-06-05 08:57:13'),
(952, 'fan', 1, '2022-06-07 11:44:04', '2022-06-07 11:44:04'),
(953, 'Cusmatic', 1, '2022-06-08 00:42:04', '2022-06-08 00:42:04'),
(954, 'Boss chair', 2, '2022-06-08 05:42:03', '2022-06-08 05:42:08'),
(955, 'ladies', 1, '2022-06-08 08:15:09', '2022-06-08 08:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) NOT NULL DEFAULT 0,
  `remaining_digital_uploads` int(11) NOT NULL DEFAULT 0,
  `invalid_at` date DEFAULT NULL,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `admin_to_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_no` int(11) DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `seller_package_id`, `remaining_uploads`, `remaining_digital_uploads`, `invalid_at`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `pan_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(9, 40, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-23 08:35:21', '2020-07-23 08:35:21'),
(11, 43, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-26 02:15:58', '2020-07-26 02:15:58'),
(12, 43, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-26 02:36:49', '2020-07-26 02:36:49'),
(13, 43, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2020-07-26 02:37:11', '2020-07-26 02:37:11'),
(41, 251, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-10 09:25:51', '2022-01-30 04:55:51'),
(42, 251, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-10 11:37:57', '2022-01-30 04:55:50'),
(44, 250, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-12 15:36:06', '2021-12-12 15:36:06'),
(45, 252, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 05:19:10', '2021-12-13 05:24:04'),
(46, 253, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 05:26:00', '2021-12-13 05:37:53'),
(47, 254, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 05:38:49', '2021-12-13 05:38:49'),
(48, 255, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 06:16:25', '2021-12-13 06:16:25'),
(49, 256, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 06:30:57', '2021-12-14 11:43:53'),
(50, 257, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 06:52:02', '2021-12-13 06:52:02'),
(51, 258, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 07:05:43', '2021-12-13 07:05:43'),
(52, 261, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 07:33:12', '2022-04-27 05:33:24'),
(54, 262, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 07:35:28', '2021-12-13 07:35:28'),
(55, 263, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 07:36:17', '2021-12-13 07:36:17'),
(56, 264, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-13 07:52:23', '2021-12-13 07:52:23'),
(61, 283, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-23 05:40:14', '2022-03-23 05:40:14'),
(62, 284, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-23 05:44:45', '2022-03-23 05:44:45'),
(65, 287, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-23 14:33:12', '2022-03-23 21:42:38'),
(67, 287, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-24 06:52:02', '2022-03-24 06:52:02'),
(68, 287, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-24 06:53:29', '2022-03-24 06:53:29'),
(70, 287, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-25 07:47:02', '2022-03-25 07:47:02'),
(71, 287, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-25 07:48:28', '2022-03-25 07:48:28'),
(75, 294, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:30:58', '2022-03-27 04:44:18'),
(76, 296, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:32:54', '2022-03-27 04:44:08'),
(77, 296, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:33:38', '2022-03-27 04:44:07'),
(78, 296, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:35:50', '2022-03-27 04:44:06'),
(80, 296, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:43:56', '2022-03-27 04:43:56'),
(83, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:46:27', '2022-03-27 04:46:27'),
(84, 298, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:49:29', '2022-03-27 06:08:04'),
(86, 300, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:50:06', '2022-03-27 06:15:22'),
(87, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:56:26', '2022-03-27 04:56:26'),
(88, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 04:58:13', '2022-03-27 04:58:13'),
(89, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 05:03:20', '2022-03-27 05:03:20'),
(97, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:01:33', '2022-03-27 06:01:33'),
(98, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:06:06', '2022-03-27 06:06:06'),
(99, 297, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:06:33', '2022-03-27 06:06:33'),
(101, 307, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:08:48', '2022-03-27 06:17:33'),
(103, 307, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:15:04', '2022-03-27 06:15:04'),
(105, 309, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:16:42', '2022-03-27 06:16:42'),
(106, 309, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:16:55', '2022-03-27 06:16:55'),
(113, 314, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:21:38', '2022-03-27 06:29:21'),
(115, 316, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:22:14', '2022-03-27 06:35:43'),
(116, 317, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:22:57', '2022-03-27 06:35:45'),
(117, 314, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 06:24:33', '2022-03-27 06:29:06'),
(125, 316, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 13:33:00', '2022-03-27 13:33:00'),
(126, 316, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 13:36:07', '2022-03-27 13:36:07'),
(127, 316, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 13:45:13', '2022-03-27 13:45:13'),
(128, 316, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 13:52:32', '2022-03-27 13:52:32'),
(129, 316, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-27 13:54:21', '2022-03-27 13:54:21'),
(142, 343, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 03:25:50', '2022-03-29 03:25:50'),
(145, 344, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 04:30:05', '2022-03-29 04:30:05'),
(147, 346, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 04:39:46', '2022-03-29 04:39:46'),
(154, 353, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-30 06:21:22', '2022-03-30 06:24:08'),
(165, 366, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'ICFC Finance Ltd', 'aakdfj', 'dfsafksf', 612617768, 111, 0, '2022-04-03 06:11:53', '2022-04-28 08:40:40'),
(166, 367, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'Everst bank', 'Baya Fashion Store Pvt.Ltd', '01254884565258', 10248488, 125, 0, '2022-04-03 07:51:03', '2022-04-03 07:57:40'),
(167, 368, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, 608478803, NULL, 0, '2022-04-03 13:13:21', '2022-04-03 13:37:13'),
(168, 369, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-04 07:50:10', '2022-04-04 07:50:10'),
(169, 370, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, 604352875, NULL, 0, '2022-04-06 06:03:29', '2022-04-24 15:24:58'),
(170, 372, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'Century Bank', 'Alam Ansari', '12900001485', 123456789, 2147483647, 0, '2022-04-18 07:10:27', '2022-04-18 07:21:30'),
(171, 373, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-25 05:15:13', '2022-04-27 05:30:42'),
(172, 374, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, 'Everest Bank', 'Hari Shrestha', '03200501205098', 612137769, 9800, 0, '2022-04-25 09:24:32', '2022-04-25 10:49:38'),
(174, 377, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-27 07:13:04', '2022-04-27 07:35:55'),
(175, 379, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, 110725857, NULL, 0, '2022-04-27 10:11:16', '2022-04-27 10:40:40'),
(176, 382, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-04 08:22:13', '2022-05-04 08:22:13'),
(180, 390, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-25 01:12:26', '2022-05-25 01:12:26'),
(182, 392, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-26 09:03:59', '2022-05-26 09:05:19'),
(184, 395, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'Nabil Bank Ltd.', 'Ganesh Kumar Thapa', '4610017505763', 303404253, 12345, 0, '2022-05-29 08:31:36', '2022-05-29 10:06:11'),
(203, 414, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 05:46:00', '2022-05-30 05:46:00'),
(210, 414, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 05:50:09', '2022-05-30 05:50:09'),
(215, 414, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 05:53:30', '2022-05-30 05:53:30'),
(216, 414, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 05:55:02', '2022-05-30 05:55:02'),
(217, 424, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, 'Nmb', 'Sita', '0237600000987432', 2147483647, 1, 0, '2022-05-30 05:56:27', '2022-05-30 06:02:46'),
(219, 426, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, 'Maga', 'Yamuna', '0123456789', 1234, 1, 0, '2022-05-30 06:06:08', '2022-05-30 06:08:58'),
(220, 414, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 06:06:16', '2022-05-30 06:06:16'),
(224, 424, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 06:14:25', '2022-05-30 06:14:25'),
(225, 424, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 06:14:27', '2022-05-30 06:14:27'),
(226, 424, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-30 06:14:29', '2022-05-30 06:14:29'),
(245, 446, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'Nabil bank', 'Debaraj Rijal', '12710017500192', 607855968, 1, 0, '2022-05-31 06:43:11', '2022-05-31 06:53:03'),
(246, 447, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 07:12:19', '2022-05-31 07:12:19'),
(247, 448, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 09:42:42', '2022-05-31 10:06:47'),
(248, 449, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 10:15:41', '2022-05-31 10:15:41'),
(249, 449, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 10:21:37', '2022-05-31 10:21:37'),
(250, 449, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 10:21:57', '2022-05-31 10:21:57'),
(251, 449, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 10:23:35', '2022-05-31 10:23:35'),
(254, 451, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-31 11:18:47', '2022-05-31 11:33:56'),
(255, 452, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-01 06:33:54', '2022-06-01 07:36:23'),
(259, 461, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, 61281345, NULL, 0, '2022-06-04 12:24:23', '2022-06-04 12:33:10'),
(260, 462, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-04 16:35:08', '2022-06-05 05:10:40'),
(261, 463, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-05 04:54:03', '2022-06-05 05:00:57'),
(262, 464, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-05 05:04:59', '2022-06-05 05:10:38'),
(263, 465, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, 'Machhapuchhre Bank Ltd', 'A1Mart', '18009905933000018', 116054760, 123, 0, '2022-06-05 05:15:19', '2022-06-05 06:27:57'),
(264, 466, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, 122880810, NULL, 0, '2022-06-05 10:31:50', '2022-06-06 12:23:14'),
(265, 467, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-07 09:36:51', '2022-06-07 09:36:51'),
(266, 468, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, 'Everst Bank', 'BP Shoe Center', '1234445894', 123456789, 727383, 0, '2022-06-07 11:19:51', '2022-06-07 11:27:15'),
(267, 469, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-07 20:30:33', '2022-06-07 20:30:33'),
(271, 472, NULL, 0, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '2022-06-08 12:54:04', '2022-06-08 12:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `seller_packages`
--

CREATE TABLE `seller_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(11,2) NOT NULL DEFAULT 0.00,
  `product_upload` int(11) NOT NULL DEFAULT 0,
  `digital_product_upload` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_withdraw_requests`
--

INSERT INTO `seller_withdraw_requests` (`id`, `user_id`, `amount`, `message`, `status`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 1, 10.00, '1000', 0, 0, '2021-09-28 16:12:40', '2021-09-28 16:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'online shopping in nepal,latest shoes design,latest mi smartphones price in nepal', 'Naulo', 11, 'https://naulobazar.com/', 'Naulo is a Nepal\'s largest growing online marketplace aims to provide best online shopping experience to their customers.', '2021-09-29 09:28:50', '2021-09-29 09:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(38, 252, 'Test Shop', NULL, NULL, 'here', '/1', '/123', '/12', '/1234', 'Test-Shop-', NULL, NULL, NULL, 0.00, '2021-12-13 05:19:10', '2021-12-13 05:24:05'),
(39, 253, 'Test Shop', NULL, NULL, 'te', NULL, NULL, NULL, NULL, 'Test-Shop-', NULL, NULL, NULL, 0.00, '2021-12-13 05:26:00', '2021-12-13 05:26:00'),
(40, 254, 'Test Vendor', NULL, NULL, 'Sed quia veniam qui', NULL, NULL, NULL, NULL, 'Test-Vendor-', NULL, NULL, NULL, 0.00, '2021-12-13 05:38:49', '2021-12-13 05:38:49'),
(41, 255, 'Test Shop', 'uploads/shop/logo/qAKehRWcLSQhdryDIbjgkYrYHudWaxrIvuNPV233.png', NULL, 'asdf', NULL, NULL, NULL, NULL, 'Test-Shop-41', 'Test Shop', 'Test Shop', '[]', 0.00, '2021-12-13 06:16:25', '2021-12-13 06:19:15'),
(42, 256, 'Murphy Mcfarland', NULL, NULL, 'Nulla reiciendis mod', NULL, NULL, NULL, NULL, 'Murphy-Mcfarland-', NULL, NULL, NULL, 0.00, '2021-12-13 06:30:57', '2021-12-13 06:30:57'),
(43, 257, 'Test Shop', NULL, NULL, 'Test Shop', NULL, NULL, NULL, NULL, 'Test-Shop-', NULL, NULL, NULL, 0.00, '2021-12-13 06:52:02', '2021-12-13 06:52:02'),
(44, 258, 'Test Shop', NULL, NULL, 'Test Shop', NULL, NULL, NULL, NULL, 'Test-Shop-', NULL, NULL, NULL, 0.00, '2021-12-13 07:05:43', '2021-12-13 07:05:43'),
(46, 262, 'Xaviera Kirby', NULL, NULL, 'Pariatur Dolor quas', NULL, NULL, NULL, NULL, 'Xaviera-Kirby-', NULL, NULL, NULL, 0.00, '2021-12-13 07:35:28', '2021-12-13 07:35:28'),
(47, 263, 'Darryl Warner', NULL, NULL, 'Aut dolore deleniti', NULL, NULL, NULL, NULL, 'Darryl-Warner-', NULL, NULL, NULL, 0.00, '2021-12-13 07:36:17', '2021-12-13 07:36:17'),
(48, 264, 'Samantha Beach', NULL, NULL, 'Tenetur dolor quia q', NULL, NULL, NULL, NULL, 'Samantha-Beach-', NULL, NULL, NULL, 0.00, '2021-12-13 07:52:23', '2021-12-13 07:52:23'),
(53, 283, 'vbI5qAfGQk', NULL, NULL, 'F01lAD09Pv', NULL, NULL, NULL, NULL, 'vbI5qAfGQk-', NULL, NULL, NULL, 0.00, '2022-03-23 05:40:14', '2022-03-23 05:40:14'),
(54, 284, '6OwlvkTb7P', NULL, NULL, 'qXlqhuO6iS', NULL, NULL, NULL, NULL, '6OwlvkTb7P-', NULL, NULL, NULL, 0.00, '2022-03-23 05:44:45', '2022-03-23 05:44:45'),
(111, 353, 'Three P and G suppliers', 'uploads/shop/logo/69EAJ5UwdrdzeIRgCFT5lPQOg2DMQgncyijRwWtu.jpg', NULL, 'Chuchepati,chabahil', NULL, NULL, NULL, NULL, 'Three-P-and-G-suppliers-111', 'Clothing & fashion', 'T-shirt\r\nBag\r\nPants\r\nTracksuits\r\nSuitcase and others items', '[]', 0.00, '2022-03-30 06:21:22', '2022-03-30 06:23:14'),
(120, 366, 'Kankai  Khudra Pasal', 'uploads/shop/logo/vDsSsam1niIPwc3OIKU2KtKam1ztJbH1hmueoszt.jpg', NULL, 'Maitidevi  Temple  Kathmandu', NULL, NULL, NULL, NULL, 'Kankai-Khudra-Pasal-120', 'Grocery', 'Grocery and Home Appearance', '[\"4\"]', 0.00, '2022-04-03 06:11:53', '2022-04-28 08:40:40'),
(121, 367, 'Baya  Fashion Store Pvt.Ltd', 'uploads/shop/logo/EUaBMM5pMIw2Z5wHPH1VOugQdkqrNDMcVJXXyvB8.jpg', NULL, 'Chabahil Kathmandu Nepal', NULL, NULL, NULL, NULL, 'Baya-Fashion-Store-Pvt.Ltd-121', 'Faishon Store', 'Goods Fashion Store', NULL, 0.00, '2022-04-03 07:51:03', '2022-04-03 07:54:16'),
(122, 368, 'Bishwas Ornament', 'uploads/shop/logo/wWKWRooAC0G5kmL7Gv4YEFF1TXDF4A8jqo08lQcP.jpg', NULL, 'Maitidevi  Temple  Kathmandu', NULL, NULL, NULL, NULL, 'Bishwas-Ornament-122', 'Jewellery', 'Best  Quality  Jewellery  Shop', NULL, 0.00, '2022-04-03 13:13:21', '2022-04-03 13:28:54'),
(123, 369, 'OM Shree electronics', 'uploads/shop/logo/8jG1fJAwE0zAffyQMyujokukLu6HhOeteGHYBLmf.jpg', NULL, 'Satdobato 14 lalitpur', NULL, NULL, NULL, NULL, 'OM-Shree-electronics-168', NULL, NULL, NULL, 0.00, '2022-04-04 07:50:10', '2022-04-04 07:50:10'),
(124, 370, 'GlamMe Health N Beauty', 'uploads/shop/logo/IeCKlfnlfTThrfMUpsUxQjCToPT2RGmJ06RaDvYS.png', NULL, 'Imadol, Lalitpur', 'https://www.facebook.com/GlamMeHealthAndBeauty', NULL, NULL, NULL, 'GlamMe-Health-N-Beauty-124', 'GlamMe Health N Beauty', 'We Sale Cosmetic And Multivitamin Products.', NULL, 0.00, '2022-04-06 06:03:29', '2022-05-12 09:41:12'),
(125, 372, 'TiptopTailer', 'uploads/shop/logo/GzrmHHxL4UrGE1PZxYeMrwTJRNYqRjxtNUJQ91z4.jpg', NULL, 'Swarsthinager', NULL, NULL, NULL, NULL, 'TiptopTailer-125', 'Clothing shirting and suiting', 'Boys all items', NULL, 0.00, '2022-04-18 07:10:27', '2022-04-18 07:21:30'),
(126, 373, 'SS fancy shop', NULL, NULL, 'Kirtipur', NULL, NULL, NULL, NULL, 'SS-fancy-shop-171', NULL, NULL, NULL, 0.00, '2022-04-25 05:15:13', '2022-04-25 05:15:13'),
(127, 374, 'Kusum Collection', 'uploads/shop/logo/IyvhSRIU30DIuXkBRNISKzL1bxkoEYHx84E07flG.png', NULL, 'Kritipur -10, Nayabazar', NULL, NULL, NULL, NULL, 'Kusum-Collection-127', 'Cosmetics, gift, khelauna', 'Retail n wholesale', NULL, 0.00, '2022-04-25 09:24:32', '2022-04-25 09:31:47'),
(129, 377, 'Patan Music Center', 'uploads/shop/logo/0dFh3dY1gkp964O0ULMoH4nIo82iTrFCWJEbJQaY.webp', NULL, 'Hakatole-17, Lalitpur', NULL, NULL, NULL, NULL, 'Patan-Music-Center-174', NULL, NULL, NULL, 0.00, '2022-04-27 07:13:04', '2022-04-27 07:13:04'),
(130, 379, 'Dibha Traders Private limited', 'uploads/shop/logo/JTrf2A9Dldpm0ZwkNLbPxzTL8kagJLpHhJqIPEWs.jpg', NULL, 'Sarswotinager Chabhil', NULL, NULL, NULL, NULL, 'Dibha-Traders-Private-limited-130', 'Electronic', 'Electronics Items, Electronic devices, Kitchen items', NULL, 0.00, '2022-04-27 10:11:16', '2022-04-27 10:24:21'),
(131, 382, 'Jabbali Nepal', 'uploads/shop/logo/aw6pfheoEwTlwqnRaigDixQaUMgL46n1u31iEe8m.jpg', NULL, 'Freak Street', NULL, NULL, NULL, NULL, 'Jabbali-Nepal-176', NULL, NULL, NULL, 0.00, '2022-05-04 08:22:13', '2022-05-04 08:22:13'),
(135, 390, 'Deco Himal', 'uploads/shop/logo/qW2ASyxAjt2MdmF7gV4YvG5fK5cGuAFQk88lg5NE.jpg', NULL, 'Chakupat, Patan, Lalitpur', NULL, NULL, NULL, NULL, 'Deco-Himal-180', NULL, NULL, NULL, 0.00, '2022-05-25 01:12:26', '2022-05-25 01:12:26'),
(137, 392, 'Kripalu Info Tech Nepal', 'uploads/shop/logo/wNvOniuDT5ZLFyKhmQiBfMeBu47f9cG2ayPkd7N2.jpg', NULL, 'lakeside-6,ambot,street no:5,pokhara', NULL, NULL, NULL, NULL, 'Kripalu-Info-Tech-Nepal-182', NULL, NULL, NULL, 0.00, '2022-05-26 09:03:59', '2022-05-26 09:03:59'),
(139, 395, 'Manakamana', 'uploads/shop/logo/3ndnTIyrmezwqcuj9yjclMj5lL2gxyFz3AXrExsV.jpg', NULL, 'Bagbazar, Kathmandu', 'Gkt', 'gktthapa@gmail.com', NULL, NULL, 'Manakamana-139', 'Manakamana', 'Mobile phones , Mobile Acessories, gold plated ornaments ,Cosmetics ,Watch , Glasses , charger , Mobile Cover ,Earphones ,Speaker ,Headphones ,Powerbank found here.', NULL, 0.00, '2022-05-29 08:31:36', '2022-05-29 10:06:11'),
(190, 446, 'Dyanaz', 'uploads/shop/logo/TcbiEiKeLPWlTakinbjXOIvdJmNN2XOJCtvxcec5.jpg', NULL, 'Akasedhara kapan', NULL, NULL, NULL, NULL, 'Dyanaz-190', 'Clothes', 'He was running his shop sience 2070', '[\"5\"]', 0.00, '2022-05-31 06:43:11', '2022-05-31 06:48:30'),
(191, 447, 'Fancy stor', 'uploads/shop/logo/IqsmRfhdRnluyC3yjsgeoFYWJfPrg4BqoDaB236s.jpg', NULL, 'Thimi chok', NULL, NULL, NULL, NULL, 'Fancy-stor-246', NULL, NULL, NULL, 0.00, '2022-05-31 07:12:19', '2022-05-31 07:12:19'),
(192, 448, 'So Miya', 'uploads/shop/logo/M8W12sGJDpV524f2Q1rwx8EEcbw2rvYcBdZaVCEn.webp', NULL, 'Kumaripati Lalitpur', NULL, NULL, NULL, NULL, 'So-Miya-247', NULL, NULL, NULL, 0.00, '2022-05-31 09:42:42', '2022-05-31 09:42:42'),
(195, 451, 'Brothers Mobile House', 'uploads/shop/logo/CEtqZA9lgXgIez9bFbLJhBpK7048foRHNrutq2eq.jpg', NULL, 'Kapa Durgamandir', NULL, NULL, NULL, NULL, 'Brothers-Mobile-House-254', NULL, NULL, NULL, 0.00, '2022-05-31 11:18:47', '2022-05-31 11:18:47'),
(196, 452, 'Handball Sports and Clothing Station', 'uploads/shop/logo/nfRWlAFK1rf32P0knBNgdilJii8UoUMW264E1aBX.jpg', NULL, 'Kapan Handball', NULL, NULL, NULL, NULL, 'Handball-Sports-and-Clothing-Station-255', NULL, NULL, NULL, 0.00, '2022-06-01 06:33:54', '2022-06-01 06:33:54'),
(200, 461, 'Regal Clothings Pvt Ltd', 'uploads/shop/logo/Pm3vN5wqfPGKZjDjk00s9mXHUQYy1ONS7m6LSLV5.jpg', NULL, 'Maitidevi Kathmandu', NULL, NULL, NULL, NULL, 'Regal-Clothings-Pvt-Ltd-200', 'Clothings and Fancy', 'Online clothing', '[\"6\"]', 0.00, '2022-06-04 12:24:23', '2022-06-04 12:27:00'),
(201, 462, 'CB _trade', NULL, NULL, 'Lolang', NULL, NULL, NULL, NULL, 'CB-_trade-260', NULL, NULL, NULL, 0.00, '2022-06-04 16:35:08', '2022-06-04 16:35:08'),
(202, 463, 'DENIM & DEVILS', 'uploads/shop/logo/JDGEb2uOK0XpKj8VKoJLnmvqQfBHMWkKUwmOBCCS.jpg', NULL, 'Buddha gate', NULL, NULL, NULL, NULL, 'DENIM-&-DEVILS-261', NULL, NULL, NULL, 0.00, '2022-06-05 04:54:03', '2022-06-05 04:54:03'),
(203, 464, 'The High Himalayan Bakery', 'uploads/shop/logo/jjPg9tpdweJtL1jH6poILqtVWr1ye9WU2yfyi8fa.jpg', NULL, 'Ramhiti', NULL, NULL, NULL, NULL, 'The-High-Himalayan-Bakery-262', NULL, NULL, NULL, 0.00, '2022-06-05 05:04:59', '2022-06-05 05:04:59'),
(204, 465, 'A1mart', 'uploads/shop/logo/nsYRoC4heuJlRhMJVWTb4RHSDeLOphGrRJfO8TuG.jpg', NULL, 'kausaltar-03, Bhaktapur', NULL, NULL, NULL, NULL, 'A1mart-204', 'Mart', 'Best mart in bhaktapur', '[\"6\"]', 0.00, '2022-06-05 05:15:19', '2022-06-05 05:17:28'),
(206, 467, 'priyanasha store', NULL, NULL, 'lalitpur', NULL, NULL, NULL, NULL, 'priyanasha-store-265', NULL, NULL, NULL, 0.00, '2022-06-07 09:36:51', '2022-06-07 09:36:51'),
(207, 468, 'BP Shoe Center', 'uploads/shop/logo/oUITMc1Sc65T2RZyPe7vVoz0waweHOhsGZPuz3Is.png', NULL, 'Purano Buspark Kathmandu', NULL, NULL, NULL, NULL, 'BP-Shoe-Center-207', 'Shoe Center', 'Best Store in Shoe  Center', '[\"6\"]', 0.00, '2022-06-07 11:19:51', '2022-06-07 11:27:15'),
(208, 469, 'Ntg', NULL, NULL, 'Patan Sundhara', NULL, NULL, NULL, NULL, 'Ntg-267', NULL, NULL, NULL, 0.00, '2022-06-07 20:30:33', '2022-06-07 20:30:33'),
(211, 472, 'Ride Fasholic', 'uploads/shop/logo/COeGL3fBxaZu61DejhSdB744I7xqQh6kQ4qNIOSz.jpg', NULL, 'Bhrikuti chowk Kapan Kathmandu', NULL, NULL, NULL, NULL, 'Ride-Fasholic-271', NULL, NULL, NULL, 0.00, '2022-06-08 12:54:05', '2022-06-08 12:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `title`, `body`, `footer`, `created_at`, `updated_at`) VALUES
(21, 'uploads/sliders/1.jpg', 0, 'https://closetnepal.com.np/search?category=men-clothing-fashion', NULL, NULL, NULL, '2020-11-02 11:20:07', '2022-06-03 08:07:56'),
(22, 'uploads/sliders/1.jpeg', 0, 'https://play.google.com/store/apps/details?id=com.costumer.ClosetNepal&hl=en&gl=US', NULL, NULL, NULL, '2020-12-07 08:37:11', '2021-08-16 03:21:41'),
(24, 'uploads/sliders/1.jpeg', 0, 'https://closetnepal.com.np/search?category=cellphones-tabs', NULL, NULL, NULL, '2020-12-07 14:58:36', '2021-09-28 08:52:32'),
(25, 'uploads/sliders/1.jpg', 0, 'https://closetnepal.com.np/search?category=home-decoration-appliance', NULL, NULL, NULL, '2020-12-08 03:10:15', '2021-09-28 08:52:34'),
(26, 'uploads/sliders/IOkZ7xZy5ioPaJ1mNTlfUE1jQQmi7rsBCZGYdpOw.jpg', 0, 'https://www.facebook.com/watch/?v=825284681418924', NULL, NULL, NULL, '2021-09-28 08:52:22', '2021-09-29 09:52:39'),
(27, 'uploads/sliders/g9SdrY46SgLgxLixT3nxW32zB1TtUykJUXJ0Mhi6.jpg', 0, 'https://kinumna.com/', NULL, NULL, NULL, '2021-09-28 08:53:26', '2021-09-29 09:52:39'),
(28, 'uploads/sliders/ItgxaWLFj6EwURw8NG4qPIky1Ar55xgpOX27Lw1h.jpg', 0, 'fb.com', NULL, NULL, NULL, '2021-09-29 09:53:06', '2022-06-03 07:43:41'),
(29, 'uploads/sliders/2epUvpZex5cHg6kplLhW5akPgXh811yXFgbtmtDk.jpg', 0, 'youtube.com', NULL, NULL, NULL, '2021-09-29 09:53:32', '2022-06-03 07:43:41'),
(32, 'uploads/sliders/h0V16pQOf49ZKCWXnfRuU273WGOJO7XIGTO5qxhq.jpg', 1, 'https://naulobazar.com/shops/create', NULL, NULL, NULL, '2022-06-03 08:10:27', '2022-06-03 08:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(5, 204, 4, '2021-08-19 06:37:58', '2021-08-19 06:37:58'),
(6, 205, 2, '2021-08-19 06:39:02', '2021-08-19 06:39:02'),
(7, 206, 3, '2021-08-19 06:40:31', '2021-08-19 06:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'godawarikasaudhanshivi13@gmail.com', '2020-07-16 06:45:52', '2020-07-16 06:45:52'),
(2, 'harikishanchy@gmail.com', '2020-07-26 03:47:14', '2020-07-26 03:47:14'),
(3, 'sauravjoshi603@gmail.com', '2020-07-30 00:59:46', '2020-07-30 00:59:46'),
(4, 'gvendadeldhura@gmail.com', '2020-07-30 04:49:28', '2020-07-30 04:49:28'),
(5, 'gbangurgehawa999@gmail.com', '2020-07-30 05:10:15', '2020-07-30 05:10:15'),
(6, 'Pragatimahata52@gmail.com', '2020-08-02 13:51:13', '2020-08-02 13:51:13'),
(7, 'newarkta420@gmail.com', '2020-08-07 14:15:43', '2020-08-07 14:15:43'),
(8, 'singhjaya2011@gmail.com', '2020-09-25 23:30:23', '2020-09-25 23:30:23'),
(9, 'Www.keshab2055@gmail.com', '2020-10-16 14:14:22', '2020-10-16 14:14:22'),
(10, 'saudprem33@gmail.com', '2020-11-02 09:17:54', '2020-11-02 09:17:54'),
(11, 'thapatiks2043@gmail.com', '2020-11-09 01:47:18', '2020-11-09 01:47:18'),
(12, 'bhuwansir@gmail.com', '2020-11-10 03:52:26', '2020-11-10 03:52:26'),
(13, 'tirthadhikari98@gmail.com', '2020-11-11 16:16:35', '2020-11-11 16:16:35'),
(14, 'prakash.stha007@gmail.com', '2020-11-24 00:37:18', '2020-11-24 00:37:18'),
(15, 'hikmatthapa03@gmail.com', '2020-11-29 06:47:31', '2020-11-29 06:47:31'),
(16, 'rozeegm776@gmail.com', '2020-11-29 15:10:22', '2020-11-29 15:10:22'),
(17, 'bhattrukum@gmail.com', '2020-12-07 10:21:48', '2020-12-07 10:21:48'),
(18, 'adhikarimamata87@gmail.com', '2020-12-08 06:12:09', '2020-12-08 06:12:09'),
(19, 'mhnolee@gmail.com', '2020-12-08 09:38:13', '2020-12-08 09:38:13'),
(20, 'dineshsaud18009@gmail.com', '2020-12-10 07:43:09', '2020-12-10 07:43:09'),
(21, 'shiva.ch2014@gmail.com', '2020-12-11 07:16:11', '2020-12-11 07:16:11'),
(22, 'dearshailendra1997@gmail.com', '2020-12-12 01:19:35', '2020-12-12 01:19:35'),
(23, 'BsHX', '2021-04-17 18:25:01', '2021-04-17 18:25:01'),
(24, 'FIcM', '2021-04-18 11:01:45', '2021-04-18 11:01:45'),
(25, 'tKfM', '2021-04-29 17:37:32', '2021-04-29 17:37:32'),
(26, 'BpQw', '2021-05-01 22:29:48', '2021-05-01 22:29:48'),
(27, 'qYkz', '2021-05-03 02:08:58', '2021-05-03 02:08:58'),
(28, 'TEps', '2021-05-03 15:55:07', '2021-05-03 15:55:07'),
(29, 'CeMO', '2021-05-04 14:15:42', '2021-05-04 14:15:42'),
(30, 'GGvl', '2021-05-07 06:31:37', '2021-05-07 06:31:37'),
(31, 'BVRL', '2021-05-08 07:52:26', '2021-05-08 07:52:26'),
(32, 'KYlw', '2021-05-09 12:10:26', '2021-05-09 12:10:26'),
(33, 'URrf', '2021-05-10 02:50:28', '2021-05-10 02:50:28'),
(34, 'UjCi', '2021-05-11 13:50:33', '2021-05-11 13:50:33'),
(35, 'IZMU', '2021-05-13 01:10:35', '2021-05-13 01:10:35'),
(36, 'hAjD', '2021-05-15 17:15:21', '2021-05-15 17:15:21'),
(37, 'oBrK', '2021-05-19 09:07:11', '2021-05-19 09:07:11'),
(38, '94c3e1550a54@mailing-box.biz', '2021-05-21 17:52:18', '2021-05-21 17:52:18'),
(39, 'Spjc', '2021-06-10 01:49:23', '2021-06-10 01:49:23'),
(40, 'ZZJq', '2021-06-14 11:36:55', '2021-06-14 11:36:55'),
(41, 'SUKM', '2021-06-18 19:24:01', '2021-06-18 19:24:01'),
(42, 'hom24.mgr@gmail.com', '2021-07-29 13:46:20', '2021-07-29 13:46:20'),
(43, 'admsin@gmail.com', '2022-01-27 13:05:38', '2022-01-27 13:05:38'),
(44, 'Prasundahal@gmail.com', '2022-01-27 13:05:51', '2022-01-27 13:05:51'),
(45, 'joshibipin2052@gmail.com', '2022-01-27 15:12:01', '2022-01-27 15:12:01'),
(46, 'eoQO', '2022-02-21 10:44:37', '2022-02-21 10:44:37'),
(47, 'eoQO.(..,\'..\")', '2022-02-21 10:44:41', '2022-02-21 10:44:41'),
(48, 'eoQO\'sLSFeV<\'\">zYoobb', '2022-02-21 10:44:43', '2022-02-21 10:44:43'),
(49, 'eoQO\')/**/AND/**/4049=2677/**/AND/**/(\'jtQX\'=\'jtQX', '2022-02-21 10:44:48', '2022-02-21 10:44:48'),
(50, 'eoQO\'/**/AND/**/7941=4496/**/AND/**/\'XqMI\'=\'XqMI', '2022-02-21 10:44:50', '2022-02-21 10:44:50'),
(51, 'eoQO)/**/AND/**/2681=8779/**/AND/**/(2754=2754', '2022-02-21 10:44:52', '2022-02-21 10:44:52'),
(52, 'eoQO/**/AND/**/8253=4922', '2022-02-21 10:44:53', '2022-02-21 10:44:53'),
(53, 'eoQO/**/AND/**/3973=1086--/**/VCDP', '2022-02-21 10:44:55', '2022-02-21 10:44:55'),
(54, '(SELECT/**/(CASE/**/WHEN/**/(2129=3064)/**/THEN/**', '2022-02-21 10:44:57', '2022-02-21 10:44:57'),
(55, 'eoQO\')/**/AND/**/EXTRACTVALUE(7763,CONCAT(0x5c,0x7', '2022-02-21 10:44:59', '2022-02-21 10:44:59'),
(56, 'eoQO\'/**/AND/**/EXTRACTVALUE(7763,CONCAT(0x5c,0x71', '2022-02-21 10:45:00', '2022-02-21 10:45:00'),
(57, 'eoQO)/**/AND/**/EXTRACTVALUE(7763,CONCAT(0x5c,0x71', '2022-02-21 10:45:03', '2022-02-21 10:45:03'),
(58, 'eoQO/**/AND/**/EXTRACTVALUE(7763,CONCAT(0x5c,0x717', '2022-02-21 10:45:06', '2022-02-21 10:45:06'),
(60, 'eoQO\')/**/AND/**/9503=CAST((CHR(113)||CHR(112)||CH', '2022-02-21 10:45:12', '2022-02-21 10:45:12'),
(61, 'eoQO\'/**/AND/**/9503=CAST((CHR(113)||CHR(112)||CHR', '2022-02-21 10:45:14', '2022-02-21 10:45:14'),
(62, 'eoQO)/**/AND/**/9503=CAST((CHR(113)||CHR(112)||CHR', '2022-02-21 10:45:16', '2022-02-21 10:45:16'),
(63, 'eoQO/**/AND/**/9503=CAST((CHR(113)||CHR(112)||CHR(', '2022-02-21 10:45:18', '2022-02-21 10:45:18'),
(65, 'eoQO\')/**/AND/**/4056/**/IN/**/(SELECT/**/(CHAR(11', '2022-02-21 10:45:23', '2022-02-21 10:45:23'),
(66, 'eoQO\'/**/AND/**/4056/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-21 10:45:24', '2022-02-21 10:45:24'),
(67, 'eoQO)/**/AND/**/4056/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-21 10:45:26', '2022-02-21 10:45:26'),
(68, 'eoQO/**/AND/**/4056/**/IN/**/(SELECT/**/(CHAR(113)', '2022-02-21 10:45:28', '2022-02-21 10:45:28'),
(70, 'eoQO\')/**/AND/**/3225=(SELECT/**/UPPER(XMLType(CHR', '2022-02-21 10:45:35', '2022-02-21 10:45:35'),
(71, 'eoQO\'/**/AND/**/3225=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-21 10:45:36', '2022-02-21 10:45:36'),
(72, 'eoQO)/**/AND/**/3225=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-21 10:45:38', '2022-02-21 10:45:38'),
(73, 'eoQO/**/AND/**/3225=(SELECT/**/UPPER(XMLType(CHR(6', '2022-02-21 10:45:40', '2022-02-21 10:45:40'),
(75, '(SELECT/**/CONCAT(CONCAT(\'qpjkq\',(CASE/**/WHEN/**/', '2022-02-21 10:45:45', '2022-02-21 10:45:45'),
(76, 'eoQO\');SELECT/**/PG_SLEEP(15)--', '2022-02-21 10:45:46', '2022-02-21 10:45:46'),
(77, 'eoQO\';SELECT/**/PG_SLEEP(15)--', '2022-02-21 10:45:48', '2022-02-21 10:45:48'),
(78, 'eoQO);SELECT/**/PG_SLEEP(15)--', '2022-02-21 10:45:50', '2022-02-21 10:45:50'),
(79, 'eoQO;SELECT/**/PG_SLEEP(15)--', '2022-02-21 10:45:51', '2022-02-21 10:45:51'),
(80, 'eoQO\');WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-21 10:45:54', '2022-02-21 10:45:54'),
(81, 'eoQO\';WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-21 10:45:56', '2022-02-21 10:45:56'),
(82, 'eoQO);WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-21 10:45:58', '2022-02-21 10:45:58'),
(83, 'eoQO;WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-21 10:46:00', '2022-02-21 10:46:00'),
(84, 'eoQO\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)', '2022-02-21 10:46:02', '2022-02-21 10:46:02'),
(85, 'eoQO\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)|', '2022-02-21 10:46:03', '2022-02-21 10:46:03'),
(86, 'eoQO);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)|', '2022-02-21 10:46:05', '2022-02-21 10:46:05'),
(87, 'eoQO;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(75)||', '2022-02-21 10:46:07', '2022-02-21 10:46:07'),
(88, 'eoQO\')/**/AND/**/(SELECT/**/4429/**/FROM/**/(SELEC', '2022-02-21 10:46:10', '2022-02-21 10:46:10'),
(89, 'eoQO\'/**/AND/**/(SELECT/**/4429/**/FROM/**/(SELECT', '2022-02-21 10:46:12', '2022-02-21 10:46:12'),
(90, 'eoQO)/**/AND/**/(SELECT/**/4429/**/FROM/**/(SELECT', '2022-02-21 10:46:14', '2022-02-21 10:46:14'),
(91, 'eoQO/**/AND/**/(SELECT/**/4429/**/FROM/**/(SELECT(', '2022-02-21 10:46:16', '2022-02-21 10:46:16'),
(93, 'eoQO\')/**/AND/**/8261=(SELECT/**/8261/**/FROM/**/P', '2022-02-21 10:46:21', '2022-02-21 10:46:21'),
(94, 'eoQO\'/**/AND/**/8261=(SELECT/**/8261/**/FROM/**/PG', '2022-02-21 10:46:23', '2022-02-21 10:46:23'),
(95, 'eoQO)/**/AND/**/8261=(SELECT/**/8261/**/FROM/**/PG', '2022-02-21 10:46:25', '2022-02-21 10:46:25'),
(96, 'eoQO/**/AND/**/8261=(SELECT/**/8261/**/FROM/**/PG_', '2022-02-21 10:46:26', '2022-02-21 10:46:26'),
(98, 'eoQO\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(', '2022-02-21 10:46:31', '2022-02-21 10:46:31'),
(99, 'eoQO\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'K', '2022-02-21 10:46:33', '2022-02-21 10:46:33'),
(100, 'eoQO)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(8', '2022-02-21 10:46:35', '2022-02-21 10:46:35'),
(101, 'eoQO/**/WAITFOR/**/DELAY/**/\'0:0:15\'', '2022-02-21 10:46:37', '2022-02-21 10:46:37'),
(102, 'eoQO/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/RCEa', '2022-02-21 10:46:39', '2022-02-21 10:46:39'),
(103, 'eoQO\')/**/AND/**/9336=DBMS_PIPE.RECEIVE_MESSAGE(CH', '2022-02-21 10:46:41', '2022-02-21 10:46:41'),
(104, 'eoQO\'/**/AND/**/9336=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-21 10:46:42', '2022-02-21 10:46:42'),
(105, 'eoQO)/**/AND/**/9336=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-21 10:46:44', '2022-02-21 10:46:44'),
(106, 'eoQO/**/AND/**/9336=DBMS_PIPE.RECEIVE_MESSAGE(CHR(', '2022-02-21 10:46:47', '2022-02-21 10:46:47'),
(108, 'eoQO\')/**/ORDER/**/BY/**/1--/**/FOHQ', '2022-02-21 10:46:52', '2022-02-21 10:46:52'),
(109, 'eoQO\')/**/ORDER/**/BY/**/5321--/**/EjzA', '2022-02-21 10:46:54', '2022-02-21 10:46:54'),
(110, 'eoQO\'/**/ORDER/**/BY/**/1--/**/FjQX', '2022-02-21 10:46:56', '2022-02-21 10:46:56'),
(111, 'eoQO\'/**/ORDER/**/BY/**/7191--/**/LVTw', '2022-02-21 10:46:57', '2022-02-21 10:46:57'),
(112, 'eoQO)/**/ORDER/**/BY/**/1--/**/wMts', '2022-02-21 10:46:59', '2022-02-21 10:46:59'),
(113, 'eoQO)/**/ORDER/**/BY/**/9337--/**/hAjp', '2022-02-21 10:47:01', '2022-02-21 10:47:01'),
(114, 'eoQO/**/ORDER/**/BY/**/1--/**/ZJnY', '2022-02-21 10:47:02', '2022-02-21 10:47:02'),
(115, 'eoQO/**/ORDER/**/BY/**/8051--/**/sgrK', '2022-02-21 10:47:04', '2022-02-21 10:47:04'),
(116, 'eoQO/**/ORDER/**/BY/**/1--/**/OZTF', '2022-02-21 10:47:07', '2022-02-21 10:47:07'),
(117, 'eoQO/**/ORDER/**/BY/**/9435--/**/cPQk', '2022-02-21 10:47:09', '2022-02-21 10:47:09'),
(118, 'uoub', '2022-02-25 22:14:31', '2022-02-25 22:14:31'),
(119, 'uoub((()\"(.)\'(', '2022-02-25 22:14:34', '2022-02-25 22:14:34'),
(120, 'uoub\'Plmbve<\'\">nZlvGW', '2022-02-25 22:14:36', '2022-02-25 22:14:36'),
(121, 'uoub\')/**/AND/**/7179=7983/**/AND/**/(\'Ehsr\'=\'Ehsr', '2022-02-25 22:14:39', '2022-02-25 22:14:39'),
(122, 'uoub\'/**/AND/**/7560=6948/**/AND/**/\'czjf\'=\'czjf', '2022-02-25 22:14:42', '2022-02-25 22:14:42'),
(123, 'uoub)/**/AND/**/6008=4708/**/AND/**/(1009=1009', '2022-02-25 22:14:44', '2022-02-25 22:14:44'),
(124, 'uoub/**/AND/**/7537=3555', '2022-02-25 22:14:46', '2022-02-25 22:14:46'),
(125, 'uoub/**/AND/**/2992=7840--/**/cRAC', '2022-02-25 22:14:48', '2022-02-25 22:14:48'),
(126, '(SELECT/**/(CASE/**/WHEN/**/(9195=5383)/**/THEN/**', '2022-02-25 22:14:49', '2022-02-25 22:14:49'),
(127, 'uoub\')/**/AND/**/EXTRACTVALUE(2379,CONCAT(0x5c,0x7', '2022-02-25 22:14:51', '2022-02-25 22:14:51'),
(128, 'uoub\'/**/AND/**/EXTRACTVALUE(2379,CONCAT(0x5c,0x71', '2022-02-25 22:14:53', '2022-02-25 22:14:53'),
(129, 'uoub)/**/AND/**/EXTRACTVALUE(2379,CONCAT(0x5c,0x71', '2022-02-25 22:14:55', '2022-02-25 22:14:55'),
(130, 'uoub/**/AND/**/EXTRACTVALUE(2379,CONCAT(0x5c,0x717', '2022-02-25 22:14:57', '2022-02-25 22:14:57'),
(132, 'uoub\')/**/AND/**/1871=CAST((CHR(113)||CHR(113)||CH', '2022-02-25 22:15:02', '2022-02-25 22:15:02'),
(133, 'uoub\'/**/AND/**/1871=CAST((CHR(113)||CHR(113)||CHR', '2022-02-25 22:15:04', '2022-02-25 22:15:04'),
(134, 'uoub)/**/AND/**/1871=CAST((CHR(113)||CHR(113)||CHR', '2022-02-25 22:15:06', '2022-02-25 22:15:06'),
(135, 'uoub/**/AND/**/1871=CAST((CHR(113)||CHR(113)||CHR(', '2022-02-25 22:15:08', '2022-02-25 22:15:08'),
(137, 'uoub\')/**/AND/**/5740/**/IN/**/(SELECT/**/(CHAR(11', '2022-02-25 22:15:13', '2022-02-25 22:15:13'),
(138, 'uoub\'/**/AND/**/5740/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-25 22:15:15', '2022-02-25 22:15:15'),
(139, 'uoub)/**/AND/**/5740/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-25 22:15:16', '2022-02-25 22:15:16'),
(140, 'uoub/**/AND/**/5740/**/IN/**/(SELECT/**/(CHAR(113)', '2022-02-25 22:15:18', '2022-02-25 22:15:18'),
(142, 'uoub\')/**/AND/**/3033=(SELECT/**/UPPER(XMLType(CHR', '2022-02-25 22:15:24', '2022-02-25 22:15:24'),
(143, 'uoub\'/**/AND/**/3033=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-25 22:15:25', '2022-02-25 22:15:25'),
(144, 'uoub)/**/AND/**/3033=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-25 22:15:27', '2022-02-25 22:15:27'),
(145, 'uoub/**/AND/**/3033=(SELECT/**/UPPER(XMLType(CHR(6', '2022-02-25 22:15:29', '2022-02-25 22:15:29'),
(147, '(SELECT/**/CONCAT(CONCAT(\'qqzvq\',(CASE/**/WHEN/**/', '2022-02-25 22:15:33', '2022-02-25 22:15:33'),
(148, 'uoub\');SELECT/**/PG_SLEEP(15)--', '2022-02-25 22:15:35', '2022-02-25 22:15:35'),
(149, 'uoub\';SELECT/**/PG_SLEEP(15)--', '2022-02-25 22:15:37', '2022-02-25 22:15:37'),
(150, 'uoub);SELECT/**/PG_SLEEP(15)--', '2022-02-25 22:15:38', '2022-02-25 22:15:38'),
(151, 'uoub;SELECT/**/PG_SLEEP(15)--', '2022-02-25 22:15:40', '2022-02-25 22:15:40'),
(152, 'uoub\');WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-25 22:15:42', '2022-02-25 22:15:42'),
(153, 'uoub\';WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-25 22:15:43', '2022-02-25 22:15:43'),
(154, 'uoub);WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-25 22:15:45', '2022-02-25 22:15:45'),
(155, 'uoub;WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-25 22:15:47', '2022-02-25 22:15:47'),
(156, 'uoub\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(102', '2022-02-25 22:15:48', '2022-02-25 22:15:48'),
(157, 'uoub\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(102)', '2022-02-25 22:15:50', '2022-02-25 22:15:50'),
(158, 'uoub);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(102)', '2022-02-25 22:15:52', '2022-02-25 22:15:52'),
(159, 'uoub;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(102)|', '2022-02-25 22:15:53', '2022-02-25 22:15:53'),
(160, 'uoub\')/**/AND/**/(SELECT/**/3520/**/FROM/**/(SELEC', '2022-02-25 22:15:55', '2022-02-25 22:15:55'),
(161, 'uoub\'/**/AND/**/(SELECT/**/3520/**/FROM/**/(SELECT', '2022-02-25 22:15:57', '2022-02-25 22:15:57'),
(162, 'uoub)/**/AND/**/(SELECT/**/3520/**/FROM/**/(SELECT', '2022-02-25 22:15:58', '2022-02-25 22:15:58'),
(163, 'uoub/**/AND/**/(SELECT/**/3520/**/FROM/**/(SELECT(', '2022-02-25 22:16:00', '2022-02-25 22:16:00'),
(165, 'uoub\')/**/AND/**/8395=(SELECT/**/8395/**/FROM/**/P', '2022-02-25 22:16:04', '2022-02-25 22:16:04'),
(166, 'uoub\'/**/AND/**/8395=(SELECT/**/8395/**/FROM/**/PG', '2022-02-25 22:16:06', '2022-02-25 22:16:06'),
(167, 'uoub)/**/AND/**/8395=(SELECT/**/8395/**/FROM/**/PG', '2022-02-25 22:16:08', '2022-02-25 22:16:08'),
(168, 'uoub/**/AND/**/8395=(SELECT/**/8395/**/FROM/**/PG_', '2022-02-25 22:16:09', '2022-02-25 22:16:09'),
(170, 'uoub\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(', '2022-02-25 22:16:14', '2022-02-25 22:16:14'),
(171, 'uoub\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'X', '2022-02-25 22:16:16', '2022-02-25 22:16:16'),
(172, 'uoub)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(5', '2022-02-25 22:16:18', '2022-02-25 22:16:18'),
(173, 'uoub/**/WAITFOR/**/DELAY/**/\'0:0:15\'', '2022-02-25 22:16:20', '2022-02-25 22:16:20'),
(174, 'uoub/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/lMXG', '2022-02-25 22:16:21', '2022-02-25 22:16:21'),
(175, 'uoub\')/**/AND/**/1108=DBMS_PIPE.RECEIVE_MESSAGE(CH', '2022-02-25 22:16:23', '2022-02-25 22:16:23'),
(176, 'uoub\'/**/AND/**/1108=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-25 22:16:25', '2022-02-25 22:16:25'),
(177, 'uoub)/**/AND/**/1108=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-25 22:16:26', '2022-02-25 22:16:26'),
(178, 'uoub/**/AND/**/1108=DBMS_PIPE.RECEIVE_MESSAGE(CHR(', '2022-02-25 22:16:28', '2022-02-25 22:16:28'),
(180, 'uoub\')/**/ORDER/**/BY/**/1--/**/kRyy', '2022-02-25 22:16:33', '2022-02-25 22:16:33'),
(181, 'uoub\')/**/ORDER/**/BY/**/9275--/**/hixp', '2022-02-25 22:16:34', '2022-02-25 22:16:34'),
(182, 'uoub\'/**/ORDER/**/BY/**/1--/**/bhRy', '2022-02-25 22:16:36', '2022-02-25 22:16:36'),
(183, 'uoub\'/**/ORDER/**/BY/**/5006--/**/XrAD', '2022-02-25 22:16:38', '2022-02-25 22:16:38'),
(184, 'uoub)/**/ORDER/**/BY/**/1--/**/GkMb', '2022-02-25 22:16:40', '2022-02-25 22:16:40'),
(185, 'uoub)/**/ORDER/**/BY/**/2971--/**/FOQP', '2022-02-25 22:16:42', '2022-02-25 22:16:42'),
(186, 'uoub/**/ORDER/**/BY/**/1--/**/SvnD', '2022-02-25 22:16:43', '2022-02-25 22:16:43'),
(187, 'uoub/**/ORDER/**/BY/**/1980--/**/TLta', '2022-02-25 22:16:45', '2022-02-25 22:16:45'),
(188, 'uoub/**/ORDER/**/BY/**/1--/**/KGOR', '2022-02-25 22:16:47', '2022-02-25 22:16:47'),
(189, 'uoub/**/ORDER/**/BY/**/3821--/**/szwB', '2022-02-25 22:16:48', '2022-02-25 22:16:48'),
(190, 'nxzH', '2022-02-27 01:33:00', '2022-02-27 01:33:00'),
(191, 'nxzH((\'\",),,,,', '2022-02-27 01:33:04', '2022-02-27 01:33:04'),
(192, 'nxzH\'PZxZYq<\'\">HHSKtX', '2022-02-27 01:33:05', '2022-02-27 01:33:05'),
(193, 'nxzH\')/**/AND/**/2185=5752/**/AND/**/(\'FLKX\'=\'FLKX', '2022-02-27 01:33:09', '2022-02-27 01:33:09'),
(194, 'nxzH\'/**/AND/**/2562=5187/**/AND/**/\'phyB\'=\'phyB', '2022-02-27 01:33:11', '2022-02-27 01:33:11'),
(195, 'nxzH)/**/AND/**/1689=2711/**/AND/**/(1769=1769', '2022-02-27 01:33:12', '2022-02-27 01:33:12'),
(196, 'nxzH/**/AND/**/5080=9274', '2022-02-27 01:33:14', '2022-02-27 01:33:14'),
(197, 'nxzH/**/AND/**/7294=9779--/**/OqBM', '2022-02-27 01:33:16', '2022-02-27 01:33:16'),
(198, '(SELECT/**/(CASE/**/WHEN/**/(7393=3993)/**/THEN/**', '2022-02-27 01:33:17', '2022-02-27 01:33:17'),
(199, 'nxzH\')/**/AND/**/EXTRACTVALUE(1961,CONCAT(0x5c,0x7', '2022-02-27 01:33:19', '2022-02-27 01:33:19'),
(200, 'nxzH\'/**/AND/**/EXTRACTVALUE(1961,CONCAT(0x5c,0x71', '2022-02-27 01:33:21', '2022-02-27 01:33:21'),
(201, 'nxzH)/**/AND/**/EXTRACTVALUE(1961,CONCAT(0x5c,0x71', '2022-02-27 01:33:23', '2022-02-27 01:33:23'),
(202, 'nxzH/**/AND/**/EXTRACTVALUE(1961,CONCAT(0x5c,0x717', '2022-02-27 01:33:24', '2022-02-27 01:33:24'),
(204, 'nxzH\')/**/AND/**/8866=CAST((CHR(113)||CHR(120)||CH', '2022-02-27 01:33:29', '2022-02-27 01:33:29'),
(205, 'nxzH\'/**/AND/**/8866=CAST((CHR(113)||CHR(120)||CHR', '2022-02-27 01:33:31', '2022-02-27 01:33:31'),
(206, 'nxzH)/**/AND/**/8866=CAST((CHR(113)||CHR(120)||CHR', '2022-02-27 01:33:33', '2022-02-27 01:33:33'),
(207, 'nxzH/**/AND/**/8866=CAST((CHR(113)||CHR(120)||CHR(', '2022-02-27 01:33:34', '2022-02-27 01:33:34'),
(209, 'nxzH\')/**/AND/**/6857/**/IN/**/(SELECT/**/(CHAR(11', '2022-02-27 01:33:39', '2022-02-27 01:33:39'),
(210, 'nxzH\'/**/AND/**/6857/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-27 01:33:41', '2022-02-27 01:33:41'),
(211, 'nxzH)/**/AND/**/6857/**/IN/**/(SELECT/**/(CHAR(113', '2022-02-27 01:33:43', '2022-02-27 01:33:43'),
(212, 'nxzH/**/AND/**/6857/**/IN/**/(SELECT/**/(CHAR(113)', '2022-02-27 01:33:45', '2022-02-27 01:33:45'),
(214, 'nxzH\')/**/AND/**/2290=(SELECT/**/UPPER(XMLType(CHR', '2022-02-27 01:33:49', '2022-02-27 01:33:49'),
(215, 'nxzH\'/**/AND/**/2290=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-27 01:33:51', '2022-02-27 01:33:51'),
(216, 'nxzH)/**/AND/**/2290=(SELECT/**/UPPER(XMLType(CHR(', '2022-02-27 01:33:53', '2022-02-27 01:33:53'),
(217, 'nxzH/**/AND/**/2290=(SELECT/**/UPPER(XMLType(CHR(6', '2022-02-27 01:33:55', '2022-02-27 01:33:55'),
(219, '(SELECT/**/CONCAT(CONCAT(\'qxppq\',(CASE/**/WHEN/**/', '2022-02-27 01:34:00', '2022-02-27 01:34:00'),
(220, 'nxzH\');SELECT/**/PG_SLEEP(15)--', '2022-02-27 01:34:02', '2022-02-27 01:34:02'),
(221, 'nxzH\';SELECT/**/PG_SLEEP(15)--', '2022-02-27 01:34:03', '2022-02-27 01:34:03'),
(222, 'nxzH);SELECT/**/PG_SLEEP(15)--', '2022-02-27 01:34:05', '2022-02-27 01:34:05'),
(223, 'nxzH;SELECT/**/PG_SLEEP(15)--', '2022-02-27 01:34:07', '2022-02-27 01:34:07'),
(224, 'nxzH\');WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-27 01:34:09', '2022-02-27 01:34:09'),
(225, 'nxzH\';WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-27 01:34:10', '2022-02-27 01:34:10'),
(226, 'nxzH);WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-27 01:34:12', '2022-02-27 01:34:12'),
(227, 'nxzH;WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-02-27 01:34:14', '2022-02-27 01:34:14'),
(228, 'nxzH\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(68)', '2022-02-27 01:34:16', '2022-02-27 01:34:16'),
(229, 'nxzH\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(68)|', '2022-02-27 01:34:17', '2022-02-27 01:34:17'),
(230, 'nxzH);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(68)|', '2022-02-27 01:34:19', '2022-02-27 01:34:19'),
(231, 'nxzH;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(68)||', '2022-02-27 01:34:21', '2022-02-27 01:34:21'),
(232, 'nxzH\')/**/AND/**/(SELECT/**/2904/**/FROM/**/(SELEC', '2022-02-27 01:34:22', '2022-02-27 01:34:22'),
(233, 'nxzH\'/**/AND/**/(SELECT/**/2904/**/FROM/**/(SELECT', '2022-02-27 01:34:24', '2022-02-27 01:34:24'),
(234, 'nxzH)/**/AND/**/(SELECT/**/2904/**/FROM/**/(SELECT', '2022-02-27 01:34:27', '2022-02-27 01:34:27'),
(235, 'nxzH/**/AND/**/(SELECT/**/2904/**/FROM/**/(SELECT(', '2022-02-27 01:34:28', '2022-02-27 01:34:28'),
(237, 'nxzH\')/**/AND/**/8531=(SELECT/**/8531/**/FROM/**/P', '2022-02-27 01:34:34', '2022-02-27 01:34:34'),
(238, 'nxzH\'/**/AND/**/8531=(SELECT/**/8531/**/FROM/**/PG', '2022-02-27 01:34:36', '2022-02-27 01:34:36'),
(239, 'nxzH)/**/AND/**/8531=(SELECT/**/8531/**/FROM/**/PG', '2022-02-27 01:34:38', '2022-02-27 01:34:38'),
(240, 'nxzH/**/AND/**/8531=(SELECT/**/8531/**/FROM/**/PG_', '2022-02-27 01:34:40', '2022-02-27 01:34:40'),
(242, 'nxzH\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(', '2022-02-27 01:34:45', '2022-02-27 01:34:45'),
(243, 'nxzH\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'O', '2022-02-27 01:34:46', '2022-02-27 01:34:46'),
(244, 'nxzH)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(8', '2022-02-27 01:34:48', '2022-02-27 01:34:48'),
(245, 'nxzH/**/WAITFOR/**/DELAY/**/\'0:0:15\'', '2022-02-27 01:34:50', '2022-02-27 01:34:50'),
(246, 'nxzH/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/dtYd', '2022-02-27 01:34:52', '2022-02-27 01:34:52'),
(247, 'nxzH\')/**/AND/**/1893=DBMS_PIPE.RECEIVE_MESSAGE(CH', '2022-02-27 01:34:53', '2022-02-27 01:34:53'),
(248, 'nxzH\'/**/AND/**/1893=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-27 01:34:55', '2022-02-27 01:34:55'),
(249, 'nxzH)/**/AND/**/1893=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-02-27 01:34:57', '2022-02-27 01:34:57'),
(250, 'nxzH/**/AND/**/1893=DBMS_PIPE.RECEIVE_MESSAGE(CHR(', '2022-02-27 01:34:59', '2022-02-27 01:34:59'),
(252, 'nxzH\')/**/ORDER/**/BY/**/1--/**/dsPc', '2022-02-27 01:35:05', '2022-02-27 01:35:05'),
(253, 'nxzH\')/**/ORDER/**/BY/**/9578--/**/ldTG', '2022-02-27 01:35:07', '2022-02-27 01:35:07'),
(254, 'nxzH\'/**/ORDER/**/BY/**/1--/**/WKZX', '2022-02-27 01:35:08', '2022-02-27 01:35:08'),
(255, 'nxzH\'/**/ORDER/**/BY/**/1265--/**/pEFz', '2022-02-27 01:35:10', '2022-02-27 01:35:10'),
(256, 'nxzH)/**/ORDER/**/BY/**/1--/**/vSFx', '2022-02-27 01:35:12', '2022-02-27 01:35:12'),
(257, 'nxzH)/**/ORDER/**/BY/**/9112--/**/JQHu', '2022-02-27 01:35:14', '2022-02-27 01:35:14'),
(258, 'nxzH/**/ORDER/**/BY/**/1--/**/QlJR', '2022-02-27 01:35:15', '2022-02-27 01:35:15'),
(259, 'nxzH/**/ORDER/**/BY/**/5037--/**/ghpF', '2022-02-27 01:35:17', '2022-02-27 01:35:17'),
(260, 'nxzH/**/ORDER/**/BY/**/1--/**/QIgK', '2022-02-27 01:35:19', '2022-02-27 01:35:19'),
(261, 'nxzH/**/ORDER/**/BY/**/2698--/**/ZNry', '2022-02-27 01:35:20', '2022-02-27 01:35:20'),
(262, 'gautamdiwash36@gmail.com', '2022-03-27 03:49:29', '2022-03-27 03:49:29'),
(263, 'Savdasen@gmail.com', '2022-03-27 06:17:33', '2022-03-27 06:17:33'),
(264, 'prlkhadka29@gmail.com', '2022-03-30 13:33:26', '2022-03-30 13:33:26'),
(265, 'DHHQ', '2022-04-16 15:36:26', '2022-04-16 15:36:26'),
(266, 'DHHQ(\")\'((,,,(', '2022-04-16 15:36:31', '2022-04-16 15:36:31'),
(267, 'DHHQ\'gMyxaX<\'\">pVeesF', '2022-04-16 15:36:34', '2022-04-16 15:36:34'),
(268, 'DHHQ\')/**/AND/**/5231=8340/**/AND/**/(\'LNpL\'=\'LNpL', '2022-04-16 15:36:38', '2022-04-16 15:36:38'),
(269, 'DHHQ\'/**/AND/**/9374=7914/**/AND/**/\'oMIX\'=\'oMIX', '2022-04-16 15:36:40', '2022-04-16 15:36:40'),
(270, 'DHHQ)/**/AND/**/3860=9430/**/AND/**/(7198=7198', '2022-04-16 15:36:42', '2022-04-16 15:36:42'),
(271, 'DHHQ/**/AND/**/5420=2245', '2022-04-16 15:36:44', '2022-04-16 15:36:44'),
(272, 'DHHQ/**/AND/**/9982=9017--/**/VPHC', '2022-04-16 15:36:46', '2022-04-16 15:36:46'),
(273, '(SELECT/**/(CASE/**/WHEN/**/(4290=2037)/**/THEN/**', '2022-04-16 15:36:49', '2022-04-16 15:36:49'),
(274, 'DHHQ\')/**/AND/**/EXTRACTVALUE(3516,CONCAT(0x5c,0x7', '2022-04-16 15:36:51', '2022-04-16 15:36:51'),
(275, 'DHHQ\'/**/AND/**/EXTRACTVALUE(3516,CONCAT(0x5c,0x71', '2022-04-16 15:36:52', '2022-04-16 15:36:52'),
(276, 'DHHQ)/**/AND/**/EXTRACTVALUE(3516,CONCAT(0x5c,0x71', '2022-04-16 15:36:55', '2022-04-16 15:36:55'),
(277, 'DHHQ/**/AND/**/EXTRACTVALUE(3516,CONCAT(0x5c,0x717', '2022-04-16 15:36:57', '2022-04-16 15:36:57'),
(279, 'DHHQ\')/**/AND/**/9579=CAST((CHR(113)||CHR(122)||CH', '2022-04-16 15:37:03', '2022-04-16 15:37:03'),
(280, 'DHHQ\'/**/AND/**/9579=CAST((CHR(113)||CHR(122)||CHR', '2022-04-16 15:37:06', '2022-04-16 15:37:06'),
(281, 'DHHQ)/**/AND/**/9579=CAST((CHR(113)||CHR(122)||CHR', '2022-04-16 15:37:07', '2022-04-16 15:37:07'),
(282, 'DHHQ/**/AND/**/9579=CAST((CHR(113)||CHR(122)||CHR(', '2022-04-16 15:37:09', '2022-04-16 15:37:09'),
(284, 'DHHQ\')/**/AND/**/2938/**/IN/**/(SELECT/**/(CHAR(11', '2022-04-16 15:37:14', '2022-04-16 15:37:14'),
(285, 'DHHQ\'/**/AND/**/2938/**/IN/**/(SELECT/**/(CHAR(113', '2022-04-16 15:37:16', '2022-04-16 15:37:16'),
(286, 'DHHQ)/**/AND/**/2938/**/IN/**/(SELECT/**/(CHAR(113', '2022-04-16 15:37:18', '2022-04-16 15:37:18'),
(287, 'DHHQ/**/AND/**/2938/**/IN/**/(SELECT/**/(CHAR(113)', '2022-04-16 15:37:20', '2022-04-16 15:37:20'),
(289, 'DHHQ\')/**/AND/**/9893=(SELECT/**/UPPER(XMLType(CHR', '2022-04-16 15:37:25', '2022-04-16 15:37:25'),
(290, 'DHHQ\'/**/AND/**/9893=(SELECT/**/UPPER(XMLType(CHR(', '2022-04-16 15:37:27', '2022-04-16 15:37:27'),
(291, 'DHHQ)/**/AND/**/9893=(SELECT/**/UPPER(XMLType(CHR(', '2022-04-16 15:37:29', '2022-04-16 15:37:29'),
(292, 'DHHQ/**/AND/**/9893=(SELECT/**/UPPER(XMLType(CHR(6', '2022-04-16 15:37:31', '2022-04-16 15:37:31'),
(294, '(SELECT/**/CONCAT(CONCAT(\'qzpzq\',(CASE/**/WHEN/**/', '2022-04-16 15:37:36', '2022-04-16 15:37:36'),
(295, 'DHHQ\');SELECT/**/PG_SLEEP(15)--', '2022-04-16 15:37:38', '2022-04-16 15:37:38'),
(296, 'DHHQ\';SELECT/**/PG_SLEEP(15)--', '2022-04-16 15:37:40', '2022-04-16 15:37:40'),
(297, 'DHHQ);SELECT/**/PG_SLEEP(15)--', '2022-04-16 15:37:41', '2022-04-16 15:37:41'),
(298, 'DHHQ;SELECT/**/PG_SLEEP(15)--', '2022-04-16 15:37:43', '2022-04-16 15:37:43'),
(299, 'DHHQ\');WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-04-16 15:37:45', '2022-04-16 15:37:45'),
(300, 'DHHQ\';WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-04-16 15:37:48', '2022-04-16 15:37:48'),
(301, 'DHHQ);WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-04-16 15:37:50', '2022-04-16 15:37:50'),
(302, 'DHHQ;WAITFOR/**/DELAY/**/\'0:0:15\'--', '2022-04-16 15:37:52', '2022-04-16 15:37:52'),
(303, 'DHHQ\');SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(121', '2022-04-16 15:37:55', '2022-04-16 15:37:55'),
(304, 'DHHQ\';SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(121)', '2022-04-16 15:37:57', '2022-04-16 15:37:57'),
(305, 'DHHQ);SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(121)', '2022-04-16 15:37:58', '2022-04-16 15:37:58'),
(306, 'DHHQ;SELECT/**/DBMS_PIPE.RECEIVE_MESSAGE(CHR(121)|', '2022-04-16 15:38:00', '2022-04-16 15:38:00'),
(307, 'DHHQ\')/**/AND/**/(SELECT/**/8868/**/FROM/**/(SELEC', '2022-04-16 15:38:02', '2022-04-16 15:38:02'),
(308, 'DHHQ\'/**/AND/**/(SELECT/**/8868/**/FROM/**/(SELECT', '2022-04-16 15:38:04', '2022-04-16 15:38:04'),
(309, 'DHHQ)/**/AND/**/(SELECT/**/8868/**/FROM/**/(SELECT', '2022-04-16 15:38:06', '2022-04-16 15:38:06'),
(310, 'DHHQ/**/AND/**/(SELECT/**/8868/**/FROM/**/(SELECT(', '2022-04-16 15:38:08', '2022-04-16 15:38:08'),
(312, 'DHHQ\')/**/AND/**/2768=(SELECT/**/2768/**/FROM/**/P', '2022-04-16 15:38:15', '2022-04-16 15:38:15'),
(313, 'DHHQ\'/**/AND/**/2768=(SELECT/**/2768/**/FROM/**/PG', '2022-04-16 15:38:17', '2022-04-16 15:38:17'),
(314, 'DHHQ)/**/AND/**/2768=(SELECT/**/2768/**/FROM/**/PG', '2022-04-16 15:38:20', '2022-04-16 15:38:20'),
(315, 'DHHQ/**/AND/**/2768=(SELECT/**/2768/**/FROM/**/PG_', '2022-04-16 15:38:22', '2022-04-16 15:38:22'),
(317, 'DHHQ\')/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(', '2022-04-16 15:38:27', '2022-04-16 15:38:27'),
(318, 'DHHQ\'/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/\'m', '2022-04-16 15:38:30', '2022-04-16 15:38:30'),
(319, 'DHHQ)/**/WAITFOR/**/DELAY/**/\'0:0:15\'/**/AND/**/(4', '2022-04-16 15:38:33', '2022-04-16 15:38:33'),
(320, 'DHHQ/**/WAITFOR/**/DELAY/**/\'0:0:15\'', '2022-04-16 15:38:34', '2022-04-16 15:38:34'),
(321, 'DHHQ/**/WAITFOR/**/DELAY/**/\'0:0:15\'--/**/oisN', '2022-04-16 15:38:37', '2022-04-16 15:38:37'),
(322, 'DHHQ\')/**/AND/**/5005=DBMS_PIPE.RECEIVE_MESSAGE(CH', '2022-04-16 15:38:39', '2022-04-16 15:38:39'),
(323, 'DHHQ\'/**/AND/**/5005=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-04-16 15:38:41', '2022-04-16 15:38:41'),
(324, 'DHHQ)/**/AND/**/5005=DBMS_PIPE.RECEIVE_MESSAGE(CHR', '2022-04-16 15:38:44', '2022-04-16 15:38:44'),
(325, 'DHHQ/**/AND/**/5005=DBMS_PIPE.RECEIVE_MESSAGE(CHR(', '2022-04-16 15:38:46', '2022-04-16 15:38:46'),
(327, 'DHHQ\')/**/ORDER/**/BY/**/1--/**/xZSj', '2022-04-16 15:38:51', '2022-04-16 15:38:51'),
(328, 'DHHQ\')/**/ORDER/**/BY/**/6136--/**/IdyG', '2022-04-16 15:38:53', '2022-04-16 15:38:53'),
(329, 'DHHQ\'/**/ORDER/**/BY/**/1--/**/vwwD', '2022-04-16 15:38:55', '2022-04-16 15:38:55'),
(330, 'DHHQ\'/**/ORDER/**/BY/**/9002--/**/iuaB', '2022-04-16 15:38:57', '2022-04-16 15:38:57'),
(331, 'DHHQ)/**/ORDER/**/BY/**/1--/**/cTDH', '2022-04-16 15:38:59', '2022-04-16 15:38:59'),
(332, 'DHHQ)/**/ORDER/**/BY/**/3127--/**/eTBz', '2022-04-16 15:39:01', '2022-04-16 15:39:01'),
(333, 'DHHQ/**/ORDER/**/BY/**/1--/**/rvmB', '2022-04-16 15:39:04', '2022-04-16 15:39:04'),
(334, 'DHHQ/**/ORDER/**/BY/**/5098--/**/HLSt', '2022-04-16 15:39:07', '2022-04-16 15:39:07'),
(335, 'DHHQ/**/ORDER/**/BY/**/1--/**/XJfY', '2022-04-16 15:39:09', '2022-04-16 15:39:09'),
(336, 'DHHQ/**/ORDER/**/BY/**/1139--/**/ekys', '2022-04-16 15:39:12', '2022-04-16 15:39:12'),
(337, 'manandhar.ok@gmail.com', '2022-04-18 06:24:15', '2022-04-18 06:24:15'),
(338, 'pradumnasln@gmail.com', '2022-05-25 13:03:35', '2022-05-25 13:03:35'),
(339, 'sujanastha7580@gmali.com', '2022-05-30 06:17:13', '2022-05-30 06:17:13'),
(340, 'islammansur286@gmail.com', '2022-05-31 10:05:05', '2022-05-31 10:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Nail Art & Tools', 6, 'nail-art-tools', 'Nail Art & Tools', 'Nail Art & Tools', '2019-03-12 06:13:24', '2020-06-03 19:48:47'),
(2, 'Skin Care', 6, 'skin-care', 'Skin Care', 'Skin Care', '2019-03-12 06:13:44', '2020-06-03 19:48:06'),
(3, 'Makeup', 6, 'Makeup', 'Makeup', 'Makeup', '2019-03-12 06:13:59', '2020-06-03 19:47:27'),
(4, 'Mobile  Accessories', 11, 'mobile-accessories', 'Mobile Phone Accessories', 'Mobile Phone Accessories', '2019-03-12 06:18:25', '2020-06-03 19:46:08'),
(5, 'Mobile Phone Parts', 11, 'mobile-phone-parts', 'Mobile Phone Parts', 'Mobile Phone Parts', '2019-03-12 06:18:38', '2020-06-03 19:45:23'),
(6, 'Mobile Phones', 11, 'mobile-phones', 'Mobile Phones', 'Mobile Phones', '2019-03-12 06:18:51', '2020-06-03 19:44:53'),
(7, 'Home Decor', 7, 'home-decor', 'Home Decor', 'Home Decor', '2019-03-12 06:19:05', '2020-06-03 19:43:55'),
(8, 'Home Textile', 7, 'home-textile', 'Home Textile', 'Home Textile', '2019-03-12 06:19:13', '2020-06-03 19:43:20'),
(9, 'Furniture', 7, 'furniture', 'Furniture', 'Furniture', '2019-03-12 06:19:22', '2020-06-03 19:42:32'),
(10, 'Indoor Lighting', 7, 'Indoor-Lighting', 'Indoor Lighting', 'Indoor Lighting', '2020-06-03 19:49:17', '2020-06-03 19:49:29'),
(11, 'Men’s watch', 4, 'Mens-watch-Laz5s', 'Men’s watch', 'Men’s watch', '2020-06-03 19:50:22', '2020-06-03 19:50:22'),
(16, 'Baby & Mother', 2, 'Baby--Mother-w1QB0', 'Baby & Mother', 'Baby & Mother', '2020-06-03 19:52:15', '2020-06-03 19:52:15'),
(17, 'Shoes & Bag', 2, 'Shoes--Bag-yrbVX', 'Shoes & Bag', 'Shoes & Bag', '2020-06-03 19:52:35', '2020-06-03 19:52:35'),
(18, 'Girls Clothing', 2, 'Girls-Clothing-0Zpat', 'Girls Clothing', 'Girls Clothing', '2020-06-03 19:52:52', '2020-06-03 19:52:52'),
(19, 'Boys Clothing', 2, 'Boys-Clothing-uub2m', 'Boys Clothing', 'Boys Clothing', '2020-06-03 19:53:11', '2020-06-03 19:53:11'),
(20, 'Baby Clothing', 2, 'Baby-Clothing-Z2EOV', 'Baby Clothing', 'Baby Clothing', '2020-06-03 19:53:34', '2020-06-03 19:53:34'),
(24, 'Components & Peripherals', 10, 'Components--Peripherals-n2dbI', 'Components & Peripherals', 'Components & Peripherals', '2020-06-03 19:55:02', '2020-06-03 19:55:02'),
(25, 'Gaming pc', 10, 'Gaming-pc-1KCJk', 'Gaming pc', 'Gaming pc', '2020-06-03 19:55:29', '2020-06-03 19:55:29'),
(26, 'Laptop & Accessories', 10, 'Laptop--Accessories-eNAS1', 'Laptop & Accessories', 'Laptop & Accessories', '2020-06-03 19:55:47', '2020-06-03 19:55:47'),
(27, 'Accessories', 4, 'Accessories-FqBZZ', 'Accessories', 'Accessories', '2020-06-03 19:56:08', '2020-06-03 19:56:08'),
(28, 'Underwear & Loungewear Accessories', 4, 'Underwear--Loungewear-Accessories-8TlK0', 'Underwear & Loungewear Accessories', 'Underwear & Loungewear Accessories', '2020-06-03 19:56:30', '2020-06-03 19:56:30'),
(29, 'Outwear & jackets', 4, 'Outwear--jackets-mjIMA', 'Outwear & jackets', 'Outwear & jackets', '2020-06-03 19:56:59', '2020-06-03 19:56:59'),
(30, 'Wedding & events', 1, 'Wedding--events-ytBZC', 'Wedding & events', 'Wedding & events', '2020-06-03 19:57:22', '2020-06-03 19:57:22'),
(32, 'Office furniture', 5, 'Office-furniture-sBgRC', 'Office furniture', 'Office furniture', '2020-06-04 12:16:01', '2020-06-04 12:16:01'),
(33, 'Beverages', 3, 'Beverages-ZAzc7', 'Beverages', 'Beverages', '2020-06-04 18:50:25', '2020-06-04 18:50:25'),
(34, 'Breakfast', 3, 'Breakfast-FEVUk', NULL, 'Breakfast', '2020-06-04 18:58:10', '2020-06-04 18:58:10'),
(35, 'Canned, Dry & Packaged Foods', 3, 'Canned-Dry--Packaged-Foods-ooWiY', NULL, 'Canned, Dry & Packaged Foods', '2020-06-04 18:58:54', '2020-06-04 18:58:54'),
(36, 'Cooking Ingredients', 3, 'Cooking-Ingredients-cXlml', NULL, 'Cooking Ingredients', '2020-06-04 19:00:23', '2020-06-04 19:00:23'),
(37, 'Laundry & Household', 3, 'Laundry--Household-OQIst', 'Laundry & Household', 'Laundry & Household', '2020-06-04 19:01:02', '2020-06-04 19:01:02'),
(38, 'Wines Beers & Alcohol', 3, 'Wines-Beers--Alcohol-nKl8I', 'Wines Beers & Alcohol', 'Wines Beers & Alcohol', '2020-06-04 19:01:30', '2020-06-04 19:01:30'),
(39, 'Tobaco', 3, 'Tobaco-IKCjS', NULL, 'Tobaco', '2020-06-04 19:02:10', '2020-06-04 19:02:10'),
(40, 'Pet Supplies', 3, 'Pet-Supplies-0Z27V', NULL, 'Pet Supplies', '2020-06-04 19:02:42', '2020-06-04 19:02:42'),
(41, 'Snacks', 3, 'Snacks-Uz2U8', 'Snacks', 'Snacks', '2020-06-04 19:28:17', '2020-06-04 19:28:17'),
(42, 'Candy & Chocolate', 3, 'Candy--Chocolate-K8asX', 'Candy & Chocolate', 'Candy & Chocolate', '2020-06-04 19:31:16', '2020-06-04 19:31:16'),
(43, 'Bath & Body', 6, 'Bath--Body-d2sMQ', 'Bath & Body', 'Bath & Body', '2020-06-04 19:34:35', '2020-06-04 19:34:35'),
(44, 'Beauty Tools', 6, 'Beauty-Tools-nACxJ', 'Beauty Tools', 'Beauty Tools', '2020-06-04 19:35:08', '2020-06-04 19:35:08'),
(45, 'Fragrances', 6, 'Fragrances-eOTnD', 'Fragrances', 'Fragrances', '2020-06-04 19:35:32', '2020-06-04 19:35:32'),
(46, 'Hair Care', 6, 'Hair-Care-4Blvr', 'Hair Care', 'Hair Care', '2020-06-04 19:36:00', '2020-06-04 19:36:00'),
(47, 'Men\'s Care', 6, 'Mens-Care-ZgcP9', 'Men\'s Care', 'Men\'s Care', '2020-06-04 19:36:44', '2020-06-04 19:36:44'),
(48, 'Personal Care', 6, 'Personal-Care-XglBm', 'Personal Care', 'Personal Care', '2020-06-04 19:37:16', '2020-06-04 19:37:16'),
(49, 'Food Supplements', 6, 'Food-Supplements-rtFyX', 'Food Supplements', 'Food Supplements', '2020-06-04 19:38:11', '2020-06-04 19:38:11'),
(50, 'Medical Supplies', 6, 'Medical-Supplies-aV13Y', 'Medical Supplies', 'Medical Supplies', '2020-06-04 19:38:48', '2020-06-04 19:38:48'),
(51, 'Mobiles', 11, 'Mobiles-PW6X7', 'Mobiles', 'Mobiles', '2020-06-04 20:08:46', '2020-06-04 20:08:46'),
(52, 'Tablets', 11, 'Tablets-iBk24', 'Tablets', 'Tablets', '2020-06-04 20:09:10', '2020-06-04 20:09:10'),
(53, 'Laptops', 10, 'Laptops-KLAjI', 'Laptops', 'Laptops', '2020-06-04 20:09:43', '2020-06-04 20:09:43'),
(54, 'Desktops Computers', 10, 'Desktops-Computers-1QU5r', 'Desktops Computers', 'Desktops Computers', '2020-06-04 20:10:12', '2020-06-04 20:10:12'),
(55, 'Console Gaming', 10, 'Console-Gaming-Xavpg', 'Console Gaming', 'Console Gaming', '2020-06-04 20:10:44', '2020-06-04 20:10:44'),
(56, 'Desktops Computers', 10, 'Desktops-Computers-MSzXv', 'Desktops Computers', 'Desktops Computers', '2020-06-04 20:11:32', '2020-06-04 20:11:32'),
(57, 'Printers', 10, 'Printers-6nFfs', 'Printers', 'Printers', '2020-06-04 20:13:10', '2020-06-04 20:13:10'),
(68, 'Kitchenware', 7, 'Kitchenware-57VeS', 'Kitchenware', 'Kitchenware', '2020-06-07 18:55:10', '2020-06-07 18:55:10'),
(69, 'Strollers', 2, 'Strollers-bdbAg', 'Strollers for baby', 'Strollers for baby', '2020-06-07 19:03:34', '2020-06-07 19:03:34'),
(70, 'Baby Carrier', 2, 'Baby-Carrier-feywa', 'Baby Carrier', 'Baby Carrier', '2020-06-07 19:04:17', '2020-06-07 19:04:17'),
(71, 'Mosquito Net', 2, 'Mosquito-Net-ZQLPP', 'Mosquito Net', 'Mosquito Net', '2020-06-07 19:04:56', '2020-06-07 19:04:56'),
(72, 'Safety Seat Cushion', 2, 'Safety-Seat-Cushion-KBqpu', 'Safety Seat Cushion', 'Safety Seat Cushion', '2020-06-07 19:05:44', '2020-06-07 19:05:44'),
(73, 'Accessories', 2, 'Accessories-lvsak', 'Accessories', 'Accessories', '2020-06-07 19:06:43', '2020-06-07 19:06:43'),
(74, 'Toys', 2, 'Toys-dZqaJ', 'Toys', 'Toys', '2020-06-07 19:07:42', '2020-06-07 19:07:42'),
(75, 'Meat & Fish', 3, 'Meat--Fish-sdHxL', 'Meat & Fish', 'Meat & Fish', '2020-06-08 08:45:17', '2020-06-08 08:45:17'),
(76, 'Food Staples', 3, 'Food-Staples-xpcIR', 'Food Staples| Food products and many more', 'Food products in Nepal', '2020-06-08 15:36:05', '2020-06-08 15:36:54'),
(77, 'Cooking Ingredients', 1, 'Cooking-Ingredients-hC5f1', 'Cooking Ingredients', 'Cooking Ingredients', '2020-06-08 15:44:09', '2020-06-08 15:44:09'),
(78, 'Shoes', 1, 'Shoes-ln2XP', 'Shoes for girls', NULL, '2020-11-06 07:14:39', '2020-11-06 07:14:39'),
(79, 'Shoes', 4, 'Shoes-Ap9zB', 'Shoes for boys', NULL, '2020-11-06 07:15:10', '2020-11-06 07:15:10'),
(80, 'Tea and Coffee', 3, 'Tea-and-Coffee-Q2FzI', 'Tea', NULL, '2021-06-01 07:07:31', '2021-06-01 07:07:31'),
(82, 'LED TV', 16, 'LED-TV-LISPC', 'LED TV', 'LED TV', '2021-08-20 07:41:53', '2021-08-20 07:41:53'),
(83, 'Mobile Phone', 16, 'Mobile-Phone-WMwy1', 'Mobile, Phone,', 'Nokia, Samsung, LG, Apple, iPhone', '2021-10-06 02:57:06', '2021-10-06 02:57:06'),
(84, 'Mouse', 16, 'Mouse-QM9Gn', 'Computer, Mouse, Keyboard', 'Computer, Mouse, Keyboard, Software', '2021-10-06 02:58:47', '2021-10-06 02:58:47'),
(87, 'Gold Jewellery', 19, 'Gold-Jeweller-1qJHv', 'Gold Jeweller', NULL, '2022-03-30 10:34:34', '2022-03-30 10:36:03'),
(88, 'Silver Jewellery', 19, 'Silver-Jewellery-EV7mE', NULL, NULL, '2022-03-30 10:35:56', '2022-03-30 10:35:56'),
(89, 'Televisions', 20, 'Televisions-9TJvW', NULL, NULL, '2022-04-10 11:35:06', '2022-04-10 11:35:35'),
(90, 'smartphone', 21, 'smartphone-uh4hU', 'phone,laptop', NULL, '2022-04-11 05:27:26', '2022-04-11 05:27:26'),
(91, 'tablets', 21, 'tablets-MF8RH', 'phone,laptop', NULL, '2022-04-11 05:28:35', '2022-04-11 05:28:35'),
(92, 'T-shirt', 22, 'T-shirt-IdjgI', 'clothes', NULL, '2022-04-11 06:24:57', '2022-04-11 06:24:57'),
(93, 'laptops', 21, 'laptops-IiHBd', 'phone,laptop', NULL, '2022-04-11 06:33:31', '2022-04-11 06:33:31'),
(94, 'desktops', 21, 'desktops-SAIRr', 'phone,laptop', NULL, '2022-04-11 06:35:29', '2022-04-11 06:35:29'),
(95, 'printers', 21, 'printers-c5ypE', 'printers', NULL, '2022-04-11 06:36:20', '2022-04-11 06:36:20'),
(96, 'cameras', 21, 'cameras-vUCzZ', 'cameras', NULL, '2022-04-11 06:37:10', '2022-04-11 06:37:10'),
(97, 'gaming consoles', 21, 'gaming-consoles-j9TxV', 'gaming', NULL, '2022-04-11 06:38:24', '2022-04-11 06:38:24'),
(98, 'T-shirt', 23, 'T-shirt-Fytld', NULL, NULL, '2022-04-11 06:47:50', '2022-04-11 06:47:50'),
(99, 'Shoes', 23, 'Shoes-Ca2VL', NULL, NULL, '2022-04-11 06:48:27', '2022-04-11 06:48:27'),
(100, 'Men\'s Bag', 23, 'Mens-Bag-rGe6z', NULL, NULL, '2022-04-11 06:49:05', '2022-04-11 06:49:05'),
(101, 'Accessories', 23, 'Accessories-EZBOc', NULL, NULL, '2022-04-11 06:50:17', '2022-04-11 06:50:17'),
(102, 'Boy\'s Fashion', 23, 'Boys-Fashion-wgx6I', NULL, NULL, '2022-04-11 06:51:00', '2022-04-11 06:51:00'),
(103, 'Men\'s Underwear', 23, 'Mens-Underwear-YTuat', NULL, NULL, '2022-04-11 06:52:01', '2022-04-11 06:52:01'),
(104, 'Girl\'s Fashion', 22, 'Girls-Fashion-yxdMH', NULL, NULL, '2022-04-11 06:53:03', '2022-04-11 06:53:03'),
(105, 'Women\'s Bag', 22, 'Womens-Bag-LeIjG', NULL, NULL, '2022-04-11 06:54:21', '2022-04-11 06:54:21'),
(106, 'Shoes', 22, 'Shoes-Rr7dG', NULL, NULL, '2022-04-11 06:54:43', '2022-04-11 06:54:43'),
(107, 'Traditional Clothes', 22, 'Traditional-Clothes-WNX12', NULL, NULL, '2022-04-11 06:55:26', '2022-04-11 06:55:26'),
(109, 'Accessories', 22, 'Accessories-7Nm8N', NULL, NULL, '2022-04-11 06:58:25', '2022-04-11 06:58:25'),
(110, 'Lingerie,Sleep & Lounge', 22, 'LingerieSleep--Lounge-Ctmc0', NULL, NULL, '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(111, 'Men\'s Watches', 24, 'Mens-Watches-BJK37', NULL, NULL, '2022-04-11 07:06:13', '2022-04-11 07:06:13'),
(112, 'Women\'s Watches', 24, 'Womens-Watches-axzYG', NULL, NULL, '2022-04-11 07:06:48', '2022-04-11 07:06:48'),
(113, 'kid\'s Watches', 24, 'kids-Watches-vkAnm', NULL, NULL, '2022-04-11 07:07:10', '2022-04-11 07:07:10'),
(114, 'Sunglasses', 24, 'Sunglasses-ShtXk', NULL, NULL, '2022-04-11 07:07:46', '2022-04-11 07:07:46'),
(115, 'Eyeglasses', 24, 'Eyeglasses-MwJww', NULL, NULL, '2022-04-11 07:08:06', '2022-04-11 07:08:06'),
(116, 'Women Fashion Jewellery', 24, 'Women-Fashion-Jewellery-BxnX3', NULL, NULL, '2022-04-11 07:08:55', '2022-04-11 07:08:55'),
(117, 'Men Fashion Jewellery', 24, 'Men-Fashion-Jewellery-zSo8m', NULL, NULL, '2022-04-11 07:09:28', '2022-04-11 07:09:28'),
(118, 'Men Shoes & Clothing', 25, 'Men-Shoes--Clothing-nOjGY', NULL, NULL, '2022-04-11 07:15:26', '2022-04-11 07:15:26'),
(121, 'Mobile Accessories', 26, 'Mobile-Accessories-3eXtT', NULL, NULL, '2022-04-11 07:17:14', '2022-04-11 07:17:14'),
(123, 'Storage', 26, 'Storage-WXfVy', NULL, NULL, '2022-04-11 07:17:52', '2022-04-11 07:17:52'),
(125, 'Camera Accessories', 26, 'Camera-Accessories-qoWel', NULL, NULL, '2022-04-11 07:18:38', '2022-04-11 07:18:38'),
(127, 'Computer Accessories', 26, 'Computer-Accessories-ovlPK', NULL, NULL, '2022-04-11 07:19:31', '2022-04-11 07:19:31'),
(132, 'automotive', 27, 'automotive-rBf8Z', NULL, NULL, '2022-04-11 07:23:51', '2022-04-11 07:23:51'),
(133, 'Motorcycles', 27, 'Motorcycles-kEHPA', NULL, NULL, '2022-04-11 07:24:14', '2022-04-11 07:24:14'),
(134, 'Auto Cares', 27, 'Auto-Cares-AHgvj', NULL, NULL, '2022-04-11 07:24:41', '2022-04-11 07:24:41'),
(135, 'Auto Electronics', 27, 'Auto-Electronics-YpfKX', NULL, NULL, '2022-04-11 07:25:25', '2022-04-11 07:25:25'),
(136, 'Moto Parts & Accesseries', 27, 'Moto-Parts--Accesseries-gSMRh', NULL, NULL, '2022-04-11 07:26:10', '2022-04-11 07:26:10'),
(137, 'Motorcycle Riding Gear', 27, 'Motorcycle-Riding-Gear-jQpfb', NULL, NULL, '2022-04-11 07:27:11', '2022-04-11 07:27:11'),
(138, 'Helmets', 27, 'Helmets-b1yfT', NULL, NULL, '2022-04-11 07:27:30', '2022-04-11 07:27:30'),
(140, 'Gloves', 27, 'Gloves-uUBfe', NULL, NULL, '2022-04-11 07:28:06', '2022-04-11 07:28:06'),
(141, 'Interior Accessories', 27, 'Interior-Accessories-4VVDj', NULL, NULL, '2022-04-11 07:28:59', '2022-04-11 07:28:59'),
(142, 'Auto Oils & Fluids', 27, 'Auto-Oils--Fluids-CAveU', NULL, NULL, '2022-04-11 07:29:50', '2022-04-11 07:29:50'),
(143, 'Auto Tires & Wheels', 27, 'Auto-Tires--Wheels-Cv9Uj', NULL, NULL, '2022-04-11 07:30:25', '2022-04-11 07:30:25'),
(144, 'Lubricants', 27, 'Lubricants-OJmnM', NULL, NULL, '2022-04-11 07:31:36', '2022-04-11 07:31:36'),
(145, 'Audio', 26, 'Audio-fdZCP', NULL, NULL, '2022-04-11 07:33:15', '2022-04-11 07:33:15'),
(146, 'Wearable', 26, 'Wearable-10cG8', NULL, NULL, '2022-04-11 07:34:23', '2022-04-11 07:34:23'),
(147, 'Printers Accessories', 26, 'Printers-Accessories-UtRgf', NULL, NULL, '2022-04-11 07:36:18', '2022-04-11 07:36:18'),
(148, 'Clothing', 22, 'Clothing-DeCQB', NULL, NULL, '2022-04-11 07:36:20', '2022-04-11 07:36:20'),
(149, 'Network Components', 26, 'Network-Components-f8cNe', NULL, NULL, '2022-04-11 07:37:18', '2022-04-11 07:37:18'),
(150, 'Clothing', 23, 'Clothing-OhlKC', NULL, NULL, '2022-04-12 05:13:04', '2022-04-12 05:13:04'),
(151, 'bath', 28, 'bath-WMmgs', NULL, NULL, '2022-04-12 05:47:11', '2022-04-12 05:47:11'),
(152, 'bedding', 28, 'bedding-iOPaa', NULL, NULL, '2022-04-12 05:47:53', '2022-04-12 05:47:53'),
(153, 'Decor', 28, 'Decor-0RTMB', NULL, NULL, '2022-04-12 05:48:32', '2022-04-12 05:48:32'),
(154, 'Furniture', 28, 'Furniture-mvL95', NULL, NULL, '2022-04-12 05:49:45', '2022-04-12 05:49:45'),
(155, 'Lighting', 28, 'Lighting-CKBt5', NULL, NULL, '2022-04-12 05:50:51', '2022-04-12 05:50:51'),
(156, 'Kitchen & Dining', 28, 'Kitchen--Dining-ZAcKO', NULL, NULL, '2022-04-12 05:52:18', '2022-04-12 05:52:18'),
(157, 'Laundry & Cleaning', 28, 'Laundry--Cleaning-PSEyi', NULL, NULL, '2022-04-12 05:54:00', '2022-04-12 05:54:00'),
(158, 'Media,Music & Book', 28, 'MediaMusic--Book-WRJ2D', NULL, NULL, '2022-04-12 05:55:48', '2022-04-12 05:55:48'),
(159, 'Media,Music & Book', 28, 'MediaMusic--Book-5suRM', NULL, NULL, '2022-04-12 05:55:48', '2022-04-12 05:55:48'),
(160, 'Craft & Stationery', 28, 'Craft--Stationery-AVv2v', NULL, NULL, '2022-04-12 05:57:09', '2022-04-12 05:57:09'),
(161, 'Digital Goods', 28, 'Digital-Goods-3TQ7r', NULL, NULL, '2022-04-12 05:58:17', '2022-04-12 05:58:17'),
(162, 'Digital Goods', 28, 'Digital-Goods-jS5An', NULL, NULL, '2022-04-12 05:58:18', '2022-04-12 05:58:18'),
(163, 'Bath & Body', 6, 'Bath--Body-FzQRR', NULL, NULL, '2022-04-12 06:05:15', '2022-04-12 06:05:15'),
(164, 'Beauty Tools', 6, 'Beauty-Tools-uAdZO', NULL, NULL, '2022-04-12 06:06:03', '2022-04-12 06:06:03'),
(165, 'Makeup', 6, 'Makeup-Ox9ky', NULL, NULL, '2022-04-12 06:06:37', '2022-04-12 06:06:37'),
(166, 'Skin Care', 6, 'Skin-Care-0x5O6', NULL, NULL, '2022-04-12 06:07:19', '2022-04-12 06:07:19'),
(167, 'Mens Care', 6, 'Mens-Care-oJvik', NULL, NULL, '2022-04-12 06:08:33', '2022-04-12 06:08:33'),
(168, 'Fragrances', 6, 'Fragrances-gt3sU', NULL, NULL, '2022-04-12 06:10:39', '2022-04-12 06:10:39'),
(169, 'Personal Care', 6, 'Personal-Care-zSc8N', NULL, NULL, '2022-04-12 06:11:15', '2022-04-12 06:11:15'),
(170, 'Hair Care', 6, 'Hair-Care-MS7Ec', NULL, NULL, '2022-04-12 06:11:42', '2022-04-12 06:11:42'),
(172, 'Baby Gears', 32, 'Baby-Gears-4gXiY', NULL, NULL, '2022-04-26 07:48:48', '2022-04-26 07:48:48'),
(173, 'Baby Personal Care', 32, 'Baby-Personal-Care-FJ4vu', NULL, NULL, '2022-04-26 07:49:24', '2022-04-26 07:49:24'),
(174, 'Diapering & Potty', 32, 'Diapering--Potty-Bs78H', NULL, NULL, '2022-04-26 07:51:39', '2022-04-26 07:51:39'),
(175, 'Feeding', 32, 'Feeding-AuQ7O', NULL, NULL, '2022-04-26 07:51:57', '2022-04-26 07:51:57'),
(176, 'Nursery', 32, 'Nursery-gHEX5', NULL, NULL, '2022-04-26 07:52:23', '2022-04-26 07:52:23'),
(177, 'Baby & Toddler Toys', 32, 'Baby--Toddler-Toys-tuaA5', NULL, NULL, '2022-04-26 07:53:02', '2022-04-26 07:53:02'),
(178, 'Toys & Games', 32, 'Toys--Games-XAMHL', NULL, NULL, '2022-04-26 07:53:35', '2022-04-26 07:53:35'),
(179, 'Remote Control & Vehicles', 32, 'Remote-Control--Vehicles-ZL92S', NULL, NULL, '2022-04-26 07:54:14', '2022-04-26 07:54:14'),
(180, 'Sports and Outdoor Play', 32, 'Sports-and-Outdoor-Play-zGpRY', NULL, NULL, '2022-04-26 07:54:53', '2022-04-26 07:54:53'),
(181, 'Pacifiers & Accesories', 32, 'Pacifiers--Accesories-HTVJe', NULL, NULL, '2022-04-26 07:55:54', '2022-04-26 07:55:54'),
(182, 'Guitars', 33, 'Guitars-Qt7xV', NULL, NULL, '2022-04-27 05:22:22', '2022-04-27 05:22:22'),
(183, 'Bass Guitars', 33, 'Bass-Guitars-5rYMR', NULL, NULL, '2022-04-27 05:22:41', '2022-04-27 05:22:41'),
(184, 'Drums & Percussion', 33, 'Drums--Percussion-0eAFq', NULL, NULL, '2022-04-27 05:23:03', '2022-04-27 05:24:09'),
(185, 'Keyboard & Pianos', 33, 'Keyboard--Pianos-mqJpq', NULL, NULL, '2022-04-27 05:23:22', '2022-04-27 05:23:22'),
(186, 'Guitars & Bass Accessories', 33, 'Guitars--Bass-Accessories-CGI4s', NULL, NULL, '2022-04-27 05:23:48', '2022-04-27 05:23:58'),
(187, 'Mixer and Audio Interface', 33, 'Mixer-and-Audio-Interface-b8FaN', NULL, NULL, '2022-04-27 05:35:35', '2022-04-27 05:35:35'),
(188, 'Nepali Folk Instruments', 33, 'Nepali-Folk-Instruments-srkV3', NULL, NULL, '2022-04-27 05:36:01', '2022-04-27 05:36:01'),
(189, 'Micro Phone And Studio Equipment', 33, 'Micro-Phone-And-Studio-Equipment-Ca9G0', NULL, NULL, '2022-04-27 05:36:55', '2022-04-27 05:36:55'),
(190, 'Amps and Pedal', 33, 'Amps-and-Pedal-IeEEa', NULL, NULL, '2022-04-27 05:37:12', '2022-04-27 05:37:12'),
(191, 'Sound Card and Cables', 33, 'Sound-Card-and-Cables-9WwP5', NULL, NULL, '2022-04-27 05:37:32', '2022-04-27 05:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 37, 'Bathroom & Cleaning', 'bathroom-cleaning', 'Bathroom & Cleaning', 'Bathroom & Cleaning', '2019-03-12 06:19:49', '2020-06-04 19:13:51'),
(2, 37, 'Paper &Tissues', 'paper-tissues', 'Paper &Tissues', 'Paper &Tissues', '2019-03-12 06:20:23', '2020-06-04 19:12:34'),
(3, 37, 'Detergent', 'detergent', 'Detergent', 'Detergent', '2019-03-12 06:20:43', '2020-06-04 19:11:13'),
(4, 37, 'Toilet Paper', 'toilet-paper', 'Toilet Paper', 'Toilet Paper', '2019-03-12 06:21:28', '2020-06-04 19:10:29'),
(5, 37, 'Hand Dishwashing', 'hand-washing', 'Hand Dishwashing', 'Hand Dishwashing', '2019-03-12 06:21:40', '2020-06-04 19:09:24'),
(6, 37, 'Washing Powder', 'washing-powder', 'washing powerd', 'Washing Powder', '2019-03-12 06:21:56', '2020-06-04 19:08:41'),
(7, 33, 'Spirits', 'Spirits', 'Spirits', 'Spirits', '2019-03-12 06:23:31', '2020-06-04 19:07:02'),
(8, 38, 'Beers', 'beers', 'Demo sub sub category 3', 'Beers', '2019-03-12 06:23:48', '2020-06-04 19:06:24'),
(9, 38, 'Wines', 'wines', 'Demo sub sub category 3', 'wines', '2019-03-12 06:24:01', '2020-06-04 19:05:57'),
(11, 33, 'Powdered drink mixes', 'powdered-drinks-mix', 'Powdered drink mixes', 'Powdered drink mixes', '2019-03-12 06:25:14', '2020-06-04 18:55:17'),
(13, 33, 'Tea', 'tea', 'Demo sub sub category 1', 'Tea', '2019-03-12 06:25:58', '2020-06-04 18:52:27'),
(14, 33, 'Coffee', 'coffee', 'Demo sub sub category 1', 'Coffee', '2019-03-12 06:26:16', '2020-06-04 18:51:50'),
(15, 9, 'Office Furniture', 'office-furniture', 'Office Furniture', 'Office Furniture', '2019-03-12 06:27:17', '2020-06-03 20:00:45'),
(16, 9, 'Outdoor Furniture', 'outdoor-furninture', 'Outdoor Furniture', 'Outdoor Furniture', '2019-03-12 06:27:29', '2020-06-03 20:00:10'),
(17, 9, 'Top Furniture Stores', 'top-furnitures-stores', 'Demo sub sub category', 'Top Furniture Stores', '2019-03-12 06:27:41', '2020-06-03 19:59:27'),
(18, 7, 'Dining Room Furniture', 'Dining-Room-Furniture-aPEAU', 'Dining Room Furniture', 'Dining Room Furniture', '2020-06-04 16:20:59', '2020-06-04 16:20:59'),
(19, 40, 'Dog', 'Dog-SANxW', 'dog', 'Dog', '2020-06-04 19:03:20', '2020-06-04 19:03:20'),
(20, 40, 'Cat', 'Cat-iDhxV', 'Cat', 'Cat', '2020-06-04 19:03:57', '2020-06-04 19:03:57'),
(21, 37, 'AirCare', 'AirCare-qkmmC', 'AirCare', 'AirCare', '2020-06-04 19:16:18', '2020-06-04 19:16:18'),
(22, 37, 'Dishwashing', 'Dishwashing-gfh9m', 'Dishwashing', 'Dishwashing', '2020-06-04 19:17:13', '2020-06-04 19:17:13'),
(23, 37, 'Laundry', 'Laundry-szV7e', NULL, 'Laundry', '2020-06-04 19:17:57', '2020-06-04 19:17:57'),
(24, 37, 'Pest Control', 'Pest-Control-fBZXg', 'Pest Control', 'Pest Control', '2020-06-04 19:18:31', '2020-06-04 19:18:31'),
(25, 36, 'Herbs & Spices', 'Herbs--Spices-sFe8L', 'Herbs & Spices', 'Herbs & Spices', '2020-06-04 19:20:45', '2020-06-04 19:20:45'),
(26, 36, 'Seasoning', 'Seasoning-yK5He', 'Seasoning', 'Seasoning', '2020-06-04 19:21:23', '2020-06-04 19:21:23'),
(27, 36, 'Oil & Ghee', 'Oil--Ghee-89r4v', NULL, 'Oil & Ghee', '2020-06-04 19:22:23', '2020-06-04 19:22:23'),
(28, 35, 'Grains, Beans &Pulses', 'Grains-Beans-Pulses-xIb1R', 'Grains, Beans &Pulses', 'Grains, Beans &Pulses', '2020-06-04 19:24:31', '2020-06-04 19:24:31'),
(29, 35, 'Noodles, Pasta & Rice', 'Noodles-Pasta--Rice-TYjYA', 'Noodles, Pasta & Rice', 'Noodles, Pasta & Rice', '2020-06-04 19:25:14', '2020-06-04 19:25:14'),
(30, 35, 'nstant & Ready to Eat', 'nstant--Ready-to-Eat-guCBS', 'nstant & Ready to Eat', 'nstant & Ready to Eat', '2020-06-04 19:26:04', '2020-06-04 19:26:04'),
(31, 33, 'Home Baking & Sugar', 'Home-Baking--Sugar-21CX3', 'Home Baking & Sugar', 'Home Baking & Sugar', '2020-06-04 19:27:00', '2020-06-04 19:27:00'),
(32, 41, 'Biscuit & Cookies', 'Biscuit--Cookies-NwGlY', 'Biscuit & Cookies', 'Biscuit & Cookies', '2020-06-04 19:28:52', '2020-06-04 19:28:52'),
(33, 34, 'Breakfast Cereals', 'Breakfast-Cereals-jxomL', 'Breakfast Cereals', 'Breakfast Cereals', '2020-06-04 19:30:27', '2020-06-04 19:30:27'),
(34, 42, 'Chocolate', 'Chocolate-1lQvd', 'Chocolate', 'Chocolate', '2020-06-04 19:31:51', '2020-06-04 19:31:51'),
(35, 41, 'Chips & Crisps', 'Chips--Crisps-Ddqoo', 'Chips & Crisps', 'Chips & Crisps', '2020-06-04 19:32:35', '2020-06-04 19:32:35'),
(36, 34, 'Jams, Honey & Spreads', 'Jams-Honey--Spreads-zSZqo', 'Jams, Honey & Spreads', 'Jams, Honey & Spreads', '2020-06-04 19:33:14', '2020-06-04 19:33:14'),
(37, 50, 'First Aid Supplies', 'First-Aid-Supplies-0N6rD', 'First Aid Supplies', 'First Aid Supplies', '2020-06-04 19:39:43', '2020-06-04 19:39:43'),
(38, 50, 'Health Monitors & Tests', 'Health-Monitors--Tests-0p9Zj', 'Health Monitors & Tests', 'Health Monitors & Tests', '2020-06-04 19:40:23', '2020-06-04 19:40:23'),
(39, 49, 'Well Being', 'Well-Being-kax13', 'Well Being', 'Well Being', '2020-06-04 19:41:14', '2020-06-04 19:41:14'),
(40, 49, 'Weight Management', 'Weight-Management-8rdip', 'Weight Management', 'Weight Management', '2020-06-04 19:41:46', '2020-06-04 19:41:46'),
(41, 49, 'Multivitamins', 'Multivitamins-CuXSz', 'Multivitamins', 'Multivitamins', '2020-06-04 19:42:16', '2020-06-04 19:42:16'),
(42, 49, 'Beauty Supplements', 'Beauty-Supplements-XSoPy', 'Beauty Supplements', 'Beauty Supplements', '2020-06-04 19:42:41', '2020-06-04 19:42:41'),
(43, 44, 'Hair Dryers', 'Hair-Dryers-bEXft', 'Hair Dryers', 'Hair Dryers', '2020-06-04 19:43:49', '2020-06-04 19:43:49'),
(44, 44, 'Curling Irons & Wands', 'Curling-Irons--Wands-jM2mG', 'Curling Irons & Wands', 'Curling Irons & Wands', '2020-06-04 19:45:00', '2020-06-04 19:45:00'),
(45, 44, 'Hair Styling Appliances', 'Hair-Styling-Appliances-xCQdb', 'Hair Styling Appliances', 'Hair Styling Appliances', '2020-06-04 19:46:02', '2020-06-04 19:46:02'),
(47, 44, 'Flat Irons', 'Flat-Irons-djRDA', 'Flat Irons', 'Flat Irons', '2020-06-04 19:47:13', '2020-06-04 19:47:13'),
(48, 44, 'Hair Removal Appliances', 'Hair-Removal-Appliances-OA9IC', 'Hair Removal Appliances', 'Hair Removal Appliances', '2020-06-04 19:48:41', '2020-06-04 19:48:41'),
(49, 45, 'Women Fragrances', 'Women-Fragrances-hNbXD', 'Women Fragrances', 'Women Fragrances', '2020-06-04 19:49:49', '2020-06-04 19:49:49'),
(50, 45, 'Men Fragrances', 'Men-Fragrances-X1fj2', 'Men Fragrances', 'Men Fragrances', '2020-06-04 19:50:25', '2020-06-04 19:50:25'),
(51, 45, 'Deodorants', 'Deodorants-RnxtC', 'Deodorants', 'Deodorants', '2020-06-04 19:50:59', '2020-06-04 19:50:59'),
(52, 46, 'Shampoo', 'Shampoo-5oma0', 'Shampoo', 'Shampoo', '2020-06-04 19:51:33', '2020-06-04 19:51:33'),
(53, 46, 'Hair Treatments', 'Hair-Treatments-iRSeV', 'Hair Treatments', 'Hair Treatments', '2020-06-04 19:51:58', '2020-06-04 19:51:58'),
(54, 46, 'Hair Care Accessories', 'Hair-Care-Accessories-pAbU1', 'Hair Care Accessories', 'Hair Care Accessories', '2020-06-04 19:52:29', '2020-06-04 19:52:29'),
(55, 46, 'Hair Brushes & Combs', 'Hair-Brushes--Combs-lH4Ri', 'Hair Brushes & Combs', 'Hair Brushes & Combs', '2020-06-04 19:53:14', '2020-06-04 19:53:14'),
(56, 46, 'Hair Coloring', 'Hair-Coloring-BBRJC', 'Hair Coloring', 'Hair Coloring', '2020-06-04 19:53:39', '2020-06-04 19:53:39'),
(57, 46, 'Hair Conditioner', 'Hair-Conditioner-DWJ7k', 'Hair Conditioner', 'Hair Conditioner', '2020-06-04 19:54:17', '2020-06-04 19:54:17'),
(58, 1, 'Hair Styling', 'Hair-Styling-8tqTU', 'Hair Styling', 'Hair Styling', '2020-06-04 19:55:09', '2020-06-04 19:55:09'),
(59, 3, 'Face Foundation', 'Face-Foundation-6Kho2', 'Foundation', 'Foundation', '2020-06-04 19:57:38', '2020-06-04 19:57:38'),
(60, 1, 'Lips', 'Lips-Zvcf7', 'lips', 'Lips', '2020-06-04 19:58:06', '2020-06-04 19:58:06'),
(61, 3, 'Eyes', 'Eyes-CO1NP', 'Eyes', 'Eyes', '2020-06-04 19:58:39', '2020-06-04 19:58:39'),
(62, 1, 'Makeup Accessories', 'Makeup-Accessories-uE5bT', 'Makeup Accessories', 'Makeup Accessories', '2020-06-04 19:59:19', '2020-06-04 19:59:19'),
(63, 3, 'Nails', 'Nails-v70AF', 'Nails', 'Nails', '2020-06-04 20:00:04', '2020-06-04 20:00:04'),
(64, 3, 'Makeup Brushes & Sets', 'Makeup-Brushes--Sets-XXVKG', 'Makeup Brushes & Sets', 'Makeup Brushes & Sets', '2020-06-04 20:00:39', '2020-06-04 20:00:39'),
(65, 3, 'Makeup Removers', 'Makeup-Removers-dgoeO', 'Makeup Removers', 'Makeup Removers', '2020-06-04 20:01:12', '2020-06-04 20:01:12'),
(66, 47, 'Hair Dryers', 'Hair-Dryers-pJRW4', 'Hair Dryers', 'Hair Dryers', '2020-06-04 20:01:50', '2020-06-04 20:01:50'),
(67, 47, 'Shaving & Grooming', 'Shaving--Grooming-2IARO', 'Shaving & Grooming', 'Shaving & Grooming', '2020-06-04 20:02:22', '2020-06-04 20:02:22'),
(68, 48, 'Oral Care', 'Oral-Care-jX6Q1', 'Oral Care', 'Oral Care', '2020-06-04 20:02:53', '2020-06-04 20:02:53'),
(69, 48, 'Sexual Wellness', 'Sexual-Wellness-7cvQT', 'Sexual Wellness', 'Sexual Wellness', '2020-06-04 20:03:33', '2020-06-04 20:03:33'),
(70, 48, 'Deodorants', 'Deodorants-Jiisp', 'Deodorants', 'Deodorants', '2020-06-04 20:04:10', '2020-06-04 20:04:10'),
(71, 2, 'Face Scrubs & Exfoliators', 'Face-Scrubs--Exfoliators-DLvNz', 'Face Scrubs & Exfoliators', 'Face Scrubs & Exfoliators', '2020-06-04 20:04:47', '2020-06-04 20:04:47'),
(72, 48, 'Facial Cleansers', 'Facial-Cleansers-yR1uo', 'Facial Cleansers', 'Facial Cleansers', '2020-06-04 20:06:16', '2020-06-04 20:06:16'),
(73, 51, 'Samsung Mobile', 'Samsung-Mobile-iDR0S', 'Samsung Mobile in Nepal', 'Samsung Mobile in nepal', '2020-06-04 20:15:50', '2020-06-04 20:15:50'),
(74, 51, 'Xiaomi Mobile', 'Xiaomi-Mobile-oritY', 'Xiaomi Mobile in nepal', 'Latest Xiaomi Mobile Phones in Nepal', '2020-06-04 20:16:38', '2020-06-04 20:16:38'),
(75, 51, 'OPPO Mobiles', 'OPPO-Mobiles-I82AI', 'OPPO Mobiles in nepal', 'Latest Oppo Mobile Phones in Nepal', '2020-06-04 20:17:16', '2020-06-04 20:17:16'),
(76, 51, 'Nokia Mobiles', 'Nokia-Mobiles-FqBVB', 'Nokia Mobiles in Nepal', 'Latest Nokia Mobile Phones in Nepal', '2020-06-04 20:17:57', '2020-06-04 20:17:57'),
(77, 51, 'Apple Mobiles', 'Apple-Mobiles-svfZF', 'Apple Mobiles', 'Apple Mobiles in Nepal', '2020-06-04 20:18:43', '2020-06-04 20:18:43'),
(79, 10, 'Solar Light', 'Solar-Light-OQ4JR', 'Solar Light', 'Solar Light', '2020-06-07 18:54:38', '2020-06-07 18:54:38'),
(80, 68, 'Cabinet', 'Cabinet-kEGTD', 'Cabinet', 'Cabinet', '2020-06-07 18:56:13', '2020-06-07 18:56:13'),
(81, 9, 'Bedding', 'Bedding-EfwgA', 'Bedding', 'Bedding', '2020-06-07 18:57:19', '2020-06-07 18:57:19'),
(82, 68, 'Tupperware', 'Tupperware', 'Tupperware', 'Tupperware', '2020-06-07 18:58:16', '2020-06-07 18:59:03'),
(83, 68, 'DIY Tools', 'DIY-Tools-YqmCV', 'DIY Tools', 'DIY Tools', '2020-06-07 19:00:35', '2020-06-07 19:00:35'),
(84, 76, 'Rice', 'Rice-KQ27G', 'Rice| Brown rice and many more', 'Rice varieties in Nepal', '2020-06-08 15:38:23', '2020-06-08 15:38:23'),
(85, 30, 'Instant and ready-to-eat', 'Instant-and-ready-to-eat-bsOeV', 'Instant and ready-to-eat', 'Instant and ready-to-eat', '2020-06-08 15:39:45', '2020-06-08 15:39:45'),
(86, 76, 'Daal', 'Daal-kE4jE', 'Daal | Grains, Beans & Pulses and many more', 'Daal products in Nepal', '2020-06-08 15:41:55', '2020-06-08 15:41:55'),
(87, 36, 'Oil', 'Oil-Cg47g', 'Oil | Oil and Ghee and many more', 'Oil', '2020-06-08 15:45:54', '2020-06-08 15:45:54'),
(88, 79, 'Sports Shoes', 'Sports-Shoes-BQ4bp', 'Sports shoes', NULL, '2020-11-06 07:18:25', '2020-11-06 07:18:25'),
(89, 79, 'Party Shoes', 'Party-Shoes-tSJr1', 'party shoes', NULL, '2020-11-06 07:18:54', '2020-11-06 07:18:54'),
(90, 8, 'Cloths accessories', 'Cloths-accessories-9l3ep', NULL, NULL, '2020-11-07 06:18:21', '2020-11-07 06:18:21'),
(91, 80, 'Green Tea', 'Green-Tea-g6fIx', 'SMC Green Tea', NULL, '2021-06-01 07:09:34', '2021-06-01 07:09:34'),
(92, 82, 'SMART LED TV', 'SMART-LED-TV-AZdAY', 'SMART LED TV', 'SMART LED TV', '2021-08-20 07:43:05', '2021-08-20 07:43:05'),
(93, 82, 'Mobile Phone', 'Mobile-Phone-SJybR', 'Mobile', 'Mobile Phone Samsung, Apple, iPhone, LG, Nokia', '2021-10-06 02:55:38', '2021-10-06 02:55:38'),
(95, 90, 'Samsung Mobiles', 'Samsung-Mobiles-9ym5T', NULL, NULL, '2022-04-11 06:48:34', '2022-04-11 06:48:34'),
(96, 90, 'Oppo Mobiles', 'Oppo-Mobiles-fm9XN', NULL, NULL, '2022-04-11 06:49:18', '2022-04-11 06:49:18'),
(97, 90, 'Apple Iphone', 'Apple-Iphone-PGBBM', NULL, NULL, '2022-04-11 06:50:09', '2022-04-11 06:50:09'),
(98, 90, 'Nokia Mobiles', 'Nokia-Mobiles-oi8Md', NULL, NULL, '2022-04-11 06:51:03', '2022-04-11 06:51:03'),
(99, 90, 'Redmi Mobiles', 'Redmi-Mobiles-FEq0H', NULL, NULL, '2022-04-11 06:51:56', '2022-04-11 06:51:56'),
(100, 90, 'Motorola Mobiles', 'Motorola-Mobiles-mXyXu', NULL, NULL, '2022-04-11 06:53:13', '2022-04-11 06:53:13'),
(101, 90, 'Vivo Mobiles', 'Vivo-Mobiles-shWKg', NULL, NULL, '2022-04-11 06:53:54', '2022-04-11 06:53:54'),
(102, 90, 'Micromax Mobile', 'Micromax-Mobile-uWN1O', NULL, NULL, '2022-04-11 06:54:36', '2022-04-11 06:54:36'),
(103, 90, 'One Plus Mobile', 'One-Plus-Mobile-KL9ID', NULL, NULL, '2022-04-11 06:56:25', '2022-04-11 06:56:25'),
(104, 91, 'Apple Ipads', 'Apple-Ipads-hp1Pv', NULL, NULL, '2022-04-11 07:03:35', '2022-04-11 07:03:35'),
(105, 91, 'Samsung Tablets', 'Samsung-Tablets-52Kgo', NULL, NULL, '2022-04-11 07:04:30', '2022-04-11 07:04:30'),
(106, 91, 'Lenovo Tablets', 'Lenovo-Tablets-r20Xq', NULL, NULL, '2022-04-11 07:05:24', '2022-04-11 07:05:24'),
(107, 91, 'Tcl Tablets', 'Tcl-Tablets-KnUG4', NULL, NULL, '2022-04-11 07:06:06', '2022-04-11 07:06:06'),
(108, 93, 'macbook air', 'macbook-air-zrPtF', NULL, NULL, '2022-04-11 07:07:17', '2022-04-11 07:07:17'),
(109, 93, 'Gaming Laptops', 'Gaming-Laptops-6wgfL', NULL, NULL, '2022-04-11 07:08:11', '2022-04-11 07:08:11'),
(110, 121, 'Phone Cases', 'Phone-Cases-WIFyc', NULL, NULL, '2022-04-11 07:38:33', '2022-04-11 07:38:33'),
(111, 121, 'Power Bank', 'Power-Bank-YOGR4', NULL, NULL, '2022-04-11 07:39:11', '2022-04-11 07:39:11'),
(112, 121, 'Screen Protectors', 'Screen-Protectors-uDn49', NULL, NULL, '2022-04-11 07:40:05', '2022-04-11 07:40:05'),
(114, 121, 'Wireless Chargers', 'Wireless-Chargers-CY6sd', NULL, NULL, '2022-04-11 07:41:10', '2022-04-11 07:41:10'),
(115, 121, 'Parts & Tools', 'Parts--Tools-ugBMc', NULL, NULL, '2022-04-11 07:42:01', '2022-04-11 07:42:01'),
(116, 121, 'Cables &Conveter', 'Cables-Conveter-8tq8K', NULL, NULL, '2022-04-11 07:42:51', '2022-04-11 07:42:51'),
(117, 121, 'Wall Chargers', 'Wall-Chargers-cbjUP', NULL, NULL, '2022-04-11 07:43:34', '2022-04-11 07:43:34'),
(118, 145, 'Headphones & Headsets', 'Headphones--Headsets-oHpCB', NULL, NULL, '2022-04-11 07:45:42', '2022-04-11 07:45:42'),
(119, 145, 'Bluetooth Speakers', 'Bluetooth-Speakers-wqJr6', NULL, NULL, '2022-04-11 07:46:39', '2022-04-11 07:46:39'),
(120, 145, 'Gaming Headsets', 'Gaming-Headsets-sGt1p', NULL, NULL, '2022-04-11 07:47:23', '2022-04-11 07:47:23'),
(121, 146, 'Smartwatches', 'Smartwatches-QwqMx', NULL, NULL, '2022-04-11 07:49:05', '2022-04-11 07:49:05'),
(122, 146, 'Fitness &Activity Trackers', 'Fitness-Activity-Trackers-U9gDE', NULL, NULL, '2022-04-11 07:50:30', '2022-04-11 07:50:30'),
(123, 146, 'Virtual Reality', 'Virtual-Reality-SpIbS', NULL, NULL, '2022-04-11 07:51:16', '2022-04-11 07:51:16'),
(124, 123, 'External Hard Drives', 'External-Hard-Drives-QOd2z', NULL, NULL, '2022-04-11 07:52:24', '2022-04-11 07:52:24'),
(125, 123, 'Flash Drives', 'Flash-Drives-ICZgr', NULL, NULL, '2022-04-11 07:53:17', '2022-04-11 07:53:17'),
(126, 123, 'Internal Hard Drives', 'Internal-Hard-Drives-KfKqE', NULL, NULL, '2022-04-11 07:53:57', '2022-04-11 07:54:27'),
(127, 147, 'Ink & Toners', 'Ink--Toners-Ay3k7', NULL, NULL, '2022-04-11 07:55:23', '2022-04-11 07:55:23'),
(128, 125, 'Memory Card', 'Memory-Card-zkjGc', NULL, NULL, '2022-04-11 07:56:33', '2022-04-11 07:56:33'),
(129, 125, 'Lenses', 'Lenses-6TZu7', NULL, NULL, '2022-04-11 07:57:12', '2022-04-11 07:57:12'),
(130, 125, 'Batteries', 'Batteries-xna9d', NULL, NULL, '2022-04-11 07:58:01', '2022-04-11 07:58:01'),
(131, 125, 'Camera Cases,Covers', 'Camera-CasesCovers-v6IEA', NULL, NULL, '2022-04-11 07:59:03', '2022-04-11 07:59:03'),
(132, 125, 'Lighting & Studio Equipment', 'Lighting--Studio-Equipment-kHS0k', NULL, NULL, '2022-04-11 08:00:14', '2022-04-11 08:00:14'),
(133, 125, 'Tripods & Monopods', 'Tripods--Monopods-rHAyA', NULL, NULL, '2022-04-11 08:01:14', '2022-04-11 08:01:14'),
(134, 127, 'Keyboards', 'Keyboards-v6Ftv', NULL, NULL, '2022-04-11 08:02:37', '2022-04-11 08:02:37'),
(135, 127, 'PC Audio', 'PC-Audio-Z1Glg', NULL, NULL, '2022-04-11 08:03:24', '2022-04-11 08:03:24'),
(136, 127, 'Monitors', 'Monitors-w1fWz', NULL, NULL, '2022-04-11 08:04:02', '2022-04-11 08:04:02'),
(137, 127, 'Adapters & Cables', 'Adapters--Cables-cVKlM', NULL, NULL, '2022-04-11 08:04:52', '2022-04-11 08:04:52'),
(138, 127, 'Mice', 'Mice-XVurB', NULL, NULL, '2022-04-11 08:05:29', '2022-04-11 08:05:29'),
(139, 100, 'Backpacks', 'Backpacks-Mtoml', NULL, NULL, '2022-04-12 04:30:19', '2022-04-12 04:30:19'),
(140, 100, 'Crossbody Bag', 'Crossbody-Bag-1s1GF', NULL, NULL, '2022-04-12 04:31:16', '2022-04-12 04:31:16'),
(141, 100, 'Messenger Bags', 'Messenger-Bags-mSDxd', NULL, NULL, '2022-04-12 04:33:07', '2022-04-12 04:33:07'),
(142, 100, 'Business Bags', 'Business-Bags-jwjqA', NULL, NULL, '2022-04-12 04:34:22', '2022-04-12 04:34:22'),
(143, 100, 'Wallets & Acceessories', 'Wallets--Acceessories-hggua', NULL, NULL, '2022-04-12 04:35:17', '2022-04-12 04:35:17'),
(144, 148, 'Tops & T-shirts', 'Tops--T-shirts-xnBTh', NULL, NULL, '2022-04-12 04:36:17', '2022-04-12 04:36:17'),
(145, 148, 'Hoodies & Sweatshirts', 'Hoodies--Sweatshirts-JzOT7', NULL, NULL, '2022-04-12 04:37:34', '2022-04-12 04:37:34'),
(147, 148, 'Jackets & Coats', 'Jackets--Coats-QtqeZ', NULL, NULL, '2022-04-12 04:39:28', '2022-04-12 04:39:28'),
(148, 148, 'Pants & Leggings', 'Pants--Leggings-D699t', NULL, NULL, '2022-04-12 04:40:04', '2022-04-12 04:40:04'),
(149, 148, 'Jeans', 'Jeans-VBJxK', NULL, NULL, '2022-04-12 04:40:31', '2022-04-12 04:40:31'),
(150, 148, 'Shorts', 'Shorts-KNm4F', NULL, NULL, '2022-04-12 04:41:27', '2022-04-12 04:41:27'),
(151, 148, 'Skirts', 'Skirts-sWrsq', NULL, NULL, '2022-04-12 04:41:55', '2022-04-12 04:41:55'),
(153, 148, 'Dresses', 'Dresses-5S2ug', NULL, NULL, '2022-04-12 04:43:17', '2022-04-12 04:43:17'),
(154, 148, 'Party wear', 'Party-wear-2s7Fs', NULL, NULL, '2022-04-12 04:44:12', '2022-04-12 04:44:12'),
(155, 107, 'Saree', 'Saree-S9xI3', NULL, NULL, '2022-04-12 04:44:43', '2022-04-12 04:44:43'),
(156, 107, 'Kurtas', 'Kurtas-0128t', NULL, NULL, '2022-04-12 04:45:26', '2022-04-12 04:45:26'),
(157, 107, 'Lehenga', 'Lehenga-paL8b', NULL, NULL, '2022-04-12 04:46:48', '2022-04-12 04:46:48'),
(158, 107, 'Unstitched Fabric', 'Unstitched-Fabric-218W0', NULL, NULL, '2022-04-12 04:47:39', '2022-04-12 04:47:39'),
(160, 105, 'Backpacks', 'Backpacks-OueaB', NULL, NULL, '2022-04-12 04:50:14', '2022-04-12 04:50:14'),
(161, 105, 'Crossbody Bag', 'Crossbody-Bag-Hibdz', NULL, NULL, '2022-04-12 04:50:55', '2022-04-12 04:50:55'),
(162, 105, 'Wallets & Carholders', 'Wallets--Carholders-PovEd', NULL, NULL, '2022-04-12 04:51:40', '2022-04-12 04:51:40'),
(163, 105, 'Clutches', 'Clutches-DCyf1', NULL, NULL, '2022-04-12 04:52:13', '2022-04-12 04:52:13'),
(164, 105, 'Top-handles Bags', 'Top-handles-Bags-Tzojq', NULL, NULL, '2022-04-12 04:53:25', '2022-04-12 04:53:25'),
(165, 106, 'Sneakers', 'Sneakers-lNFHp', NULL, NULL, '2022-04-12 04:54:02', '2022-04-12 04:54:02'),
(166, 106, 'Boots', 'Boots-l1Kpo', NULL, NULL, '2022-04-12 04:54:26', '2022-04-12 04:54:26'),
(167, 106, 'Flat Shoes', 'Flat-Shoes-Svhac', NULL, NULL, '2022-04-12 04:54:54', '2022-04-12 04:54:54'),
(168, 106, 'Heels', 'Heels-rzwy7', NULL, NULL, '2022-04-12 04:55:12', '2022-04-12 04:55:12'),
(169, 106, 'Sandals', 'Sandals-zkZsi', NULL, NULL, '2022-04-12 04:55:43', '2022-04-12 04:55:43'),
(170, 106, 'Wedges', 'Wedges-N1lZs', NULL, NULL, '2022-04-12 04:56:10', '2022-04-12 04:56:10'),
(171, 109, 'Belts', 'Belts-fe4ss', NULL, NULL, '2022-04-12 04:56:47', '2022-04-12 04:56:47'),
(172, 109, 'Scarves & Mufflers', 'Scarves--Mufflers-6VUsV', NULL, NULL, '2022-04-12 04:57:59', '2022-04-12 04:57:59'),
(173, 109, 'Gloves', 'Gloves-PNhtJ', NULL, NULL, '2022-04-12 04:58:20', '2022-04-12 04:58:20'),
(174, 109, 'Hats & Caps', 'Hats--Caps-L8C3I', NULL, NULL, '2022-04-12 04:58:53', '2022-04-12 04:58:53'),
(175, 109, 'Hair Accessories', 'Hair-Accessories-f7Mp4', NULL, NULL, '2022-04-12 04:59:26', '2022-04-12 04:59:26'),
(176, 109, 'Socks & Tights', 'Socks--Tights-d0nhf', NULL, NULL, '2022-04-12 05:00:19', '2022-04-12 05:00:19'),
(177, 110, 'Bras', 'Bras-dCRj0', NULL, NULL, '2022-04-12 05:01:06', '2022-04-12 05:01:06'),
(178, 110, 'Lingerie Sets', 'Lingerie-Sets-p0WZe', NULL, NULL, '2022-04-12 05:01:50', '2022-04-12 05:01:50'),
(179, 110, 'Panties', 'Panties-onyi5', NULL, NULL, '2022-04-12 05:02:30', '2022-04-12 05:02:30'),
(180, 110, 'Sleeps & Lounge Wear', 'Sleeps--Lounge-Wear-SGPRY', NULL, NULL, '2022-04-12 05:03:30', '2022-04-12 05:03:30'),
(181, 110, 'Robes', 'Robes-oc4fp', NULL, NULL, '2022-04-12 05:03:59', '2022-04-12 05:03:59'),
(182, 110, 'Shapewear', 'Shapewear-7LSG2', NULL, NULL, '2022-04-12 05:04:32', '2022-04-12 05:04:32'),
(183, 110, 'Sexy Lingerie', 'Sexy-Lingerie-8MldN', NULL, NULL, '2022-04-12 05:06:24', '2022-04-12 05:06:24'),
(184, 110, 'Accessories', 'Accessories-7F3GN', NULL, NULL, '2022-04-12 05:07:05', '2022-04-12 05:07:05'),
(185, 104, 'Girls Clothing', 'Girls-Clothing-CKDbD', NULL, NULL, '2022-04-12 05:09:30', '2022-04-12 05:09:30'),
(186, 104, 'Girl\'s shoes', 'Girls-shoes-PVlnc', NULL, NULL, '2022-04-12 05:10:52', '2022-04-12 05:10:52'),
(187, 104, 'Girl\'s accessories', 'Girls-accessories-ANj9t', NULL, NULL, '2022-04-12 05:11:35', '2022-04-12 05:11:35'),
(188, 150, 'Casual tops', 'Casual-tops-mWWKp', NULL, NULL, '2022-04-12 05:13:48', '2022-04-12 05:13:48'),
(189, 150, 'Polo shirts', 'Polo-shirts-i2d7O', NULL, NULL, '2022-04-12 05:14:20', '2022-04-12 05:14:20'),
(190, 150, 'Shirts', 'Shirts-Lp1e1', NULL, NULL, '2022-04-12 05:14:43', '2022-04-12 05:14:43'),
(191, 150, 'Jeans', 'Jeans-BBrjt', NULL, NULL, '2022-04-12 05:15:20', '2022-04-12 05:15:20'),
(192, 150, 'Suits', 'Suits-gMMUn', NULL, NULL, '2022-04-12 05:15:46', '2022-04-12 05:15:46'),
(193, 150, 'Pants', 'Pants-bozDH', NULL, NULL, '2022-04-12 05:16:20', '2022-04-12 05:16:20'),
(194, 150, 'Jackets & Coats', 'Jackets--Coats-2wSMg', NULL, NULL, '2022-04-12 05:17:02', '2022-04-12 05:17:02'),
(195, 150, 'Hoodies & Sweatshirts', 'Hoodies--Sweatshirts-N20f0', NULL, NULL, '2022-04-12 05:17:27', '2022-04-12 05:17:27'),
(196, 150, 'sweaters & Cardigans', 'sweaters--Cardigans-22CwH', NULL, NULL, '2022-04-12 05:17:58', '2022-04-12 05:17:58'),
(197, 107, 'Dupattas, Stoles & Shawls', 'Dupattas-Stoles--Shawls-GRo34', NULL, NULL, '2022-04-12 05:19:55', '2022-04-12 05:19:55'),
(198, 148, 'sweaters & Cardigans', 'sweaters--Cardigans-a3WZI', NULL, NULL, '2022-04-12 05:20:24', '2022-04-12 05:20:24'),
(199, 99, 'slip-Ons & Loafers', 'slip-Ons--Loafers-WwUYS', NULL, NULL, '2022-04-12 05:21:13', '2022-04-12 05:21:13'),
(200, 99, 'Flips Flops & Sandals', 'Flips-Flops--Sandals-UT2HK', NULL, NULL, '2022-04-12 05:22:05', '2022-04-12 05:22:05'),
(201, 99, 'Sneakers', 'Sneakers-TkcRB', NULL, NULL, '2022-04-12 05:22:28', '2022-04-12 05:22:28'),
(202, 99, 'Formal Shoes', 'Formal-Shoes-rHuGr', NULL, NULL, '2022-04-12 05:22:57', '2022-04-12 05:22:57'),
(203, 99, 'Boots', 'Boots-06YrV', NULL, NULL, '2022-04-12 05:23:19', '2022-04-12 05:23:19'),
(204, 99, 'Shoes & Accessories', 'Shoes--Accessories-3u00m', NULL, NULL, '2022-04-12 05:23:49', '2022-04-12 05:23:49'),
(205, 101, 'Scarves', 'Scarves-NUEvR', NULL, NULL, '2022-04-12 05:24:30', '2022-04-12 05:24:30'),
(206, 101, 'Ties & Bow Ties', 'Ties--Bow-Ties-wDwVt', NULL, NULL, '2022-04-12 05:25:02', '2022-04-12 05:25:02'),
(207, 101, 'socks', 'socks-VuiF1', NULL, NULL, '2022-04-12 05:25:24', '2022-04-12 05:25:24'),
(208, 101, 'Belts', 'Belts-1rtQb', NULL, NULL, '2022-04-12 05:25:44', '2022-04-12 05:25:44'),
(209, 101, 'Hats & Caps', 'Hats--Caps-EiH7b', NULL, NULL, '2022-04-12 05:26:07', '2022-04-12 05:26:07'),
(210, 101, 'Gloves', 'Gloves-AUc7r', NULL, NULL, '2022-04-12 05:26:34', '2022-04-12 05:26:34'),
(211, 102, 'Boy\'s Clothing', 'Boys-Clothing-zZX1X', NULL, NULL, '2022-04-12 05:27:20', '2022-04-12 05:27:20'),
(212, 102, 'Boy\'s Shoes', 'Boys-Shoes-oXekX', NULL, NULL, '2022-04-12 05:28:09', '2022-04-12 05:28:09'),
(213, 102, 'Boy\'s Accessories', 'Boys-Accessories-pwUTf', NULL, NULL, '2022-04-12 05:28:37', '2022-04-12 05:28:37'),
(214, 103, 'Briefs', 'Briefs-hXvkM', NULL, NULL, '2022-04-12 05:29:11', '2022-04-12 05:29:11'),
(215, 103, 'Vests', 'Vests-rJ8XX', NULL, NULL, '2022-04-12 05:29:34', '2022-04-12 05:29:34'),
(216, 103, 'Trunks & Boxers', 'Trunks--Boxers-j4IPD', NULL, NULL, '2022-04-12 05:30:10', '2022-04-12 05:30:10'),
(217, 111, 'Business', 'Business-SLTvP', NULL, NULL, '2022-04-12 05:32:19', '2022-04-12 05:32:19'),
(218, 111, 'Fashion', 'Fashion-VKOjz', NULL, NULL, '2022-04-12 05:32:58', '2022-04-12 05:32:58'),
(219, 112, 'Fashion', 'Fashion-y9V0z', NULL, NULL, '2022-04-12 05:33:29', '2022-04-12 05:33:29'),
(220, 112, 'Business', 'Business-4aK0Z', NULL, NULL, '2022-04-12 05:33:51', '2022-04-12 05:33:51'),
(221, 114, 'Men sunglasses', 'Men-sunglasses-WUHfK', NULL, NULL, '2022-04-12 05:34:25', '2022-04-12 05:34:25'),
(222, 114, 'Women Sunglasses', 'Women-Sunglasses-jLPtW', NULL, NULL, '2022-04-12 05:34:57', '2022-04-12 05:34:57'),
(223, 114, 'Kids sunglasses', 'Kids-sunglasses-4LmB7', NULL, NULL, '2022-04-12 05:35:24', '2022-04-12 05:35:24'),
(224, 115, 'women Eyeglasses', 'women-Eyeglasses-VkW3m', NULL, NULL, '2022-04-12 05:36:00', '2022-04-12 05:36:00'),
(225, 115, 'Men Eyeglasses', 'Men-Eyeglasses-JaJ1o', NULL, NULL, '2022-04-12 05:36:40', '2022-04-12 05:36:40'),
(226, 116, 'Earings', 'Earings-USoU2', NULL, NULL, '2022-04-12 05:37:08', '2022-04-12 05:37:08'),
(227, 116, 'Bracelets', 'Bracelets-VMx69', NULL, NULL, '2022-04-12 05:37:35', '2022-04-12 05:37:35'),
(228, 116, 'Jewellery Sets', 'Jewellery-Sets-sBncm', NULL, NULL, '2022-04-12 05:38:17', '2022-04-12 05:38:17'),
(229, 116, 'Necklaces', 'Necklaces-Soiaz', NULL, NULL, '2022-04-12 05:38:42', '2022-04-12 05:38:42'),
(230, 116, 'Pendants', 'Pendants-7Uu1n', NULL, NULL, '2022-04-12 05:39:04', '2022-04-12 05:39:04'),
(231, 116, 'Rings', 'Rings-xel7M', NULL, NULL, '2022-04-12 05:39:25', '2022-04-12 05:39:25'),
(232, 117, 'Bracelets', 'Bracelets-jJWJv', NULL, NULL, '2022-04-12 05:39:49', '2022-04-12 05:39:49'),
(233, 117, 'Rings', 'Rings-v3mMS', NULL, NULL, '2022-04-12 05:40:10', '2022-04-12 05:40:10'),
(256, 132, 'Auto Tools & Equipment', 'Auto-Tools--Equipment-lLHLQ', NULL, NULL, '2022-04-12 05:58:41', '2022-04-12 05:58:41'),
(257, 132, 'Auto Parts & Spares', 'Auto-Parts--Spares-6KXW2', NULL, NULL, '2022-04-12 05:59:13', '2022-04-12 05:59:13'),
(258, 132, 'GPS', 'GPS-q0T9t', NULL, NULL, '2022-04-12 05:59:33', '2022-04-12 05:59:33'),
(259, 132, 'Consoles & Oranizers', 'Consoles--Oranizers-VSOlH', NULL, NULL, '2022-04-12 06:00:16', '2022-04-12 06:00:16'),
(260, 133, 'Standard Bikes', 'Standard-Bikes-inhRk', NULL, NULL, '2022-04-12 06:01:03', '2022-04-12 06:01:03'),
(261, 133, 'Scooters', 'Scooters-z4hzj', NULL, NULL, '2022-04-12 06:01:22', '2022-04-12 06:01:22'),
(262, 133, 'Electric Bikes', 'Electric-Bikes-GkWPm', NULL, NULL, '2022-04-12 06:01:53', '2022-04-12 06:01:53'),
(263, 134, 'Polishes & Waxes', 'Polishes--Waxes-et4Ml', NULL, NULL, '2022-04-12 06:02:43', '2022-04-12 06:02:43'),
(264, 134, 'Floor Mats & Cargo Liners', 'Floor-Mats--Cargo-Liners-MrwnV', NULL, NULL, '2022-04-12 06:03:20', '2022-04-12 06:03:20'),
(265, 134, 'Air Fresheners', 'Air-Fresheners-tveni', NULL, NULL, '2022-04-12 06:03:58', '2022-04-12 06:03:58'),
(266, 135, 'Car Video', 'Car-Video-4xzIM', NULL, NULL, '2022-04-12 06:05:02', '2022-04-12 06:05:02'),
(267, 135, 'Car Stereo', 'Car-Stereo-LtURR', NULL, NULL, '2022-04-12 06:05:39', '2022-04-12 06:05:39'),
(268, 135, 'In-Dash, DVD & Video', 'In-Dash-DVD--Video-lx0T1', NULL, NULL, '2022-04-12 06:06:43', '2022-04-12 06:06:43'),
(269, 135, 'Speakers', 'Speakers-3f218', NULL, NULL, '2022-04-12 06:07:10', '2022-04-12 06:07:10'),
(270, 136, 'Drivetrain & Transmission', 'Drivetrain--Transmission-dU1KS', NULL, NULL, '2022-04-12 06:10:46', '2022-04-12 06:10:46'),
(271, 136, 'Tires & Wheels', 'Tires--Wheels-TwlF9', NULL, NULL, '2022-04-12 06:11:19', '2022-04-12 06:11:19'),
(272, 136, 'Moto Covers', 'Moto-Covers-ttFxM', NULL, NULL, '2022-04-12 06:11:51', '2022-04-12 06:11:51'),
(273, 136, 'Parts & Spares', 'Parts--Spares-25mHd', NULL, NULL, '2022-04-12 06:12:27', '2022-04-12 06:12:27'),
(274, 137, 'Eyewear', 'Eyewear-Jeo3b', NULL, NULL, '2022-04-12 06:12:57', '2022-04-12 06:12:57'),
(275, 137, 'Face masks', 'Face-masks-RyvJA', NULL, NULL, '2022-04-12 06:13:24', '2022-04-12 06:13:24'),
(276, 33, 'Soft Drinks', 'Soft-Drinks-V5jIV', NULL, NULL, '2022-04-12 06:28:24', '2022-04-12 06:28:24'),
(278, 43, 'Body & Massage Oils', 'Body--Massage-Oils-o7Az4', NULL, NULL, '2022-04-26 07:24:48', '2022-04-26 07:24:48'),
(279, 1, 'Body Soaps & Shower Gels', 'Body-Soaps-7-Shower-Gels-WfJGi', NULL, NULL, '2022-04-26 07:25:29', '2022-04-26 07:28:55'),
(280, 43, 'Body Moisturizers', 'Body-Moisturizers-XYPJ7', NULL, NULL, '2022-04-26 07:26:20', '2022-04-26 07:26:20'),
(281, 43, 'Foot Cares', 'Foot-Cares-YNMUA', NULL, NULL, '2022-04-26 07:27:09', '2022-04-26 07:27:09'),
(282, 43, 'Hair Removal', 'Hair-Removal-LquDO', NULL, NULL, '2022-04-26 07:27:34', '2022-04-26 07:27:34'),
(283, 43, 'Bath &Body Accessories', 'Bath-Body-Accessories-Z6z4s', NULL, NULL, '2022-04-26 07:28:33', '2022-04-26 07:28:33'),
(284, 43, 'Body scrubs', 'Body-scrubs-Mz8xi', NULL, NULL, '2022-04-26 07:29:30', '2022-04-26 07:29:30'),
(285, 43, 'Hand Care', 'Hand-Care-iagCh', NULL, NULL, '2022-04-26 07:30:00', '2022-04-26 07:30:00'),
(288, 172, 'Baby Walkers', 'Baby-Walkers-FWJmZ', NULL, NULL, '2022-04-26 07:56:52', '2022-04-26 07:56:52'),
(289, 172, 'Backpacks & Carriers', 'Backpacks--Carriers-fZGVM', NULL, NULL, '2022-04-26 07:57:42', '2022-04-26 07:57:42'),
(290, 172, 'Car Seats', 'Car-Seats-MZy6Z', NULL, NULL, '2022-04-26 07:58:14', '2022-04-26 07:58:14'),
(291, 172, 'Kids Bag', 'Kids-Bag-vQCar', NULL, NULL, '2022-04-26 07:59:17', '2022-04-26 07:59:17'),
(292, 172, 'Strollers', 'Strollers-MpreT', NULL, NULL, '2022-04-26 07:59:49', '2022-04-26 07:59:49'),
(293, 172, 'Swings, Jumpers & Bouncers', 'Swings-Jumpers--Bouncers-hLYZc', NULL, NULL, '2022-04-26 08:00:44', '2022-04-26 08:00:44'),
(294, 173, 'Baby Bath', 'Baby-Bath-morba', NULL, NULL, '2022-04-26 08:01:25', '2022-04-26 08:01:25'),
(295, 173, 'Bathing Tuds & Seats', 'Bathing-Tuds--Seats-QKllf', NULL, NULL, '2022-04-26 08:02:11', '2022-04-26 08:02:11'),
(296, 173, 'Soaps, Cleansers & Bodywash', 'Soaps-Cleansers--Bodywash-OhH4S', NULL, NULL, '2022-04-26 08:03:00', '2022-04-26 08:03:00'),
(297, 174, 'Potty Chair', 'Potty-Chair-3lWbm', NULL, NULL, '2022-04-26 08:03:42', '2022-04-26 08:03:42'),
(298, 174, 'Wipes & Holders', 'Wipes--Holders-1uPfQ', NULL, NULL, '2022-04-26 08:04:39', '2022-04-26 08:04:39'),
(299, 174, 'Disposable Diapers', 'Disposable-Diapers-8fF6t', NULL, NULL, '2022-04-26 08:05:20', '2022-04-26 08:05:20'),
(300, 175, 'Milk Formula', 'Milk-Formula-s76pn', NULL, NULL, '2022-04-26 08:06:29', '2022-04-26 08:06:29'),
(301, 175, 'Utensils', 'Utensils-mCSsD', NULL, NULL, '2022-04-26 08:07:23', '2022-04-26 08:07:23'),
(302, 176, 'Mattresses & Bedding', 'Mattresses--Bedding-XAHat', NULL, NULL, '2022-04-26 08:08:10', '2022-04-26 08:08:10'),
(303, 176, 'Sanitizers', 'Sanitizers-UMxHM', NULL, NULL, '2022-04-26 08:08:37', '2022-04-26 08:08:37'),
(304, 177, 'Activity Gyms & Playmats', 'Activity-Gyms--Playmats-16CxK', NULL, NULL, '2022-04-26 08:09:33', '2022-04-26 08:09:33'),
(305, 177, 'Basics & Life Skills Toys', 'Basics--Life-Skills-Toys-PADoq', NULL, NULL, '2022-04-26 08:10:10', '2022-04-26 08:10:10'),
(306, 177, 'Bath Toys', 'Bath-Toys-COHtQ', NULL, NULL, '2022-04-26 08:10:33', '2022-04-26 08:10:33'),
(307, 177, 'Crib Toys & Attachments', 'Crib-Toys--Attachments-PImlr', NULL, NULL, '2022-04-26 08:11:40', '2022-04-26 08:11:40'),
(308, 177, 'Early Development Toys', 'Early-Development-Toys-SRdAf', NULL, NULL, '2022-04-26 08:12:24', '2022-04-26 08:12:24'),
(309, 177, 'Reading & writing', 'Reading--writing-7pa53', NULL, NULL, '2022-04-26 08:13:17', '2022-04-26 08:13:17'),
(310, 177, 'Reading & writing', 'Reading--writing-zplf1', NULL, NULL, '2022-04-26 08:13:17', '2022-04-26 08:13:17'),
(311, 178, 'Action Figures & Collectibles', 'Action-Figures--Collectibles-U3jb3', NULL, NULL, '2022-04-26 08:14:52', '2022-04-26 08:14:52'),
(312, 178, 'Arts & Crafts For Kids', 'Arts--Crafts-For-Kids-fduj4', NULL, NULL, '2022-04-26 08:15:39', '2022-04-26 08:15:39'),
(313, 178, 'Blocks & Building Toys', 'Blocks--Building-Toys-W9vx8', NULL, NULL, '2022-04-26 08:16:16', '2022-04-26 08:16:16'),
(314, 178, 'Dolls & Accessories', 'Dolls--Accessories-1Bb23', NULL, NULL, '2022-04-26 08:16:48', '2022-04-26 08:16:48'),
(315, 178, 'Dress up & Pretend Play', 'Dress-up--Pretend-Play-DdPDY', NULL, NULL, '2022-04-26 08:17:31', '2022-04-26 08:17:31'),
(316, 178, 'Electronic Toys', 'Electronic-Toys-DX5kn', NULL, NULL, '2022-04-26 08:18:24', '2022-04-26 08:18:24'),
(317, 178, 'Learning & Education', 'Learning--Education-jC5yN', NULL, NULL, '2022-04-26 08:19:01', '2022-04-26 08:19:01'),
(318, 178, 'Party Suppliers', 'Party-Suppliers-Og65N', NULL, NULL, '2022-04-26 08:19:36', '2022-04-26 08:19:36'),
(319, 178, 'Puzzle', 'Puzzle-6mDWB', NULL, NULL, '2022-04-26 08:20:07', '2022-04-26 08:20:07'),
(320, 178, 'Stuffed Toys', 'Stuffed-Toys-9WNai', NULL, NULL, '2022-04-26 08:20:41', '2022-04-26 08:20:41'),
(321, 178, 'Traditional games', 'Traditional-games-Ibryn', NULL, NULL, '2022-04-26 08:21:27', '2022-04-26 08:21:27'),
(322, 179, 'Die-Cast Vehicles', 'Die-Cast-Vehicles-de14y', NULL, NULL, '2022-04-26 08:22:57', '2022-04-26 08:22:57'),
(323, 179, 'Drones & accessories', 'Drones--accessories-irVKK', NULL, NULL, '2022-04-26 08:23:45', '2022-04-26 08:23:45'),
(324, 179, 'Play Trains & Railway Sets', 'Play-Trains--Railway-Sets-H0sNJ', NULL, NULL, '2022-04-26 08:24:43', '2022-04-26 08:24:43'),
(325, 179, 'Play Vehicles', 'Play-Vehicles-lGTDT', NULL, NULL, '2022-04-26 08:25:20', '2022-04-26 08:25:20'),
(326, 180, 'Swimming Pool & Water Toys', 'Swimming-Pool--Water-Toys-2l7qq', NULL, NULL, '2022-04-26 08:26:09', '2022-04-26 08:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `title`, `image`, `about`, `status`) VALUES
(1, 'Bikash Bhandari', 'Founder of <span>BikashMart</span>', '20220105121320.jpg', '\"We can\'t understand how we\'ve been living without Naulobazar. Absolutely wonderfull. I don\'t know what else to say. Great job, I will definitely be ordering again!\"', 1),
(2, 'Ganesh Khadka', 'Founder of <span>BikashMart</span>', '20220105121328.jpg', '\"We can\'t understand how we\'ve been living without Naulobazar. Absolutely wonderfull. I don\'t know what else to say. Great job, I will definitely be ordering again!\"', 1),
(3, 'Bipin Dhakal', 'Bipin Dhakal', '20220105121336.jpg', 'Bipin Dhakal', 1),
(4, 'Admin', 'adin', '20220105121345.jpg', 'admin', 1),
(5, 'Mona Gomez', 'Delectus minus iust', '20220105121443.jpg', 'Saepe qui soluta Nam', 1),
(6, 'Eric Harper', 'Aut molestiae repudi', '20220105121457.jpg', 'Et iusto sed iure im', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT 0,
  `client_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `files`, `status`, `viewed`, `client_viewed`, `created_at`, `updated_at`) VALUES
(1, 10000027, 19, 'test', 'hello this is test support tickets', '[{\"name\":\"favicon.png\",\"path\":\"uploads\\/support_tickets\\/\\/tATj0bnwsOiS9ruDSJvvSSB0YdkIUFeC3q3CcCfa.png\"}]', 'pending', 1, 1, '2020-06-04 04:12:10', '2020-06-04 04:12:10'),
(2, 1000002819, 19, 'hello almond', 'hello there', NULL, 'pending', 1, 1, '2020-06-04 11:06:24', '2020-06-04 11:06:24'),
(3, 2147483647, 147, 'Regarding stem vapour', '<p>Dear sir/ Mam</p><p>&nbsp;I have immense pleasure and happiness in connecting with closet Nepal knowing that very important and needy things are supplied.In this regards, Iam eager to consume and utilize production&nbsp;</p><p>Hoping to get positive response.</p><p>HomRaj Khadka.</p><p>9804520814<br></p>', NULL, 'solved', 1, 0, '2021-12-03 05:21:14', '2021-12-03 05:21:14'),
(4, 2147483647, 246, 'test', 'test issue&nbsp;', NULL, 'pending', 1, 0, '2021-12-08 06:16:57', '2021-12-08 06:16:57'),
(5, 2147483647, 327, 'ghjk', 'ghjk', NULL, 'pending', 0, 1, '2022-03-27 17:51:37', '2022-03-27 17:51:37'),
(6, 2147483647, 17, 'as', 'as', NULL, 'pending', 1, 1, '2022-03-29 08:09:08', '2022-03-29 08:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `files`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 'we have solved your problem&nbsp;', NULL, '2020-06-04 08:42:52', '2020-06-04 08:42:52'),
(2, 3, 12, 'test 1', '[{\"name\":\"user.png\",\"path\":\"uploads\\/support_tickets\\/\\/OoHMyuPXkK22mZyLcDfWogrlL1qPZE8YounW5ofn.png\"}]', '2021-12-03 05:07:04', '2021-12-03 05:07:04'),
(3, 3, 12, 'this is ticket', '[{\"name\":\"user.png\",\"path\":\"uploads\\/support_tickets\\/\\/DLiMukihvO2wiDvR6QTaySrYE2WNqcHa3TC67Izu.png\"}]', '2021-12-03 05:21:14', '2021-12-03 05:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Empty',
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'customer', 'Mr. Customer', 'anish.budhathoki18@gmail.com', '2018-12-11 18:00:00', '$2y$10$KNqJAW9jXprRtNQ0kXMPauH0Q/XRBJnrZs.cs7Yt.LdjYjY8IXae6', 'fGp4jNwcHtinhthKSDmA6d0Kdr9RNmhxjPVoHYP061EyzzelHEhmRuYzId45', 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', '', NULL, NULL, NULL, NULL, NULL, 0.00, '8zJTyXTlTT', 1, 0, '2018-10-07 04:42:57', '2021-09-27 12:08:56'),
(12, NULL, NULL, 'admin', 'NauloBazar', 'contact.naulobazar@gmail.com', '2020-06-03 11:06:12', '$2y$10$KNqJAW9jXprRtNQ0kXMPauH0Q/XRBJnrZs.cs7Yt.LdjYjY8IXae6', 'IRtX9sYbZESJn5f6bN3BQpo16H39dhvaTZVLgjq9h5kg3VAn0lgUOMHjZBY2', NULL, 'uploads/avatar/B3bL3LH4m0PBsWH3MkXPqtau3kcGwMU5QIaf1ieq.jpeg', 'attariya', NULL, 'Dhanagdhi', '10400', '9809465434', 0.00, NULL, NULL, 0, '2020-06-03 11:11:12', '2021-09-29 08:33:13'),
(18, NULL, NULL, 'customer', 'Another testor', 'anotertt@almandu.com', NULL, '$2y$10$fPVEUH9sjfumfvvIRhljluuKszig91zO.bRU3I7rwQnylB3Y1qJHq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9809465434', 0.00, NULL, NULL, 0, '2020-06-03 20:22:14', '2020-06-03 20:22:14'),
(19, NULL, NULL, 'customer', 'Mannu sharma', 'pramodlamsal@yahoo.com', '2020-06-03 21:13:48', '$2y$10$u3EM9nmpCImHENGt64Ql4OVp/dEqMoECCiVEYo.eHgKFhefv2pAbq', NULL, NULL, 'uploads/users/IEV57cUdOE95b31Yyy0himCc5sMmoMvCalRpFJX7.jpeg', NULL, 'NP', NULL, NULL, '9809465434', 0.00, NULL, NULL, 0, '2020-06-03 20:28:55', '2020-06-04 11:04:42'),
(21, NULL, '3156794384383586', 'customer', 'Prabesh Lamsal', 'prabesh.lamsal@yahoo.com', '2020-06-06 09:06:25', NULL, 'VYld6NNRkwr1tWAep2AlP6V3Mitz1ccIccINcIH3ljYaqLugOg2T14FroWx6', NULL, NULL, NULL, NULL, NULL, NULL, '9809465434', 0.00, NULL, NULL, 0, '2020-06-06 09:45:25', '2020-06-06 09:45:25'),
(24, NULL, '2777102255893191', 'customer', 'Yogesh Badayak', 'roadromeo.rr@gmail.com', '2020-07-01 03:07:38', NULL, 'iAg5btjWuydkuG2ujPOlelR8YQnzGpmZjk2CwXjWUj0uVyLGELfpAee7ljgF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 1, 3, '2020-07-01 03:30:38', '2020-09-08 15:58:25'),
(26, NULL, '104363261924787238351', 'customer', 'sabina shrestha', 'shresthasabina95@gmail.com', '2020-07-01 03:07:15', NULL, 'AaI0hNNST8b0LlXXWFleweNBDmXSAh7q63ZpA65gAkl0AjnPULpqqQ0kQGEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-01 03:52:15', '2020-07-01 03:52:15'),
(28, NULL, NULL, 'customer', 'Mannu ji', 'broadnepal@yahoo.com', NULL, '$2y$10$k7HlMEcCg68lZYF1HDVAPe2gFLWof95F4.AMtobNSPAsFXILRt2EG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-02 10:17:08', '2020-07-02 10:17:08'),
(29, NULL, NULL, 'customer', 'Mannu ji', 'mlamsal6@gmail.com', NULL, '$2y$10$dux.TUzJoaHoHlZoYFISYudByRH9uzT52nBelQXUDvGKQOxA3itA6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-02 10:34:46', '2020-07-02 10:34:46'),
(30, NULL, '1648029108696806', 'customer', 'Niraj Adhikari', 'niraj54adhikari@gmail.com', '2020-07-02 13:07:36', NULL, 'GKDmj44bThK4QcfqCPVWWjQLoLxV4u3ZpsIcAiNBlQ1VTWn65O9K6Vmhvsqy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-02 13:28:36', '2020-07-02 13:28:36'),
(31, NULL, NULL, 'customer', 'mannu ji', 'broadnepal@gmail.com', NULL, '$2y$10$T0AqyHZgCCba8TEnkH/82evi3Bzq7qpPg53lZjPCT2wJg0TWPPxhG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-03 05:31:23', '2020-07-03 05:31:23'),
(32, NULL, '102681756677428350254', 'customer', 'Sagar Malla ThaQuree', 'sagarmalla2018@gmail.com', '2020-07-11 14:07:10', NULL, 'BtJMW0FnEQu3w9K0NMoHCRt2hoaN7TjfcJrYgSZmMvZ1kHdtlQCCy5tFFoDn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-11 14:29:10', '2020-07-11 14:29:10'),
(33, NULL, '102315863184381208480', 'customer', 'Priyansh Gaming', 'thapapriyansh192@gmail.com', '2020-07-13 15:07:15', NULL, 'aBhLPayOyJNHezREkOAwYyek9ObzTOjTSOHABMP6YBQjxNSUQTW8gswlGXNY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-13 15:38:15', '2020-07-13 15:38:15'),
(34, NULL, '117677538866670500477', 'customer', 'Priyansh world', 'thapabhesraj7@gmail.com', '2020-07-16 13:07:43', NULL, 'e4kZtnVrtQy5z4kZzinpFB6sVdabfsgBtbBXPE4rShGmHKz5mgmCkcbRfeo8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-16 13:05:43', '2020-07-16 13:05:43'),
(37, NULL, '116754492358615393757', 'customer', 'Nirajan Samant', 'nirajansamant@gmail.com', '2020-07-21 09:07:27', NULL, 'EVSk1d1vxfda58fFWuozVqAZFf2N7rCkr0nWBHzpCaCLbrID43niJIZu7Tib', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-21 09:02:27', '2020-07-21 09:02:27'),
(38, NULL, '10149999597993168', 'customer', 'Celeste Moidu', 'celestemoidu@gmail.com', '2020-07-21 19:07:35', NULL, 'rajImvJRjIC2M6jnM5r9M4yzHOCBkcUUq5VlKwjdm5ZyyZ8gACtd9khOcUsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-21 19:36:35', '2020-07-21 19:36:35'),
(39, NULL, '116329824282489968813', 'customer', 'Chandra Bdr Rana', 'chandarrana143@gmail.com', '2020-07-22 05:07:32', NULL, 'ncUNGQPR4F6H3dNltAFv2tJjcyQc7zLxavQhZ1FziJWoSiU6vrEIzjmy4Kxi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-22 05:37:32', '2020-07-27 09:32:08'),
(41, NULL, '111971679603035474850', 'customer', 'Prakash Bist', 'pbist2651@gmail.com', '2020-07-23 10:07:09', NULL, 'xmUl297JF742eKTlFU4qELAbbPVD3hLY7GHpjX7ep2Wwww7fWQ31AmOzKpEs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-23 10:05:09', '2020-07-23 10:05:09'),
(42, NULL, '100956178750631822488', 'customer', 'Sushant Adhikari', 'sushantadhikari11@gmail.com', '2020-07-23 14:07:00', '$2y$10$G6xwTy8VusVB0mBD5MSH9ebBLeZDbKVfDm/NP.2MblLd2ICG2ISV6', 'Ff4Yg7GCaLvsyHF7k1gdfGDB4ijQ7Fo6GA83fgFMYr8vb7a8wqQD5b2NrWI6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-23 14:07:00', '2020-07-23 14:09:33'),
(44, NULL, '10150000570903349', 'customer', 'Amy Janus', 'hzwbryulvh_1592188804@tfbnw.net', '2020-07-27 22:07:22', NULL, 'OaoJh48ZQFI2GEFiEFrafarO66y9wzZOmea4fGmx368fJ63EoNPfAbrUbgPp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-27 22:56:22', '2020-07-27 22:56:22'),
(45, NULL, '10150000571213723', 'customer', 'Boy Punat', 'geogatedproject236@gmail.com', '2020-07-27 23:07:32', NULL, 'vSGjT3kniUrvzn7wvJexT6OIxeC781nGc4wBveQoF5qt83j3nAC3yNUtV9oj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-27 23:19:32', '2020-07-27 23:19:32'),
(46, NULL, NULL, 'customer', 'Bibek Lama', 'blama1319@gmail.com', NULL, '$2y$10$D9y8VL1hfC1UPitZFYL0Zua0dnDfP6Bax2hzNIaVxUY8r67ydtWFq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-28 05:00:16', '2020-07-28 05:00:16'),
(47, NULL, '114280646171157834878', 'customer', 'Jeevan Gurgehawa', 'gbangurgehawa999@gmail.com', '2020-07-30 05:07:51', NULL, 'VVGnMmiGSo3VF7WOvYoZve2IBWfIUyTXXfAuRzkvhGcJZSAF1ybgYB78PPb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-30 05:09:51', '2020-07-30 05:09:51'),
(48, NULL, '107457546240942191832', 'customer', 'Backteria Virus', 'backteria.virus@gmail.com', '2020-07-30 05:07:09', NULL, 'tilMhab6syAVS7fw6wG6qp235H6bW3G4V0U2vKRuQA3hV86EIPMY5TLhktjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-30 05:53:09', '2020-07-30 05:53:09'),
(49, NULL, '10150000635148310', 'customer', 'Jeffrey Viscomiberg', 'xfwpqahlcl_1576843160@tfbnw.net', '2020-07-31 06:07:30', NULL, '9On3IJHJ241ZRWhsnqmI6OrHTRkvmqf4ungoqBWKE0jGrokCtW7eRot786jk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-07-31 06:21:30', '2020-07-31 06:21:30'),
(50, NULL, NULL, 'customer', 'kta newar', 'newarkta420@gmail.com', '2020-08-07 09:11:05', '$2y$10$L4kIHczGNz6SdpIKqK6n8u9RQcZmKF9OGdTZ3/bOdv/2wsU/woTXO', 'HJfBGwV2AgncdvAKAFQvsSNMtDdLloQUNEJOFHmmDH9dgK2gpTn0pO136B7H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-07 09:01:27', '2020-08-07 09:11:05'),
(51, NULL, '106296613757426508163', 'customer', 'Rabin Bhat jr.', 'bhatravi984@gmail.com', '2020-08-10 06:08:53', NULL, 'FHwPuHBCGkpbMjNGbYTOvpY2O2eio4YO85b8ULYLJT43MA57cMGSHsZjNPnC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-10 06:44:53', '2020-08-10 06:44:53'),
(52, NULL, '103766789804513010528', 'customer', 'Sunil Rana', 'sabituchy16@gmail.com', '2020-08-14 13:08:34', NULL, 'F1Bi8iU9INel5RhdWYFL0qIjAOSL6MdADhWCzwPHdLGVeRGV4nL4gEW5iH6R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-14 13:08:34', '2020-08-14 13:08:34'),
(53, NULL, '103063195431288257579', 'customer', 'DB Traders', 'dbtraders4@gmail.com', '2020-08-15 01:08:28', NULL, 'goNxGDJ5HisGZs15QuE1md87AlA9hOw4ooSdLTbzVQYx7CAPvuAYVMugEBqI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-15 01:24:28', '2020-08-15 01:24:28'),
(54, NULL, '107420442120345215511', 'customer', 'Sameer Chapagain', 'sameerchapagai44@gmail.com', '2020-08-16 03:08:45', NULL, 'BZarYcefaXdg1jknBXrGGZRiCVL50RkQPju0h9SHy6x8O7FO6MavFUwRCv8x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-16 03:17:45', '2020-08-16 03:17:45'),
(55, NULL, '2658124037849167', 'customer', 'Pawan Bhatt', 'bhattpawan568@gmail.com', '2020-08-19 01:08:46', '$2y$10$1ln81sLVf1SOW65orI4hJOI6.I6Y6e3gI.UT4DqNzqpxGEnMpmLde', 'HzIIpJfYzBsA4xhknVMeipCURDFR8P9efSIm38Q8XAdZZ0fS6kr0acDkHavN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-19 01:27:46', '2020-08-19 01:29:44'),
(56, NULL, '4253611084710137', 'customer', 'Dhansher Jagri', 'friends_party@yahoo.com', '2020-08-19 14:08:35', NULL, 'dkktuVc0eu32JXQpnJDa1hNt1LVoomp4j3A8gsdMfeJ9RjyP8l6WlyUTj2bO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-19 14:05:35', '2020-08-19 14:05:35'),
(57, NULL, '10149999778131858', 'customer', 'Dave Riceman', 'davetestriceman@gmail.com', '2020-08-20 17:08:50', NULL, 'xgMpE1epJcm46qDh5NADd6env8t4KXTRK7syazj6E52tSg59HxrMwOBiKe14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-20 17:13:50', '2020-08-20 17:13:50'),
(58, NULL, NULL, 'customer', 'Dipesh', 'abc@gmail.com', NULL, '$2y$10$MAQEfM3XkmN9/Wq2eU7y/eGCQn7LTNX0Bo7flXXMFnLl8I.AHsNCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-02 04:18:55', '2020-09-04 08:39:38'),
(59, NULL, NULL, 'customer', 'Dinanath Khanal', 'dinanath@gmail.com', '2020-09-06 04:06:43', '$2y$10$3V4NEAnwJ7Kr/0naRRLm4ur0yQ3JOozjU4k4kTE4KVme8DxoypjSi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-06 04:06:43', '2020-09-06 04:06:43'),
(60, NULL, NULL, 'customer', 'abc', 'mmm@gmail.com', '2020-09-06 04:22:01', '$2y$10$AeRWm5Il4MfHVAFPQF63yOXQ/dTgn0m5dSP1uRejbJv1Cnfn00z9.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-06 04:22:01', '2020-09-06 04:22:01'),
(61, NULL, NULL, 'customer', 'akdkad', 'dadwd@ffsdfes.efs', '2020-09-06 04:23:06', '$2y$10$tj8jDa4ljiJs2tw4h/diDe16jxA6q5fTvqn4KqnrRK.I4nfGm.FzO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-06 04:23:06', '2020-09-06 04:23:06'),
(62, NULL, NULL, 'customer', 'abcefe', 'ofofo@fniif.fsdfsdf', '2020-09-06 04:48:20', '$2y$10$NoSmgIhdwumQNcLXCKkZ6uyBH8pjw8xqu16Y9Q53FtkYkuYGgfPBi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-06 04:48:20', '2020-09-06 04:48:20'),
(63, NULL, '620653375477553', 'customer', 'Ojha Ashmita', 'ashmita1121@gmail.com', '2020-09-06 06:09:35', NULL, 'i0xHo2KlcHGu7NW7PVEffXy7o15yYWO3RNhrl9oyAhiA8Op7NnYq2dYQVeJl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-06 06:22:35', '2020-09-06 06:22:35'),
(65, NULL, '109669075732228960795', 'customer', 'Closet Nepal', 'closetnepal.com@gmail.com', '2020-09-08 16:09:03', NULL, 'QIzvj5Jr9H8MPpgOvZo3QyarnZDdB2mYSG0lZUIdRFOUrkXmPjf16aFsWRD3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-08 16:34:03', '2020-09-08 16:34:03'),
(70, NULL, NULL, 'customer', 'pramod', 'plamsal@gmail.com', '2020-09-10 08:38:31', '$2y$10$EnF/Fn6PewPuCsG8sz9SnuB/8/c7.Q4K/jNLcbjqt5gb5CpgBjsR.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-10 08:38:31', '2020-09-10 08:38:31'),
(71, NULL, NULL, 'customer', 'Ribesh Basnet', 'ribeshbasnet19.rb@gmail.com', '2020-09-11 02:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-11 02:51:57', '2020-09-11 02:51:57'),
(72, NULL, NULL, 'customer', 'fefefe', 'geegege@gm.fdfdfd', '2020-09-11 03:25:45', '$2y$10$YfkJlJuowYAz2LRd0gTLBewxcIkrQLWwHD3dk0fozVkpDApCNINYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-11 03:25:45', '2020-09-11 03:25:45'),
(74, NULL, NULL, 'customer', 'Sagar Shree', 'shreesagar48@gmail.com', '2020-09-11 13:15:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-11 13:15:51', '2020-09-11 15:10:00'),
(75, NULL, NULL, 'customer', 'Laxmi Prasad Sapkota', 'w3worldxyz@gmail.com', '2020-09-12 15:20:43', '$2y$10$e5LFsuBP3G4Dmiix4W6Ge.SNRJadtn596rfoHKw2zu2ZoCI.t2ObW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-12 15:19:16', '2020-09-12 15:20:43'),
(76, NULL, '10150001488800587', 'customer', 'Hardeep Dinglesky', 'uqbkzlbgyj_1574355078@tfbnw.net', '2020-09-15 06:09:51', NULL, '8D28UwSHkdyEpcOMLkX2UsHo1wbTGPicT6I4aU1JDOQw5WGUH68p06vIY924', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-15 06:51:51', '2020-09-15 06:51:51'),
(78, NULL, '113070653912846034029', 'customer', 'Lion Developer', 'lionthedeveloper@gmail.com', '2020-09-27 12:09:20', NULL, 'KeIlasagd1nMIYtrV8slCN6s9vFrZNMkn0OwGboSv9WicAEUjYSwIP3MjAtX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-27 12:05:20', '2020-09-27 12:05:20'),
(80, NULL, '104704063631442981136', 'customer', 'Priya Rajbansi', 'priyarajbansi33@gmail.com', '2020-09-30 05:09:23', NULL, '7q9EzFAHPCISSXQIV48uqfI6OHPHFYm7MCIXYRawkpy8heMZqsl6GMLGub7j', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-09-30 05:04:23', '2020-09-30 05:04:23'),
(81, NULL, NULL, 'customer', 'Santosh Kalukunda', 'santoshkalukunda@gmail.com', '2020-10-01 06:25:16', '$2y$10$dVzy2Ci6xY1Bc0vs5AWMD.2qPYek/PHhpjQt.6kF4TkdcTvo2BKqe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-01 06:23:37', '2020-10-01 06:25:16'),
(82, NULL, NULL, 'customer', 'Shreya Joshi', 'joshishreya312@gmail.com', NULL, '$2y$10$f46lF1bmTxHYjN9skihsauSFYcpQibU7KNeNghL30Rnq6OnzmXbM6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-01 09:44:44', '2020-10-01 09:44:44'),
(83, NULL, NULL, 'customer', 'closet', 'close@gmail.com', '2020-10-12 04:29:39', '$2y$10$6QZQ2UwoJqQFveEOszwQFujHHwV5O0KSsIaKPEiRgOtalhsQ.fYBy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-12 04:29:39', '2020-10-12 04:29:39'),
(84, NULL, NULL, 'customer', 'lamsal', 'lamsal@gmail.com', '2020-10-16 06:17:11', '$2y$10$cW8aZaXhH.SHRxuoWLzYP.LDicudKD8vmxy2A2wxDhIaHIX/9Ydgm', NULL, NULL, NULL, 'tink', NULL, 'ktm', '562365', '9865325698', 0.00, NULL, NULL, 0, '2020-10-16 06:17:11', '2020-10-16 06:20:13'),
(85, NULL, NULL, 'customer', 'nepal', 'nepal@gmail.com', '2020-10-16 08:52:36', '$2y$10$G2z5m3qvv7.k6eIHO.HDDOhuoiYGYm5b3t0o55WcaCkiaUyrynQJ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-16 08:52:36', '2020-10-16 08:52:36'),
(88, NULL, NULL, 'customer', 'Yogesh Badayak', 'learncloset123@gmail.com', '2020-10-19 13:10:14', '$2y$10$pFLjgtyP/z89KMW37NDoKur3HNscXwK/x9G70QYHHx7my2Vv4/.6.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-19 13:10:14', '2020-10-19 13:10:14'),
(89, NULL, NULL, 'customer', 'version2test', 'version2test@gmail.com', NULL, '$2y$10$zNkU3fdEpfvdBd2t4FbKVuMrxaYiKp53b.2FlkAnxxpKAYwrVQGvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-19 13:31:27', '2020-10-19 13:31:27'),
(90, NULL, NULL, 'customer', 'dwdww', 'la@gmail.com', NULL, '$2y$10$AsqcwNXRMrB.YPrRTDMht.jPEWi76YB4j88aF3W0r3SWa3NVyIUUW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-20 03:56:39', '2020-10-20 03:56:39'),
(91, NULL, NULL, 'customer', 'Ruth', 'ruthmeronaam@gmail.com', '2020-10-20 05:39:49', '$2y$10$jeQqATvzkDeFnDSdAy/T6ur.DJUUR1sIGU1scOf4nWB40.i8c/QIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-20 05:39:49', '2020-10-20 05:39:49'),
(92, NULL, NULL, 'customer', 'ei lay 4520', 'eilay4520@gmail.com', '2020-10-20 06:29:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-20 06:29:11', '2020-10-20 06:29:11'),
(93, NULL, NULL, 'customer', 'Arjun Rana', 'allumesallu@gmail.com', '2020-10-20 08:39:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-20 08:39:36', '2020-10-20 08:39:36'),
(94, NULL, NULL, 'customer', 'Bir Bahadur Chaudhary', 'birbdrchaudhary6@gmail.com', '2020-10-20 09:53:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-20 09:53:19', '2020-10-20 09:53:19'),
(95, NULL, NULL, 'customer', 'Dipesh khanal', 'dkhanal@gmail.com', '2020-10-22 03:42:17', '$2y$10$iEh5qJzl5uEJB2H4WYkwBe7BTX4FSSOpK9NxIM8dquKC.hyhv9FmC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-22 03:42:17', '2020-10-22 03:42:17'),
(96, NULL, '109297606919914134286', 'customer', 'OMMASTA MOBILE', 'masthmobile545@gmail.com', '2020-10-22 22:10:02', NULL, 'yzk09obUqb61vyahjEdsLI5MqNGMxn3MCg888hAdCXi24wx7ZJQksBMg99u5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-22 22:54:02', '2020-10-22 22:54:02'),
(98, NULL, '115668779889288352127', 'customer', 'Briyan Poudel', 'birupoudel2018@gmail.com', '2020-10-27 06:10:09', NULL, 'FoNv7ql9Yi3gK0cP81nplV52yuSbuogAZFIy8j6VpjvkYz6XNGUXmnkyG1as', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-27 06:12:09', '2020-10-27 06:12:09'),
(99, NULL, NULL, 'customer', 'Maniram Chaudhary', 'www.mingmaarchy568@gmail.com', '2020-10-29 15:38:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-29 15:38:50', '2020-10-29 15:38:50'),
(100, NULL, '107567520064129915091', 'customer', 'Himal Batha Magar', 'silentzef@gmail.com', '2020-10-30 13:10:29', NULL, 'F2Q0p62B1z4gvjISrZSeDs7JgG1J9VnMibVvqOgkg7LYuw3ZuNyjSlaxpFy0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-10-30 13:39:29', '2020-10-30 13:39:29'),
(101, NULL, NULL, 'customer', 'Naveen Acharya', 'naveenacharya530@gmail.com', '2020-11-01 11:33:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-01 11:33:32', '2020-11-01 11:33:32'),
(102, NULL, NULL, 'customer', 'snol', 'sroj.npl@gmail.com', '2020-11-03 12:13:30', '$2y$10$JghZTVsaDKW6PFaR/c95L.VYmwhLLgu67ZyC6BoHann.XCRrUu4vW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-03 12:13:30', '2020-11-03 12:13:30'),
(103, NULL, NULL, 'customer', 'khanal', 'khanal@gmail.com', '2020-11-04 09:07:04', '$2y$10$KmsHndegQiyuNjrkMWnfh.vYq13rlVzh32/L38AqOcZ2sAfaijj.W', NULL, NULL, NULL, 'koteshwor', NULL, 'kathmandu', '44600', '9865326598', 0.00, NULL, NULL, 0, '2020-11-04 09:07:04', '2020-11-04 09:08:17'),
(104, NULL, '100770436907085210896', 'customer', 'Savitri Bhatt', 'bhattsavitri743@gmail.com', '2020-11-05 09:11:01', NULL, 'isvboLaQs0LGIXlrQsZGa77CK4VCTnbc3waluZ24VdZ5Tf15v3XVberIEumj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-05 09:52:01', '2020-11-05 09:52:01'),
(106, NULL, NULL, 'customer', 'Nabin Bhatta', 'nbt.robo@gmail.com', '2020-11-06 10:09:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-06 10:09:25', '2020-11-06 10:09:25'),
(107, NULL, NULL, 'customer', 'Rajendra Pant', 'pantrajendra2@gmail.com', '2020-11-07 22:32:12', NULL, NULL, NULL, NULL, 'Shivnagar-5', NULL, 'Dhangadhi', NULL, '9863361676', 0.00, NULL, NULL, 0, '2020-11-07 22:32:12', '2020-11-07 22:39:58'),
(108, NULL, NULL, 'customer', 'mausam bhatta', 'mausambhatta2014@gmail.com', '2020-11-08 03:49:42', '$2y$10$J9R1eNLmWJXzgwwCRiF85OXfXytDxGlX0g4apWtf4PiQ9CtIwnG0G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-08 03:49:42', '2020-11-08 03:49:42'),
(109, NULL, '103838965327583495201', 'customer', 'Aaron Sapkota', 'aaronsapkotanasa@gmail.com', '2020-11-08 09:11:36', '$2y$10$ZKFB6SQM5YXzEnZqybOz7u52W3ZZeVT2rUFaHSLzoQGsfZSWkgV9W', 'KM2qpykCUyKvlRSYZnJFAfrNW6UqgpaH0oFpX57UpfY1cU6qaysCnVS7koyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-08 09:03:36', '2020-11-08 09:04:13'),
(110, NULL, '3405755962875112', 'customer', 'Jeewan Kusmi', 'kusmijeewan@yahoo.com', '2020-11-09 00:11:14', NULL, 'GEsI2OegrFUoiFP1lptcI1FyCIW9aiuUvhVLRHvLRXDk6C4FdLYg9GJpLs7V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-09 00:57:14', '2020-11-09 00:57:14'),
(111, NULL, '10164325749810430', 'customer', 'Avadh Raj Sharma Gyawali', 'a_bad80@hotmail.com', '2020-11-09 03:11:03', NULL, 'BJrZVVlbZNA5DEQL0164aBb2F5LSsdxe9xwbFu1X651i65H3QWtNhvlM1RWA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-09 03:09:03', '2020-11-09 03:09:03'),
(112, NULL, '10218117446273097', 'customer', 'Santosh Giri', 'jinuwagaun96@gmail.com', '2020-11-09 22:11:43', NULL, 'HYOvd5AWyH71ilWZS2c6FlBKxnc1HZtMmJciy9yhvJFpJPNHR7N581NAN6G6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-09 22:50:43', '2020-11-09 22:50:43'),
(113, NULL, '3556107464468256', 'customer', 'Sunil Pokharel', 'coolsunil48@yahoo.com', '2020-11-10 00:11:13', NULL, 'vbcC15GKRbchs5orPxM5hzVQL3JposLJ7ZFCp8HJCc2L6dPQmHmZ5NX58dAl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-10 00:34:13', '2020-11-10 00:34:13'),
(114, NULL, '3475107765858378', 'customer', 'SharMa JivAnn', 'frndjks@gmail.com', '2020-11-10 01:11:52', NULL, '1RXHhNBY2LDi5xwTuwbfIUeYJepJXzmwkeGzjRbB4YZswoRMbLOrUxp5q6vS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-10 01:40:52', '2020-11-10 01:40:52'),
(115, NULL, '2686002968318471', 'customer', 'Kiran Bohara', 'kiranbohara2@gmail.com', '2020-11-10 06:11:47', NULL, 'anynhnr2QeObdDMBcaJdpCf4BbaQbkSvd2HNajhuMeSJPUozJdD3prhuAQBr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-10 06:39:47', '2020-11-10 06:39:47'),
(116, NULL, NULL, 'customer', 'Kiran dhami', 'kirandhami908@gmail.com', '2020-11-10 09:04:22', '$2y$10$jUuIfLzCt3aJY6tRtU4LIO2ygHiYxMrPzUB/xUfvaPY1yh7aVzF0K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-10 09:00:40', '2020-11-10 09:04:22'),
(117, NULL, NULL, 'customer', 'testid', 'testid@gmail.com', '2020-11-11 04:46:59', '$2y$10$YbhShlfirsxWnbulgptgq.VuFi91SUC9rKMwrAGu9BU0Sw6g9CJwu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-11 04:46:59', '2020-11-11 04:46:59'),
(118, NULL, '105622820029059985982', 'customer', 'Gaming bro', 'schy60880@gmail.com', '2020-11-11 08:11:27', NULL, 'IzIkUXpVdgPWftQtEUnnlx1kFEXfGptvsLeerWjQri7Rtj5Ksv57Ea6LIhy2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-11 08:58:27', '2020-11-11 08:58:27'),
(119, NULL, NULL, 'customer', 'Binod Bhandari', 'binod00665@gmail.com', NULL, '$2y$10$IHdJTY0tNHP3yT1dal9AK.y75e1KoH8SfjkVGCnTbxRBDPkiGzYA6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-11 16:12:06', '2020-11-11 16:12:06'),
(120, NULL, NULL, 'customer', 'test', 'testtest@gmail.com', '2020-11-13 06:16:08', '$2y$10$3uQDcXT6nf/5TW5uG9A1puptX.aeyWT8U3nHW1FaWUSR287pJOmpO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-13 06:16:08', '2020-11-13 06:16:08'),
(121, NULL, NULL, 'customer', 'Mahesh Raj Joshi', 'mj310709@gmail.com', '2020-11-13 08:28:37', '$2y$10$SaDEiRviRMX/86.df/58QuCd033New2nNmobmGA.ZYNe.ApORhU4m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-13 08:28:37', '2020-11-13 08:28:37'),
(122, NULL, NULL, 'customer', 'lotus herbal', 'lotusherbal68@gmail.com', '2020-11-14 00:05:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-14 00:05:16', '2020-11-14 00:05:16'),
(123, NULL, NULL, 'customer', 'Mahesh Lama', 'maheshlama68@gmail.com', '2020-11-18 03:39:41', NULL, 'PLdJlUccObY3cj82uYI2cZZo5miMGtGD9rQ9pd3R09zoUTHxPuyZxLF3MFBf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 03:39:41', '2020-11-18 03:39:41'),
(124, NULL, NULL, 'customer', 'Sandesh Bohara', 'mrsakurazi12@gmail.com', '2020-11-18 04:42:47', '$2y$10$NmXbBlU5gPXyTjDDIMVvz.8gH2siRu5ciX8H/f51oefT7YURKp97y', NULL, NULL, NULL, '02 bani', NULL, 'kanchanpur', NULL, '9866100167', 0.00, NULL, NULL, 0, '2020-11-18 04:42:47', '2020-11-18 04:43:55'),
(125, NULL, NULL, 'customer', 'yougal shrestha', 'yougal_blqckman@yahoo.com', '2020-11-18 05:44:43', '$2y$10$W2bkuiOwnWPC0fPbxB.kqu/T0/GKCoo5A9h8nPq3N0qDzPXgf3q7e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 05:44:43', '2020-11-18 05:44:43'),
(126, NULL, '1016720928807387', 'customer', 'Mazzako Nepal', 'shoppingsanshar@gmail.com', '2020-11-18 11:11:43', NULL, '0XWC6jqYaITBrOwDiuESDGTEm0Bbl2m4QYbL9NnlOexXpazUGyMobdREXcmF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 11:17:43', '2020-11-18 11:17:43'),
(127, NULL, '4700641076674989', 'customer', 'Bamdev Pokharel', 'bamdev20p@gmail.com', '2020-11-18 17:11:41', '$2y$10$Wgi0rmoTLfLUpQmMXs0pyutoh3xRtbsxsWk27XIN6DAYawwDT7SkK', 'aEWAk1B57kYNa7kcdrwFLQSvQuhiTBDzCxTExMlU0lUo5dK3EQNaGv6uN4mv', NULL, 'uploads/users/OCTvi9NcKH2rLzE6fQf8IYgGwBVTgCvc6vdZHZEc.png', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 17:49:41', '2020-11-18 18:01:13'),
(128, NULL, NULL, 'customer', 'yougal', 'yougal_blackman@yahoo.com', '2020-11-18 19:51:33', '$2y$10$iai8Mm1c8M1Fqp2X7UcKr.DLQkOsBDw4mnfhyES0RjIzkZnyfLH/2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 19:51:33', '2020-11-18 19:51:33'),
(129, NULL, '3475779132536814', 'customer', 'Ikrak Nivar', 'karkiravin97@yahoo.com', '2020-11-18 20:11:31', NULL, 'ql7ze2jttaLrVHqa8WXb1ftDlnPCyPbYgD4w2LC8w0ZtfoHSmBydgyZFF9Pu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-18 20:20:31', '2020-11-18 20:20:31'),
(130, NULL, NULL, 'customer', 'Dev Shakti SDC', 'devshaktichaudhary122333@gmail.com', '2020-11-19 06:03:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-19 06:03:47', '2020-11-19 06:03:47'),
(131, NULL, NULL, 'customer', 'Girendra Pandeya', 'girendrapandey1234@gmail.com', '2020-11-19 13:51:55', '$2y$10$XvnrjFJl8dYjGEizVAtKx.RC4m74hQJr99xV95g8XVssA05ETuHxG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-19 13:51:55', '2020-11-19 13:51:55'),
(132, NULL, NULL, 'customer', 'mahesh Yonjan', 'maheshlama187@gmail.com', '2020-11-20 00:48:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-20 00:48:20', '2020-11-20 00:48:20'),
(134, NULL, NULL, 'customer', 'sanjay', 'sapkotasanjaya981@gmail.com', NULL, '$2y$10$UEyj9CatPJBZnxIGKF5vA.t87KZAiv95zH2hlxg9fgoD1alpl7ICe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-21 00:51:21', '2020-11-21 00:51:21'),
(135, NULL, NULL, 'customer', 'Harinarayan Chaudhari', 'harinarayanchaudhari87@gmail.com', '2020-11-21 02:41:54', '$2y$10$fsULl58rF3aYKQEVvAgWAO52t1p4JG1MpyU2bz6Ai5kwh5cMb7X66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-21 02:40:56', '2020-11-21 02:41:54'),
(137, NULL, NULL, 'customer', '', 'rafikk3000@gmail.com', '2020-11-21 14:20:23', NULL, NULL, NULL, NULL, 'Baijnath', NULL, 'kohalpur', '081', '9804567668', 0.00, NULL, NULL, 0, '2020-11-21 14:20:23', '2020-11-21 14:25:19'),
(138, NULL, '4830718727002722', 'customer', 'Nabin Pandey', 'bin08world@gmail.com', '2020-11-21 17:11:44', NULL, 'pif5Di0mh8usLQedASRVXsk642WtCxplEdI3ujMhu6RSXWAiph8wtOXR6CH6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-21 17:07:44', '2020-11-21 17:07:44'),
(139, NULL, NULL, 'customer', 'Ram Surat Baidya', 'baidys9819@gmail.com', '2020-11-23 09:38:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-23 09:38:16', '2020-11-23 09:38:16'),
(140, NULL, NULL, 'customer', 'tenzin', 'choenzom13@gmail.com', '2020-11-24 04:33:36', '$2y$10$kTJC4sLfVqO8Xo9IiDzAFen2nplY7ZIFgt18dI.hnPEechyfhmHOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-24 04:33:36', '2020-11-24 04:33:36'),
(141, NULL, '3491858734243529', 'customer', 'सुकरात शर्मा', 'jijijazed@flurred.com', '2020-11-24 11:11:49', NULL, 'Sm1nrpSsLPnpDWK7g0zZMRKoiqVDaf56ISnyC20jJVeWk0D0n02K0NdTXyaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-24 11:42:49', '2020-11-24 11:42:49'),
(143, NULL, '110962634005758530157', 'customer', 'Balchandra gurung', 'balchandra230@gmail.com', '2020-11-24 12:11:50', NULL, '5qIUX6s8gtQwHse9CJ0GZlAgPKxaMaB0Q6355zdG0V1s7hB5yYVppJZLq5Kr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-24 12:44:50', '2020-11-24 12:44:50'),
(145, NULL, '1004047116768927', 'customer', 'Pradeep Shahi', 'oct.unknown@gmail.com', '2020-11-25 06:11:52', NULL, 'uo4KS5il7WuGDOeax3gph4iksFAbbaLIwr0Ut2ZRENQwB7Wocph4pP5T86xY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-25 06:34:52', '2020-11-25 06:34:52'),
(146, NULL, NULL, 'customer', 'Asmita Khatri', 'khatriasmita26@gmail.com', NULL, '$2y$10$dgkS3SQvWaVrwH1J/YKafuUv.eQihFnxYphPadzjpSZtXG0xXkp6C', 'Qg4ebQ8UV5inQD7dGHOYQJtBTrfgAY6ykNYdtzS3pSPQAdLqjOdACHdq2Am7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-25 06:37:18', '2020-11-25 06:37:18'),
(147, NULL, NULL, 'customer', 'Hom Raj Khadka', 'Khadka.homraj@yahoo.com', '2020-11-25 11:14:45', '$2y$10$VGVhIU4eFnxmKV.PYGZfpetEd7e5WzjVaNlSqMT.rDsxo7xt/hebm', 'UB0jkPTE9WsEm5XUepahoUPTLkq3rteeH1jwnRBOB57znM1MQn9Qsr1ERP62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-25 11:10:16', '2020-11-25 11:14:45'),
(148, NULL, '2702737219975103', 'customer', 'Rhytham Bhandari', 'cool.bhandari780@gmail.com', '2020-11-26 01:11:58', NULL, 'AmItXprmVdgeqE9Lcf6WNzc6nxUvLfTNdA0IAqfmbVOyQpiXB0Fl5uXzlOHz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-26 01:03:58', '2020-11-26 01:03:58'),
(149, NULL, '1075374902933705', 'customer', 'Sunita Shahi', 'sudeshshahi819@gmail.com', '2020-11-26 13:11:13', NULL, 'B3KYI8sTm1EfrVuhZIdfXmSUKycyFyCI5mo3xBfKtYFMPLAqJSCrFthI4yu3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-26 13:34:13', '2020-11-26 13:34:13'),
(150, NULL, '3777788422234411', 'customer', 'Santosh Shrestha', 'santoshshrestha84@yahoo.com', '2020-11-26 13:11:34', NULL, 'P1mmNfpERenQVhg217plNVeu037vmkWM11Auhb621NsUxwvzvIZlhTVcOab2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-26 13:36:34', '2020-11-26 13:36:34'),
(151, NULL, '136498174892928', 'customer', 'Himal Sony', 'himalhimalsony@gmail.com', '2020-11-26 16:11:57', NULL, '6gkyp8LuJZ3K6zQnUEMsgTxp09gyAfosNzviexP8w8S5iAICygqf49rgBJQh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-26 16:31:57', '2020-11-26 16:31:57'),
(152, NULL, '2963312920559098', 'customer', 'Puja Ghimire', 'puja20g@gmail.com', '2020-11-27 01:11:41', NULL, '5XuWyV9BHJQVMJszHHDVhxxo6ckNiSBVBZKlmt5y8dpT2PR2sVcEsxbYwQe8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-27 01:36:41', '2020-11-27 01:36:41'),
(153, NULL, '1827805347379809', 'customer', 'Prakash Dhait', 'here_uma@yahoo.com', '2020-11-27 21:11:45', NULL, 'QxT5XNtSP0TULnzdMFV8Z8O9aAqa544JvMiGfJTQOalcmIQLeNPo83JB3crg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-27 21:12:45', '2020-11-27 21:12:45'),
(154, NULL, '3012783862155896', 'customer', 'Gopal Sapkota', 'sapkotag674@yahoo.com', '2020-11-28 14:11:23', NULL, 'ZDMlZ5o6Zjw7Rxy133FvMaNqRhrXVNt1pMYjveQY6JEL30Zed8FIE3snaZE6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-28 14:05:23', '2020-11-28 14:05:23'),
(155, NULL, NULL, 'customer', 'Mansoon Dhital', 'dhital.mansoon@gmail.com', '2020-11-29 06:21:24', '$2y$10$Dg/sKWdvSADccosdrqX.7.RijdKbZIwjpS0rVoFEC21njcXm99zdG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-29 06:21:24', '2020-11-29 06:21:24'),
(156, NULL, '414587703238508', 'customer', 'Sworgadwari Multiple Campus', 'sworgadwarimc@gmail.com', '2020-11-30 02:11:14', NULL, 'jSwJxD3FGxPpqxlYXP3yAyafdY0shZGDDq8fEf0iXMpmLBRsr2RyrujSWops', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-30 02:55:14', '2020-11-30 02:55:14'),
(157, NULL, '107302968340745983377', 'customer', 'Sagar Tiruwa', 'sagartiruwa655@gmail.com', '2020-11-30 17:11:33', '$2y$10$HjA4rARepjnsnW/bj2DYHe3XlIb4TQKDSDkLNFcwPdhr5enwc8f2i', '5ZibyRNLchTU6MhQN2fdcbzjsnpJweD8noUJTGEFLUEEHWEoWEKrbkdYroId', NULL, 'uploads/users/NTDIuqv39kQZ6xEzyYhCJrtytqeQtXIdkQelWkQo.png', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-11-30 17:06:33', '2020-11-30 17:08:16'),
(158, NULL, NULL, 'customer', 'NABEEN SUBBA', 'nabeensubba2@gmail.com', '2020-12-01 13:29:42', NULL, NULL, NULL, NULL, 'Dhangadhi -15 Kanari Beli Bazar', NULL, 'Dhangadhi', '091', '9800624203', 0.00, NULL, NULL, 0, '2020-12-01 13:29:42', '2020-12-01 13:32:38'),
(159, NULL, NULL, 'customer', 'Prajan Neupane', 'prajanneupane@gmail.com', '2020-12-03 08:09:24', '$2y$10$vggYqEI1UvNjfIWv6MSjB.u.mse8h6BkmfWTcfw1.8rU9UBzg3xli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-03 08:09:24', '2020-12-03 08:09:24'),
(160, NULL, '3569425986428779', 'customer', 'Inu Karki', 'inu_k66@yahoo.com', '2020-12-04 04:12:29', NULL, 'Kl4UorDL9JZKFzBugkwsq0lfQx9r7Cr5bazLW1JPVmdpGTndjVplSwenLjQe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-04 04:12:29', '2020-12-04 04:12:29'),
(161, NULL, '3446403788809688', 'customer', 'Bhuwan Karki', 'info.bhuwankarki5@gmail.com', '2020-12-05 04:12:58', NULL, 'Q7jnX2JETNt92VMeHtiavZH7YDZ4Geq1KXt309YFZud0jWXebPeat7B814r1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-05 04:36:58', '2020-12-05 04:36:58'),
(162, NULL, NULL, 'customer', 'justice', 'justicenepalgod@gmial.com', NULL, '$2y$10$ZOzld1YK4QcLKSTwvPLbW./r4AM7AMfz2EfxOSH9zH/O1MgvyqmYi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-05 06:40:50', '2020-12-05 06:40:50'),
(163, NULL, NULL, 'customer', 'Yogesh Bohara', 'yogeshbohara01@gmail.com', '2020-12-05 13:15:56', '$2y$10$ZmSG2A5aadHjl2Kd7RNG6eAb0PvPl7CoNJMH6SKSMwtM/.X6HxYyC', 'yjI36x8DjN6x3A8uiiCMfaDUN647RXy7RvEpNtBpVX02xWW0KmsPFiwMjbyc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-05 13:12:44', '2020-12-05 13:15:56'),
(164, NULL, NULL, 'customer', 'Shiva', 'shivakc1630@gmail.com', NULL, '$2y$10$aVqhayO6hUVBpOPKAsGJM.bl3OKRR.It66yyarOvKC/Ekb57xQqzW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-06 10:35:10', '2020-12-06 10:35:10'),
(165, NULL, NULL, 'customer', 'Aria Anderson', 'ariaa7994@gmail.com', '2020-12-06 13:24:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-06 13:24:53', '2020-12-06 13:24:53'),
(166, NULL, NULL, 'customer', 'Netra karki', 'karkinetra25@gmail.com', '2020-12-06 16:22:58', '$2y$10$NP9mOTJEAjjALRMiQCqHROKhU0pPiZ3QXYTn47nNakp63AYcJ9gQq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-06 16:22:58', '2020-12-06 16:22:58'),
(167, NULL, NULL, 'customer', 'Rajesh Tharu', 'rajapurtechnicalcollege@gmail.com', NULL, '$2y$10$UKfTQ0PTkWQ2tb1cFxT6BucDEomcOmWnW6sMRCXMJbpyFc6iYgR5K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 00:30:06', '2020-12-07 00:30:06'),
(168, NULL, NULL, 'customer', 'Harish mahar', 'harishmahar.hm@gmail.com', '2020-12-07 03:14:06', NULL, NULL, NULL, NULL, 'kirtipur', NULL, 'Dadeldhura', NULL, '9868769660', 0.00, NULL, NULL, 0, '2020-12-07 03:14:06', '2020-12-07 03:23:13'),
(169, NULL, NULL, 'customer', 'Sushil Chaudhary', 'sushilchaudhary065@gmail.com', '2020-12-07 09:17:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 09:17:40', '2020-12-07 09:17:40'),
(170, NULL, NULL, 'customer', 'Rukum Chandra Bhatt', 'bhattrukum@gmail.com', NULL, '$2y$10$MoR38rdFqfmIdA9MwbuzJON9tcrtQ4RPZzeji/6WkmAYOuaUWb1Oi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 10:20:32', '2020-12-07 10:20:32'),
(171, NULL, '248198310062219', 'customer', 'वसन्त ऋतु', 'wnepali7@gmail.com', '2020-12-07 10:12:31', NULL, 'H5tS7xasTaEhuFkgwffQ9i3HbV5d7archPeZZcjL9O8B1IkONlifCaFffVKp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 10:34:31', '2020-12-07 10:34:31'),
(172, NULL, NULL, 'customer', 'Pradip.C', 'pradipchaudhary904@gmail.com', '2020-12-07 11:17:47', '$2y$10$Xaags2toF/fSEw/DMAO9Aex.AXfAzCKBoNJPnWdvIIDLH.sG9yJlG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 11:17:47', '2020-12-07 11:17:47'),
(173, NULL, NULL, 'customer', 'Chhabi Koirala', 'chhabi3636@gmail.com', '2020-12-07 13:22:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-07 13:22:12', '2020-12-07 13:22:12'),
(174, NULL, NULL, 'customer', 'bibekc5999', 'bibekc5899@gmail.com', '2020-12-08 00:41:16', '$2y$10$QMszKBv.otjdtDFErot65eHTePGFv1DLUeNLZ8JM.fizyp1hB1Ldy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-08 00:41:16', '2020-12-08 00:41:16'),
(175, NULL, NULL, 'customer', 'Balram Thapa', 'balramthapa359@gmail.com', '2020-12-08 01:07:50', NULL, NULL, NULL, NULL, 'Karkando-18, Nepalgunj', NULL, 'Banke', '21900', '9814597352', 0.00, NULL, NULL, 0, '2020-12-08 01:07:50', '2020-12-08 01:08:52'),
(176, NULL, '2823834594501656', 'customer', 'Prak\'s Thagunna', 'mr_prakash6@yahoo.com', '2020-12-08 05:12:30', NULL, 'cR5xeiRtaMV562Q7YwFnEQPsrXlKisDaUccI6DqNhU04j7PISoPCW5zz31Uj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-08 05:31:30', '2020-12-08 05:31:30'),
(177, NULL, '2810590892527389', 'customer', 'Nabin Rawat', 'nabinrawat38@gmail.com', '2020-12-08 10:12:50', NULL, 'S77qdHweuMhpb3nFCeyyRMphtx2ygPRbcmQrwpfzg6CEnZ7whKclgxU2kt5y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-08 10:39:50', '2020-12-08 10:39:50'),
(178, NULL, NULL, 'customer', 'Rajesh kumar gupta', 'rajeshkncomputer@gmail.com', '2020-12-08 11:47:46', '$2y$10$Ji5bXe/bm7fKsspcH7gJ4OBdh5spYKziaHBGAhu4OF036KBUisS8u', 'RWjYPezYikkvtdkV1BEjVUVRUy2v8qPK0VSfsi0MSeQTWUa0ZRZSgRA0zjZj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-08 11:46:12', '2020-12-08 11:47:46'),
(179, NULL, NULL, 'customer', 'Dipesh Khanal', 'dkhanal112@gmail.com', '2020-12-08 12:48:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-08 12:48:37', '2020-12-08 12:48:37'),
(180, NULL, NULL, 'customer', 'Akasha Xettri', 'saudmn255@gmail.com', '2020-12-09 03:54:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-09 03:54:20', '2020-12-09 03:54:20'),
(181, NULL, '106335467588300416748', 'customer', 'Purna Chandra Pandeya', 'saradpandey72@gmail.com', '2020-12-09 05:12:33', NULL, '56svlT7tvdYDdlRDmt51kVmioyaEK178XNSPf3hTEZ1dW9e3nQCMjfa7mZfc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-09 05:18:33', '2020-12-09 05:18:33'),
(182, NULL, NULL, 'customer', 'Yogendra Mahat', 'mahatyogendra@gmail.com', '2020-12-10 03:45:52', '$2y$10$SzVuEk4pJSBtDoVMje5NUOw756lJIsm91Z9oGrnSGu7hNHaCPy2.u', NULL, NULL, NULL, 'Janakitol', NULL, 'Mahendranagar', NULL, '9858750667', 0.00, NULL, NULL, 0, '2020-12-10 03:45:52', '2020-12-10 03:50:53'),
(183, NULL, NULL, 'customer', 'Saroj Dahit', 'jesuspjenet@gmail.com', '2020-12-10 12:52:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-10 12:52:59', '2020-12-10 12:52:59'),
(184, NULL, NULL, 'customer', 'Mitthu Rana', 'mitthurana78@gmail.com', '2020-12-10 14:18:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-10 14:18:10', '2020-12-10 14:18:10'),
(185, NULL, NULL, 'customer', 'Jhalak Thapa', 'samyoljk57@gmail.com', '2020-12-11 01:14:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-11 01:14:29', '2020-12-11 01:14:29'),
(186, NULL, '116919161196071312011', 'customer', 'Shailendra Pun', 'dearshailendra1997@gmail.com', '2020-12-12 01:12:28', NULL, 'ff21BYDrTUm5cU91QuBwO7fsS5yeX1xUAeRSBfOof8IdO3ORMvzODqtERNV3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-12 01:17:28', '2020-12-12 01:17:28'),
(187, NULL, NULL, 'customer', 'Som raj Awasthi', 'asomraj123@gmail.com', '2020-12-12 11:56:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-12 11:56:18', '2020-12-12 11:56:18'),
(188, NULL, NULL, 'customer', 'nepstar', 'tekawasthi7@gmail.com', '2020-12-12 15:43:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-12 15:43:49', '2020-12-12 15:43:49'),
(189, NULL, NULL, 'customer', 'shankar rawal', 'shankarrawal088@gmail.com', '2020-12-13 00:43:05', NULL, NULL, NULL, NULL, 'Sukhad', NULL, 'Dhangadhi', NULL, '9811626730', 0.00, NULL, NULL, 0, '2020-12-13 00:43:05', '2020-12-13 00:44:38'),
(190, NULL, NULL, 'customer', 'Документ номер WLR9044WLR2 подготовлен. Смотрите документ12 далее на странице http://apple.com', 'boriskinaleksandrccth@mail.ru', NULL, '$2y$10$htzgB8ggQxLxaASXps3isOun9FVls38RV7HMlY38xErO3UI1bQBli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-28 00:02:54', '2020-12-28 00:02:54'),
(191, NULL, NULL, 'customer', 'Sabin Godar', 'sandragodar81@gmail.com', NULL, '$2y$10$D0sC1Ae/FG.pE8PAcMswBukJBPypwmSrZUjYYqmZLLHVmMYA9T4G2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-01-13 12:51:17', '2021-01-13 12:51:17'),
(192, NULL, NULL, 'customer', '<html><a href=\"http://apple.com\"><img src=\"https://i.ibb.co/990cvT1/unnamed.png\" width=\"100\" height=\"100\" alt=\"ok\"></a></html>WLR292201WLR2 Remix01', 'kolesnikovakristinarpy@mail.ru', NULL, '$2y$10$oi7ZitIhJPPOSUfXW4XyRO0hq7HM0Y/GzuO.ZEInIUEbWIRp9jB9i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-01-18 03:08:29', '2021-01-18 03:08:29'),
(193, NULL, NULL, 'customer', 'Документ номер WLR914828WLR2 подготовлен. Смотрите документ12 далее на странице http://apple.com', 'bessonovairinandv@mail.ru', NULL, '$2y$10$fg4huj0sYICJV1bzN6DevO6AdEtwgGdqldFQAW3NbHMxnXilmYJ36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-01-30 16:07:39', '2021-01-30 16:07:39'),
(194, NULL, NULL, 'customer', 'Документ номер WLR1918697WLR2 подготовлен. Смотрите документ12 далее на странице http://apple.com', 'poliakovagalinajews@mail.ru', NULL, '$2y$10$raLODajZX9psNBzcGdZKQOFiOcnTrFmGtLgOMfdnCurQloOOdHttC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-02-08 20:40:39', '2021-02-08 20:40:39'),
(195, NULL, NULL, 'customer', 'HDPZ277OK6SI3N6RZG1PYPDH http://google.com/573', 'nikodiimsukkhnat@gmail.com', NULL, '$2y$10$OFzTCMNyohbHZpqqJ5o2t.3Qr16OHX07oI5LbS4Pxu5bVeSGDsxJO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-02-19 09:40:04', '2021-02-19 09:40:04'),
(196, NULL, NULL, 'customer', 'Deepak Shahi', 'deepakkhadg14@gmail.com', NULL, '$2y$10$NMv08kwy764/L7qZwuy0rOvlP8T9NyGE77RSN2Ie1e2VkqHpexFwy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-02-20 08:10:56', '2021-02-20 08:10:56'),
(197, NULL, NULL, 'customer', 'FHGNRIYM6GHF <b>http://google.com/824</b>', 'bennageomar4723475@gmail.com', NULL, '$2y$10$5R7Mel2ONWzDSv.g9eF/NeldOVhw86Ur35Bn7UiYFIydZmEMkKkOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-03-01 14:57:11', '2021-03-01 14:57:11'),
(199, NULL, NULL, 'customer', 'CTU61SO6544CGZSO9RSOSUTC http://google.com/432', 'jayheisavetheworld@gmail.com', NULL, '$2y$10$jqiG5MOi8d1w0Fc9z5RTuuwBtn5KSxfcGbZn5kFMcqBRZbn8eJskC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-03-22 19:20:02', '2021-03-22 19:20:02'),
(200, NULL, NULL, 'customer', 'Deepak Shahi', 'deepakkhadgi14@gmail.com', NULL, '$2y$10$cpCOiBcl5bRJPNCec4rlwulS4aPV3hJi4C/2BqXEEDjkpYesVIchq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-04-27 01:33:23', '2021-04-27 01:33:23'),
(201, NULL, NULL, 'customer', 'BuSpeem', 'khirasa@yandex.ru', NULL, '$2y$10$4lRCJ4udqAG2kCQxgYLZaugu.dlzKs7.5SeZU70D5bUgtzkGZQSAe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-05-06 00:43:25', '2021-05-06 00:43:25'),
(203, NULL, NULL, 'customer', 'Hom Bahadur thapa magar', 'hom24.mgr@gmail.com', NULL, '$2y$10$sMkILI.UXCbttuq7juzRGOQYZU7TEEfCOhqzG7Agi6jmsW.GFelAa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-07-29 13:42:43', '2021-07-29 13:42:43'),
(204, NULL, NULL, 'staff', 'Kamala Paneru', 'kamalapaneru22@gmail.com', NULL, '$2y$10$76ae.LVcL56ItSUvpvFu9eGr.kTNnhhWUcTC75E3//MFMIPEuy40G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9801351162', 0.00, NULL, NULL, 0, '2021-08-19 06:37:58', '2021-08-19 06:37:58'),
(205, NULL, NULL, 'staff', 'Shanta K.C', 'sargamkc56@gmail.com', NULL, '$2y$10$qUknv9wcputbO96QpxZ7hOnbITddiJug7fSMOVwtxFGynwK.f2EIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9801351179', 0.00, NULL, NULL, 0, '2021-08-19 06:39:02', '2021-08-19 06:39:02'),
(206, NULL, NULL, 'staff', 'Parbati Marahattha', 'parbatimarahattha22@gmail.com', NULL, '$2y$10$8h8oTk4t7U89g2go86vtLuA/An3n7Oh1Hl1nkiCbbphpvA5gG5AkO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9801305820', 0.00, NULL, NULL, 0, '2021-08-19 06:40:31', '2021-08-19 06:40:31'),
(211, NULL, NULL, 'customer', 'aaaa@gail.com', 'aaaa@gail.com', NULL, '$2y$10$QEgy7R9aGc1gr0x/nkRDkuSOrdhC/YoA21AUbSDOFHwkUeNfSi6cq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:09:32', '2021-09-23 05:09:32'),
(212, NULL, NULL, 'customer', 'adasdsad', 'aaaa@gmail.com', NULL, '$2y$10$1QG21NaUoREnp51qoPInVu/pUTcQ4doLZcBXqQvrDZtdKcZ87c0jW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:19:21', '2021-09-23 05:19:21'),
(213, NULL, NULL, 'customer', 'sadasdassaasd', 'email@gmail.com', NULL, '$2y$10$xy62rr2cOnMYSLn7KypjuuDUWDXyrO50joy24cmOht7yCtV48yGle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:20:35', '2021-09-23 05:20:35'),
(214, NULL, NULL, 'customer', 'sadasdassaasd', 'mail11@gmail.com', NULL, '$2y$10$s848oU3kM.ebV35SX5L5gemLuccDw8Tij9dWpsB1pcY.72WRl5/BC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:29:17', '2021-09-23 05:29:17'),
(215, NULL, NULL, 'customer', 'asdsadsad', 'password@gmail.com', NULL, '$2y$10$jC7C61jbqpyBRuwe06UiHOSPtx9O3IhAaZxcOAcQUY0kuJwgOmwG.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:32:32', '2021-09-23 05:32:32'),
(217, NULL, NULL, 'customer', 'dsdsadas', 'prasun@gmail.com', NULL, '$2y$10$zI9WZevfh3nn3uUDFz3Zh.SKrgXNqFjNjAhLBXFlgjfs8s5l/Eene', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-23 05:39:45', '2021-09-23 05:39:45'),
(218, NULL, NULL, 'customer', 'Bhogi Rastogi', 'bhogi.nepal@gmail.com', NULL, '$2y$10$WZkS6u5dJA/uK0cdyG/MX.WVrUtbBR4l2jQlbMgh.j5uUsw9Cj5qe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-28 06:23:03', '2021-09-28 06:23:03'),
(229, NULL, NULL, 'customer', 'pramod Lamsal', 'info@nextnepal.com', '2021-09-29 06:52:11', '$2y$10$KxTP234QkyjeWJjC1.vwruCsNSEJmV8ahVPNmnzcTRBD4P8MhkVcm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-29 07:15:08', '2021-09-29 07:15:08'),
(231, NULL, NULL, 'customer', 'admin@gmail.com', 'adffdfghmin@gmail.com', NULL, '$2y$10$T2Xfi66VkdfrtoUMhBRhs.Xe.o4ELMzjE67FliJkM..qrfJRG1Wqq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-29 07:31:47', '2021-09-29 07:31:47'),
(233, NULL, NULL, 'customer', 'test999', 'anish.budhathoki21@gmail.com', NULL, '$2y$10$7dCbd5PD.DX3Jw7HIqDdk.FMkXYmpvU1IaxjPYeqJDkXY8PmjhMr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-29 07:45:17', '2021-09-29 07:45:17'),
(234, NULL, NULL, 'customer', 'prasundahal@gmail.com', 'prasundahal@gmail.com', '2022-01-11 09:09:49', '$2y$10$d0tmBl6HWizpASGZhlQ7kOC9CXvYH13p92AEKc4VuCCTHKGt6YqJK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-29 08:34:31', '2022-01-11 09:09:49'),
(237, NULL, NULL, 'customer', 'Gannon Forbes', 'revewo4032@decorbuz.com', NULL, '$2y$10$YPtmKehV5X2AAj7/3TtY2uNwbiPcp9NGFoODzK1mG3pH/q..kKfiG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-09-29 11:51:44', '2021-09-29 11:51:44'),
(240, NULL, NULL, 'customer', 'Ganesh Khadka', 'tushar.khadka@gmail.com', NULL, '$2y$10$5irtdG8byIJUN1QUZJWHE.UlECQhGyHaAhY7Z5akFeKrpVjGEAgze', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-10-03 09:54:19', '2021-10-03 09:54:19'),
(244, NULL, NULL, 'customer', 'Ganesh Khadka', 'ganesh.brks@gmail.com', '2022-03-28 04:57:46', '$2y$10$vcw47hUSQBXMDXklCZJIgOk7hpCGFkpxwoSXRuKVvmSRlMUtUvDpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-11-14 10:34:11', '2022-03-28 04:57:46'),
(245, NULL, NULL, 'customer', 'Ranjan Pandey', 'jobs@justnep.com', '2021-12-06 12:14:35', '$2y$10$lO7ckjwngZ4aS51T.GpLeuCMzy0kl3OAL6lOjd48BD8HskP6wHfrO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-06 12:13:15', '2021-12-06 12:14:35');
INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(249, NULL, NULL, 'customer', 'shova pandey', 'shova@gmail.com', NULL, '$2y$10$H3PEYbmRT3mOHvd3efNm2.XsOLrebtDjGYYM4ytSpAcXEkpN3R9yG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-07 04:05:00', '2021-12-07 04:05:00'),
(260, NULL, NULL, 'customer', 'Test Admin', 'joshibipin20522@gmail.com', '2021-12-13 07:06:04', '$2y$10$NKSmZZ.znM9PqGUicjjIXeSYV5X66zYkji/O13VOAgYD1oTqkC5oy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-13 07:05:43', '2021-12-13 07:06:04'),
(266, NULL, NULL, 'customer', 'Muniraj Rajbanshi', 'munirajrajbanshi@gmail.com', '2021-12-13 11:30:44', '$2y$10$XocnNs/RvETzU8KP5cxu5OzIzMadcD.JXMfv1qfm4YbW1mpgv1L0W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-13 11:29:50', '2021-12-13 11:30:44'),
(267, NULL, NULL, 'customer', 'Test user', 'test.user10@gmail.com', '2021-12-13 11:30:44', '$2y$10$O.WEj9.ruYboz3c.OvgfU.ulkqepdhxRsnHDX1b4gU6OAAuUf5z2u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-13 12:23:53', '2021-12-13 12:23:53'),
(268, NULL, NULL, 'admin', 'NauloBazar', 'contact11.naulobazar@gmail.com', '2020-06-03 11:06:12', '$2y$10$KNqJAW9jXprRtNQ0kXMPauH0Q/XRBJnrZs.cs7Yt.LdjYjY8IXae6', 'ghNISWoq7KiXblCev6V4qcf2Ul3kRhPBQa9EdrJWdoq7y9cc37epdA99SLBv', NULL, 'uploads/avatar/B3bL3LH4m0PBsWH3MkXPqtau3kcGwMU5QIaf1ieq.jpeg', 'attariya', NULL, 'Dhanagdhi', '10400', '9809465434', 0.00, NULL, NULL, 0, '2020-06-03 11:11:12', '2021-09-29 08:33:13'),
(269, NULL, NULL, 'customer', 'Hectorduh', 'gaubagszokuspeechxl@mail.com', NULL, '$2y$10$KivEpo1li1p4cJMn683BcuTpdpnRJ945HtF6XbX4N/2cUi6Y4Oof2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-26 14:48:27', '2021-12-26 14:48:27'),
(271, NULL, NULL, 'customer', 'Prassun', 'prasunn.dahal@gmail.com', '2021-12-30 12:42:10', '$2y$10$1KE/8HtLrX.xUpXJ1nwWZ.3EaAhv/49ZNlsx7E39XvzjeoCDu/luK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-30 12:42:10', '2021-12-30 12:42:10'),
(272, NULL, NULL, 'customer', 'MatthewHew', 'clarsukigedramzh@mail.com', NULL, '$2y$10$xElGdURppDWQ46s3JpQFleghszl3ZaqxH89IyTvDmbIuNCzDhl.Ha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-30 20:49:00', '2021-12-30 20:49:00'),
(273, NULL, NULL, 'customer', 'DavidRal', 'miascanrukodavo@mail.com', NULL, '$2y$10$HOr8fW4pgiElnKTxAjDn/.AxpRU7uf7Bppkfb4I2/NXrfFtzpOH6C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-12-31 00:50:11', '2021-12-31 00:50:11'),
(274, NULL, NULL, 'customer', 'Donaldnus', 'premecnusupawnwb@mail.com', NULL, '$2y$10$Lie7mbV684tPYqK/gLOV4eANax/4lVkOVV3NA61AsWFYUPAPxW61.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-02 00:53:21', '2022-01-02 00:53:21'),
(275, NULL, NULL, 'customer', 'Test01', 'test01@gmail.com', '2022-01-03 05:29:10', '$2y$10$GQUnDGKrXeqP9Zc2/wD36e/KwP5VjHtNzsAkSWXkuHYm7DXJiv./e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-03 05:29:10', '2022-01-03 05:29:10'),
(276, NULL, NULL, 'customer', 'Test01', 'test02@gmail.com', '2022-01-03 12:24:09', '$2y$10$8ReLIYD5pFouRkmWdieNF.PwQpST5uHtICBrjOOJqOeTxB35TNjtG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-03 12:24:09', '2022-01-03 12:24:09'),
(277, NULL, NULL, 'customer', 'Tfef Pran', 'yaresab627@zoeyy.com', '2022-01-04 10:10:15', '$2y$10$TPloQ6gxBHstxweZsYdy2uZ4.CwJy3pFt99Dk5zQjUodN54M5Znkm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-04 10:09:35', '2022-01-04 10:10:15'),
(278, NULL, NULL, 'customer', 'Amar', 'raiamar021@gmail.com', '2022-01-17 06:45:27', '$2y$10$IkMUDYB7T.JkCmsBi6jhc.F3jYZB5VrgSDRNHgJlZhVNoEocOI/5u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-17 06:44:36', '2022-01-17 06:45:27'),
(279, NULL, NULL, 'customer', 'SAGAR', 'dfd@hgh.com', NULL, '$2y$10$6/t3CRD5566t4itFV7vTGuiee0X4.Ne1f.HwEbleSGyCDrHHs.rb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-01-27 02:58:54', '2022-01-27 02:58:54'),
(281, NULL, NULL, 'customer', 'naulobazar.com bbbdnwkdowifhrdokpwoeiyutrieowsowddfbvksodkasofjgiekwskfieghrhjkfejfegigofwkdkbhbgiejfwokdd', 'dimafokin199506780tx+32d3@inbox.ru', NULL, '$2y$10$JvYaOngKvTBnr5Wjixnfmue.3tSXGbh/AIMlkMn9oqrC0H/hjBET6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-02-01 21:37:22', '2022-02-01 21:37:22'),
(290, NULL, NULL, 'customer', 'Bhupen Rajbanshi', 'rbhupen265@gmail.com', '2022-03-27 03:52:42', '$2y$10$sFEiMDag8CrzUaTebkRSEOI0aQ4hlTDmU8z9ZfNFVTmI0H8Bw37aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-27 03:51:54', '2022-03-27 03:52:42'),
(329, NULL, NULL, 'customer', 'Sujan Shrestha', 'shresthaboy6@gmail.com', '2022-03-28 05:02:00', '$2y$10$QpuWTHF3TvF2xfGKctnLy.vTJgKvIKzrQ5C1ziJKkxXfGW0FVwCiy', 'rrN4vtM3frypfazjRpYiWipcu8OtRBBH9A1D3reXvu2lxGtIN29EoFSD32JC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-28 05:02:32', '2022-03-28 05:02:32'),
(333, NULL, NULL, 'customer', 'Martin CroZz', 'krishnathapamagar289@gmail.com', '2022-03-28 05:13:00', '$2y$10$zSbhpCW8ielkkGFZNHgQhOp8vDBftRiR5ZAkXA0YDzr9EMWfeoULW', 'Xtr6uzBM0UdAc6jJnKbUirY0BewwzdmIa1430Ro3mSAdU5eatYiyRfbFHktV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-28 05:13:15', '2022-03-28 05:13:15'),
(334, NULL, NULL, 'customer', NULL, 'martin.crozz39@gmail.com', '2022-03-28 05:14:00', '$2y$10$BMeIU3gVjcf/t/GdXfVzC.dJlW/wtNwmHTY6T42m41oB9SR8qeZS2', 'L07g4KNy5k7FvsqkGzh7l7zR7ltv2UGSGLgN7rL6sw2aeVvkDvg5Ywqxz3Ar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-28 05:14:04', '2022-03-28 05:14:04'),
(339, NULL, NULL, 'customer', 'Babin Shrestha', 'babinshrestha5748@gmail.com', '2022-03-28 08:35:00', '$2y$10$tEtjJkZ3AuN63tUkYWSfo.v/ybruh9VOcOY93KHzilI6N5urIMc.C', '4862809417147468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-28 08:35:05', '2022-03-28 08:35:05'),
(348, NULL, NULL, 'customer', 'Bipin Joshi', 'hunters.prey143@gmail.com', '2022-03-29 05:15:00', '$2y$10$amIv5i6RfVSLhcupOE0c9uvLeOORKZ1RoFwlVwuBdfE6wcBDQt716', '0Kq1kU9r268bq0myxWELVZU5UFS0Gcl5z7ivG3xPrgqIDN200Vf3zcGrZ4np', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-29 05:15:57', '2022-03-29 05:15:57'),
(353, NULL, NULL, 'seller', 'Three P and G suppliers', 'prlkhadka26@gmail.com', '2022-03-30 06:28:32', '$2y$10$DiK0ozwlLsU/rS0P2E/CBuZBHWLXa0Us6Xe3Hx9.ndL/jhKsZlzwG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-30 06:21:22', '2022-03-30 06:28:32'),
(364, NULL, NULL, 'customer', NULL, 'susantkrl2052@gmail.com', '2022-03-31 01:52:00', '$2y$10$iJEbEzVyxUtpsVi0MGbKZulscuCLUEKjfRYYuQqS6cdCqpLm46Hvu', '100454744217088959272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-03-31 13:52:20', '2022-03-31 13:52:20'),
(365, NULL, NULL, 'customer', 'गणेश खड्का', 'ganeshkhakda@gmail.com', '2022-04-01 07:10:00', '$2y$10$3Vxm3.9TbEGQhqPrMd9ofe70Yia/7.7qE/B8hTGPsPCAmpQ0dZJWu', 'pjtnA0clBtZnPFzV0UptgUT3AgQcAITMBNjcdl3hc14I8ZEjCIlypILkh6of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-01 07:10:05', '2022-04-01 07:10:05'),
(366, NULL, NULL, 'seller', 'Kankai  Khudra Pasal', 'jhapalirabin@gmail.com', '2022-04-03 06:33:05', '$2y$10$70HRQq5TdXKoo6jifYpS/ePC1h7vl51RGYnta6H.D8xwbYhL9fXyi', NULL, NULL, 'uploads/ObpcdQOF1gtu89mJTlXkRMCkLlSjK8aN9rQE2zNI.jpg', NULL, NULL, NULL, NULL, '9849652394', 0.00, NULL, NULL, 0, '2022-04-03 06:11:53', '2022-04-28 08:40:40'),
(367, NULL, NULL, 'seller', 'Baya  Fashion Store Pvt.Ltd', 'ac.budhanilkanthaheritage@gmail.com', '2022-04-03 07:55:00', '$2y$10$KB.YY/WYqQZ8riFqVh7ymutSLhhGewzKBojc2bCE0922TS44yjOP2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9843766625', 0.00, NULL, NULL, 0, '2022-04-03 07:51:03', '2022-04-03 07:55:00'),
(368, NULL, NULL, 'seller', 'Bishwas Ornament', 'gajmerrabina@gmail.com', '2022-04-03 13:33:42', '$2y$10$fob5Er9wg8dJ97/Ar3VV/ewegWrUbJRF6XhUrKdBStyp406Cc6ZPW', NULL, NULL, 'uploads/6qPjuXuPwYjh79uGVW68BaL5FYvl6ob7LSnEzv6I.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-03 13:13:21', '2022-04-03 13:37:13'),
(369, NULL, NULL, 'seller', 'OM Shree electronics', 'kunwardammari26@gmail.com', NULL, '$2y$10$9WEpBl74jHNt8NUs8Oxr9OE25iPLt6bv5PViVhX1PD2qZdpom8Nle', 'EsvwBdImv3Ax5xKWcSA35ld3JBoultjM1awslJEzRH49exOLz1xrl7uNg7Gh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-04 07:50:10', '2022-04-04 07:50:10'),
(370, NULL, NULL, 'seller', 'GlamMe Health N Beauty', 'info.glammehnb@gmail.com', '2022-04-06 06:11:37', '$2y$10$jpHbw7moRNQR4h92W.xlGuYTLtc5a0Lqu3y/eMcc6eCOuB6qPfW1m', 'dFUsdoS8lxSS1xUKEkMuk1A6p8Gh9KqkYim74Bu31Yy4WY4v4dW42OZu0yWB', NULL, 'uploads/XDwECjZUKfi9FaYp0EkBVct4tIoHNQuYU5TtWdVX.png', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 1, 5, '2022-04-06 06:03:29', '2022-04-24 15:24:58'),
(371, NULL, NULL, 'customer', 'Om Krishna Manandhar', 'manandhar.ok@gmail.com', NULL, '$2y$10$h7KBhWo4TAGeM2Y1UkIRa.xMqKSciifiKNviVKXhptTU6WaHrZoca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-18 06:27:58', '2022-04-18 06:27:58'),
(372, NULL, NULL, 'seller', 'TiptopTailer', 'tiptoptailer1@gmail.com', '2022-04-18 07:34:27', '$2y$10$q5FxHIpeI6FEw/cMArJb6uLsoQL//0r4BKkViw/FT8zH9Aqqmrra2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9823663786', 0.00, NULL, NULL, 0, '2022-04-18 07:10:27', '2022-04-18 07:34:27'),
(373, NULL, NULL, 'seller', 'SS fancy shop', 'thapasantosh358@gmail.com', '2022-04-25 06:31:26', '$2y$10$4SPeKWDASoNfbAZ5CyeXEupqm7Sr.4C/frr.tK5f3qq1yfgY3gEWm', 'Yy2TA7JWLIKqYX0CgAORtJVlUnpaywdG4uhz14U2yMFAmWGyGtT8U2DG9OOk', NULL, 'uploads/HicHj2E2fY6fOHCI4AChmzF8JkXghXH2yWPJdkmM.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-25 05:15:13', '2022-04-26 05:26:43'),
(374, NULL, NULL, 'seller', 'Kusum Collection', 'hari.shrestha2049@gmail.com', '2022-04-25 09:25:05', '$2y$10$xcVyKdhhWFsCWJOCws0XtOdSAFwm/C2KnPJCHCNc1kKOxfwPNxmMe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9849932195', 0.00, NULL, NULL, 0, '2022-04-25 09:24:32', '2022-04-25 09:31:47'),
(375, NULL, NULL, 'customer', 'Michaelowevy', 'hide2504@filmkachat.ru', NULL, '$2y$10$/Hoapp7p2zD4MC9lwzhlCu68ljvKslGSykakJfrPsKcNM1BkwBiau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-25 16:11:45', '2022-04-25 16:11:45'),
(377, NULL, NULL, 'seller', 'Patan Music Center', 'patanmusiccenter@gmail.com', '2022-04-27 07:20:53', '$2y$10$exudZisaMkXOrX9O0NDMUuuUWs5beL5L84LFVFJTasmt4GlO3UemO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-27 07:13:04', '2022-04-27 07:20:53'),
(378, NULL, NULL, 'customer', 'Uttam shrestha', 'uttamstha14@gmail.com', NULL, '$2y$10$ar9E8Y0w145cvl1Zjr3VcebnQ6OH.qZgFtNcXSGulzX/2wi3s5Xha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-27 08:44:36', '2022-04-27 08:44:36'),
(379, NULL, NULL, 'seller', 'Dibha Traders Private limited', 'subkarish85@gmail.com', '2022-04-27 10:30:53', '$2y$10$Qk41crQmM30HSoMCX.ztjuMmHriqGj33Jq/Ps2qezDNd0nAHtvpUS', NULL, NULL, 'uploads/uBsCcpEFKHiMcAwDqVkx5IwKzKmjZoaYyr2nCkDu.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-04-27 10:11:16', '2022-04-27 10:40:40'),
(380, NULL, NULL, 'customer', 'Purushottam Kathayat', 'mcash4679@gmail.com', '2022-05-01 18:57:41', '$2y$10$.0FqM//XLmv9IdQg.z.RAuzihqWCDJ6HEOIlK9Vuh7AtJW0sZZyZK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-01 18:56:49', '2022-05-01 18:57:41'),
(381, NULL, NULL, 'customer', NULL, 'web2rabindrapanta@gmail.com', '2022-05-03 10:58:00', '$2y$10$jFr8739IQK5vSY53IZCTweBmHwCw..TumDh95IxTg.5yjFWUBQpBq', '109737809118246882342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-03 10:58:17', '2022-05-03 10:58:17'),
(382, NULL, NULL, 'seller', 'Jabbali Nepal', 'shrisatinepal22@gmail.com', NULL, '$2y$10$KonF1lPwLYpVAFtl0vSf2Ouaa.nySGOX5Q61Q6NKFqGhBZ2L0gpWe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-04 08:22:13', '2022-05-04 08:22:13'),
(385, NULL, NULL, 'customer', NULL, 'chandant142@gmail.com', '2022-05-12 02:19:00', '$2y$10$7lpIvRTBEaPpFsGhsGjAMe99WKg74SQmsJ9ZQINTC.5cvrMUJMeIq', '108858826536964379787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-12 02:19:19', '2022-05-12 02:19:19'),
(386, NULL, NULL, 'customer', 'u65ujdy  hd7r56j5j dj56jydj dj https://icloud.com ka', 'credneckfen1988@mail.ru', NULL, '$2y$10$kFWSxNFE2Y8B8qNR9XOT1./wtulAErIzA9yR40i/aRxHrZpvGKLD6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-18 13:15:44', '2022-05-18 13:15:44'),
(387, NULL, NULL, 'customer', 'dj6ytruytuie576i865tusrgfjfghkgshjksrjsd https://drive.google.com efferi', 'quebarlo1991@mail.ru', NULL, '$2y$10$dx1MB.oVlDvm1LiQEVvzXORb38T9XVYVGhQZ3jQ6bhMTEJ6Q9aZaW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-18 21:05:44', '2022-05-18 21:05:44'),
(389, NULL, NULL, 'customer', NULL, 'srdpbhujel@gmail.com', '2022-05-21 01:38:00', '$2y$10$RiqDMhEhq5jKKwwv0UzQiOMegoz2fjXyy/yjUkKdA3VHu79HrEMk.', 'xqgu42btTCt4Mgmj2wIrVp5ouuvqg2c4aOtVyiy2dtHhNzyfiwlSwiUvbI2I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-21 01:38:02', '2022-05-21 01:38:02'),
(390, NULL, NULL, 'seller', 'Deco Himal', 'shabhay18@gmail.com', NULL, '$2y$10$32/cy1VpzxrgoMiOCkCrquT2jhm61MPezfgsVA4fydobkBDQs/0Uu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-25 01:12:26', '2022-05-25 01:12:26'),
(392, NULL, NULL, 'seller', 'Kripalu Info Tech Nepal', 'samsungmobilestor2@gmail.com', '2022-05-26 09:04:52', '$2y$10$6B3Kxy2UgGlpz/SCky.1x.M72EcRA5H5VQGGo7Nioq7IctPIO0/me', NULL, NULL, 'uploads/ZeEWdqyTWMr65Yehb6dDJrMj5XtvFwwwOS43145v.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-26 09:03:59', '2022-05-26 09:05:19'),
(393, NULL, NULL, 'customer', 'Naresh Prajapati', 'n.prajapati65@gmail.com', NULL, '$2y$10$XzjFKVuJZ40U5ZEUgf4MjuMz90iTviMygi3Ng2n0zEpN/JhxElisy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-27 04:07:29', '2022-05-27 04:07:29'),
(395, NULL, NULL, 'seller', 'Manakamana', 'gktthapa@gmail.com', '2022-05-29 08:48:45', '$2y$10$Y5ZZKNodwQVm90D8Qn6fiOFdlsqZJSWroiViV/OCjFoXtqWd1GEiC', NULL, NULL, 'uploads/88sZs71TXFeupZpVcSFhC3hndVFefjfK0jZJVfQ9.jpg', NULL, NULL, NULL, NULL, '9818697071', 0.00, NULL, NULL, 0, '2022-05-29 08:31:36', '2022-05-29 10:06:11'),
(446, NULL, NULL, 'seller', 'Dyanaz', 'devrajrijal2075@gmail.com', NULL, '$2y$10$bYJm52qV0ndoVFScA8ofFeMnyu72P9HNXFdoYAPcwGfs4/VMkXJK2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9865458177', 0.00, NULL, NULL, 0, '2022-05-31 06:43:10', '2022-05-31 06:48:30'),
(447, NULL, NULL, 'seller', 'Fancy stor', 'rabibasnet726@gmail', NULL, '$2y$10$zzsLUAV8MkpqTpKiFUDKZuhHbKeZq/DEEQ.RNMkBFA1kZKxqsKtyG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-31 07:12:19', '2022-05-31 07:12:19'),
(448, NULL, NULL, 'seller', 'So Miya', 'maharjansanjaya884@gmail.com', '2022-05-31 09:54:36', '$2y$10$axJiq2IV8ZO660EDJp7KeeUwXmGoh9l2FLd4nrdAOKfcyvCGUSa.y', NULL, NULL, 'uploads/OOyuNZrHyTd3vxytDoV8bNhPzhgOeB6HEiXF9Qcb.png', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-31 09:42:42', '2022-05-31 10:06:47'),
(451, NULL, NULL, 'seller', 'Brothers Mobile House', 'krghrajan98511@gmail.com', '2022-05-31 11:23:35', '$2y$10$Zep/rzGiPGMj0.bQz.YqOuodYJeA3uD0BWfFWpafYnIUdDX8gk3JS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-05-31 11:18:47', '2022-05-31 11:23:35'),
(452, NULL, NULL, 'seller', 'Handball Sports and Clothing Station', 'cesc.arsenal2049@gmail.com', NULL, '$2y$10$B6wmd/Ywd6TfqpLH/3Bj0evlOwtnUCD6tFb7yjka7NcsCX3.uHEi.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-01 06:33:54', '2022-06-01 06:33:54'),
(453, NULL, NULL, 'customer', NULL, 'jitjung345@gmail.com', '2022-06-01 03:54:00', '$2y$10$9gItZ0G.D/OB5oA6AEieGevdeanT65Yb6JEI/Rb5UtgcOkzzKcZPG', '109961389479519247798', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-01 15:54:42', '2022-06-01 15:54:42'),
(454, NULL, NULL, 'customer', 'Rajesh Shrestha', 'iamrajeshshrestha@yahoo.com', '2022-06-02 04:31:00', '$2y$10$xjQzA7PwkBC.TYjEWRuvjOKTQIZX2CVrQBBmbn.8bEYMEz3crRAAe', '10227739571265971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-02 04:31:56', '2022-06-02 04:31:56'),
(457, NULL, NULL, 'customer', 'Regal Clothings Pvt Ltd', 'regalclothigs4u@gmail.com', NULL, '$2y$10$nhf9ovtzEJegGgN/Dkjkz.ef3DNiTNRYo.8UKg9l70ZmKazy1mO.S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-03 05:38:20', '2022-06-03 05:38:20'),
(460, NULL, NULL, 'customer', 'krishna maharjan maharjan', 'km980293@gmail.com', NULL, '$2y$10$pGPN/pyjBIg/vJhUHghSA.EgUh5OY8Dq4KHBaxBg3pP9lUsJdwlMW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-03 11:01:00', '2022-06-03 11:01:00'),
(461, NULL, NULL, 'seller', 'Regal Clothings Pvt Ltd', 'susantkrl95@gmail.com', '2022-06-04 12:28:00', '$2y$10$Cas/fTZCeE3rz.k20bReS.ucRwk2mFT1vWPt3Y.IksH3ceGwTGhj2', NULL, NULL, 'uploads/HwaComHgmCb0ipRDcLHmje046ISXH37MM8qQ3oq1.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-04 12:24:23', '2022-06-04 12:28:37'),
(462, NULL, NULL, 'seller', 'CB _trade', 'ppaudel475@gmail.com', NULL, '$2y$10$wlHuSb.VEkoM1HsHtIc/LefB9UEnLkLSfE4vFHI/09BaUr4l8NoY2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-04 16:35:08', '2022-06-04 16:35:08'),
(463, NULL, NULL, 'seller', 'DENIM & DEVILS', 'deepakgtm123@gmail.com', '2022-06-05 05:20:25', '$2y$10$QuYvz1T/UzR42zLuVOAAku0Q27Jr6Ye3rM.XesdXGC0dxv4Z5rK4W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-05 04:54:03', '2022-06-05 05:20:25'),
(464, NULL, NULL, 'seller', 'The High Himalayan Bakery', 'yubaklohani2@gmail.com', NULL, '$2y$10$D41H6BXKmxINQmLpwsMjFeAyawgNavmh106rhdBwk7dqcpTjPZQdK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-05 05:04:59', '2022-06-05 05:04:59'),
(465, NULL, NULL, 'seller', 'A1mart', 'aimbaneswor@gmail.com', '2022-06-05 05:18:01', '$2y$10$fHMqqYb6iGxvF/4WGWL3HutZHN6VaoR4QqFwHxX43k4VXpEL4txra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9823040360', 0.00, NULL, NULL, 0, '2022-06-05 05:15:19', '2022-06-05 05:18:01'),
(467, NULL, NULL, 'seller', 'priyanasha store', 'la2591043@gmail.com', NULL, '$2y$10$DC78fMCWL9dllYSsm0LeA.dnJFx7mkUL.UsOqOxwe6e9.hHn9bEqq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-07 09:36:51', '2022-06-07 09:36:51'),
(468, NULL, NULL, 'seller', 'BP Shoe Center', 'arrivalmart@gmail.com', NULL, '$2y$10$JcXtcCxB3M6EYFy9ZaYeNuQdAd3MIjL4xcRYp0St/70Nw2LwoFfBC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9861998290', 0.00, NULL, NULL, 0, '2022-06-07 11:19:51', '2022-06-07 11:27:15'),
(469, NULL, NULL, 'seller', 'Ntg', 'lgauri333@gmail.com', NULL, '$2y$10$eXv6kxAg8VC8x7YZoNWyzeyL3CRrIyXzvIqbNSA1Emho6Ia5WkpAu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-07 20:30:33', '2022-06-07 20:30:33'),
(472, NULL, NULL, 'seller', 'Ride Fasholic', 'ridefasholic@gmail.com', NULL, '$2y$10$sf5ImjSD2jxNJT8b8Hjneuu8jw/qkardEdCA7HmCAOohwloa9qRj.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2022-06-08 12:54:04', '2022-06-08 12:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval` int(1) NOT NULL DEFAULT 0,
  `offline_payment` int(1) NOT NULL DEFAULT 0,
  `reciept` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `payment_method`, `payment_details`, `approval`, `offline_payment`, `reciept`, `created_at`, `updated_at`) VALUES
(1, 23, 1400.00, 'Refund', 'Product Money Refund', 0, 0, NULL, '2020-09-12 00:56:20', '2020-09-12 00:56:20'),
(2, 17, 12.00, 'cash', 'Cash Payment', 0, 0, NULL, '2022-03-29 06:48:21', '2022-03-29 06:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 8, 3, '2020-07-18 17:33:49', '2020-07-18 17:33:49'),
(2, 8, 4, '2020-07-18 17:34:06', '2020-07-18 17:34:06'),
(3, 23, 41, '2020-07-26 02:05:28', '2020-07-26 02:05:28'),
(4, 23, 35, '2020-07-26 02:06:19', '2020-07-26 02:06:19'),
(5, 58, 42, '2020-09-02 04:22:15', '2020-09-02 04:22:15'),
(6, 58, 13, '2020-09-02 04:23:57', '2020-09-02 04:23:57'),
(7, 58, 35, '2020-09-02 04:37:24', '2020-09-02 04:37:24'),
(8, 58, 14, '2020-09-02 07:20:24', '2020-09-02 07:20:24'),
(9, 58, 22, '2020-09-02 07:20:39', '2020-09-02 07:20:39'),
(10, 58, 19, '2020-09-02 07:20:45', '2020-09-02 07:20:45'),
(11, 58, 26, '2020-09-02 07:21:13', '2020-09-02 07:21:13'),
(12, 23, 47, '2020-09-08 06:29:49', '2020-09-08 06:29:49'),
(13, 66, 42, '2020-09-09 09:43:10', '2020-09-09 09:43:10'),
(14, 20, 42, '2020-09-10 07:31:15', '2020-09-10 07:31:15'),
(15, 71, 25, '2020-09-11 02:55:48', '2020-09-11 02:55:48'),
(16, 66, 35, '2020-09-11 03:57:18', '2020-09-11 03:57:18'),
(17, 73, 42, '2020-09-11 05:26:56', '2020-09-11 05:26:56'),
(18, 74, 32, '2020-09-11 15:08:16', '2020-09-11 15:08:16'),
(19, 12, 25, '2020-09-13 08:32:42', '2020-09-13 08:32:42'),
(20, 58, 47, '2020-09-25 05:59:49', '2020-09-25 05:59:49'),
(21, 58, 36, '2020-09-25 06:00:03', '2020-09-25 06:00:03'),
(24, 85, 36, '2020-10-16 09:03:33', '2020-10-16 09:03:33'),
(25, 20, 47, '2020-10-16 10:10:36', '2020-10-16 10:10:36'),
(26, 20, 36, '2020-10-16 10:12:42', '2020-10-16 10:12:42'),
(36, 84, 47, '2020-10-19 10:10:41', '2020-10-19 10:10:41'),
(37, 88, 36, '2020-10-19 13:36:22', '2020-10-19 13:36:22'),
(38, 88, 60, '2020-10-20 09:42:18', '2020-10-20 09:42:18'),
(39, 65, 60, '2020-10-21 14:05:02', '2020-10-21 14:05:02'),
(40, 95, 57, '2020-10-22 03:43:03', '2020-10-22 03:43:03'),
(41, 95, 60, '2020-10-22 03:43:26', '2020-10-22 03:43:26'),
(42, 95, 55, '2020-10-22 03:43:32', '2020-10-22 03:43:32'),
(43, 95, 56, '2020-10-22 03:44:03', '2020-10-22 03:44:03'),
(44, 107, 93, '2020-11-07 22:41:33', '2020-11-07 22:41:33'),
(45, 107, 100, '2020-11-07 22:46:03', '2020-11-07 22:46:03'),
(46, 107, 96, '2020-11-07 22:46:53', '2020-11-07 22:46:53'),
(47, 107, 95, '2020-11-07 22:47:24', '2020-11-07 22:47:24'),
(48, 33, 110, '2020-11-08 12:29:22', '2020-11-08 12:29:22'),
(49, 117, 60, '2020-11-11 04:47:27', '2020-11-11 04:47:27'),
(50, 124, 104, '2020-11-18 04:44:50', '2020-11-18 04:44:50'),
(51, 155, 57, '2020-11-29 06:22:58', '2020-11-29 06:22:58'),
(52, 172, 119, '2020-12-07 11:18:24', '2020-12-07 11:18:24'),
(53, 175, 111, '2020-12-08 01:10:47', '2020-12-08 01:10:47'),
(54, 184, 118, '2020-12-10 14:18:49', '2020-12-10 14:18:49'),
(55, 185, 107, '2020-12-11 03:22:58', '2020-12-11 03:22:58'),
(58, 77, 65, '2021-05-28 10:37:05', '2021-05-28 10:37:05'),
(63, 8, 111, '2021-09-28 10:29:31', '2021-09-28 10:29:31'),
(65, 8, 121, '2021-09-28 15:46:30', '2021-09-28 15:46:30'),
(66, 8, 119, '2021-09-28 15:48:46', '2021-09-28 15:48:46'),
(67, 8, 78, '2021-09-28 15:49:06', '2021-09-28 15:49:06'),
(68, 8, 103, '2021-09-28 15:49:52', '2021-09-28 15:49:52'),
(69, 8, 71, '2021-09-28 15:50:04', '2021-09-28 15:50:04'),
(70, 8, 101, '2021-09-28 16:05:23', '2021-09-28 16:05:23'),
(71, 3, 105, '2021-09-29 05:12:42', '2021-09-29 05:12:42'),
(72, 8, 137, '2021-09-29 09:06:34', '2021-09-29 09:06:34'),
(73, 8, 107, '2021-09-29 09:06:44', '2021-09-29 09:06:44'),
(74, 245, 105, '2021-12-06 12:15:03', '2021-12-06 12:15:03'),
(75, 3, 89, '2021-12-06 18:47:39', '2021-12-06 18:47:39'),
(78, 287, 165, '2022-03-23 21:28:04', '2022-03-23 21:28:04'),
(79, 17, 19, '2022-03-24 08:38:53', '2022-03-24 08:38:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_configs`
--
ALTER TABLE `affiliate_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_options`
--
ALTER TABLE `affiliate_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_payments`
--
ALTER TABLE `affiliate_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `becomeavendor`
--
ALTER TABLE `becomeavendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_points`
--
ALTER TABLE `club_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_point_details`
--
ALTER TABLE `club_point_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_content`
--
ALTER TABLE `login_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_packages`
--
ALTER TABLE `seller_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `affiliate_configs`
--
ALTER TABLE `affiliate_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_options`
--
ALTER TABLE `affiliate_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affiliate_payments`
--
ALTER TABLE `affiliate_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `becomeavendor`
--
ALTER TABLE `becomeavendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `club_points`
--
ALTER TABLE `club_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `club_point_details`
--
ALTER TABLE `club_point_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_content`
--
ALTER TABLE `login_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `seller_packages`
--
ALTER TABLE `seller_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
