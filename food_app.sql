-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 11:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccv` int(11) DEFAULT 0,
  `e_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `card_name`, `card_number`, `ccv`, `e_date`, `created_at`, `updated_at`) VALUES
(60, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-01 23:31:00', '2021-08-01 23:31:00'),
(61, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-01 23:35:15', '2021-08-01 23:35:15'),
(62, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-02 12:16:13', '2021-08-02 12:16:13'),
(63, 'alex mark', '34324', 123, '06/23', '2021-08-03 05:28:26', '2021-08-11 11:39:07'),
(64, 'victoria james', '4242424242424242', 123, '05/22', '2021-08-03 05:43:53', '2021-08-03 05:43:53'),
(65, 'victoria james', '4242424242424242', 123, '05/22', '2021-08-03 05:53:20', '2021-08-03 05:53:20'),
(66, 'gloria mark', '4242424242424242', 123, '05/22', '2021-08-03 05:57:58', '2021-08-03 05:57:58'),
(67, 'gloria mark', '4242424242424242', 123, '05/22', '2021-08-03 07:45:58', '2021-08-03 07:45:58'),
(68, 'callum scott', '4242424242424242', 123, '05/22', '2021-08-03 07:49:23', '2021-08-03 07:49:23'),
(69, 'callum scott', '4242424242424242', 123, '05/22', '2021-08-03 07:50:05', '2021-08-03 07:50:05'),
(70, 'parker rossan', '4242424242424242', 123, '05/22', '2021-08-03 07:53:28', '2021-08-03 07:53:28'),
(71, 'parker rossan', '4242424242424242424', 123, '05/22', '2021-08-03 08:16:36', '2021-08-03 08:16:36'),
(72, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-05 02:44:23', '2021-08-05 02:44:23'),
(73, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-05 03:12:20', '2021-08-05 03:12:20'),
(74, 'aline mark', '4242424242424242', 123, '05/22', '2021-08-05 04:42:08', '2021-08-05 04:42:08'),
(75, 'zoey amanda', '4242424242424242', 123, '05/22', '2021-08-09 04:58:19', '2021-08-09 04:58:19'),
(76, 'alex mark', '4242424', 123, '05/22', '2021-08-09 05:24:45', '2021-08-09 05:24:45'),
(77, 'alex mark', '65464648654', 123, '05/22', '2021-08-09 07:57:32', '2021-08-09 07:57:32'),
(78, 'vctoria james', '4242424242424242', 123, '05/24', '2021-08-09 09:48:57', '2021-09-02 09:45:24'),
(79, 'vctoria james', '23324', 123, '05/23', '2021-08-09 12:02:01', '2021-08-09 12:02:01'),
(80, 'vctoria james', '23324', 123, '05/23', '2021-08-09 12:02:53', '2021-08-09 12:02:53'),
(81, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-10 04:22:18', '2021-08-10 04:22:18'),
(82, 'vctoria james', '65464684', 123, '05/23', '2021-08-10 04:27:26', '2021-08-10 04:27:26'),
(83, 'vctoria james', '646486', 123, '05/23', '2021-08-10 06:57:21', '2021-08-10 06:57:21'),
(84, 'vctoria james', '2323', 123, '05/23', '2021-08-10 07:07:43', '2021-08-10 07:07:43'),
(85, 'victoria james', '4242424242424242', 123, '05/23', '2021-08-11 08:35:16', '2021-08-11 08:35:16'),
(86, 'victoria james', '6448', 123, '05/23', '2021-08-11 08:57:24', '2021-08-11 08:57:24'),
(87, 'vctoria james', '644646848', 123, '05/23', '2021-08-11 09:01:06', '2021-08-11 09:01:06'),
(88, 'sagar shourov', '25654458797', 222, '25/21', '2021-08-11 09:09:42', '2021-08-11 09:09:42'),
(89, 'sagar', '925654654', 222, '22/21', '2021-08-11 09:12:24', '2021-08-11 09:12:24'),
(90, 'sagar', '56654646', 2555, '55/55', '2021-08-11 10:00:11', '2021-08-11 10:00:11'),
(91, 'Charles', '1234123412341234', 123, '12/21', '2021-08-11 10:03:58', '2021-08-11 10:03:58'),
(92, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-11 10:17:34', '2021-08-11 10:17:34'),
(93, 'aaaa', '123123123', 213, '123/122', '2021-08-11 10:37:07', '2021-08-11 10:37:07'),
(94, 'alex mark', '342343432', 123, '5/23', '2021-08-11 11:22:37', '2021-08-11 11:22:37'),
(95, 'sagar shourov', '256544587397', 222, '12/21', '2021-08-11 11:34:08', '2021-08-11 11:34:08'),
(96, 'sagar shourov', '25654458797', 222, '22/21', '2021-08-11 11:41:43', '2021-08-11 11:41:43'),
(97, 'sagar shourov', '25654458797', 222, '12/21', '2021-08-11 11:57:46', '2021-08-11 11:57:46'),
(98, 'sagar', '126895785689', 222, '44/21', '2021-08-11 12:25:08', '2021-08-11 12:25:08'),
(99, 'Hhh', 'Ghh', 123, '11/Rw', '2021-08-11 12:53:17', '2021-08-11 12:53:17'),
(100, 'rimsha', '45465', 5466, '56/24', '2021-08-31 18:18:40', '2021-08-31 18:18:40'),
(101, 'rimsha', '45465', 5466, '56/24', '2021-08-31 18:32:43', '2021-08-31 18:32:43'),
(102, 'rimsha', '85746546', 5346, '54/45', '2021-08-31 18:45:17', '2021-08-31 18:45:17'),
(103, 'rimsha', '1234567897654', 12132, '12/21', '2021-09-01 05:40:11', '2021-09-07 12:47:53'),
(104, 'dffgd', '543645', 5654, '5436/546', '2021-09-01 10:03:20', '2021-09-01 10:03:20'),
(105, 'rimsha', '43345345', 54543, '5433/35434', '2021-09-02 12:03:59', '2021-09-02 12:03:59'),
(106, 'rimsha', '12345678', 1234, '43/22', '2021-09-07 12:50:24', '2021-09-07 12:50:24'),
(107, 'charles', '424242', 123, '12/21', '2021-09-07 14:45:05', '2021-09-07 14:45:05'),
(108, 'Charles Bran', '424242442424242424', 551, '02/21', '2021-09-08 06:27:20', '2021-09-08 06:27:20'),
(109, 'Chrales Bran', '424242', 655, '25/21', '2021-09-08 06:31:17', '2021-09-08 06:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `quantity` int(5) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `price`, `quantity`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `product_id`, `order_id`) VALUES
(581, 40, 2, '2021-08-01 23:31:00', '2021-08-01 23:31:00', NULL, NULL, 2, 188),
(582, 40, 2, '2021-08-01 23:35:15', '2021-08-01 23:35:15', NULL, NULL, 2, 189),
(583, 235, 1, '2021-08-02 12:15:43', '2021-08-02 12:15:55', NULL, 76, 2, 190),
(587, 20, 1, '2021-08-03 05:43:53', '2021-08-03 05:43:53', NULL, NULL, 2, 193),
(588, 20, 1, '2021-08-03 05:53:20', '2021-08-03 05:53:20', NULL, NULL, 2, 194),
(589, 200, 1, '2021-08-03 05:57:58', '2021-08-03 05:57:58', NULL, NULL, 2, 195),
(590, 5, 1, '2021-08-03 05:57:58', '2021-08-03 05:57:58', NULL, NULL, 3, 195),
(591, 20, 1, '2021-08-03 07:45:58', '2021-08-03 07:45:58', NULL, NULL, 2, 196),
(592, 20, 2, '2021-08-03 07:45:58', '2021-08-03 07:45:58', NULL, NULL, 3, 196),
(593, 200, 1, '2021-08-03 07:45:58', '2021-08-03 07:45:58', NULL, NULL, 2, 196),
(594, 20, 1, '2021-08-03 07:49:23', '2021-08-03 07:49:23', NULL, NULL, 2, 197),
(595, 10, 1, '2021-08-03 07:49:23', '2021-08-03 07:49:23', NULL, NULL, 3, 197),
(596, 20, 1, '2021-08-03 07:50:05', '2021-08-03 07:50:05', NULL, NULL, 2, 198),
(597, 10, 1, '2021-08-03 07:50:05', '2021-08-03 07:50:05', NULL, NULL, 3, 198),
(598, 200, 1, '2021-08-03 07:53:28', '2021-08-03 07:53:28', NULL, NULL, 2, 199),
(601, 160, 2, '2021-08-05 03:12:20', '2021-08-05 03:12:20', NULL, NULL, 7, 202),
(603, 50, 1, '2021-08-05 04:42:08', '2021-08-05 04:42:08', NULL, NULL, 7, 204),
(616, 60, 1, '2021-08-08 05:29:04', '2021-08-08 05:29:33', NULL, 87, 7, 217),
(618, 20, 1, '2021-08-09 04:58:19', '2021-08-09 04:58:19', NULL, NULL, 8, 219),
(620, 20, 1, '2021-08-09 05:24:45', '2021-08-09 05:24:45', NULL, NULL, 18, 220),
(624, 60, 1, '2021-08-09 07:09:32', '2021-09-07 11:20:22', NULL, 87, 7, 269),
(626, 20, 1, '2021-08-09 07:57:33', '2021-08-09 07:57:33', NULL, NULL, 8, 224),
(630, 20, 1, '2021-08-09 12:02:02', '2021-08-09 12:02:02', NULL, NULL, 16, 229),
(631, 20, 1, '2021-08-09 12:02:53', '2021-08-09 12:02:53', NULL, NULL, 16, 230),
(634, 40, 1, '2021-08-10 04:22:18', '2021-08-10 04:22:18', NULL, NULL, 24, 231),
(639, 20, 1, '2021-08-10 04:27:26', '2021-08-10 04:27:26', NULL, NULL, 16, 232),
(641, 50, 1, '2021-08-10 06:57:22', '2021-08-10 06:57:22', NULL, NULL, 17, 236),
(642, 20, 1, '2021-08-10 07:07:45', '2021-08-10 07:07:45', NULL, NULL, 8, 237),
(646, 50, 1, '2021-08-11 08:35:18', '2021-08-11 08:35:18', NULL, NULL, 17, 238),
(647, 50, 1, '2021-08-11 08:57:26', '2021-08-11 08:57:26', NULL, NULL, 17, 239),
(648, 50, 1, '2021-08-11 09:01:08', '2021-08-11 09:01:08', NULL, NULL, 19, 240),
(649, 40, 1, '2021-08-11 09:09:44', '2021-08-11 09:09:44', NULL, NULL, 24, 241),
(650, 40, 1, '2021-08-11 09:12:26', '2021-08-11 09:12:26', NULL, NULL, 24, 243),
(664, 40, 1, '2021-08-11 10:00:11', '2021-08-11 10:00:11', NULL, NULL, 24, 244),
(665, 40, 1, '2021-08-11 10:00:11', '2021-08-11 10:00:11', NULL, NULL, 24, 244),
(666, 20, 1, '2021-08-11 10:03:58', '2021-08-11 10:03:58', NULL, NULL, 18, 245),
(667, 20, 1, '2021-08-11 10:03:58', '2021-08-11 10:03:58', NULL, NULL, 18, 245),
(668, 20, 1, '2021-08-11 10:03:58', '2021-08-11 10:03:58', NULL, NULL, 24, 245),
(669, 20, 1, '2021-08-11 10:03:58', '2021-08-11 10:03:58', NULL, NULL, 24, 245),
(674, 40, 1, '2021-08-11 10:17:36', '2021-08-11 10:17:36', NULL, NULL, 24, 246),
(675, 20, 1, '2021-08-11 10:37:07', '2021-08-11 10:37:07', NULL, NULL, 24, 247),
(678, 20, 1, '2021-08-11 11:12:34', '2021-08-11 11:17:20', NULL, 77, 8, 248),
(679, 20, 1, '2021-08-11 11:12:40', '2021-08-11 11:17:20', NULL, 77, 8, 248),
(680, 20, 1, '2021-08-11 11:13:33', '2021-08-11 11:17:20', NULL, 77, 16, 248),
(681, 20, 1, '2021-08-11 11:13:41', '2021-08-11 11:17:20', NULL, 77, 16, 248),
(682, 20, 1, '2021-08-11 11:15:33', '2021-08-11 11:17:20', NULL, 77, 18, 248),
(683, 20, 1, '2021-08-11 11:18:15', '2021-08-11 11:18:49', NULL, 77, 18, 249),
(684, 20, 1, '2021-08-11 11:22:37', '2021-08-11 11:22:37', NULL, NULL, 8, 250),
(690, 40, 1, '2021-08-11 11:34:08', '2021-08-11 11:34:08', NULL, NULL, 24, 252),
(691, 20, 1, '2021-08-11 11:37:40', '2021-08-11 11:38:51', NULL, 77, 16, 253),
(692, 20, 1, '2021-08-11 11:37:47', '2021-08-11 11:38:51', NULL, 77, 8, 253),
(693, 20, 1, '2021-08-11 11:37:57', '2021-08-11 11:38:51', NULL, 77, 18, 253),
(694, 50, 1, '2021-08-11 11:38:14', '2021-08-11 11:38:51', NULL, 77, 17, 253),
(695, 50, 1, '2021-08-11 11:38:20', '2021-08-11 11:38:51', NULL, 77, 17, 253),
(696, 20, 1, '2021-08-11 11:40:50', '2021-08-11 11:40:50', NULL, 77, 16, NULL),
(697, 40, 1, '2021-08-11 11:41:43', '2021-08-11 11:41:43', NULL, NULL, 24, 254),
(699, 50, 1, '2021-08-11 11:42:27', '2021-08-11 11:42:27', NULL, 77, 19, NULL),
(700, 40, 2, '2021-08-11 11:42:38', '2021-08-11 13:16:23', NULL, 77, 8, NULL),
(709, 40, 1, '2021-08-11 11:56:42', '2021-08-11 11:56:42', NULL, 75, 24, NULL),
(710, 40, 1, '2021-08-11 11:56:56', '2021-08-11 11:56:56', NULL, 75, 24, NULL),
(711, 40, 1, '2021-08-11 11:57:46', '2021-08-11 11:57:46', NULL, NULL, 24, 255),
(712, 40, 1, '2021-08-11 11:58:21', '2021-08-11 11:58:21', NULL, 75, 24, NULL),
(713, 40, 1, '2021-08-11 12:25:08', '2021-08-11 12:25:08', NULL, NULL, 24, 256),
(714, 80, 2, '2021-08-11 12:53:18', '2021-08-11 12:53:18', NULL, NULL, 24, 257),
(715, 40, 1, '2021-08-11 12:53:18', '2021-08-11 12:53:18', NULL, NULL, 24, 257),
(716, 40, 1, '2021-08-11 12:53:18', '2021-08-11 12:53:18', NULL, NULL, 24, 257),
(717, 40, 1, '2021-08-11 12:53:18', '2021-08-11 12:53:18', NULL, NULL, 24, 257),
(718, 69, 4, '2021-08-31 12:58:48', '2021-08-31 12:58:48', NULL, 79, 8, NULL),
(720, 20, 1, '2021-08-31 18:18:40', '2021-08-31 18:18:40', NULL, NULL, 24, 258),
(721, 20, 1, '2021-08-31 18:32:43', '2021-08-31 18:32:43', NULL, NULL, 24, 259),
(722, 20, 1, '2021-09-01 05:39:29', '2021-09-01 05:39:47', NULL, 103, 24, 261),
(723, 20, 1, '2021-09-01 10:03:20', '2021-09-01 10:03:20', NULL, NULL, 24, 262),
(724, 44, 2, '2021-09-02 09:24:20', '2021-09-02 09:24:20', NULL, 79, 18, NULL),
(727, 70, 1, '2021-09-02 09:35:37', '2021-09-02 09:40:04', NULL, 94, 17, 263),
(728, 15, 1, '2021-09-02 09:39:49', '2021-09-02 09:40:04', NULL, 94, 22, 263),
(729, 20, 1, '2021-09-02 09:39:55', '2021-09-02 09:40:04', NULL, 94, 23, 263),
(730, 70, 1, '2021-09-02 09:43:09', '2021-09-02 09:43:53', NULL, 94, 17, 264),
(731, 20, 1, '2021-09-02 11:49:31', '2021-09-02 11:49:56', NULL, 103, 8, 265),
(732, 20, 1, '2021-09-02 11:50:56', '2021-09-02 11:51:12', NULL, 103, 8, 266),
(733, 20, 1, '2021-09-02 12:03:59', '2021-09-02 12:03:59', NULL, NULL, 24, 267),
(734, 150, 3, '2021-09-06 12:39:21', '2021-09-06 12:40:25', NULL, 103, 19, 268),
(735, 20, 1, '2021-09-07 11:18:28', '2021-09-07 11:20:22', NULL, 87, 24, 269),
(736, 40, 1, '2021-09-07 11:19:28', '2021-09-07 11:20:22', NULL, 87, 24, 269),
(737, 20, 1, '2021-09-07 12:38:13', '2021-09-07 12:47:18', NULL, 103, 18, 270),
(738, 50, 1, '2021-09-07 12:46:27', '2021-09-07 12:47:18', NULL, 103, 17, 270),
(739, 20, 1, '2021-09-07 12:50:24', '2021-09-07 12:50:24', NULL, NULL, 18, 271),
(740, 22, 1, '2021-09-07 14:05:06', '2021-09-07 14:05:06', NULL, 87, 18, NULL),
(741, 40, 1, '2021-09-07 14:38:46', '2021-09-07 14:38:46', NULL, 87, 24, NULL),
(742, 54, 2, '2021-09-07 14:45:05', '2021-09-07 14:45:05', NULL, NULL, 18, 272),
(743, 22, 1, '2021-09-07 14:45:05', '2021-09-07 14:45:05', NULL, NULL, 18, 272),
(744, 20, 2, '2021-09-08 06:27:20', '2021-09-08 06:27:20', NULL, NULL, 8, 273),
(745, 20, 1, '2021-09-08 06:27:20', '2021-09-08 06:27:20', NULL, NULL, 24, 273),
(746, 20, 1, '2021-09-08 06:27:20', '2021-09-08 06:27:20', NULL, NULL, 24, 273),
(747, 40, 1, '2021-09-08 06:27:20', '2021-09-08 06:27:20', NULL, NULL, 24, 273),
(748, 20, 1, '2021-09-08 06:31:17', '2021-09-08 06:31:17', NULL, NULL, 24, 274),
(749, 50, 1, '2021-09-08 10:43:20', '2021-09-09 04:49:46', NULL, 103, 19, NULL),
(750, 60, 3, '2021-09-09 04:49:38', '2021-09-09 04:49:38', NULL, 103, 18, NULL),
(751, 100, 0, '2021-09-27 01:52:21', '2021-09-27 01:52:21', NULL, NULL, 35, NULL),
(752, 100, 0, '2021-09-27 01:53:35', '2021-09-27 01:53:35', NULL, NULL, 35, NULL),
(753, 100, 0, '2021-09-27 01:56:09', '2021-09-27 01:56:09', NULL, NULL, 35, NULL),
(754, 100, 0, '2021-09-27 01:56:58', '2021-09-27 01:56:58', NULL, NULL, 35, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts_variations`
--

CREATE TABLE `carts_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `variations_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts_variations`
--

INSERT INTO `carts_variations` (`id`, `name`, `quantity`, `price`, `created_at`, `updated_at`, `deleted_at`, `cart_id`, `variations_id`) VALUES
(1101, 'sagar', NULL, 5, '2021-08-02 12:15:43', '2021-08-02 12:15:43', NULL, 583, 4),
(1102, 'sdfsdf 4', NULL, 10, '2021-08-02 12:15:43', '2021-08-02 12:15:43', NULL, 583, 2),
(1103, 'fsfsd', NULL, 200, '2021-08-02 12:15:43', '2021-08-02 12:15:43', NULL, 583, 1),
(1118, 'Sauce', NULL, 10, '2021-08-08 05:29:05', '2021-08-08 05:29:05', NULL, 616, 8),
(1121, 'Sauce', NULL, 10, '2021-08-09 07:09:32', '2021-08-09 07:09:32', NULL, 624, 8),
(1144, 'cinnamon', NULL, 20, '2021-08-11 11:56:42', '2021-08-11 11:56:42', NULL, 709, 37),
(1145, 'cinnamon', NULL, 20, '2021-08-11 11:56:56', '2021-08-11 11:56:56', NULL, 710, 37),
(1146, 'cinnamon', NULL, 20, '2021-08-11 11:58:21', '2021-08-11 11:58:21', NULL, 712, 37),
(1147, 'sauce', NULL, 0, '2021-08-31 12:58:48', '2021-08-31 12:58:48', NULL, 718, 26),
(1148, 'oregano', NULL, 3, '2021-08-31 12:58:48', '2021-08-31 12:58:48', NULL, 718, 27),
(1149, 'Sugar', NULL, 2, '2021-09-02 09:24:20', '2021-09-02 09:24:20', NULL, 724, 29),
(1152, 'aregano topping', NULL, 20, '2021-09-02 09:35:37', '2021-09-02 09:35:37', NULL, 727, 9),
(1153, 'soy sauce', NULL, 20, '2021-09-02 09:43:09', '2021-09-02 09:43:09', NULL, 730, 28),
(1154, 'cinnamon', NULL, 20, '2021-09-07 11:19:28', '2021-09-07 11:19:28', NULL, 736, 37),
(1155, 'Sugar', NULL, 2, '2021-09-07 14:05:06', '2021-09-07 14:05:06', NULL, 740, 29),
(1156, 'cinnamon', NULL, 20, '2021-09-07 14:38:46', '2021-09-07 14:38:46', NULL, 741, 37);

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `path`, `created_at`, `updated_at`, `deleted_at`, `type`) VALUES
(1, 'image.jpeg', NULL, NULL, NULL, 1),
(2, 'image.jpeg', NULL, NULL, NULL, 1),
(3, 'products/KQ5emUiXW8y54hrQRuO00G7vd1FlK7tv30iueU4p.png', '2021-08-03 18:58:16', '2021-08-03 18:58:16', NULL, 1),
(4, 'products/g5REHlktidePLDpqc6495u2a7OBBnrnN5bJobq6G.jpg', '2021-08-03 18:58:55', '2021-08-03 18:58:55', NULL, 1),
(6, 'products/FZger5xb9q0ba0DJOWh98NaquLvXiv8n6P2zBqlk.jpg', '2021-08-03 23:02:02', '2021-08-03 23:02:02', NULL, 1),
(7, 'products/XFpnmun8vKu5W8CH7AvhkU0xdZsjGXOH9M3OJtZS.jpg', '2021-08-04 00:12:34', '2021-08-04 00:12:34', NULL, 1),
(9, 'products/FVQMUsNz1kWWk3vpz7gzRCob9as7MSM3Ig2lrsVi.jpg', '2021-08-04 00:20:43', '2021-08-04 00:20:43', NULL, 1),
(10, 'products/FmvAVoV2DnwuFioDats189N4bX2cH2UTOaFSnXiN.jpg', '2021-08-04 00:26:31', '2021-08-04 00:26:31', NULL, 1),
(11, 'products/uawEqq96onAZB3FEVUPZMA3SxbjQAWx7Sh79WU8w.jpg', '2021-08-04 00:30:55', '2021-08-04 00:30:55', NULL, 1),
(12, 'products/Prt9nT0CYYZTuRTwYdna1mmu4sIar5ydthvZlIaN.jpg', '2021-08-04 00:38:25', '2021-08-04 00:38:25', NULL, 1),
(13, 'products/tmZv2R2lDbaDrguHbotlwMd8Rlh1sJom8Fu9pKql.jpg', '2021-08-04 01:12:12', '2021-08-04 01:12:12', NULL, 1),
(14, 'products/jQN9uknICXbsgvJhNeetTByIKOlrEkjHu1eaC9Db.jpg', '2021-08-04 02:45:31', '2021-08-04 02:45:31', NULL, 1),
(15, 'products/9PYcnk4t1AIcY9X0WAZ2S7BpeJpmvqKk8p3DzM5e.jpg', '2021-08-05 02:46:56', '2021-08-05 02:46:56', NULL, 1),
(16, 'products/XZ0YoCHt0MDJcs7YRCpW7skYJCz3n8hHGjdmIHFT.jpg', '2021-08-05 02:48:15', '2021-08-05 02:48:15', NULL, 1),
(18, 'products/y228lSoH4HYxqd5TG5rlfwDYqLx8K0yFuLP2Ghh2.jpg', '2021-08-05 06:27:37', '2021-08-05 06:27:37', NULL, 1),
(19, 'products/5hsUlA2fJZxAf7i545QgLPurCZMbrOT0KjAisXhg.jpg', '2021-08-05 06:30:05', '2021-08-05 06:30:05', NULL, 1),
(20, 'products/YpVaxREYMsJu8DR9npoGvG59SpgGEUbktiSkBW2G.jpg', '2021-08-05 22:15:41', '2021-08-05 22:15:41', NULL, 1),
(21, 'products/pUgUvz0ozbO0CDsizPEQuUMoet4PKcZjBemfktWk.jpg', '2021-08-05 22:24:01', '2021-08-05 22:24:01', NULL, 1),
(22, 'products/Wfjs2LhtZDENB5OY1K3VrpDexGheaVEc34cWT1kT.jpg', '2021-08-05 22:43:06', '2021-08-05 22:43:06', NULL, 1),
(23, 'products/DdbKJfDq4QJTqdRPJ4QwT8hH5xSCKsyec8NTW6WK.jpg', '2021-08-05 22:43:49', '2021-08-05 22:43:49', NULL, 1),
(24, 'products/DJDM2PqpuWv2SbtIsV3r3fa5LQQqYQXO0vYiFVEA.jpg', '2021-08-05 22:44:37', '2021-08-05 22:44:37', NULL, 1),
(25, 'products/JqQ8gNR14EV4Z5EBsh2AskQn3LofhcpvU8bAeVsG.jpg', '2021-08-05 22:45:20', '2021-08-05 22:45:20', NULL, 1),
(26, 'products/8T9LMomMKyCfIK4MxbYm70ZWmW2DTZTP0HjGsAoQ.jpg', '2021-08-06 00:01:20', '2021-08-06 00:01:20', NULL, 1),
(27, 'products/2uHfvKjs6y1d6oivtvgCK9TbtPRb9GVPMNkisxOy.jpg', '2021-08-06 00:04:48', '2021-08-06 00:04:48', NULL, 1),
(28, 'products/CkbqI0LFjiOp8EUUMHlEA2kqnLaXdtPhFngNSXg4.jpg', '2021-08-06 00:06:56', '2021-08-06 00:06:56', NULL, 1),
(29, 'products/4BB0En6MTJEpFV8CLT5RRl3oMpOa1XHJRUhcoucj.png', '2021-08-06 00:17:15', '2021-08-06 00:17:15', NULL, 1),
(30, 'products/IpAY1zuprPvfdlx9GuAnbCk0odp3ruw1FjCfux2c.png', '2021-08-06 00:17:57', '2021-08-06 00:17:57', NULL, 1),
(31, 'products/JWvVHHrPQM1Qhiz7OWEsOhZEMn78wshJUe8JVf4W.jpg', '2021-08-08 23:02:53', '2021-08-08 23:02:53', NULL, 1),
(32, 'products/RZtOJ8t05BBhRvQJyvNk73ovNNgzpZVqBfbLdbav.jpg', '2021-08-08 23:04:03', '2021-08-08 23:04:03', NULL, 1),
(33, 'products/LGMUT72gtcBg7ZMaPJC9etYc0DncINmiq1sYMuHA.jpg', '2021-08-08 23:44:46', '2021-08-08 23:44:46', NULL, 1),
(34, 'products/NCQuhnHMvtKDPWluXd9A8zTQFUnXi2pJjAyJFCJV.jpg', '2021-08-08 23:45:55', '2021-08-08 23:45:55', NULL, 1),
(35, 'products/D0N0JVxwUMXPDDuD5GVWCrCz6ghSW94XCyP3IcoX.jpg', '2021-08-09 02:27:28', '2021-08-09 02:27:28', NULL, 1),
(38, 'no image', NULL, NULL, NULL, 1),
(39, 'no image', NULL, NULL, NULL, 1),
(40, 'no image', NULL, NULL, NULL, 1),
(41, 'no image', NULL, NULL, NULL, 1),
(42, 'no image', NULL, NULL, NULL, 1),
(45, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-13 22:34:18', '2021-09-13 22:34:18', NULL, NULL),
(50, 'no image', NULL, NULL, NULL, 1),
(51, 'no image', NULL, NULL, NULL, 1),
(54, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-14 04:41:01', '2021-09-14 04:41:01', NULL, NULL),
(59, 'products/aboutOur.png', '2021-09-14 06:25:38', '2021-09-14 06:25:38', NULL, NULL),
(63, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-15 01:20:21', '2021-09-15 01:20:21', NULL, NULL),
(64, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-15 01:21:09', '2021-09-15 01:21:09', NULL, NULL),
(65, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-15 01:21:30', '2021-09-15 01:21:30', NULL, NULL),
(68, 'no image', '2021-09-15 04:37:49', '2021-09-15 04:37:49', NULL, NULL),
(73, 'products/25521083_719022004958350_19571912_o.jpg', '2021-09-16 00:48:05', '2021-09-16 00:48:05', NULL, NULL),
(76, 'no image', '2021-09-20 05:05:58', '2021-09-20 05:05:58', NULL, NULL),
(77, 'no image', '2021-09-20 05:46:13', '2021-09-20 05:46:13', NULL, NULL),
(78, 'no image', '2021-09-24 01:49:31', '2021-09-24 01:49:31', NULL, NULL),
(79, 'no image', '2021-09-24 01:49:40', '2021-09-24 01:49:40', NULL, NULL),
(80, 'no image', '2021-09-24 01:49:48', '2021-09-24 01:49:48', NULL, NULL),
(81, 'no image', '2021-09-24 01:50:00', '2021-09-24 01:50:00', NULL, NULL),
(82, 'no image', '2021-09-24 01:50:11', '2021-09-24 01:50:11', NULL, NULL),
(83, 'no image', '2021-09-24 02:16:27', '2021-09-24 02:16:27', NULL, NULL),
(84, 'no image', '2021-09-24 02:16:54', '2021-09-24 02:16:54', NULL, NULL),
(85, 'no image', '2021-09-24 02:17:17', '2021-09-24 02:17:17', NULL, NULL),
(86, 'no image', '2021-09-24 02:17:36', '2021-09-24 02:17:36', NULL, NULL),
(87, 'no image', '2021-09-24 02:17:51', '2021-09-24 02:17:51', NULL, NULL),
(88, 'no image', '2021-09-24 02:18:16', '2021-09-24 02:18:16', NULL, NULL),
(89, 'no image', '2021-09-24 02:18:31', '2021-09-24 02:18:31', NULL, NULL),
(90, 'products/download (1).jfif', '2021-10-08 01:57:38', '2021-10-08 01:57:38', NULL, NULL),
(91, 'products/download (1).jfif', '2021-10-08 01:58:14', '2021-10-08 01:58:14', NULL, NULL),
(92, 'products/download.jfif', '2021-10-08 02:19:06', '2021-10-08 02:19:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_types`
--

CREATE TABLE `file_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ext` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_types`
--

INSERT INTO `file_types` (`id`, `created_at`, `updated_at`, `deleted_at`, `ext`) VALUES
(1, NULL, NULL, NULL, 'image'),
(2, NULL, NULL, NULL, 'video');

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `fname`, `lname`, `email`, `phone`, `d_address`, `created_at`, `updated_at`, `card_id`) VALUES
(45, 'sagar', 'roy', 'admin445@email.com', '01917177562', NULL, '2021-08-01 23:31:00', '2021-08-01 23:31:00', 60),
(46, 'sagar', 'roy', 'admin445@email.com', '01917177562', NULL, '2021-08-01 23:35:15', '2021-08-01 23:35:15', 61),
(47, 'victoria', 'james', 'vic@user.com', '11111111111', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"56\",\"note\":\"address added\"}', '2021-08-03 05:43:53', '2021-08-03 05:43:53', 64),
(48, 'victoria', 'james', 'vic@user.com', '11111111111', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"56\",\"note\":\"address added\"}', '2021-08-03 05:53:20', '2021-08-03 05:53:20', 65),
(49, 'gloria', 'mark', 'gloria@user.com', '88888888888', '{\"pcode\":\"street 45\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-03 05:57:58', '2021-08-03 05:57:58', 66),
(50, 'gloria', 'mark', 'gloria@user.com', '88888888888', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-03 07:45:58', '2021-08-03 07:45:58', 67),
(51, 'callum', 'scott', 'callum@user.com', '99999999999', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-03 07:49:23', '2021-08-03 07:49:23', 68),
(52, 'callum', 'scott', 'callum@user.com', '99999999999', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-03 07:50:05', '2021-08-03 07:50:05', 69),
(53, 'parker', 'rossan', 'parker@user.com', '77777777777', '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-03 07:53:28', '2021-08-03 07:53:28', 70),
(54, 'sagar', 'roy', 'admin445@email.com', '01917177562', NULL, '2021-08-05 03:12:20', '2021-08-05 03:12:20', 73),
(55, 'aline', 'mark', 'aline@user.com', '33333333333', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added for today, thrusday\"}', '2021-08-05 04:42:08', '2021-08-05 04:42:08', 74),
(56, 'alex', 'mark', 'alex@user.com', '66666666666', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"32\",\"note\":\"address added\"}', '2021-08-09 04:58:19', '2021-08-09 04:58:19', 75),
(57, 'alex', 'mark', 'alex@user.com', '77777777777', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-09 05:24:45', '2021-08-09 05:24:45', 76),
(58, 'alex', 'mark', 'alex@user.com', '11111111111', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-09 07:57:33', '2021-08-09 07:57:33', 77),
(59, 'victoria', 'james', 'vic@company.com', '66554433221', '{\"pcode\":\"street 47\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', '2021-08-09 12:02:02', '2021-08-09 12:02:02', 79),
(60, 'victoria', 'james', 'vic@company.com', '66554433221', '{\"pcode\":\"street 47\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', '2021-08-09 12:02:53', '2021-08-09 12:02:53', 80),
(61, 'sagar', 'roy', 'admin4@email.com', '01917177562', NULL, '2021-08-10 04:22:18', '2021-08-10 04:22:18', 81),
(62, 'victoria', 'james', 'vic@user.com', '55555555555', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', '2021-08-10 04:27:26', '2021-08-10 04:27:26', 82),
(63, 'victoria', 'james', 'vic@company.com', '33333333333', '{\"pcode\":\"street 87\",\"b_name\":\"965\",\"u_no\":\"64684\",\"note\":\"address added\"}', '2021-08-10 06:57:22', '2021-08-10 06:57:22', 83),
(64, 'victoria', 'james', 'vic@company.com', '44444444444', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"54\",\"note\":\"address added\"}', '2021-08-10 07:07:44', '2021-08-10 07:07:44', 84),
(65, 'victoria', 'james', 'vic@user.com', '11223344556', '{\"pcode\":\"street 47\",\"b_name\":\"56\",\"u_no\":\"56\",\"note\":\"address\"}', '2021-08-11 08:35:17', '2021-08-11 08:35:17', 85),
(66, 'victoria', 'james', 'vic@user.com', '66666666666', '{\"pcode\":\"address\",\"b_name\":\"horizon\",\"u_no\":\"65\",\"note\":\"address\"}', '2021-08-11 08:57:25', '2021-08-11 08:57:25', 86),
(67, 'victoria', 'james', 'vic@user.com', '77777777777', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"5\",\"note\":\"address\"}', '2021-08-11 09:01:07', '2021-08-11 09:01:07', 87),
(68, 'sagar', 'roy', 'admin5445@email.com', '0191717756255', '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"256\",\"note\":\"some notes\"}', '2021-08-11 09:09:43', '2021-08-11 09:09:43', 88),
(69, 'fisrt name', 'last name', 'wsit5e300@gmail.com', '1154646425454', '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"34\",\"note\":\"some notes\"}', '2021-08-11 09:12:25', '2021-08-11 09:12:25', 89),
(70, 'sagar roy', 'roy', 'sagarbd2448@gmail.com', '019171775625', '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"34\",\"note\":\"some notes\"}', '2021-08-11 10:00:11', '2021-08-11 10:00:11', 90),
(71, 'Charles', 'Bran', 'info@aaaa.com', '12312312311', '{\"pcode\":\"123\",\"b_name\":\"123\",\"u_no\":\"123\",\"note\":\"123\"}', '2021-08-11 10:03:58', '2021-08-11 10:03:58', 91),
(72, 'sagar', 'roy', 'adm33in445@email.com', '01917177562', NULL, '2021-08-11 10:17:35', '2021-08-11 10:17:35', 92),
(73, '123', '123', 'fd121@sfasdf.com', '12121212121', '{\"pcode\":\"123\",\"b_name\":\"123\",\"u_no\":\"123\",\"note\":\"123\"}', '2021-08-11 10:37:07', '2021-08-11 10:37:07', 93),
(74, 'vic', 'james', 'vic@user.com', '66666666666', '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', '2021-08-11 11:22:37', '2021-08-11 11:22:37', 94),
(75, 'sagar', 'roy', 'admin4435@email.com', '019171773562', NULL, '2021-08-11 11:34:08', '2021-08-11 11:34:08', 95),
(76, 'some name', 'roy', 'adfgdg@email.com', '19171775654', NULL, '2021-08-11 11:41:43', '2021-08-11 11:41:43', 96),
(77, 'sagar', 'roy', 'admin44445@email.com', '01917171773562', NULL, '2021-08-11 11:57:46', '2021-08-11 11:57:46', 97),
(78, 'Sagar', 'Roy', 'adminy@site.com', '01917177578', '{\"pcode\":\"9280\",\"b_name\":\"Building name\",\"u_no\":\"18\",\"note\":\"Some notes\"}', '2021-08-11 12:25:08', '2021-08-11 12:25:08', 98),
(79, 'Ggg', 'Ggg', 'Hhh@hh.Chill', '11111111111', '{\"pcode\":\"123\",\"b_name\":\"Qwe\",\"u_no\":\"Aqa\",\"note\":\"Wwq\"}', '2021-08-11 12:53:18', '2021-08-11 12:53:18', 99),
(80, 'gfgfdh', 'gfhfgh', 'rimshaubaid@live.com', '03007563333', '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', '2021-08-31 18:18:40', '2021-08-31 18:18:40', 100),
(81, 'gfgfdh', 'gfhfgh', 'rimshaubaid@live.com', '03007563333', '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', '2021-08-31 18:32:43', '2021-08-31 18:32:43', 101),
(82, 'gfbgf', 'gfngnf', 'rimshaubaid@live.com', '03007563333', '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', '2021-08-31 18:45:17', '2021-08-31 18:45:17', 102),
(83, 'fggfh', 'hgjhjgf', 'rimshaubaid@live.com', '03007563333', '{\"pcode\":\"4535\",\"b_name\":\"45\",\"u_no\":\"435\",\"note\":\"43545\"}', '2021-09-01 10:03:20', '2021-09-01 10:03:20', 104),
(84, 'rimsha', 'ubaid', 'rimsha@gmail.com', '03007563333', '{\"pcode\":\"tytyu\",\"b_name\":\"yutut\",\"u_no\":\"yuyt\",\"note\":\"uityiu\"}', '2021-09-02 12:03:59', '2021-09-02 12:03:59', 105),
(85, 'gfhdfgh', 'gfh', 'rimshaubaid@live.com', '03007563333', '{\"pcode\":\"2323\",\"b_name\":\"er\",\"u_no\":\"re\",\"note\":\"ewrwr\"}', '2021-09-07 12:50:24', '2021-09-07 12:50:24', 106),
(86, 'Charles', 'Bran', 'charli00711@gmail.com', '12345678910', '{\"pcode\":\"31212\",\"b_name\":\"NY\",\"u_no\":\"12\",\"note\":\"No notes\"}', '2021-09-07 14:45:05', '2021-09-07 14:45:05', 107),
(87, 'charles', 'bran', 'charli007111@gmail.com', '12312312341', '{\"pcode\":\"aaaaa\",\"b_name\":\"aa\",\"u_no\":\"aa\",\"note\":\"aaa\"}', '2021-09-08 06:27:20', '2021-09-08 06:27:20', 108),
(88, 'Charles', 'Bran', 'charli007111@gmail.com', '12312312345', '{\"pcode\":\"aaaaa\",\"b_name\":\"aa\",\"u_no\":\"aa\",\"note\":\"aaa\"}', '2021-09-08 06:31:17', '2021-09-08 06:31:17', 109);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(14, '2016_06_01_000004_create_oauth_clients_table', 1),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2021_07_02_014633_create_products_table', 2),
(20, '2021_07_04_031512_create_outlates_table', 4),
(21, '2021_07_04_035833_create_cards_table', 4),
(25, '2021_07_04_031002_create_file_types_table', 5),
(26, '2021_07_04_031002_create_files_table', 5),
(28, '2021_07_04_031001_create_order_type_table', 7),
(30, '2021_07_04_031002_create_outlates_table', 9),
(32, '2021_07_04_031002_create_pro_menus_table', 9),
(33, '2021_07_04_031002_create_carts_table', 10),
(34, '2021_07_04_031002_create_payments_table', 11),
(44, '2021_07_07_142003_create_pro_varations_table', 19),
(48, '2021_07_09_044547_create_settings_table', 21),
(49, '2021_07_09_045306_create_options_table', 22),
(50, '2021_07_02_060912_create_orders_table', 23),
(54, '2021_07_13_110444_create_guest_users_table', 26),
(56, '2021_07_14_224803_cart_variations_table', 28),
(58, '2021_07_04_031012_create_foreign_keys _orders', 29),
(60, '2021_07_17_145934_address', 31),
(62, '2021_07_23_131243_create_menu_items_table', 32),
(64, '2021_07_13_084329_create_sessions_table', 34),
(65, '2021_07_04_031012_create_foreign_keys', 35);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('00cfc991f8191dfb2350df70427ca2279a0143becabd38368068ba608aa6b9fdc809d247f45d76fc', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-02 12:14:39', '2021-08-02 12:14:39', '2022-08-02 18:14:39'),
('019269051b702920a2504f2fa00bb7a98f9027f2651e6722ea2e9bfd9b1997e1417442a9151f447b', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:02:37', '2021-07-29 23:02:37', '2022-07-30 05:02:37'),
('02372b6d2afa3759826c570f8d7807dd480457cd3c096bc5c9c765f34b4ca33fd323493894928327', 49, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:32:19', '2021-07-28 00:32:19', '2022-07-28 06:32:19'),
('05c9ee87fc0209daf4e9ad5a61cfcb2aea97de38a6cc05998b5497c09c57f5ea5e9c7becfbda4e26', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-30 09:09:30', '2021-07-30 09:09:30', '2022-07-30 15:09:30'),
('061edf8076ade64e5880d7f22da21ec80d4dd2c3427e7bc8e93e807b332fb5c01b77fac118f0ac30', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:37:12', '2021-08-11 11:37:12', '2022-08-11 11:37:12'),
('0692114e009c12dd321d944c0736f9e5a199972634f1c4b617f9f187fc762700b71f25b9adc55668', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 05:07:49', '2021-08-10 05:07:49', '2022-08-10 05:07:49'),
('073c9cc6416db6f5db1ad58dab2f588a1206b746ba2769d1230149d62fd16a56923e5676ab05bdc7', 71, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:27:24', '2021-07-28 01:27:24', '2022-07-28 07:27:24'),
('077a3f1a61a77775a1aed9278454f6472a7ebbbda8e9b040582ffee434bdb44d0feeaa9f0d379535', 65, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:56:53', '2021-07-28 00:56:53', '2022-07-28 06:56:53'),
('079ef832f5784c884de0f5dc5d5b3ee3949dfad0c90b89eed65212aa318edf3b02ded17060aedb63', 109, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 07:07:46', '2021-09-03 07:07:46', '2022-09-03 07:07:46'),
('08206f99d511ffb5eccc07115925f930160bbfee0f6c4280ad79ce1549ed3c89577359a2e47b4428', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:26:33', '2021-07-24 00:26:33', '2022-07-24 06:26:33'),
('082a844033e55f5f0984fcffc0eaea5b7e9151dab89e78b5d1a6311f8166c9fde112deb58f76a68c', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 23:09:34', '2021-07-22 23:09:34', '2022-07-23 05:09:34'),
('088e6046c4b4165cb9635de5645a3b738176ef988d761dff103c034938d5e1836dca6d76a6f3682f', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:36:14', '2021-07-28 02:36:14', '2022-07-28 08:36:14'),
('093828b7c5b332d6d713eb358a4b253afba053eef471d9a83f34563993144dbe6de13c6ffdad66c7', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:39:37', '2021-07-22 22:39:37', '2022-07-23 04:39:37'),
('09dd5ff1e11beaf825f11e2f073277f30ba200771f960d131ac80d54fcdf5cdd270e8976a8031022', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:47:15', '2021-07-31 22:47:15', '2022-08-01 04:47:15'),
('0a5d8ebd24ab51df3703eba658252e1941cc982ad9f6935b22a4e2ca8955195f10f7618652e715db', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 09:49:25', '2021-07-31 09:49:25', '2022-07-31 15:49:25'),
('0b41ce426d7dec20912edb55ce2dd788c2b070c93466ce0196d479ec1098ab2927cb8f3ac126fcfe', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:39:07', '2021-07-11 18:39:07', '2022-07-11 14:39:07'),
('0bd7dbbdeed9363d06c415e3d66ace88739c5627cd551b412a251b98a0667a47ff7a057a999966d7', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 16:30:50', '2021-08-07 16:30:50', '2022-08-07 16:30:50'),
('0cc7cfd5ad0f8e376435008b4c86088318552daab7bc9e1590ae8273738d6ba8da30c2b1aed3f537', 108, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 07:05:05', '2021-09-03 07:05:05', '2022-09-03 07:05:05'),
('0cda9cf11e2d65212fcca5f0472791d18de12bec64132895e312dc75285aa3b21048c3362c52ffb5', 61, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:47:24', '2021-07-28 00:47:24', '2022-07-28 06:47:24'),
('0fdd2620e1ab3b0f913a08f06dc73abeeb74628a9942f32d8539e58205319935d29e8d02acdcacc4', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:41:54', '2021-07-31 22:41:54', '2022-08-01 04:41:54'),
('1235930f18b59b93bf3a9b9c33aa18243b108561b88b0b457506505b785e67b816a3eff4b5b49e98', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 10:55:23', '2021-07-23 10:55:23', '2022-07-23 16:55:23'),
('1386a2598e9c03481f04a0bbc7b1798bb3e76914d90f478902026dde17228e80c95e975652a78811', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:04:19', '2021-07-29 23:04:19', '2022-07-30 05:04:19'),
('13c48e5251422c99f9b036425a2a571aea0e84e461b29f9c52ebb380593d1edf72979549eeb74a1a', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:39:23', '2021-07-31 22:39:23', '2022-08-01 04:39:23'),
('14b946649c7bffdf7393f80e8e777806d4907304b2624dc4e5fd99ab8ee4be420fcd6ff81532c81a', 58, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:44:40', '2021-07-28 00:44:40', '2022-07-28 06:44:40'),
('14d88a0fcf12cc586381977637e6ab49e89290e34bb97d3b3f2069d31033179623170649b9deaa64', 46, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:05:43', '2021-07-28 00:05:43', '2022-07-28 06:05:43'),
('14f47ce058b8a6eab37a395004718546fe0b7134455ba4864d95e782a4db9071a81f73be166dc27d', 76, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-02 12:15:15', '2021-08-02 12:15:15', '2022-08-02 18:15:15'),
('150e348642b5a70763674cfad03da5cd39daf33be15b5d6c75270452d7c2f959b0478d1f2d5e7ec7', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:28:39', '2021-08-11 11:28:39', '2022-08-11 11:28:39'),
('15a2d2288a6c17cae0c90465d882b3b5e6beea6e12c734e9fa1186b0c516a8cd67e89d2a92d47982', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:56:54', '2021-07-28 01:56:54', '2022-07-28 07:56:54'),
('15fb2a19037fdc1f7130454fa5189f4ec79bc7028849b187002d72718deaf49545776192db9dcf73', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:27:05', '2021-07-24 00:27:05', '2022-07-24 06:27:05'),
('161a684010179bf93206f0d13298b11c157d08b1cebfcca9d73ec087dc85522acde1529d77a800bc', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:36:30', '2021-08-05 04:36:30', '2022-08-05 04:36:30'),
('168f58fbd0200a70f2de51a69b436e7ce3d73e249a689302ff2d2473783c852a2da114f742251366', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 10:39:08', '2021-08-11 10:39:08', '2022-08-11 10:39:08'),
('17a2081dd8341e6b01e7ed880a281adce3f3472ecaacd305260b33a046e09b1150bab059ad41ab18', 95, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 09:53:16', '2021-08-09 09:53:16', '2022-08-09 09:53:16'),
('1829a661e6fc178e31d95634c24a055af78ae4fff631360286d285dc253b31e19163b73ca301a781', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:03:27', '2021-07-29 23:03:27', '2022-07-30 05:03:27'),
('19432b31c16b8f92f72f580790d3df9b9d2c3e0fd411d8332bc86d2abab54daff1eb5f97c1c15086', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 03:24:35', '2021-08-05 03:24:35', '2022-08-05 03:24:35'),
('197a8c4dec3f52f8811ae3afba6698862649a754df9c6253133e68393c72264dcff18fc7ca02b751', 97, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:20:08', '2021-08-09 11:20:08', '2022-08-09 11:20:08'),
('1d54ac4551b6b550bb63236b437bfe6b10bc1224708ee8d15ac2547eeb29bfad7bdb2182a8b6a17e', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:28:29', '2021-08-09 16:28:29', '2022-08-09 16:28:29'),
('226737785f013c3662e16cff7e1973077b1ec9319b330983489220c82b8afc55308211a6b570d4f8', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:10:28', '2021-07-28 02:10:28', '2022-07-28 08:10:28'),
('25d2cca01c2839931bf75ba46a3e0d654783b6f7f0b8c60ecf7407445995b7f44e88de0e416675f7', 98, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:22:55', '2021-08-10 04:22:55', '2022-08-10 04:22:55'),
('25dd1e7654ca41a5d610993707a3d7c90bf89c7de9d17832929e69c123e2c2aebd1cd1c0294268af', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:32:09', '2021-07-22 22:32:09', '2022-07-23 04:32:09'),
('26555532477687b921059976d41ddb89df464b49c955bb8c3f41d94159b1c174b4e5d28231df968b', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 10:45:06', '2021-07-09 10:45:06', '2022-07-09 16:45:06'),
('273a01ebc7f86dc6ee0d1f2242022726696fd0f5cd3b8dc816a7c5d1c1984f4016566eadd9295ff3', 69, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:07:55', '2021-07-28 01:07:55', '2022-07-28 07:07:55'),
('27ea1657fbac1380826dcd85c72b536dc754541cb39446c293d3d2dfbd94b1ed835c8943967f5e59', 84, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 05:17:23', '2021-08-05 05:17:23', '2022-08-05 05:17:23'),
('28a70b4425f56d3254158d681ed4bb424a197e496d09898e94133432f3ebb9c3145e359572697e75', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:53:19', '2021-07-28 01:53:19', '2022-07-28 07:53:19'),
('290811117c57dae6d64f8a859fec92767eb380987bfb8598cbb3b146010866c0c58339b34068c469', 83, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:03:31', '2021-08-05 04:03:31', '2022-08-05 04:03:31'),
('293759406f37e7213edf7d7006619fb6877fbebccd574f8897bdd967cbab57af6f2e170f616debaf', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:09:46', '2021-08-11 11:09:46', '2022-08-11 11:09:46'),
('293fb7bbb5dde648333d838dda0fd506c4baff8b1a98bb08a3a4428c3e0827761aae9c43a0372406', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-30 01:41:54', '2021-07-30 01:41:54', '2022-07-30 07:41:54'),
('295ba996f3c3b85076230930424fcfa1cbf4ef03e6ae60391e63d18720b25d6eb9c052be04ee97b1', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:31:24', '2021-08-11 09:31:24', '2022-08-11 09:31:24'),
('29a6c28d62c958b1b35aaa1499877a2eaefa97ad1f17ed76f87a060c45035a56ce82ab8e01699559', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 10:12:36', '2021-08-11 10:12:36', '2022-08-11 10:12:36'),
('2a237b0f9c48a21fabbf9995f88f8fc4aacbf466644f73131c67e1ad90dee9d672d0be3913576079', 87, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 06:54:52', '2021-08-07 06:54:52', '2022-08-07 06:54:52'),
('2a85a42667ab12dcf7bdaafc42843dbb04a0b5f78a361f1c2dc4604a9cc3ea4f810277747ef2cc7c', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 05:57:23', '2021-07-04 05:57:23', '2022-07-04 11:57:23'),
('2ad79e0fdf470c69f4fdbcb23b92db65ab29fad823256ecf1f1e3282022d56641628fd54727321f7', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-01 03:32:42', '2021-08-01 03:32:42', '2022-08-01 09:32:42'),
('2cbc648927d41e4920a8bd8c1fa2c5d77c6b4c21a24edaea79d7e0ed3e85c35484a60decaae3fb16', 67, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:58:15', '2021-07-28 00:58:15', '2022-07-28 06:58:15'),
('2dd818d0c92fe14da75deb52b50c27a14ecf3be703f1c4ae972fe7e2dd9e5e4efb8d1f248e85326c', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 16:13:44', '2021-08-07 16:13:44', '2022-08-07 16:13:44'),
('2ef289f079158370a2c629efe322340587bf6df4098d86b804f0268edec36d6522233bda83e9f49b', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:48:25', '2021-07-29 22:48:25', '2022-07-30 04:48:25'),
('303647387f2cd05d388948ce5a2240ea220b4bbc531d44ce421fb870da55d25d7ea2d6cc0e8895d3', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:12:28', '2021-07-28 02:12:28', '2022-07-28 08:12:28'),
('312f965921620f8f59701a22746181a1402443f55b5ea0c7a8b0f6fce7509cc76070138dde269672', 80, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 07:50:11', '2021-08-03 07:50:11', '2022-08-03 07:50:11'),
('3298bf0e0384abbb28039d7ff2aa46944c55962b962b3b3df8227a15ee3930b80b8e532c59a75b0b', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:36:28', '2021-07-22 22:36:28', '2022-07-23 04:36:28'),
('32eb6de9f8dd94249cb86c1b1cbf9d97985b42d5491e37d986061c2675d90159f1af633546e5772d', 54, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:41:33', '2021-07-28 00:41:33', '2022-07-28 06:41:33'),
('331a2f76bbf53458653e5e36188cf555b2dd66c0d93297c67671af99632a102e966487a6fa3f34c8', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 10:38:31', '2021-09-03 10:38:31', '2022-09-03 10:38:31'),
('34c1eb36bb290274cadd933e129bd6871106d8e1043ad1b2eb52eb3039ebfb2c02140b931865e60e', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 03:09:52', '2021-07-23 03:09:52', '2022-07-23 09:09:52'),
('3648515f68ca3bb1c44828c49401be712de2f9d19ac76620d113af2069f47f1c3b5ba7d8efffd849', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:56:49', '2021-07-22 22:56:49', '2022-07-23 04:56:49'),
('384a101ab3dc47e7f8ea5330a90c73de497ec9f17dbe0c51776450a3bb88448d0dbec0c320bbb13b', 22, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 07:55:09', '2021-07-09 07:55:09', '2022-07-09 13:55:09'),
('38521775e6adf79d90e129a25f0f4e808f7f1ff10c4e7aa53062929796121b82c515a53f987aa233', 25, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 10:23:07', '2021-07-09 10:23:07', '2022-07-09 16:23:07'),
('39294a06af19656eecd316f8b61904acaa4df8d02ebf5c472d03089b06c2a7d2fa456394f3b494af', 76, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-02 12:15:35', '2021-08-02 12:15:35', '2022-08-02 18:15:35'),
('39ddaa086c83a3d893ce8863829df63db1e6ed1627f05141ef86d0bc0df1afb484867644f8e3e1f5', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 03:02:44', '2021-07-23 03:02:44', '2022-07-23 09:02:44'),
('3c12354903d2e4ea8293cead8e748c2bf4be190d53ffaabfbd7ff7d239cd66a45a95d451bfa91813', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:36:21', '2021-07-28 02:36:21', '2022-07-28 08:36:21'),
('3c291d3ffb19471492b7bbef42c915025d17692aa75a809c8f711eaa1eb0655dea6d500f1c2cbe96', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:47:08', '2021-07-31 22:47:08', '2022-08-01 04:47:08'),
('3c6e217c3a64ad1bc52c5267a8e5ef55a9083a921427735ffe7b85b08fab4414cd3e32351232290f', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:00:08', '2021-07-29 23:00:08', '2022-07-30 05:00:08'),
('3c9856ab82f1ec1b41618dd481819ed181f8b87ae2038f96fd6a0b146430839c893930032e641166', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 17:07:45', '2021-08-07 17:07:45', '2022-08-07 17:07:45'),
('3e9eedb56e8d0572f80aef7756bef66c69d6c84e5cbaccef0ff3e27bfe85f97486f80e719626e55c', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 09:10:38', '2021-08-31 09:10:38', '2022-08-31 09:10:38'),
('3f04c1aa986c5fbc7c1d4244939061c8545813804e802a510f26ee2d351ad04f701ebcb0587c6aca', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 12:36:10', '2021-09-03 12:36:10', '2022-09-03 12:36:10'),
('423f18afa6fc84c58ecba9003867b52bf5b054fc3aafe44ca8babef41288f6cbf6bf818a4edb04b1', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:41:29', '2021-07-28 02:41:29', '2022-07-28 08:41:29'),
('428821c2119a412d5f9c60554222580a169e6e27bc1371c6fb6d9626122ef0094771c6d16ef8f0f2', 12, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 07:22:09', '2021-07-09 07:22:09', '2022-07-09 13:22:09'),
('42ac9b1ec8dbee092f7b6539fa549060fc3cc4ee0efff07bd8d65a89ba59c1ddb48d4b056a06bd7e', 101, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 08:33:18', '2021-08-11 08:33:18', '2022-08-11 08:33:18'),
('44102c583675db87b1ff056a6a909f63bc34d261d41c395e7b85de8ba2a05057324595b5ba0d26d1', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-02 07:29:28', '2021-07-02 07:29:28', '2022-07-02 13:29:28'),
('4543c484a2becd28f5ad9a54ab2e6de08809f237905c895eaaaf92ab1545852e93e708b453c34333', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:57:18', '2021-08-09 16:57:18', '2022-08-09 16:57:18'),
('461b7d45ce518ee0f9cc02fca7b6c87e044b609b4d45ae6f4facfcb6a649dc1702cf9cb0909580a8', 92, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 08:05:06', '2021-08-09 08:05:06', '2022-08-09 08:05:06'),
('467ebd08c6236d23872dbc4aebaa06920768db9c4952df1e09c7b17447d0d521504c5736626d8a05', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 21:34:08', '2021-07-29 21:34:08', '2022-07-30 03:34:08'),
('471f8e02f93484488e26d5f2cd2392ae552ecb884c1f8d7f41b4c1377cdf52d7a58c11604c5d1fab', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:36:22', '2021-07-28 02:36:22', '2022-07-28 08:36:22'),
('476ba0dbd1148f27d1a1f513fa4fb7b31fd2e4dcf9f3cb7a596eaa86c4523451f342ef7f2166fe92', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:22:03', '2021-07-28 02:22:03', '2022-07-28 08:22:03'),
('4771463f3a891e939938f12e704be5bc1173d50cf2ac53e52b75ea29e128eb53751eda8d95eb1fcc', 89, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 16:13:16', '2021-08-07 16:13:16', '2022-08-07 16:13:16'),
('47910bc86f0c9b59df6d6b996f7015ea58fc24e060a36a8e10b59fa144dbbae2bec73d4318c14ff8', 36, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:26:36', '2021-07-27 23:26:36', '2022-07-28 05:26:36'),
('47ff93fbdac38333b009f81de778ab20207e9e315d3e6c13854c9e7e32768eb6db506a774f53a6b6', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 10:48:30', '2021-07-23 10:48:30', '2022-07-23 16:48:30'),
('483c932f963dbfb7c1e4a29c92ba4cc4be993f2cdb2fbfe1fe9bd5d03f9ff2e3a9f25e2c9452defb', 43, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:53:18', '2021-07-27 23:53:18', '2022-07-28 05:53:18'),
('493316d449f23879ef627cb1578cf667edc72fc9b12d6bcd90b64b55d65e13de0a5a9c76c9589505', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:35:41', '2021-07-22 22:35:41', '2022-07-23 04:35:41'),
('49c619baffa6bd514e67ac5acd6da3fa3c7cb820f275c995dde140d8590bce597fd1708cd505da6a', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:16:24', '2021-07-28 02:16:24', '2022-07-28 08:16:24'),
('49f0190f208e5e45021303ae1f1126919ba214dad6e788df54089bb0f8db55ba0e98e34c1be1d700', 106, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-01 04:49:15', '2021-09-01 04:49:15', '2022-09-01 04:49:15'),
('4a045b25a4a57340a32490cd8243ec472dde142a7a86491633724b23415c4dbe5dd711b4595cef15', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 21:34:18', '2021-07-29 21:34:18', '2022-07-30 03:34:18'),
('4a36514228b3272c74b3e34355a7af1f7bf652cfe8238255485168b751e7b7627750390e0b5f5e2d', 57, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:43:22', '2021-07-28 00:43:22', '2022-07-28 06:43:22'),
('4ad07ceb34b3b936fb4b19e9f5cd8c2e405ec15ce5a0cd248548538a152a54bdbd8847eb5aedac0b', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 01:42:26', '2021-07-24 01:42:26', '2022-07-24 07:42:26'),
('4af9c5d1ca19e88e0500a328817e8e59d9f3b99836584a6ae7afea19ddf8645cef103e67e0b0bce5', 84, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:54:01', '2021-08-05 04:54:01', '2022-08-05 04:54:01'),
('4b787741c06bf49327565d84cc575c98044fc44f7f67b2b903bb02baeb91b5f2ae9a34da3fc06eee', 37, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:29:00', '2021-07-27 23:29:00', '2022-07-28 05:29:00'),
('4ba3b698c59260c6cd93aaeb0d3abcc3d7d399f83ddae34b2b6657771bc40ebf933067b15a0f2af9', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 00:40:33', '2021-07-27 00:40:33', '2022-07-27 06:40:33'),
('4c3d87c97b6f908883cc89478cd40eb3a4367f2d64731b135ac1473073e4f964a51c2dbd297be7cd', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 04:23:38', '2021-08-03 04:23:38', '2022-08-03 04:23:38'),
('4dc3c018e021d62ac219a896cc1c9bb73115095a2fc38fa9ec5360f4b2d1fd47921c7466a5d93cd2', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:35:53', '2021-08-11 09:35:53', '2022-08-11 09:35:53'),
('4dff31e11187ea806fe2a3e04c091063859d1a350c7c8e4504349e063cd02128871df71ce32c555b', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-30 01:26:56', '2021-07-30 01:26:56', '2022-07-30 07:26:56'),
('4ec508abd2bec2b6f03899f5bbe03defc31ca0e5376dcefa9069dcf8a9af7cf729662f4817e50efc', 102, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-13 08:20:38', '2021-08-13 08:20:38', '2022-08-13 08:20:38'),
('4f12b0a850b32a71c27d23a762f4a7e53e8f313d546b6a605f594a8b75d38d5c06e712b8ee6c650b', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:39:32', '2021-08-11 09:39:32', '2022-08-11 09:39:32'),
('52729894b8062a9aeac6eca47c42aaee68f255c7aee41875cd8cea146ad0e20fc7877e834883b6dd', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:42:57', '2021-07-31 22:42:57', '2022-08-01 04:42:57'),
('52a4506ca3e3130fb6ec6bb8481bfa57ff363995955baa7030dd53e497ba7b4a6a4c057fecc73e6b', 72, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:28:10', '2021-07-28 01:28:10', '2022-07-28 07:28:10'),
('53236da17d0457ec17dae42681258ada7f49452fbf994873de3d3c231bde5d52598704d395b1b336', 33, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:37:15', '2021-07-11 18:37:15', '2022-07-11 14:37:15'),
('537b2290b3ce0a7734ed81abe325d5352354d9a033938254a67f14a69058d33e274bd80c172419ac', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:46:39', '2021-07-31 22:46:39', '2022-08-01 04:46:39'),
('541f581a0ca9618eea60d52dab3e43a795a36462129801a7d2b07f22a53826eeb6c010a347eb8aec', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 08:57:59', '2021-08-09 08:57:59', '2022-08-09 08:57:59'),
('54410d581ea1eec63c4b19f73756dcb853876082f636f60e8c33f9d42dc32424c31fb53427ca1f5e', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:34:00', '2021-07-28 02:34:00', '2022-07-28 08:34:00'),
('5453ef110d3c29f401a657f460994f0061d88594d3c6dd82297d688c8ebaedf5b15e5be556c746e0', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 01:28:26', '2021-07-24 01:28:26', '2022-07-24 07:28:26'),
('55c899034320b8596616d8d3e467017e4a1252babe6f3286b7866b03220476efd7a031b18b00522c', 34, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 09:35:18', '2021-07-12 09:35:18', '2022-07-12 05:35:18'),
('58eab7c8b7f19ff16eda1249a0d63ee16ff44fa992106ed0ea1480eff86d276bcf8b1ed132b1fea4', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:44:53', '2021-07-28 02:44:53', '2022-07-28 08:44:53'),
('5ad414b966a0b8a3003553dcae1eb6914123d5ccb3570d00fe65e6cb3de31893fab0247a068014bc', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 08:21:31', '2021-08-11 08:21:31', '2022-08-11 08:21:31'),
('5b7487ac3e4d611756a7f80eacf4c05de47e69c436c9984b8d17b67c4fa3220f9825b1c19ce8b9ff', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-01 20:18:53', '2021-07-01 20:18:53', '2022-07-02 02:18:53'),
('5ca5548194022adf0766b03940d10025a083ff3ec97c641392a8faf9628f3ab6cc4ddb8e704ec35c', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 19:32:50', '2021-07-08 19:32:50', '2022-07-09 01:32:50'),
('5cbe62db58e571072074f896dfb12a7765035bcbd528a3e4fbe39d05d5a821470a16dfc9fe5fc4b9', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:27:41', '2021-08-11 11:27:41', '2022-08-11 11:27:41'),
('5d026492c68f7d183de2f9f4a2a31a175fed12ca08c898292af33db0fde9e852d2896960e63b3f58', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 10:23:12', '2021-07-22 10:23:12', '2022-07-22 16:23:12'),
('5d164c8c3a1c9c3ea585f19adb0eede1450b9bccd0be8d2f76741f2e608fb5d0af70d514d7de8d11', 79, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 12:58:48', '2021-08-31 12:58:48', '2022-08-31 12:58:48'),
('5d629db1b8626cb785207a14eb956054614cab57f7ff11e06f193ac7343eb3a5ba7d389e5cab9f8f', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:26:17', '2021-07-24 00:26:17', '2022-07-24 06:26:17'),
('5e4af9f0876762011632d9985e48eb62d4cdc39394b3293ed3898075ef6edd4f694bcf95566cd080', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:37:21', '2021-08-05 04:37:21', '2022-08-05 04:37:21'),
('5e55132277b2363cb97e8ddf9ea3587ec08355c97dcb948a6c723e454971a1e5ac78fffd7010d96e', 95, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 09:53:28', '2021-08-09 09:53:28', '2022-08-09 09:53:28'),
('614488be246158154812d8f7fbfa90cc4b3d5d19e80c918ce30cf709900fe727b35aa93758331121', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:23:04', '2021-08-10 04:23:04', '2022-08-10 04:23:04'),
('647e4b2373456e88a938889af7234fada173bd013aef315b1cee7d7e42df05449472fe5bcb3412fe', 63, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:51:04', '2021-07-28 00:51:04', '2022-07-28 06:51:04'),
('651196b1c3ea2fe428ade8dad2eb48321a0054598004b1aea7f4d41b666f6c3d5232e74998e84898', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 17:46:26', '2021-08-07 17:46:26', '2022-08-07 17:46:26'),
('6518ed9863294f62472b35f2dc67b4857aec798a0d68a448441d5a7a2215c4b3c1c3fdda5fd310f3', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:51:00', '2021-07-29 22:51:00', '2022-07-30 04:51:00'),
('65919eddc3c0cc01d12babb8ee2a19aa175514ef5526924e474dfa38de1a954b27f7938f8928eed3', 73, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:29:40', '2021-07-28 01:29:40', '2022-07-28 07:29:40'),
('67bdfabe95f5ff0efa02e4c05bc7645b9ad4d556175d159b6b941e56cd31b8805bae973a309555be', 53, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:40:41', '2021-07-28 00:40:41', '2022-07-28 06:40:41'),
('68dfcab90ac1ca91c85828d9ad8fb889a0f3291f77bf3e79793b04cfebcca9d032490108c96de72d', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:00:57', '2021-07-11 18:00:57', '2022-07-11 14:00:57'),
('68fa032d242393cb96e967edd65805015fe1c96f87eacaad8fa5c247bd59dfac696273a530eb1e55', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:44:28', '2021-07-28 02:44:28', '2022-07-28 08:44:28'),
('6933fc018239243d0199ac385693bc8a513277208de22b269b305a022e9235c36b492736b5f9e5b2', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 08:42:51', '2021-07-08 08:42:51', '2022-07-08 14:42:51'),
('694c15db688c3017a38562a1db0d6a0dafeee904c079b74e5749ad0f68de17934b39365754b383e9', 9, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 07:20:43', '2021-07-09 07:20:43', '2022-07-09 13:20:43'),
('6994c35d401604b14da21d0084d1d14cb32810e79104a8bcc934a2ce6c8a77e848c1f46fc46e9f13', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 20:57:56', '2021-07-08 20:57:56', '2022-07-09 02:57:56'),
('6a0f1a1a20cc9c8685f714bfda15d6806d0aba85ffc9895bdd2ce8ee9e6bc38b543a4d370929d7fe', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:56:22', '2021-07-29 22:56:22', '2022-07-30 04:56:22'),
('6dfcf2a6e264f3bd8e905634169cb802ede240ff783b027f6a85f3b34f28c2fadf680d066e4d6021', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:01:58', '2021-07-29 23:01:58', '2022-07-30 05:01:58'),
('6f1232a7db10c6ea0c40928ed6f2ab0e2dbfabc52b36e5bd883332f6ad39a73c479abc5c59190ada', 59, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:45:01', '2021-07-28 00:45:01', '2022-07-28 06:45:01'),
('70cb20ee5bad17b7b55eff3633a46a04cece73c621568ee8978f4aa9db9d6db62357255720703c5b', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 06:47:23', '2021-08-10 06:47:23', '2022-08-10 06:47:23'),
('70ddb7f0fbd6286a34fb318e6ca69ec3cb73e06a763695c75ddc6bd44aa176b67b77fa23a8c43ffb', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:44:46', '2021-07-31 22:44:46', '2022-08-01 04:44:46'),
('71e171bb4c7f65772e9c0610079ec693c86ddae0f3fbb66cade98409fac58e12497703096c038911', 39, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:36:28', '2021-07-27 23:36:28', '2022-07-28 05:36:28'),
('725c888fa78227d8d64507e86d8c0290f5fa18a013c6ea061c6d43b8822d958e5cb4ad43adfc8c0e', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-01 04:47:11', '2021-09-01 04:47:11', '2022-09-01 04:47:11'),
('74819100a0b0ba604bc61da085e4a3e02e4045236b81ceef7fb7618ea5e95a96ad47660c0d95e4cd', 94, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 09:35:56', '2021-08-09 09:35:56', '2022-08-09 09:35:56'),
('75e4326a736ac2008b3168178052a4b78b273f6864b89d79947979104378e55fcb38bfcc4efeaf16', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:20:30', '2021-07-24 00:20:30', '2022-07-24 06:20:30'),
('768cb0cbcfee2b55b40eea4af96216e3a883a0b40a879d9dadade2374c5de1ceab27896d1fba2220', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 07:23:30', '2021-08-10 07:23:30', '2022-08-10 07:23:30'),
('768cb84bc9ba08e582a666b9e58e13eb3b0f7415b7e784fa7cfc5753d66b261b2eb57fb67b93e2dc', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 14:59:21', '2021-08-09 14:59:21', '2022-08-09 14:59:21'),
('77a4e3100063d783b9f9e2b646b023b16d0a465034d4c8ea5774c23c0a00c35a4ec79f5a9d3f8368', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:22:15', '2021-07-11 18:22:15', '2022-07-11 14:22:15'),
('77a8701c005d91b2d6b5b900d20852323237fb22a1d13a33aa5e6edb6a487709c6c7dbea9ecbacad', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:31:33', '2021-07-28 02:31:33', '2022-07-28 08:31:33'),
('795079bf35a76d04ef46a7fbb88b733af5cc9aaa8981d9a549d35f34b9982edd8bd2f046f25f8aaa', 45, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:57:28', '2021-07-27 23:57:28', '2022-07-28 05:57:28'),
('79560de32f4a8625d293565b89f0c8f1ef4d68f0acc2dcb960c6b8ead3563ea1df8161a746d48659', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:25:53', '2021-08-10 04:25:53', '2022-08-10 04:25:53'),
('79cd343eb9c4075285828d440c4d04b814b0139edacb895e1e2e25b9a92ea06bbef3a65f058552e8', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:33:03', '2021-07-28 02:33:03', '2022-07-28 08:33:03'),
('7a19bb747671bc3e06f55406c0cb1d19efc27df16bc625afa692fb232ccb4f4e5ab42a0f17891ae2', 87, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-07 11:18:28', '2021-09-07 11:18:28', '2022-09-07 11:18:28'),
('7a568fa9ab65b5e5eee5db8305e96bf36b22977c376b91c49c6920cc843d5e533d5856246670545d', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 10:51:02', '2021-07-23 10:51:02', '2022-07-23 16:51:02'),
('7aa90bdab2760de8767d7753cabd3639feaba030bed850be00f40627c566abe5a8b7491a4e7b7980', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:53:55', '2021-08-09 16:53:55', '2022-08-09 16:53:55'),
('7b919ddca5b994b3403578413041635357455b641d15393196b1da0ae57fafd1343eec219d6379ad', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:40:36', '2021-07-31 22:40:36', '2022-08-01 04:40:36'),
('7e1f27486400f05689b0f51490af0ee87a56dd52ad363aaed2f3092ec1afe246dd779a6bcb07129b', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:34:54', '2021-08-11 09:34:54', '2022-08-11 09:34:54'),
('7f023c4d3015531b784e568505be1cb20b66afac78c78014654451bfab3c5b9cfd90c97cb0a956ff', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 05:09:32', '2021-08-05 05:09:32', '2022-08-05 05:09:32'),
('7f4e83f5eb8fe96d5776d4beda368cfca2a6abec4720d63abd525eb71f40220b3287721bc153399c', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:40:50', '2021-07-28 02:40:50', '2022-07-28 08:40:50'),
('803d12eb00e5c5764fada142b7f51f54a38c99f29103c1b1185e32f7bb49de0ddf9da14dfbd8611b', 68, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:06:06', '2021-07-28 01:06:06', '2022-07-28 07:06:06'),
('8107ae70eae1e56f7979bd5561860891f9a1b9e2ba7f2bbbf1ec6e6c44b3c6f2cf914b56572f7500', 52, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:35:25', '2021-07-28 00:35:25', '2022-07-28 06:35:25'),
('81b06467c50bb1064d1d0b63ae9e7cba3508022a544b3020a0bc19778b00ff26e5d0160be51164e5', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:59:29', '2021-07-29 22:59:29', '2022-07-30 04:59:29'),
('82df35dde5f07c011e026f4e7d007a2e1be78168561d0c1d57baf2afb985803446f86f2710489c52', 90, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-08 05:27:57', '2021-08-08 05:27:57', '2022-08-08 05:27:57'),
('82ed3c5a08bfa8ec0f979eac81db906dceb9f034576fb4e4a1ab734130f94ec3d020cf9f1c9463d1', 48, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:30:28', '2021-07-28 00:30:28', '2022-07-28 06:30:28'),
('83eda92486347ab89133b11a81c602e492467483b5202826b4c011efbf24aab707364f1691985fab', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 05:20:12', '2021-08-03 05:20:12', '2022-08-03 05:20:12'),
('84c0b406234cb1bb7631f2b6cd82cffaec004a26fe5d6af51c2c3644a7797340005c848496f2eff2', 31, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 07:44:42', '2021-07-11 07:44:42', '2022-07-11 13:44:42'),
('86fcb55fc8af44f258d6e122b3851e7421825087e570989c064185c7c2eb1fa34ba7f20617eaae46', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:17:32', '2021-07-28 02:17:32', '2022-07-28 08:17:32'),
('882918592cb2c6eba6e6a8a24ad85f048f83575069a941527ada8d3f7faf986ab700c2492ad2565b', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:48:46', '2021-08-09 16:48:46', '2022-08-09 16:48:46'),
('887c093351d30a25c0dff8146f1ff3f7afe733676b01d5f661304bd11e06a536519e55bfd709e772', 79, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:23:36', '2021-09-02 09:23:36', '2022-09-02 09:23:36'),
('89e912e4388cd851a48a68abe0ed5ed10bf0871b8cfe7fbe16929b8474c85c3ac7f9ea47015c9e7e', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:59:24', '2021-07-22 22:59:24', '2022-07-23 04:59:24'),
('8a4c8c2711876888decbb679a2cfa1cd8e6674b6f737a9be154f8cec6e7c18b7e55ecbefc3bd7840', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:58:08', '2021-08-11 11:58:08', '2022-08-11 11:58:08'),
('8a6d99dc45f21a449bf0a5afacde146e9afa3ebfe2849fd91efc18037725ee019ea53578f074d379', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 13:12:10', '2021-08-07 13:12:10', '2022-08-07 13:12:10'),
('8adf203c06c1f9a3b2dcb86a5fb632dd50ffadfd27e1d089e86b0f2de29e50128c8d409e8084c47f', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:42:56', '2021-07-28 02:42:56', '2022-07-28 08:42:56'),
('8af36ee9b5f450874017ed8bbd42f242bb6efe41a95b39a1546256a80a977c8e1a407d57fe15a0b4', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:55:29', '2021-07-29 22:55:29', '2022-07-30 04:55:29'),
('8c388350281d8d0d1506e3efc4043dc25e7cad33e18132eb4cda8ab2168bba892196383539ad11fa', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:27:49', '2021-07-24 00:27:49', '2022-07-24 06:27:49'),
('8d0ec14733d63e797e0b5d6eba6a6227a38857bb7863694cc4535404dc7b265f581cc141e6aa1d23', 28, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-10 19:54:23', '2021-07-10 19:54:23', '2022-07-11 01:54:23'),
('8d3fbdf46a7964b534504a4dca1c4d8ccfe22713352b596e63da2f5b9d52f1db5cd2232a624fdaa0', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 12:00:17', '2021-07-12 12:00:17', '2022-07-12 08:00:17'),
('8e8fec187817d53946e3dc9114172842e4d049b46d235259ef55cb55ac3975bfb34904c5b5a08a5a', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 10:31:03', '2021-09-03 10:31:03', '2022-09-03 10:31:03'),
('8eb15ca54ed1d6c38cc1222518cb2494c907eaef7db7c310633f02b72c15703ba6acbbd963280ada', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 07:10:21', '2021-07-28 07:10:21', '2022-07-28 13:10:21'),
('8f2aac9b286e852462b292c4a425935b4fe0e6cfa71fc502a1fe7940a974bb5a09d3cdd0bff3e37d', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 14:08:30', '2021-07-12 14:08:30', '2022-07-12 10:08:30'),
('8fe55ae28bf505d339491dcbe5daccd688346ddd65fa1f8b8c7fcdeb807faac14228093ea560d1fc', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:40:05', '2021-07-31 22:40:05', '2022-08-01 04:40:05'),
('919f62223495bd01b5cb3b0d33cbc61efd581e16b5a4de060735fc44cfbe98813da586586d9034e5', 47, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:28:42', '2021-07-28 00:28:42', '2022-07-28 06:28:42'),
('931cbf3f8babef90305979cc126a07bfc56d562509dcf2245f137dbb36ef47c184fd411f674e3dd2', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:30:16', '2021-07-28 02:30:16', '2022-07-28 08:30:16'),
('944decc955c85256d078bec6da6d62496e5a646f99a4615cf764453758452fdb28951a124ebee00d', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:18:57', '2021-07-28 02:18:57', '2022-07-28 08:18:57'),
('954e82648af179a2c06186e5259c22cc9359bd0d1b5eb662edba05ad8174d8aff82b233c7d716b73', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 07:55:05', '2021-07-28 07:55:05', '2022-07-28 13:55:05'),
('955046d275a790239b301804d4e95821ac06d05b3fd7afa0631ef70cb1d0341764cfd9d8749407ac', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:29:59', '2021-08-09 16:29:59', '2022-08-09 16:29:59'),
('965e6607b26c8fe1181e94727e634f62725e3d93f60f37df1eed25613cd940569fff5a578d814410', 7, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 19:07:11', '2021-07-08 19:07:11', '2022-07-09 01:07:11'),
('9714ddcf305f67d0cc0bfa6fb2039f2d424e55f18bf25a295190d54869b6e9ece2a2ba87c2f80d2e', 97, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:21:11', '2021-08-09 11:21:11', '2022-08-09 11:21:11'),
('971670e9daaad2715987912b24a05d0cbe35d952ddf8e43a1df59ba6a9d746128fa0d80bc62d3507', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:46:42', '2021-08-11 11:46:42', '2022-08-11 11:46:42'),
('975bb800234f20358cefee3f532a6900faaee26c4a534b2a1b6feb6f73521f1081871f94e138b6e4', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 23:38:59', '2021-07-22 23:38:59', '2022-07-23 05:38:59'),
('9775cc46357b64dd408f70df049502122ca55f275cc947356aa575d06b1e9000523c604fe4ec2793', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-30 09:09:35', '2021-07-30 09:09:35', '2022-07-30 15:09:35'),
('97b8cd9275c06b1743a05f5b85d1a099389ffc3ada2de80ec7be50b38e258b823a92af062d3974ea', 40, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:37:49', '2021-07-27 23:37:49', '2022-07-28 05:37:49'),
('9848fb1109cab49c6d50aed637fe8bae8b731c6c2a41410aadb017a99be0dee03cbaad81ffd0b09c', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:33:07', '2021-08-11 09:33:07', '2022-08-11 09:33:07'),
('985c86de8e5b8d76ab66221382a5db1bfc2548e4a9a91f3bff27216bda59acede5d87fb2e0e7fe4e', 82, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 03:56:08', '2021-08-05 03:56:08', '2022-08-05 03:56:08'),
('987a0c3243eaec27b761cf699e82c9ce7af3a3a863c3e3408eda6ca9d39e7b3db5e6367e7a452b38', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-14 01:19:18', '2021-07-14 01:19:18', '2022-07-14 07:19:18'),
('9abaa18d8b61b27dd628793684d68e5acfc7fa491522971bfa8c8cfbd2417eda2e0f7db64dea2d5b', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 01:14:59', '2021-08-07 01:14:59', '2022-08-07 01:14:59'),
('9accafe12eb6feeb0715fff14713f6073906eae55eb6c82f348d859dcaf745d8bbed1c72eabe90b5', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 10:48:22', '2021-09-03 10:48:22', '2022-09-03 10:48:22'),
('9af3b7409619c6a6e5f8f0d917b4e81e0d8401a9ef19cd452f6c985259f2c79a91fd87c85cfcc6ca', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:42:47', '2021-07-29 22:42:47', '2022-07-30 04:42:47'),
('9b0d8f9c8cb454620fd904aff966d683f70ea3db059d8af2b45957442b2840feaa2099472a239780', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:36:21', '2021-09-02 09:36:21', '2022-09-02 09:36:21'),
('9be19860fdcd0c0e3990a16488ac618654ee85aaab398ba9ff71dd2ddda9f284550d4b7c5dee821f', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-10 19:54:06', '2021-07-10 19:54:06', '2022-07-11 01:54:06'),
('9bee34e41301c3420dffa699bab42b7ca72ae46348bdfdb2c5db02f378902b08668fd9a22d49aebc', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:38:57', '2021-09-02 09:38:57', '2022-09-02 09:38:57'),
('9ccefee5948b623dd85aac1a5adecf8ea55d84c3bb631104f88346dab3ff50af1b4315d32457451a', 105, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 12:25:47', '2021-08-31 12:25:47', '2022-08-31 12:25:47'),
('9d64fd06f6030e7de781f4841fcb0b8b41f5d2f26fcd09d90ce1039c6af93ac7a82cd28f9beab782', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 06:01:17', '2021-07-04 06:01:17', '2022-07-04 12:01:17'),
('9e5b79eaedf8c89b3e9ab85360f1addd96fad4fb6bc1d375069e797e03c9299482f85cde299fe569', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:07:22', '2021-07-28 02:07:22', '2022-07-28 08:07:22'),
('9eb7c524e59f376beb90225a562167509060699773a9ee8468718c226041d529daab01d548d139d5', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 05:25:22', '2021-08-09 05:25:22', '2022-08-09 05:25:22'),
('9f199de0cb2db5a843c51fa581f897d323374f860af0cb9b195e6e9fad6ffdbf414563746357a9f0', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 10:15:30', '2021-07-22 10:15:30', '2022-07-22 16:15:30'),
('9fdf6847a049326449796703db7d333e6ea2591d5d973306014b4f5a7821bc13d8035f4da6f5e3a2', 66, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:57:52', '2021-07-28 00:57:52', '2022-07-28 06:57:52'),
('a10b36b25ffbf9babbe2d20625c4d58e9d91e957bddae22fa88dd3cf1b5203674fc0c7f481d93079', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:10:11', '2021-07-28 02:10:11', '2022-07-28 08:10:11'),
('a126fbb1f0b7f90d32432f40e098c490dea72064846924a118a7812570910c7d231d4a3e03163e5a', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 08:00:35', '2021-07-28 08:00:35', '2022-07-28 14:00:35'),
('a14cab11a71e6f9e46a5e7b0edf4dd6d990eb97695b3e8d57505f9120acf56382a3507e9060948f2', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 18:24:06', '2021-07-04 18:24:06', '2022-07-04 14:24:06'),
('a19369407893ff64c1fb21d822b6b401aa37539ab08ed746bd5a4defff33367e28d8491e91669469', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-06 11:26:34', '2021-09-06 11:26:34', '2022-09-06 11:26:34'),
('a2114010ed6f46c37eb7ff7a4bca78c075b4e9eeef64a42f7e023cf019b73f48386ac2cb3c3a37db', 87, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-07 14:05:05', '2021-09-07 14:05:05', '2022-09-07 14:05:05'),
('a22ac07e012cf385a179f07d18e0b71a15b9aab61051c01c589435cec487e13cc8ae13293699914d', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 03:10:54', '2021-07-23 03:10:54', '2022-07-23 09:10:54'),
('a3246a12415abf9cae878f1c76d3bf75d8135f6dca866d748e7ad56b498f5be7ad627be079fb7b2f', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 18:51:13', '2021-08-31 18:51:13', '2022-08-31 18:51:13'),
('a3576b6b0d190d7e1971aa1a2c7bf7213751b4180247ebbe8a3c6c989d3f4e2b4c8424b4affc067b', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:34:57', '2021-08-10 04:34:57', '2022-08-10 04:34:57'),
('a4a591a595ecc278635fc6f52b210972ca292652654d725a0fbe2b094122c12f1305b08ef8168d85', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 07:11:02', '2021-07-28 07:11:02', '2022-07-28 13:11:02'),
('a53815f6b3785bb0cc706ad7a7c84b7897cbd4f0473d3fc7bf3b8c691dc7ee77b376a373d22c4b16', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-14 23:32:48', '2021-07-14 23:32:48', '2022-07-15 05:32:48'),
('a5610229116bdeebc04868707182cace49b29875438aa73684d2cdb4f7e1186c9510fc0dffb5a49a', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:53:02', '2021-07-29 22:53:02', '2022-07-30 04:53:02'),
('a5bdca3d6fd376ce6eb92e25616a1ef094895c018f66f9ff46d1eb2550febd0d262c5bbb865c3e08', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:45:08', '2021-08-05 04:45:08', '2022-08-05 04:45:08'),
('a60e124ec75ef75699466443138766e10608f328fb36cf940d525f375d8df229d43650799329cc9f', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-02 01:55:39', '2021-07-02 01:55:39', '2022-07-02 07:55:39'),
('a656bcd0c837e483cabaa8a332c0459f17a94b70926eeccafc40f9537c41dd03ec629af152f8f7bc', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 11:01:57', '2021-09-02 11:01:57', '2022-09-02 11:01:57'),
('a659c7ea1103a9ea9b355588b61cda43aa6fa615f95511474a8c4f7cbf6e4aff5825cb19cb662170', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:09:52', '2021-08-11 09:09:52', '2022-08-11 09:09:52'),
('a7ddab06270ea9e0649f086e9bea3a951da80c0e281783ebda55b9be59e0f9c6ff680da2f13361c5', 104, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 09:11:53', '2021-08-31 09:11:53', '2022-08-31 09:11:53'),
('a9a26dccbc5e0fc86a2fa1e4af7a20bc9106777e20e8b2059c678e4357750c54bf41369bd1a5e523', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:33:56', '2021-07-28 02:33:56', '2022-07-28 08:33:56'),
('aaff81d1e195819f437789e9fc9870f39cc6d266f9929e2b69f6f37da9ce6cc0784111b2aaec03d0', 93, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 08:06:01', '2021-08-09 08:06:01', '2022-08-09 08:06:01'),
('ac49fb69ce8066112692392225f22494a3313c9121ff1a866bd9b7f3a997d1ccde3591c336a1cdc6', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-06 11:24:30', '2021-09-06 11:24:30', '2022-09-06 11:24:30'),
('accf3096a98730b968706d770dcb057b14c45e35ae69cceec15fd36827565f7df3771121ab059bb3', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 05:24:04', '2021-08-03 05:24:04', '2022-08-03 05:24:04'),
('ad1b4c207bd2464adc4f7c747051a765cf4484fb51d29721daa6a735eb14de4cd1b920a0716a76b8', 86, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 06:53:34', '2021-08-07 06:53:34', '2022-08-07 06:53:34'),
('ad2603e29b94ac7026a2669086f69556f8c6262a5e2cbdf24f8dd56af313cd2d2e499167e9c76871', 107, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:30:27', '2021-09-02 09:30:27', '2022-09-02 09:30:27'),
('ae181ff394c619883ee194145d3af2f9d155980c48daf29f88d3ca4897ff8160edce985dc395b978', 6, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 19:06:46', '2021-07-08 19:06:46', '2022-07-09 01:06:46'),
('aeb1b2ad5f2197706ec2473166806945c24c3ef5a4a64f63dbb2992723f1e37b6dab3bde4b6ad4b3', 32, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:25:32', '2021-07-11 18:25:32', '2022-07-11 14:25:32'),
('af10ee6878337c52e7647c02b86ace26bc7306b8a3b50444e4147b0e3b6361a2aaa9168be2a5a66d', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:43:27', '2021-07-22 22:43:27', '2022-07-23 04:43:27'),
('af2b31a9b2c8014a5ad82781499d9d8c4430ccf552f1b1a01fe6fcfefd0f0d856a63dadf344bc935', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 08:56:18', '2021-07-31 08:56:18', '2022-07-31 14:56:18'),
('af53a648d76436b36341ac73c7ac8083bc5d68deef936358ff6d41789c183a166d8e26c926cb6609', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:26:10', '2021-08-05 04:26:10', '2022-08-05 04:26:10'),
('b0fd1f6a29ff88b4ff539af0ffc27bc88b3c870b75332b992abf3c7427009dc490aeb55371f535bb', 87, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-08 05:28:21', '2021-08-08 05:28:21', '2022-08-08 05:28:21'),
('b1881df3126d0a13cbd7ebfebd1e91edb41ccf07d38a4786d3e2ce2161780cf202eabe0f553a5464', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:43:23', '2021-07-29 22:43:23', '2022-07-30 04:43:23'),
('b2639c541b740a9cc7fcc1f2555007e636248971af936afb9ca4f04bda2ed000853552e12ed172cc', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:27:27', '2021-07-11 18:27:27', '2022-07-11 14:27:27'),
('b42b6a1ec53fe34aef39034ac31956e0e64ce9c5c0f9acbf356bfea274d231e0fb0ee5e7a0bb47ce', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:24:24', '2021-07-24 00:24:24', '2022-07-24 06:24:24'),
('b69619971aeca742bb3c0ad999bc3f7895a558c333a742b7799bcaa88a90638225eef9c47ca30f33', 38, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:31:26', '2021-07-27 23:31:26', '2022-07-28 05:31:26'),
('b6b5d79fde46616dee5687c4b5efc28ff72da48a2f9ada5ac551020260114bbee8af94f1c29f8c87', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 08:27:14', '2021-08-11 08:27:14', '2022-08-11 08:27:14'),
('b742db377ad6069f76c00bfd42d894178e5c517f2ed4ff532cb647ad15b0fa73130c8ff9e87bd630', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:17:39', '2021-07-28 02:17:39', '2022-07-28 08:17:39');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b7e1a5a45ed37fed90d29f4f7ebdebe880f5e822a8d55f434f9c5e3785f5237cb7ebfdb93856abaa', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:41:25', '2021-07-28 02:41:25', '2022-07-28 08:41:25'),
('ba7be24d61a5ba11a8ab11de10fb126f53e827ca69dbd89634d759ac3b6a2941741fda1fd5739ec0', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:49:16', '2021-07-28 02:49:16', '2022-07-28 08:49:16'),
('baffa2b08ebec2b5fb7236e2aaebf25cbaec415ebf41f08ed1d3b450f15d34cea859d7c3c6b1341f', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-01 20:17:37', '2021-07-01 20:17:37', '2022-07-02 02:17:37'),
('bb210077a62187893a4b7d061495e916d572793cd9444ea14f43d9321be3ce285e3a79a5eb41b6a4', 81, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 07:53:54', '2021-08-03 07:53:54', '2022-08-03 07:53:54'),
('bca04d9140fb02eb96a7627ec6e9c8bbf2a5412b453c7edbfe6dc09331f839259b1fa2b3377962c6', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:38:32', '2021-07-31 22:38:32', '2022-08-01 04:38:32'),
('be625b33ab463c1cb0f108b489185f6bb2a5f89562e57a0ff286891ea9ca9252477d974c6b68eb6c', 55, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:42:31', '2021-07-28 00:42:31', '2022-07-28 06:42:31'),
('bf12179bcf7d11a9673d60eb133a707b7d5a72b878cf2c5421247b5181aca80a1a201a183eacb9cb', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-07 12:38:13', '2021-09-07 12:38:13', '2022-09-07 12:38:13'),
('bf2189b89f81fbb6a8a3b769aff518046986f5c74a712a2e104071c96c971790bd05dfe694817d06', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:26:57', '2021-09-02 09:26:57', '2022-09-02 09:26:57'),
('bf71249bd4e54901d7ae383df315e3ff1df147658424ba5683cfed7a6e67a347919a576f2a245b58', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-02 00:06:48', '2021-07-02 00:06:48', '2022-07-02 06:06:48'),
('c018b4e890c584c4096dafbfec87df8cc2adf33665ace2f1118728415a51b37227f950de27330dae', 99, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:28:41', '2021-08-10 04:28:41', '2022-08-10 04:28:41'),
('c0c69dcbb3054f027c7b6f3822cfb15cb35c582bf51c4ac0c9d6c64c6cb6a8361d62ca85cf6a4a00', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 10:33:28', '2021-08-09 10:33:28', '2022-08-09 10:33:28'),
('c1e0d147d9661c7f39ea2066ebb97b744cf028afbd46c8102afb60f553a310c8f5bb52db2bfafdf9', 1, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 04:16:20', '2021-07-04 04:16:20', '2022-07-04 10:16:20'),
('c2d637f969fbe8bd1a0821c5dd7737caae503a9af0f1ec897ed074cc9de5e4e1cf89489ea1190e7d', 92, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 08:04:51', '2021-08-09 08:04:51', '2022-08-09 08:04:51'),
('c2e47def59024c855fe0d084c03534b698967a97d618e9e75065979a8962e0939332a286568cab56', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:42:48', '2021-08-11 09:42:48', '2022-08-11 09:42:48'),
('c32e3ba6085007e2025a11c200bf6874a2de0842e3f54c8433cb62443f278d95e2f9dc20e4fb8300', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 07:43:15', '2021-07-28 07:43:15', '2022-07-28 13:43:15'),
('c35acb1927bcb3baa76ac5c203fdcf65e01629bef4c61bc7e6dcd76302e41d3842a82ace4c9e83d4', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:22:14', '2021-07-24 00:22:14', '2022-07-24 06:22:14'),
('c3b3f9d95efbd5cf13f3175504d2ba70f17ede855b7b01578c8d56158bc27d7241ff10bbd50f3973', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:23:21', '2021-08-11 11:23:21', '2022-08-11 11:23:21'),
('c42823c32609102c0c50ffefcc0d5530572418ab70e33ce5f47e89fd01decf5a86fe44ee09125d63', 78, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 05:58:41', '2021-08-03 05:58:41', '2022-08-03 05:58:41'),
('c477582aba5c6ac50ec75ab16f06689a777bf477a119b3d3923ddbf993d6e060d494a0cf1aaf057e', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 02:43:12', '2021-08-05 02:43:12', '2022-08-05 02:43:12'),
('c4e20e7291c742945c738d7349fc6f6d79bff065fc114fd6fa7ab8f28cea17bc1c9317937423a8c8', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 23:59:49', '2021-07-22 23:59:49', '2022-07-23 05:59:49'),
('c4e32c3a530be35cbb6dc986cac95c4e75a9f52b512726af4493c35c075a7af7e668f8e673797dec', 74, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:29:53', '2021-07-28 01:29:53', '2022-07-28 07:29:53'),
('c4e874040c5b4dbf6b043694b35397fe36a8a66ff1cec46259a8161490ae8c5ee4b11ecc3a935d83', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:04:41', '2021-07-29 23:04:41', '2022-07-30 05:04:41'),
('c567ecea1afa7ceea7f59ac7d30ff0fd81a0648edc0eb21732305861313d2b87418320c05102fec7', 94, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 09:35:44', '2021-08-09 09:35:44', '2022-08-09 09:35:44'),
('c68dc2a0d3641aa0e92834f5e4f9bf266e8ea9f125c98509fd62e69371c1ca0592042e51bab4efae', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:58:18', '2021-07-22 22:58:18', '2022-07-23 04:58:18'),
('c6b868467f6b0dd04a02291fa5a50f33fccded8f8b44b2766eeab2c4410907d07e98f9eb06ac2681', 60, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:45:46', '2021-07-28 00:45:46', '2022-07-28 06:45:46'),
('c761f35734dac0de39722b106d6b59ab8911dcfd346f91b2e5f7d6418e8fdacf8c215d6e16e14f63', 99, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:28:01', '2021-08-10 04:28:01', '2022-08-10 04:28:01'),
('c84797a689c975512e91309449955e87b97d097c7a948eeed50103a8b92c94feb2d07957d634bb39', 88, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-07 15:40:46', '2021-08-07 15:40:46', '2022-08-07 15:40:46'),
('c92ea174b1fa3e0248c7e08948a859acb0237c1572a8a069438a491f35abb34f8e27d908f253789f', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:57:25', '2021-07-29 22:57:25', '2022-07-30 04:57:25'),
('ca2bf7441b66496fc3a7cd47c14611fe34440b35f7949589d7fcfc6f31bafdec482f1f9a2383ced7', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 03:05:20', '2021-07-23 03:05:20', '2022-07-23 09:05:20'),
('cace075e54a86c2f3ac133b18d77e46c4ef31a33b65c24ed9e72f9c7cf3f1b01aab09af45efd2a75', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:03:15', '2021-07-29 23:03:15', '2022-07-30 05:03:15'),
('cb37b85cac48cbe189cd241ae612abcbf368acd428ffb5202368b29b55addd63096544df55f1e8e4', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 20:31:03', '2021-07-08 20:31:03', '2022-07-09 02:31:03'),
('cbe548fd650ea6a30f020edd95c5d4f3b6a5a90439525d87bf1ec6a7c72246b7b8f1efb15a5f1274', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:50:21', '2021-07-29 22:50:21', '2022-07-30 04:50:21'),
('cc0bfd393dc1eb14ed912afa7f14d11bd208da9600d179e3fde7bf0b60f7af40d398ef3bf19a681d', 50, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:33:04', '2021-07-28 00:33:04', '2022-07-28 06:33:04'),
('cc625fb7dec45f50f4c765476a9ad218623338286377e79264ab94ba949807fdb9bf85a56cdad0fc', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 09:10:34', '2021-07-31 09:10:34', '2022-07-31 15:10:34'),
('cca79c619afffac6c6a71e14f0e0b2b052207221bb3c69b254132f71951eb2718a0c4558a2c80381', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:36:12', '2021-07-28 02:36:12', '2022-07-28 08:36:12'),
('cd59afb2737484fc5da3d116f69d553975b3db59ade3626d1ec4fcadf265a86d2af24cf49f16258f', 62, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:48:13', '2021-07-28 00:48:13', '2022-07-28 06:48:13'),
('ce014344b04950c730a3ed44be7c755db678cb5a27df39fda593d0e52e67d44902dfb2ba46da4806', 91, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 07:31:04', '2021-08-09 07:31:04', '2022-08-09 07:31:04'),
('ce15adbfbe6b71cbdd8accc872f6f956a33f6b5199f2a6f52b9c12e2962ba25eb2d2d34b5c7e5b7c', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 07:57:18', '2021-07-28 07:57:18', '2022-07-28 13:57:18'),
('ce8fddedb784c130fe6e42bb5261f71096e7fa41b83794fd4ad544abc18fa4b704f7a417ab47f380', 87, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-08 05:28:44', '2021-08-08 05:28:44', '2022-08-08 05:28:44'),
('cfd754542f5e5a95b5d0122d3f169080d27d431c68f74441d120a8557be9d93e02a565bbe19ab9e4', 84, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:18:26', '2021-08-09 11:18:26', '2022-08-09 11:18:26'),
('d1ac9a824f9ecb030790f4fe0bd40654b804d11f1df1f1b48a659e5dfc9a6250dd3acf7ae62eadd1', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 07:59:56', '2021-08-09 07:59:56', '2022-08-09 07:59:56'),
('d34985c1e3338ee299a9c90066c211a338c0d4b53f39f7722cb7738d3870d0761ccdac3af329c795', 41, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:38:56', '2021-07-27 23:38:56', '2022-07-28 05:38:56'),
('d3cd49fbcf841d035c7b9d43d7d0c598ac296426210a6e5afd37e5e46a0909b2cc3f0040e4eb51cf', 26, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 10:24:01', '2021-07-09 10:24:01', '2022-07-09 16:24:01'),
('d3fd692580c2804ff331d7de74d927be69249a0e1b020ac9c07f9fa8b9624dd9284dac200ad60ca1', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 09:48:20', '2021-07-31 09:48:20', '2022-07-31 15:48:20'),
('d4f20965ac78c213d00b1ec27e5167bd390d4a222bec7153d50491c5eccab7ae5609f74d0f38de21', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:59:52', '2021-08-09 16:59:52', '2022-08-09 16:59:52'),
('d5122e38edaa4556d9b3d551506cf107517670a8e27f66090d60300efb180cf55d331c4625b56354', 97, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:56:08', '2021-08-09 11:56:08', '2022-08-09 11:56:08'),
('d612c8e6386b90a6d492ffff5299adc05253584d315cc4099263dcc35ae5529c0f4de2db423af4d6', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-02 10:31:05', '2021-08-02 10:31:05', '2022-08-02 16:31:05'),
('d7e003a810949091a3483253196470b90419823223d295cb2e6f599af6dcaae33cfda2403c74aa3e', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:44:35', '2021-07-28 02:44:35', '2022-07-28 08:44:35'),
('d85888f38ab4d2723b2e6ef61094d722e10b1bfaf5b9a9942231aab32599a7060eb369254563fa1a', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 04:34:45', '2021-08-05 04:34:45', '2022-08-05 04:34:45'),
('d96973a67a260380fae25fcffaabafc18aa977a077fc8d75577814aaa4c2b787578a650029568953', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 22:36:53', '2021-07-22 22:36:53', '2022-07-23 04:36:53'),
('daf4455638be04d2ad5a3e9a75e80ddc7ab6d678e966b0c569950cf47f1cdd96a6ecdae98f99ec29', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-04 12:02:53', '2021-08-04 12:02:53', '2022-08-04 12:02:53'),
('db2e87575c9a12a47d86308ea833f610cd439a671e6c347bd530eaae0b06113ee7f7da81c7794047', 24, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-09 08:02:27', '2021-07-09 08:02:27', '2022-07-09 14:02:27'),
('db7fe735ac2fae861fc43ac734bcf96e1e6fe740ac3314a13f9994b3a06d881a0e70717b2aa95bbf', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-06 12:37:19', '2021-09-06 12:37:19', '2022-09-06 12:37:19'),
('dca4ca49209f1b47a2e82d1633a8428dce84a663840336225ee3edb0b21d79435fd8cb7b2fdabb79', 96, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:15:36', '2021-08-09 11:15:36', '2022-08-09 11:15:36'),
('ddc428cb181c9f15343db1560b1f0d820e91ccb676874be43cd05172a21a371a96f1cc0312562a1a', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-08 11:09:28', '2021-09-08 11:09:28', '2022-09-08 11:09:28'),
('ddd8f8e2ab6745113a914919b326761968dfdf94724c813d7b793a77b9f48ccfbf9f772de7dc12f1', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 23:05:44', '2021-07-22 23:05:44', '2022-07-23 05:05:44'),
('dea21bdeb88805a556980a9e1f5d55ee8657a6615546f1f798abcb18a3b54fa17a8e15f3dc456b67', 3, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-01 20:39:35', '2021-07-01 20:39:35', '2022-07-02 02:39:35'),
('def13ebf0042a30d81c0047acab27625cfd9a04a6a3f4bbb8174fbd758a762c46e59e444fd1ab995', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-01 10:39:14', '2021-09-01 10:39:14', '2022-09-01 10:39:14'),
('df7e104901991d24105236231af817e83b55351c0f918223b29fa98638fb603ac36d43d1bdee9682', 56, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:42:45', '2021-07-28 00:42:45', '2022-07-28 06:42:45'),
('dfa52b5fdb7438dffe6bd1d3618b1c5240ffcaf63dc98b8d0b27b23668510146f12546651c87ab17', 51, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:33:18', '2021-07-28 00:33:18', '2022-07-28 06:33:18'),
('dfa76876561a6dc64bbd3548c5f8957134fa36ed8e9934157d06d4d32be7551e7c3f2d730b7b3334', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-31 09:08:53', '2021-08-31 09:08:53', '2022-08-31 09:08:53'),
('e1b42becf449abdb043414dd05ce60ea3e7ba72869f40b5ad053c2b19ebdc7d83836e9ebe2072701', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:33:08', '2021-07-28 02:33:08', '2022-07-28 08:33:08'),
('e29d48115d1dc8fa4ae1ed39bd06d49883f0f746c61eb69a94f1d3bb412cc8e756dbe789902b97f2', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-23 03:08:41', '2021-07-23 03:08:41', '2022-07-23 09:08:41'),
('e2cbd4d2f5ce19c14478a553d362acafb3e69e2b24d41be49f62001d936dfe36c0e896542e8ad21d', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:55:21', '2021-08-09 16:55:21', '2022-08-09 16:55:21'),
('e2f70a04070437c69feed998e8854e402d0c6ddc5a84baa2f3fc2bf0edd4eb2fd98735436fff3976', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:02:30', '2021-07-29 23:02:30', '2022-07-30 05:02:30'),
('e310dabfffafe4768fe3e17e59084ce5bb848f01c1fda394f28682fcf9e5d17e30b5a9e47b15b51e', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:47:40', '2021-08-09 16:47:40', '2022-08-09 16:47:40'),
('e3452cb0bd7d7f65495a409d2cb536e0e6493bfaa1f8722df49c1458eae861a2155e1c11c5d34508', 42, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:52:08', '2021-07-27 23:52:08', '2022-07-28 05:52:08'),
('e368196b421e0788977d3771794e20515eac29b2bf75904191bf79d9a38e9f2791f3276ae00ca8f7', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:23:23', '2021-07-28 02:23:23', '2022-07-28 08:23:23'),
('e3fa5f93e01b194052d0ad7cadf166e2cfaff755ab7c694055c393b9cd02a4bbcd07baed99f2604e', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-04 15:12:14', '2021-08-04 15:12:14', '2022-08-04 15:12:14'),
('e4159ca3f328a3d4b984e860657159322b9c7bdaed029ae484d5502f356fc768a9e049e15fd2dcd4', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-02 18:48:15', '2021-08-02 18:48:15', '2022-08-02 18:48:15'),
('e4d0cfa8bf776b7b8069836c131b82eed0ccbb871a417cc9b364e86479ad69cb2ab6ce188247c5c1', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 18:33:44', '2021-07-11 18:33:44', '2022-07-11 14:33:44'),
('e50a3bbdbe7459c70715f252daa09ad66869c81bc3eb6868de88889472a13479ac83756ae4df337c', 97, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:27:23', '2021-08-09 11:27:23', '2022-08-09 11:27:23'),
('e571a8e1d29e02cd5ca15446297588882a47fb1fa781190c508eb7a4956a2367a04866c59fcebef1', 29, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 07:43:03', '2021-07-11 07:43:03', '2022-07-11 13:43:03'),
('e58fb1ee088f351e553137b05854830f26d81103e6737596d2bd82d1570779ae9f5883fed31c2af1', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 04:24:16', '2021-08-10 04:24:16', '2022-08-10 04:24:16'),
('e66e3c522175833c9e0ba78ec0435b38e852113db6a9dd5cb80e9274950d2d62a8473510350ffc15', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-31 22:45:58', '2021-07-31 22:45:58', '2022-08-01 04:45:58'),
('e76c3617c53a15320667e9338d36e480ecbed31c5322fdade4887a702fec6c9e0fe1a47924b03440', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-08 19:30:45', '2021-07-08 19:30:45', '2022-07-09 01:30:45'),
('e7a28f473038fedcf6e585e5e2323be1008d636ffb7f0a3c071ca30fa4b6452844115b1cbcb41885', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 03:18:59', '2021-07-24 03:18:59', '2022-07-24 09:18:59'),
('e819e28d0d9ee2fb1fa54c753251d9f8ea54b8cb9908a74f440e6787ded27ddc1cd6c30187004b6d', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-10 07:06:50', '2021-08-10 07:06:50', '2022-08-10 07:06:50'),
('e824e91204a9461af664fc71c3bbe21da4b3a58a5b8272fe5e3b503103ec0942550efc15edf5839f', 85, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-05 05:03:07', '2021-08-05 05:03:07', '2022-08-05 05:03:07'),
('e94d6dbc9e8b4ee08b7e508a0e38cf36de93440b18dd38e881410fa77ef0c2187cd9a9b57678099e', 4, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 18:29:58', '2021-07-04 18:29:58', '2022-07-04 14:29:58'),
('e96f4f36812aa4ddfb9be406c13ce9beee1dc7e4c0920c7568fb6584ab1550b8f84a1cf9241fb016', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 03:05:55', '2021-07-12 03:05:55', '2022-07-12 09:05:55'),
('e9bd73f189cbe0f2d9c9f3c7a8a82bc51d503633fcf27aec2d8a6e842c8d51a005fde16cf51006e2', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 08:28:44', '2021-08-11 08:28:44', '2022-08-11 08:28:44'),
('eb1a7c84aef91cdde0b6ccfd1d667293d290d6784b7b680c6e25d41837f94ac742a6dccdefbe9ea5', 102, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-13 07:41:06', '2021-08-13 07:41:06', '2022-08-13 07:41:06'),
('eb7090e57653e672e065baf6310d5685f0d15042d95c512b2d476d34b67ebe97ad1ec004a84561f4', 110, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-03 09:30:59', '2021-09-03 09:30:59', '2022-09-03 09:30:59'),
('ebccccd632f399770818da417198223601b70ed34af6286d8c3de12fc492a96bf6997364a2071dcb', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 11:04:08', '2021-08-09 11:04:08', '2022-08-09 11:04:08'),
('ed989814411185d6f263b9cf63eeb59ea4ce7a5ae6c84e0630a3486db5b6014036369bbe18d8544b', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 08:01:19', '2021-07-28 08:01:19', '2022-07-28 14:01:19'),
('eddae4e86d9e5cb304729db2c750b8e94a55271a3aa0071716e83f544098e41898a7dacce37a11a3', 81, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 07:54:08', '2021-08-03 07:54:08', '2022-08-03 07:54:08'),
('eef862fd400752b6129a0a3f91387d91202956edc432625629c9c18b4af43064624d0c22781fa1a5', 70, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 01:26:09', '2021-07-28 01:26:09', '2022-07-28 07:26:09'),
('efe5a64c813c2f0bd658055874520aa88cd48415a26011783162832ac8c4aae45647a5d4af9edc0d', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 23:00:55', '2021-07-29 23:00:55', '2022-07-30 05:00:55'),
('f010e6565df8c5927f25f31f90a2dd7fc3738350ec0873af3bae16825a5767f39718edbf929ebd66', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 02:31:24', '2021-07-28 02:31:24', '2022-07-28 08:31:24'),
('f0130a883416631ee9a9b30373a9d049324963351a2ccdb796eaefb38f742a65765daed1890dbf73', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 11:40:49', '2021-08-11 11:40:49', '2022-08-11 11:40:49'),
('f04dd65bd4fd88d992f5836ccaae57f5510cb67c4caceb5891583c029c881dca3e44f08225079574', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-22 10:23:12', '2021-07-22 10:23:12', '2022-07-22 16:23:12'),
('f301553997a7d420602efe698092a81d3cb0d08f9db1f7efc88897fbebac57e511e4a1b756506774', 64, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-28 00:55:25', '2021-07-28 00:55:25', '2022-07-28 06:55:25'),
('f33352acc56697cb6ba9a90cec1a4994e2d0cc2d316c33bbcb96ec3f00b4de592efa9ecb156c0aa7', 30, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-11 07:43:31', '2021-07-11 07:43:31', '2022-07-11 13:43:31'),
('f35060d4e21e1e5da02ebddc79321ec01f2bc0cd51d6bcc7b2373b6d005e2ec6d2cbe33a7bf5ab8e', 34, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 09:34:57', '2021-07-12 09:34:57', '2022-07-12 05:34:57'),
('f3a62631f8f6bcdfbeb9c028a47b7ed244509d8751db9cc5113c663be60351e3292c912121267175', 100, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 08:32:29', '2021-08-11 08:32:29', '2022-08-11 08:32:29'),
('f3b13328711f593a1aef4a3e1f3c82422a42ed05ffef97a8cede1b64ec38a59d233dc1f1ebd39269', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:44:54', '2021-07-29 22:44:54', '2022-07-30 04:44:54'),
('f50c005e4dedcedfd2724f7e80ed2e127487e593a7dbf2d4cf7b98b5f80d03da3a54cb5f51522714', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-11 09:44:59', '2021-08-11 09:44:59', '2022-08-11 09:44:59'),
('f52ab063b4e5e51b89c52c00f6cf55d9eaefd61396f83787a5fca4d768324d571ebb9d8de2892d3e', 44, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-27 23:54:22', '2021-07-27 23:54:22', '2022-07-28 05:54:22'),
('f57d3432627d3a5b9c169db155302345c7915578f70a1854d7043cf7bb8bc6e76658362a5b60b090', 35, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-12 14:49:59', '2021-07-12 14:49:59', '2022-07-12 10:49:59'),
('f659812a0caf943859bf21e3fe5d4a1bc42560b0f8aea843eecbc68062ec5307f490a54cc6c67151', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 09:31:07', '2021-08-09 09:31:07', '2022-08-09 09:31:07'),
('f65bc557380f5d0a0edf74ab3bf84bbcb44c91a5dbdfb58362bc5fea54d11d06a5c5abe420963677', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:58:48', '2021-08-09 16:58:48', '2022-08-09 16:58:48'),
('f702a534f5f53f7337d25f86bb7e3840e8c490f170e8f120b253bbf329b7d900162369354265c1df', 4, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-04 18:29:08', '2021-07-04 18:29:08', '2022-07-04 14:29:08'),
('f7bda4ed7a0931f2912a5aa8be357033e8c5e27550823c2944395d7d6fea3f5c011fe8acdfb30d47', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:42:40', '2021-07-29 22:42:40', '2022-07-30 04:42:40'),
('f88b48d922fe70a6c2bea75693ce4771e09e26111758a3a4a213e5f9dd0a2efc76123db203fcb397', 8, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-24 00:57:21', '2021-07-24 00:57:21', '2022-07-24 06:57:21'),
('fa56578ecc332b4352abf23875f051aafea0f2bf9884604630fbe075948fb5c8340f2b866c41fc5d', 75, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-09 16:53:05', '2021-08-09 16:53:05', '2022-08-09 16:53:05'),
('fb5d690528be445075f0c4027d5247396e1dc1871bed2ce4faec6187e1d2b933a36e55d92b85306a', 79, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-03 06:00:51', '2021-08-03 06:00:51', '2022-08-03 06:00:51'),
('fb87b26194fe34f145dbf355cc3a51058aa6c467d5337ecfe3293ef8887283b014f5e98a57980553', 94, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-02 09:31:22', '2021-09-02 09:31:22', '2022-09-02 09:31:22'),
('fc4a06e7e1a98a9990565b49a58c35c179c0dc59ab82a1b1cafcd4b4e34725766d4140cff05ab658', 77, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-08-06 12:20:36', '2021-08-06 12:20:36', '2022-08-06 12:20:36'),
('fee959089153b71ee1f5b9e50d4766d6bdf9b55f7b3c5c9742aef256505b57c731bb18de247a1b32', 27, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-07-29 22:46:47', '2021-07-29 22:46:47', '2022-07-30 04:46:47'),
('ff7656dbbec3b684737cb63dd9bdaa179229c78ce3484101bf8e9e8e1fd22fde3bd742a1673204be', 103, '93cf5284-8472-4ed3-83e6-af29bd08e936', 'MyApp', '[]', 0, '2021-09-08 10:43:19', '2021-09-08 10:43:19', '2022-09-08 10:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('93cf5284-8472-4ed3-83e6-af29bd08e936', NULL, 'SrsFood Personal Access Client', 'vs0eweiZ5eiAdJuvgaOXgDuSpXFY3ekpNDQKr6cu', NULL, 'http://localhost', 1, 0, 0, '2021-07-01 18:41:59', '2021-07-01 18:41:59'),
('93cf5284-8888-4623-a5a6-94f232809e64', NULL, 'SrsFood Password Grant Client', 'CMlnZDTzMREIDM3fQWTiJtUHZvQSEeQpH4GrJqBr', 'users', 'http://localhost', 0, 1, 0, '2021-07-01 18:41:59', '2021-07-01 18:41:59'),
('93cf53c7-5d36-4a86-9df4-8204888a3508', 1, 'sagar', 'k2K4M72r2PYcVtVgpfIrlerhIYCGbWIyVG3j697D', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2021-07-01 18:45:30', '2021-07-01 18:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '93cf5284-8472-4ed3-83e6-af29bd08e936', '2021-07-01 18:41:59', '2021-07-01 18:41:59');

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
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_value` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd_charge', '100', NULL, NULL, NULL),
(2, 'd_time', '5', NULL, NULL, NULL),
(3, 'gst', '20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_charge` double(8,2) NOT NULL,
  `gst_charge` double(8,2) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_type` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `outlate` bigint(20) UNSIGNED DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `guest_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `d_address`, `d_charge`, `gst_charge`, `date`, `time`, `created_at`, `updated_at`, `deleted_at`, `cart_id`, `order_type`, `user_id`, `outlate`, `status`, `guest_id`, `order_id`, `amount`, `driver_id`) VALUES
(191, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-05 00:00:00', 6, '2021-08-03 05:25:05', '2021-08-03 05:25:05', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(192, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-05 00:00:00', 11, '2021-08-03 05:27:38', '2021-08-03 05:27:38', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(193, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 10, '2021-08-03 05:43:53', '2021-08-03 05:43:53', NULL, NULL, 1, NULL, NULL, NULL, 47, 0, NULL, NULL),
(194, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 10, '2021-08-03 05:53:20', '2021-08-03 05:53:20', NULL, NULL, 1, NULL, NULL, NULL, 48, 0, NULL, NULL),
(195, '{\"pcode\":\"street 45\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 9, '2021-08-03 05:57:58', '2021-08-03 05:57:58', NULL, NULL, 1, NULL, NULL, NULL, 49, 0, NULL, NULL),
(196, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 9, '2021-08-03 07:45:58', '2021-08-03 07:45:58', NULL, NULL, 1, NULL, NULL, NULL, 50, 0, NULL, NULL),
(197, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 9, '2021-08-03 07:49:23', '2021-08-03 07:49:23', NULL, NULL, 1, NULL, NULL, NULL, 51, 0, NULL, NULL),
(198, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 9, '2021-08-03 07:50:05', '2021-08-03 07:50:05', NULL, NULL, 1, NULL, NULL, NULL, 52, 0, NULL, NULL),
(199, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 9, '2021-08-03 07:53:28', '2021-08-03 07:53:28', NULL, NULL, 1, NULL, NULL, NULL, 53, 0, NULL, NULL),
(200, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-07 00:00:00', 7, '2021-08-03 08:15:52', '2021-08-03 08:15:52', NULL, NULL, 1, 81, NULL, NULL, NULL, 0, NULL, NULL),
(201, '', 100.00, 20.00, '2021-08-08 00:00:00', 12, '2021-08-05 02:43:52', '2021-08-05 02:43:52', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(202, '', 100.00, 20.00, '2021-08-10 00:00:00', 13, '2021-08-05 03:12:20', '2021-08-05 03:12:20', NULL, NULL, 2, NULL, 2, NULL, 54, 0, NULL, NULL),
(203, '', 100.00, 20.00, '2021-08-09 00:00:00', 10, '2021-08-05 03:25:12', '2021-08-05 03:25:12', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(204, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added for today, thrusday\"}', 100.00, 20.00, '2021-08-10 00:00:00', 11, '2021-08-05 04:42:08', '2021-08-05 04:42:08', NULL, NULL, 1, NULL, NULL, NULL, 55, 0, NULL, NULL),
(205, '', 100.00, 20.00, '2021-08-09 00:00:00', 10, '2021-08-05 04:45:44', '2021-08-05 04:45:44', NULL, NULL, 2, 77, 2, NULL, NULL, 0, NULL, NULL),
(206, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-09 00:00:00', 7, '2021-08-05 04:50:19', '2021-08-05 04:50:19', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(207, '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"25\",\"note\":\"some notes\"}', 100.00, 20.00, '2021-08-11 00:00:00', 11, '2021-08-07 11:46:56', '2021-08-07 13:13:23', NULL, NULL, 1, 75, NULL, 2, NULL, 0, NULL, NULL),
(208, '', 100.00, 20.00, '2021-08-09 00:00:00', 11, '2021-08-07 12:20:56', '2021-08-07 12:20:56', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(209, '', 100.00, 20.00, '2021-08-12 00:00:00', 12, '2021-08-07 12:32:46', '2021-08-07 13:25:15', NULL, NULL, 1, 75, 2, 3, NULL, 0, NULL, NULL),
(210, '{\"pcode\":\"Street 45\",\"b_name\":\"Horizon\",\"u_no\":\"45\",\"note\":\"Address has been added\"}', 100.00, 20.00, '2021-08-10 00:00:00', 3, '2021-08-07 16:32:55', '2021-08-07 16:32:55', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(211, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-08 00:00:00', 7, '2021-08-07 16:34:35', '2021-08-07 16:34:35', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(212, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-11 00:00:00', 13, '2021-08-07 16:42:16', '2021-08-07 16:42:16', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(213, '{\"pcode\":\"Street 45\",\"b_name\":\"Horizon\",\"u_no\":\"45\",\"note\":\"Address has been added\"}', 100.00, 20.00, '2021-08-10 00:00:00', 3, '2021-08-07 16:46:19', '2021-08-07 16:46:19', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(214, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-11 00:00:00', 13, '2021-08-07 16:53:19', '2021-08-07 16:53:19', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(215, '{\"pcode\":\"street 47\",\"b_name\":\"horizon\",\"u_no\":\"32\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-10 00:00:00', 7, '2021-08-07 17:01:14', '2021-08-07 17:01:14', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(216, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"23\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-11 00:00:00', 8, '2021-08-07 17:08:41', '2021-08-07 17:08:41', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(217, '{\"pcode\":\"123456\",\"b_name\":\"123456\",\"u_no\":\"123456\",\"note\":\"123456\"}', 100.00, 20.00, '2021-08-09 00:00:00', 1, '2021-08-08 05:29:33', '2021-08-08 05:29:33', NULL, NULL, 1, 87, NULL, NULL, NULL, 0, NULL, NULL),
(218, '', 100.00, 20.00, '2021-08-11 00:00:00', 8, '2021-08-08 07:20:40', '2021-08-08 07:20:40', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(219, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"32\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 4, '2021-08-09 04:58:19', '2021-08-09 04:58:19', NULL, NULL, 1, NULL, NULL, NULL, 56, 0, NULL, NULL),
(220, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 5, '2021-08-09 05:24:45', '2021-08-09 05:24:45', NULL, NULL, 1, NULL, NULL, NULL, 57, 0, NULL, NULL),
(221, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-11 00:00:00', 5, '2021-08-09 05:25:44', '2021-08-09 05:25:44', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(222, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-10 00:00:00', 9, '2021-08-09 05:27:17', '2021-08-09 05:27:17', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(223, '', 100.00, 20.00, '2021-08-12 00:00:00', 8, '2021-08-09 05:47:02', '2021-08-09 05:47:02', NULL, NULL, 2, 77, 1, NULL, NULL, 0, NULL, NULL),
(224, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 4, '2021-08-09 07:57:33', '2021-08-09 07:57:33', NULL, NULL, 2, NULL, 3, NULL, 58, 0, NULL, NULL),
(225, '{\"pcode\":\"Street 45\",\"b_name\":\"Horizon\",\"u_no\":\"67\",\"note\":\"Address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 5, '2021-08-09 08:03:06', '2021-08-09 08:03:06', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(226, '{\"pcode\":\"Street 45\",\"b_name\":\"Horizon\",\"u_no\":\"56\",\"note\":\"Address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 7, '2021-08-09 09:27:53', '2021-08-09 09:27:53', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(227, '{\"pcode\":\"street 45\",\"b_name\":\"3\",\"u_no\":\"25\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-13 00:00:00', 8, '2021-08-09 09:34:03', '2021-08-09 09:34:03', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(228, '', 100.00, 20.00, '2021-08-13 00:00:00', 8, '2021-08-09 09:48:34', '2021-08-09 09:48:34', NULL, NULL, 2, 94, 3, NULL, NULL, 0, NULL, NULL),
(229, '{\"pcode\":\"street 47\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 8, '2021-08-09 12:02:02', '2021-08-09 12:02:02', NULL, NULL, 1, NULL, NULL, NULL, 59, 0, NULL, NULL),
(230, '{\"pcode\":\"street 47\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 8, '2021-08-09 12:02:53', '2021-08-09 12:02:53', NULL, NULL, 1, NULL, NULL, NULL, 60, 0, NULL, NULL),
(231, '', 100.00, 20.00, '2021-08-15 00:00:00', 12, '2021-08-10 04:22:18', '2021-08-10 04:22:18', NULL, NULL, 2, NULL, 2, NULL, 61, 0, NULL, NULL),
(232, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-15 00:00:00', 9, '2021-08-10 04:27:26', '2021-08-10 04:27:26', NULL, NULL, 1, NULL, NULL, NULL, 62, 0, NULL, NULL),
(233, '', 100.00, 20.00, '2021-08-14 00:00:00', 14, '2021-08-10 04:35:17', '2021-08-10 04:35:17', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(234, '', 100.00, 20.00, '2021-08-13 00:00:00', 11, '2021-08-10 04:38:10', '2021-08-10 04:38:10', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(235, '{\"pcode\":\"street 87\",\"b_name\":\"labor corporation \",\"u_no\":\"56\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-14 00:00:00', 7, '2021-08-10 06:04:50', '2021-08-10 06:04:50', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(236, '{\"pcode\":\"street 87\",\"b_name\":\"965\",\"u_no\":\"64684\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-15 00:00:00', 9, '2021-08-10 06:57:22', '2021-08-10 06:57:22', NULL, NULL, 1, NULL, NULL, NULL, 63, 0, NULL, NULL),
(237, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"54\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-15 00:00:00', 11, '2021-08-10 07:07:45', '2021-08-10 07:07:45', NULL, NULL, 1, NULL, NULL, NULL, 64, 0, NULL, NULL),
(238, '{\"pcode\":\"street 47\",\"b_name\":\"56\",\"u_no\":\"56\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-16 00:00:00', 14, '2021-08-11 08:35:18', '2021-08-11 08:35:18', NULL, NULL, 1, NULL, NULL, NULL, 65, 0, NULL, NULL),
(239, '{\"pcode\":\"address\",\"b_name\":\"horizon\",\"u_no\":\"65\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-16 00:00:00', 12, '2021-08-11 08:57:26', '2021-08-11 08:57:26', NULL, NULL, 1, NULL, NULL, NULL, 66, 0, NULL, NULL),
(240, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"5\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-16 00:00:00', 6, '2021-08-11 09:01:08', '2021-08-11 09:01:08', NULL, NULL, 1, NULL, NULL, NULL, 67, 0, NULL, NULL),
(241, '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"256\",\"note\":\"some notes\"}', 100.00, 20.00, '2021-08-16 00:00:00', 11, '2021-08-11 09:09:44', '2021-08-11 09:09:44', NULL, NULL, 1, NULL, 2, NULL, 68, 0, NULL, NULL),
(242, '{\"pcode\":\"street 45\",\"b_name\":\"Tyler tall\",\"u_no\":\"23\",\"note\":\"address\"}', 100.00, 20.00, '2021-08-12 00:00:00', 5, '2021-08-11 09:12:00', '2021-08-11 09:12:00', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(243, '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"34\",\"note\":\"some notes\"}', 100.00, 20.00, '2021-08-16 00:00:00', 5, '2021-08-11 09:12:25', '2021-08-11 09:12:25', NULL, NULL, 1, NULL, NULL, NULL, 69, 0, NULL, NULL),
(244, '{\"pcode\":\"9280\",\"b_name\":\"building name\",\"u_no\":\"34\",\"note\":\"some notes\"}', 100.00, 20.00, '2021-08-16 00:00:00', 12, '2021-08-11 10:00:11', '2021-08-11 10:00:11', NULL, NULL, 2, NULL, 2, NULL, 70, 0, NULL, NULL),
(245, '{\"pcode\":\"123\",\"b_name\":\"123\",\"u_no\":\"123\",\"note\":\"123\"}', 100.00, 20.00, '2021-08-16 00:00:00', 1, '2021-08-11 10:03:58', '2021-08-11 10:03:58', NULL, NULL, 1, NULL, NULL, NULL, 71, 0, NULL, NULL),
(246, '', 100.00, 20.00, '2021-08-16 00:00:00', 11, '2021-08-11 10:17:36', '2021-08-11 10:17:36', NULL, NULL, 2, NULL, 2, NULL, 72, 0, NULL, NULL),
(247, '{\"pcode\":\"123\",\"b_name\":\"123\",\"u_no\":\"123\",\"note\":\"123\"}', 100.00, 20.00, '2021-08-16 00:00:00', 1, '2021-08-11 10:37:07', '2021-08-11 10:37:07', NULL, NULL, 1, NULL, NULL, NULL, 73, 0, NULL, NULL),
(248, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"45\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-13 00:00:00', 7, '2021-08-11 11:17:20', '2021-08-11 11:17:20', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(249, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"23\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 12, '2021-08-11 11:18:49', '2021-08-11 11:18:49', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(250, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"56\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-16 00:00:00', 13, '2021-08-11 11:22:37', '2021-08-11 11:22:37', NULL, NULL, 1, NULL, NULL, NULL, 74, 0, NULL, NULL),
(251, '', 100.00, 20.00, '2021-08-13 00:00:00', 14, '2021-08-11 11:32:58', '2021-08-11 11:32:58', NULL, NULL, 2, 75, 2, NULL, NULL, 0, NULL, NULL),
(252, '', 100.00, 20.00, '2021-08-16 00:00:00', 13, '2021-08-11 11:34:08', '2021-08-11 11:34:08', NULL, NULL, 2, NULL, 2, NULL, 75, 0, NULL, NULL),
(253, '{\"pcode\":\"street 47\",\"b_name\":\"Tyler tall\",\"u_no\":\"23\",\"note\":\"address added\"}', 100.00, 20.00, '2021-08-14 00:00:00', 1, '2021-08-11 11:38:50', '2021-08-11 11:38:50', NULL, NULL, 1, 77, NULL, NULL, NULL, 0, NULL, NULL),
(254, '', 100.00, 20.00, '2021-08-16 00:00:00', 13, '2021-08-11 11:41:43', '2021-08-11 11:41:43', NULL, NULL, 2, NULL, 2, NULL, 76, 0, NULL, NULL),
(255, '', 100.00, 20.00, '2021-08-16 00:00:00', 14, '2021-08-11 11:57:46', '2021-08-11 11:57:46', NULL, NULL, 2, NULL, 2, NULL, 77, 0, NULL, NULL),
(256, '{\"pcode\":\"9280\",\"b_name\":\"Building name\",\"u_no\":\"18\",\"note\":\"Some notes\"}', 100.00, 20.00, '2021-08-16 00:00:00', 6, '2021-08-11 12:25:08', '2021-08-11 12:25:08', NULL, NULL, 1, NULL, NULL, NULL, 78, 0, NULL, NULL),
(257, '{\"pcode\":\"123\",\"b_name\":\"Qwe\",\"u_no\":\"Aqa\",\"note\":\"Wwq\"}', 100.00, 20.00, '2021-08-16 00:00:00', 1, '2021-08-11 12:53:18', '2021-08-11 12:53:18', NULL, NULL, 1, NULL, NULL, NULL, 79, 0, NULL, NULL),
(258, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', 100.00, 20.00, '2021-09-05 00:00:00', 4, '2021-08-31 18:18:40', '2021-08-31 18:18:40', NULL, NULL, 1, NULL, NULL, NULL, 80, 0, NULL, NULL),
(259, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', 100.00, 20.00, '2021-09-05 00:00:00', 4, '2021-08-31 18:32:43', '2021-08-31 18:32:43', NULL, NULL, 1, NULL, NULL, NULL, 81, 0, NULL, NULL),
(260, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"fgfhgfh\"}', 100.00, 20.00, '2021-09-05 00:00:00', 4, '2021-08-31 18:45:17', '2021-08-31 18:45:17', NULL, NULL, 1, NULL, NULL, NULL, 82, 0, NULL, NULL),
(261, '{\"pcode\":\"tuyuru\",\"b_name\":\"yutyu5\",\"u_no\":\"454\",\"note\":\"trytu\"}', 100.00, 20.00, '2021-09-04 00:00:00', 3, '2021-09-01 05:39:47', '2021-09-01 05:39:47', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(262, '{\"pcode\":\"4535\",\"b_name\":\"45\",\"u_no\":\"435\",\"note\":\"43545\"}', 100.00, 20.00, '2021-09-06 00:00:00', 3, '2021-09-01 10:03:20', '2021-09-01 10:03:20', NULL, NULL, 1, NULL, NULL, NULL, 83, 0, NULL, NULL),
(263, '{\"pcode\":\"street 45\",\"b_name\":\"horizon\",\"u_no\":\"2\",\"note\":\"horizon\"}', 100.00, 20.00, '2021-09-04 00:00:00', 11, '2021-09-02 09:40:04', '2021-09-02 09:40:04', NULL, NULL, 1, 94, NULL, NULL, NULL, 0, NULL, NULL),
(264, '', 100.00, 20.00, '2021-09-06 00:00:00', 12, '2021-09-02 09:43:53', '2021-09-02 09:43:53', NULL, NULL, 2, 94, 1, NULL, NULL, 0, NULL, NULL),
(265, '{\"pcode\":\"gfhfg\",\"b_name\":\"hgfjj\",\"u_no\":\"hjjg\",\"note\":\"hgjkjhg\"}', 100.00, 20.00, '2021-09-06 00:00:00', 3, '2021-09-02 11:49:56', '2021-09-02 11:49:56', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(266, '{\"pcode\":\"fdsgdfg\",\"b_name\":\"reer\",\"u_no\":\"err\",\"note\":\"rererere\"}', 100.00, 20.00, '2021-09-06 00:00:00', 3, '2021-09-02 11:51:12', '2021-09-02 11:51:12', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(267, '{\"pcode\":\"tytyu\",\"b_name\":\"yutut\",\"u_no\":\"yuyt\",\"note\":\"uityiu\"}', 100.00, 20.00, '2021-09-07 00:00:00', 4, '2021-09-02 12:03:59', '2021-09-02 12:03:59', NULL, NULL, 1, NULL, NULL, NULL, 84, 0, NULL, NULL),
(268, '{\"pcode\":\"dcf\",\"b_name\":\"fvgbg\",\"u_no\":\"6y\",\"note\":\"\"}', 100.00, 20.00, '2021-09-07 00:00:00', 2, '2021-09-06 12:40:25', '2021-09-06 12:40:25', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(269, '{\"pcode\":\"610999\",\"b_name\":\"333\",\"u_no\":\"515\",\"note\":\"\"}', 100.00, 20.00, '2021-09-08 00:00:00', 10, '2021-09-07 11:20:22', '2021-09-07 11:20:22', NULL, NULL, 1, 87, NULL, NULL, NULL, 0, NULL, NULL),
(270, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"ring the bell\"}', 100.00, 20.00, '2021-09-10 00:00:00', 2, '2021-09-07 12:47:18', '2021-09-07 12:47:18', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(271, '{\"pcode\":\"2323\",\"b_name\":\"er\",\"u_no\":\"re\",\"note\":\"ewrwr\"}', 100.00, 20.00, '2021-09-12 00:00:00', 2, '2021-09-07 12:50:24', '2021-09-07 12:50:24', NULL, NULL, 1, NULL, NULL, NULL, 85, 0, NULL, NULL),
(272, '{\"pcode\":\"31212\",\"b_name\":\"NY\",\"u_no\":\"12\",\"note\":\"No notes\"}', 100.00, 20.00, '2021-09-12 00:00:00', 7, '2021-09-07 14:45:05', '2021-09-07 14:45:05', NULL, NULL, 1, NULL, NULL, NULL, 86, 0, NULL, NULL),
(273, '{\"pcode\":\"aaaaa\",\"b_name\":\"aa\",\"u_no\":\"aa\",\"note\":\"aaa\"}', 100.00, 20.00, '2021-09-13 00:00:00', 2, '2021-09-08 06:27:20', '2021-09-08 06:27:20', NULL, NULL, 1, NULL, NULL, NULL, 87, 0, NULL, NULL),
(274, '{\"pcode\":\"aaaaa\",\"b_name\":\"aa\",\"u_no\":\"aa\",\"note\":\"aaa\"}', 100.00, 20.00, '2021-09-13 00:00:00', 2, '2021-09-08 06:31:17', '2021-09-08 06:31:17', NULL, NULL, 1, NULL, NULL, NULL, 88, 0, NULL, NULL),
(275, '{\"pcode\":\"23\",\"b_name\":\"gf\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-14 00:00:00', 2, '2021-09-13 07:20:12', '2021-09-13 07:20:12', NULL, NULL, 1, 102, NULL, NULL, NULL, 0, NULL, NULL),
(276, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 2, '2021-09-13 07:26:36', '2021-09-13 07:26:36', NULL, NULL, 1, 112, NULL, NULL, NULL, 0, NULL, NULL),
(277, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-13 07:29:45', '2021-09-13 07:29:45', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(278, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-13 07:34:56', '2021-09-13 07:34:56', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(279, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-13 07:40:18', '2021-09-13 07:40:18', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(280, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-13 07:48:23', '2021-09-13 07:48:23', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(281, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-13 07:48:43', '2021-09-13 07:48:43', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(282, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 07:50:02', '2021-09-13 07:50:02', NULL, NULL, 1, 112, NULL, NULL, NULL, 0, NULL, NULL),
(283, '{\"pcode\":\"dcf\",\"b_name\":\"er\",\"u_no\":\"hjjg\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 4, '2021-09-13 08:26:44', '2021-09-13 08:26:44', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(284, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-13 08:39:52', '2021-09-13 08:39:52', NULL, NULL, 1, 102, NULL, NULL, NULL, 0, NULL, NULL),
(285, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 08:59:56', '2021-09-13 08:59:56', NULL, NULL, 1, 102, NULL, NULL, NULL, 0, NULL, NULL),
(286, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 2, '2021-09-13 09:02:27', '2021-09-13 09:02:27', NULL, NULL, 1, 102, NULL, NULL, NULL, 0, NULL, NULL),
(287, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"2\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-13 11:37:08', '2021-09-13 11:37:08', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(288, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"2\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-13 11:39:27', '2021-09-13 11:39:27', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(289, '{\"pcode\":\"gfhfg\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 11:40:02', '2021-09-13 11:40:02', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(290, '{\"pcode\":\"gfhfg\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 11:49:33', '2021-09-13 11:49:33', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(291, '{\"pcode\":\"gfhfg\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 11:58:37', '2021-09-13 11:58:37', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(292, '{\"pcode\":\"gfhfg\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 12:04:50', '2021-09-13 12:04:50', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(293, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 1, '2021-09-13 12:10:43', '2021-09-13 12:10:43', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(294, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-13 12:24:01', '2021-09-13 12:24:01', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(295, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 2, '2021-09-13 12:31:58', '2021-09-13 12:31:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(296, '{\"pcode\":\"32\",\"b_name\":\"dc\",\"u_no\":\"sd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 12:33:58', '2021-09-13 12:33:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(297, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 2, '2021-09-13 12:36:19', '2021-09-13 12:36:19', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(298, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-13 12:39:14', '2021-09-13 12:39:14', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(299, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 1, '2021-09-13 13:09:37', '2021-09-13 13:09:37', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(300, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 2, '2021-09-13 13:11:36', '2021-09-13 13:11:36', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(301, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 04:55:35', '2021-09-14 04:55:35', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(302, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 05:02:25', '2021-09-14 05:02:25', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(303, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 05:12:52', '2021-09-14 05:12:52', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(304, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 05:20:17', '2021-09-14 05:20:17', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(305, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 05:26:40', '2021-09-14 05:26:40', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(306, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 05:29:37', '2021-09-14 05:29:37', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(307, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 05:35:00', '2021-09-14 05:35:00', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(308, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 05:56:00', '2021-09-14 05:56:00', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(309, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 07:18:30', '2021-09-14 07:18:30', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(310, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 07:38:24', '2021-09-14 07:38:24', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(311, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-14 07:42:37', '2021-09-14 07:42:37', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(312, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-14 07:47:14', '2021-09-14 07:47:14', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(313, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-14 08:03:21', '2021-09-14 08:03:21', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(314, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-14 08:05:26', '2021-09-14 08:05:26', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(315, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-14 08:07:02', '2021-09-14 08:07:02', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(316, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 08:08:35', '2021-09-14 08:08:35', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(317, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 08:09:58', '2021-09-14 08:09:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(318, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 08:22:56', '2021-09-14 08:22:56', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(319, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 08:28:55', '2021-09-14 08:28:55', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(320, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 08:31:53', '2021-09-14 08:31:53', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(321, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 1, '2021-09-14 08:47:01', '2021-09-14 08:47:01', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(322, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-15 00:00:00', 1, '2021-09-14 08:50:12', '2021-09-14 08:50:12', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(323, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 1, '2021-09-14 09:03:53', '2021-09-14 09:03:53', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(324, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 09:06:26', '2021-09-14 09:06:26', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(325, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 2, '2021-09-14 09:42:11', '2021-09-14 09:42:11', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(326, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 3, '2021-09-14 10:33:42', '2021-09-14 10:33:42', NULL, NULL, 1, NULL, NULL, NULL, 89, 0, NULL, NULL),
(327, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 3, '2021-09-14 10:34:13', '2021-09-14 10:34:13', NULL, NULL, 1, NULL, NULL, NULL, 90, 0, NULL, NULL),
(328, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 3, '2021-09-14 10:38:31', '2021-09-14 10:38:31', NULL, NULL, 1, NULL, NULL, NULL, 91, 0, NULL, NULL),
(329, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-14 10:54:09', '2021-09-14 10:54:09', NULL, NULL, 1, NULL, NULL, NULL, 92, 0, NULL, NULL),
(330, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-14 10:55:07', '2021-09-14 10:55:07', NULL, NULL, 1, NULL, NULL, NULL, 93, 0, NULL, NULL),
(331, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-14 11:13:14', '2021-09-14 11:13:14', NULL, NULL, 1, NULL, NULL, NULL, 94, 0, NULL, NULL),
(332, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:00:06', '2021-09-14 12:00:06', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(333, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:02:02', '2021-09-14 12:02:02', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(334, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:02:58', '2021-09-14 12:02:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(335, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:04:25', '2021-09-14 12:04:25', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(336, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:08:07', '2021-09-14 12:08:07', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(337, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:09:42', '2021-09-14 12:09:42', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(338, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:11:28', '2021-09-14 12:11:28', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(339, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:21:45', '2021-09-14 12:21:45', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(340, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-14 12:26:00', '2021-09-14 12:26:00', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(341, '{\"pcode\":\"1101\",\"b_name\":\"11\",\"u_no\":\"12\",\"note\":\"This is that\"}', 100.00, 20.00, '2021-09-19 00:00:00', 9, '2021-09-14 13:03:14', '2021-09-14 13:03:14', NULL, NULL, 1, NULL, NULL, NULL, 95, 0, NULL, NULL),
(342, '{\"pcode\":\"34567\",\"b_name\":\"dbjhfdv\",\"u_no\":\"fdgf\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-14 13:04:58', '2021-09-14 13:04:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(343, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 1, '2021-09-14 15:09:58', '2021-09-14 15:09:58', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(344, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-15 05:10:04', '2021-09-15 05:10:04', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(345, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 3, '2021-09-15 05:14:28', '2021-09-15 05:14:28', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(346, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 05:43:53', '2021-09-15 05:43:53', NULL, NULL, 1, NULL, NULL, NULL, 96, 0, NULL, NULL),
(347, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 05:47:32', '2021-09-15 05:47:32', NULL, NULL, 1, NULL, NULL, NULL, 97, 0, NULL, NULL),
(348, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-15 05:55:05', '2021-09-15 05:55:05', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(349, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:08:58', '2021-09-15 06:08:58', NULL, NULL, 1, NULL, NULL, NULL, 98, 0, NULL, NULL),
(350, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:14:07', '2021-09-15 06:14:07', NULL, NULL, 1, NULL, NULL, NULL, 99, 0, NULL, NULL),
(351, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:15:32', '2021-09-15 06:15:32', NULL, NULL, 1, NULL, NULL, NULL, 100, 0, NULL, NULL),
(352, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:19:49', '2021-09-15 06:19:49', NULL, NULL, 1, NULL, NULL, NULL, 101, 0, NULL, NULL),
(353, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 06:23:39', '2021-09-15 06:23:39', NULL, NULL, 1, NULL, NULL, NULL, 102, 0, NULL, NULL),
(354, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 06:28:24', '2021-09-15 06:28:24', NULL, NULL, 1, NULL, NULL, NULL, 103, 0, NULL, NULL),
(355, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-15 06:38:54', '2021-09-15 06:38:54', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(356, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-15 06:43:55', '2021-09-15 06:43:55', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(357, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 06:46:49', '2021-09-15 06:46:49', NULL, NULL, 1, NULL, NULL, NULL, 104, 0, NULL, NULL),
(358, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:55:18', '2021-09-15 06:55:18', NULL, NULL, 1, NULL, NULL, NULL, 105, 0, NULL, NULL),
(359, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 06:55:55', '2021-09-15 06:55:55', NULL, NULL, 1, NULL, NULL, NULL, 106, 0, NULL, NULL),
(360, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 07:03:30', '2021-09-15 07:03:30', NULL, NULL, 1, NULL, NULL, NULL, 107, 0, NULL, NULL),
(361, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 07:06:03', '2021-09-15 07:06:03', NULL, NULL, 1, NULL, NULL, NULL, 108, 0, NULL, NULL),
(362, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 07:19:00', '2021-09-15 07:19:00', NULL, NULL, 1, NULL, NULL, NULL, 109, 0, NULL, NULL),
(363, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 07:22:17', '2021-09-15 07:22:17', NULL, NULL, 1, NULL, NULL, NULL, 110, 0, NULL, NULL),
(364, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-15 08:23:27', '2021-09-15 08:23:27', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(365, '{\"pcode\":\"street#37\",\"b_name\":\"f6\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 1, '2021-09-15 09:13:23', '2021-09-15 09:13:23', NULL, NULL, 1, NULL, NULL, NULL, 111, 0, NULL, NULL),
(366, '{\"pcode\":\"street#37\",\"b_name\":\"f6\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 1, '2021-09-15 09:13:55', '2021-09-15 09:13:55', NULL, NULL, 1, NULL, NULL, NULL, 112, 0, NULL, NULL),
(367, '', 100.00, 20.00, '2021-09-17 00:00:00', 1, '2021-09-15 09:44:39', '2021-09-15 09:44:39', NULL, NULL, 2, 103, 1, NULL, NULL, 0, NULL, NULL),
(368, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-16 00:00:00', 2, '2021-09-15 09:56:16', '2021-09-15 09:56:16', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(369, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-15 10:59:42', '2021-09-15 10:59:42', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(370, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 3, '2021-09-15 11:21:47', '2021-09-15 11:21:47', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(371, '', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-15 11:27:43', '2021-09-15 11:27:43', NULL, NULL, 2, 103, 1, NULL, NULL, 0, NULL, NULL),
(372, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 11:32:33', '2021-09-15 11:32:33', NULL, NULL, 1, NULL, NULL, NULL, 113, 0, NULL, NULL),
(373, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 11:32:52', '2021-09-15 11:32:52', NULL, NULL, 1, NULL, NULL, NULL, 114, 0, NULL, NULL),
(374, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 11:40:25', '2021-09-15 11:40:25', NULL, NULL, 2, NULL, 1, NULL, 115, 0, NULL, NULL),
(375, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 11:41:44', '2021-09-15 11:41:44', NULL, NULL, 2, NULL, 1, NULL, 116, 0, NULL, NULL),
(376, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 11:49:11', '2021-09-15 11:49:11', NULL, NULL, 2, NULL, 1, NULL, 117, 0, NULL, NULL),
(377, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 11:55:37', '2021-09-15 11:55:37', NULL, NULL, 2, NULL, 1, NULL, 118, 0, NULL, NULL),
(378, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:01:09', '2021-09-15 12:01:09', NULL, NULL, 2, NULL, 1, NULL, 119, 0, NULL, NULL),
(379, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:05:39', '2021-09-15 12:05:39', NULL, NULL, 2, NULL, 1, NULL, 120, 0, NULL, NULL),
(380, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:08:25', '2021-09-15 12:08:25', NULL, NULL, 2, NULL, 1, NULL, 121, 0, NULL, NULL),
(381, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:11:15', '2021-09-15 12:11:15', NULL, NULL, 2, NULL, 1, NULL, 122, 0, NULL, NULL),
(382, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:12:09', '2021-09-15 12:12:09', NULL, NULL, 2, NULL, 1, NULL, 123, 0, NULL, NULL),
(383, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:13:16', '2021-09-15 12:13:16', NULL, NULL, 2, NULL, 1, NULL, 124, 0, NULL, NULL),
(384, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:14:54', '2021-09-15 12:14:54', NULL, NULL, 1, NULL, 1, NULL, 125, 0, NULL, NULL),
(385, '{\"pcode\":\"1234\",\"b_name\":\"abc\",\"u_no\":\"123\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:18:34', '2021-09-15 12:18:34', NULL, NULL, 1, NULL, 1, NULL, 126, 0, NULL, NULL),
(386, '{\"pcode\":\"1234\",\"b_name\":\"abc\",\"u_no\":\"123\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 12:18:56', '2021-09-15 12:18:56', NULL, NULL, 1, NULL, 1, NULL, 127, 0, NULL, NULL),
(387, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 16:52:38', '2021-09-15 16:52:38', NULL, NULL, 1, NULL, 1, NULL, 128, 0, NULL, NULL),
(388, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 16:53:10', '2021-09-15 16:53:10', NULL, NULL, 1, NULL, 1, NULL, 129, 0, NULL, NULL),
(389, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:01:57', '2021-09-15 17:01:57', NULL, NULL, 1, NULL, 1, NULL, 130, 0, NULL, NULL),
(390, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:02:08', '2021-09-15 17:02:08', NULL, NULL, 1, NULL, 1, NULL, 131, 0, NULL, NULL),
(391, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:05:41', '2021-09-15 17:05:41', NULL, NULL, 1, NULL, 1, NULL, 132, 0, NULL, NULL),
(392, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:06:53', '2021-09-15 17:06:53', NULL, NULL, 1, NULL, 1, NULL, 133, 0, NULL, NULL),
(393, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 17:10:04', '2021-09-15 17:10:04', NULL, NULL, 2, NULL, 1, NULL, 134, 0, NULL, NULL),
(394, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 3, '2021-09-15 17:10:19', '2021-09-15 17:10:19', NULL, NULL, 2, NULL, 1, NULL, 135, 0, NULL, NULL),
(395, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:47:19', '2021-09-15 17:47:19', NULL, NULL, 1, NULL, 1, NULL, 136, 0, NULL, NULL),
(396, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:47:32', '2021-09-15 17:47:32', NULL, NULL, 1, NULL, 1, NULL, 137, 0, NULL, NULL),
(397, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:48:34', '2021-09-15 17:48:34', NULL, NULL, 2, NULL, 1, NULL, 138, 0, NULL, NULL),
(398, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:48:55', '2021-09-15 17:48:55', NULL, NULL, 2, NULL, 1, NULL, 139, 0, NULL, NULL),
(399, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-15 17:49:46', '2021-09-15 17:49:46', NULL, NULL, 2, NULL, 1, NULL, 140, 0, NULL, NULL),
(400, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 4, '2021-09-16 04:48:03', '2021-09-16 04:48:03', NULL, NULL, 2, NULL, 1, NULL, 141, 0, NULL, NULL),
(401, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 4, '2021-09-16 04:48:15', '2021-09-16 04:48:15', NULL, NULL, 2, NULL, 1, NULL, 142, 0, NULL, NULL),
(402, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 04:56:06', '2021-09-16 04:56:06', NULL, NULL, 2, NULL, 1, NULL, 143, 0, NULL, NULL),
(403, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 04:56:21', '2021-09-16 04:56:21', NULL, NULL, 2, NULL, 1, NULL, 144, 0, NULL, NULL),
(404, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 04:58:54', '2021-09-16 04:58:54', NULL, NULL, 2, NULL, 1, NULL, 145, 0, NULL, NULL),
(405, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 05:00:00', '2021-09-16 05:00:00', NULL, NULL, 1, NULL, 1, NULL, 146, 0, NULL, NULL),
(406, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-16 05:03:48', '2021-09-16 05:03:48', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(407, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-16 05:03:55', '2021-09-16 05:03:55', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(408, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-16 05:04:18', '2021-09-16 05:04:18', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(409, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-16 05:05:39', '2021-09-16 05:05:39', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(410, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-16 05:05:43', '2021-09-16 05:05:43', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(411, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 1, '2021-09-16 05:08:28', '2021-09-16 05:08:28', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(412, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-16 05:19:42', '2021-09-16 05:19:42', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(413, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-16 05:23:13', '2021-09-16 05:23:13', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(414, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 05:27:15', '2021-09-16 05:27:15', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(415, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"2\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 3, '2021-09-16 05:30:20', '2021-09-16 05:30:20', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(416, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 05:33:28', '2021-09-16 05:33:28', NULL, NULL, 2, NULL, 1, NULL, 147, 0, NULL, NULL),
(417, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 05:37:16', '2021-09-16 05:37:16', NULL, NULL, 2, NULL, 1, NULL, 148, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `d_address`, `d_charge`, `gst_charge`, `date`, `time`, `created_at`, `updated_at`, `deleted_at`, `cart_id`, `order_type`, `user_id`, `outlate`, `status`, `guest_id`, `order_id`, `amount`, `driver_id`) VALUES
(418, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 05:43:16', '2021-09-16 05:43:16', NULL, NULL, 2, NULL, 1, NULL, 149, 0, NULL, NULL),
(419, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 05:48:07', '2021-09-16 05:48:07', NULL, NULL, 2, NULL, 1, NULL, 150, 0, NULL, NULL),
(420, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 05:59:47', '2021-09-16 05:59:47', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(421, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 3, '2021-09-16 06:12:01', '2021-09-16 06:12:01', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(422, '{\"pcode\":\"232\",\"b_name\":\"sddsf\",\"u_no\":\"vfdv\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 06:15:51', '2021-09-16 06:15:51', NULL, NULL, 1, NULL, NULL, NULL, 151, 0, NULL, NULL),
(423, '{\"pcode\":\"232\",\"b_name\":\"sddsf\",\"u_no\":\"vfdv\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 06:19:41', '2021-09-16 06:19:41', NULL, NULL, 1, NULL, NULL, NULL, 152, 0, NULL, NULL),
(424, '{\"pcode\":\"street#45\",\"b_name\":\"abc\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 06:22:34', '2021-09-16 06:22:34', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(425, '{\"pcode\":\"street#45\",\"b_name\":\"abc\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 06:26:54', '2021-09-16 06:26:54', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(426, '{\"pcode\":\"street#45\",\"b_name\":\"abc\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 06:31:17', '2021-09-16 06:31:17', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(427, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 06:32:54', '2021-09-16 06:32:54', NULL, NULL, 2, NULL, 1, NULL, 153, 0, NULL, NULL),
(428, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 06:39:32', '2021-09-16 06:39:32', NULL, NULL, 2, NULL, 1, NULL, 154, 0, NULL, NULL),
(429, '', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 06:43:25', '2021-09-16 06:43:25', NULL, NULL, 2, NULL, 1, NULL, 155, 0, NULL, NULL),
(430, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 3, '2021-09-16 06:46:49', '2021-09-16 06:46:49', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(431, '{\"pcode\":\"street#12\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 3, '2021-09-16 06:53:18', '2021-09-16 06:53:18', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(432, '{\"pcode\":\"street#32\",\"b_name\":\"abc\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 07:12:47', '2021-09-16 07:12:47', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(433, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 07:16:19', '2021-09-16 07:16:19', NULL, NULL, 2, NULL, 4, NULL, 156, 0, NULL, NULL),
(434, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 07:17:11', '2021-09-16 07:17:11', NULL, NULL, 2, NULL, 4, NULL, 157, 0, NULL, NULL),
(435, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 4, '2021-09-16 09:07:00', '2021-09-16 09:07:00', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(436, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:10:30', '2021-09-16 09:10:30', NULL, NULL, 2, NULL, 1, NULL, 158, 0, NULL, NULL),
(437, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:12:20', '2021-09-16 09:12:20', NULL, NULL, 2, NULL, 1, NULL, 159, 0, NULL, NULL),
(438, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:16:30', '2021-09-16 09:16:30', NULL, NULL, 2, NULL, 1, NULL, 160, 0, NULL, NULL),
(439, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:25:10', '2021-09-16 09:25:10', NULL, NULL, 2, NULL, 1, NULL, 161, 0, NULL, NULL),
(440, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:27:54', '2021-09-16 09:27:54', NULL, NULL, 2, NULL, 1, NULL, 162, 0, NULL, NULL),
(441, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:36:50', '2021-09-16 09:36:50', NULL, NULL, 2, NULL, 1, NULL, 163, 0, NULL, NULL),
(442, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:40:20', '2021-09-16 09:40:20', NULL, NULL, 2, NULL, 1, NULL, 164, 0, NULL, NULL),
(443, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:41:24', '2021-09-16 09:41:24', NULL, NULL, 2, NULL, 1, NULL, 165, 0, NULL, NULL),
(444, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:42:31', '2021-09-16 09:42:31', NULL, NULL, 2, NULL, 1, NULL, 166, 0, NULL, NULL),
(445, '', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 09:44:01', '2021-09-16 09:44:01', NULL, NULL, 2, NULL, 1, NULL, 167, 0, NULL, NULL),
(446, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:19:24', '2021-09-16 10:19:24', NULL, NULL, 1, NULL, 1, NULL, 168, 0, NULL, NULL),
(447, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:23:46', '2021-09-16 10:23:46', NULL, NULL, 1, NULL, 1, NULL, 169, 0, NULL, NULL),
(448, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:26:35', '2021-09-16 10:26:35', NULL, NULL, 1, NULL, 1, NULL, 170, 0, NULL, NULL),
(449, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:27:50', '2021-09-16 10:27:50', NULL, NULL, 1, NULL, 1, NULL, 171, 0, NULL, NULL),
(450, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:29:24', '2021-09-16 10:29:24', NULL, NULL, 1, NULL, 1, NULL, 172, 0, NULL, NULL),
(451, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:32:14', '2021-09-16 10:32:14', NULL, NULL, 1, NULL, 1, NULL, 173, 0, NULL, NULL),
(452, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:34:14', '2021-09-16 10:34:14', NULL, NULL, 1, NULL, 1, NULL, 174, 0, NULL, NULL),
(453, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 10:44:12', '2021-09-16 10:44:12', NULL, NULL, 1, NULL, 1, NULL, 175, 0, NULL, NULL),
(454, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 10:49:08', '2021-09-16 10:49:08', NULL, NULL, 1, NULL, 1, NULL, 176, 0, NULL, NULL),
(455, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 10:53:19', '2021-09-16 10:53:19', NULL, NULL, 1, NULL, 1, NULL, 177, 0, NULL, NULL),
(456, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 10:54:01', '2021-09-16 10:54:01', NULL, NULL, 2, NULL, 1, NULL, 178, 0, NULL, NULL),
(457, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 10:56:32', '2021-09-16 10:56:32', NULL, NULL, 1, NULL, 1, NULL, 179, 0, NULL, NULL),
(458, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 1, '2021-09-16 11:22:09', '2021-09-16 11:22:09', NULL, NULL, 1, NULL, 1, NULL, 180, 0, NULL, NULL),
(459, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 3, '2021-09-16 11:28:14', '2021-09-16 11:28:14', NULL, NULL, 1, NULL, 1, NULL, 181, 0, NULL, NULL),
(460, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21 00:00:00', 2, '2021-09-16 11:31:40', '2021-09-16 11:31:40', NULL, NULL, 1, NULL, 1, NULL, 182, 0, NULL, NULL),
(461, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 2, '2021-09-16 12:12:44', '2021-09-16 12:12:44', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(462, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 3, '2021-09-16 12:18:23', '2021-09-16 12:18:23', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(463, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-16 12:21:01', '2021-09-16 12:21:01', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(464, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"hi\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-17 05:19:50', '2021-09-17 05:19:50', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(465, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 4, '2021-09-17 06:14:57', '2021-09-17 06:14:57', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(466, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-17 00:00:00', 3, '2021-09-17 06:18:15', '2021-09-17 06:18:15', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(467, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 06:18:58', '2021-09-17 06:18:58', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(468, '', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 06:46:29', '2021-09-17 06:46:29', NULL, NULL, 2, NULL, 2, NULL, 183, 0, NULL, NULL),
(469, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 07:06:14', '2021-09-17 07:06:14', NULL, NULL, 2, NULL, 1, NULL, 184, 0, NULL, NULL),
(470, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:14:16', '2021-09-17 07:14:16', NULL, NULL, 2, NULL, 1, NULL, 185, 0, NULL, NULL),
(471, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:20:11', '2021-09-17 07:20:11', NULL, NULL, 2, NULL, 1, NULL, 186, 0, NULL, NULL),
(472, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:21:20', '2021-09-17 07:21:20', NULL, NULL, 2, NULL, 1, NULL, 187, 0, NULL, NULL),
(473, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 07:25:41', '2021-09-17 07:25:41', NULL, NULL, 2, NULL, 1, NULL, 188, 0, NULL, NULL),
(474, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:28:35', '2021-09-17 07:28:35', NULL, NULL, 2, NULL, 1, NULL, 189, 0, NULL, NULL),
(475, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:39:44', '2021-09-17 07:39:44', NULL, NULL, 2, NULL, 1, NULL, 190, 0, NULL, NULL),
(476, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:41:36', '2021-09-17 07:41:36', NULL, NULL, 2, NULL, 1, NULL, 191, 0, NULL, NULL),
(477, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:44:36', '2021-09-17 07:44:36', NULL, NULL, 2, NULL, 1, NULL, 192, 0, NULL, NULL),
(478, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 07:47:36', '2021-09-17 07:47:36', NULL, NULL, 2, NULL, 1, NULL, 193, 0, NULL, NULL),
(479, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"4\",\"note\":\"\"}', 100.00, 20.00, '2021-09-20 00:00:00', 2, '2021-09-17 07:55:24', '2021-09-17 07:55:24', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(480, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 08:10:35', '2021-09-17 08:10:35', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(481, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-18 00:00:00', 2, '2021-09-17 08:56:06', '2021-09-17 08:56:06', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(482, '', 100.00, 20.00, '2021-09-22 00:00:00', 1, '2021-09-17 08:58:46', '2021-09-17 08:58:46', NULL, NULL, 2, NULL, 3, NULL, 194, 0, NULL, NULL),
(483, '', 100.00, 20.00, '2021-09-22 00:00:00', 1, '2021-09-17 09:00:29', '2021-09-17 09:00:29', NULL, NULL, 2, NULL, 3, NULL, 195, 0, NULL, NULL),
(484, '', 100.00, 20.00, '2021-09-22 00:00:00', 1, '2021-09-17 09:01:54', '2021-09-17 09:01:54', NULL, NULL, 2, NULL, 3, NULL, 196, 0, NULL, NULL),
(485, '{\"pcode\":\"232\",\"b_name\":\"4\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 1, '2021-09-17 09:06:10', '2021-09-17 09:06:10', NULL, NULL, 1, NULL, 3, NULL, 197, 0, NULL, NULL),
(486, '{\"pcode\":\"232\",\"b_name\":\"4\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 1, '2021-09-17 09:10:53', '2021-09-17 09:10:53', NULL, NULL, 2, NULL, 1, NULL, 198, 0, NULL, NULL),
(487, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 09:46:21', '2021-09-17 09:46:21', NULL, NULL, 1, NULL, 1, NULL, 199, 0, NULL, NULL),
(488, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 09:56:24', '2021-09-17 09:56:24', NULL, NULL, 1, NULL, 1, NULL, 200, 0, NULL, NULL),
(489, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:03:57', '2021-09-17 10:03:57', NULL, NULL, 1, NULL, 1, NULL, 201, 0, NULL, NULL),
(490, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:06:43', '2021-09-17 10:06:43', NULL, NULL, 1, NULL, 1, NULL, 202, 0, NULL, NULL),
(491, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 10:12:31', '2021-09-17 10:12:31', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(492, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:17:54', '2021-09-17 10:17:54', NULL, NULL, 1, NULL, 1, NULL, 203, 0, NULL, NULL),
(493, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:28:36', '2021-09-17 10:28:36', NULL, NULL, 1, NULL, 1, NULL, 204, 0, NULL, NULL),
(494, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:34:04', '2021-09-17 10:34:04', NULL, NULL, 1, NULL, 1, NULL, 205, 0, NULL, NULL),
(495, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:38:28', '2021-09-17 10:38:28', NULL, NULL, 1, NULL, 1, NULL, 206, 0, NULL, NULL),
(496, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:42:02', '2021-09-17 10:42:02', NULL, NULL, 1, NULL, 1, NULL, 207, 0, NULL, NULL),
(497, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:47:59', '2021-09-17 10:47:59', NULL, NULL, 1, NULL, 1, NULL, 208, 0, NULL, NULL),
(498, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:48:55', '2021-09-17 10:48:55', NULL, NULL, 1, NULL, 1, NULL, 209, 0, NULL, NULL),
(499, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:50:18', '2021-09-17 10:50:18', NULL, NULL, 1, NULL, 1, NULL, 210, 0, NULL, NULL),
(500, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:50:34', '2021-09-17 10:50:34', NULL, NULL, 1, NULL, 1, NULL, 211, 0, NULL, NULL),
(501, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:52:07', '2021-09-17 10:52:07', NULL, NULL, 1, NULL, 1, NULL, 212, 0, NULL, NULL),
(502, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 10:53:00', '2021-09-17 10:53:00', NULL, NULL, 1, NULL, 1, NULL, 213, 0, NULL, NULL),
(503, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:10:43', '2021-09-17 11:10:43', NULL, NULL, 1, NULL, 1, NULL, 214, 0, NULL, NULL),
(504, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:18:51', '2021-09-17 11:18:51', NULL, NULL, 1, NULL, 1, NULL, 215, 0, NULL, NULL),
(505, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:21:34', '2021-09-17 11:21:34', NULL, NULL, 1, NULL, 1, NULL, 216, 0, NULL, NULL),
(506, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:23:04', '2021-09-17 11:23:04', NULL, NULL, 2, NULL, 1, NULL, 217, 0, NULL, NULL),
(507, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:25:11', '2021-09-17 11:25:11', NULL, NULL, 2, NULL, 1, NULL, 218, 0, NULL, NULL),
(508, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:32:29', '2021-09-17 11:32:29', NULL, NULL, 1, NULL, 1, NULL, 219, 0, NULL, NULL),
(509, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:33:48', '2021-09-17 11:33:48', NULL, NULL, 1, NULL, 1, NULL, 220, 0, NULL, NULL),
(510, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:48:46', '2021-09-17 11:48:46', NULL, NULL, 1, NULL, 1, NULL, 221, 0, NULL, NULL),
(511, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:54:15', '2021-09-17 11:54:15', NULL, NULL, 1, NULL, 1, NULL, 222, 0, NULL, NULL),
(512, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 11:57:17', '2021-09-17 11:57:17', NULL, NULL, 1, NULL, 1, NULL, 223, 0, NULL, NULL),
(513, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 12:04:05', '2021-09-17 12:04:05', NULL, NULL, 1, NULL, 1, NULL, 224, 0, NULL, NULL),
(514, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 12:09:55', '2021-09-17 12:09:55', NULL, NULL, 1, NULL, 1, NULL, 225, 0, NULL, NULL),
(515, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 4, '2021-09-17 12:13:20', '2021-09-17 12:13:20', NULL, NULL, 1, NULL, 1, NULL, 226, 0, NULL, NULL),
(516, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 4, '2021-09-17 12:15:36', '2021-09-17 12:15:36', NULL, NULL, 1, NULL, 1, NULL, 227, 0, NULL, NULL),
(517, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 12:16:42', '2021-09-17 12:16:42', NULL, NULL, 1, NULL, 1, NULL, 228, 0, NULL, NULL),
(518, '{\"pcode\":\"232\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 2, '2021-09-17 12:18:24', '2021-09-17 12:18:24', NULL, NULL, 1, NULL, 1, NULL, 229, 0, NULL, NULL),
(519, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"3\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22 00:00:00', 3, '2021-09-17 12:23:24', '2021-09-17 12:23:24', NULL, NULL, 1, NULL, 1, NULL, 230, 0, NULL, NULL),
(520, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 12:32:14', '2021-09-17 12:32:14', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(521, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 12:39:21', '2021-09-17 12:39:21', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(522, '{\"pcode\":\"232\",\"b_name\":\"fsg\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 2, '2021-09-17 12:41:18', '2021-09-17 12:41:18', NULL, NULL, 1, 115, NULL, NULL, NULL, 0, NULL, NULL),
(523, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"fd\",\"note\":\"\"}', 100.00, 20.00, '2021-09-19 00:00:00', 3, '2021-09-17 12:51:43', '2021-09-17 12:51:43', NULL, NULL, 1, 103, NULL, NULL, NULL, 0, NULL, NULL),
(524, '', 0.00, 0.00, '2021-09-17 13:01:46', 0, '2021-09-17 13:01:46', '2021-09-17 13:01:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1537462965, NULL, NULL),
(525, '', 0.00, 0.00, '2021-09-20 04:36:29', 0, '2021-09-20 04:36:29', '2021-09-20 04:36:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2065478404, NULL, NULL),
(526, '{\"pcode\":\"123\",\"b_name\":\"Qwe\",\"u_no\":\"Aqa\",\"note\":\"Wwq\"}', 100.00, 20.00, '2021-09-25', NULL, '2021-09-20 07:10:03', '2021-09-20 07:10:03', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-20 07:10:15', '2021-09-20 07:10:15', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '{\"pcode\":\"123\",\"b_name\":\"Qwe\",\"u_no\":\"Aqa\",\"note\":\"Wwq\"}', 100.00, 20.00, '2021-09-25', NULL, '2021-09-20 07:13:34', '2021-09-20 07:13:34', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '', 100.00, 20.00, '2021-09-22', 3, '2021-09-20 07:15:13', '2021-09-20 07:15:13', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(532, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:16:17', '2021-09-20 07:16:17', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 07:17:24', '2021-09-20 07:17:24', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(534, '', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:19:19', '2021-09-20 07:19:19', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(535, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 07:20:50', '2021-09-20 07:20:50', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:21:45', '2021-09-20 07:21:45', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(537, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 1, '2021-09-20 07:24:00', '2021-09-20 07:24:00', NULL, NULL, 1, NULL, NULL, NULL, 252, NULL, NULL, NULL),
(538, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 07:25:55', '2021-09-20 07:25:55', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(539, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-20 07:30:46', '2021-09-20 07:30:46', NULL, NULL, 1, NULL, NULL, NULL, 253, NULL, NULL, NULL),
(540, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 07:33:17', '2021-09-20 07:33:17', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(541, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"fgs\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 3, '2021-09-20 07:39:08', '2021-09-20 07:39:08', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(542, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:48:33', '2021-09-20 07:48:33', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(543, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:48:40', '2021-09-20 07:48:40', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(544, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:50:20', '2021-09-20 07:50:20', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 07:53:48', '2021-09-20 07:53:48', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 3, '2021-09-20 07:55:25', '2021-09-20 07:55:25', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(547, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 07:59:48', '2021-09-20 07:59:48', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(548, '{\"pcode\":\"11201\",\"b_name\":\"111\",\"u_no\":\"121\",\"note\":\"Good\"}', 100.00, 20.00, '2021-09-25', 9, '2021-09-20 08:20:04', '2021-09-20 08:20:04', NULL, NULL, 1, NULL, NULL, NULL, 254, NULL, NULL, NULL),
(549, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-20 08:53:19', '2021-09-20 08:53:19', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(550, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-21', 2, '2021-09-20 12:32:07', '2021-09-20 12:32:07', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 08:06:25', '2021-09-21 08:06:25', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '', 100.00, 20.00, '2021-09-23', 2, '2021-09-21 08:15:25', '2021-09-21 08:15:25', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(553, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 08:56:42', '2021-09-21 08:56:42', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 08:59:25', '2021-09-21 08:59:25', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(555, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 09:54:09', '2021-09-21 09:54:09', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(556, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:00:40', '2021-09-21 10:00:40', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(557, '{\"pcode\":\"232\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:04:52', '2021-09-21 10:04:52', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(558, '', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:07:04', '2021-09-21 10:07:04', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(559, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:09:11', '2021-09-21 10:09:11', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(560, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:11:50', '2021-09-21 10:11:50', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(561, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:15:42', '2021-09-21 10:15:42', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(562, '{\"pcode\":\"hypertext\",\"b_name\":\"123\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:23:05', '2021-09-21 10:23:05', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(563, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 10:59:31', '2021-09-21 10:59:31', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(564, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 11:10:47', '2021-09-21 11:10:47', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(565, '', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 11:23:28', '2021-09-21 11:23:28', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(566, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 1, '2021-09-21 11:26:33', '2021-09-21 11:26:33', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(567, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-22', 2, '2021-09-21 11:48:01', '2021-09-21 11:48:01', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(568, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-27', 1, '2021-09-22 04:45:00', '2021-09-22 04:45:00', NULL, NULL, 1, NULL, NULL, NULL, 255, NULL, NULL, NULL),
(569, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 05:42:45', '2021-09-22 05:42:45', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(570, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 07:09:18', '2021-09-22 07:09:18', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(571, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 07:19:14', '2021-09-22 07:19:14', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(572, '', 100.00, 20.00, '2021-09-23', 2, '2021-09-22 07:24:02', '2021-09-22 07:24:02', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(573, '', 100.00, 20.00, '2021-09-24', 1, '2021-09-22 07:29:52', '2021-09-22 07:29:52', NULL, NULL, 2, 115, 2, NULL, NULL, NULL, NULL, NULL),
(574, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 2, '2021-09-22 07:39:37', '2021-09-22 07:39:37', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 2, '2021-09-22 07:45:04', '2021-09-22 07:45:04', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(576, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 2, '2021-09-22 07:47:28', '2021-09-22 07:47:28', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(577, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 09:29:40', '2021-09-22 09:29:40', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(578, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 09:32:34', '2021-09-22 09:32:34', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(579, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 2, '2021-09-22 10:00:43', '2021-09-22 10:00:43', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(580, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 2, '2021-09-22 10:06:31', '2021-09-22 10:06:31', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(581, '', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 10:10:05', '2021-09-22 10:10:05', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(582, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 10:15:57', '2021-09-22 10:15:57', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(584, '', 0.00, 0.00, NULL, 0, '2021-09-22 10:36:15', '2021-09-22 10:36:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132620709185, '23.70', NULL),
(585, '', 0.00, 0.00, NULL, 0, '2021-09-22 10:46:49', '2021-09-22 10:46:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130720700105, '23.70', NULL),
(586, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 12:10:05', '2021-09-22 12:10:05', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(587, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 12:17:24', '2021-09-22 12:17:24', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(588, '', 0.00, 0.00, NULL, 0, '2021-09-22 12:18:00', '2021-09-22 12:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139720703195, '23.70', NULL),
(589, '', 0.00, 0.00, NULL, 0, '2021-09-22 12:21:39', '2021-09-22 12:21:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139720707195, '23.70', NULL),
(590, '', 0.00, 0.00, NULL, 0, '2021-09-22 12:23:04', '2021-09-22 12:23:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134720709195, '23.70', NULL),
(591, '', 0.00, 0.00, NULL, 0, '2021-09-22 12:31:22', '2021-09-22 12:31:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139820707105, '23.70', NULL),
(604, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-23', 1, '2021-09-22 12:36:49', '2021-09-22 12:36:49', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(614, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 04:36:43', '2021-09-23 04:36:43', NULL, NULL, 1, NULL, NULL, NULL, 257, NULL, NULL, NULL),
(615, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 04:43:38', '2021-09-23 04:43:38', NULL, NULL, 1, NULL, NULL, NULL, 258, NULL, NULL, NULL),
(616, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:16:59', '2021-09-23 05:19:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131820708126, '23.70', '81995'),
(617, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:22:25', '2021-09-23 05:22:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133820703136, '23.70', NULL),
(618, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:23:08', '2021-09-23 05:23:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133820704136, '23.70', NULL),
(619, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:25:49', '2021-09-23 05:25:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137820706136, '23.70', NULL),
(620, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:28:10', '2021-09-23 05:28:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134820709136, '23.70', NULL),
(621, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:30:00', '2021-09-23 05:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134820701146, '23.70', NULL),
(622, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:30:05', '2021-09-23 05:30:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137820701146, '23.70', NULL),
(623, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:30:47', '2021-09-23 05:30:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135820702146, '23.70', NULL),
(624, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:31:44', '2021-09-23 05:31:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135820703146, '23.70', NULL),
(625, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:31:56', '2021-09-23 05:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139820703146, '23.70', NULL),
(626, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:33:32', '2021-09-23 05:33:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135820705146, '23.70', NULL),
(627, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:38:01', '2021-09-23 05:38:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131820700156, '23.70', ''),
(628, '', 0.00, 0.00, NULL, 0, '2021-09-23 05:53:13', '2021-09-23 05:53:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134820705166, '23.70', ''),
(629, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 05:59:36', '2021-09-23 05:59:36', NULL, NULL, 1, NULL, NULL, NULL, 259, NULL, NULL, NULL),
(630, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:00:29', '2021-09-23 06:57:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137820702176, '23.70', ''),
(631, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:04:16', '2021-09-23 06:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138820706176, '23.70', ''),
(632, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:27:21', '2021-09-23 06:27:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132920702106, '23.70', ''),
(633, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:33:01', '2021-09-23 06:33:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139920707106, '23.70', NULL),
(634, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:45:45', '2021-09-23 06:45:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139920700126, '23.70', NULL),
(635, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:35', '2021-09-23 06:49:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137920704126, '23.70', NULL),
(636, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:36', '2021-09-23 06:49:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130920705126, '23.70', NULL),
(637, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:37', '2021-09-23 06:49:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131920705126, '23.70', NULL),
(638, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:37', '2021-09-23 06:49:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132920705126, '23.70', NULL),
(639, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:39', '2021-09-23 06:49:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133920705126, '23.70', NULL),
(640, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:43', '2021-09-23 06:49:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136920705126, '23.70', NULL),
(641, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:43', '2021-09-23 06:49:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138920705126, '23.70', NULL),
(642, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:44', '2021-09-23 06:49:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139920705126, '23.70', NULL),
(643, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:49:46', '2021-09-23 06:49:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130920706126, '23.70', NULL),
(644, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:04', '2021-09-23 06:50:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137920706126, '23.70', NULL),
(645, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 2, '2021-09-23 06:50:12', '2021-09-23 06:50:12', NULL, NULL, 1, NULL, NULL, NULL, 260, NULL, NULL, NULL),
(646, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:14', '2021-09-23 06:50:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131920707126, '23.70', NULL),
(647, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:36', '2021-09-23 06:50:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133920707126, '23.70', NULL),
(648, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:45', '2021-09-23 06:50:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137920707126, '23.70', NULL),
(649, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:53', '2021-09-23 06:50:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132920708126, '23.70', NULL),
(650, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:50:54', '2021-09-23 06:50:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134920708126, '23.70', NULL),
(651, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:51:49', '2021-09-23 06:51:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132920709126, '23.70', NULL),
(652, '', 0.00, 0.00, NULL, 0, '2021-09-23 06:57:07', '2021-09-23 06:57:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136920704136, '23.70', NULL),
(653, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 07:00:46', '2021-09-23 07:00:46', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(654, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 2, '2021-09-23 07:01:53', '2021-09-23 07:01:53', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(655, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 07:04:43', '2021-09-23 07:04:43', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(656, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 07:07:43', '2021-09-23 07:07:43', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(657, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 07:08:46', '2021-09-23 07:08:46', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(658, '', 0.00, 0.00, NULL, 0, '2021-09-23 07:09:26', '2021-09-23 10:50:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130920709146, '23.70', ''),
(659, '', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 07:13:08', '2021-09-23 07:13:08', NULL, NULL, 2, 115, 1, NULL, NULL, NULL, NULL, NULL),
(660, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 07:16:26', '2021-09-23 07:16:26', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(661, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 07:18:04', '2021-09-23 07:18:04', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(662, '{\"pcode\":\"street#12\",\"b_name\":\"12\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 2, '2021-09-23 07:19:01', '2021-09-23 07:19:01', NULL, NULL, 1, NULL, NULL, NULL, 261, NULL, NULL, NULL),
(663, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 07:31:22', '2021-09-23 07:31:22', NULL, NULL, 1, NULL, NULL, NULL, 262, NULL, NULL, NULL),
(664, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 07:39:54', '2021-09-23 07:39:54', NULL, NULL, 1, NULL, NULL, NULL, 263, NULL, NULL, NULL),
(665, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 07:54:37', '2021-09-23 07:54:37', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(666, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 08:51:25', '2021-09-23 08:51:25', NULL, NULL, 1, NULL, NULL, NULL, 264, NULL, NULL, NULL),
(667, '', 0.00, 0.00, NULL, 0, '2021-09-23 08:52:43', '2021-09-23 08:52:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020703167, '23.70', NULL),
(668, '', 0.00, 0.00, NULL, 0, '2021-09-23 08:54:07', '2021-09-23 08:54:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020705167, '23.70', NULL),
(669, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 08:56:35', '2021-09-23 08:56:35', NULL, NULL, 1, NULL, NULL, NULL, 265, NULL, NULL, NULL),
(670, '', 0.00, 0.00, NULL, 0, '2021-09-23 08:59:08', '2021-09-23 08:59:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020709167, '23.70', NULL),
(671, '', 0.00, 0.00, NULL, 0, '2021-09-23 08:59:16', '2021-09-23 08:59:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137020709167, '23.70', NULL),
(672, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 09:00:04', '2021-09-23 09:00:04', NULL, NULL, 1, NULL, NULL, NULL, 266, NULL, NULL, NULL),
(673, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:00:46', '2021-09-23 09:00:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130020701177, '23.70', NULL),
(674, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 09:01:49', '2021-09-23 09:01:49', NULL, NULL, 1, NULL, NULL, NULL, 267, NULL, NULL, NULL),
(675, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:03:09', '2021-09-23 09:03:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137020703177, '23.70', NULL),
(676, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:05:11', '2021-09-23 09:05:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020705177, '23.70', NULL),
(677, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 2, '2021-09-23 09:06:14', '2021-09-23 09:06:14', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(678, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:06:19', '2021-09-23 09:06:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137020706177, '23.70', NULL),
(679, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:06:52', '2021-09-23 09:06:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138020707177, '23.70', NULL),
(680, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:07:40', '2021-09-23 09:07:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020708177, '23.70', NULL),
(681, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:10:13', '2021-09-23 09:10:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134020701187, '23.70', NULL),
(682, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 2, '2021-09-23 09:10:38', '2021-09-23 09:10:38', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(683, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:11:21', '2021-09-23 09:11:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138020702187, '23.70', NULL),
(684, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:12:15', '2021-09-23 09:12:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137020703187, '23.70', NULL),
(685, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:13:21', '2021-09-23 09:13:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139020704187, '23.70', NULL),
(686, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:35:17', '2021-09-23 09:35:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130020702197, '23.70', NULL),
(687, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:35:30', '2021-09-23 09:35:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138020702197, '23.70', NULL),
(688, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:36:11', '2021-09-23 09:36:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133020703197, '23.70', NULL),
(689, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:40:03', '2021-09-23 09:40:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136020708197, '23.70', NULL),
(690, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:41:07', '2021-09-23 09:43:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120700107, '23.70', ''),
(691, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:43:08', '2021-09-23 09:43:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120702107, '23.70', ''),
(692, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:44:11', '2021-09-23 09:44:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120703107, '23.70', ''),
(693, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:47:43', '2021-09-23 09:47:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120707107, '23.70', ''),
(694, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 2, '2021-09-23 09:51:25', '2021-09-23 09:51:25', NULL, NULL, 1, NULL, NULL, NULL, 268, NULL, NULL, NULL),
(695, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:51:55', '2021-09-23 09:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120702117, '23.70', ''),
(696, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:53:43', '2021-09-23 09:53:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120704117, '23.70', ''),
(697, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:55:58', '2021-09-23 09:55:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120707117, '23.70', ''),
(698, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:57:20', '2021-09-23 09:57:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120708117, '23.70', ''),
(699, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:28', '2021-09-23 09:59:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120701127, '23.70', ''),
(700, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:30', '2021-09-23 09:59:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120701127, '23.70', '');
INSERT INTO `orders` (`id`, `d_address`, `d_charge`, `gst_charge`, `date`, `time`, `created_at`, `updated_at`, `deleted_at`, `cart_id`, `order_type`, `user_id`, `outlate`, `status`, `guest_id`, `order_id`, `amount`, `driver_id`) VALUES
(701, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:33', '2021-09-23 09:59:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120701127, '23.70', ''),
(702, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:35', '2021-09-23 09:59:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120701127, '23.70', ''),
(703, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:38', '2021-09-23 09:59:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120701127, '23.70', ''),
(704, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:40', '2021-09-23 09:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120702127, '23.70', ''),
(705, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:47', '2021-09-23 09:59:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120702127, '23.70', ''),
(706, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:50', '2021-09-23 09:59:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120702127, '23.70', ''),
(707, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:52', '2021-09-23 09:59:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120702127, '23.70', ''),
(708, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:56', '2021-09-23 09:59:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120702127, '23.70', ''),
(709, '', 0.00, 0.00, NULL, 0, '2021-09-23 09:59:59', '2021-09-23 10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120703127, '23.70', ''),
(710, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:01', '2021-09-23 10:00:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120703127, '23.70', ''),
(711, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:03', '2021-09-23 10:00:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120703127, '23.70', ''),
(712, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:05', '2021-09-23 10:00:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120703127, '23.70', ''),
(713, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:07', '2021-09-23 10:00:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120703127, '23.70', ''),
(714, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:10', '2021-09-23 10:00:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120703127, '23.70', ''),
(715, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:12', '2021-09-23 10:00:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120703127, '23.70', ''),
(716, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:14', '2021-09-23 10:00:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120703127, '23.70', ''),
(717, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:16', '2021-09-23 10:00:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120703127, '23.70', ''),
(718, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:18', '2021-09-23 10:00:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120704127, '23.70', ''),
(719, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:20', '2021-09-23 10:00:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120704127, '23.70', ''),
(720, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:22', '2021-09-23 10:00:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120704127, '23.70', ''),
(721, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:24', '2021-09-23 10:00:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120704127, '23.70', ''),
(722, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:27', '2021-09-23 10:00:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120704127, '23.70', ''),
(723, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:29', '2021-09-23 10:00:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120704127, '23.70', ''),
(724, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:31', '2021-09-23 10:00:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120704127, '23.70', ''),
(725, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:33', '2021-09-23 10:00:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120704127, '23.70', ''),
(726, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:35', '2021-09-23 10:00:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120705127, '23.70', ''),
(727, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:38', '2021-09-23 10:00:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120705127, '23.70', ''),
(728, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:40', '2021-09-23 10:00:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120705127, '23.70', ''),
(729, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:42', '2021-09-23 10:00:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120705127, '23.70', ''),
(730, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:45', '2021-09-23 10:00:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120706127, '23.70', ''),
(731, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:47', '2021-09-23 10:00:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120706127, '23.70', ''),
(732, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:50', '2021-09-23 10:00:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120706127, '23.70', ''),
(733, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:53', '2021-09-23 10:00:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120706127, '23.70', ''),
(734, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:55', '2021-09-23 10:00:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120706127, '23.70', ''),
(735, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:57', '2021-09-23 10:00:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120706127, '23.70', ''),
(736, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:00:59', '2021-09-23 10:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120706127, '23.70', ''),
(737, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:01', '2021-09-23 10:01:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120706127, '23.70', ''),
(738, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:03', '2021-09-23 10:01:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120706127, '23.70', ''),
(739, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:06', '2021-09-23 10:01:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120706127, '23.70', ''),
(740, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:08', '2021-09-23 10:01:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120707127, '23.70', ''),
(741, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:12', '2021-09-23 10:01:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120707127, '23.70', ''),
(742, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:14', '2021-09-23 10:01:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120707127, '23.70', ''),
(743, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:17', '2021-09-23 10:01:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120707127, '23.70', ''),
(744, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:19', '2021-09-23 10:01:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120707127, '23.70', ''),
(745, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:21', '2021-09-23 10:01:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120707127, '23.70', ''),
(746, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:23', '2021-09-23 10:01:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120707127, '23.70', ''),
(747, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:25', '2021-09-23 10:01:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120707127, '23.70', ''),
(748, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:27', '2021-09-23 10:01:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120708127, '23.70', ''),
(749, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:29', '2021-09-23 10:01:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120708127, '23.70', ''),
(750, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:31', '2021-09-23 10:01:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120708127, '23.70', ''),
(751, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:34', '2021-09-23 10:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120708127, '23.70', ''),
(752, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:36', '2021-09-23 10:01:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120709127, '23.70', ''),
(753, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:38', '2021-09-23 10:01:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120709127, '23.70', ''),
(754, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:40', '2021-09-23 10:01:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120709127, '23.70', ''),
(755, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:42', '2021-09-23 10:01:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120709127, '23.70', ''),
(756, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:45', '2021-09-23 10:01:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120709127, '23.70', ''),
(757, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:47', '2021-09-23 10:01:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120709127, '23.70', ''),
(758, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:49', '2021-09-23 10:01:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120709127, '23.70', ''),
(759, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:52', '2021-09-23 10:01:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120709127, '23.70', ''),
(760, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:54', '2021-09-23 10:01:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120700137, '23.70', ''),
(761, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:56', '2021-09-23 10:01:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120700137, '23.70', ''),
(762, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:01:58', '2021-09-23 10:02:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120700137, '23.70', ''),
(763, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:00', '2021-09-23 10:02:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120700137, '23.70', ''),
(764, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:03', '2021-09-23 10:02:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120700137, '23.70', ''),
(765, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:05', '2021-09-23 10:02:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120700137, '23.70', ''),
(766, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:07', '2021-09-23 10:02:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120700137, '23.70', ''),
(767, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:09', '2021-09-23 10:02:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120700137, '23.70', ''),
(768, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:11', '2021-09-23 10:02:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120700137, '23.70', ''),
(769, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:16', '2021-09-23 10:02:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120701137, '23.70', ''),
(770, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:18', '2021-09-23 10:02:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120701137, '23.70', ''),
(771, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:20', '2021-09-23 10:02:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120701137, '23.70', ''),
(772, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:22', '2021-09-23 10:02:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120701137, '23.70', ''),
(773, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:24', '2021-09-23 10:02:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120701137, '23.70', ''),
(774, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:26', '2021-09-23 10:02:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120701137, '23.70', ''),
(775, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:29', '2021-09-23 10:02:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120702137, '23.70', ''),
(776, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:31', '2021-09-23 10:02:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120702137, '23.70', ''),
(777, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:33', '2021-09-23 10:02:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120702137, '23.70', ''),
(778, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:35', '2021-09-23 10:02:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120702137, '23.70', ''),
(779, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:37', '2021-09-23 10:02:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120702137, '23.70', ''),
(780, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:39', '2021-09-23 10:02:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120702137, '23.70', ''),
(781, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:41', '2021-09-23 10:02:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120703137, '23.70', ''),
(782, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:43', '2021-09-23 10:02:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120703137, '23.70', ''),
(783, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:45', '2021-09-23 10:02:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120703137, '23.70', ''),
(784, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:47', '2021-09-23 10:02:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120703137, '23.70', ''),
(785, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:50', '2021-09-23 10:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120703137, '23.70', ''),
(786, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:52', '2021-09-23 10:02:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120703137, '23.70', ''),
(787, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:54', '2021-09-23 10:02:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120703137, '23.70', ''),
(788, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:56', '2021-09-23 10:02:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120703137, '23.70', ''),
(789, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:02:59', '2021-09-23 10:03:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120704137, '23.70', ''),
(790, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:01', '2021-09-23 10:03:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120704137, '23.70', ''),
(791, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:03', '2021-09-23 10:03:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120704137, '23.70', ''),
(792, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:05', '2021-09-23 10:03:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120704137, '23.70', ''),
(793, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:08', '2021-09-23 10:03:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120704137, '23.70', ''),
(794, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:10', '2021-09-23 10:03:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120704137, '23.70', ''),
(795, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:12', '2021-09-23 10:03:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120704137, '23.70', ''),
(796, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:14', '2021-09-23 10:03:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120704137, '23.70', ''),
(797, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:17', '2021-09-23 10:03:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120704137, '23.70', ''),
(798, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:19', '2021-09-23 10:03:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120705137, '23.70', ''),
(799, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:21', '2021-09-23 10:03:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120705137, '23.70', ''),
(800, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:24', '2021-09-23 10:03:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120705137, '23.70', ''),
(801, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:28', '2021-09-23 10:03:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120705137, '23.70', NULL),
(802, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:29', '2021-09-23 10:03:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120705137, '23.70', NULL),
(803, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:30', '2021-09-23 10:03:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120706137, '23.70', NULL),
(804, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:38', '2021-09-23 10:03:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120706137, '23.70', NULL),
(805, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:39', '2021-09-23 10:03:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120706137, '23.70', NULL),
(806, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:39', '2021-09-23 10:03:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120706137, '23.70', NULL),
(807, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:40', '2021-09-23 10:03:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120706137, '23.70', NULL),
(808, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:40', '2021-09-23 10:03:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120706137, '23.70', NULL),
(809, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:41', '2021-09-23 10:03:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120707137, '23.70', NULL),
(810, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:41', '2021-09-23 10:03:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120707137, '23.70', NULL),
(811, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:41', '2021-09-23 10:03:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120707137, '23.70', NULL),
(812, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:42', '2021-09-23 10:03:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120707137, '23.70', NULL),
(813, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:42', '2021-09-23 10:03:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120707137, '23.70', NULL),
(814, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:43', '2021-09-23 10:03:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120707137, '23.70', NULL),
(815, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:43', '2021-09-23 10:03:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120707137, '23.70', NULL),
(816, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:43', '2021-09-23 10:03:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120707137, '23.70', NULL),
(817, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:45', '2021-09-23 10:03:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120708137, '23.70', NULL),
(818, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:45', '2021-09-23 10:03:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120708137, '23.70', NULL),
(819, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:48', '2021-09-23 10:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120708137, '23.70', NULL),
(820, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:48', '2021-09-23 10:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120708137, '23.70', NULL),
(821, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:48', '2021-09-23 10:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120709137, '23.70', NULL),
(822, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:50', '2021-09-23 10:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120709137, '23.70', NULL),
(823, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:50', '2021-09-23 10:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120709137, '23.70', NULL),
(824, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:50', '2021-09-23 10:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120709137, '23.70', NULL),
(825, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:50', '2021-09-23 10:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120709137, '23.70', NULL),
(826, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:52', '2021-09-23 10:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120709137, '23.70', NULL),
(827, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:52', '2021-09-23 10:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120709137, '23.70', NULL),
(828, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:52', '2021-09-23 10:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120709137, '23.70', NULL),
(829, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:54', '2021-09-23 10:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120709137, '23.70', NULL),
(830, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:03:54', '2021-09-23 10:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120700147, '23.70', NULL),
(831, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:00', '2021-09-23 10:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120700147, '23.70', NULL),
(832, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:02', '2021-09-23 10:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120700147, '23.70', NULL),
(833, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:04', '2021-09-23 10:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120700147, '23.70', NULL),
(834, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:06', '2021-09-23 10:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136120700147, '23.70', NULL),
(835, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:10', '2021-09-23 10:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137120700147, '23.70', NULL),
(836, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:04:16', '2021-09-23 10:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120700147, '23.70', NULL),
(837, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:05:17', '2021-09-23 10:05:17', NULL, NULL, 1, NULL, NULL, NULL, 269, NULL, NULL, NULL),
(838, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:08:55', '2021-09-23 10:08:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120706147, '23.70', NULL),
(839, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:08:58', '2021-09-23 10:08:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120707147, '23.70', NULL),
(840, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:00', '2021-09-23 10:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120707147, '23.70', NULL),
(841, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:02', '2021-09-23 10:09:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120707147, '23.70', NULL),
(842, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:04', '2021-09-23 10:09:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120707147, '23.70', NULL),
(843, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:07', '2021-09-23 10:09:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120707147, '23.70', NULL),
(844, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:09', '2021-09-23 10:09:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120707147, '23.70', NULL),
(845, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:11', '2021-09-23 10:09:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120707147, '23.70', NULL),
(846, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:13', '2021-09-23 10:09:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130120708147, '23.70', NULL),
(847, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:15', '2021-09-23 10:09:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132120708147, '23.70', NULL),
(848, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:17', '2021-09-23 10:09:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120708147, '23.70', NULL),
(849, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:09:20', '2021-09-23 10:14:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120708147, '23.70', '81995'),
(850, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:16:10', '2021-09-23 10:16:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120706157, '23.70', NULL),
(851, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:16:15', '2021-09-23 10:16:15', NULL, NULL, 1, NULL, NULL, NULL, 270, NULL, NULL, NULL),
(852, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:16:42', '2021-09-23 10:16:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120706157, '23.70', ''),
(853, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:17:24', '2021-09-23 10:17:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120707157, '23.70', NULL),
(854, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:17:28', '2021-09-23 10:17:28', NULL, NULL, 1, NULL, NULL, NULL, 271, NULL, NULL, NULL),
(855, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:17:52', '2021-09-23 10:18:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138120708157, '23.70', '81995'),
(856, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:24:36', '2021-09-23 10:24:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120707167, '23.70', NULL),
(857, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:24:43', '2021-09-23 10:24:43', NULL, NULL, 1, NULL, NULL, NULL, 272, NULL, NULL, NULL),
(858, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:25:14', '2021-09-23 10:25:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133120708167, '23.70', '81995'),
(859, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:27:43', '2021-09-23 10:27:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131120701177, '23.70', NULL),
(860, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:27:53', '2021-09-23 10:27:53', NULL, NULL, 1, NULL, NULL, NULL, 273, NULL, NULL, NULL),
(861, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:28:19', '2021-09-23 10:29:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139120701177, '23.70', ''),
(862, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:29:36', '2021-09-23 10:29:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135120703177, '23.70', NULL),
(863, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 10:29:43', '2021-09-23 10:29:43', NULL, NULL, 1, NULL, NULL, NULL, 274, NULL, NULL, NULL),
(864, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:30:06', '2021-09-23 10:30:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134120704177, '23.70', ''),
(865, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:54:41', '2021-09-23 10:54:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131220702107, '23.70', NULL),
(866, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 10:56:29', '2021-09-23 10:56:29', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(867, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:57:21', '2021-09-23 10:57:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139220704107, '23.70', NULL),
(868, '', 0.00, 0.00, NULL, 0, '2021-09-23 10:58:16', '2021-09-23 10:58:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220706107, '23.70', NULL),
(869, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:01:54', '2021-09-23 11:01:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132220700117, '23.70', NULL),
(870, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 11:02:02', '2021-09-23 11:02:02', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(871, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:02:59', '2021-09-23 11:02:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220701117, '23.70', NULL),
(872, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 11:04:15', '2021-09-23 11:04:15', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(873, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:05:27', '2021-09-23 11:05:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220704117, '23.70', NULL),
(874, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:08:24', '2021-09-23 11:08:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139220707117, '23.70', NULL),
(875, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 11:08:52', '2021-09-23 11:08:52', NULL, NULL, 1, 115, NULL, NULL, NULL, 132220708117, '23.70', NULL),
(876, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:08:56', '2021-09-23 11:08:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132220708117, '23.70', NULL),
(877, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:08:58', '2021-09-23 11:08:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220708117, '23.70', NULL),
(878, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:09:37', '2021-09-23 11:09:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220709117, '23.70', NULL),
(879, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:21:37', '2021-09-23 11:21:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139220701137, '23.70', NULL),
(880, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 11:21:44', '2021-09-23 11:21:44', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(881, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:22:32', '2021-09-23 11:22:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130220703137, '23.70', NULL),
(882, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:24:23', '2021-09-23 11:24:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220705137, '23.70', NULL),
(883, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:25:02', '2021-09-23 11:25:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132220706137, '23.70', NULL),
(884, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:25:50', '2021-09-23 11:25:50', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(885, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:25:57', '2021-09-23 11:25:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220707137, '23.70', NULL),
(886, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:26:31', '2021-09-23 11:26:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137220707137, '23.70', NULL),
(887, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:32:43', '2021-09-23 11:32:43', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(888, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:33:17', '2021-09-23 11:33:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220705147, '23.70', NULL),
(889, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:34:41', '2021-09-23 11:34:41', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(890, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:35:22', '2021-09-23 11:35:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220708147, '23.70', NULL),
(891, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:36:20', '2021-09-23 11:36:20', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(892, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:36:23', '2021-09-23 11:36:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220709147, '23.70', NULL),
(893, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:37:01', '2021-09-23 11:37:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220700157, '23.70', NULL),
(894, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:48:07', '2021-09-23 11:48:07', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(895, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:48:12', '2021-09-23 11:48:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133220702167, '23.70', NULL),
(896, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 2, '2021-09-23 11:48:40', '2021-09-23 11:48:40', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(897, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:49:41', '2021-09-23 11:49:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131220704167, '23.70', NULL),
(898, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:50:23', '2021-09-23 11:50:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131220705167, '23.70', NULL),
(899, '', 0.00, 0.00, NULL, 0, '2021-09-23 11:55:03', '2021-09-23 11:55:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139220709167, '23.70', NULL),
(900, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-25', 1, '2021-09-23 12:13:48', '2021-09-23 12:13:48', NULL, NULL, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(901, '', 0.00, 0.00, NULL, 0, '2021-09-23 12:13:50', '2021-09-23 12:13:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135220709187, '23.70', NULL),
(902, '', 0.00, 0.00, NULL, 0, '2021-09-23 12:14:48', '2021-09-23 12:14:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138220700197, '23.70', NULL),
(904, '', 0.00, 0.00, NULL, 0, '2021-09-23 13:56:40', '2021-09-23 13:56:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136320702197, '23.70', NULL),
(905, '', 0.00, 0.00, NULL, 0, '2021-09-23 13:58:08', '2021-09-23 13:58:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136320704197, '23.70', NULL),
(906, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:04:59', '2021-09-23 14:04:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133420701107, '23.70', NULL),
(907, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:06:55', '2021-09-23 14:06:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130420703107, '23.70', NULL),
(908, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:09:26', '2021-09-23 14:09:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138420705107, '23.70', NULL),
(909, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:11:13', '2021-09-23 14:11:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133420707107, '23.70', NULL),
(910, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:12:48', '2021-09-23 14:12:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133420709107, '23.70', NULL),
(911, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:17:17', '2021-09-23 14:17:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130420704117, '23.70', NULL),
(912, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:18:43', '2021-09-23 14:18:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420705117, '23.70', NULL),
(913, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:19:25', '2021-09-23 14:19:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132420706117, '23.70', NULL),
(914, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:20:19', '2021-09-23 14:20:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420707117, '23.70', NULL),
(915, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:21:16', '2021-09-23 14:21:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130420708117, '23.70', NULL),
(916, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:22:26', '2021-09-23 14:22:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420709117, '23.70', NULL),
(917, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:23:48', '2021-09-23 14:23:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139420700127, '23.70', NULL),
(918, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:25:04', '2021-09-23 14:25:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139420701127, '23.70', NULL),
(919, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:27:13', '2021-09-23 14:27:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420704127, '23.70', NULL),
(920, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:29:44', '2021-09-23 14:29:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139420706127, '23.70', NULL),
(921, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:31:57', '2021-09-23 14:31:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420709127, '23.70', NULL),
(922, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:41:40', '2021-09-23 14:41:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134420708137, '23.70', NULL),
(923, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:43:56', '2021-09-23 14:43:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134420700147, '23.70', NULL),
(924, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:51:01', '2021-09-23 14:51:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130420708147, '23.70', NULL),
(925, '', 0.00, 0.00, NULL, 0, '2021-09-23 14:53:20', '2021-09-23 14:53:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131420700157, '23.70', NULL),
(930, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-24', 1, '2021-09-23 15:18:46', '2021-09-23 15:18:46', NULL, NULL, 1, 115, NULL, NULL, NULL, 138420705177, '23.70', NULL),
(931, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 2, '2021-09-23 15:20:11', '2021-09-23 15:20:11', NULL, NULL, 1, NULL, NULL, NULL, 275, NULL, NULL, NULL),
(932, '{\"pcode\":\"street#12\",\"b_name\":\"hypertext\",\"u_no\":\"12\",\"note\":\"\"}', 100.00, 20.00, '2021-09-28', 1, '2021-09-23 15:31:32', '2021-09-23 15:31:32', NULL, NULL, 1, NULL, 1, NULL, 276, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_type`
--

CREATE TABLE `order_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_type`
--

INSERT INTO `order_type` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pickup', NULL, NULL, NULL),
(2, 'delivary', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outlates`
--

CREATE TABLE `outlates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlates`
--

INSERT INTO `outlates` (`id`, `name`, `address`, `description`, `phone`, `start`, `end`, `location`, `latitude`, `longitude`, `deleted_at`, `created_at`, `updated_at`, `banner`, `status`, `zip`) VALUES
(1, 'Bariuma by Marina Square', '6 Raffles Blvd, Marina Square, Singapore039594', NULL, '01917177562', '9 am', '10pm', '2.22,2.33', NULL, NULL, NULL, '2021-07-04 04:10:54', '2021-09-15 04:44:30', 1, 1, 9280),
(2, 'Bariuma by Marina Square', '6 Raffles Blvd, Marina Square, Singapore\r\n039594', NULL, '12345678912', NULL, NULL, '12.22,12.33', NULL, NULL, NULL, '2021-07-12 15:46:23', '2021-07-14 01:06:34', 50, NULL, 223),
(3, 'Main Branch', '15 Raffles Blvd, Marina Circle, Singapore\r\n55555', NULL, '654646486486', NULL, NULL, '2.22,2.33', NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL),
(6, 'product 1', 'parachinar', NULL, '1232132342', NULL, NULL, '123.3,123.3', NULL, NULL, NULL, '2021-09-15 04:37:49', '2021-09-15 05:11:07', 68, NULL, NULL),
(7, 'product 1', 'parachinar', NULL, '1232132342', NULL, NULL, '12.2,12.3', NULL, NULL, NULL, '2021-09-24 02:16:27', '2021-09-24 02:16:27', 83, NULL, NULL),
(8, 'product 2', 'parachinar', NULL, '1232132342', NULL, NULL, '12.4,12.3', NULL, NULL, NULL, '2021-09-24 02:16:54', '2021-09-24 02:16:54', 84, NULL, NULL),
(9, 'product 3', 'parachinar', NULL, '1232132342', NULL, NULL, '12.3,12.4', NULL, NULL, NULL, '2021-09-24 02:17:17', '2021-09-24 02:17:17', 85, NULL, NULL),
(10, 'product 4', 'parachinar', NULL, '1232132342', NULL, NULL, '12.4,12.5', NULL, NULL, NULL, '2021-09-24 02:17:36', '2021-09-24 02:17:36', 86, NULL, NULL),
(11, 'product 1', 'parachinar', NULL, '1232132342', NULL, NULL, '12.4,12.4', NULL, NULL, NULL, '2021-09-24 02:17:51', '2021-09-24 02:17:51', 87, NULL, NULL),
(12, 'product 1', 'parachinar', NULL, '1232132342', NULL, NULL, '1.1,1.1', NULL, NULL, NULL, '2021-09-24 02:18:16', '2021-09-24 02:18:16', 88, NULL, NULL),
(13, 'product 1', 'parachinar', NULL, '1232132342', NULL, NULL, '12.2,12.3', NULL, NULL, NULL, '2021-09-24 02:18:31', '2021-09-24 02:18:31', 89, NULL, NULL),
(14, 'test outlet', 'test address outlate', NULL, '03205490860', '10:10', '10:10', NULL, '12.43', '12.33', NULL, '2021-10-08 01:58:14', '2021-10-08 02:11:57', 91, NULL, NULL),
(15, 'test 2', 'assdg', 'test description', '03205490860', '10:10', '10:10', NULL, '12.44', '12.55', NULL, '2021-10-08 02:19:06', '2021-10-08 02:19:06', 92, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('itianzinfo@gmail.com', '$2y$10$TAYJR.SaQ7o7Nem7prtAiuCtVHFBUuBf5jNUIS5a/uY.gP2b.xMMW', '2021-09-01 09:01:26'),
('rimshaubaid@live.com', '$2y$10$rNF/baHBiiyEVYZBxxl/wOnHe3Fpk9/.Nm358n2WoMzNKZoTll9D6', '2021-09-06 10:28:28'),
('alexrobbio860@gmail.com', '$2y$10$ok3RKZ/eGcB3znpNH6sdx.hUI0MK5T6J3Lz6faMeJz6Z/GIcRKoAu', '2021-09-08 05:57:00'),
('rimshaubaid75@gmail.com', '$2y$10$RgL2POWRGXdOv/Wp27907eo2S5M0v4te.Nf./4/zI1awnL1.ZVveK', '2021-09-08 11:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `weekend` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `created_at`, `updated_at`, `cat_id`, `menu_id`, `image`, `weekend`, `weekday`, `promo`, `promo_desc`) VALUES
(7, 'prawns noodles', 'Hokkien prawn noodle soup is a popular local dish made up of Hokkien mee (thick yellow noodles) in a broth of pork bones and prawn stock made from prawn heads and shells, and garnished with bean sprouts, slices of pork and prawn, and kangkong (water spinach). ... Before serving, the yellow noodles are blanched', 50, 5, '2021-08-04 05:12:14', '2021-08-09 09:00:42', 11, 5, 5, NULL, NULL, NULL, NULL),
(8, 'Aspargus salad', 'Asparagus is a highly nutritious vegetable that can be eaten cooked or raw. Because of its tough texture, cooking is the most popular preparation method', 20, 5, '2021-08-04 09:02:45', '2021-08-06 10:11:53', 10, 4, 6, NULL, NULL, NULL, NULL),
(16, 'Fish Crackers', 'Fish crackers are deep fried crackers made from fish and spices that serve as flavouring, originated from Indonesia. The crackers also mixed with tapioca flour and/or sago flour as the main ingredients and the salt, sugar and MSG as seasonings.', 20, 10, '2021-08-04 10:43:33', '2021-08-06 10:10:58', 10, 4, 12, NULL, NULL, NULL, NULL),
(17, 'omlette waffle', 'In a large bowl, beat eggs. Season with salt and pepper, then mix in ham, cheddar, and parsley. · Spray waffle iron with cooking spray and pour', 50, 15, '2021-08-05 16:31:39', '2021-08-09 09:00:56', 11, 4, 19, NULL, NULL, NULL, NULL),
(18, 'Black Coffeee', 'Black coffee is simply coffee that is normally brewed without the addition of additives such as sugar, milk, cream, or added flavors.', 20, 15, '2021-08-06 10:05:49', '2021-08-06 10:05:49', 9, 4, 27, NULL, NULL, NULL, NULL),
(19, 'Latte', 'Black coffee is simply coffee that is normally brewed without the addition of additives such as sugar, milk, cream, or added flavors.simply coffee that is normally brewed without the addition of additives such as sugar, milk, cream, or added flavors.', 50, 15, '2021-08-06 10:07:31', '2021-08-09 08:55:44', 9, 4, 28, NULL, NULL, NULL, NULL),
(20, 'Molten Lava', 'moltem lava details', 20, 15, '2021-08-09 09:03:20', '2021-08-09 09:03:20', 12, 5, 31, NULL, NULL, NULL, NULL),
(21, 'Pan Cakes', 'pan cakes details', 20, 15, '2021-08-09 09:04:22', '2021-08-09 09:04:22', 12, 4, 32, NULL, NULL, NULL, NULL),
(22, 'Caramel Waffle', 'caramel waffle details', 15, 5, '2021-08-09 09:45:14', '2021-08-09 09:45:14', 12, 4, 33, NULL, NULL, NULL, NULL),
(23, 'choco lava', 'details', 20, 15, '2021-08-09 09:46:24', '2021-08-09 09:46:24', 12, 4, 34, NULL, NULL, NULL, NULL),
(24, 'Apple Tea', 'apple tea details', 20, 15, '2021-08-09 12:27:51', '2021-08-09 12:28:36', 9, 1, 35, NULL, NULL, NULL, NULL),
(35, 'product 1', 'fhgfjgfkhgh', 20, NULL, '2021-09-20 05:05:58', '2021-09-20 05:05:58', 10, 1, 76, NULL, NULL, 'on', NULL),
(36, 'product test', 'gadgfdsdf', 35, NULL, '2021-09-20 05:46:13', '2021-09-20 05:54:02', 10, 1, 77, NULL, NULL, 'on', 'promo descsss');

-- --------------------------------------------------------

--
-- Table structure for table `pro_cats`
--

CREATE TABLE `pro_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_cats`
--

INSERT INTO `pro_cats` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`, `banner`) VALUES
(9, 'Drinks', NULL, '2021-08-06 10:03:48', '2021-09-15 03:00:29', 38),
(10, 'Appetizers', NULL, '2021-08-06 10:08:21', '2021-08-06 10:08:21', 39),
(11, 'Main Course', NULL, '2021-08-06 10:11:12', '2021-08-06 10:11:12', 40),
(12, 'Desserts', NULL, '2021-08-09 08:11:25', '2021-08-09 08:11:25', 41),
(13, 'Continental Food', NULL, '2021-08-09 09:01:51', '2021-08-09 09:01:51', 42),
(18, 'product 3', NULL, '2021-09-22 01:36:56', '2021-09-22 01:36:56', NULL),
(19, 'product 4', NULL, '2021-09-22 01:37:06', '2021-09-22 01:37:06', NULL),
(20, 'product 5', NULL, '2021-09-22 01:37:14', '2021-09-22 01:37:14', NULL),
(21, 'product 6', NULL, '2021-09-22 01:37:22', '2021-09-22 01:37:22', NULL),
(22, 'product 7', NULL, '2021-09-22 01:37:31', '2021-09-22 01:37:31', NULL),
(23, 'product 8', NULL, '2021-09-22 01:37:43', '2021-09-22 01:37:43', NULL),
(24, 'product 9', NULL, '2021-09-22 01:38:00', '2021-09-22 01:38:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pro_menus`
--

CREATE TABLE `pro_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `banner` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_menus`
--

INSERT INTO `pro_menus` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `banner`) VALUES
(1, '1 for 1 sashimi', NULL, '2021-09-14 04:33:50', NULL, 22),
(2, '2 for 1 sashimi', NULL, '2021-08-06 08:44:44', NULL, 24),
(3, 'Test menu', '2021-08-05 12:46:56', '2021-08-06 08:45:26', NULL, 25),
(4, 'Brekfast Menu', '2021-08-05 13:09:20', '2021-08-06 10:01:24', NULL, 26),
(5, 'Lunch Menu', '2021-08-06 10:17:10', '2021-08-06 10:18:01', NULL, 30),
(10, 'ter', '2021-09-16 00:48:05', '2021-09-16 00:48:05', NULL, 73),
(11, 'menu 1', '2021-09-24 01:49:31', '2021-09-24 01:49:31', NULL, 78),
(12, 'menu 2', '2021-09-24 01:49:40', '2021-09-24 01:49:40', NULL, 79),
(13, 'menu 3', '2021-09-24 01:49:48', '2021-09-24 01:49:48', NULL, 80),
(14, 'menu 4', '2021-09-24 01:50:00', '2021-09-24 01:50:00', NULL, 81),
(15, 'menu 5', '2021-09-24 01:50:11', '2021-09-24 01:50:11', NULL, 82);

-- --------------------------------------------------------

--
-- Table structure for table `pro_menus_items`
--

CREATE TABLE `pro_menus_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_menus_items`
--

INSERT INTO `pro_menus_items` (`id`, `created_at`, `updated_at`, `pro_menu_id`, `product_id`) VALUES
(1, NULL, NULL, 1, 7),
(3, NULL, NULL, 2, 8),
(4, NULL, NULL, 2, 7),
(7, '2021-08-04 11:43:15', '2021-08-04 11:43:15', 2, 15),
(8, '2021-08-04 11:43:50', '2021-08-04 11:43:50', 1, 14),
(9, '2021-08-04 12:03:48', '2021-08-04 12:03:48', 1, 16),
(10, '2021-08-05 16:31:39', '2021-08-05 16:31:39', 4, 17),
(11, '2021-08-06 10:05:49', '2021-08-06 10:05:49', 4, 18),
(12, '2021-08-06 10:07:31', '2021-08-06 10:07:31', 4, 19),
(13, '2021-08-09 09:03:20', '2021-08-09 09:03:20', 5, 20),
(14, '2021-08-09 09:04:22', '2021-08-09 09:04:22', 4, 21),
(15, '2021-08-09 09:45:14', '2021-08-09 09:45:14', 4, 22),
(16, '2021-08-09 09:46:24', '2021-08-09 09:46:24', 4, 23),
(17, '2021-08-09 12:27:51', '2021-08-09 12:27:51', 5, 24);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('08D6dm7dKhVYVKphbNOWGEy5NtgrqEL5g84hmxvC', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzAzRTFsRDFwWEhFbkE1S0dudEt6VHhvVmllOGZhVms2SFc2blNUbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631096017),
('0aCnfbDN90Yx0HtERcRCi6DRxvbyyEChjqeVPFCL', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU1rRVduZ1hLS28zSTByTTF5REZGbDhtZmhsRkxlb3B3MGdId1padiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162455),
('0IIEw9RVywzwi4LbsdHDrdmVkSG2F87wYV1dJRJE', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0wzUWxXVHdOM1VrbDZxQVI0eUc5TWRrMlNYMkI3eEloVlRiV0twdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096148),
('0No2ZUae8Y7X6VMU4ZM4TNvhaFx8OB33Ite1NOpG', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamZ3b2VmaHdobjdLVHVWMFNmYmtUQ3JyVmh0a1ZTcDFDdDhMMjJlZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0NrYnFJMExGamlPcDhFVVVNSGxFQTJrcW5MYVhkdFBoRm5nTlNYZzQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('0rDn5vvoNP90q5uJyLpq1kTPQnAOMFETHVNBklOK', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUhHdjJkUEZmNjVRUXV0Q05oWFdXWldCSWdlUm5FN3VmajkzdTlCQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162969),
('0V25tx1D0LHAxCNbLbdRJqJI2451Np8yo04tT9jU', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWo3dmd1b2NOQVRwR3VVMm9zeXZlUVFNc3RBVzRRQlZPVWxLaThiayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097812),
('0ZFvaSY3YROKLX6suWAZwBfT4RFTNfdIqP1DUyXk', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkNjRmdXczBFTDdJZmM0azNsMG1nVHhpWjZBSW5ucVV2eDl3MkE2cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169262),
('0ZSyGEZLurWfu314YEq32MS9UyfgX8uzLIS8aHNs', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1ZMaUUwbmxMUkxzZGF6M1NWV09icFlYUG9ENkxjQTJlY2k3eVFGSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631164939),
('13sSOCEs27QbF5KZ1s1s6sFzsR96jwBGDEYHGx3P', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JCNmxPTFNUSWtsYUJ1NXNaWENMVFdOYkFUemVkUkVIT3JNV0NsNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631165955),
('1BNCmLIV53kyYZMjFQKm2WKmbHCB3UTPU44qi70U', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWV6Mmo2dk84dGVUOG5UVjhlY3ZBZTJFWGZpdXhpY1ZvbFdQVTJPOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099249),
('1cAa9X5tqg2wzRRrAYyrvitcxWjEPxzMOSic7h8z', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblB5UHVIUjJWYWx3M2J5M1BldUZ3RkFFeGlaRWUyTmRGZU1wdmt3cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114462),
('1DGTcqQJ0CXn5ZaHD0KZSIlzfcUY1cpiedIBEpNY', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVF0Wk1SZWM4dWZTYkV5UEh3M3dBbU9NRGxYSmtzNWpMS2JEOEZQYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096009),
('1FK728isgk5HnWMfPQvLyQQglGJhGDFJbCkh4Vga', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemNSb1NiTkxETHFxWGgxRTZUOHBvVXdrS2hsVDBVTnJSNzg5aFBtdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169598),
('1KPH94snegXQITzTC8D4H7rPaktrdhzYOkGwJXUw', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1AyYlJ2R3pLU2hKajlJakdGWXBROHIydDJnMWF2T3JScUdkWHJvMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097682),
('1rePFr7lyD6HQhx3sin33DJtfsNMSW578fslOlSb', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXo5MHE2bm90S01WOGJENDcxTFdDbk4zdHhqUEVIQnYwSXlxR1FzMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631161054),
('1rJbiSc1IW2usC6X5Tvssp5QQnZ6Lu9oxV7SzB0t', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmNxNDFmMVo4M0lkQkRmS2xRU0RDd0hPMkNHYklhOXN2b3FtTkozOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114457),
('2BrZSefnDl7FHMlGmn9KksI630SVmnQoTIsdVveG', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEVNTDZJc3QzaEdwcHJpaURJVm9SOEYzYmx5UWs4U2JxdkFCMEx6RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114453),
('2emydDLg2t7ujawElEuVrgV23foBjY5jhyP8Pd5g', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjY3aTMxbnIyYWlBTkJPcnlPUHBMYXdlNGg0bUQ3SnQ3dDNHOXo2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099369),
('2GI0mE7wJOjikJFSlo68iC2X4CMbXE0kk3oJZPW3', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjF3ckpGYk1ZVlJ3RG03dWRmQk5Dbk1UeXF4dDZOd3IzU1BaZlhwVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631113480),
('2rzm2c5AdQjzURW3cjB1FIkgSEYKaXawKVl96Vtl', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVNGOXFmSVBUakJtd25Na1h1Yzl6Q0FpUzZSZnRCUkdleE9Ya2hGZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167187),
('2uD1S951p9eWTx3Q809bFENdUJqSJ4KiieF1RSPX', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjc4Z2NtZHF4bkE3WUR5bHhmSTVYRWtiTWVndk1yRWxWaEFUT3Y0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631166026),
('2WKr8pXPFgH4IJce7Y6zY63AK19rjrKESN3HvY4r', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDdYSHdaVTdDR0x3YWUxVG9OZjBmbUVLWGdqMkxTTjZrVklvVUxLUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167683),
('2YadTfsMmuzmMJu77gdpy6bbo4g3CrtY1KxOmmJl', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG9NYXNkZXlSZm5RNHFnQ3Ezd3U1MUpDVjc3eTV2cXV4eXdvdFcyTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097811),
('3az0wjO0teKi97eVeaNq27tjFTG5YXhlrQX13Lpd', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUtRbFZYaHNQYmFOUzFRRjl1Vm13TVBGbE1FWkNGbHJ0Y0VnbFhPVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097653),
('3cKi3PRV2VccWIWcgc03ZG1KlN1p2iAp2Wt2AWJM', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQkd4aDNYbDdpSGpiUTFjOU1mb3JERklpUWZvblYwcHBJa3AxVEEyYSI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjU6InRva2VuIjtzOjY0OiJlOTY1ZTUxMjFjYjlkODczOTFjOWJkYjAzYzlkMjA3NTVlZGZjODk5Y2ViZDQ5ZmUxZjA5Mzg4ZDYwYzljYmQyIjtzOjU6ImVtYWlsIjtzOjIyOiJwZXRlcmhlc3NlNzRAZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjg6InBhc3N3b3JkIjthOjE6e2k6MDtzOjMxOiJUaGUgcGFzc3dvcmQgZmllbGQgaXMgcmVxdWlyZWQuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxNDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGFzc3dvcmQvcmVzZXQ/ZW1haWw9cGV0ZXJoZXNzZTc0JTQwZ21haWwuY29tJnRva2VuPWU5NjVlNTEyMWNiOWQ4NzM5MWM5YmRiMDNjOWQyMDc1NWVkZmM4OTljZWJkNDlmZTFmMDkzODhkNjBjOWNiZDIiO319', 1631098071),
('3EDpbed0OivH0MttdUkDLZEQbR6pyugr6c6Iyr46', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUExVVdYVU9ZbmdyREk0YnlpVDNBNERjWmRHQlJpRUZGTTRXYWNoRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114452),
('3ELhg82xBlKvLfboB87D8KXsini7THwcXQlLPkRt', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXNKdU1lTFJYYkE3TDUwM2h6b0lsWFBHNUNvZWFETDNiQ2NFVDNxQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114463),
('3HAwTgCuXM7QswzXCKyRKoS6HRQKZnTzvHVsObxQ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkpQRmxYcnRxVUtoSXBwMzcwNTZ2WDFKUVozNGtZWmtDQjhBWlVWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114456),
('3lU0dfqmLepWsfN2JD2CZzY3IEPmlJaMTiigcEyW', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnJPcVgzR2Ezb0Y2TXpVWG55RktxdU5EcUJackltWUI4NEhKaENLMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098424),
('3vLnwnDuGo6hPvihO827QR2E9uxqYzJ0PzkJRwi4', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVNZSmp1U09UQWhJR3YzUEsxZ2swYUE5cHZhOU1GSnNEd2JvNVdGRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1BydDluVDBDWVlaVHVSVHdZZG5hMW1tdTRzSWFyNXlkdGh2WmxJYU4uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('4LBV8EIvz83npHMriPxhTWfk5K8KCj5K0FMZ1hEX', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0YwZ1dDVnRaeW85VmVVZlRTdWM2dW52YkxmZEpjRTcyTGlCb082WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114934),
('4prjkfcuMzf2CECIFKgpqSI2wyQRRY23Z7mCSAES', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjZ5YnNwNUoxQU82STY0dHpXZlF1QlJlWUlvWXA3Z25aMTh0MUZiOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114040),
('4rNuBrq6kixNagbRAYxZyFJpGQeqAl0BlyqK4bN6', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY20yZXg4dmdraHhpZnlRMFpJcHRNZGk3bHBsTkhxSnVISU1TNFdQZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098423),
('4SZB3k98irfn4LJq5o9Ze1qKGup7hc5MyoOjECc9', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOFgycDc4WmE4NDRHeXJSdE8ybFhiRTBrS1dtUEp6bVBDcEhjYndReCI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjU6InRva2VuIjtzOjY0OiIzNDFiYjA1YWQ2YTBlZDU4MTIzNjgwYTNlMjE1OWM1NGFjZDA3ZmUzNzQ4YTMzMDYyNDA0ZGQ2NmVlNWVkMjFhIjtzOjU6ImVtYWlsIjtzOjIzOiJhbGV4cm9iYmlvODYwQGdtYWlsLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToyOntpOjA7czoxMDoiX29sZF9pbnB1dCI7aToxO3M6NjoiZXJyb3JzIjt9fXM6NjoiZXJyb3JzIjtPOjMxOiJJbGx1bWluYXRlXFN1cHBvcnRcVmlld0Vycm9yQmFnIjoxOntzOjc6IgAqAGJhZ3MiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcTWVzc2FnZUJhZyI6Mjp7czoxMToiACoAbWVzc2FnZXMiO2E6MTp7czo4OiJwYXNzd29yZCI7YToxOntpOjA7czozMToiVGhlIHBhc3N3b3JkIGZpZWxkIGlzIHJlcXVpcmVkLiI7fX1zOjk6IgAqAGZvcm1hdCI7czo4OiI6bWVzc2FnZSI7fX19czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ5OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPWFsZXhyb2JiaW84NjAlNDBnbWFpbC5jb20mdG9rZW49MzQxYmIwNWFkNmEwZWQ1ODEyMzY4MGEzZTIxNTljNTRhY2QwN2ZlMzc0OGEzMzA2MjQwNGRkNjZlZTVlZDIxYSI7fX0=', 1631097831),
('4zf3FAYpq00ZqbGHafM4zUZJBcDXZMF8xIykkt39', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXh1dlVOQUh5czhlU0xaTkZPQ2pmZnF1SGgzc0ZLRVpyR20yOUZVVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099512),
('50P20mSALiRlUXOy0w8EFUL56c0rzP6fqIowkbnc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTR0cnd0VGplSldZN1RlaE9PSGxUbG9QdFA4cHBQMXFFczdUSjdpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162968),
('56XlguyrbVEwMMht71Q0mNTW4xQbNHjsdth1ctJM', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGlSZ1Q3TXJxSU5lM3p1bzJGd1F2b01LbHd3MGljUzBaRWtmRWxoWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631113480),
('59ZikufN12bOF5P6ffM7VvW8ltEKYLiPSdbm6OI8', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVJkWGlXOHZiaXA4OUc5b3hMMGdtQjNGWVd2ZmhBbVJ6QTJ2ajFYYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ5OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPWFsZXhyb2JiaW84NjAlNDBnbWFpbC5jb20mdG9rZW49MzQxYmIwNWFkNmEwZWQ1ODEyMzY4MGEzZTIxNTljNTRhY2QwN2ZlMzc0OGEzMzA2MjQwNGRkNjZlZTVlZDIxYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631102063),
('5b0DJ6n3Sg9MDFuOYdk5qerreRAmgeEAQU4u67L0', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFhaTGV6TzZFU3ZMTTZyUEpNNkJQMHlBdjFnajhqd3E3WkJTbTNFRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzVoc1VsQTJmSlp4QWY3aTU0NVFnTFB1ckNaTWJyT1QwS2pBaXNYaGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('5BSpezRVrpWA7lc14T58QvBfqiJzK4iIg7nbvdDT', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGNQVm15R3hYMDhYcmJ6NUxQdzlYZGRpemVWdlgzYVdENGF2SnZXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0ZaZ2VyNXhiOXEwYmEwREpPV2g5OE5hcXVMdlhpdjhuNlAyekJxbGsuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('5HP9NGTSILCNZbnJDnK5Vybv6lsnU1Sxfo3mRkEz', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEtOc3BxeWduNUZJdUdkTVQwR0pTVDVGT216YzdQSGdDM2lRTlJBSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162318),
('5kn659hxjFmY6e2KagE4Lhz6tLIusieWLay9xUfi', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmtjUXRlM0UzTll4U0NpbmY5cnpzbm5KY0hkNDFuYjJCUkRlaTJPciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169604),
('5M4Tm7ImKf9oKhPKbmJZVwDaemQ1A4DW6e6EQdU4', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hRc0djVGNYMjJpb1N6TkJrZDE4ZktGMGh5d1lOdkptR1lTRjltbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099369),
('5NLSYQ1EkdOon6UmWiI8eRHoArtgWE3FyLkQzAmD', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXg1aGJFN0JnOWkzc1ZISDdmcVdyQTJHcnpsV21ZUTFDaGpBM2JBcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162421),
('5YmZHnax0nWDYVFH8ifbsm5dIGH20LM4NTiSbe72', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2gxYnhwOFBVT2ZjVkRsNWJCbXh3b0NhSGRub3djamVudVBnRGczcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631113480),
('6382Pd0MCkp2RWuijjSNfv0nM12Z5cWkGI0aiizE', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2hxbWZRVkN2bWxRS3BLOWxNMlBKazVIYnVnQ05rOFlPZFVLdWxHViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0NrYnFJMExGamlPcDhFVVVNSGxFQTJrcW5MYVhkdFBoRm5nTlNYZzQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('64y6FgENxUsHjehb4vz4VNPTiclxb3UHfMByryea', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEwydFBXU0xQeDdPcDJBREYwT2ZXTzNTdFIxaE9vTWpnWmRmNTJBbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162964),
('6EU1KGbopGhLPqKb3COTlQ8fOxBE1vzbOGK9oIc5', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU4xYmk4ZFhHWE5HRUlvYm9vMjY4aHdpUnlDSTc2cDBUM1NiTGs4TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099374),
('6N31s6ZjWTMdejKN47VEhHP7QNJZ9oKY1mAW9Gkp', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEdBVlhGeVF0T0JpTzBzNWNHeW44N0M5b1Y0VU1GVjlkSDY5aUpRRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099247),
('6p8pnAOknfOJneVgnkE7OSCUgMVVKvJzp1NhGxv5', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0tsRzNKTklGRkNYc1RaUmttVFpaRXh0TzJiTTdoWk95YWlXNmZrVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098438),
('6q1w7KW36hkg0ouBsiIXjTo6h2amzMkYz3G3jlK4', NULL, '103.4.196.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.38', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1c3T0c5aDZXOGRLMFhhNEtucXdZbHNMN0Q5czBPT1h0bTI0QzNEUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631104898),
('6vwcWdD6wHRVntgaOZl8wVa4uLH7ri0RUKbRnNlV', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjludHZiOElubkp1dmp4TFRqQjdOS1kzeWZManhVZTlDOG05SEdGUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631113978),
('6WtJ1hsWgPhvzAC6Ohpm11NlDKwrzsn0byrtDRiz', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWElHc2RBelJTWGcwbjhsMXJGTUREMWxXc3Byc2VScVQ1a1pOUlFRRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114456),
('6Y5EM8MZ89gx4406qcFQyDmbyfwoLnJYzja78gvM', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlhuVE1pRXJITXp5dkNqUFo2V3FJYnFQbUM1YlhFdDJ5QWpYQ0gxUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114252),
('71U5adKLK7yiPpjlHMh4vDQILKoeR4zLynf4zGEm', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkZzZlBPWk5UVllLdXN6eldITnlCdEVQcFoyd2VOb29CTjd6Q2RhayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114450),
('7BtoL90TDgYUlgFvG8dOTwHkQilsiUDOLx5FVoPJ', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1pLSzBVdWJEWUlHZG9IRXRpNHdtcHk2Ym10bElDNUFEV2tyVVBWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099441),
('7GVV2CaTdEyJRayGTdE27PC2ILAeB7lDqS05lRmT', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEpWT3Q2d3BQUVgwdFE1bFVJSGl1a1VhbHdFWFNZSXJuWklXcW1ROCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114453),
('7mygazdAqgeNuLFsHTflH2ef7kO77G3sWtCKXqE1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTBkb1pUY2wwYTVQVjJ5ck1LRW91NlR5UkxCMkVucXBzNlBMcDhsRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631165923),
('7TcyqeZOJ0QB61Apu9Kh2yVPndmGDoT4bdgd34Qp', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1cxcHBMVGROMUo2ZGFIWkNaVTRLYzlRRkJ5d0lOZXVUOVJDM2haNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114457),
('7TulQdqFvUiNtXyrcFFjIlQv8bKtGN4QQmavzcD2', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQkZwWDJEbFh0SlFveU5mTlVkN2dXc3RoSDJNOHpVNmNMakozc1BhcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095978),
('7vWZCsc8fu98muGx18IlhvKCHrvP5HqQ9SDq2bbI', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVJMbFF4NW9pRHB1Q3hYb0lkS0ZINjZ5TGd1WDZGTGpwcnh2blFQMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631165974),
('7Z2fWQXffnrUGaZhLnx50medFMlCdZel0skWYDad', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGtvaG16Z1lCNnhQOUhvTzY5WHFmUWJVSTNuYmh2SHcwMjdzc3ZKMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097807),
('81RuizzshQJN96TmkVabENsxU5phzaHVlfOj2duw', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEtzQmh5Q21aemY1NTJwT3Q3ZTBRR0RtdTNGSjIwSVc4SzFZbWV1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631095614),
('88T6Pr2r6OPHkZtINlHn80bjGwuKQm5aRMqJEw8N', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDNDb1Z0ZWQ4WXhDdFJ5VmphMnJzZFJHWFMwYldFdTZkSkFQZmVQeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631098439),
('8lXYvivb0eUsCIPXU8bH5btP95FjUBq2QDPtfysv', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjhoU1RHbEFUZmV0a0lXckhNcmNORGJPeW1FYWFGY1o2Y3JvbVJZQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114463),
('8sRaSrN0phKDGkzzYOIjisl2Aqu2EsYMrbaGkG1f', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEFRNVdUZEo4akVnSHdmQkZBMk0yMmJpbElaeVFSSDBsTGRLS01UayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097805),
('8TwlYFWzudm7VFFDTCFmodguzIEC2wYwEtKZGTSD', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmt2dEtEOEF2bmJob0lIM2JsVnhDWE1oR1RiU0lDQlA0cTJLN2NuTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114452),
('9DaadRYvDb6SUXE2kq56r4k38pzFkDfGa2TtyoJm', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2JFazlmb0ZIVHB6VVMwazhXWnJjZ25ueFhLbmJYczBlS1Q4R2pQbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114450),
('9dvjDv5Are6M9vdnyC3rcRNkrld54yExzamcf9fl', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWpTU0g0ZVRRcGh1QzlRS09Tdk9sd2hIYXBBdmdKMGZoUzNCeVd5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631102314),
('9G1Y2e90jTY8o4NbTrDVENxMGcDsUQKmwcg4tcpJ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmRoQWhUeXprNlliZ0hJYkVDVzNZVTlza3lEc1JMc2M4Q0dWcXg0TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114460),
('9GRqZVS4Nf54523uWfXs3O0jYNqLQnXer4jMooB0', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0JOTDc5bHFhWHRhZDNJTlBpdmdBNTRrVHFkTzQxSFB1dFF1TjdOSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162319),
('9mNNqL5YYYBL5DHDVeRcTrLBj0DjDAYxWxDAPpox', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGRNUFZGTDdiTUFTZ0FEOFNCTklEM2VwQ0poTVliWlJwOHloaUZkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098437),
('9MwR1ZeCa082y3Cvq0kDhuTPoA1ul04JVb5aPlIu', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTJBZUpicXpuWVlDQVV4akt5YzQ5SmpuWUdCaHRPb1NxaG5pWHJCNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114462),
('9ZXDAgE2dneSQThQctAPPoaRyxLDKMLSJ4UpgIX0', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTQ1OE1PR0p3Z3Y0bjNFUzhaODMzckYwUWNoa1A0WXJrd2JEY3RoUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114458),
('A3yd7dp6h3WBfFoEjooMTuHV4Dz1vXEfhmXSt8rZ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakZGbHNzMkpFS3RicUpRczVncGNPWmFMMlVJNVFqUFdhRDd4MlVqTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0NrYnFJMExGamlPcDhFVVVNSGxFQTJrcW5MYVhkdFBoRm5nTlNYZzQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('abJxp5OGsIGVyPz0naqnlhnQocylZertEcjDWx4q', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2U2c2ZRZVZtM1VIQUhEaXRaRU1lSHZQZGRKcnB0bmRPZWo4ZFJ4OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631169243),
('AciEQ8SGAVtzADPJz1WT76MtvA3tH5CIj1rS080E', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1NudWFZb1AxTjdhR0xvVXBzOFlNTDBvTjFmWDJyMmFDSmxOckVRZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114455),
('ADHNdBvmg53kUClVx5jVmvQuJmwbS8DAAJ37A35P', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmNQcEV1S1ZvTHRhUUdyWlZ3YlJtOGp1b3h1ZGhJbjNqYmNhbUlUaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114449),
('advii503uScFEvDYJ72FiZQZjzb9SotYK90xsctK', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2dHSU1yeERUek84V2VCWDdTOFRxU3c1UUlSendTV3dwSjVmN09HVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0ZaZ2VyNXhiOXEwYmEwREpPV2g5OE5hcXVMdlhpdjhuNlAyekJxbGsuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('AF4BoMHHMFOTrlQhhVjm5Cia5RmCW7ttHjUcdjPL', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienZIeXlQYjMyNDNVYkwxTzhjdUwzQm5heTMwcHZzQTRzWlNDSDlrWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631166097),
('ai4EUP5jeIaTPUEzYTAl7Yl1Op6HJzyHWeWBjVKG', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGJDOWRSTnQxb3ZGY3AwdlE1RTRjYk1vVDFveHZoRzczaFh2dlFYciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162587),
('aQOnaQoYeycjfzrLJl6dD02mGqLM6CeR61AcSMTf', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUh4OWx4V216eUUwT3Z4cWUydnM3SlNJQ2hRT1VVcWlSaXRpT0NsNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631164877),
('AVnhz0HqBKzCLMGKcCM1AXACRhYwuS1i4zSYVOWv', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkdVVkRmQWRqMnYxSnUzckR3cTlUUXVIa0p4ZkhpbnFCNW1yb1B3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114454),
('AWRM9XraE2PB9tQ210vq2K9ARbingQi8xmeHyBM6', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXU0cjJnWDlaN3ZGdnZjT0VlQVpsR3RldU1DdWR6VHE1dGtpWno3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096018),
('BceqIg7HveoVe0w3i4iy1RhWQdY3SNNKLQ307TiC', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3puTG5OOVJXOFlBUlR5alJBc3d3WWZwelNGZWFXSnhTYU8zM1Q3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162439),
('BGsaJ96YPNlPSstvXJQLvzCPMzcRYpL56Cu6LFdh', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXhlUWZCcU9sc0RyeGlhNGNBeEFPc2hTTGJBOE53RGNtbmJnMXEyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114628),
('bHhDdfqDMPaoxDL6pdmP8E2FUWF0F81mnP8YoGqT', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXFpWEpGa2w1Vk1qQlZnVzVmcWRneFBnem5RNHpXSVlLVEtNbHF0ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631116028),
('BicEfSXKEsMvps7R2URJRxPxWLrByFhTZh6ocYdw', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkpLa2lOaVNBQVpSTGhBRWo5aUJmTFFISGtLVGNtZGYyOWNGNHpZaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114431),
('bJ8a0FlZHtMOzAycDs4CblDPvVrzseJqjzFAd5yP', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidExtZ0NaR1VmNFAwSU11TDd3eGgzZmlWMUN6N05Ua1Jkb0lGQzNYViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167962),
('BLxqX4H9tHMsHhRpSbJlNsoqn2Z1tQCDw2Swo5eF', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjl5dE9CeXBpS2ZtQU1tWkZGbmRsWHBZSDBJSDF5WEtMWGdMRjk3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631097811),
('bMVulywerbbiQygB2HEdILxY7RASkJLpoh9qZXYX', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOExST01Yd0pHTmx3aVVhRTI0Y3dYS25mczJZNDhuMG1NemhUYlVaeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162498),
('BqJYxYHrZYFy415vBLw49aEB5osiKRt6JB15SVoO', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk9ubWFZbHJpTFU0V2l1R0pVUUZaNGI3TjNZZDRzeEZMUlpvallvTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099594),
('bTuVFcgKJDZDMe4Z36Ox5HgVITU6q6UclhVePvnx', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk5DeXIwY1dRMzhRVUdJUFVLdWx0c3NoZW9DOHpITzVGSExPdFBVSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099153),
('BtZ2hliRoWzUmyyshbybNAXesLln5aCkopU8MZpm', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0dIQ3NBakFIaXFaaUlPR3B2RlQzalRLdW4wM29tdVdlYTdRUEVFbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162498),
('BucFCaMR0saC3IPry01ArBDBJIXube9A4bUDPhVf', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZJZEkzMnBLSTJhVDRMV3doMVk4U0pLN08wajFhWnI1d3pCY3lGRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1BydDluVDBDWVlaVHVSVHdZZG5hMW1tdTRzSWFyNXlkdGh2WmxJYU4uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('bXWDQVZBCmkLyw1qxtf6RIbtaRrt3ErfOKkxddt8', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkVJWFpuZHdDOVJKSk9XdWtxemJOaW8xTVBGTWNzUGc4Q0NDRjNjYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097812),
('bZ2cvzOCitNtUX82MPFkEGe6FGKzdkMNv5in9C7e', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjZ3MmlKSVZmY0duODVJbGo4d1NjMktFYmhYbE5LdXNVNmcySDdjMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0ZaZ2VyNXhiOXEwYmEwREpPV2g5OE5hcXVMdlhpdjhuNlAyekJxbGsuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('C7xvi6bB2lzdjjyiKPmSFcDpOqy6gakzRIn8C2PR', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVBUVjNiU1p6eUE4YUlSbGlRamR1bmtPSVhQelk5ZXZySHdIdDJLbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167852),
('cbjwjYhPQzjzsjkUrV9CGsH1wGoSEwoUJWHRNbH4', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWx5ZlRrMTNnRUUwMkNGeFV3NkhWM1V2U1dmWXh3Rk9Jck9rdlNINCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114458),
('cffOVaRwemPuhYYBFMaHmmTZYi0ToPWEg0IZ5reW', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0ZJd2pPTWp1ZnJBc0xnTWgzYlpkTXR5bnRuY3dTZnVhUXJ6SU02ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114461);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CgYUKp9QkMM5I34H7RNt3iNwTHHooSufdchNKSIv', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGFLRlRqb05qWGtaVkF5REJxNWx4Y044ZE9BTW43NE10SU96UHF2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099374),
('ciiMiEgN90YlSQhsAMfjXIdwAUX8BurZUP0dBbTV', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGltMW5MWm90VkVMY3hENXR2VzFhOU5XTG1sTjhFYllzeGNpb2huayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162393),
('cMY5Hk0aPXoyDprVVoxZiXJPxZpQbi82NhOKhT5G', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicngzeEt3TXp4ckxBN2l1Y3Faa28wQ2JYZW1vVXlIYkpPWHVFbFg2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114445),
('cqEFid3VO6HdpeQfI651AxJewefNZQKGOC2B50rB', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGE3ejdPaGlrRWdlU1kwU0JlaFRYVUh3TW9jT0JFc2tIS3UxREg5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097812),
('CwGiKnRab5T4t8psj8MtmLYF2qXUWsYlZd04tw4z', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1h5SWdrZzJCbWdIek51ZUwxSE1MRHl6dWRwNXdkdlhZSXZFcEluRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099153),
('D2WACKPEbHKuSwHlkMcDBoDGarYJdCAAaVPnXNef', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1JRUWtuZkpRZ09aWmthajM2UEo0RDlXMmFSNVdhbkpRZ0I1eXAyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114463),
('D4Z8Gv4OECxHj9ewYrM3i0Us4Ky9HYWGflfRK9lP', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3lFOGVmMW8ycGtPVnNYc0J2STREV1VRNkVkVDBJTk0xWHBzZFozTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098437),
('d6EhSFO9yNogLiqjdl26PyMHTh0ihC9sstvE2CJe', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGl1VXI2VXhXZkd1R0NDY1RuS2xBQ0xHZTVRNXZoRDYwaVRmbnZpYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162395),
('D7OAGB2R0VJKiJKIEyhYxETNWtEXI8SqzaZ9Qrwm', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak9VRllxVkpSU3dVaXc5S2I1bnNFOUxsSnhTWjNXcGdaRnhINVBPQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099256),
('dCWk0voFG1FWiztCDH8NkJMHR83aCyUZFCKUMQDi', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZU5oUVY5UzliY0ZtWnAwdGtsRmlHYmRhUTcxRzhNekluMXJYS3h5QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631166086),
('DDWVuPXTMbe2IRRuCadA69KOTY2vQLfPvM0MsDOU', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTh4Y2c1TWJaWlN5dm85cjlKNkhLcFNxYWlnRTZnNzlCS0tyeTdOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631113478),
('dFjEXd8A2u67PEBD9lyA0Uk6kFiwfak09f3JPRkJ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkFVblhIeWJDcmRQWndrNm0waUNpTVlWWE9WRlJaM21YYW9vcXBaWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114423),
('DFs4eRupOYIjZqXxqHtz3wGR4U8Mb04QbVg8L744', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUxTd255QUdaa2pSemNNNE16S1NQUG9HVFhVaWVibFBQdXhyTTU3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162393),
('DG46AUlErSvup2hdl30puYnIRzsfxdj73QwAehmd', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUR6VXM5NzRhSXhBakhnT3puUFRTRVhTWkpnaGgxTEh5dkFjWXAzNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631169330),
('dGdiCms3XWDcm3omlzH5c2cYn0ENS9s5ydqtwLg7', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREFFNnFTQ1lYVUtIRGozQ0U0Snl1ZlBOajFhM1pZQ2E4Q2Z4N3hvdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631115006),
('dirUOB6GTpdxOA9tXYnN7GwBM6IQKRt2LovWN073', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlFqQ3BjTHQxZnRJRjRQaGt0SkllQzYxbWhjRlVnMnhtRjc3RFlROCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162963),
('DWnGDIsW6SFVXaSpcwHs285BIOe3cUFAYxCnarZi', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0VLSGZLU3kxRG1PSm1CZ242b1B5bWJpQ0Jkdmp1MlhPUkxSZ0RDbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631164939),
('Dyyyzy3IkdgkJn6nrHmVMsQpOMT4rIONRbsxMFI0', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3lQMVVZeUVjVUt2N2piTG1iMk5WTXJVR2xSRzZHYTlrTGJBNXd0VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631095613),
('DzM3sBwrStEKgPQWLIWCyVcE7HMsHdM2JuSG8Bnm', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWsyc3o5TllreFhCRUYxWjFUSFYzMU1Ec0FaclJaaTRONlMwS2VQcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1BydDluVDBDWVlaVHVSVHdZZG5hMW1tdTRzSWFyNXlkdGh2WmxJYU4uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('Ea2d9xcon7Uo6m8qWfTt4TUlh5s9MJtAa8w7wx2b', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3BId3ZpR0lIdWlBTzZBb3loeldTNU4zbHkzdDdqMjBWYWFDVzFNeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114445),
('EGUs99pOLIaBj58DMoOlGl8I6Q1hJdqRx23MvbXj', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTdMcUxiRDRmemNGOUxZYm9ScmtaOTlkMVppQ2ZHbWNGbDRhc2pqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631165117),
('eHN6LooIiDBjv5gXY2QUjiVG7lSimX2SKhS8zI9w', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkhXM3psVW1RYjN3VFhRd3NRcDlPSXpJSGkzZmZZWmVHM2ZuSnNtNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114252),
('ek6aJs6l7cfePxnOAgSAOBVUEsHFEdlvNl9Y01Am', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3JoeVg0OE16V2V6alR4c0ZWaVBjSzFQSElQZDdkMzR0bzF3TFhIWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167187),
('EpAfpZ7rXWBVcUO7ngelZ4p8beRr1JP2IYKF9w74', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlhGMnc0SGNxVTJ6WFRHcHhJdE91djFpTzl4dkpzTWtBWUpNcUV4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114431),
('etJNbvFDXRsB8i4DXVQ8FFRM85cWNCv7T6uUir9J', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJpdkhMVGhVZUhGSWNraFBUNDljNlZuUmVnZUdqeU9DV25KWEIxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096018),
('ETpRbboDWRh3wfsoxNB5xyXxVR7HfOdaIrnmYuWc', NULL, '58.27.225.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM25JbFRjUnRFcklXc1hmblNBSFBWVGhHdFRFbHExV2hTbzBoNnVwMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ4OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPXBldGVyaGVzc2U3NCU0MGdtYWlsLmNvbSZ0b2tlbj00OTM2ZWFjZTdlNjJiODVkMTdjZTJiODQyOTk1NDBlMGQzMWQ3ZDk5NjkxMzk0NThjODkyMzRhMmM5ZGEzMTY1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631121903),
('ETZ56AStvvnVgcnMnxodBZE1tJifzuyBKFs4qIDj', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlRMTXlHdVZ4dG00V2kzSjFYbVNXcU1RV1R3UjV4NFp6MFpidkl1OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167073),
('ewIQmn5vqYZ3yUzsH9CiqpmicA0Zg5CwPpjXUkFM', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHl0NEZMeVQxS0NEa3k5aVBqenVGUjIwa3BVdkpiWW5hQVBmZ2dVSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114460),
('eZK2mMtNurQkdIgLKjDvd8QEVJP3SF9KaPcMyuc7', NULL, '115.186.141.47', 'PostmanRuntime/7.28.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWNKV0xaOVd6dFphUndqdkZRZk9nNEExdWFJbXp5YzFlYVFnbWRudSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631168751),
('F56HUjN2frzv2JdIylDWRym1yvsGYOr8niISLMxb', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieklTbjJWZjB5UFp2bWpERG1zQ0dwMGRrN1UzN0psa1JLYmU1U2ZTdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114445),
('f9av1LBlYdaV9QUObtJhpBwc2tLo1G8mkOCYHgWe', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFJqTENlWGk0SnZ2eXpRdjRtZDY3a3hsOGpNdzY5VXFabjRWYkV6cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('fAL6vLlyqvSvGuYNiU9dl2cn7KXUZalZPd4VGyMX', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRISkFrN3hRNXFuVWhaYUlYd2s3YkFNUHlCZ3JRUmQ4TEt1d25TSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('FBQElVC56zVuhRuFLx9UqBEHjc7G0UB04xPaDzsQ', 87, '103.4.196.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.38', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWsycUZZQWtTdWFGTTNxSkNmQ0ozM3NPTHRFS3RFNmN4RVc1V1VxeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631104898),
('FExi4XLctTEPpJvNtU3bCWB1byERZ4wP75il2LMq', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUExSlpuNGdBN1RmZFVDWVk3WDhCNGJ6dWFGSmdUN1Y3a0E3RURBRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167156),
('fi0ctX8T5SaMpGpxr3pZ1SF8cdzlBjNLdvnKpM1B', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGNzNzh1TVJ0b0NMRk8zOFVycmM0MWREWWwwazdBSzFCS3lRMVhoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631168709),
('FIaZjK1mp5ZnnAZWfphd4RXBgOag2iHKVajUXz5v', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaHpsWkNBc253NVlPMG1yUG45clZRUTUyV3YwZjQ2eXlEWThyZENOYyI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjU6InRva2VuIjtzOjY0OiJlOTY1ZTUxMjFjYjlkODczOTFjOWJkYjAzYzlkMjA3NTVlZGZjODk5Y2ViZDQ5ZmUxZjA5Mzg4ZDYwYzljYmQyIjtzOjU6ImVtYWlsIjtzOjIyOiJwZXRlcmhlc3NlNzRAZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjg6InBhc3N3b3JkIjthOjE6e2k6MDtzOjMxOiJUaGUgcGFzc3dvcmQgZmllbGQgaXMgcmVxdWlyZWQuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxNDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGFzc3dvcmQvcmVzZXQ/ZW1haWw9cGV0ZXJoZXNzZTc0JTQwZ21haWwuY29tJnRva2VuPWU5NjVlNTEyMWNiOWQ4NzM5MWM5YmRiMDNjOWQyMDc1NWVkZmM4OTljZWJkNDlmZTFmMDkzODhkNjBjOWNiZDIiO319', 1631098121),
('fm5HcXeYJb7154SKFHXi8HUBLSKfLZXEaHkqB3KQ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVZPUmQ1bmRSZmVxaTBQSXpCWElCQWpFaWlLb0tFUE9VeE1BY0NLOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzVoc1VsQTJmSlp4QWY3aTU0NVFnTFB1ckNaTWJyT1QwS2pBaXNYaGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('FmKcfEp5GppMIhENaoli3ZWMUQPIJW4ZuZNHWQRa', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3M5cGl1U3pDOEVyV1lqZ0g4bEJ5dExoTFVhWU1ZdDVudlowamwwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631169330),
('FUagfVSviGOdJcLzOOz1tiEIBXkGZF18w66K8dXa', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam5pQ1VVNUpGQVBYNWJnczJaRk9YWklvS0tJMUxXaWdoZVVSNU1RRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114452),
('FycXtEf1NyrZJbM7zqNt3atFtPx4QllHYyfVnZvJ', NULL, '103.11.1.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3NuTWluOG9vSnZ5dENPWEtCRlp0ak1aMnQwbnpmb3VVc3JBcTZ4cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ4OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPXBldGVyaGVzc2U3NCU0MGdtYWlsLmNvbSZ0b2tlbj1lOTY1ZTUxMjFjYjlkODczOTFjOWJkYjAzYzlkMjA3NTVlZGZjODk5Y2ViZDQ5ZmUxZjA5Mzg4ZDYwYzljYmQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631103327),
('g46milzXCJXqEeovX1F1sbLDdWAmI4nk04WJAP15', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3RGWWlFTlhNN0VoTmU5NHJqcE5zdTVlNVVoSW5YWk5IcGx5UFJkaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169598),
('gbqgJo1SeAytt6SGXVya5p9TlzOXRFjEEv3yiNnk', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUJRbG15NEVSblJEMmxqNnZrcFhERjNpakd5ZjR0SWxwQTBkOFZncSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097832),
('GlTxpiKWKzEVr5Qy9Y5bdmNQXiyy6KlZvn5XLyIW', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRThSdjk1ODVyZkJnVEFLN1h1QnZYamRBN3pFTU5kZ2tBVTNBN3h6TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114454),
('gPI2CjP2T9YrijJCVdhSATJQJGPy1FmrMY6EMM2U', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE96WHFJdzdFczVwWERubmc4UWxvcHFLWmF0VjJNb01kencwUnZraiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097807),
('grZ59D2XkRmCgOyFKpLAPL11i0yY7EWtn2cuxvQn', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU5sa2JTUm5iQlY3cDNCUDJQV3VDdkFNZmhIVlZObklSRWtKak5xUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099564),
('Gv73HVbHRm7b0fCxtuX40rFdmCKg3Uwoi9eqsHV1', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXdkSkNURUd0SDl0aUtBdGtZemEzRElRa2ZKV2JyazhuMmdWTkhaYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631113480),
('h1EgcCtJXVqmSY63UDOWmHmBkfUThSH9rYtQ1h9u', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ09ORDlNZHMxamdsU1p5NFA3RmJ2RURBbGZTWHRud3dwVkZvdFQ1QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096160),
('heLPXKeazwHCdFAuMNfZXsMLSlSMXBg9kRYR494G', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibk9mdVZwTTZsNmJTeHhxemRvbXBiYnJQcWFFeXpPcXFwaGR2djFMaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099373),
('hKfmBLGSQv3cM1prcCieCg2DMtcMbRT6Nf1u9wrS', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2liRXFQbUpuOGc1ZVdVOWQzOW5qSFd6WkJBYTVwVnhoNkFaWE9wTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162498),
('hl5ICfpUZQezHBDPPAh7kMx8QLKQhbiKV60FD1Ba', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkMzT0NYR1dpSnRtbkU3d3lzMlhPSzhCRWx6UjJndXliOVVaQ1BxOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099247),
('hNcjSBxk6pCdQoGUgRjM9mr7mYbIT3zfHdATQz1P', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTJPRjhJSXE0T3hVVG94MVdMaUttWWwxWE9DUnhXUHpxSWtjWG9QNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099111),
('hOoFCisWy3bC2Q6DaCrtwRjR5XN7VPX98XLrcQCe', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHhNd2J5Vklrcmg4S0kwSWpSMlF1dkhzWWJvM09mTk55cmkycmdhSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099384),
('hpghbBG6SsUL3DZHNSNpgpH7gZdZfsg0oVI5sIKX', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHlnbzFrb1hUWm0wb2VHekdQZWFIWHIyM2YxT1hhbXZqMWt6TE9TUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099374),
('hXPFEFLDbKct1kzF2myI9tPqNoyoI089Ndc7VOZL', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkQ3SFEwa2laa2JPaFBlVHM4UjR1eVdGY2VGQkQ4cFRqYmlQWG11cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169598),
('HYV55kPcqopaKhY0kdiSIfoLUL9hcRqsNa4yB21c', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFlzdkwwVDdPRVlIMWhxNzhtakd1enh6NnRyZzNDeFBVcjV3UDFOSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631113978),
('i2n7lcJAKvcfVpEXXiKkxrsBVQ2m4AUXGHTzqhFV', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmlpS2xodjN1ZE9KOVExYzhLOTVpYlY4Ynk1ZEhJcWsyU2g0cktZdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169598),
('IeEU5pmPoaonEms1IY8rDHzeHMIcpHNix9C0Ch0v', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVRHcTFFemN2Y2dzSzlBaTh5WG9zQTduQkpNTmU2ZGpHVk9sT3l4aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('IFTplaWDL7dObRkiiAQkBXemUJCYyUdz4z9SAk7T', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDFHNXF3RFJVQU5raDNCekNVdzV6cTZIZ3Bvd29vWFBlMHlubXFWNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1BydDluVDBDWVlaVHVSVHdZZG5hMW1tdTRzSWFyNXlkdGh2WmxJYU4uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('ihf9pt8IOGQzo1CHbm0WitBw9V4neCJfoIddeyJn', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2NpcWxTUk1jekF4OVhPV3VKNWc5QjN0elUwdUw5TTdPZXlHamF5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167156),
('IiC2P5bcne3Mj85CBk42VIPTeH0YWSgDzfSajUnr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakpFdUd4ZDJCYm00UkF2NEhwN3lmTXNQUUtHaE54YzRzNG1vZFBjOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162451),
('inQ2V88ZmasS398kv5eLVE1TS12c8h4be71Yx6OB', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzh6SUU2TmVMajVLWk5HSUdET0tmNEVMckZxTzBlc29EcW84TVdjWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114449),
('IsSOym2b2YnlrKLzSc1vgWcg9gWtZ3VlSIl4d2Qr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmFseEtWbEdtU3hlYUI2aXZaV2tQTjg4WUh4U001Qm9GNVA2M3BiUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('iZu8mz9NDJNrL6t358edOZz8RvgN9Ah6C4nTdWMT', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTNHbEEySHhKQXF1ZUM3bTRiQ3Q0OThueUxjTTFZVWNOWndlNXdLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167852),
('J0kOCvZp0O0POP1yuX695AbjfDLYiNXC25Yy9HOc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2VDV3NvZDNMTlBDWFNGYW14ZnFldUtTaGxnaEtzMmJjbkhzeElyNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162463),
('j3eSZAI585WZbw2NPhfzORDW0sC05epTpvM4jeJc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjFmZzdQeFBzazRwUUpwU0pMQmQ1UGtSbE9tYlRDejBXTlR4QzYyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162575),
('J7a4GJOF7VNvlWUaKrtRv3DUngcuVSR1PA5wY0G9', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWJiSmxwTmhLRHNCQlRRdU9Jbms0UmoxZXlVc1RuNjZtZmJOZzRwVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631168733),
('jbVDKW5nS9ihh5lnMIve5eX0V5rvWj42DC3nbtTo', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1ZzOUtZR2d1UFh6Yk1WUlJXcUpqVHVhUnh1WTFrcFU5YXh1QlJBRyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTAzO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099368),
('jCyuzI0FHWld4gSDAsBul0rc2phNLa805QXb7xZo', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGU0dkQ3bFVMMlhjOXlROWhLem9hcVYwVlJyZXFOWGh5WmJnQlRQbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162964),
('JebxEkQsGgvXITTEih1xUVWLYI85g4FaVmwzGYa0', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidllINXc1TXF1eDBvZGpuSjk4Zlh1bzdYczlTdFBySEZhNE5ZSDcxRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162463),
('JJEhj77gFsChjbBjZX8Vn73arVtD8nUqchjxxAA1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTVISTB2TVcwUUZ5Z3NZQU5EeGlab25ROElIdXR2OVdseFRlVHE0UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162319),
('JsSVxtDfgGl4WzZkyTqvNEjS1EWBN26BxfCvUAsV', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWFlY3Y1QkVJc2tyd2tmSVpPZ2oxT1E4aVI4YzZWaUczWnFHWlhDNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631113978),
('Jurs3W2QRSlP7M6bIPoz6ieEeunzX59iaQRvk39J', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1NUaEdpSTBpbEdhTnBSdExWOW1rWkJ5ZzM5dktqdm43MXhzbU44OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114464),
('K0s65gIsimucXSxvLGhsxjcAhncrM681o8B13Rtp', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkYwS1lmcjZBRmlxbDNJNVdTTEFaYmpLYVJ4cUFVS0lOZjd2NVRBZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162393),
('K4TOUg2UqnhB8XsDaBhWnM6F57lnolwLIiCKE5Nr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT3JZaEk2Y2ptUUpKT2xSWjFNNDg2THVwTmQyZW9Nd1Y0OUlnY2xQbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096023),
('K8YYLpYP9Yt0rSaeNiAZPvAvN8dnedaHx5gonmA1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlpaMThHVFJRU2dxOFJLSllQVE1BTThtaUVWTDZ1aFhnaWUyQ2k1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099255),
('KeXSybPS5yO4komqrKhM3fb3NFfQEPl6QNYKMMW7', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVjdUZ3lnTUh1Q1Vya3NlZFNNcFRmdUlWR0M4eUI3SDUzSDdhN1ZKVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167912),
('KfdawbcDRrzlHzg22t0ioDu9BMxPHorq3hH7we0F', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXI2NVBhS3o2UjFVZW9UdVR5M2o2QVV6N2VzWmxTdVhVaFhZTm1LVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096018),
('KHYjRMPPG3g09LmGFNLlsWffIcuoj52kixZCKHdM', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicFpYSVRXdW9TRmd0TWhXbG9ESkMwQlNSTUFvME11WnZ6UlBMMHB3eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167925),
('KIq67b37tHMFU8pmRfqNUF5oEKGF3qbeimMtPDRH', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3dPSzRWMXpDSG15aGdHQUhEUnJDMktPYllSOHZaZk8wWnFiV0ppUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096150),
('kmECI6oww2BoiImxb8qXnQOlEiRec2p1X1zz6YKb', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTk2dWhzUnZKQmc1OUllSHVRR1hPQWxCT3c3V3NwS1I0S2ZLTDQ4RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631164939),
('knWPkvrc9VTw2Ats9eVv0eENoKBJSjEOmDr3o3Cn', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWhmMnVqY3N1Y2d3VFdaY2xadUNySTNGV1RLb0tGbEhWaXZTYUtKbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169604),
('KpsImawPZn9EKkt5n4fleOdz5z15Cm9YmmsASMf5', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2h0aHdzS3VZUGhMT0tCNmJNSld3SWFrVzgwQ3U1THdZS3gwUDIwRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162475),
('ksqXYD6NYr3s4wgyUwjsG5MYwSz1RCEGE1IX8gsK', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkxkcTBsb3BqeUdRODBST3pDTldSSjRVd2pQQUp5SVBZNXJ1WDVaUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631096479),
('kTC4EHdZOaQ5udiiNJfjo8efgXg3nEJtPdoGFepp', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUDYyMzE4dGxOWlBZTkRHOGNIRDBHbWIxdmlUeDkxSkptRGFpRldpdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095640),
('KVfOttJaHWjbgmqFmIGGYh60W8IJ8nwyVhr0JvUO', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWxNTTRDN2czZFNCZWFuck9xSXJlUTRQbEdrUkFpUHNKYms1cVhuNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzJ1SGZ2S2pzNnkxZDZvaXZ0dmdDSzlUYnRQUmI5R1ZQTU5raXN4T3kuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('l2bXd6ZiwvTSLtO3kIwxnl0FJEkjJ045JGK0x8Vl', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREk5dTF5TkJxVDkzRHZ6d2t4a2p2U1IzWkhpc0g2b2hoS0hwWW9lVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114457),
('l2t5u1GvHIPlEiPYH5xgHA5YozRypEypj9QyM8Nz', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmsyOEU5V0FaOE1MMzVzUE12NFcxdUczQ3B0dFhwM2lVQWcxejBiNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL05DUXVobkhNdnRLRFBXbHVYZDlBOHpUUUZVblhpMnBKakF5SkZDSlYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095616),
('L3tuS6efMjH0ykDr5kjiuusiM0ADDcNudxiHdzSQ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWU3ajJ2VHBCWHVQNmRBNkVheXZvam1hVGZzaW1BY1JYSkpiNDZyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169603),
('lbhRaRdlSrp1ZrgUNK2srnluQ5vur80wEIwwBC1l', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWg1ZGZMNzdjVDlncXU0bDhsSm1yaW5TVjExSEt5ZFgxTEdOTGl6QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631166026),
('ld0yK0Wh5K8HM78Qe3PC5e7Uof85Hdyxb6LW2KC0', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXhocnZLVGZNd05wOVYxVEozSXN2eFhheFJ0N0JvSjFaZEROb212RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114423),
('LdD1L2PDWbC9h4OKivkwtMiLG4nfiVUPnire2up4', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUhodjZqdEk5MW92NWxBS3NSQWE3UG1PRUNKTEhTaDRrVVJ0V1hJWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0QwTjBKVnh3VU1YUEREdUQ1R1ZXQ3JDejZnaFNXOTRYQ3lQM0ljb1guanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631102318),
('LDppVJsPSAPmpTRRQ3W4DpPMTQ8xsJpVout0aHKa', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDY5dUFKV2h1bWhHRlpvMFpsSkFqMWlBNDBzZjF3N3NKdE1xSE1ScyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162825),
('lflMJ9WkTdrkY3xC7W2OVBeMbn7GoMyvKGoUCqkH', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGRlOXFqSHBhR0lVb0ZJVWM3SkQ4WXNKZ0dJWGJDT1hRMXFkWTllcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162475),
('lIMUbrx6IVYYj8b2DQPoAWrnWbQhATkr7peqCb4M', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1N5cUZ6RUNHUGJjb0QzeWxKOVdMYko5U0ROeVdZaVdZcVg3UWwzaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099256),
('ljkwRD12d5yJ78IwAYzjXWpmlqhvs5O25me5MIY0', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieklZejI2R3pIOWdEUGRmWVZFcmYyeDdFOHhtanhESWJxemtzZU9pUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114459),
('LJqFY7VEcgcw6Bthc1q4fKuuS1AYLIfXEZrvJ6m5', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGk5QjZWTVQyZU1kMzgwd0hLeHJGMWRZbEdLV0NacXlmRkoxZkpWZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631095639),
('Ll2CtEXE3CVr22rIwUcoGLQ7yVcKgC4j67BtMwoO', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWxkaG5aTVJmUVdTOW1xYW9jTkw2RzVBTWdLVUFBM0xjTnZ3SlBXSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097637),
('lR2ofeHNjTCHRbf71RsK084mgXIXOTesqRyK3ajA', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkFPYllmeno0VXk2TFFSZ1o5N2ppOVVJTU5Fa0RWMFgxa2FDYUdsYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631102317),
('ls1HhwISrB9JkvYfMYs7WDmt1jMPWCnO4svBxH0b', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQXJEREFwdEZmdVpNSGpWak1ZQU1QNFdmMmoyVTlORGlqVnltZUcxViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097688),
('lTUn88EFVls0l33PcMtGlIo8NXiDKTNVcjV4pU0V', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW9DaEg0UkdSODlxOVJyckI2MVFMeE83MkpwcDFyRmRYZEVnQnQxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098436),
('lv6A7RvlvwyXjf1KqkHWPVLP299zaLuj210LfBkJ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVo4dzN4dEc5ek10N2VsRlczeUVDVTlWb2JJR1B3dnFIMVBNVU9FeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzVoc1VsQTJmSlp4QWY3aTU0NVFnTFB1ckNaTWJyT1QwS2pBaXNYaGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LvSdzAVBllJrXowhWovNELbjMixPRMkC7fOw1YkR', NULL, '52.114.14.71', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1dobU9YclZQSTB2Vjc3WVRzQnVVWVZlU3RtMVg2MGZxR3NaSUQyayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631097144),
('lwa5hCfcuUSt7VXSjJ3PnG9nC2ZvumaLaaWGRf99', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicThKQTZmQm51VDlzSHFTR3ZScjVqT0E1MktCZlhmdVJZeW81d2k5OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095982),
('LXdoAef0kW7ZGTy8PYgp45HI1lUbvSR4cT4EG7pJ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2EyVmoxZ0phOFA2QTZqOGRxMVZ6NEVWNUpLQk5mamFRNzdzWjB5TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114451),
('lYTTcYsHX9xqvUi8XwW4bqDRfYeAP17egeKtGBAQ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2J3enludDN4ZTNKWHNKc2JYaUp2YjQ3NDF0a0NRNk5TMEE1TlhKQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114455),
('m4QAnOVg217ZazwioJ2JUNoteRnpMvPtqfQ9ZOIm', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3dycmc5NFJ2RWEwdmVsVEN4TTVhVUVMUDFKbHB2SFdLRWk2TU82WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097700),
('Ma91gdfkbdN6IA3Nr3fEz5M1ZPL9gLSPnZIculTE', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEpNNWtHeFRpWDlnVnBPb0JHMWJhM2lXMWoyaThnZVY3Tmc3dzJ5eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114450),
('McrYY2r860rlptrgBJpWbkddgnVpqCfdwhHVLMgL', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVBmWk9vR0RjaTZXOFhoWmYyNmc0R0RGVDllNjdTRVRraGVrYTZNayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167885),
('mDmxNAhsWi3g3hFnGppcc2WoucDlfXbHI7MOk9sE', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOE9IR3B4cGJIeE5zTzkzUUxzWFEyM08xOVBmN292dXlOVldtOVFZWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097690),
('mFfAfeBrkN5xPAeqbWXxEtTNFNw38Ys2EdbFkLn7', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnFZak40Zm9sT2hsV0hZZmhpdU42MFdQQnROVVQyVnlRcXhnRkJ5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0NrYnFJMExGamlPcDhFVVVNSGxFQTJrcW5MYVhkdFBoRm5nTlNYZzQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162394),
('mpCphAz2XInXS4JeeVlQeESQRplncDsdfHR8pD5w', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1ZnTU1hTFZUdnpKdHY3eHNVRm5aam15VkNQcTdMRE5WRVlwWm52OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('MrUnFUo4iXgVBbnm9Rw30ePkvhJLqFZJ2MiWqZII', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3NadXR5dFpuem1aMjlQRTRTUUx3SFRqTDZWQWtkZDBHYnA5cDNoNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631169602),
('MtOJ4C7qCof7eBNESTySWHhmVZQXjm4pAMTbFSvO', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVBUbGNPS2Z3SU5yUERxbVZMS01Jb0lzZXJYTm9IZEtYdGtKTU5mZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099488),
('MVGcHVYRe46qdDSywEYkcHMnPb7HFspaz0DadGYp', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0hNT1FZS2d2cWVaSDhBdFdNS1RZY0FCcFlnTWlFUE1BeGV0NU95eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631169602),
('mw6PggtvNxpWRbmKtWbyIIc7Q173h5VVcSvt9w8r', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3ppckZiWkM2QjFGbk1Kb0t6bmlsMnE2dnhOZlpXMGltUWRUWVpiSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099374),
('nak2I60TP5JoWoSeSRsqZZLtIB62WlBsFUsnkE6I', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2R2QWdWZEFnSlE1TGVqWUNLdUlpQ1FZY3gyY3cwcTRYOXR1SWpDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('NfenEIEkYwuvPvQUxkIRRASxy9JiWyik6IPTsAY9', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWFc5MU5qSmk5clQ3YWRNVTFTdGJMTUUwZUZxc1VreEw4VG9PR3BaVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096153),
('NggHIwdb1GmmZ0N8ThZD741BwmbcudGYxQyyQmaX', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkZOMm5MQmFwc05qM0g2ZHg4c0lNT3BJQjEwVkdob3JHd2ZZSlNuSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162871),
('NgKjSCVE2HxMVQQqhrItJI3ZRo2ADY9xDNbo2hPn', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1Y2QkY2dGJ3cVpNT3ZDM0tESHBtZ000eWFoN2NROUkzc1l3Y1hZTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1d1ZE56dnVHNGtweXY3dFAwd3VXQ3JsZ3pWVzFhMEFFY0xsRjJmVTQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167886),
('nhrZOwVJwbSk58zlZz5pyp5I8c8AeAXoIrJfNrhp', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlZmamVDa3VYM2N5UEtiNnU5YlpReGtsTlFZcnRjalIzWDNvWGZxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162964),
('nIK4BYN0plKcBiPiiDZOqpkROmrf9bJqoK1u1Ox2', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnFsVEh6cml6NG5CUldBTkpUM1Mxa2lITWc1a043TmJqdGg0YzU3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167220),
('nlPXx028cVHBt8zFNy8XIi3g73JwgKZ1JzXaiBMR', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmJrT1ZHZmo1VURiOXVYQjdwS0NEanVSMkV1QlZkVXM5YTlLRjhLeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099256),
('NLRxOGrOabZvijutXFvAcg8A9YNpt25QPatcpAkG', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmxJM2NvOXdhVFZCVWloTU5ZOEVESldxWUhMazRWQmhZZmNqSWlJYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099512),
('nLXxu4pp97OvfBVWsxymNrgqWn61Vtmd5UGFpmOm', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkhJVjU0NXRnYkpiT0tTZkYxVHlrN0JkV0NxTG9CN1RMSXRCVUprNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167974),
('nLYxH1qwxp7tCg4ElOuk3WcgdqvkdXDYpKFNOBAg', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3docVdqcDROb2xROFVmTXlSMFhtWjRFTUplVFVYejBqcWRUQm9CTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114447),
('NMBNicm6GIhY7UFc4VcEYmUOmcY2dVbokfui7OSi', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmVoampsUmlsOEhKUG9PMkJZQnZXN2hER2ZZZTk4N1RTbW1SUkp6diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631165117),
('nmq8RNv2KYbml3G6MZFXDmNiVHE6koU0EYH3DiFD', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFhZemdkNW5qeFhQa1VmUzBteTJLMjNkUHRTRDM3Q3hRTU00OHBlcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099153),
('nTHf7PKXqaz2YKDo4kDdKBCLAFmGAJaGEHTIzkr1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUdEWEJJTW16UUVLV0VuWFBheDBSdndXNk44M3lRU0piRDA3Vm9QaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162825),
('Nuk6e5SkmWhIE1t9TQhxBUYaPUD4yRtapMBxaNeN', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVkzbnJ4OTJXN0dDRjZxMzBGdkIwV2RYZGFnMlR3UzhkQnBjQ2RhcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099441),
('NX3Yn5iMQMhvRRoMqXlCdsTIrhTwvXFyHwhd1mUh', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmxCQ3hhdXp5b3gxY3llYlRZWXRNVjBaUVREc2QyTWg5eEYzckp3USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631101307),
('nZpY26sEa7i8GX8zqhe4pXVc3zDW4h7NY6YxrufB', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmJGYlZ0eGVtZ0gzQWpnbmhZeFlFVE1RV0hWalBkTjI3NHliTmdkNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169318),
('o3T4TZ23YZ0g8yxCh5PPYdSVT1abSb0zHhhhprja', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSG1weTlLcFBaRUQ1OUlpQVpGSEZHQ2NHa1phRXFDQ1dyRUxlMWNhMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167895),
('O6DDDfUfEq6s7a1NzB1IJvtRzQKrVqA4NQsWsi20', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU02c3kzMm9kVUdMMGdwMXVlSDh1aTUzcjhOZ1JhQzVKTHNMbk5PWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzJ1SGZ2S2pzNnkxZDZvaXZ0dmdDSzlUYnRQUmI5R1ZQTU5raXN4T3kuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162394),
('o8vX69TbpLCIVkWFqgvWFFsLegzyhR0oz5I5Hqrv', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFlEcTR4NnhKMktpSXIzM1Y0OUFMRDFuWUFVVW9IZG1SZXhKQ1lKeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167974),
('oa0AnnXRK6S6FYfeU0onUaqsioaiFxms7zPncCvs', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEFxbXVWTzF1ZncyZXc3cG5XUmFCcHZJUzZySERhdVBNN2VkZlM5RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114459),
('oAgc1oskqHWbiTfGMTRIUeFIo1e8NaJrIVRt43kC', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3FaSkt4VWR6bm1TcVJMOTJDN0FOeUVaSGh2eGhTOWo4VkZPUG5zYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162964),
('OAY58ElKkgEgxrqxsTkku0lZc4Rw8o8xIyQvP8ZC', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVlHcUI4eHFBVjhRQnd4T3VOUlNFUFQ5b3dZTkQ3Ylp1eDJUWElZcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162986),
('odety3lgD3G7gz7EYU4qq5tzIyx2raJ1uG1128NE', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHBwdEQxR0k2T2JQWm84bWZYS2VtSEZ0U0tPSnozOUsxTzhpSERDdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099255),
('ogpZjsGD9K6nEOdmstDwtvR4MJOrHCPsR2HdxtDU', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXhwQUFvb3Ywa3NVYlM0dmVMb1hwM1hVbklsQ2VJbkxNSEtrNWNNZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114454),
('OIEAJF08ipQRF0WwVlZdFNOZYNkn35ZZYJBEunW8', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFB2Q1FXcXozZ200RFhnWEV3czNqQXpVZUpVVG9DaHVtQmxRUVdtTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzVoc1VsQTJmSlp4QWY3aTU0NVFnTFB1ckNaTWJyT1QwS2pBaXNYaGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('oIRmPZe99mRiqNZrHwOa3mfaO6r9ocbZyydwHzU0', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2wwWHlNcnRyTUdGUGRPazdWQjN0VFVTQlJaVFhRSG1sT09WUGhkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114423),
('on6PNJvsXZmoOtylyzxYWp1lpaP9d2n56Dwkx66U', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2N0ZkVBelJXM1JoeG5vT1JKbGZyNUdqU0VPelJVckE4bnZOdFdsYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098436),
('ou24Rt5F5LIxgv4hypjorq0SuK4LcENaun4kBHlI', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG5URUh1dDc5Y0M4eGJoTVhlV3doUURIT0tNMjBlblFPOXNFQ0JJSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631101307),
('oWtg9vPBxLGRhVrtAslAicAepsBGlvQ59W1p9pbc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3pzdGNBdnR0MFhpVG5zYW5NR25TRmxCcUNlVlBKUGpRS2lUYXRuUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099256),
('OwxUihL1BiIwXXlN0WNUij3kOTOLYm8cT8sLaXbZ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2tJMjFRT0FQU3dOODZVcXRkbkhDak5udkJEMHI2S3hIZWZOeVVDOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631098436),
('OX8dPxkFaNcyUSiQSB98xOEk43BYevW3Ha4lqVPx', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamd2UVRLckZSZnZRT2lZNWRIRTFNenNWUmRld2dlZUtFUkFBZFd3ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0ZaZ2VyNXhiOXEwYmEwREpPV2g5OE5hcXVMdlhpdjhuNlAyekJxbGsuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('OZnObLPmwuyHONXFEhKHUm5li8UKJ1ZglLbLPu4k', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTJVaW04Y3NIU3NrTFdRZDRFRU1WZDMxWHhlTkxpdzQ2Rk5icVh1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631096018),
('P3rpy649hgNWE3VBXGw9wj6JSeL2lJoPTHbdPbLc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS2l5ZGdOQTE3WnhGc05uaHR0Mng3WnJvMTRJdzVCT0NZUHJpNDZocyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095984),
('p6oRwBxkIbDUrSmnU4q6q4STFJ9NdW1TmmCXLGH6', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJ0clB1dzZnaGczSTRYRm91UzRWbnUyalB0RGlKdzBGSGhVRlpacCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114040),
('pDyOO79iweNrbEOnyJ04PssX6Xy6D9Av3z9dnm86', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRTczYmhHVmdKY1hXcUcwWjkwYmJSNHZZcUUwWHJGRlZnZ0JDcFFJNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631102338),
('pEhK0QHTMBebQkUCH2ggj3eMh93FtzgWx0MIrz2r', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnBxczlpZVlXMUNxRjluNFpMN2JKb1BrUDhaNEl0aXpXWmpleFNhaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114040),
('pj1k1KJpGMaOIo7LnaDIlz5A9dze8Xst4zHjWZmP', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib0hQR1paQndVUm52MlBxYmRkbGJpb1lmeklOUUpuZ0dBRHVRUVhaUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098427),
('pJaRGSDJzAAnYtZJpRd8d0nEQemEtHvTV0S7COsT', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3BrYXROVWs2bzZGb0t4MmV2cEV0OTVIVkdia0dCbExTcGtmRkY4aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162825),
('PlLPAmLEDuaWGWPKqUQ0VQE1LM8VBTmvDvFo1b6Y', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1NwR0t1dkJRcjBIVnJTb3VuYzdoTktQeW1laGtxSTlJREh2cjRnUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114461),
('Po2DL0ub5OiGgbG3NFaMy3vbDzt0ye49fMMUVH6M', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWncwbjlDTk9xbFlIaXdvQVR4eEhKVzV0VFUxb2hteFY5R3VEejJsSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631165238),
('pOoVMK7eFuvTuVGkTtPGyorPzti2h8ddNR5e1MPY', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHFvSk5BandOVmF6UnhuT2dNT3NPRDExTXloa2tUYkQzN0lvMGtkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114451),
('ppQhs9CwRGHxgIixjOxjPEWP8rECOl3VbUKX7ya1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQkNUTXBBVERRbmdwR1pQWHBCQUpRa2x0TGJLOFhnYmVsaDJmSEJOYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099273),
('pRR04Q37lYS8leUjF0JSOQJs3MG04U2NFo7Tg0m7', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXYxRjY2cFpqY3NMenJXU21HQWQ5WEw1cGtIQm9oeTc2RHA5YWVLMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzJ1SGZ2S2pzNnkxZDZvaXZ0dmdDSzlUYnRQUmI5R1ZQTU5raXN4T3kuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097806),
('psDM75hFlRO2hc2AoTtq8sdgca7xdx6QqsbhQfTj', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUQ4ZGRnNW1id3YyY085TkxwMm5YRzkwdTROSzlNS3V0ODlaQWxOZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096168),
('pvG6DIHBDvtreek1ychcepuG2OQy0o3VYVd8ToQX', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzVlb01GYW1ZUlo5WXhwZjIyTmhZcllHSXF4QmtqV2ZteVF6VktWUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114447),
('pXksqAABj9TsXwB9BTq5xFEdxs3z1sQ9LnRJkXI2', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHNGTUZBd095MUpNb1ZZRTI2MmJFcTlPbUpwVGhBdWR3UWhwOWl4ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114445),
('qd1xAWJjCYryvryKdhKBFAogUd1MiDdnMdVXsaem', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0hkT2V1S3F5V0RVaUpEQ3FPTGlyS1hzRGk0MHdNMzM0RU1QSTlHbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095974),
('qe6MIACez60B4TlL37msM7A2bfzSsYvdfEvDOxl9', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXZ4cmV2enNIREpHWW1ZcjFzeEhDRVd4TUFieDJBN2tUdEJjNWNLUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631165117),
('qeJZfJebcH9oGoqrr0FC8aCWNdFcQwcJS8RU5skC', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVVJ5NXMyY0lSa2VVOHpDRDB4WDlRZUxDRXlheHF5Z2tYa01JUzRveiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097657),
('qGd1XE6LB5UPdCMibuxSwJzzijn1AyKc0Sfl7n0x', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG1Vd2F0N1gxVm9oM05XUmlUWExSTlJjOVMwU3RRTVBKUXpDSk5WUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114922),
('qHcRN30pMnedYY2Re8Sw5BYpyGDZLzUFoylfRlOn', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVFKNzhTekpad21YOGVzeHY1UWhGRDdGMm1ndzRUM09CVE10SjZnbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631102314),
('Qi2CtWAHMRPyc3zct82EFKxf9ivBOlRHPa8UKFKL', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOXNqR2FnclZjUThYRUo3bDZaNW01OTRJS3FLMDJaUDRPSjc2VFZSVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097800),
('qiC9L4OsJZ8pZcUy4N7CRvbgrNqQJ2hrtUdXf5Ld', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlV1MjlQYTdtNUVxMjZqSk02WVVTcjVtTGVZWUpBN2paZUJiT3RENCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097648),
('QLAQQZF8CXaLsZz0YfdEvr9Mbu08AeGX0SLej9si', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm93YzJ1MVRZRkduNHEzYzhLZjJTRnBjR1JybEZWdmkwaFlTMlhOViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162475),
('QLGgAGqA59h8uezkzfFoNvtqOky5VbzgaUif42Fp', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiazV2RUhOSjBjOFRYcFpSTXdsSTAzSjRHdzMyVlZMQ0RaczJQSmJCZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167847),
('qmdeclfr2AnErzPbdJ44x7cXdVBQ8NNiIQElLcde', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3dxSTg5dkd6THVmMlI4MGZRRjlaVFk3M1p0YmZ1azNCV3ZEVjRyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114458),
('qSzwvAIMz7oiOKTHlLM1JVlja81YERfu9PLCxz5p', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFhnM25PdkdQM2Z4UElKOTZ1WUxhelozNzl0VzBVSldJbTNVR2VZUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114984),
('R1KR6htsjC0w3Potz6ASH2SUNHvZcFuqY7VwbVgr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUg4Wlp6bmNRbmNzRU1PYld5NzdVMVRpM1Azd3NTd0swSElQQ0ZkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzJ1SGZ2S2pzNnkxZDZvaXZ0dmdDSzlUYnRQUmI5R1ZQTU5raXN4T3kuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('r5YyLY2a8AgvXCUMR3grM9LFnDzIUeuSNWodTNqc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlNUY2RQdE1GeHlaT04zck83Zld0bU05OVRTbUNjRzFod3FLSFhxRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162473),
('R91dckcLqClT66qvrMU3KajeI8Pkkji6SXhxyETq', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFVEeU4wZ0kzSnQycXdNZzhqSnJJZkF0Z0NmWWlwdUNnT0pKdWZWTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631169330),
('rdKNMMAtYMg1k5jNSIibiPBrKG0bRH4DNInWhyCP', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzRNSE9FelNDdFhkSUNjblNaZnVieFpTWG1IYWhVVFhWZEZhWXY0UCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTAzO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097799),
('REwl4RFTtDcfmrqWI1ZjeLu59MEwm65PKqWadK8v', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1k4SzBxMlVCWGtmbm85dzBNNlBsenZsandPMDZVMUlpREpHWjh6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114460),
('RIEYkfNRpxYyHokwm2AyAOayA1K9Ty74t2hyhTwL', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHViQ0w3ZWlETUxaTTNTR3FiUDhMOE5QQmxJTDlCTzJWUVhKeEtJQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114455),
('RInEu0KzKAJLnuzwphSFP2nLleIP4Q91L8C3Nnc4', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjNzVm41bmg2d1ozMHRka0dZYVpkaXlIaGVYRDk5cHZPTUQxS3gwOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098424),
('rJhB9KBSLPZw9kZeC4X9Nxc9FCounFFOMGDf2Na3', NULL, '115.186.141.47', 'PostmanRuntime/7.28.4', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieTliU042bG5FanlxMERWaUthb1Vvc3JnTTd1R2J1dVR2MjBBdU9ZZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099817),
('rLngJqSI71dDgPAk2ZnntCMGni118bf2In8UUPyY', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1RnOFhuUTh5bnR6RGZIQ2U0QlFkb0trT3RrSVAzaExZRGxaTklWNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097805),
('rsgoyDZLZdgBUpnQp8cznX1GzI6FXnvNisIsoEQk', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0xzUEtUUDZZcTZKeWxWQW5oekhNbjdPQlZLMmF5U2NIU2cyUFdyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167683),
('rVJEshy8N56Mu3yzhJmVEcSU2MoVukEd0XzaYV6c', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3hiNzNqNVlQakYwZFU5c1pudEJYUTJ4NVZFSmVmYzV0TUdTdTBrMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162316),
('s1om1w97W8MifEso4q3qGD3y3wXHpy0N8rt033tN', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWVoRExTWmgxdGFIRlpwb2JoWDJUaWkzakVMTWU4TUJEcTl4RnpzdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114785),
('S3Ey1jkqcAnAHKMfMSBVGDm4NyRjL98c8xJV3CKf', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmlXN3FwQ25VNDFpUTFjUDRTT3JFSjVJODZ5ZTBjVjZ0V1JxamtOWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114513),
('S4w2GPUK6ws86CTdEX0OEMK2ZdCBqI6SAjuEwva2', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQkZGdnMwanBKS0VFUWc1Y2NjQWVPR3dlNUVOaW1tSEhZaHhqd3R5ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096157),
('S6Hv7BixNfdCGjDYqjtUA3HmTLJAbgmfeMzLZWu9', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2JvUENEbjR0NUVaTXVWdUFwekpIV2VIMnVXQmx3U083dXdHYlN5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631095613),
('SDAfml27MEEYk1xkXLYWPByDpEPQNk86WJuDb93h', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1c4alNCV2sydkVPR0NsWmxsZ0pidXJoYjhIdGFpZEtzY3pZUHVzNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099594),
('sk2MO4gpDIxc31VrEwvvDqxte0K3WXyf6hErJRWG', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXZ2VVpaWGZrbUVuNjk1R0thbmNwdUlyYXo5dElmYm5XcmV0NzdQdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162474),
('SO0KbeXAR1CmmkDJevOxyBj4bPR9HyDBROYKb8LN', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUdnUHRXQ25tckl0TldvUjB6Vm5VOFY5SFNXWTR6c2Q5Smw3cHBveCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099373),
('SOefGhQLhVuPWE5wRlAkz5QKeekNfDHkbIyuSwaU', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWVGRFZ5NENCa3NpelNRQ1BXbGdIQm5UbUVMZmZNRUI2QU1iTjVxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099153),
('sokm0kZCBqWXesdWzCvjHeyZmtXYn2AsGdUVjTKE', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQTFRZnUzYWszQ010U2puN1JlSDFZNjFvS0NNSFpFY1Z4R21kbjRZNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096151),
('Spd4NjrnjBGwUZhp3Y064NC183uzcKhJa2fjuqoc', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzFkVW9YR1VDc3J6UGphbjZUSWhIUkdyeWVWTWxoRWI4TDc4dlNaRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631102318),
('SQeNxMNl2OgaOGg4C6gqumPtMGidoGHmYUAk8jxN', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWZFZk9tTDlzZ0FsUFNxM1JUZFVXeEtyTnI1VWpMQ1V0SzJDdkp6WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631096144),
('sRq1o52jv6hhn1hF98DGMx44ab0wVhv53wMqEHCr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFBDeWNFYVdVWmx4SHFpMlBScmlYcDQweTA4SzJLWlByeVVDcVpmUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0ZaZ2VyNXhiOXEwYmEwREpPV2g5OE5hcXVMdlhpdjhuNlAyekJxbGsuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162394),
('SRRK0BXf1C3YB9PIw62dpuYq3ZDL9uAsAxPGXCKy', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzB2Ynp3R1RyTHg2SnRLQjBEcEtTUk5LR2gyTGE4cVhRRXlXU0xTNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114464),
('Srrvo196nXuL5M3b72ZT03TP1tvtisDVcjs5tXbC', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUDMwSUd5bll3T1lOcWRGbWs1RzV4NVExYlJKTm5GMTFmakZIbWZISCI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjU6InRva2VuIjtzOjY0OiJlOTY1ZTUxMjFjYjlkODczOTFjOWJkYjAzYzlkMjA3NTVlZGZjODk5Y2ViZDQ5ZmUxZjA5Mzg4ZDYwYzljYmQyIjtzOjU6ImVtYWlsIjtzOjIyOiJwZXRlcmhlc3NlNzRAZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjg6InBhc3N3b3JkIjthOjE6e2k6MDtzOjMxOiJUaGUgcGFzc3dvcmQgZmllbGQgaXMgcmVxdWlyZWQuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxNDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGFzc3dvcmQvcmVzZXQ/ZW1haWw9cGV0ZXJoZXNzZTc0JTQwZ21haWwuY29tJnRva2VuPWU5NjVlNTEyMWNiOWQ4NzM5MWM5YmRiMDNjOWQyMDc1NWVkZmM4OTljZWJkNDlmZTFmMDkzODhkNjBjOWNiZDIiO319', 1631098091),
('SRZJxBsUCfOM8pvhDvRyXRxDgSWeULmqRWzJa0jP', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDlHTDM5WlEzRWZRaGRRVWlPWDd0WUNTbjYwQmtTQ3JJUWw5dkVHYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162475),
('SVgZDVwnFY3QkpQlEuEnR7tSACgfuo6MvWmN8uKI', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUdBaWNXemw1ZTluNnczTmxuYlVZRmJ2ZmswekkyWTV4eHc1alhwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114455),
('SW3cYqOtoafV4U9KvLuEhdmyxRRcjRvDKSRaHxOK', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWpGZzlmZHRVdmxVaVlrVTZBSnA0bXJ0WmdrM0htaDlOaHN5MDIwTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631098428),
('Sz5wOP3Vw9nkLr3dUHOTeMvgnI6Jvx3dGuT9C8Zc', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2VydjZWOWR5RDRuM0J5ajlQYXJma3ZWY3RLZlhTdXdrRVBLWTlUdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162319),
('T280hHBE2X0KMFFocvB44SU2fzrXzgTJe1aV6MQf', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmt3M0tNU29iOXhQNzRTamFqNlRscmRCWnpEcDBIbjJzTVkxY1VUNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098424),
('T4KxZEzF9rkJCfWOkgJSOCphdYxTxjDAMJo4GGZy', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGRxaWpWQnhZUXNnWHVGbndET3RFOWR6R3dZWWYySGwxSEY3VlFWUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162319),
('T4sxn6yyl0FCbjyKeZDMxkwWrSVL7XarVHreej7v', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWkyY0o0c3BEaE9wVUNUV0JZcng4eUc0RHdPanpUSm5ZckltN01KQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0NrYnFJMExGamlPcDhFVVVNSGxFQTJrcW5MYVhkdFBoRm5nTlNYZzQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162500),
('tctsQkM4zsoyuLjSh5RVhPeuqT4BA2wMQhdfD3ke', 87, '103.4.196.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.38', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3JXd1JNNjZSekxrTkpIeHlITTNTeGp4RFhnN0ZDS3l3b0w2WEpSMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631104898),
('TcvSqSN02SwE21q7SjKm9eIzJnyuFhu47BCLAyD5', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSE9pT0c1dXhjT0xlSjh3a2U1OXdEMzJ2dTRFekkxbHU0UDU2d0ZlUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095958);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TehqMRF4UmMvmihqjhmhQUYwPt6ioObxalRflgAi', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRKVjN4OVFHWEQxZk10eFNBRVZqSFRnVG9nV2xSc3JleGw2aGJXRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631098423),
('TezWDbIQGuDQttjqkj0ET8ap6gjmJdWFprJCcwr1', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3NNeGxycTJ3OHRsMzRGeTd5ajRYbFdUVEFCUUN1Z09Bd2lRdnRUUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162395),
('tgrATp21hwvmpDpSnSw0vibFlbXO7yeUZtr3qJm4', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRU52Y1E4allrNE01eVFSSld4QzZiNWhrbW1ydE5FOTc1Rk5hMmFweiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097698),
('TjJOfPITMjtkrrDVzSBlWMb0dZnrzAiaBFA1n92y', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiemhOZmtnOVgwSjhTWnlLdWtXTE5DN3llR2QwWjlveDVMaWxpYVZiOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162978),
('tL8DnOaXoClgPFVVAnst1A9ByWDjNi9vpa3q8hQq', NULL, '115.186.141.47', 'PostmanRuntime/7.28.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGw3TU5DQWM3YW1rbWllZDF5d1c4cndoTmZDVkI5cFN0cnVwUU1TUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631100389),
('tMZepLgC05MdjU9i2YpiHdSl6SRgs3r4JnDPPK0g', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUERMTVhzRXpPZDNXdThEalk2RHZCNlc2dnV5UGdIYU1uUnRlQ0hsdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099373),
('tp5of43TbeLXBumtjYCCFk8MbBuR02oBxY9kCDxJ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzFNSmFDcmJxUVdzUkM0dGd2ZGJSek5rd0pxYTZkUFNkaUNRMnJrVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114448),
('TPbFxv3KC8mcQuUCMgQWVu21Emd5ccwTpl2ZCcBh', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0NQRE5xS2tYdEs3c01ZSTRqbDJMZ2tvaHRBUUJod0luZ01ETEpBciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ4OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPXBldGVyaGVzc2U3NCU0MGdtYWlsLmNvbSZ0b2tlbj00OTM2ZWFjZTdlNjJiODVkMTdjZTJiODQyOTk1NDBlMGQzMWQ3ZDk5NjkxMzk0NThjODkyMzRhMmM5ZGEzMTY1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631100348),
('TTMNbC8iKHhxBFIPsKJLSr0fpGDyBKfh9hKP6yEj', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibjdEcUVxWHdXaGV3bTFnS1l4QTg1Y1RuejNHRUhyb0dBWFkwMjVxbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167081),
('Ttoo8kMrwMuG54a2ou12u0YY7PY7aYJrBDPJ4YCU', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHZhT2hQYXVNUndjd3oycG9BdDJVbTVmZE5laVpKc2FHY1MxcGNHTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114431),
('tvA4llrNPfhOnWfDOPibfsNMbfmbiN1VRkjLE1Cw', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3czUzFnNFlINVhiRXV1elFZT2J6czF2ZGZoekQzdzYya21oUm1KNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114337),
('TVQ9VJfvwFyDpFEtZCW6FlRPqwUesVyrDFKPTgPV', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXJva0h3Q1E4ZE1qMExsNVJHV1lLUVZZYUxwN3RiaVpWa0t5SUN1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099249),
('tZ6wFY21W7mqOPFxpCGuCMfuZnYuDc5x5rgyfdst', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFlNMmY0M3p2Tm5iVFYzZURJY2ZWTnZqVTJXNVpySzJtMXJ4YjNGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099488),
('tzmJfPX8NoMCnzsxhNGlpfRQeaqm8gbpNLxEu3in', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjlMSHJ6RDRIc0ZQRlM3dmhLNjJxVlF1U2k4QU9zSW5qYlNsMWQyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114591),
('u0t6TpJ16xzTfNMEdPrEmk5PoAZX2GaltKIHM1qH', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm8xTG9oYkZobW5FVmdqS2MyS25sSllzSVJRbGk0WVpwbGFjYkV6bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162475),
('U7YGlGjAJsHNoVQhT5nNO96xcZ2HrX42Z5b6MrcR', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXlNMEdaemlwS21JREkzWUdmMnRJdm05dkRkazJqZUg1ajlqWWxlaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114252),
('UBy2lugZbtZK7ahNrNpx2nsdOj7uyKfLHrqehWQN', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnF6dlNFajRUOEg0TE1FTTdldzd0bDdDNmNnR08zeXZ1MzN4ODQ0UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099249),
('Ue23T1GOI7zbNbBpbGJTLKvAX2no2mH4pQKJYH8U', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia01BQlpTUVlnVkpibEVxbGlHbEFMR0lNbUlpMnprU21oZE9ITUxGOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167885),
('UFDJDAInBZ2FAWf38soffLWs8v81AEFqPD4zzr98', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU1CcFltbkxxYUhiYUdwRW9NWUI4azF0SGVCT0VCWWpINnlSTlVWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162319),
('ufVB2OjZ1ZXCbqWkQsfdizbnQg3QKSvIZQPffqcp', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmpUazM1Ym1tb3FuYkdRc1gwOHpFcFlmcm1IbEY4YmsxMTJiYnM1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099440),
('ug6x6atjPGXzAZDRkNWyU0tUpA26YHfW0kphADGi', NULL, '115.186.141.47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzU0UFBxQXVWRHd3VUlUWjlFUWFFNlQ3WTRnaGxkSWMycWxsVGZVOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ5OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPXJpbXNoYXViYWlkNzUlNDBnbWFpbC5jb20mdG9rZW49NzBmMzE5NDkyZjllNWZlNTIwNDA4ZTQ5YTQ5YWU3MzFlM2RjMTQxNWEwMTFmZmYxYjhmZmIyMzU1YTQ2YjJlZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099304),
('uKEoKP8QUjl9KSeGpF2olisGSZ38fdWSFS6n2TDF', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVFYN3NCeWxWU28wNEE2dm5NU3pYSHVwVThINTllME93VnRnemhGbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167885),
('UkMQcgDRdslIkN5Si7Ix046SOEB0aAKzb2nZLADr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFE0bzUydWlqeHNYRHJMOVZaQ0I4WmhvWWFBQzFpb2lqc2pObmtpVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097704),
('ukNXD2WQNm7p40Owx5ESjCn1ehcGYzF2uSyaus31', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkJqVkwwcWJGQVRRM1BpQ0doMENCd3hqRW5OSnB4ekNGS3poQXk3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114457),
('ulm4cOiBSSW9zFThpVnmGw0lqyRmOourGJEyKGNj', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHJVbTdSOUF6eXVoZVJlRDFqaDZJcGxrMm9xb1hKczRPR1NSa1dxSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167187),
('unnLbRfWgxWAiRHrVYiOjAEIR4G8uA1eTIGr80AQ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHZvOVdFblBoVkc3NzZ4VkU5UGtZYTJteUxKazNDTWpCSEIxRmRrbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631169603),
('uNx70yg9ATSluxOW7Iupwrr4dds6kmlgOQLePlE6', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVU4SmVXb09HQ0ljUFhNUEgzSDh2TzFIcUxEZENDbndUVmVzekpXNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114448),
('UORPJpAyMxtYMyQKcbHrQ2nOiehIa84PvpQmLcX0', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWV0WnRTeHRweUI4N3ZIcHQxUlZtOW9sQ1dUS3R6UWZxQjhnTVg0biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097553),
('uRnNS2FGNKXNotkvyzqdHFfY91eQCfDM7oCK0lK6', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3BMRUltaklkU0VOMHEwbU9DSlpTWHB6SEpnbmpMR0gxQklFVGJNZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzVoc1VsQTJmSlp4QWY3aTU0NVFnTFB1ckNaTWJyT1QwS2pBaXNYaGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162394),
('UVWOZxdzi9FS3DkSF7ZhSCmB33okmV8njcoTpU5g', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0k0aEU5M3lDQzhrYVE1c1FiRVUybWRXV0Z1d2dkT2tNQ3hPc3ZJaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098436),
('UWnESHwB3HXcjzEIxr19AIvi2OKqpdUH0u6kAt8p', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1hYR0tXTHFTcG1ZRnlOd1E5MmhaZjBEbTBkMUZmaklOazZvV29TOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114459),
('UzeFL1pH5zoTRzCgJUXUBdYNK95NxuYPY0Vrbdtr', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkhUN2dWU3k5SkVoYm1tNHNmcXczZUdzamlsVmJ5WUJVNnRsVG1SViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631113480),
('V7NGgoPwV7UdsvluyA89ZdPkcc2zfEHGqK54yCa7', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDU3NTJNSllFS3o4UHpnNEhDcEt6NWhIMG9LOFJmalJvVTd0MXBBTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162968),
('V9y1OTRcGkYISI5tpXa7MVWwhYPAzhJrXHkgBIUo', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmZTQVNERlkyTm1tRGlxRGhWN3NWQ2EySE96THROYmhjUHJpUGxJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114450),
('vAdHBMgs05LKhoKdOCQ3KuWPZQ9vaISYVJXahnML', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnlIM0tVRm9MbTljOEV0R0FxQWtLWTh3Z2Y5R2F6Y3BmUmNEVDE4NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631096018),
('VdK4caFCFWjqtN9BYBZkYoj1TmZ4IFyJb7FKWH9x', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2dUa2F3RTJRazRndDdNMHkyWjk5WFRXN3Nkelc2azJmNHkzdmZ4UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162474),
('VfJ8GUymauYZvuNIrCdSp1b81jWTSTO0o1sSBRxG', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU1lYUFKR3BHbkY2eVJQV1c4MGtVeVg1Ym1ndU10eUw3SmRIYnpBYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167187),
('VihBolUPzd8cM83eWUNUuRvt4Oja2o5m8uUCVqKR', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNktrN1J0ZENSQzVhN1B3TEE4SmNiT24zR3RZMEhwQW13ZDVWYW9RZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631166097),
('VjO3f9GPEW6oJLSCMKIVouhXtgPhRoGI9wfSLLzt', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjVQbEQzR3RpNVgyd0x0UllMWXJUZE9lS0tPSW8wTmJETDBYQmlXQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114827),
('VKWDCOGGgdbmu4yMzAOofiQcXp2JgDjYgMHlHESa', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlQ0RWZ4ZzFzZ09IWGhKS0M2NDBpS2x6ak5zV25peGhoTWRHMHFvZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631097812),
('VMtIKLuHk1YchVJHAEtMePgQyO9k58cUQGv5WCpT', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicURUOGZZZUkzeU5KN2dIUlJQbXR6eFhSY3EyWDYxSTBiSWk2ampycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631169306),
('VOFa3jUmGB66zsROu1DqlBHBjoqykT4RIq6KuvsB', NULL, '119.153.111.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGkzaWlYZ0ZBWU0xVXdQWE10S2NGZUxCV2x0d3hNWjRRTlc3YUxSYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ4OiJodHRwOi8vZm9vZGFwcC5hcHBzcm9hZC5jb20vYXBpL3Bhc3N3b3JkL3Jlc2V0P2VtYWlsPXBldGVyaGVzc2U3NCU0MGdtYWlsLmNvbSZ0b2tlbj00OTM2ZWFjZTdlNjJiODVkMTdjZTJiODQyOTk1NDBlMGQzMWQ3ZDk5NjkxMzk0NThjODkyMzRhMmM5ZGEzMTY1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631111169),
('vPdXq8yiAEmhBDggGQlrqVnoXTuFsxmPQvsJwRTd', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTFiZklVdFZsRzQ2c0dGcXQwU2Vzc1VWYmZxazhqR3dqODZQTjRSeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098121),
('VpjJ4Wedo4E2gYAVgt2KrkAj3eJ4M5tqAzSaPQk2', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialJJUDJEUTRRRDRFWWs1cThFOTVsdDZtWkdlZzhibkFyUXNmSmZuRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097819),
('Vyfb2N35KU21LFzBfcMPGtfZPxC9UmRdMD3YlCMF', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDcydE9oREtuWTNBYkNIdGFEcjFBRVlEdGpjVldqeksxWDVKazBtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099564),
('VZY1j8CKF76yKdhXGTskVPYF2FGyq8tVmiLCQJjf', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejI4Q3h6alIzUVFMRFJPVVo3VUVKczhaZzVqdUdDTXNYOE1kYmVnZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162809),
('w6XItWEWvxDyCrbHStpM2Y0Dyycyc1vBPoeaTD2v', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVVMak9LYVo2VGdrZThGanU2MWpxVnBXcktRVDVuZHRzMDdVYXhJcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631167985),
('w8yi8ukK7HPg3oZaELrsPE5p3xaze2Q8zZj9Rjxp', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakp0WldLb3hEUFRPMzVqbjB5b2VTUHREeGRLSnVVTnZoV0p2UFJwRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631113840),
('W9A5f74ad43uu0MEkJrE6V2koMhLDV2P62GZsJfX', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEc1Z3dJT0FHaWhLckI2b0NDR3Q1V0tiZEJkRHNGVWRPemhwcldlNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631165103),
('WewftShS7dMDHpPoLOpEHNPYWUNnlv6sGTbM0izv', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFNJRXd6ekRhczdTenV3QU1FVWwwSkdtT2ZwSEJpcFNHdnkzeUhLSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631163900),
('wFUeBJ5JLVU3YhAbcOjJQ6ShJIEmSI2QGBA6z2Bj', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVllVSmtaSGFuOW15VEo4QVE2SVhlNHloY0swWGNKdG5rUHFxOFRXdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097805),
('WGzHi76V51XU3GrEhDqRFogtYPqlZ4sQrRIwzarA', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3FlUDVUbXJ0QmpCUndyYWhvaTlYU1VXZFVoOEJjd2FDa3NrUlVJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099579),
('wKxt5UXkKfOfm5Q9D9xebPUSnCRM7UTqAUR7hYSx', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnI4NWxiTWx0Mk12RnY0S0ZlRUp6cVJHODZmam1mbEhTb1J0MzR2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631163904),
('wM2dSDMpFX9c0ld3p6xFfElR9I4XynjcyN2WoNeP', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1ZodEdZdjlOUDJpVnBPSEdnN3dsTkxNeHU4Y1U5UDF3NUM1ZGVUMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631166097),
('wRKXfO9jMQCAq6QRMCdhspNqyLhP3CQQZlaMmQkY', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0pwcVpzYTZRSzdwU0dpa2ZhZGdsajE4N3REM3BtMHNad3dZaXFGdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098423),
('wvgbYKhorbfsXRGKYZLodGz4mu6AQFpAazcidqmp', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmJjSVN5QzExVzFjc29sZDVGNUpONm5LaUFsV0VYS2JWTExDdXNBZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114453),
('wXseCJlnT5lvy2vNsTa5KCeo6Pqh3075geJwwTaZ', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienphT2VTRFlSU3ZINHh3bXgwSk1LVVRUT0JhS1dJUzhKenlFNk5RbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631102338),
('wY5RXvQAtKmk15NHLBB59rSP4jU3DDBTY0y7K1hQ', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUc0cTJrQUt1ZzlKblBqcUhLYW53ZVRKeVBpNkV0N3lGWHdQejVhSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162316),
('wzoCW1Ngo0BuzvPxykupALCrS803TQiOQe6HYeMs', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUtPM2FpeGdFNmJWS1JVRllkNXdra3BhS0hidWdkVlBxQnc3NGxJbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114451),
('x27ZGvvpIxjQE5pVe7hj36qX6cxPKQQf9dHfKTwt', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHRGN01GS0Z4ZzNmTzhuVVVhUFd5cm9IZzFvTjBMV1p1N2E4OFV6aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114448),
('x3eseIHr8n1JCD19TU8hdxAAqUM8uy9ppPH2ZIUw', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3d1bzk0RlNudmVJTkZDdTlhYk95WTZyWVNDZWhMSjBpNDRCbGhieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631162454),
('X8hVjljb2HuTN72fvLcU0DFgJOoYNgBzlBBcbbGZ', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjJKOVdlblFZaEI5dlE2cGpjcEV0YkpwS1RXM29vdWFUbWdnTXgxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114099),
('XAqBfg3Gvrswqt3rZzRPdBFYPgepIR6Cu9o8rOZu', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHh5WVl3bjN0cUNHR1pLcVJ3d2dmcGVscW1vcjNFYklRZHRSQ0tRWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099384),
('xjIeoePcfaYwfpM79lXFdt004XFXQxH0XU9hGt7x', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnN3ejNIUEk5am9Jb0pPVVlnRVFudGgzbmVqd2NnMXdXbmxRZUVUdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098424),
('XKPEuMaIzp4gDY9txVMgU14BM2EY6U1xEYYvi2js', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUtoMjEwcjN6ZGd6UU1nc3pUcVFLZlVtbGJMUFVabldMOWRZQ2hpOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099247),
('XOpEUq6jmQeBFBHfwSDNvAnezXNOZRNL5zzMs28T', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWoybEExdm9RM29Ea1FQNzd1MWdQaHUxbGdnVE56MVFsaU1zdHIyUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631113478),
('xP9mXR4kfZqJClaSf2RvQScDdgwDpsunOVeZIIyO', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWNvMlRMV3NPRjJGTUFXVVhmc1M3cWhmMjRtcXYwQlBKSUNOdWYxcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098436),
('xQc02NWjDcu4Zva4ITD0T6RHPtkGWkldoo8Ubkrs', 103, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG5pY1lLMmlySTdHbHJUV1JsdHBDV3lnVzJ2SG1hU1pNYzJjWUhKZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631114423),
('xSAYp0S2wfksGshycGvlk44dFks3uWY0T05A70YN', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1FKT0ZQMlFIQnhXeG1UdzBac0RObzFzamZvQk95VmpYUHhUWENkZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114449),
('xUcHolYJHhz3lTGQAogqNZkb0WBGJURBQ4WwHTT0', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnFWY0JlOEVrYWpSWml5dU9uSjNnektCZUZmNERnVmhjMGRqc0NnaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631097805),
('Xuqz1Hi97ps9cZaxJW87uJmzVW2GpcYri4FZtbaM', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmxHV2tGOVZnenpFcERiWnhRT1NhY3lpUFljMWExdWtaR3R1VVZqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114461),
('Xzl1YXcrtl9OwpUoTHGbtuew1x8TinvV5rqQU9lY', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjZ4WnE0QVZsWEdPVEZiUFBpeEp2ZERnclBjbkpHU3M2QVNUTUNCMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1BydDluVDBDWVlaVHVSVHdZZG5hMW1tdTRzSWFyNXlkdGh2WmxJYU4uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162394),
('Y0AYphxO12jHH3wPwefnELzc0XwyoFhphZRdbrPt', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHhjTmFnbHpEQVozaThDUVlFN3MxMHkwVFo4YVZVZWpQSk5zczE0RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098071),
('y4haRmD8rEk1XIk6Aj4vZfyf9fscR6qjHT3leL7j', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUtHMFhUOHV1TlFWdUJRbUZRbzRFV0xiMkI5VHV3czdnWGZxaFJjdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631099440),
('YaH7gSUwYNGWGDYJ5I14LT0mca2br9ewiAye8nJr', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXV5eWZCZ1M1RURkellGN1RlN2tnOWVLT1JWanB6VFhiVEl2SWpsVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631162463),
('YC9IO5ANGXhLDYX3OzPNcevPtCqKSCGtRvhbca9M', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlF3Rkl0MElDNVI5OG1YaW9tZnljYVUyakQ2R1QxMzJncUI2aTZwUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzJ1SGZ2S2pzNnkxZDZvaXZ0dmdDSzlUYnRQUmI5R1ZQTU5raXN4T3kuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('YCjuZ0JjqPVwEp8vf0WE9YEnKGdBoKIdri6ITc4b', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5UUkZ1MzVEYWUxN3lCNzFEVlUyZjFPaWdxSkxIVHpUZ1dPeVdWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167683),
('yczjydbdNmZTPFZgVOAzUzjU7TsX5ALTzzIQdwbq', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia1E1NjBkY3lxOXpFZE11ZGFMTlJqWmZ0aE1maVVPdlJaNmN1RGMwSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631095613),
('yDqVsszlDihKi3sELPS8H3nQuBn5JjJIOWcIFr8A', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGlLR3NrTWRoWDNzaGY5d0JKUFpYcGhDNklHcjFCVGRpN2FJMmcwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099255),
('YdXlo3FR20Hj0aZtaf2zAm4GqpEKbjBGSmLV4TNL', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFBMaWVqalhneXo5dlJZTFhuT00ydHlRVlBoZUdBNkt0emNXb3NrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631167898),
('yff8DFLjEJdt1nxn5mudR3OCjAuv6K0beUTegbzt', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia255TmdWOVhJRkNpemlnRDI1VWM3dVBmTUhRaWtERWhNS0NJY3RsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631098091),
('yfyDB9bFh1AmsJbix1CfkLKavZMIGdEn2zkeoSeB', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXY2RmZPSmExNXNEY0gzV0J6M3QyRHV2QzJmemh4bWFPb3MyM0kzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1dmanMyTGh0WkRFTkI1T1kxSzNWcnBEZXhHaGVhVkVjMzRjV1Qxa1QuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098424),
('ygRs4k1vlbw0GNjuVS4bn568wbXlgmhQbzKJ89od', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmVjeTZNdVVUSmZBZGk0OTl0WEtxM0VENE5pc2FvZ096amo3Wm5PZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631163932),
('ygTSHul8tWNUCZ38Vi7SNlCiKUSSYjxGjIkYEgT6', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXp5UUZmS0dFQVE4aktPZWJGOWZ1T2pZOXBhTWNVVUhLWFU2RG4yRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631169598),
('yNs7KErecjkdhEjpeQl2ZR5UpiioSGRemFzmp5IG', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVlyM2wya1RqTkZ2ZzVoeUJHSmUyYVFMZDAxSk1OUDY3U1lka1ZZayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099249),
('ynXWnNhumYiwpzwYsYTrM6SpjTm23jitH1D7lUou', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEV4aFZ0TGNWQjRzelc3QmF0UTFCS2R6Sm16U2RZQzRMcWM3STc5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzLzhUOUxNb21NS3lDZklLNE14YlltNzBaV21XMkRUWlRQMEhqR3NBb1EuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631098437),
('YqvJJk7E9zw0EZrEYEOs58wNKK2V0LQNx79vx85y', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUd4ekh6VllyaWJiNFBaaU54bTc0c1gwRjlxWHlGSW9tY3RuaDJaRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099374),
('yrx0a5jtN8R3TT2nQNtCZHArWUdhJyTt32GcOJ4o', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1dxVzZSd0N2bEFqMFI3QTBpQTdTTUc2TzNuTXJUdmNCQTVxbDhTdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0lwQVkxenVwclB2ZmRseDlHdUFuYkNrMG9kcDNydXcxRmpDZnV4MmMucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631099249),
('yt5juFVzmFhuxekEdelQbfwuZ218THaI3e1tLhFd', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWJQYWlqMTZ2dTNZNVg1SWZmNWQ0OHhGTUhBT0dVVjFhUW9DMHZnWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114453),
('yTh9RKiK8z5NYWe26YtzeZNPAqVWjxG6nyI8naTs', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEc3U1hneG5ITk5maXFsbUxVRUl3UEliSGkydGVZcW43NUJmYmtGZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0RKRE0yUHFwdVd2MlNidElzVjNyM2ZhNUxRUXFZUVhPMHZZaUZWRUEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162964),
('yubVFYsSxizlWU2GvKZKRHAH170z6V85UmVksTqr', NULL, '115.186.141.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSG1nZFBxRTRGcTlpUFoxM3dGQ3hCTWRGOThiTHdyVVU2TDd4Z0dkdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631102317),
('z1J0HBAMEeaHv4wJrb8TpF0jl1s1OtjzsQBeM32S', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3JhMG1HaXlRSDVTZ01mdHdzdDBkc0lvUFE4dEd4U1U2bFR2OWJsMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631113478),
('z3b2TAswv4VugyjgjGFS7E5QPRt6frAO0ALDc39r', NULL, '115.186.141.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkMyRWMzMUZPQmpQNW1sYmlTZ3JNNmZqSnBzNktuSVhWV3gxZ0Z0SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631114462),
('z3tevyN0MBSlCN69ZfYQqTv0IQ7bTPbnwclltJGf', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzRLZ1NkS25XRmF2VlBBNnJiUGl4b3FEUWZ0SmdEcGV3U3djdXBQNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL1JadE9KOHQwNUJCaFJ2UUp5dk5rNzNvdk5OZ3pwWlZxQmZiTGRiYXYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162395),
('z9kn3KUMNPbNxHMqb83dnZmmeLbti1K0PfS66z9y', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXJDOWE4TmVvYWRNQmliN0hZbW9pU3J1VFdJM1NneFd6TkRQcHl2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631097805),
('ZDfPzNAq9d9KJHeg2Js0vmpq9QzvTusDuDF746ou', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1pCa2E3RDZXUjF0ZXNBRkFpM2pwVDBFWG1VTUxNc2Zia1Y2cUNSeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0pxUThnTlIxNEVWNFo1RUJzaDJBc2tRbjNMb2ZoY3B2VThiQWVWc0cuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631169598),
('ZFcCdKueEL1aiLFubisViFt64Y4XZFiDlnZHwrso', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU01uMDZFVWpDMGZuWmtjOFBmOHloWmpsclJIeE9paGRZejRZU2ZEMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvZ2V0VXNlci8xMDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631166026),
('ZjjKPFfj5QixzamiKIFl3Cxs95HVHoVachIW0StF', NULL, '115.186.169.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUQ2ME90SmhsWVd4cDZLTTFtdG5idmp3MEh5Z3lmbTVlTzRJeERuZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3V0bGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631095613),
('ZSJYj5koEPkxx1FFX8jfa8Ls36SB7pfT3fHHPB4O', NULL, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2N3YmZ3cXUxTTVtR1NwWnJLU2d5bEJNRmtUeGk5WVk1djlyTllQcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvcGljL3Byb2R1Y3RzL0xHTVVUNzJndGNCZzdaTWFQSkM5ZXRZYzBEbmNJTm1pcTFzWU11SEEuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631162969),
('zxsbRZGlIVqqADXMYBwFyqDQGkVd20x15XG59CrO', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGxxMUFBS2tCMTM2MWZ2YVk2SUxKWUtNa1BFUjk5dUhLbWdyeVZ2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631167974),
('ZZN2xJU1Rqj2F7seTLYUX9ZtoilbTGqkyF0qNj5C', 103, '115.186.141.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME5tRFYzYzZXRFZzODV4T0J3SldlUFFUdjBxU1VNTWFYNzR5WkMwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9mb29kYXBwLmFwcHNyb2FkLmNvbS9hcGkvb3JkZXJzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1631099579);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_value` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd_charge', '100', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_pins`
--

CREATE TABLE `table_pins` (
  `id` int(11) NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `table_pin` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_pins`
--

INSERT INTO `table_pins` (`id`, `table_no`, `table_pin`, `status`) VALUES
(1, 1, '0001', 1),
(2, 2, '0002', 0),
(3, 1, '0003', 1),
(4, 2, '0004', 0),
(5, 3, '0005', 1),
(6, 4, '0006', 0),
(7, 5, '0007', 1),
(8, 6, '0008', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_id` bigint(20) DEFAULT NULL,
  `image` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `gender`, `city`, `photo`, `address`, `role`, `zip`, `country`, `provider`, `provider_id`, `status`, `created_at`, `updated_at`, `card_id`, `image`) VALUES
(75, 'petterss', 'robbiosss', 'pettejr@gmail.com', NULL, NULL, '$2y$10$TvvA4lyTIfJX/rJLhwkVgeQSpeE3nfk0rV4UPLsAnQVEhYJW8E2D.', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-07-31 22:32:41', '2021-09-08 01:58:11', NULL, NULL),
(76, 'sagar', 'roy', 'sagarbd28@gmail.com', '01714253552', NULL, '$2y$10$fvD8WMGarPNe5j1pRIg9OeJSHD9cJVp0azWqZTpbaY0OETq2yZzJu', NULL, '1', 'khulna', NULL, 'some address', '', '25', 'BD', NULL, NULL, NULL, '2021-08-02 07:15:15', '2021-08-02 07:16:13', 62, NULL),
(77, 'alex', 'mark', 'alex@user.com', '11111111111', NULL, '$2y$10$FGPp2mULuqVlYB0FQjbdn.SaV916BEij9WR9lIU8v/39dbsgN4US6', NULL, '1', 'Bethel', NULL, 'st 3434 Alaska', '', '50700', 'United States', NULL, NULL, NULL, '2021-08-03 00:20:12', '2021-08-04 23:48:12', 63, NULL),
(78, 'gloria', 'james', 'gloria@user.com', '11111111111', NULL, '$2y$10$SDlyC9MTepTPl7QMS5lkpeY3MUwL1749gtSEJSdDdss/l90y0yrEm', NULL, 'Male', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-03 00:58:41', '2021-08-03 00:58:41', NULL, NULL),
(79, 'james', 'noah', 'james@user.com', '22222222222', NULL, '$2y$10$oGs2ePzuUDsLnI8Csu3qc.RTZ0PG07jkkNaPHhsPNVD5QovSqKyG6', NULL, 'Male', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-03 01:00:51', '2021-08-03 01:00:51', NULL, NULL),
(80, 'callum', 'scott', 'callum@user.com', '99999999999', NULL, '$2y$10$FEeCA9aYeaDKHH0800FHuuxio1bRLbTITGc0dl/dFXX/RdHdu/8MS', NULL, 'Male', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-03 02:50:11', '2021-08-03 02:50:11', NULL, NULL),
(81, 'parker', 'rossan', 'parker@user.com', '77777777777', NULL, '$2y$10$9zxgs.DrqXZgBLLMA4chCO2Fm8jlBMpM7Y.rDx6HvkpMV5U9idE7W', NULL, '1', 'Bethel', NULL, 'st 3434 Alaska', '', '50700', 'United States', NULL, NULL, NULL, '2021-08-03 02:53:54', '2021-08-03 03:16:36', 71, NULL),
(82, 'sagar', 'roy', 'admi3n@email.com', '01917177560', NULL, '$2y$10$AQgeyf5PdJpLRKPscuCeOefVdUEUBZ7CboQ5rnVbY.8yo8PWl76Ta', NULL, 'Male', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-04 22:56:08', '2021-08-04 22:56:08', NULL, NULL),
(83, 'sagar', 'roy', 'admiwn@email.com', '01917177560', NULL, '$2y$10$4.t9mZ8Tgcb4f068TrHLb.pU2kd6.eFB.aDseUj2wddauYg1.qrGm', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-04 23:03:31', '2021-08-04 23:03:31', NULL, NULL),
(84, 'karl', 'sommerwhile', 'karl@user.com', '33333333333', NULL, '$2y$10$kwTLy4n/roBn3Vmba63of.1V/gNqGI2Id8MTn497AnIhzmEbTK8Ti', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-04 23:54:01', '2021-08-04 23:54:01', NULL, NULL),
(85, 'callum', 'scott', 'call@user.com', '44444444444', NULL, '$2y$10$7BBwzj4ASH9du1LC2QInX.eAk5OX7h0bnrDUEJxVUDuzo7tzkKJMG', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-05 00:03:07', '2021-08-05 00:03:07', NULL, NULL),
(86, 'sassda', 'sdaasd', 'dominictay94@gmail.com', '12213564547567654', NULL, '$2y$10$nPtOVG6D8e/wQ6sjyMGnEOVQJymevNcqwC7s/ZMvGmxTIdXfOlMya', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-07 01:53:34', '2021-08-07 01:53:34', NULL, NULL),
(87, 'DOminic', 'Tay', 'Dominic@p65marketing.com', '12345678912', NULL, '$2y$10$THoZAnfABtHx5qhjnqUSjOjayTrw0UdsBPVcHgFxooe4fi4dC8AvC', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-07 01:54:52', '2021-08-07 01:54:52', NULL, NULL),
(88, 'Anna', 'Smith', 'anna@user.com', '99999999999', NULL, '$2y$10$93dvuD8W5/rhTPDRAL25YuVtK3UtGu1ycMATHKABh.YVAdYatQsMi', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-07 10:40:45', '2021-08-07 10:40:45', NULL, NULL),
(89, 'Zoey', 'Amanda', 'zoey@user.com', '11111111111', NULL, '$2y$10$pLsNQDOV3uhaaxjGDz25Cu5q/6ZmOIBEWwEXM3M98UuBjVh2GeQPi', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-07 11:13:16', '2021-08-07 11:13:16', NULL, NULL),
(90, 'Test', 'ing', 'dominic@gmail.com', '12345678912', NULL, '$2y$10$.ISvB0MLB2nCr3PWFsNHR.Ks4c9VO2dGsKEKz.XGFvn.MmUGphZsi', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-08 00:27:57', '2021-08-08 00:27:57', NULL, NULL),
(91, 'sagar', 'roy', 'onyroy44@gmail.com', '01917177568', NULL, '$2y$10$5ceNiAqpQxc.5.xAHTshYeTD1PvTWb3XSMLBteVj3qvslS2zlbYpW', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 02:31:04', '2021-08-09 02:31:04', NULL, NULL),
(92, 'ross', 'Mcgregor', 'ross@user.com', '88888888888', NULL, '$2y$10$Ai5iTsayg3omFx/tieR6NOyjo2P0T1GXFjT5j3WdMoeXd25kEgevm', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 03:04:51', '2021-08-09 03:04:51', NULL, NULL),
(93, 'cecilia', 'mark', 'ceci@user.com', '22222222221', NULL, '$2y$10$kbNi5IWJcyCvrLCnXqv0Y.w73O4Ws8fxLkZXpAq1E/y79HO7Zhb3S', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 03:06:00', '2021-08-09 03:06:00', NULL, NULL),
(94, 'eve', 'mark', 'eve@company.com', '66666666666', NULL, '$2y$10$ESC44.Flg6U47v6ZZqmr8u3JsgXv./icH0w5ITlf/1jFZkJ9ghyAu', NULL, '1', 'Bethel', NULL, 'st 3434 Alaska', '', '50700', 'United States', NULL, NULL, NULL, '2021-08-09 04:35:44', '2021-09-02 04:45:24', 78, NULL),
(95, 'gal', 'mark', 'gal@user.com', '12345678999', NULL, '$2y$10$/4yQsiP1eWxntOvgLuhE2e/FuKlEjb2QMxvFT4lj4DaTejo9eE7zq', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 04:53:16', '2021-08-09 04:53:16', NULL, NULL),
(96, 'jamie', 'mcgregor', 'jam@user.com', '33333333333', NULL, '$2y$10$yolfiaU/upxKxaTGDZRQo.HZumNt.a5Dy8mMxs4WTtSln6s5wX12y', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 06:15:36', '2021-08-09 06:15:36', NULL, NULL),
(97, 'margeret', 'lewis', 'mar@user.com', '98765432110', NULL, '$2y$10$gpwlwO2vW4/iyjVNl1oJ2.a5nomGnGNoZ6/09X55s.0HO8eyvfzD6', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 06:20:08', '2021-08-09 06:20:08', NULL, NULL),
(98, 'sagar shourov roy', '01917177562', 'admin34@email.com', '01917177562', NULL, '$2y$10$DXJffKj5QtDi8/KNxMz5BeYtP7yib4yK5UsYbmAoqzVcfmtf9gIKi', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 23:22:55', '2021-08-09 23:22:55', NULL, NULL),
(99, 'victoria', 'james', 'vic@user.com', '55555555555', NULL, '$2y$10$x4jrrZOvqthk7hCaeuJXBOVdtp1OshM7b.kB6jw86PzvF29YgkS9u', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-09 23:28:01', '2021-08-09 23:28:01', NULL, NULL),
(100, 'alex', 'mark', 'alexx@user.com', '22222222222', NULL, '$2y$10$xXuoJH/MiXQ7OmjufLCkgu3tgWbcdRjIYsVvVdycIpNRFpFA8WV6S', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-11 03:32:28', '2021-08-11 03:32:28', NULL, NULL),
(101, 'mark', 'robert', 'mark@user.com', '33333333333', NULL, '$2y$10$AW48pkZ1DkbGFSFApnGsIu1ql9ZQiS60Q79TE0k8fKrjlex6AQxCC', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-11 03:33:17', '2021-08-11 03:33:17', NULL, NULL),
(102, 'rimsha', 'ubaid', 'rimshaubaid@live.com', '30075633333', NULL, '$2y$10$7EqRDTFJ5sIGvUcsKGjK8ucNPNWcliEiOQcvQJopgYlgmXt0wxnJK', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-13 02:41:06', '2021-08-13 02:41:06', NULL, NULL),
(103, 'rimsha', 'ubaid', 'rimshaubaid75@gmail.com', '03007563333', NULL, '$2y$10$fmpMt3vOvKZpSOMoGMMhx.sRtndUs8AmOWwTJXyplswt6JAQv8h8G', NULL, '1', 'islamabad', NULL, 'f6/1 street#37', '', '1122', 'pakistan', NULL, NULL, NULL, '2021-08-31 04:08:52', '2021-09-14 02:47:44', 114, NULL),
(105, 'PETER', 'hesse', 'peterhesse74@gmail.com', NULL, NULL, '$2y$10$z15YAb6N57NSN1XeQNnv6uvPLzNM0nfFNJrcI8.Q/GTON4itjpMl2', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-31 07:25:47', '2021-09-10 00:20:11', NULL, NULL),
(106, 'Jhon', 'Doe', 'itianzinfo@gmail.com', '030289898989', NULL, '$2y$10$ABP4.CF48juYlAI1nFtiMe//VrAXL9iikcMPfk8GFTvUufIxgalEi', NULL, 'Male', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-08-31 23:49:15', '2021-08-31 23:49:15', NULL, NULL),
(107, 'callum', 'mark', 'cal@user.com', '66666666666', NULL, '$2y$10$1llmAjX8PXDxVmm/Ug6MZ.GmGVmDV.hE0VUMIM9UaoQCNgDXyaXzm', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-02 04:30:27', '2021-09-02 04:30:27', NULL, NULL),
(108, 'rimsha', 'ubaid', 'saimaubaiid@gmail.com', '03007364734', NULL, '$2y$10$UsjRLTvrhy5OeJqMfH3uueuUeaXlHV78u2U5j5aI34mQfwAlE7wPe', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-03 02:05:05', '2021-09-03 02:05:05', NULL, NULL),
(109, 'gfgfdg', 'gfdghghf', 'abc@test.com', '03007563333', NULL, '$2y$10$WDkQ1XHxDxID3lJB9aMlc.9Mz1hvM0C9u.a9QdwJ2uuYXTx5D2eR6', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-03 02:07:46', '2021-09-03 02:07:46', NULL, NULL),
(110, 'rimsha', 'ubaid', 'saimaubaid@gmail.com', '03007563333', NULL, '$2y$10$ThcA4OuTw3FfgJqxwYOkJOTTUEotyxq7u3LXEy1bFU3TvIPxQ59wS', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-03 04:30:59', '2021-09-03 04:30:59', NULL, NULL),
(111, 'aline', 'lara', 'alinalara007@gmail.com', '03007563333', NULL, '$2y$10$6uC.HivVodq1RwUCw4sTVeNJQtiBuSVuf0hkrlMu6KTp6DpQROK.m', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-13 02:12:00', '2021-09-13 02:12:00', NULL, NULL),
(112, 'aline', 'lara', 'alinelara007@gmail.com', '03008621900', NULL, '$2y$10$ucM5PLF30Gd/fgDtC4UOauzOYIr9bqAkpAOmq1ys8JsLMK4/FoRmi', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-13 02:12:57', '2021-09-13 02:12:57', NULL, NULL),
(113, 'aline', 'lara', 'saimaubaid1@gmail.com', '03008621900', NULL, '$2y$10$W2DxipoB8stX0ioS1UC0teQ.3y8o3Tht7SiY3ZkNDt7aO5lVEywda', NULL, '2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-09-13 02:13:08', '2021-09-13 02:13:08', NULL, NULL),
(114, 'petter', 'hesse', 'admin@gmail.com', '12345678', NULL, '$2y$10$fpoWqpTJaoUHznLCvEPqHOLesOCDrb1a3ffUKqvp8ERCjNGfgWmQy', NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `price`, `stock`, `product_id`, `file_id`) VALUES
(1, NULL, NULL, NULL, 'fsfsd', 200, 5, 2, 1),
(2, NULL, NULL, NULL, 'sdfsdf 4', 10, 3, 2, 1),
(3, '2021-07-14 02:06:42', '2021-07-14 02:06:42', NULL, 'sagar', 5, 5, 3, NULL),
(4, '2021-07-14 02:07:37', '2021-07-14 02:07:37', NULL, 'sagar', 5, 5, 2, NULL),
(8, '2021-08-04 05:12:14', '2021-08-04 05:12:14', NULL, 'Sauce', 10, 2, 7, NULL),
(9, '2021-08-04 05:12:14', '2021-08-09 09:00:56', NULL, 'aregano topping', 20, 3, 17, NULL),
(22, '2021-08-04 10:43:33', '2021-08-04 10:43:33', NULL, 'sauce', 2, 15, 16, NULL),
(23, '2021-08-04 10:43:33', '2021-08-04 10:43:33', NULL, 'jalapeno', 5, 12, 16, NULL),
(24, '2021-08-04 12:03:48', '2021-08-04 12:03:48', NULL, 'sauce', 0, 0, 16, NULL),
(25, '2021-08-04 12:03:48', '2021-08-04 12:03:48', NULL, 'mint topping', 5, 12, 16, NULL),
(26, '2021-08-05 12:34:15', '2021-08-05 12:34:15', NULL, 'sauce', 0, 0, 8, NULL),
(27, '2021-08-05 12:34:15', '2021-08-05 12:34:15', NULL, 'oregano', 3, 20, 8, NULL),
(28, '2021-08-05 16:31:39', '2021-08-05 16:31:39', NULL, 'soy sauce', 20, 15, 17, NULL),
(29, '2021-08-06 10:05:49', '2021-08-06 10:05:49', NULL, 'Sugar', 2, 10, 18, NULL),
(30, '2021-08-06 10:05:49', '2021-08-06 10:05:49', NULL, 'Foam', 5, 15, 18, NULL),
(31, '2021-08-06 10:07:31', '2021-08-06 10:07:31', NULL, 'Sugar', 5, 15, 19, NULL),
(32, '2021-08-06 10:07:31', '2021-08-06 10:07:31', NULL, 'Milk foam', 10, 20, 19, NULL),
(33, '2021-08-09 09:03:20', '2021-08-09 09:03:20', NULL, 'Cream suace', 5, 15, 20, NULL),
(34, '2021-08-09 09:04:22', '2021-08-09 09:04:22', NULL, 'caramel sauce', 20, 5, 21, NULL),
(35, '2021-08-09 09:45:14', '2021-08-09 09:45:14', NULL, 'caramel sauce', 5, 20, 22, NULL),
(36, '2021-08-09 09:46:24', '2021-08-09 09:46:24', NULL, 'choco syrup', 5, 15, 23, NULL),
(37, '2021-08-09 12:27:51', '2021-08-09 12:27:51', NULL, 'cinnamon', 20, 5, 24, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `carts_variations`
--
ALTER TABLE `carts_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_variations_cart_id_foreign` (`cart_id`),
  ADD KEY `carts_variations_variations_id_foreign` (`variations_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_type_foreign` (`type`);

--
-- Indexes for table `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guest_users_card_id_foreign` (`card_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_type_foreign` (`order_type`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_outlate_foreign` (`outlate`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`),
  ADD KEY `orders_guest_id_foreign` (`guest_id`);

--
-- Indexes for table `order_type`
--
ALTER TABLE `order_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlates`
--
ALTER TABLE `outlates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outlates_banner_foreign` (`banner`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_menu_id_foreign` (`menu_id`),
  ADD KEY `products_image_foreign` (`image`);

--
-- Indexes for table `pro_cats`
--
ALTER TABLE `pro_cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_cats_banner_foreign` (`banner`);

--
-- Indexes for table `pro_menus`
--
ALTER TABLE `pro_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_menus_banner_foreign` (`banner`);

--
-- Indexes for table `pro_menus_items`
--
ALTER TABLE `pro_menus_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_menus_items_pro_menu_id_foreign` (`pro_menu_id`),
  ADD KEY `pro_menus_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pins`
--
ALTER TABLE `table_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_product_id_foreign` (`product_id`),
  ADD KEY `variations_file_id_foreign` (`file_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `carts_variations`
--
ALTER TABLE `carts_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1157;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `file_types`
--
ALTER TABLE `file_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT for table `order_type`
--
ALTER TABLE `order_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `outlates`
--
ALTER TABLE `outlates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pro_cats`
--
ALTER TABLE `pro_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pro_menus`
--
ALTER TABLE `pro_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pro_menus_items`
--
ALTER TABLE `pro_menus_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_pins`
--
ALTER TABLE `table_pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts_variations`
--
ALTER TABLE `carts_variations`
  ADD CONSTRAINT `carts_variations_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `carts_variations_variations_id_foreign` FOREIGN KEY (`variations_id`) REFERENCES `variations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
