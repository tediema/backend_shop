-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 06:09 PM
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
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `color`, `category_id`, `description`) VALUES
(1, 'White', 1, 'White shirt size L female'),
(2, 'Black', 1, 'Black shirt size S male'),
(3, 'Pink', 2, 'Pink skirt M'),
(4, 'Blue', 2, 'Blue skirt L'),
(5, 'Pink', 3, 'T-shirt pink female S'),
(6, 'Green', 4, 'Green jeans S female'),
(7, 'Blue', 4, 'Blue jeans L female'),
(8, 'Blue', 4, 'Blue male jeans M'),
(9, 'Black', 4, 'Black jeans male M'),
(10, 'White', 1, 'White shirt size L female'),
(11, 'Black', 1, 'Black shirt size S male'),
(12, 'Pink', 2, 'Pink skirt S'),
(13, 'Blue', 2, 'Blue skirt L'),
(14, 'Pink', 3, 'T-shirt pink female S'),
(15, 'Pink', 4, 'Pink jeans S female'),
(16, 'Blue', 4, 'Blue jeans L female'),
(17, 'Blue', 4, 'Blue male jeans M'),
(18, 'Black', 4, 'Black jeans male M');

-- --------------------------------------------------------

--
-- Table structure for table `clothes_categories`
--

CREATE TABLE `clothes_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes_categories`
--

INSERT INTO `clothes_categories` (`id`, `category`) VALUES
(1, 'Shirt'),
(2, 'Skirt'),
(3, 'T-Shirt'),
(4, 'Jeans');

-- --------------------------------------------------------

--
-- Table structure for table `jeans`
--

CREATE TABLE `jeans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeans`
--

INSERT INTO `jeans` (`id`, `size`, `price`, `gender`) VALUES
(1, 'S', 56.29, 'Female'),
(2, 'L', 55.98, 'Female'),
(3, 'M', 14.99, 'Male'),
(4, 'M', 17.58, 'Male'),
(5, 'S', 39.99, 'Female'),
(6, 'L', 49.99, 'Female'),
(7, 'M', 34.99, 'Male'),
(8, 'M', 34.99, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `shirts`
--

CREATE TABLE `shirts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shirts`
--

INSERT INTO `shirts` (`id`, `size`, `price`, `gender`) VALUES
(1, 'L', 0.00, 'Female'),
(2, 'S', 0.00, 'Male'),
(3, 'L', 19.99, 'Female'),
(4, 'S', 17.99, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `skirts`
--

CREATE TABLE `skirts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skirts`
--

INSERT INTO `skirts` (`id`, `size`, `price`) VALUES
(1, 'S', 18.46),
(2, 'L', 10.66),
(3, 'M', 24.99),
(4, 'L', 29.99);

-- --------------------------------------------------------

--
-- Table structure for table `t_shirts`
--

CREATE TABLE `t_shirts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_shirts`
--

INSERT INTO `t_shirts` (`id`, `size`, `price`, `gender`) VALUES
(1, 'S', 0.00, 'Female'),
(2, 'S', 14.99, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `access_token`, `refresh_token`, `password`, `username`, `email`, `created_at`) VALUES
(1, 'user', NULL, NULL, 'userpassword', 'regular_user', 'user@example.com', '2024-05-03 18:59:35'),
(2, 'admin', NULL, NULL, 'adminpassword', 'admin_user', 'admin@example.com', '2024-05-03 18:59:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `clothes_categories`
--
ALTER TABLE `clothes_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeans`
--
ALTER TABLE `jeans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shirts`
--
ALTER TABLE `shirts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skirts`
--
ALTER TABLE `skirts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_shirts`
--
ALTER TABLE `t_shirts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_unique` (`username`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `clothes_categories`
--
ALTER TABLE `clothes_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jeans`
--
ALTER TABLE `jeans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shirts`
--
ALTER TABLE `shirts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skirts`
--
ALTER TABLE `skirts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_shirts`
--
ALTER TABLE `t_shirts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `clothes_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
