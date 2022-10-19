-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2022 at 09:38 AM
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
  `quantity` int(4) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  `discount_id` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `quantity`, `category_id`, `discount_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Galaxy Z Fold4', NULL, 40990400, NULL, 13, NULL, '2022-10-13 10:10:11', '2022-10-14 07:27:29', NULL),
(2, 'Galaxy Z Flip4 Bespoke Edition', NULL, 26989600, NULL, 13, NULL, '2022-10-13 10:15:23', '2022-10-13 10:15:23', NULL),
(3, 'Galaxy Z Flip4', NULL, 23989900, NULL, 13, NULL, '2022-10-13 10:15:23', '2022-10-13 10:15:23', NULL),
(4, 'Galaxy Tab S8 (Wi-Fi)', NULL, 17990500, NULL, 17, NULL, '2022-10-13 10:44:01', '2022-10-13 10:44:01', NULL),
(5, 'Galaxy Tab S6 Lite (2022)', NULL, 8990181, NULL, 17, NULL, '2022-10-13 10:46:01', '2022-10-13 10:46:22', NULL),
(6, 'Galaxy Tab S8+ 5G', NULL, 25989700, NULL, 17, NULL, '2022-10-13 10:46:01', '2022-10-13 10:46:38', NULL),
(7, 'Galaxy Watch5 Pro Bluetooth (45mm)', NULL, 11990000, NULL, 19, NULL, '2022-10-13 15:59:44', '2022-10-13 15:59:44', NULL),
(8, 'Galaxy Watch5 Pro LTE (45mm)', NULL, 12989900, NULL, 19, NULL, '2022-10-13 15:59:44', '2022-10-13 15:59:44', NULL),
(9, 'Galaxy Watch5 Bluetooth (40mm)', NULL, 6490000, NULL, 19, NULL, '2022-10-13 15:59:44', '2022-10-13 15:59:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `description`, `parent_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Di động', NULL, NULL, '2022-10-12 20:14:34', '2022-10-12 20:23:16', NULL),
(2, 'TV & AV', NULL, NULL, '2022-10-12 20:17:06', '2022-10-12 20:23:16', NULL),
(3, 'Gia dụng', NULL, NULL, '2022-10-12 20:17:06', '2022-10-12 20:23:16', NULL),
(4, 'Điện thoại thông minh', NULL, 1, '2022-10-12 20:17:26', '2022-10-12 20:24:09', NULL),
(5, 'Máy tính bảng', NULL, 1, '2022-10-12 20:25:19', '2022-10-12 20:25:19', NULL),
(6, 'Đồng hồ thông minh', NULL, 1, '2022-10-12 20:25:19', '2022-10-12 20:25:19', NULL),
(7, 'TV', NULL, 2, '2022-10-12 20:27:38', '2022-10-12 20:27:38', NULL),
(8, 'Thiết bị nghe nhìn', NULL, 2, '2022-10-12 20:27:38', '2022-10-12 20:27:38', NULL),
(9, 'Máy chiếu', NULL, 2, '2022-10-12 20:27:38', '2022-10-12 20:27:38', NULL),
(10, 'Tủ lạnh', NULL, 3, '2022-10-12 20:30:10', '2022-10-12 20:30:39', NULL),
(11, 'Máy giặt', NULL, 3, '2022-10-12 20:30:10', '2022-10-12 20:30:39', NULL),
(12, 'Máy hút bụi', NULL, 3, '2022-10-12 20:30:10', '2022-10-12 20:30:39', NULL),
(13, 'Galaxy Z', NULL, 4, '2022-10-12 20:33:18', '2022-10-12 20:33:18', NULL),
(14, 'Galaxy S', NULL, 4, '2022-10-12 20:33:18', '2022-10-12 20:33:18', NULL),
(15, 'Galaxy A', NULL, 4, '2022-10-12 20:33:18', '2022-10-12 20:33:18', NULL),
(16, 'Galaxy M', NULL, 4, '2022-10-12 20:33:18', '2022-10-12 20:33:18', NULL),
(17, 'Galaxy Tab S', NULL, 5, '2022-10-13 09:44:07', '2022-10-13 09:44:07', NULL),
(18, 'Galaxy Tab A', NULL, 5, '2022-10-13 09:44:07', '2022-10-13 09:44:07', NULL),
(19, 'Galaxy Watch', NULL, 6, '2022-10-13 09:46:29', '2022-10-13 09:46:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

CREATE TABLE `product_discount` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(3,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(4) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `IDX_category_id` (`category_id`),
  ADD KEY `IDX_discount_id` (`discount_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_parent_id` (`parent_id`);

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
  ADD UNIQUE KEY `IDX_file_name` (`url`) USING HASH,
  ADD KEY `FK_Product_image_Product` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_username` (`username`) USING HASH;

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_discount`
--
ALTER TABLE `product_discount`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_Product_Product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  ADD CONSTRAINT `FK_Product_Product_discount` FOREIGN KEY (`discount_id`) REFERENCES `product_discount` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK_Product_category_Product_category` FOREIGN KEY (`parent_id`) REFERENCES `product_category` (`id`);

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
