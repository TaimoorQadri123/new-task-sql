-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 06:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meradatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Name`) VALUES
(1, 'infinix'),
(2, 'vivo'),
(3, 'apple'),
(4, 'Samsung'),
(5, 'Xiaomi'),
(6, 'Oppo'),
(7, 'Realme'),
(8, 'Techo'),
(9, 'Huawei'),
(10, 'OnePlus');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'up coming',
  `warranty` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Name`, `quantity`, `price`, `status`, `warranty`, `brand_id`) VALUES
(1, 'infinix hot 10', 6, 67000, 'up coming', 1, 1),
(2, 'Vivo V29e', 8, 55000, 'up coming', 15, 2),
(3, 'iphone x', 5, 150000, 'best seller', 1, 3),
(4, 'infinix prime', 8, 95000, 'best seller', 2, 1),
(5, 'Galaxy S23 Ultra', 10, 45000, 'up coming', 1, 4),
(6, 'Galaxy Z Fold5', 8, 399000, 'up coming', 1, 4),
(7, 'iPhone 16 Pro Max', 9, 525000, 'up coming', 1, 3),
(8, 'iPhone16 Plus', 12, 480000, 'up coming', 1, 3),
(9, 'Redmi Note 14 Pro', 10, 74999, 'up coming', 1, 5),
(10, 'Xiaomi 14T', 10, 65000, 'up coming', 1, 5),
(11, 'Redmi 14C', 14, 156000, 'up coming', 1, 5),
(12, 'Oppo Reno 10', 8, 16700, 'up coming', 1, 6),
(13, 'Oppo A3', 1, 18700, 'up coming', 1, 6),
(14, 'Oppo F23', 18, 19800, 'up coming', 1, 6),
(15, 'Infinix Zero 40 4G', 12, 65220, 'up coming', 1, 1),
(16, 'Infinix Hot 50', 10, 68000, 'up coming', 1, 1),
(17, 'Realme GT 3', 6, 25000, 'up coming', 1, 7),
(18, 'Realme 11x', 20, 19850, 'up coming', 1, 7),
(19, 'Infinix Smart 9', 2, 75000, 'up coming', 1, 1),
(20, 'Tecno Spark 30 Pro', 3, 1, 'up coming', 1, 8),
(21, 'Tecno Camon 30S', 3, 1, 'up coming', 1, 8),
(22, 'Realme C55', 1, 1, 'up coming', 1, 7),
(23, 'Tecno Phantom V Flip', 7, 1, 'up coming', 1, 8),
(24, 'Huawei Mate 60 Pro', 16, 1, 'up coming', 1, 9),
(25, 'Huawei Nova 11', 6, 1, 'up coming', 1, 9),
(26, 'Huawei P60 Pro', 1, 1, 'up coming', 1, 9),
(27, 'OnePlus 11', 1, 1, 'up coming', 1, 10),
(28, 'OnePlus Nord 3', 3, 1, 'up coming', 1, 10),
(29, 'OnePlus Ace 2 Pro', 5, 1, 'up coming', 1, 10),
(30, 'Galaxy S23 Ultra', 2, 1, 'up coming', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
