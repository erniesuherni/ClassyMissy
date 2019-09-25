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
-- Table structure for table `product_image`
--


CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image_id`, `active`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 2, 4, 1),
(5, 2, 5, 1),
(6, 2, 6, 1),
(7, 2, 7, 1),
(8, 3, 8, 1),
(9, 3, 9, 1),
(10, 3, 10, 1),
(11, 4, 11, 1),
(12, 4, 12, 1),
(13, 4, 13, 1),
(14, 5, 14, 1),
(15, 5, 15, 1),
(16, 5, 16, 1),
(17, 6, 17, 1),
(18, 6, 18, 1),
(19, 6, 19, 1),
(20, 7, 20, 1),
(21, 7, 21, 1),
(22, 7, 22, 1),
(23, 8, 23, 1),
(24, 8, 24, 1),
(25, 8, 25, 1),
(26, 8, 26, 1),
(27, 9, 27, 1),
(28, 9, 28, 1),
(29, 9, 29, 1),
(30, 9, 30, 1),
(31, 10, 31, 1),
(32, 10, 32, 1),
(33, 10, 33, 1),
(34, 10, 34, 1),
(35, 11, 35, 1),
(36, 11, 36, 1),
(37, 11, 37, 1),
(38, 11, 38, 1),
(39, 12, 39, 1),
(40, 12, 40, 1),
(41, 12, 41, 1),
(42, 12, 42, 1),
(43, 13, 43, 1),
(44, 13, 44, 1),
(45, 13, 45, 1),
(46, 13, 46, 1),
(47, 14, 47, 1),
(48, 14, 48, 1),
(49, 14, 49, 1),
(50, 14, 50, 1),
(51, 15, 51, 1),
(52, 15, 52, 1),
(53, 15, 53, 1),
(54, 15, 54, 1),
(55, 16, 55, 1),
(56, 16, 56, 1),
(57, 16, 57, 1),
(58, 16, 58, 1),
(59, 17, 59, 1),
(60, 17, 60, 1),
(61, 17, 61, 1),
(62, 17, 62, 1),
(63, 18, 63, 1),
(64, 18, 64, 1),
(65, 18, 65, 1),
(66, 18, 66, 1),
(67, 19, 67, 1),
(68, 19, 68, 1),
(69, 19, 69, 1),
(70, 19, 70, 1),
(71, 20, 71, 1),
(72, 20, 72, 1),
(73, 20, 73, 1),
(74, 20, 74, 1),
(75, 21, 75, 1),
(76, 21, 76, 1),
(77, 21, 77, 1),
(78, 21, 78, 1),
(79, 22, 79, 1),
(80, 22, 80, 1),
(81, 22, 81, 1),
(82, 22, 82, 1),
(83, 23, 83, 1),
(84, 23, 84, 1),
(85, 23, 85, 1),
(86, 23, 86, 1),
(87, 24, 87, 1),
(88, 24, 88, 1),
(89, 24, 89, 1),
(90, 24, 90, 1),
(91, 25, 91, 1),
(92, 25, 92, 1),
(93, 25, 93, 1),
(94, 25, 94, 1),
(95, 26, 95, 1),
(96, 26, 96, 1),
(97, 26, 97, 1),
(98, 26, 98, 1),
(99, 27, 99, 1),
(100, 27, 100, 1),
(101, 27, 101, 1),
(102, 27, 102, 1),
(103, 28, 103, 1),
(104, 28, 104, 1),
(105, 28, 105, 1),
(106, 28, 106, 1),
(107, 29, 107, 1),
(108, 29, 108, 1),
(109, 29, 109, 1),
(110, 29, 110, 1),
(111, 30, 111, 1),
(112, 30, 112, 1),
(113, 30, 113, 1),
(114, 30, 114, 1),
(115, 31, 115, 1),
(116, 31, 116, 1),
(117, 31, 117, 1),
(118, 31, 118, 1),
(119, 32, 119, 1),
(120, 32, 120, 1),
(121, 32, 121, 1),
(122, 32, 122, 1),
(123, 33, 123, 1),
(124, 33, 124, 1),
(125, 33, 125, 1),
(126, 33, 126, 1),
(127, 34, 127, 1),
(128, 34, 128, 1),
(129, 34, 129, 1),
(130, 34, 130, 1),
(131, 35, 131, 1),
(132, 35, 132, 1),
(133, 35, 133, 1),
(134, 35, 134, 1),
(135, 36, 135, 1),
(136, 36, 136, 1),
(137, 36, 137, 1),
(138, 36, 138, 1),
(139, 37, 139, 1),
(140, 37, 140, 1),
(141, 37, 141, 1),
(142, 37, 142, 1),
(143, 38, 143, 1),
(144, 38, 144, 1),
(145, 38, 145, 1),
(146, 38, 146, 1),
(147, 39, 147, 1),
(148, 39, 148, 1),
(149, 39, 149, 1),
(150, 39, 150, 1),
(151, 40, 151, 1),
(152, 40, 152, 1),
(153, 40, 153, 1),
(154, 40, 154, 1),
(155, 41, 155, 1),
(156, 41, 156, 1),
(157, 42, 157, 1),
(158, 42, 158, 1),
(159, 42, 159, 1),
(160, 42, 160, 1),
(161, 43, 161, 1),
(162, 43, 162, 1),
(163, 43, 163, 1),
(164, 43, 164, 1),
(165, 44, 165, 1),
(166, 44, 166, 1),
(167, 44, 167, 1),
(168, 44, 168, 1);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD UNIQUE KEY `product_id_2` (`product_id`,`image_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_id` (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `images_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
