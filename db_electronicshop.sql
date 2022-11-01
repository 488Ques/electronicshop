-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 01, 2022 at 09:17 PM
-- Server version: 10.9.3-MariaDB
-- PHP Version: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_electronicshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(9) NOT NULL COMMENT 'VND',
  `discount_id` int(4) DEFAULT NULL,
  `specs_id` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `discount_id`, `specs_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Điện thoại Samsung Galaxy A03 32GB Đen', NULL, 2990000, 1, 1, '2022-10-24 00:59:35', '2022-10-24 14:35:57', NULL),
(2, 'Điện thoại Samsung Galaxy A13 4GB/128GB Đen', NULL, 4690000, NULL, NULL, '2022-10-24 01:02:38', '2022-10-24 01:20:20', NULL),
(3, 'Điện thoại Samsung Galaxy A04s 4GB/64GB Đen', NULL, 3990000, NULL, NULL, '2022-10-24 01:04:32', '2022-10-24 01:20:23', NULL),
(4, 'Điện thoại Samsung Galaxy A03s 64GB Đen', NULL, 3690000, NULL, NULL, '2022-10-24 01:04:32', '2022-10-24 01:20:25', NULL),
(5, 'Điện thoại iPhone 12 64GB Đen', NULL, 19990000, NULL, NULL, '2022-10-24 01:20:04', '2022-10-24 01:20:27', NULL),
(6, 'Điện thoại iPhone 12 64GB Xanh lá', NULL, 15490000, NULL, NULL, '2022-10-24 01:20:04', '2022-10-24 01:20:29', NULL),
(7, 'Điện thoại iPhone 14 Pro 256GB Tím', NULL, 34990000, NULL, NULL, '2022-10-24 01:20:04', '2022-10-24 01:20:39', NULL),
(8, 'Điện thoại iPhone 11 64GB Đen', NULL, 10790000, NULL, NULL, '2022-10-24 01:20:04', '2022-10-24 01:20:41', NULL),
(9, 'Điện thoại Nokia 8210 4G Xanh', NULL, 1490000, NULL, NULL, '2022-10-24 01:23:43', '2022-10-24 01:23:43', NULL),
(10, 'Điện thoại Nokia C31 3GB/32GB Xanh thiên thanh', NULL, 3190000, NULL, NULL, '2022-10-24 01:23:43', '2022-10-24 01:23:43', NULL),
(11, 'Điện thoại Nokia C21 Plus 2GB/64GB Xám Ánh Kim', NULL, 1990000, NULL, NULL, '2022-10-24 01:23:43', '2022-10-24 01:23:43', NULL),
(12, 'Điện thoại Nokia G11 Plus 3GB/64GB Xanh', NULL, 3390000, NULL, NULL, '2022-10-24 01:23:43', '2022-10-24 01:23:43', NULL),
(13, 'iPad Gen 9 Wifi 64GB 10.2 inch Bạc (2021)', NULL, 9990000, NULL, NULL, '2022-10-24 01:28:50', '2022-10-24 01:29:21', NULL),
(14, 'iPad Gen 9 Wifi Cellular 64GB 10.2 inch MK493ZA/A Bạc (2021)', NULL, 13890000, NULL, NULL, '2022-10-24 01:28:50', '2022-10-24 01:39:45', NULL),
(15, 'Máy tính bảng iPad Pro M1 2021 11 inch Wifi 8GB/128GB MHQR3ZA/A Xám', NULL, 21990000, NULL, NULL, '2022-10-24 01:28:50', '2022-10-24 01:39:47', NULL),
(16, 'iPad Gen 9 Wifi 256GB 10.2 inch Bạc (2021)', NULL, 13890000, NULL, NULL, '2022-10-24 01:28:50', '2022-10-24 01:39:50', NULL),
(17, 'Máy tính bảng Samsung Galaxy Tab A7 Lite 32GB Bạc', NULL, 4490000, NULL, NULL, '2022-10-24 01:31:33', '2022-10-24 01:31:33', NULL),
(18, 'Máy tính bảng Samsung Galaxy Tab A7 Lite 32GB Xám', NULL, 4490000, NULL, NULL, '2022-10-24 01:31:33', '2022-10-24 01:31:33', NULL),
(19, 'Máy tính bảng Samsung Galaxy Tab A8 64GB Xám (2022)', NULL, 8490000, NULL, NULL, '2022-10-24 01:31:33', '2022-10-24 01:31:33', NULL),
(20, 'Máy tính bảng Samsung Galaxy Tab S7 FE 64GB Xanh', NULL, 13990000, NULL, NULL, '2022-10-24 01:31:33', '2022-10-24 01:31:33', NULL),
(21, 'Laptop Asus VivoBook X415EA-EK675W i3-1115G4/4GB/256GB/Win11', NULL, 10990000, NULL, NULL, '2022-10-24 01:37:13', '2022-10-24 02:06:18', NULL),
(22, 'Laptop Asus Vivobook A415EA i3-1125G4/8GB/256GB/Win11 (EB1750W)', NULL, 13390000, NULL, NULL, '2022-10-24 01:37:13', '2022-10-24 02:06:21', NULL),
(23, 'Laptop Asus Vivobook 15X OLED i5-12500H/8GB4/512GB/Win11 A1503ZA-L1421W', NULL, 20490000, NULL, NULL, '2022-10-24 01:37:13', '2022-10-24 02:06:23', NULL),
(24, 'Laptop Asus TUF Gaming F15 FX506HC i5-11400H/8GB/512GB/Win11 HN144W', NULL, 20190000, NULL, NULL, '2022-10-24 01:37:13', '2022-10-24 02:06:24', NULL),
(25, 'Laptop HP 15S-FQ2663TU i3-1115G4/8GB/256GB/Win11 6K796PA', NULL, 10790000, NULL, NULL, '2022-10-24 01:39:38', '2022-10-24 02:06:25', NULL),
(26, 'Laptop HP 240 G8 i5-1135G7/8GB/256GB/Win11 617L4PA', NULL, 16990000, NULL, NULL, '2022-10-24 01:39:38', '2022-10-24 02:06:39', NULL),
(27, 'Laptop HP Pavilion 15-EG0509TU i3-1125G4/4GB/512GB SSD/Win11 (46M08PA)', NULL, 15890000, NULL, NULL, '2022-10-24 01:39:38', '2022-10-24 02:06:42', NULL),
(28, 'Laptop HP Pavilion 15-EG2058TU i5-1240P/8GB/256GB/Win11 6K788PA', NULL, 17990000, NULL, NULL, '2022-10-24 01:39:38', '2022-10-24 02:06:46', NULL),
(29, 'Laptop Dell Vostro 5410 I5-11320H/8GB/512GB/Win11 (V4I5214W1)', NULL, 22690000, NULL, NULL, '2022-10-24 01:41:42', '2022-10-24 02:06:49', NULL),
(30, 'Laptop Dell Vostro 3405 R5-3500U/8GB/512GB/Win11 (V4R53500U003W1)', NULL, 18690000, NULL, NULL, '2022-10-24 01:41:42', '2022-10-24 02:06:52', NULL),
(31, 'Laptop Dell Vostro 14 3400 i5 1135G7/8GB/512GB/Win11 YX51W5', NULL, 21790000, NULL, NULL, '2022-10-24 01:41:42', '2022-10-24 02:07:00', NULL),
(32, 'Laptop Dell Vostro 3400 i5-1135G7/8GB/256GB/Win11 (70270645)', NULL, 18990000, NULL, NULL, '2022-10-24 01:41:42', '2022-10-24 02:07:02', NULL),
(33, 'Máy lạnh Panasonic 1.5 HP CU/CS-N12WKH-8M', NULL, 11990000, NULL, NULL, '2022-10-24 01:44:38', '2022-10-24 02:08:45', NULL),
(34, 'Máy lạnh Panasonic 1 HP CU/CS-N9WKH-8M', NULL, 9490000, NULL, NULL, '2022-10-24 01:44:38', '2022-10-24 02:08:51', NULL),
(35, 'Máy lạnh Panasonic Inverter 1HP CU/CS-VU9UKH-8', NULL, 18390000, NULL, NULL, '2022-10-24 01:44:38', '2022-10-24 02:08:54', NULL),
(36, 'Máy lạnh Panasonic Inverter 1 HP CU/CS-XU9XKH-8', NULL, 13490000, NULL, NULL, '2022-10-24 01:44:38', '2022-10-24 02:08:56', NULL),
(37, 'Máy lạnh Daikin 1 HP ATF25UV1V', NULL, 9190000, NULL, NULL, '2022-10-24 01:49:15', '2022-10-24 02:08:58', NULL),
(38, 'Máy lạnh Daikin 1.5 HP ATF35UV1V', NULL, 11590000, NULL, NULL, '2022-10-24 01:49:15', '2022-10-24 02:09:02', NULL),
(39, 'Máy lạnh Daikin Inverter 1.5 HP FTKA35VMVMV', NULL, 12890000, NULL, NULL, '2022-10-24 01:49:15', '2022-10-24 02:09:04', NULL),
(40, 'Máy lạnh Daikin Inverter 1.5 HP ATKC35UAVMV', NULL, 14990000, NULL, NULL, '2022-10-24 01:49:15', '2022-10-24 02:09:06', NULL),
(41, 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13C3KCVG-V', NULL, 12990000, NULL, NULL, '2022-10-24 01:52:55', '2022-10-24 02:09:07', NULL),
(42, 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13E2KCVG-V', NULL, 13900000, NULL, NULL, '2022-10-24 01:52:55', '2022-10-24 02:09:09', NULL),
(43, 'Máy lạnh Toshiba Inverter 1 HP RAS-H10E2KCVG-V', NULL, 11690000, NULL, NULL, '2022-10-24 01:52:55', '2022-10-24 02:09:11', NULL),
(44, 'Máy lạnh Toshiba Inverter 2.5 HP RAS-H24E2KCVG-V', NULL, 24600000, NULL, NULL, '2022-10-24 01:52:55', '2022-10-24 02:09:13', NULL),
(45, 'Tủ lạnh Samsung Inverter 208 lít RT20HAR8DBU', NULL, 8290000, NULL, NULL, '2022-10-24 01:55:09', '2022-10-24 02:09:14', NULL),
(46, 'Tủ lạnh Samsung Inverter 680 lít RS62R5001M9', NULL, 24490000, NULL, NULL, '2022-10-24 01:55:09', '2022-10-24 02:09:17', NULL),
(47, 'Tủ lạnh Samsung Inverter 236 lít RT22M4032BU', NULL, 9590000, NULL, NULL, '2022-10-24 01:55:09', '2022-10-24 02:09:19', NULL),
(48, 'Tủ Lạnh Samsung Inverter 208 lít RT19M300BGS', NULL, 7090000, NULL, NULL, '2022-10-24 01:55:09', '2022-10-24 02:09:22', NULL),
(49, 'Tủ lạnh Panasonic Inverter 366 lít NR-TL381GPKV', NULL, 15490000, NULL, NULL, '2022-10-24 01:57:41', '2022-10-24 02:09:24', NULL),
(50, 'Tủ lạnh Panasonic Inverter 234 lít NR-TV261APSV', NULL, 8090000, NULL, NULL, '2022-10-24 01:57:41', '2022-10-24 02:09:26', NULL),
(51, 'Tủ lạnh Panasonic Inverter 420 lít NR-BX471WGKV', NULL, 20990000, NULL, NULL, '2022-10-24 01:57:41', '2022-10-24 02:09:32', NULL),
(52, 'Tủ lạnh Panasonic Inverter 326 lít NR-TL351GPKV', NULL, 13990000, NULL, NULL, '2022-10-24 01:57:41', '2022-10-24 02:09:35', NULL),
(53, 'Tủ lạnh Sharp Inverter 556 lít SJ-FX631V-SL', NULL, 24000000, NULL, NULL, '2022-10-24 01:59:33', '2022-10-24 02:09:38', NULL),
(54, 'Tủ lạnh Sharp Inverter 315 lít SJ-X346E-SL', NULL, 10000000, NULL, NULL, '2022-10-24 01:59:33', '2022-10-24 02:09:40', NULL),
(55, 'Tủ lạnh Sharp Inverter 253 lít SJ-X281E-SL', NULL, 8100000, NULL, NULL, '2022-10-24 01:59:33', '2022-10-24 02:09:42', NULL),
(56, 'Tủ lạnh Sharp Inverter 165 lít SJ-X196E-SL', NULL, 6300000, NULL, NULL, '2022-10-24 01:59:33', '2022-10-24 02:09:44', NULL),
(57, 'Máy giặt sấy LG Inverter 11 kg FV1410D4P', NULL, 22190000, NULL, NULL, '2022-10-24 02:01:44', '2022-10-24 02:09:46', NULL),
(58, 'Máy giặt sấy LG Inverter 15 kg F2515RTGB', NULL, 30990000, NULL, NULL, '2022-10-24 02:01:44', '2022-10-24 02:09:52', NULL),
(59, 'Máy giặt LG Inverter 11 kg FV1411S4P', NULL, 19790000, NULL, NULL, '2022-10-24 02:01:44', '2022-10-24 02:09:55', NULL),
(60, 'Máy giặt LG Inverter 15 kg F2515STGW', NULL, 24990000, NULL, NULL, '2022-10-24 02:01:44', '2022-10-24 02:09:57', NULL),
(61, 'Máy giặt Electrolux Inverter 9 kg EWF9024P5WB', NULL, 13990000, NULL, NULL, '2022-10-24 02:04:05', '2022-10-24 02:09:59', NULL),
(62, 'Máy giặt Electrolux Inverter 9 kg EWF9024P5SB', NULL, 14990000, NULL, NULL, '2022-10-24 02:04:05', '2022-10-24 02:10:01', NULL),
(63, 'Máy giặt Electrolux Inverter 8 kg EWF8024D3WB', NULL, 10490000, NULL, NULL, '2022-10-24 02:04:05', '2022-10-24 02:10:02', NULL),
(64, 'Máy giặt Electrolux Inverter 10 kg EWF1024P5WB', NULL, 15990000, NULL, NULL, '2022-10-24 02:04:05', '2022-10-24 02:10:04', NULL),
(65, 'Máy giặt Toshiba Inverter 8.5 kg TW-BK95S2V(WK)', NULL, 9090000, NULL, NULL, '2022-10-24 02:05:34', '2022-10-24 02:10:08', NULL),
(66, 'Máy giặt Toshiba Inverter 10.5 kg AW-DUK1160HV(SG)', NULL, 8590000, NULL, NULL, '2022-10-24 02:05:34', '2022-10-24 02:10:10', NULL),
(67, 'Máy giặt Toshiba Inverter 9 Kg AW-DK1000FV(KK)', NULL, 9090000, NULL, NULL, '2022-10-24 02:05:34', '2022-10-24 02:10:13', NULL),
(68, 'Máy giặt Toshiba 9 kg AW-H1000GV', NULL, 6790000, NULL, NULL, '2022-10-24 02:05:34', '2022-10-24 02:10:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producttag_map`
--

CREATE TABLE `producttag_map` (
  `product_id` int(4) NOT NULL,
  `tag_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producttag_map`
--

INSERT INTO `producttag_map` (`product_id`, `tag_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 1, '2022-10-26 19:20:49', '2022-10-26 19:20:49', NULL),
(1, 7, '2022-10-26 19:20:49', '2022-10-26 19:57:20', NULL),
(2, 1, '2022-10-26 19:25:12', '2022-10-26 19:25:12', NULL),
(2, 7, '2022-10-26 19:25:12', '2022-10-26 19:57:30', NULL),
(3, 1, '2022-10-26 19:36:49', '2022-10-26 19:36:49', NULL),
(3, 7, '2022-10-26 19:36:49', '2022-10-26 19:57:20', NULL),
(4, 1, '2022-10-26 19:37:27', '2022-10-26 19:37:27', NULL),
(4, 7, '2022-10-26 19:37:27', '2022-10-26 19:57:20', NULL),
(5, 1, '2022-10-26 20:02:51', '2022-10-26 20:02:51', NULL),
(5, 8, '2022-10-26 20:02:51', '2022-10-26 20:02:51', NULL),
(6, 1, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(6, 8, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(7, 1, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(7, 8, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(8, 1, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(8, 8, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(9, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(9, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(13, 2, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(13, 10, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(14, 2, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(14, 10, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(15, 2, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(15, 10, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(16, 2, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(16, 10, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(17, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(17, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(21, 3, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(21, 11, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(22, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(22, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(25, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(25, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(29, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(29, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(33, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(33, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(37, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(37, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(41, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(41, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(45, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(45, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(49, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(49, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(53, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(53, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(54, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(54, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(55, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(55, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(56, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(56, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(57, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(57, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(58, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(58, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(59, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(59, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(60, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(60, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(61, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(61, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(62, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(62, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(63, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(63, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(64, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(64, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(65, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(65, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(66, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(66, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(67, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(67, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(68, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(68, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

CREATE TABLE `product_discount` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_discount`
--

INSERT INTO `product_discount` (`id`, `name`, `discount_percent`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, '-21%', '21.00', '2022-10-24 02:19:07', '2022-10-24 02:19:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(4) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(4) NOT NULL,
  `is_thumbnail` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `url`, `product_id`, `is_thumbnail`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-1.jpg', 1, 1, '2022-10-24 02:23:10', '2022-10-28 07:54:18', NULL),
(2, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-2.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL),
(3, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-3.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL),
(4, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-4.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_specs`
--

CREATE TABLE `product_specs` (
  `id` int(4) NOT NULL,
  `specs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`specs`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specs`
--

INSERT INTO `product_specs` (`id`, `specs`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, '{\r\n    \"Model\": \"A03 (SM-A035F/DS)\",\r\n    \"Màu sắc\": \"Đen\",\r\n    \"Nhà sản xuất\": \"Samsung\",\r\n    \"Xuất xứ\": \"Trung Quốc\",\r\n    \"Thời gian bảo hành\": \"12 Tháng\",\r\n    \"Bộ nhớ trong\": \"32GB\",\r\n    \"Loại màn hình\": \"Infinity-V TFT LCD 20:9\",\r\n    \"Kích thước màn hình\": \"6.5 \\\"\",\r\n    \"Độ phân giải màn hình\": \"HD+ (720x1600) pixels\"\r\n}', '2022-10-24 05:54:39', '2022-10-30 09:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `name`, `description`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Điện thoại', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(2, 'Tablet', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(3, 'Laptop', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(4, 'Máy lạnh', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(5, 'Tủ lạnh', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(6, 'Máy giặt', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(7, 'Samsung', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(8, 'iPhone', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(9, 'Nokia', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(10, 'iPad', NULL, '2022-10-24 00:47:17', '2022-10-24 00:47:17', NULL),
(11, 'Asus', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:30', NULL),
(12, 'HP', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:32', NULL),
(13, 'Dell', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:34', NULL),
(14, 'Panasonic', NULL, '2022-10-24 00:50:58', '2022-10-27 12:34:36', NULL),
(15, 'Daikin', NULL, '2022-10-24 00:50:58', '2022-10-27 12:34:48', NULL),
(16, 'Toshiba', NULL, '2022-10-24 00:50:58', '2022-10-27 12:35:09', NULL),
(17, 'Sharp', NULL, '2022-10-24 00:52:19', '2022-10-27 12:35:13', NULL),
(18, 'LG', NULL, '2022-10-24 00:54:15', '2022-10-27 12:35:15', NULL),
(19, 'Electrolux', NULL, '2022-10-24 00:54:15', '2022-10-27 12:35:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_taggroup`
--

CREATE TABLE `product_taggroup` (
  `tag_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_taggroup`
--

INSERT INTO `product_taggroup` (`tag_id`, `parent_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(2, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(3, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(4, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(5, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(6, 0, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(7, 1, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(8, 1, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL),
(9, 1, '2022-10-27 13:19:10', '2022-10-27 13:19:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email_address`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'abc', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', NULL, NULL, 'abc@xyz.com', '2022-10-24 05:17:42', '2022-10-24 05:17:42', NULL),
(3, 'xyz', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', NULL, NULL, 'xyz@abc.com', '2022-10-28 16:57:28', '2022-10-28 16:57:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `address_line` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_discount_id` (`discount_id`),
  ADD KEY `FK_Product_Product_specs` (`specs_id`);

--
-- Indexes for table `producttag_map`
--
ALTER TABLE `producttag_map`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `FK_Product_category_relationship_Product_category` (`tag_id`);

--
-- Indexes for table `product_discount`
--
ALTER TABLE `product_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_image_Product` (`product_id`);

--
-- Indexes for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taggroup`
--
ALTER TABLE `product_taggroup`
  ADD PRIMARY KEY (`tag_id`,`parent_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `IDX_username` (`username`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_discount`
--
ALTER TABLE `product_discount`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Product_discount` FOREIGN KEY (`discount_id`) REFERENCES `product_discount` (`id`),
  ADD CONSTRAINT `FK_Product_Product_specs` FOREIGN KEY (`specs_id`) REFERENCES `product_specs` (`id`);

--
-- Constraints for table `producttag_map`
--
ALTER TABLE `producttag_map`
  ADD CONSTRAINT `FK_Product_category_relationship_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_Product_category_relationship_Product_category` FOREIGN KEY (`tag_id`) REFERENCES `product_tag` (`id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_Product_image_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `FK_User_address_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
