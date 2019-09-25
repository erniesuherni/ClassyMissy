-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 10:22 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_quantity`
--

CREATE TABLE `product_quantity` (
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_quantity`
--

INSERT INTO `product_quantity` (`product_id`, `quantity`, `updated`) VALUES
(1, 19, '2019-02-17 12:35:28'),
(2, 9, '2019-02-17 12:32:06'),
(3, 13, '2019-02-17 12:37:02'),
(4, 24, '2019-02-17 12:35:46'),
(5, 15, '2019-02-17 12:38:37'),
(6, 5, '2019-02-17 12:38:08'),
(7, 3, '2019-02-17 12:36:53'),
(8, 3, '2019-02-17 12:36:56'),
(9, 3, '2019-02-17 12:36:57'),
(10, 3, '2019-02-17 12:36:58'),
(11, 3, '2019-02-17 12:36:59'),
(12, 3, '2019-02-17 12:37:00'),
(13, 3, '2019-02-17 12:37:01'),
(14, 3, '2019-02-17 12:37:02'),
(15, 3, '2019-02-17 12:37:03'),
(16, 3, '2019-02-17 12:37:04'),
(17, 3, '2019-02-17 12:37:05'),
(18, 3, '2019-02-17 12:37:06'),
(19, 3, '2019-02-17 12:37:07'),
(20, 3, '2019-02-17 12:37:08'),
(21, 3, '2019-02-17 12:37:09'),
(22, 3, '2019-02-17 12:37:10'),
(23, 3, '2019-02-17 12:37:11'),
(24, 3, '2019-02-17 12:37:12'),
(25, 3, '2019-02-17 12:37:13'),
(26, 3, '2019-02-17 12:37:14'),
(27, 3, '2019-02-17 12:37:15'),
(28, 3, '2019-02-17 12:37:16'),
(29, 3, '2019-02-17 12:37:17'),
(30, 3, '2019-02-17 12:37:18'),
(31, 3, '2019-02-17 12:37:19'),
(32, 3, '2019-02-17 12:37:20'),
(33, 3, '2019-02-17 12:37:21'),
(34, 3, '2019-02-17 12:37:22'),
(35, 3, '2019-02-17 12:37:23'),
(36, 3, '2019-02-17 12:37:24'),
(37, 3, '2019-02-17 12:37:25'),
(38, 3, '2019-02-17 12:37:26'),
(39, 3, '2019-02-17 12:37:27'),
(40, 3, '2019-02-17 12:37:28'),
(41, 3, '2019-02-17 12:37:29'),
(42, 3, '2019-02-17 12:37:30'),
(43, 3, '2019-02-17 12:37:31'),
(44, 3, '2019-02-17 12:37:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD PRIMARY KEY (`product_quantity_id`),
  ADD UNIQUE KEY `product_id_2` (`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_quantity`
--
ALTER TABLE `product_quantity`
  MODIFY `product_quantity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD CONSTRAINT `product_quantity_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
