-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2024 at 04:59 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u172417614_lovina`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Sea Breeze Bungalow', 'seabreezebungalow11@gmail.com', '$2y$10$sdVWjmxZf1jkhfsp7ZpDeuyVuXJutmUe2TEw13kbIW6WJV4kRX1gm', 'admin.jpg', '', NULL, '2024-02-06 12:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Toiletries', '2022-07-01 05:33:29', '2022-07-01 05:33:29'),
(6, 'Welcome Drink', '2022-07-01 05:33:52', '2023-12-16 01:32:00'),
(7, 'Free WiFi', '2022-07-01 05:34:00', '2022-07-01 05:34:00'),
(9, 'Air Conditioner', '2023-12-16 01:32:50', '2023-12-16 01:32:50'),
(10, 'Lampu', '2024-05-08 13:04:55', '2024-05-08 13:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` text NOT NULL,
  `booking_end_date` date DEFAULT NULL,
  `order_no` text NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'Success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booking_date`, `booking_end_date`, `order_no`, `room_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '10/06/2024', '2024-06-11', '1718010929', 1, 'expired', '2024-06-10 11:09:29', '2024-06-10 16:15:29'),
(2, '10/06/2024', '2024-06-11', '1718014206', 8, 'expired', '2024-06-10 17:10:06', '2024-06-10 17:10:06'),
(3, '10/06/2024', '2024-06-11', '1718015855', 1, 'expired', '2024-06-10 17:37:35', '2024-06-10 17:37:35'),
(4, '10/06/2024', '2024-06-12', '1718031805', 6, 'expired', '2024-06-10 22:03:25', '2024-06-10 22:03:25'),
(5, '10/06/2024', '2024-06-11', '1718031853', 8, 'expired', '2024-06-10 22:04:13', '2024-06-10 22:04:13'),
(6, '12/06/2024', '2024-06-13', '1718147596', 1, 'expired', '2024-06-12 06:13:16', '2024-06-12 06:13:16'),
(7, '12/06/2024', '2024-06-13', '1718152928', 8, 'expired', '2024-06-12 07:42:08', '2024-06-12 07:42:08'),
(8, '12/06/2024', '2024-06-13', '1718163965', 6, 'expired', '2024-06-12 10:46:05', '2024-06-12 10:46:05'),
(9, '12/06/2024', '2024-06-13', '1718182611', 6, 'expired', '2024-06-12 15:56:51', '2024-06-12 15:56:51'),
(10, '12/06/2024', '2024-06-13', '1718182741', 6, 'expired', '2024-06-12 15:59:01', '2024-06-12 15:59:01'),
(11, '12/06/2024', '2024-06-13', '1718195760', 6, 'expired', '2024-06-12 19:36:00', '2024-06-12 19:36:00'),
(12, '12/06/2024', '2024-06-13', '1718196034', 6, 'expired', '2024-06-12 19:40:34', '2024-06-12 19:40:34'),
(13, '12/06/2024', '2024-06-13', '1718196467', 6, 'expired', '2024-06-12 19:47:47', '2024-06-12 19:47:47'),
(14, '12/06/2024', '2024-06-13', '1718196558', 1, 'expired', '2024-06-12 19:49:18', '2024-06-12 19:49:18'),
(15, '12/06/2024', '2024-06-13', '1718196558', 1, 'expired', '2024-06-12 19:49:18', '2024-06-12 19:49:18'),
(16, '16/06/2024', '2024-06-16', '1718197673', 8, 'expired', '2024-06-12 20:07:53', '2024-06-12 20:07:53'),
(17, '14/06/2024', '2024-06-15', '1718197673', 8, 'expired', '2024-06-12 20:07:53', '2024-06-12 20:07:53'),
(18, '19/06/2024', '2024-06-20', '1718198513', 6, 'expired', '2024-06-12 20:21:53', '2024-06-12 20:21:53'),
(19, '19/06/2024', '2024-06-20', '1718198513', 6, 'expired', '2024-06-12 20:21:53', '2024-06-12 20:21:53'),
(20, '19/06/2024', '2024-06-20', '1718198513', 6, 'expired', '2024-06-12 20:21:53', '2024-06-12 20:21:53'),
(21, '19/06/2024', '2024-06-20', '1718198513', 6, 'expired', '2024-06-12 20:21:53', '2024-06-12 20:21:53'),
(22, '13/06/2024', '2024-06-14', '1718258858', 1, 'expired', '2024-06-13 13:07:38', '2024-06-13 13:07:38'),
(23, '14/06/2024', '2024-06-19', '1718262888', 6, 'expired', '2024-06-13 14:14:48', '2024-06-13 14:14:48'),
(24, '30/06/2024', '2024-07-01', '1718263532', 6, 'expired', '2024-06-13 14:25:32', '2024-06-13 14:25:32'),
(25, '23/06/2024', '2024-06-24', '1718264319', 1, 'expired', '2024-06-13 14:38:39', '2024-06-13 14:38:39'),
(26, '14/06/2024', '2024-06-15', '1718264703', 1, 'expired', '2024-06-13 14:45:03', '2024-06-13 14:45:03'),
(27, '29/06/2024', '2024-06-30', '1718264864', 6, 'expired', '2024-06-13 14:47:44', '2024-06-13 14:47:44'),
(28, '15/07/2024', '2024-07-16', '1718265085', 6, 'expired', '2024-06-13 14:51:25', '2024-06-13 14:51:25'),
(29, '28/07/2024', '2024-07-29', '1718265355', 8, 'expired', '2024-06-13 14:55:55', '2024-06-13 14:55:55'),
(30, '23/07/2024', '2024-07-24', '1718265496', 8, 'expired', '2024-06-13 14:58:16', '2024-06-13 14:58:16'),
(31, '14/06/2024', '2024-06-15', '1718265880', 6, 'expired', '2024-06-13 15:04:40', '2024-06-13 15:04:40'),
(32, '14/06/2024', '2024-06-15', '1718266055', 8, 'expired', '2024-06-13 16:07:35', '2024-06-13 16:07:35'),
(33, '13/06/2024', '2024-06-14', '1718268641', 1, 'expired', '2024-06-13 16:50:41', '2024-06-13 16:50:41'),
(34, '20/06/2024', '2024-06-21', '1718853613', 1, 'expired', '2024-06-20 11:20:13', '2024-06-20 11:20:13'),
(35, '05/07/2024', '2024-07-07', '1720149514', 1, 'expired', '2024-07-05 11:18:34', '2024-07-05 11:18:34'),
(36, '06/07/2024', '2024-07-07', '1720149514', 1, 'expired', '2024-07-05 11:18:34', '2024-07-05 11:18:34'),
(37, '09/07/2024', '2024-07-10', '1720504876', 1, 'expired', '2024-07-09 14:01:16', '2024-07-09 14:01:16'),
(38, '09/07/2024', '2024-07-10', '1720504957', 1, 'expired', '2024-07-09 14:02:37', '2024-07-09 14:02:37'),
(40, '15/07/2024', '2024-07-16', '1721052977', 1, 'expired', '2024-07-15 22:16:17', '2024-07-15 22:32:40'),
(41, '16/07/2024', '2024-07-17', '1721093006', 1, 'expired', '2024-07-16 09:23:26', '2024-07-16 09:24:41'),
(42, '16/07/2024', '2024-07-17', '1721093006', 1, 'expired', '2024-07-16 09:23:26', '2024-07-16 09:24:41'),
(43, '16/07/2024', '2024-07-17', '1721093006', 1, 'expired', '2024-07-16 09:23:26', '2024-07-16 09:24:41'),
(44, '16/07/2024', '2024-07-17', '1721093182', 1, 'expired', '2024-07-16 09:26:22', '2024-07-16 09:27:55'),
(45, '17/07/2024', '2024-07-18', '1721149357', 1, 'expired', '2024-07-17 01:02:37', '2024-07-17 01:02:37'),
(46, '17/07/2024', '2024-07-18', '1721149357', 1, 'expired', '2024-07-17 01:02:37', '2024-07-17 01:02:37'),
(47, '18/07/2024', '2024-07-19', '1721273229', 1, 'expired', '2024-07-18 11:27:09', '2024-07-18 11:28:31'),
(48, '22/07/2024', '2024-07-23', '1721630521', 1, 'expired', '2024-07-22 14:42:01', '2024-07-22 14:43:08'),
(49, '23/07/2024', '2024-07-24', '1721708539', 1, 'expired', '2024-07-23 12:22:19', '2024-07-23 12:22:19'),
(50, '23/07/2024', '2024-07-24', '1721723182', 1, 'expired', '2024-07-23 16:26:22', '2024-07-23 16:26:22'),
(51, '23/07/2024', '2024-07-24', '1721723436', 1, 'expired', '2024-07-23 16:30:36', '2024-07-23 16:30:36'),
(52, '23/07/2024', '2024-07-24', '1721723616', 8, 'expired', '2024-07-23 16:33:36', '2024-07-23 16:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `photo`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pangestu', 'hartawanpangestu02@gmail.com', '$2y$10$oHYX84JMdnOUobLtL8Kk4.oN10pZZix7nZudhm9AlxvXNwU3Nak6a', '083114171960', 'INDONESIA', 'JL. GATOTKACA', 'BALI', 'SINGARAJA', '81116', '1701099262.png', '', 1, '2022-07-04 20:42:25', '2024-02-26 13:48:15'),
(4, 'mulia', 'figomulia3@gmail.com', '$2y$10$DBSgzv1D0UtBoXiKVOUD5.hZGR6vQGq6VUnE1vxVrebKJt.1B.FVO', '08123456789', 'Indonesia', 'Jalan Jarak jauh', 'BALI', 'Denpasar', '81119', '1701093426.png', '4aa4c15597e157ffbea676e1473a7040572b13772c82cd1b982961c80adcf01f', 1, '2023-11-26 05:21:22', '2024-05-27 20:14:11'),
(5, 'figo', 'ryanfigo12@gmail.com', '$2y$10$aB7bGSYVekZ/EmFM598/0eBYRGxwg8d3UFV8VBxzjF42a5.2A.tJW', NULL, NULL, NULL, NULL, NULL, NULL, '1702917055.jpg', '', 1, '2023-11-26 06:15:42', '2024-02-19 07:50:51'),
(6, 'Adiatna Sukmana', 'dyatna.id@gmail.com', '$2y$10$REakjpDTcEe9QrPSsTr7a..D2k0HMahqdKVvZfJLiXarbJn54DLkm', '083822623170', 'Indonesisa', 'Bandung', 'Bandung', 'Bandung', '122', '1702281659.jpg', '05a75f094f2379cf4eaecbd22a5054557a62e04a34772253857e650dc280a730', 1, '2023-12-05 07:55:17', '2023-12-11 00:00:59'),
(7, 'Nasrul Kurniawan', 'nasrulkurniawan@gmail.com', '$2y$10$J3reV9eFwaOIqOI6hLNR3uohKZY91CiFnYW37P0HUbZ7nbe6vUSDy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ee93354ed80eb1e4ca52e341e6b24016234770ea2e9f55c307dc1acf03743ee1', 1, '2023-12-18 15:20:12', '2024-02-26 14:31:22'),
(8, 'dico prasetya', 'dico11@gmail.com', '$2y$10$Hb6xT6Y9HeRWF1bjjtKW8ev9FH/RhlJfVbSX0SU838FT5.nXw8jKK', NULL, NULL, NULL, NULL, NULL, NULL, '1705988156.png', '068d4ce74dd68fc6e4b6c1f20a2bb0333d12e22e3705d075452884eb208747c1', 1, '2024-01-23 12:32:46', '2024-01-23 12:35:56'),
(9, 'mila', 'milameitriani@gmail.com', '$2y$10$cz1np3KHFoLsUPYixxX.I.Qw3chsEkRiWCXiyZ8.PSE0yJDv09wHq', NULL, NULL, NULL, NULL, NULL, NULL, '1710312109.jpg', '135abbdd1d95839ef046adc306d95c702eeeadce87753bc5186fdc689260cf99', 1, '2024-02-03 13:59:01', '2024-03-13 13:41:49'),
(10, 'Hartawan pangestu', 'hartaboy07@gmail.com', '$2y$10$JnHmlCtB6HBq6l2QfLSyXuSrCNmYLWrjOCyz6hr7vXzept7ZOD/sW', NULL, NULL, NULL, NULL, NULL, NULL, '1708158392.jpg', 'e6e8d7c096bd410bcec617d63fd4379fd295c5a82acbddc99089cb7c3e98eb85', 1, '2024-02-03 14:00:33', '2024-03-03 20:06:13'),
(11, 'ananta', 'ryanfigo13@gmail.com', '$2y$10$eRPG6wEd9hstA1pRl/1kB.t20OhDiaByevwhZzbGJKKopG.omNJyq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ef915ce6e588c774adad37995b2f2e6b6287c1b171a991aa85180c9143c0a521', 0, '2024-04-30 08:12:38', '2024-04-30 08:12:38'),
(12, 'cornelia', 'cornelia55@gmail.com', '$2y$10$q.0fieJ2DcrolR2V0orAQOgQmxf5yj4FIfJ6k5Po.3kM4Vyn3DPti', NULL, NULL, NULL, NULL, NULL, NULL, '1715126073.jpg', 'c73860fddbee8cfe4d02bde0538d5d6d31a4307251bda5b45cfca3a4ffb2622a', 1, '2024-05-08 06:49:40', '2024-05-08 06:54:33'),
(14, 'Audrey Anderson', 'audreydancer100@gmail.com', '$2y$10$eQZ2iWxt9kwoVdBrKW3KruOYtMSnuAI7gkNo67U1YWJbCOGK9komS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2024-05-31 14:37:48', '2024-05-31 14:38:06'),
(15, 'User', 'user@gmail.com', '$2y$10$sV/fuLQa/ZxLiVVb5dR35.EMBL1Khk9dLt2BN4DzRgQdkcT7GXo3u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2b08e5a83442ce3144d6625e23d053aff36fa644980132547e0e8d6c5d0702ae', 1, '2024-06-08 22:03:56', '2024-06-08 22:03:56'),
(17, 'Pangestu', 'Pangestu2819@gmail.com', '$2y$10$TIVx2f7pGluonDIOrZlos.SeqzfwxPg4FBha5BsaUy9WnWN40BHFO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cc5a6f4098fb390d3864b3ba1cf29f516d965d7401803c19c106f5ff735f826c', 1, '2024-06-12 19:33:50', '2024-06-12 19:39:08'),
(18, 'Hartawan', 'hartawan@undiksha.ac.id', '$2y$10$qtvim5Lp37cT/y5OJ13Zduzuo0YZ2rcfU4BCWsKZpfq9JLG2PHzLS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25ed227324a867a599906975075e0aea0781c762a054991143aaba73b536d758', 1, '2024-06-12 19:36:44', '2024-06-12 19:38:59'),
(19, 'Astitimonyet', 'widiyantiastiti@gmail.com', '$2y$10$vINQQdVFuyUrcQE49SjFcu.19Em6OH.VFSNCF6VobsE5k2Ldmvb7q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a745b7473d91d089536d6d11e96f5374a37738a93a52cd99b830524498e221ad', 1, '2024-06-12 19:43:47', '2024-06-12 19:45:22'),
(20, 'ricardo', 'ricardo@gmail.com', '$2y$10$0qFG6LeCTk941Y6vnWizz.hUb5A/q6kLftNlgwMVbchCBqpr2hYDi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31a284cd748d76b1ae45606124d95b9df1c723d75b838e6c9abc5ddff54725a7', 1, '2024-06-12 19:47:20', '2024-06-12 19:47:40'),
(21, 'Milea', 'milea@gmail.com', '$2y$10$ybVbof7FR83cws5aLDUaUO.ddYvNRdTzOSWVml.QwhoOHIt8xZ9PG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abfb6a541752cea7f729b11698b617c47bdcb675312b3afa7c3f82ef630b939e', 1, '2024-06-13 14:09:15', '2024-06-13 14:11:33'),
(22, 'andi suartika', 'andi@gmail.com', '$2y$10$q4tck6jHFRBy9xnV3E2zSe.B4IASFYk3HbSiXGoOz0GCpe57K6qyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4534e26025b425db65d30ae5459fab367a9c36901a13e0a7d6cce4de64606ab3', 1, '2024-06-13 14:21:02', '2024-06-13 14:23:41'),
(23, 'andi suartika', 'andi.suartika26@gmail.com', '$2y$10$R6ZWTv4.fggjzAWVGN9e5OpuCmn54Rp3DY9oRIqKIS/908xGNuGiK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fdc153c15e6c5108a8940a924ebb0f78fdc907d807a0f28cbeb0e6e949000f89', 0, '2024-06-13 14:21:26', '2024-06-13 14:21:26'),
(24, 'Eva Priesnitz', 'eva.priesnitz@gmx.de', '$2y$10$k8iz5s0825DzVpNyztsa1ejJNaYI88IdxGndOExyFg1PMJF8xYtey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2024-06-23 01:35:58', '2024-06-23 01:36:18'),
(25, 'Victor Fanola', 'limaymanta.fidel@gmail.com', '$2y$10$TNSMG6VNKt0VQ5MPUyMJX.CJXBYPTuA2gMMv.zmfhTxHNj.AlCgrK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2024-07-05 11:15:04', '2024-07-05 11:16:19'),
(26, 'User', 'user@user.com', '$2y$10$NLFbRF.pnGdrSOIgBfu2ue2JjJf4mybe5okJUlkrsiZx8SvI2sbS6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60928284aaad67084e14f83726909b1b5db7cc531b6214f589533331fbde1c4b', 0, '2024-07-15 21:57:41', '2024-07-15 21:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Website Question 1', '<p>Lorem ipsum dolor sit amet, ut has quidam prodesset, eos sumo ipsum civibus ea, vel quas nusquam ei. Et sea doming quodsi audire. No vim ornatus scaevola disputando, qui stet ceteros ad. Ad his choro appetere mnesarchum, no duo accusata incorrupte, vel essent fabulas ut.</p><p>Ne nam soluta libris. Cu sea utamur adipiscing, convenire patrioque dignissim et nec. Accusam incorrupte vituperatoribus vix ad, ei clita omnium mentitum pro. Est ad duis perpetua recteque, in autem posidonium qui. Illum nulla dolor mea an.<br></p><p>Officiis disputationi ne pri, libris malorum eam id. Molestie principes vix no. Ut velit iudicabit inciderint mea. Malorum mediocrem deseruisse nam ne, tale imperdiet vim ut. Aperiri splendide cu eos, vis in alia laoreet aliquando.<br></p>', '2022-06-26 23:48:59', '2022-06-26 23:48:59'),
(2, 'Website Question 2', '<p>Lorem ipsum dolor sit amet, ut has quidam prodesset, eos sumo ipsum civibus ea, vel quas nusquam ei. Et sea doming quodsi audire. No vim ornatus scaevola disputando, qui stet ceteros ad. Ad his choro appetere mnesarchum, no duo accusata incorrupte, vel essent fabulas ut.</p><p>Ne nam soluta libris. Cu sea utamur adipiscing, convenire patrioque dignissim et nec. Accusam incorrupte vituperatoribus vix ad, ei clita omnium mentitum pro. Est ad duis perpetua recteque, in autem posidonium qui. Illum nulla dolor mea an.<br></p><p>Officiis disputationi ne pri, libris malorum eam id. Molestie principes vix no. Ut velit iudicabit inciderint mea. Malorum mediocrem deseruisse nam ne, tale imperdiet vim ut. Aperiri splendide cu eos, vis in alia laoreet aliquando.</p>', '2022-06-26 23:50:18', '2022-06-26 23:50:18'),
(3, 'Website Question 3', '<p>Lorem ipsum dolor sit amet, ut has quidam prodesset, eos sumo ipsum civibus ea, vel quas nusquam ei. Et sea doming quodsi audire. No vim ornatus scaevola disputando, qui stet ceteros ad. Ad his choro appetere mnesarchum, no duo accusata incorrupte, vel essent fabulas ut.</p><p>Ne nam soluta libris. Cu sea utamur adipiscing, convenire patrioque dignissim et nec. Accusam incorrupte vituperatoribus vix ad, ei clita omnium mentitum pro. Est ad duis perpetua recteque, in autem posidonium qui. Illum nulla dolor mea an.<br></p><p>Officiis disputationi ne pri, libris malorum eam id. Molestie principes vix no. Ut velit iudicabit inciderint mea. Malorum mediocrem deseruisse nam ne, tale imperdiet vim ut. Aperiri splendide cu eos, vis in alia laoreet aliquando.</p>', '2022-06-26 23:50:33', '2022-06-26 23:50:33'),
(4, 'Website Question 4', '<p>Lorem ipsum dolor sit amet, ut has quidam prodesset, eos sumo ipsum civibus ea, vel quas nusquam ei. Et sea doming quodsi audire. No vim ornatus scaevola disputando, qui stet ceteros ad. Ad his choro appetere mnesarchum, no duo accusata incorrupte, vel essent fabulas ut.</p><p>Ne nam soluta libris. Cu sea utamur adipiscing, convenire patrioque dignissim et nec. Accusam incorrupte vituperatoribus vix ad, ei clita omnium mentitum pro. Est ad duis perpetua recteque, in autem posidonium qui. Illum nulla dolor mea an.<br></p><p>Officiis disputationi ne pri, libris malorum eam id. Molestie principes vix no. Ut velit iudicabit inciderint mea. Malorum mediocrem deseruisse nam ne, tale imperdiet vim ut. Aperiri splendide cu eos, vis in alia laoreet aliquando.</p>', '2022-06-26 23:50:48', '2022-06-26 23:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `heading` text NOT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, '1704900656.png', '24 Hour Receptionist', 'We provide endless comfort at Seabreeze Bungalow with 24-hour receptionist', '2022-06-25 20:46:45', '2024-01-13 16:48:54'),
(2, '1704900913.png', 'Free Wifi', 'Enjoy fast and stable internet access allowing you to stay connected', '2022-06-25 20:48:09', '2024-01-10 14:35:13'),
(3, '1704901117.png', 'Swimming Pool', 'The cool water and natural panorama tempt you to experience the beauty of our bungalows on Lovina beach', '2022-06-25 20:48:35', '2024-01-10 14:38:37'),
(4, '1704901294.png', 'Parking Area', 'Our parking area provides convenience for guests who bring vehicles while staying in our bungalows', '2022-06-25 20:49:00', '2024-01-10 14:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(6, '2022_06_24_093653_create_slides_table', 2),
(7, '2022_06_26_021258_create_features_table', 3),
(8, '2022_06_26_033305_create_testimonials_table', 4),
(9, '2022_06_26_051426_create_posts_table', 5),
(10, '2022_06_26_135533_create_photos_table', 6),
(11, '2022_06_27_021908_create_videos_table', 7),
(12, '2022_06_27_050408_create_faqs_table', 8),
(13, '2022_06_27_104626_create_pages_table', 9),
(14, '2022_06_29_115954_create_subscribers_table', 10),
(15, '2022_07_01_104958_create_amenities_table', 11),
(16, '2022_07_02_005301_create_rooms_table', 12),
(17, '2022_07_02_010035_create_room_photos_table', 13),
(18, '2022_07_04_065843_create_customers_table', 14),
(19, '2022_07_13_034131_create_orders_table', 15),
(20, '2022_07_13_034641_create_order_details_table', 16),
(21, '2022_08_07_135954_create_booked_rooms_table', 17),
(22, '2022_08_08_120610_create_settings_table', 18),
(23, '2024_01_20_005455_add_panorama_to_rooms_tables', 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_no` text NOT NULL,
  `transaction_id` text NOT NULL,
  `payment_method` text NOT NULL,
  `snap_token` text DEFAULT NULL,
  `bukti_pembayaran` text DEFAULT NULL,
  `card_last_digit` text DEFAULT NULL,
  `paid_amount` text NOT NULL,
  `booking_date` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `transaction_id`, `payment_method`, `snap_token`, `bukti_pembayaran`, `card_last_digit`, `paid_amount`, `booking_date`, `status`, `created_at`, `updated_at`, `reviewed`) VALUES
(7, 12, '1718152928', '1718152928', 'Bank Transfer', '', 'bukti_pembayaran/PhhaWyWsLZFvuo3DkhvzLxQUK2d1vtjcJ4rjwfAL.jpg', '', '450000', '12/06/2024', 'Completed', '2024-06-12 07:42:08', '2024-06-12 08:01:06', NULL),
(31, 1, '1720504876', '1720504876', 'Bank Transfer', '', 'bukti_pembayaran/AKYf7O8YP3RZi0hb5fSxzDqswxOWQXZhGu8BSIj8.jpg', '', '350000', '09/07/2024', 'Completed', '2024-07-09 14:01:16', '2024-07-09 14:16:45', NULL),
(32, 1, '1720504957', '1720504957', 'Bank Transfer', '', 'bukti_pembayaran/9svDftG3xMjm4m3qIMHHVLBmFQu3RMwwIUrgIljK.jpg', '', '350000', '09/07/2024', 'Completed', '2024-07-09 14:02:37', '2024-07-09 14:15:32', NULL),
(34, 6, '1721052977', '1721052977', 'Bank Transfer', '', 'bukti_pembayaran/O5QQvarAzP1Y5A5SqmQPkKW6q4PbYjxLCBBQZr86.jpg', '', '350000', '15/07/2024', 'Cancel', '2024-07-15 22:16:17', '2024-07-15 22:32:40', NULL),
(35, 1, '1721093006', '1721093006', 'Bank Transfer', '', 'bukti_pembayaran/kix8oqhD7FTWf6mwtvSL9tFjx3quwFlkpBp8XLEp.jpg', '', '1050000', '16/07/2024', 'Completed', '2024-07-16 09:23:26', '2024-07-16 09:24:41', NULL),
(36, 1, '1721093182', '1721093182', 'Bank Transfer', '', 'bukti_pembayaran/dcpu4xjxbS0IVhSt52HLAQXLk7DZy1WtkTNb0ljD.jpg', '', '350000', '16/07/2024', 'Completed', '2024-07-16 09:26:22', '2024-07-16 09:27:55', NULL),
(38, 1, '1721273229', '1721273229', 'Bank Transfer', '', 'bukti_pembayaran/vopPzlrMtNDW6Hj9OxXFiBeCmoIsGNPVE3OtdZ9P.jpg', '', '350000', '18/07/2024', 'Cancel', '2024-07-18 11:27:09', '2024-07-18 11:28:31', NULL),
(39, 1, '1721630521', '1721630521', 'Bank Transfer', '', 'bukti_pembayaran/VhMJcHokhd439OGmIZsnpKGYoaQF7p1coejCJOxI.jpg', '', '350000', '22/07/2024', 'Cancel', '2024-07-22 14:42:01', '2024-07-22 14:43:08', NULL),
(42, 1, '1721723436', '1721723436', 'Bank Transfer', '', 'bukti_pembayaran/f20A9nGREIh0cr7NVYvwU1kUBP5FoNQbIUR4oUTW.jpg', '', '350000', '23/07/2024', 'Completed', '2024-07-23 16:30:36', '2024-07-23 16:31:44', NULL),
(43, 1, '1721723616', '1721723616', 'Midtrans', '6b231409-1605-4a64-898d-d67561f7e27c', NULL, '', '450000', '23/07/2024', 'Cancelled', '2024-07-23 16:33:36', '2024-07-23 16:50:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `order_no` text NOT NULL,
  `checkin_date` text NOT NULL,
  `checkout_date` text NOT NULL,
  `adult` text NOT NULL,
  `children` text NOT NULL,
  `extra_bed` int(11) DEFAULT NULL,
  `subtotal` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `order_no`, `checkin_date`, `checkout_date`, `adult`, `children`, `extra_bed`, `subtotal`, `created_at`, `updated_at`) VALUES
(7, 7, 8, '1718152928', '12/06/2024', '13/06/2024', '2', '0', NULL, '450000', '2024-06-12 07:42:08', '2024-06-12 07:42:08'),
(36, 31, 1, '1720504876', '09/07/2024', '10/07/2024', '1', '0', NULL, '350000', '2024-07-09 14:01:16', '2024-07-09 14:01:16'),
(37, 32, 1, '1720504957', '09/07/2024', '10/07/2024', '1', '0', NULL, '350000', '2024-07-09 14:02:37', '2024-07-09 14:02:37'),
(39, 34, 1, '1721052977', '15/07/2024', '16/07/2024', '1', '0', NULL, '350000', '2024-07-15 22:16:17', '2024-07-15 22:16:17'),
(40, 35, 1, '1721093006', '16/07/2024', '17/07/2024', '1', '0', NULL, '350000', '2024-07-16 09:23:26', '2024-07-16 09:23:26'),
(41, 35, 1, '1721093006', '16/07/2024', '17/07/2024', '1', '0', NULL, '350000', '2024-07-16 09:23:26', '2024-07-16 09:23:26'),
(42, 35, 1, '1721093006', '16/07/2024', '17/07/2024', '1', '0', NULL, '350000', '2024-07-16 09:23:26', '2024-07-16 09:23:26'),
(43, 36, 1, '1721093182', '16/07/2024', '17/07/2024', '1', '0', NULL, '350000', '2024-07-16 09:26:22', '2024-07-16 09:26:22'),
(46, 38, 1, '1721273229', '18/07/2024', '19/07/2024', '1', '0', NULL, '350000', '2024-07-18 11:27:09', '2024-07-18 11:27:09'),
(47, 39, 1, '1721630521', '22/07/2024', '23/07/2024', '1', '0', NULL, '350000', '2024-07-22 14:42:01', '2024-07-22 14:42:01'),
(50, 42, 1, '1721723436', '23/07/2024', '24/07/2024', '1', '0', NULL, '350000', '2024-07-23 16:30:36', '2024-07-23 16:30:36'),
(51, 43, 8, '1721723616', '23/07/2024', '24/07/2024', '1', '0', NULL, '450000', '2024-07-23 16:33:36', '2024-07-23 16:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_heading` text NOT NULL,
  `about_content` text NOT NULL,
  `about_status` int(11) NOT NULL,
  `terms_heading` text NOT NULL,
  `terms_content` text NOT NULL,
  `terms_status` int(11) NOT NULL,
  `privacy_heading` text NOT NULL,
  `privacy_content` text NOT NULL,
  `privacy_status` int(11) NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_map` text DEFAULT NULL,
  `contact_status` int(11) NOT NULL,
  `photo_gallery_heading` text NOT NULL,
  `photo_gallery_status` int(11) NOT NULL,
  `video_gallery_heading` text NOT NULL,
  `video_gallery_status` int(11) NOT NULL,
  `faq_heading` text NOT NULL,
  `faq_status` int(11) NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_status` int(11) NOT NULL,
  `room_heading` text NOT NULL,
  `cart_heading` text NOT NULL,
  `cart_status` int(11) NOT NULL,
  `checkout_heading` text NOT NULL,
  `checkout_status` int(11) NOT NULL,
  `payment_heading` text NOT NULL,
  `signup_heading` text NOT NULL,
  `signup_status` int(11) NOT NULL,
  `signin_heading` text NOT NULL,
  `signin_status` int(11) NOT NULL,
  `forget_password_heading` text NOT NULL,
  `reset_password_heading` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_heading`, `about_content`, `about_status`, `terms_heading`, `terms_content`, `terms_status`, `privacy_heading`, `privacy_content`, `privacy_status`, `contact_heading`, `contact_map`, `contact_status`, `photo_gallery_heading`, `photo_gallery_status`, `video_gallery_heading`, `video_gallery_status`, `faq_heading`, `faq_status`, `blog_heading`, `blog_status`, `room_heading`, `cart_heading`, `cart_status`, `checkout_heading`, `checkout_status`, `payment_heading`, `signup_heading`, `signup_status`, `signin_heading`, `signin_status`, `forget_password_heading`, `reset_password_heading`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<ul><li><span style=\"text-align: var(--bs-body-text-align);\">Design and architecture is one of the factors that determine your comfort in a hotel. Seabreeze Bungalow Lovina provides a place to stay that is not only comfortable to rest, but also a beautiful design that spoils your eyes.</span></li><li>This hotel is the perfect choice if you are looking for a quiet vacation away from the crowds.</li><li><span style=\"text-align: var(--bs-body-text-align);\">Satisfying service and adequate hotel facilities will make you comfortable at Seabreeze Bungalow Lovina.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">There is a swimming pool for you to relax alone or with friends and family.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">The reception is available 24 hours a day to assist you with check-in, check-out and other needs. Do not hesitate to contact the receptionist, we are ready to serve you.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">There is a restaurant that serves delicious Sea Breeze Bungalow Lovina menu exclusively for you.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">WiFi is available throughout the public areas of the property to help you stay connected with family and friends.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">Seabreeze Bungalow Lovina is a hotel with great comfort and excellent service according to most hotel\'s guests.</span><br></li><li><span style=\"text-align: var(--bs-body-text-align);\">With adequate facilities, Seabreeze Bungalow Lovina is the right choice for your stay.</span><br></li></ul>', 1, 'Terms and Conditions', '<div><span style=\"text-align: var(--bs-body-text-align);\"><b>1. Check-in at 02:00 PM</b></span><br></div><div>&nbsp; &nbsp;- Guests are expected to check-in at 02:00 PM.</div><div><br></div><div><b>2. Check-out at 12:00 PM</b></div><div>&nbsp; &nbsp;- The check-out process should be completed by 12:00 PM.</div><div><br></div><div><b>3. Government Tax and Service 15%</b></div><div>&nbsp; &nbsp;- The room rates listed include a 15% government tax and service charge.</div><div><br></div><div><b>4. All Rates Include Breakfast</b></div><div>&nbsp; &nbsp;- Every room rate provided includes breakfast.</div><div><br></div><div><b>5. All Rates are Subject to Change Without Prior Notice</b></div><div>&nbsp; &nbsp;- The listed rates are subject to change without prior notice.</div>', 1, 'Privacy Policy', '<div><b>Privacy Policy</b></div><div>At Seabreeze bungalow, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use and protect your data.</div><div><br></div><div><b>Information We Collect</b></div><div>We may collect various types of information, including name, contact information, payment information, and preferences, to provide our services and improve your experience during your stay.</div><div><br></div><div><b>Use of Information</b></div><div>The information collected is used for check-in procedures, processing payments, sending reservation confirmations, providing customized services, and improving our offerings. Your data is not shared with third parties for marketing purposes without your consent.</div><div><br></div><div><b>Data Security</b></div><div>We have implemented security measures to protect your personal information from unauthorized access or disclosure. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.</div><div><br></div><div><b>Changes to Privacy Policy</b></div><div>We reserve the right to update or change our Privacy Policy periodically. Any changes will be effective immediately when we post the updated Privacy Policy on our website.</div><div><br></div><div><b>Contact Information</b></div><div>If you have any questions or concerns about our Privacy Policy or our handling of your personal information, please contact us on (0362) 41138</div>', 1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26361688.302253906!2d-113.76378198869888!3d36.23999124494682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1656378870953!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 'Photo Gallery', 1, 'Video Gallery', 1, 'FAQ', 1, 'Lovina Tour and Tourist Activities', 1, 'Room', 'Cart', 1, 'Billing', 1, 'Payment', 'Sign Up', 1, 'Sign In', 1, 'Forget Password', 'Reset Password', NULL, '2024-07-21 18:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(1, '1702921736.jpg', NULL, '2022-06-26 08:17:41', '2023-12-18 17:48:56'),
(2, '1702921767.jpg', NULL, '2022-06-26 08:18:11', '2023-12-18 17:49:27'),
(3, '1702921790.jpg', NULL, '2022-06-26 08:18:43', '2023-12-18 17:49:50'),
(4, '1702921808.jpg', NULL, '2022-06-26 08:18:53', '2023-12-18 17:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `heading` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `total_view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `photo`, `heading`, `short_content`, `content`, `total_view`, `created_at`, `updated_at`) VALUES
(1, '1706086049.jpg', 'Lovina Transport And Tourist Activities Service', 'The services we offer TRANSPORT (DROP TO OR PICK UP FROM), Lovina Dolphin Watching, Menjangan island activity, RENTAL, TOUR And Fast Boat', '<div><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: bolder; text-align: var(--bs-body-text-align);\">ONE WAY TRANSPORT (max 4 Persons)&nbsp;</span><br></div><div><span style=\"font-weight: bolder; text-align: var(--bs-body-text-align); font-size: 18px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif;\"><br></span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700; text-align: var(--bs-body-text-align);\">⇄ UBUD :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 450.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ KUTA :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 550.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ SANUR :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 550.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ AIRPORT :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 550.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ AMED :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 450.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ CANDIDASA :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 550.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ PADANG BAI :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 550.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ TULAMBEN :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 400.000</span></div><div><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><span style=\"font-size: 18px;\"><span style=\"font-weight: bolder;\">LOVINA&nbsp;</span></span></font><span style=\"text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: 700;\">⇄ PEMUTERAN :&nbsp;</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\">IDR 350.000</span><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: -webkit-center;\"><br></span></div><div><br></div><div><span style=\"box-sizing: inherit; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: var(--bs-body-text-align); max-width: unset; text-decoration-line: underline;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Lovina Dolphin Watching</span></span><span style=\"box-sizing: inherit; color: var(--color-text); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: var(--bs-body-text-align); max-width: unset;\">&nbsp;</span><span style=\"box-sizing: inherit; color: var(--color-text); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: var(--bs-body-text-align); font-weight: bolder; max-width: unset;\">:</span></div><div><span style=\"text-align: var(--bs-body-text-align);\">Dolphin watching (100 k/ person, sharing with 6 persons max)</span></div><div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Snorkeling lovina (100k/ person,sharing with 6 persons max)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Swimming with dolphin (150k/ person,&nbsp; private boat –&nbsp; 3 persons minimum)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Special Trip , swimming with dolphin &amp; snorkeling ( 250k/person,private boat –&nbsp; 2 persons minimum)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">All activity are include : guide, equipment and entrance ticket</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Departure time 06.00 am and 08.00 am</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; max-width: none;\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">Menjangan island activity</span>&nbsp;:</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Snorkeling (550k/ person)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Diving open water (800 k/person)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Intro dive ( 900 k/ person)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">All activity are include, transport, lunch, equipment, entrance ticket, and guide.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Departure time 08.30 am</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset; color: var(--color-text); text-decoration-line: underline;\">RENTAL</span><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">:</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"><span style=\"box-sizing: inherit; max-width: unset;\">Motor Bike (IDR 70.000/day )</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"><span style=\"box-sizing: inherit; max-width: unset;\">Push Bike (IDR 40.000/day )</span></p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; text-align: var(--bs-body-text-align); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; font-weight: bolder; max-width: unset;\">ONE DAY TOUR (8 HOURS)&nbsp;</span><span style=\"font-weight: bolder;\">&nbsp;</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">LOVINA TOUR</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">( Gitgit Waterfall, Monkey forest, Lake Bratan, Fruits and Flower Market, Lake Buyan and Tamblingan, Munduk Village, Rice Terace, Hotspring, and Budhis Temple) { IDR 550.000/car,&nbsp; max 6 persons}</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; color: rgb(68, 68, 68); font-family: var(--font-headings, &quot;PT Serif&quot;, Times, sans-serif); font-size: 0.83333rem; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"><span style=\"box-sizing: inherit; max-width: unset;\">KINTAMANI TOUR&nbsp;</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">( Beji Temple, Jagaraga Temple, Batur Temple,&nbsp; Vulcano and&nbsp; Lake Batur view) { IDR 550.000/car, max 6 persons}</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">TREKING</span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">&nbsp;TOUR</span></span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">&nbsp;:</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Volcano Treeking Tour</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Jungle Treeking</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Rice Padis and Lake view Treeking</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; color: rgb(68, 68, 68); font-family: var(--font-headings, &quot;PT Serif&quot;, Times, sans-serif); font-size: 0.83333rem; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">JUNGLE &nbsp;TREKKING TOUR</span>&nbsp;</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">National Park, most beautiful coral reef for snorkeling at menjangan Island or trekking in the jungle. Pulaki Temple, set&nbsp; into the base of a rugged cliff, overlokking&nbsp; the sea and home of energetic monkeys. Banjar Hotspring, natural hot spring set in tasteful blend of jungle and garden. You can swim and get a message. Brahma Wihara , Buddhist monastery in Bali. Quiet&nbsp; place with a view down to ocean.</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">AIR SANIH TOUR (max 6 hours, IDR 450.000)</span></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Beji Temple, irrigation temple, dedicated to “Dewi Sri” the rice goodness. Jagaraga Temple, the temple with reliefs of Europans carved in the front wall. Maduwe Karang Temple, with it’s famous relief of a Dutch man riding a bicycle. Air Sanih, natural swimming pool with cool spring water.</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">HOTSPRING TOUR (max 3 hours, IDR 300.000</span>)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Brahma Wihara Asrama,&nbsp; Buddhist monastery in Bali. Quiet&nbsp; place with a view down to ocean.Banjar Hotspring, natural hot spring set in tasteful blend of jungle and garden. You can swim and get a massage.</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px;\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; font-family: var(--font-headings, &quot;PT Serif&quot;, Times, sans-serif); clear: both; font-size: 1.2rem;\"><img data-attachment-id=\"44\" data-permalink=\"https://kadektravel.wordpress.com/budhistemple-3/\" data-orig-file=\"https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg\" data-orig-size=\"640,480\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;}\" data-image-title=\"budhistemple\" data-image-description=\"\" data-image-caption=\"\" data-medium-file=\"https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg?w=300\" data-large-file=\"https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg?w=640\" loading=\"lazy\" class=\"alignnone size-full wp-image-44\" src=\"https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg?w=750\" alt=\"budhistemple\" srcset=\"https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg 640w, https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg?w=150&amp;h=113 150w, https://kadektravel.files.wordpress.com/2012/04/budhistemple2.jpg?w=300&amp;h=225 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none;\"></p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px); color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px;\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Sunset Tour</span>&nbsp;(<span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">Gitgit Waterfall, Lake Bratan, Taman Ayun Temple, See Sunset at Tanah Lot Temple.)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset; color: var(--color-text);\">Lake Trekking Tour&nbsp;</span><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">(</span><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">Lake view, Coffee Plantation, Bird Forest.)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Mu</span></span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset; color: var(--color-text);\">nduk Trekking Tour (</span><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">Special rice paddies trekking)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset; color: var(--color-text);\">Batur Mountain Trekking (</span><span style=\"box-sizing: inherit; max-width: unset; color: var(--color-text);\">Deep forest trekking/tropical forest)&nbsp;</span></p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">CITY TOUR</span>&nbsp;(max 3 hours, IDR 300.000)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">Singaraja around, Bank, Post office, Market, Shops, Shopping center, ex-dutch Harbor, Beratan Village, the village of silversmiths</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">VOLCANO BATUR SUNRISE</span><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\">&nbsp;TREKKING</span>&nbsp;(IDR 650.000/person, min 2 persons)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">VOLCANO Batur is the female counterpoint to Agung, Batur forms a crakter lake 11 km in deameter, shaped like a dish with the lake at the bottom, the cone of Batur rices dramactically out&nbsp; of the water the lake is one of Bali’s most scenic Sport and is best&nbsp; viewed. The price is included breakfast, guide and transport.</p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset; color: var(--color-text);\">FAST BOAT</span></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">GILI ISLAND (IDR 450.000<span style=\"box-sizing: inherit; max-width: unset; line-height: 1.7;\">/ person , min 2 persons, all price include return ticket&nbsp; for fast boat and transport pick up and drop around Bali such as Lovina, Kuta, Ubud and Sanur )</span></p><p style=\"box-sizing: inherit; margin: 32px auto; max-width: calc(750px); width: calc(100% - 64px);\"></p><ul></ul><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; overflow-wrap: break-word;\"><span style=\"box-sizing: inherit; max-width: unset; text-decoration-line: underline;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">REAL ESTATE&nbsp;</span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">AND</span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">&nbsp;AGENT&nbsp;</span></span><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">:</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">VILLA</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">HOTEL</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">HOUSE</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\">LAND</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.125; padding: 0px; -webkit-font-smoothing: antialiased; max-width: unset; clear: both;\"><br></p><div><span style=\"box-sizing: inherit; color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: center; max-width: unset;\"><span style=\"font-weight: bolder;\">WA :&nbsp; </span><a href=\"https://api.whatsapp.com/send/?phone=6281805442907&amp;text&amp;type=phone_number&amp;app_absent=0\" target=\"_blank\" style=\"\"><b>0</b></a></span><span style=\"text-align: var(--bs-body-text-align); font-size: 18px;\"><font color=\"#444444\" face=\"PT Sans, Arial, sans-serif\"><a href=\"https://api.whatsapp.com/send/?phone=6281805442907&amp;text&amp;type=phone_number&amp;app_absent=0\" target=\"_blank\"><b>81805442907</b></a></font></span></div><div><span style=\"color: rgb(68, 68, 68); font-family: &quot;PT Sans&quot;, Arial, sans-serif; font-size: 18px; text-align: center;\"><b>Email : </b><a href=\"http://kadektravel@yahoo.co.id\" target=\"_blank\" style=\"\"><b>kadektravel@yahoo.co.id</b></a></span><span style=\"text-align: var(--bs-body-text-align);\"><b><a href=\"http://kadektravel@yahoo.co.id\" target=\"_blank\">&nbsp;</a> &nbsp;&nbsp;</b></span></div></div>', 197, '2022-06-26 01:27:07', '2024-07-30 06:14:13'),
(7, '1706087354.jpg', 'Waterfalls', 'Gitgit waterfall tourist attraction offers the beauty of waterfalls, with the fresh natural mountain water with a natural forest environment this place is perfect for lovers of trekking tour.', '<p style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\"><span style=\"text-align: var(--bs-body-text-align); box-sizing: inherit; font-weight: bolder; max-width: unset;\">Gitgit waterfall</span><span style=\"text-align: var(--bs-body-text-align);\">&nbsp;tourist attraction offers the beauty of waterfalls, with the fresh natural mountain water with a natural forest environment. This place is perfect for lovers of trekking tour, with the field winding and up and down. You can also soak in here if you want. This waterfall is the highest waterfall in Bali. Located in the Village Gitgit, District Sukasada, Buleleng, Bali. From Singaraja town is 11 km towards the south, is 90 km from Denpasar. Has a height of 35 meters, offers beautiful very very beautiful and charming, weather was so cool. You can enjoy views of the fields, enjoying the birds singing, long walk from the parking area to the location</span></p><p style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\"><span style=\"text-align: var(--bs-body-text-align);\"><br></span></p><div class=\"tiled-gallery type-rectangular\" data-original-width=\"750\" data-carousel-extra=\"{&quot;blog_id&quot;:34454690,&quot;permalink&quot;:&quot;https:\\/\\/kadektravel.wordpress.com\\/gitgit-waterfall\\/&quot;,&quot;likes_blog_id&quot;:34454690}\" itemscope=\"\" itemtype=\"http://schema.org/ImageGallery\" style=\"box-sizing: inherit; max-width: none; clear: both; margin: 0px 0px 20px; overflow: hidden;\"><div class=\"gallery-row\" data-original-width=\"750\" data-original-height=\"530\" style=\"box-sizing: inherit; max-width: none; overflow: hidden; width: 718px; height: 507px;\"><div class=\"gallery-group images-1\" data-original-width=\"398\" data-original-height=\"530\" style=\"box-sizing: inherit; max-width: none; float: left; position: relative; width: 381px; height: 507px;\"><div class=\"tiled-gallery-item tiled-gallery-item-large\" itemprop=\"associatedMedia\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" style=\"box-sizing: inherit; max-width: none; float: left; margin: 0px; position: relative; width: inherit;\"><a href=\"https://kadektravel.wordpress.com/img-20200323-wa0025/\" border=\"0\" itemprop=\"url\" style=\"box-sizing: inherit; background: 0px 0px; color: inherit; cursor: pointer; max-width: unset; text-decoration-line: none; border: none; margin: 0px; padding: 0px; width: auto;\"><img class=\"\" data-attachment-id=\"360\" data-orig-file=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg\" data-orig-size=\"960,1280\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"IMG-20200323-WA0025.jpg\" data-image-description=\"\" data-medium-file=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=225\" data-large-file=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=750\" src=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=394&amp;resize=394%2C526&amp;h=526#038;h=526\" srcset=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=394&amp;h=526 394w, https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=788&amp;h=1052 788w, https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=113&amp;h=150 113w, https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=225&amp;h=300 225w, https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=768&amp;h=1024 768w\" width=\"394\" height=\"526\" loading=\"lazy\" data-original-width=\"394\" data-original-height=\"526\" itemprop=\"http://schema.org/image\" title=\"IMG-20200323-WA0025.jpg\" alt=\"IMG-20200323-WA0025.jpg\" data-recalc-dims=\"1\" data-gallery-src=\"https://kadektravel.files.wordpress.com/2020/03/img-20200323-wa0025.jpg?w=1400&amp;h=\" style=\"box-sizing: inherit; border: none; max-width: 100%; height: 503px; cursor: pointer; background: 0px 0px; box-shadow: none; padding: 0px; width: 377px; margin: 2px !important;\"></a></div></div><div class=\"gallery-group images-2\" data-original-width=\"352\" data-original-height=\"530\" style=\"box-sizing: inherit; max-width: none; float: left; position: relative; width: 336px; height: 507px;\"><div class=\"tiled-gallery-item tiled-gallery-item-large\" itemprop=\"associatedMedia\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" style=\"box-sizing: inherit; max-width: none; float: left; margin: 0px; position: relative; width: inherit;\"><a href=\"https://kadektravel.wordpress.com/mundukwaterfall-2/\" border=\"0\" itemprop=\"url\" style=\"box-sizing: inherit; background: 0px 0px; color: inherit; cursor: pointer; max-width: unset; text-decoration-line: none; border: none; margin: 0px; padding: 0px; width: auto;\"><img class=\"\" data-attachment-id=\"74\" data-orig-file=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg\" data-orig-size=\"640,480\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;}\" data-image-title=\"mundukwaterfall\" data-image-description=\"\" data-medium-file=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=300\" data-large-file=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=640\" src=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=348&amp;resize=348%2C261&amp;h=261#038;h=261\" srcset=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=348&amp;h=261 348w, https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=150&amp;h=113 150w, https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=300&amp;h=225 300w, https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg 640w\" width=\"348\" height=\"261\" loading=\"lazy\" data-original-width=\"348\" data-original-height=\"261\" itemprop=\"http://schema.org/image\" title=\"mundukwaterfall\" alt=\"mundukwaterfall\" data-recalc-dims=\"1\" data-gallery-src=\"https://kadektravel.files.wordpress.com/2012/04/mundukwaterfall1.jpg?w=1400&amp;h=\" style=\"box-sizing: inherit; border: none; max-width: 100%; height: 249px; cursor: pointer; background: 0px 0px; box-shadow: none; padding: 0px; width: 333px; margin: 2px !important;\"></a></div><div class=\"tiled-gallery-item tiled-gallery-item-large\" itemprop=\"associatedMedia\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" style=\"box-sizing: inherit; max-width: none; float: left; margin: 0px; position: relative; width: inherit;\"><a href=\"https://kadektravel.wordpress.com/munduk-air-3/\" border=\"0\" itemprop=\"url\" style=\"box-sizing: inherit; background: 0px 0px; color: inherit; cursor: pointer; max-width: unset; text-decoration-line: none; border: none; margin: 0px; padding: 0px; width: auto;\"><img class=\"\" data-attachment-id=\"72\" data-orig-file=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg\" data-orig-size=\"640,480\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;}\" data-image-title=\"munduk air\" data-image-description=\"\" data-medium-file=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=300\" data-large-file=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=640\" src=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=348&amp;resize=348%2C261&amp;h=261#038;h=261\" srcset=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=348&amp;h=261 348w, https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=150&amp;h=113 150w, https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=300&amp;h=225 300w, https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg 640w\" width=\"348\" height=\"261\" loading=\"lazy\" data-original-width=\"348\" data-original-height=\"261\" itemprop=\"http://schema.org/image\" title=\"munduk air\" alt=\"munduk air\" data-recalc-dims=\"1\" data-gallery-src=\"https://kadektravel.files.wordpress.com/2012/04/munduk-air2.jpg?w=1400&amp;h=\" style=\"box-sizing: inherit; border: none; max-width: 100%; height: 249px; cursor: pointer; background: 0px 0px; box-shadow: none; padding: 0px; width: 333px; margin: 2px !important;\"></a></div></div></div></div><p></p><p></p>', 130, '2023-12-15 21:28:31', '2024-07-30 06:14:17'),
(10, '1706094456.png', 'Dolphin and Snorkeling', 'A pre-dawn start on a trip to the beach resort of Lovina in Northern Bali where we board a motorboat to witness the friendly dancing dolphins welcoming the morning sun.', '<div><span style=\"text-align: var(--bs-body-text-align);\">A pre-dawn start on a trip to the beach resort of Lovina in Northern Bali where we board a motorboat to witness the friendly dancing dolphins welcoming the morning sun. Lovina beach is famous for beautiful of calm sea water, blackish chromatic sand and the sea with its dolphins. One of the favorite fascinations in Lovina is dolphin watching tour. Hundreds of dolphins can be seen in the morning time around 1 km offshore. Here&nbsp; also we can do snorkeling and diving</span><br></div><div><br></div><div><b>Lovina Dolphin Watching :</b></div><div>Dolphin watching (100 k/ person, sharing with 6 persons max)</div><div>Snorkeling lovina (100k/ person,sharing with 6 persons max)</div><div>Swimming with dolphin (150k/ person,&nbsp; private boat –&nbsp; 3 persons minimum)</div><div>Special Trip , swimming with dolphin &amp; snorkeling ( 250k/person,private boat –&nbsp; 2 persons minimum)</div><div>All activity are include : guide, equipment and entrance ticket</div><div>Departure time 06.00 am and 08.00 am</div><div><br></div><div><b>Menjangan island activity :</b></div><div>Snorkeling (550k/ person)</div><div>Diving open water (800 k/person)</div><div>Intro dive ( 900 k/ person)</div><div>All activity are include, transport, lunch, equipment, entrance ticket, and guide.</div><div>Departure time 08.30 am</div><div></div>', 144, '2023-12-15 21:56:47', '2024-07-30 06:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 'I Gede Suartika', '8270468838', '2022-06-08 13:44:50', '2022-06-09 02:29:48'),
(3, 'BRI', 'I Gede Suartika', '172901008711509', '2020-03-22 08:35:31', '2022-06-09 02:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer_id`, `room_id`, `review`, `star`, `created_at`, `updated_at`) VALUES
(14, 1, 6, 'Cukup baguss', 3, '2023-12-16 00:52:48', '2024-01-13 15:59:24'),
(15, 1, 1, 'Mantap', 4, '2023-12-16 00:54:02', '2024-01-20 21:56:01'),
(17, 1, 8, 'Room so clean, good service and good place', 3, '2024-01-13 15:55:15', '2024-03-19 11:52:41'),
(18, 5, 6, 'Good place', 3, '2024-01-15 14:54:25', '2024-01-15 14:54:25'),
(19, 8, 1, 'Good service', 4, '2024-01-23 12:45:30', '2024-01-23 12:45:30'),
(20, 8, 8, 'Not Bad', 3, '2024-01-23 12:52:47', '2024-01-23 12:52:47'),
(21, 8, 6, 'lumayann kamarnya juga bersih pelayanannya juga bagus tapi kadang berisik banget', 2, '2024-01-23 12:53:59', '2024-01-23 12:53:59'),
(24, 9, 1, 'good view', 4, '2024-03-13 13:39:58', '2024-03-19 12:02:14'),
(25, 9, 8, 'Not good', 5, '2024-03-19 12:00:24', '2024-03-19 12:04:10'),
(26, 5, 8, 'Good service', 4, '2024-04-28 17:43:49', '2024-04-28 17:43:49'),
(27, 12, 6, 'Good', 4, '2024-05-08 13:03:20', '2024-05-08 13:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL,
  `total_rooms` text NOT NULL,
  `amenities` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `total_beds` text DEFAULT NULL,
  `total_bathrooms` text DEFAULT NULL,
  `total_balconies` text DEFAULT NULL,
  `total_guests` text DEFAULT NULL,
  `featured_photo` text NOT NULL,
  `panorama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `total_rooms`, `amenities`, `size`, `total_beds`, `total_bathrooms`, `total_balconies`, `total_guests`, `featured_photo`, `panorama`, `created_at`, `updated_at`) VALUES
(1, 'Standar Room', '<div>Seabreeze Bungalow is a beachfront accommodation, this Modern Standard Room provides a tranquil atmosphere . In the room, you will find a comfortable single bed complemented by two soft table lamps, creating a warm atmosphere at night. There are also spacious tables and chairs, perfect for working or relaxing while enjoying the stunning panorama.</div><div><br></div><div>The facilities provided include a cupboard to store your belongings, AC to control the temperature in the room, and of course a refreshing welcome drink to greet your arrival. Full bathrooms ensure your comfort, and there is a shared swimming pool available to all guests, adding excitement and refreshment to the place.</div><div><br></div><div>There is a convenient parking area for your vehicle to make it easier to explore the surrounding area. The highlight is the beachfront restaurant, serving delicious dishes while enjoying stunning ocean views. These Seabreeze Bungalows combine comfort, natural beauty and amenities for an unforgettable beachfront stay.</div><div><br></div><div>\"Please note that the room prices listed include Government Tax and Service Charge of 15%. Thus, the rate you pay includes all tax fees set by the government as well as the services we provide. This ensures that there are no additional costs associated with taxes or services you need to add when making payment. The price you see is the final price you will pay to stay in this room.\"</div>', '350000', '2', '4,6,7,9', '-', '1', '1', '1', '2', '1705998359.jpg', NULL, '2022-07-01 21:12:23', '2024-01-30 09:26:10'),
(6, 'Sea view', '<div>Seabreeze Bungalow is a beachfront accommodation, The house on stilts is located with sea views offering an amazing stay experience. In the room, you will find a comfortable single bed complemented by two soft table lamps, creating a warm atmosphere at night. There are also spacious tables and chairs, perfect for working or relaxing while enjoying the stunning panorama.</div><div><br></div><div>The facilities provided include a cupboard to store your belongings, AC to control the temperature in the room, and of course a refreshing welcome drink to greet your arrival. Full bathrooms ensure your comfort, and there is a shared swimming pool available to all guests, adding excitement and refreshment to the place.</div><div><br></div><div>There is a convenient parking area for your vehicle to make it easier to explore the surrounding area. The highlight is the beachfront restaurant, serving delicious dishes while enjoying stunning ocean views. These Seabreeze Bungalows combine comfort, natural beauty and amenities for an unforgettable beachfront stay.</div><div><br></div><div>\"Please note that the room prices listed include Government Tax and Service Charge of 15%. Thus, the rate you pay includes all tax fees set by the government as well as the services we provide. This ensures that there are no additional costs associated with taxes or services you need to add when making payment. The price you see is the final price you will pay to stay in this room.\"<br></div>', '517000', '3', '4,6,7,9', '-', '1', '1', '1', '2', '1705997820.jpg', 'panorama1705985065.jpg', '2022-07-03 08:07:43', '2024-01-23 15:17:00'),
(8, 'Garden View', '<div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Seabreeze Bungalow is a beachfront accommodation, The house on stilts is located with sea views offering an amazing stay experience. In the room, you will find a comfortable single bed complemented by two soft table lamps, creating a warm atmosphere at night. There are also spacious tables and chairs, perfect for working or relaxing while enjoying the stunning panorama.</div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\"><br></div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">The facilities provided include a cupboard to store your belongings, AC to control the temperature in the room, and of course a refreshing welcome drink to greet your arrival. Full bathrooms ensure your comfort, and there is a shared swimming pool available to all guests, adding excitement and refreshment to the place.</div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\"><br></div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">There is a convenient parking area for your vehicle to make it easier to explore the surrounding area. The highlight is the beachfront restaurant, serving delicious dishes while enjoying stunning ocean views. These Seabreeze Bungalows combine comfort, natural beauty and amenities for an unforgettable beachfront stay.</div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\"><br></div><div style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">\"Please note that the room prices listed include Government Tax and Service Charge of 15%. Thus, the rate you pay includes all tax fees set by the government as well as the services we provide. This ensures that there are no additional costs associated with taxes or services you need to add when making payment. The price you see is the final price you will pay to stay in this room.\"</div>', '450000', '2', '4,7,9', '-', '1', '1', '1', '2', '1705997990.jpg', 'panorama1706083510.jpg', '2023-12-31 01:39:08', '2024-02-11 00:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `room_photos`
--

CREATE TABLE `room_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_photos`
--

INSERT INTO `room_photos` (`id`, `room_id`, `photo`, `created_at`, `updated_at`) VALUES
(6, 1, '1702718643.jpg', '2023-12-16 01:24:03', '2023-12-16 01:24:03'),
(7, 1, '1702718655.jpg', '2023-12-16 01:24:15', '2023-12-16 01:24:15'),
(8, 1, '1702718667.jpg', '2023-12-16 01:24:27', '2023-12-16 01:24:27'),
(22, 8, '1705995041.jpg', '2024-01-23 14:30:41', '2024-01-23 14:30:41'),
(23, 8, '1705995058.jpg', '2024-01-23 14:30:58', '2024-01-23 14:30:58'),
(28, 8, '1705996351.jpg', '2024-01-23 14:52:31', '2024-01-23 14:52:31'),
(29, 8, '1705996510.jpg', '2024-01-23 14:55:10', '2024-01-23 14:55:10'),
(30, 8, '1705996707.jpg', '2024-01-23 14:58:27', '2024-01-23 14:58:27'),
(31, 8, '1705996738.jpg', '2024-01-23 14:58:58', '2024-01-23 14:58:58'),
(36, 8, '1705997337.jpg', '2024-01-23 15:08:57', '2024-01-23 15:08:57'),
(38, 8, '1705997547.jpg', '2024-01-23 15:12:27', '2024-01-23 15:12:27'),
(40, 6, '1705998571.jpg', '2024-01-23 15:29:31', '2024-01-23 15:29:31'),
(41, 6, '1706748602.jpg', '2024-02-01 07:50:02', '2024-02-01 07:50:02'),
(42, 6, '1706748725.jpg', '2024-02-01 07:52:05', '2024-02-01 07:52:05'),
(43, 6, '1706748748.jpg', '2024-02-01 07:52:28', '2024-02-01 07:52:28'),
(45, 1, '1706749147.jpg', '2024-02-01 07:59:07', '2024-02-01 07:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `top_bar_phone` text DEFAULT NULL,
  `top_bar_email` text DEFAULT NULL,
  `home_feature_status` text NOT NULL,
  `home_room_total` text NOT NULL,
  `home_room_status` text NOT NULL,
  `home_testimonial_status` text NOT NULL,
  `home_latest_post_total` text NOT NULL,
  `home_latest_post_status` text NOT NULL,
  `footer_address` text DEFAULT NULL,
  `footer_phone` text DEFAULT NULL,
  `footer_email` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `theme_color_1` text NOT NULL,
  `theme_color_2` text NOT NULL,
  `analytic_id` text DEFAULT NULL,
  `extra_bed` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `home_feature_status`, `home_room_total`, `home_room_status`, `home_testimonial_status`, `home_latest_post_total`, `home_latest_post_status`, `footer_address`, `footer_phone`, `footer_email`, `copyright`, `facebook`, `twitter`, `instagram`, `whatsapp`, `theme_color_1`, `theme_color_2`, `analytic_id`, `extra_bed`, `created_at`, `updated_at`) VALUES
(1, '1701091425.png', '1701091482.png', '(0362) 41138', 'seabreezelovina@gmail.com', 'Show', '3', 'Show', 'Show', '3', 'Show', 'Jalan Pantai Binaria Desa Kalibukbuk Lovina, Kecamatan Buleleng, Anturan, Kabupaten Buleleng, Bali (81151)', '(0362) 41138', 'seabreezelovina@gmail.com', 'Copyright 2024, Seabreeze Bungalow Lovina. All Rights Reserved.', 'https://www.facebook.com/profile.php?id=100090792827802&mibextid=rS40aB7S9Ucbxw6v', 'https://www.twitter.com', 'https://instagram.com/seabreeze.lovina?igshid=OGQ5ZDc2ODk2ZA==', 'https://wa.me/6289697186769?text=Hallo,%20I%20Want%20To%20Ask%20For%20The%20Bungalow.', '#00215B', '#ffd3ce', 'G-14KZLH7YJ6', 100000, NULL, '2024-06-12 20:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `heading` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `button_text` text DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `photo`, `heading`, `text`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(1, '1701600085.jpg', 'SEA BREEZE BUNGALOW', 'Illuminate your memories with the ripples of the waves and the gentleness of the wind, at Seabreeze Bungalow Lovina, enjoy the unforgettable charm of nature', NULL, NULL, '2022-06-25 02:04:35', '2024-02-06 11:56:02'),
(5, '1706084883.jpg', 'SEA BREEZE BUNGALOW', 'Illuminate your memories with the ripples of the waves and the gentleness of the wind, at Seabreeze Bungalow Lovina, enjoy the unforgettable charm of nature', NULL, NULL, '2024-01-24 15:21:44', '2024-02-06 11:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(1, '1702743469.png', 'I Gede Suartika', 'OWNER', 'We at Seabreeze Bungalow offer not only a place to stay with natural beauty. With every detail designed to create lasting moments, we believe that Seabreeze Bungalow is a beautiful beachfront stay that has beautiful views of the sea', '2022-06-25 21:52:58', '2023-12-16 08:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Seabreeze', 'seabreezebungalow11@gmail.com', '2022-10-10 06:50:33', '$2y$10$AGjg.0tJB9tO1dtyFTipvOXy1vH3K12w7gRRUTqQjksJYJLeB5FS.', NULL, '2022-09-09 13:22:47', '2022-09-09 13:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'w6ja_os8tno', 'Seabreeze Lovina | Buleleng-Bali', '2022-06-26 20:53:46', '2023-12-18 17:52:36'),
(2, 'w6ja_os8tno', 'Seabreeze Lovina | Buleleng-Bali', '2022-06-26 20:56:19', '2023-12-18 17:52:55'),
(3, 'w6ja_os8tno', 'Seabreeze Lovina | Buleleng-Bali', '2022-06-26 20:56:47', '2023-12-18 17:53:18'),
(4, 'X1m2PpScacI', 'Dolphin Lovina | Buleleng-Bali', '2022-06-26 20:57:23', '2024-01-24 18:05:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_photos`
--
ALTER TABLE `room_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_photos`
--
ALTER TABLE `room_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
