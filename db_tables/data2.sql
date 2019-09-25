-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 29, 2019 at 05:26 PM
-- Server version: 5.7.27-0ubuntu0.16.04.1
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
-- Database: `data2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` binary(16) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `email`, `password`, `updated`, `created`, `accessed`, `active`) VALUES
(0x496054647cf483f56cd9617dd3263842, 'tester@email.com', '$2y$10$XRnosQWfBMF7wpWYg48jGu5pAHx/s8GtNUllrsqPrw5id8cXK.2dC', '2019-08-28 10:53:38', '2019-08-28 10:53:38', '2019-08-28 10:53:38', 1),
(0x9a6586c3d6a714430e1e82178e55a68c, 'jmuljana@gmail.com', '$2y$10$6ujwgMo5ewTmKiybUsXu3.PPiGWsVD6pymq8p6AiRj.6bhPYJ4e52', '2019-08-28 10:54:14', '2019-08-28 10:54:14', '2019-08-28 10:54:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account2`
--

CREATE TABLE `account2` (
  `account_id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(64) NOT NULL,
  `username` varchar(16) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account2`
--

INSERT INTO `account2` (`account_id`, `email`, `password`, `username`, `created`, `updated`, `active`) VALUES
(1, 'alex@example.com', '$2y$10$yO4jUnKbgbk3FF5mFyDbHuQuUVfqSQQuxCQ5BT.vLdxT.knIxbjxe', 'username6', '2019-02-19 09:45:01', '2019-01-10 04:16:32', 1),
(2, 'alexandra@example.com', '$2y$10$0cv9N6UHbu/UBIa1xT1k3OJ.dj.ps4lj2fG/5GTN/E81PqUOXLRW.', 'newuser', '2019-01-18 07:58:44', '2019-01-18 07:58:44', 1),
(4, 'alexandra2@example.com', '$2y$10$Xk1Hsvm/PZKEF4iQc.sRROzzN5szmCtxZ/xd2nIWd7DuzZQZXwZba', 'newusername', '2019-01-18 07:59:43', '2019-01-18 07:59:43', 1),
(5, 'bro@home.com', '$2y$10$2tHQD.82b02d3ewpC1jJX.ygRdRXp0/ZNp77IK.VRlYbo.WYfvBum', 'brotest', '2019-01-24 04:00:35', '2019-01-24 04:00:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_log`
--

CREATE TABLE `auth_log` (
  `auth_row_id` int(11) NOT NULL,
  `auth_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auth_ip` binary(16) NOT NULL,
  `auth_account_d` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(32) NOT NULL,
  `category_description` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `active`, `created`, `updated`) VALUES
(1, 'Clothing', 'All women clothes', 1, '2018-10-08 03:07:02', '2018-10-08 03:06:14'),
(2, 'Shoes', 'All women shoes', 1, '2018-10-08 03:08:12', '2018-10-08 03:08:12'),
(3, 'Accessories', 'All women accessories', 1, '2018-10-08 03:08:12', '2018-10-08 03:08:12'),

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_file_name` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caption` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_file_name`, `date_added`, `caption`, `active`) VALUES
(1, 'knitMerino.jpg', '2018-12-06 23:26:00', '', 1),
(2, 'knitMerino2.jpg', '2018-12-06 23:27:00', '', 1),
(3, 'knitMerino3.jpg', '2018-12-06 23:28:00', '', 1),
(4, 'floral.jpg', '2018-12-06 23:25:58', '', 1),
(5, 'floral2.jpg', '2018-12-06 23:26:58', '', 1),
(6, 'floral3.jpg', '2018-12-06 23:27:58', '', 1),
(7, 'floral4.jpg', '2018-12-06 23:28:58', '', 1),
(8, 'Gingham.jpg', '2018-12-06 23:25:38', '', 1),
(9, 'Gingham1.jpg', '2018-12-06 23:26:38', '', 1),
(10, 'Gingham2.jpg', '2018-12-06 23:27:38', '', 1),
(11, 'lace.jpg', '2018-12-06 23:27:00', '', 1),
(12, 'lace2.jpg', '2018-12-06 23:28:00', '', 1),
(13, 'lace3.jpg', '2018-12-06 23:29:00', '', 1),
(14, 'ruffled.jpg', '2018-12-06 23:27:52', '', 1),
(15, 'ruffled2.jpg', '2018-12-06 23:28:52', '', 1),
(16, 'ruffled3.jpg', '2018-12-06 23:29:52', '', 1),
(17, 'tweed.jpg', '2018-12-06 23:30:52', '', 1),
(18, 'tweed1.jpg', '2018-12-06 23:31:52', '', 1),
(19, 'tweed2.jpg', '2018-12-06 23:32:52', '', 1),
(20, 'twillcoat.jpg', '2018-12-06 23:20:15', '', 1),
(21, 'twillcoat1.jpg', '2018-12-06 23:21:15', '', 1),
(22, 'twillcoat2.jpg', '2018-12-06 23:22:15', '', 1),
(23, 'BEAU COOPS Duke Loafers nero1.jpg', 2018-12-06 12:12:15','',1),
(24, 'BEAU COOPS Duke Loafers nero2.jpg', 2018-12-06 12:12:16','',1),
(25, 'BEAU COOPS Duke Loafers nero3.jpg', 2018-12-06 12:12:17','',1),
(26, 'BEAU COOPS Duke Loafers nero4.jpg', 2018-12-06 12:12:18','',1),
(27, 'BEAU COOPS Duke Loafers tierra1.jpg', 2018-12-06 12:12:19','',1),
(28, 'BEAU COOPS Duke Loafers tierra2.jpg', 2018-12-06 12:12:19','',1),
(29, 'BEAU COOPS Duke Loafers tierra3.jpg', 2018-12-06 12:12:19','',1),
(30, 'BEAU COOPS Duke Loafers tierra4.jpg', 2018-12-06 12:12:19','',1),
(31, 'BILLINI Salome1.jpg', 2018-12-06 12:12:20','',1),
(32, 'BILLINI Salome2.jpg', 2018-12-06 12:12:21','',1),
(33, 'BILLINI Salome3.jpg', 2018-12-06 12:12:22','',1),
(34, 'BILLINI Salome4.jpg', 2018-12-06 12:12:23','',1),
(35, 'BY CHARLOTTE Charmed Hoops gold1.jpg', 2018-12-06 12:12:24','',1),
(36, 'BY CHARLOTTE Charmed Hoops gold2.jpg', 2018-12-06 12:12:25','',1),
(37, 'BY CHARLOTTE Charmed Hoops gold3.jpg', 2018-12-06 12:12:26','',1),
(38, 'BY CHARLOTTE Charmed Hoops gold4.jpg', 2018-12-06 12:12:27','',1),
(39, 'BY CHARLOTTE Charmed Hoops silver1.jpg', 2018-12-06 12:12:28','',1),
(40, 'BY CHARLOTTE Charmed Hoops silver2.jpg', 2018-12-06 12:12:29','',1),
(41, 'BY CHARLOTTE Charmed Hoops silver3.jpg', 2018-12-06 12:12:30','',1),
(42, 'BY CHARLOTTE Charmed Hoops silver4.jpg', 2018-12-06 12:12:31','',1),
(43, 'BY CHARLOTTE Eye of Protection Bracelet1.jpg', 2018-12-06 12:12:32','',1),
(44, 'BY CHARLOTTE Eye of Protection Bracelet2.jpg', 2018-12-06 12:12:33','',1),
(45, 'BY CHARLOTTE Eye of Protection Bracelet3.jpg', 2018-12-06 12:12:34','',1),
(46, 'BY CHARLOTTE Eye of Protection Bracelet4.jpg', 2018-12-06 12:12:35','',1),
(47, 'DYLAN KAIN The Birkin Belt1.jpg', 2018-12-06 12:12:36','',1),
(48, 'DYLAN KAIN The Birkin Belt2.jpg', 2018-12-06 12:12:37','',1),
(49, 'DYLAN KAIN The Birkin Belt3.jpg', 2018-12-06 12:12:38','',1),
(50, 'DYLAN KAIN The Birkin Belt4.jpg', 2018-12-06 12:12:39','',1),
(51, 'ELLESSE Taggia - Women's1.jpg', 2018-12-06 12:12:40','',1),
(52, 'ELLESSE Taggia - Women's2.jpg', 2018-12-06 12:12:41','',1),
(53, 'ELLESSE Taggia - Women's3.jpg', 2018-12-06 12:12:42','',1),
(54, 'ELLESSE Taggia - Women's4.jpg', 2018-12-06 12:12:43','',1),
(55, 'FOREVER NEW Grace Straw Boater Hat1.jpg', 2018-12-06 12:12:44','',1),
(56, 'FOREVER NEW Grace Straw Boater Hat2.jpg', 2018-12-06 12:12:45','',1),
(57, 'FOREVER NEW Grace Straw Boater Hat3.jpg', 2018-12-06 12:12:46','',1),
(58, 'FOREVER NEW Grace Straw Boater Hat4.jpg', 2018-12-06 12:12:47','',1),
(59, 'FUNKIS 697 Stina Low Clogs black1.jpg', 2018-12-06 12:12:48','',1),
(60, 'FUNKIS 697 Stina Low Clogs black2.jpg', 2018-12-06 12:12:49','',1),
(61, 'FUNKIS 697 Stina Low Clogs black3.jpg', 2018-12-06 12:12:50','',1),
(62, 'FUNKIS 697 Stina Low Clogs black4.jpg', 2018-12-06 12:12:51','',1),
(63, 'FUNKIS 697 Stina Low Clogs natural1.jpg', 2018-12-06 12:12:51','',1),
(64, 'FUNKIS 697 Stina Low Clogs natural2.jpg', 2018-12-06 12:12:52','',1),
(65, 'FUNKIS 697 Stina Low Clogs natural3.jpg', 2018-12-06 12:12:53','',1),
(66, 'FUNKIS 697 Stina Low Clogs natural4.jpg', 2018-12-06 12:12:54','',1),
(67, 'GEORG JENSEN Offspring Cuff1.jpg', 2018-12-06 12:12:55','',1),
(68, 'GEORG JENSEN Offspring Cuff2.jpg', 2018-12-06 12:12:56','',1),
(69, 'GEORG JENSEN Offspring Cuff3.jpg', 2018-12-06 12:12:57','',1),
(70, 'GEORG JENSEN Offspring Cuff4.jpg', 2018-12-06 12:12:58','',1),
(71, 'JO MERCER Somerset Casual Flats1.jpg', 2018-12-06 12:12:59','',1),
(72, 'JO MERCER Somerset Casual Flats2.jpg', 2018-12-06 12:13:00','',1),
(73, 'JO MERCER Somerset Casual Flats3.jpg', 2018-12-06 12:13:01','',1),
(74, 'JO MERCER Somerset Casual Flats4.jpg', 2018-12-06 12:13:02','',1),
(75, 'JO MERCER Teckel High Heels black1.jpg', 2018-12-06 12:13:03','',1),
(76, 'JO MERCER Teckel High Heels black2.jpg', 2018-12-06 12:13:04','',1),
(77, 'JO MERCER Teckel High Heels black3.jpg', 2018-12-06 12:13:05','',1),
(78, 'JO MERCER Teckel High Heels black4.jpg', 2018-12-06 12:13:06','',1),
(79, 'LE SPECS Caliente black1.jpg', 2018-12-06 12:13:07','',1),
(80, 'LE SPECS Caliente black2.jpg', 2018-12-06 12:13:08','',1),
(81, 'LE SPECS Caliente black3.jpg', 2018-12-06 12:13:09','',1),
(82, 'LE SPECS Caliente black4.jpg', 2018-12-06 12:13:10','',1),
(83, 'LOVE MOSCHINO Quilted Cross-Body Bag black1', 2018-12-06 12:13:11','',1),
(84, 'LOVE MOSCHINO Quilted Cross-Body Bag black2', 2018-12-06 12:13:12','',1),
(85, 'LOVE MOSCHINO Quilted Cross-Body Bag black3', 2018-12-06 12:13:13','',1),
(86, 'LOVE MOSCHINO Quilted Cross-Body Bag black4', 2018-12-06 12:13:14','',1),
(87, 'michael kors mini parker rose gold -tone1', 2018-12-06 12:13:15','',1),
(88, 'michael kors mini parker rose gold -tone2', 2018-12-06 12:13:16','',1),
(89, 'michael kors mini parker rose gold -tone3', 2018-12-06 12:13:17','',1),
(90, 'michael kors mini parker rose gold -tone4', 2018-12-06 12:13:18','',1),
(91, 'NIKE Blazer Low LE - Women's1', 2018-12-06 12:13:19','',1),
(92, 'NIKE Blazer Low LE - Women's2', 2018-12-06 12:13:20','',1),
(93, 'NIKE Blazer Low LE - Women's3', 2018-12-06 12:13:21','',1),
(94, 'NIKE Blazer Low LE - Women's4', 2018-12-06 12:13:22','',1),
(95, 'PUMA Defy Mid Core - Women's1', 2018-12-06 12:13:23','',1),
(96, 'PUMA Defy Mid Core - Women's2', 2018-12-06 12:13:24','',1),
(97, 'PUMA Defy Mid Core - Women's3', 2018-12-06 12:13:25','',1),
(98, 'PUMA Defy Mid Core - Women's4', 2018-12-06 12:13:26','',1),
(99, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours1', 2018-12-06 12:13:26','',1),
(100, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours2', 2018-12-06 12:13:27','',1),
(101, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours3', 2018-12-06 12:13:28','',1),
(102, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours4', 2018-12-06 12:13:29','',1),
(103, 'RAY-BAN Hexagonal Flat Lens - Unisex1', 2018-12-06 12:13:30','',1),
(104, 'RAY-BAN Hexagonal Flat Lens - Unisex2', 2018-12-06 12:13:31','',1),
(105, 'RAY-BAN Hexagonal Flat Lens - Unisex3', 2018-12-06 12:13:32','',1),
(106, 'RAY-BAN Hexagonal Flat Lens - Unisex4', 2018-12-06 12:13:33','',1),
(107, 'RAY-BAN Hexagonal Flat Lens1', 2018-12-06 12:13:34','',1),
(108, 'RAY-BAN Hexagonal Flat Lens2', 2018-12-06 12:13:35','',1),
(109, 'RAY-BAN Hexagonal Flat Lens3', 2018-12-06 12:13:36','',1),
(110, 'RAY-BAN Hexagonal Flat Lens4', 2018-12-06 12:13:37','',1),
(111, 'RAY-BAN Hexagonal Flat RB3548N1', 2018-12-06 12:13:38','',1),
(112, 'RAY-BAN Hexagonal Flat RB3548N2', 2018-12-06 12:13:39','',1),
(113, 'RAY-BAN Hexagonal Flat RB3548N3', 2018-12-06 12:13:40','',1),
(114, 'RAY-BAN Hexagonal Flat RB3548N4', 2018-12-06 12:13:41','',1),
(115, 'ROC BOOTS AUSTRALIA Indio black1', 2018-12-06 12:13:42','',1),
(116, 'ROC BOOTS AUSTRALIA Indio black2', 2018-12-06 12:13:43','',1),
(117, 'ROC BOOTS AUSTRALIA Indio black3', 2018-12-06 12:13:44','',1),
(118, 'ROC BOOTS AUSTRALIA Indio black4', 2018-12-06 12:13:45','',1),
(119, 'SENSO Petra I1', 2018-12-06 12:13:46','',1),
(120, 'SENSO Petra I2', 2018-12-06 12:13:47','',1),
(121, 'SENSO Petra I3', 2018-12-06 12:13:48','',1),
(122, 'SENSO Petra I4', 2018-12-06 12:13:49','',1),
(123, 'SOL SANA Megan Slides1', 2018-12-06 12:13:51','',1),
(124, 'SOL SANA Megan Slides2', 2018-12-06 12:13:52','',1),
(125, 'SOL SANA Megan Slides3', 2018-12-06 12:13:53','',1),
(126, 'SOL SANA Megan Slides4', 2018-12-06 12:13:54','',1),
(127, 'SPURR Sim Mules1', 2018-12-06 12:13:55','',1),
(128, 'SPURR Sim Mules2', 2018-12-06 12:13:56','',1),
(129, 'SPURR Sim Mules3', 2018-12-06 12:13:57','',1),
(130, 'SPURR Sim Mules4', 2018-12-06 12:13:58','',1),
(131, 'STATUS ANXIETY Triple Threat pink1', 2018-12-06 12:13:59','',1),
(132, 'STATUS ANXIETY Triple Threat pink2', 2018-12-06 12:14:00','',1),
(133, 'STATUS ANXIETY Triple Threat pink3', 2018-12-06 12:14:01','',1),
(134, 'STATUS ANXIETY Triple Threat pink4', 2018-12-06 12:14:02','',1),
(135, 'STEVE MADDEN Nema-L1', 2018-12-06 12:14:03','',1),
(136, 'STEVE MADDEN Nema-L2', 2018-12-06 12:14:04','',1),
(137, 'STEVE MADDEN Nema-L3', 2018-12-06 12:14:05','',1),
(138, 'STEVE MADDEN Nema-L4', 2018-12-06 12:14:06','',1),
(139, 'SWAROVSKI Moonsun Cluster Ring1', 2018-12-06 12:14:07','',1),
(140, 'SWAROVSKI Moonsun Cluster Ring2', 2018-12-06 12:14:08','',1),
(141, 'SWAROVSKI Moonsun Cluster Ring3', 2018-12-06 12:14:09','',1),
(142, 'SWAROVSKI Moonsun Cluster Ring4', 2018-12-06 12:14:10','',1),
(143, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy1', 2018-12-06 12:14:11','',1),
(144, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy2', 2018-12-06 12:14:12','',1),
(145, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy3', 2018-12-06 12:14:13','',1),
(146, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy4', 2018-12-06 12:14:14','',1),
(147, 'THERAPY Azure1', 2018-12-06 12:14:15','',1),
(148, 'THERAPY Azure2', 2018-12-06 12:14:16','',1),
(149, 'THERAPY Azure3', 2018-12-06 12:14:17','',1),
(150, 'THERAPY Azure4', 2018-12-06 12:14:18','',1),
(151, 'TONIMAY Onyx and Kyanite Solace Stack Pack1', 2018-12-06 12:14:19','',1),
(152, 'TONIMAY Onyx and Kyanite Solace Stack Pack2', 2018-12-06 12:14:20','',1),
(153, 'TONIMAY Onyx and Kyanite Solace Stack Pack3', 2018-12-06 12:14:21','',1),
(154, 'TONIMAY Onyx and Kyanite Solace Stack Pack4', 2018-12-06 12:14:22','',1),
(155, 'TORY BURCH The Reva Gold-Tone Analogue Watch1', 2018-12-06 12:14:23','',1),
(156, 'TORY BURCH The Reva Gold-Tone Analogue Watch2', 2018-12-06 12:14:24','',1),
(157, 'UGG Fluffette1', 2018-12-06 12:14:25','',1),
(158, 'UGG Fluffette2', 2018-12-06 12:14:26','',1),
(159, 'UGG Fluffette3', 2018-12-06 12:14:27','',1),
(160, 'UGG Fluffette4', 2018-12-06 12:14:28','',1),
(161, 'URBAN ORIGINALS My World1', 2018-12-06 12:14:29','',1),
(162, 'URBAN ORIGINALS My World2', 2018-12-06 12:14:30','',1),
(163, 'URBAN ORIGINALS My World3', 2018-12-06 12:14:31','',1),
(164, 'URBAN ORIGINALS My World4', 2018-12-06 12:14:32','',1),
(165, 'VIZZANO Bumblebee Sneakers1', 2018-12-06 12:14:33','',1),
(166, 'VIZZANO Bumblebee Sneakers2', 2018-12-06 12:14:34','',1),
(167, 'VIZZANO Bumblebee Sneakers3', 2018-12-06 12:14:35','',1),
(168, 'VIZZANO Bumblebee Sneakers4', 2018-12-06 12:14:36','',1),
(169, 'checked', 2018-12-06 12:14:37','',1),
(170, 'checked2', 2018-12-06 12:14:38','',1),
(171, 'checked3', 2018-12-06 12:14:39','',1),
(172, 'dobby', 2018-12-06 12:14:40','',1),
(173, 'dobby2', 2018-12-06 12:14:40','',1),
(174, 'dobby3', 2018-12-06 12:14:40','',1),
(175, 'dobby4', 2018-12-06 12:14:40','',1),


-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL COMMENT 'page id',
  `name` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `menu` varchar(64) NOT NULL,
  `menu_order` int(2) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `name`, `url`, `menu`, `menu_order`, `level`, `content`, `active`) VALUES
(1, 'Welcome to the shop', 'index.php', 'Home', 1, 1, 'Welcome to our shop. Buy stuff here.', 1),
(2, 'Log in to your account', 'login.php', 'Login', 2, 0, 'Log in to your account. If you don\'t have an account you can register <a href=\"/register\">Here</a>', 1),
(3, 'Register for a free account', 'register.php', 'Register', 3, 0, 'Register for a free account. Already have an account? Log in <a href=\"/login\">here</a>', 1),
(4, 'Your Account Details', 'account.php', 'Account', 4, 2, 'Your account details.', 1),
(5, 'Log out of your account', 'logout.php', 'Logout', 6, 2, 'Sign out of your account', 1);

-- --------------------------------------------------------
--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `active`, `created`, `modified`) VALUES
(1, 'Knit Merino Wool Sheath Dress', 'The Classy Missy Collection by Creative Director Zac Posen
This body-hugging sheath is knit from pure merino wool to create a sleek, sophisticated dress that feels just as good as it looks. Finished with contrast tipping at the jewel neckline and arms, this polished essential features a flattering princess-seamed bodice and a defined waist. Pull-on style.

39½" center back length; 100% merino wool; machine wash or dry-clean; imported.', '399.73', 1, '2017-01-23 12:17:33', '2017-01-23 12:17:33'),

(2, 'Floral-Print Striped Cotton Poplin Pleated Shirt Dress ','Give polished looks a ladylike twist with this retro-cool shirt dress that mixes feminine florals and sharp stripes. Crafted from pure cotton poplin, this sweet frock features a point collar, short sleeves, a button placket, a removable self sash and a pretty pleated skirt.

37" center back length; 100% cotton; machine wash; imported.', '295.47', 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),

(3, 'Gingham Double-Weave Sheath Dress', 'Fresh, feminine gingham lends this chic sheath a sprightly air. This tactile double-weave cotton-blend dress features figure-flattering panel construction, a jewel neckline, short sleeves, a concealed back zip closure and a back vent. Fully lined.

39" center back length; 74% cotton, 22% nylon, 4% spandex; dry-clean; imported. ', '298.71', 1, '2017-01-23 12:24:09', '2017-01-23 12:24:09'),



(4, 'Floral Lace Dress', 'Flawless, feminine style is a snap in this sweet frock crafted from intricate floral lace. Cast in an eye-catching hue, it features a modified bateau neckline, sheer short sleeves, a flattering princess-seamed bodice, a defined waist, a slight A-line skirt and a concealed back zip closure.

38" center back length; 100% polyester; machine wash; imported.', '358.16', 1, '2017-01-23 12:27:56', '2017-01-23 12:27:56'),

(5, 'Ruffled Stretch-Wool-Blend Dress', 'Meet your new favorite desk-to-date dress. Cast in a vibrant hue, this ultra-flattering dress features pretty ruffles at the shoulders and the hem for a fresh, feminine feel. Crafted from a rich stretch-wool blend and finished with a jewel neckline, flattering princess seams, a nipped-in waistband, a V-back and a concealed back zip closure. Fully lined.

28½" center back length; 55% wool, 20% viscose, 19% polyester, 6% elastane; dry-clean; imported.  ', '449.83', 1, '2017-01-23 12:28:01', '2017-01-23 12:28:01'),
(6, 'Striped Cotton Tweed Dress', 'The Brooks Brothers Womens Collection by Creative Director Zac Posen
Cheerful stripes and richly textured tweed make this dress the perfect pick to infuse your wardrobe with a fresh feel. Crafted from pure cotton, this beautifully tailored design features a square neckline, princess seams at the bodice, figure-flattering contoured darts at the waist, a feminine A-line skirt and a concealed back zip closure. Fully lined.

38" center back length; 100% cotton; dry-clean; imported. ', '451.09', 1, '2017-01-23 12:28:02', '2017-01-23 12:28:02'),

(7, 'Cotton Twill Trench Coat', 'This double-breasted trench is truly timeless. Crafted from durable 100% cotton twill, this must-have design includes all the classic details: epaulettes, a gun flap at the right shoulder, button-tab cuffs, a removable self-belt, welt front pockets, a back storm flap and a back inverted-pleat vent. Inside, a removable lining makes this clever design an all-season essential.

36" center back length; dry-clean; imported.', '499.24', 1, '2017-01-23 12:29:00', '2017-01-23 12:29:00'),

(8, 'Duke Loafers Black', 'The Duke Loafers by Beau Coops is crafted in Italy, from soft leather. She features a classic loafer top strap and layered upper for clean lines. A low heel and slightly raised sole provides comfort, while a contrast-tone outsole adds a little extra color and linear detail. A shoe fit for all occasions where only a closed, flat style will do.
- Leather Upper and Lining - Made in Italy- Contrast-tone outsole- Top strap- Winchester sole', '499.00', 1, '2017-01-23 12:29:01', '2017-01-23 12:29:01'),

(9, 'Duke Loafers Tierra', 'The Duke Loafers by Beau Coops is crafted in Italy, from soft leather. She features a classic loafer top strap and layered upper for clean lines. A low heel and slightly raised sole provides comfort, while a contrast-tone outsole adds a little extra color and linear detail. A shoe fit for all occasions where only a closed, flat style will do.
- Leather Upper and Lining - Made in Italy- Contrast-tone outsole- Top strap- Winchester sole', '499.00', 1, '2017-01-23 12:29:02', '2017-01-23 12:29:02'),
(10, 'Billini Salome', 'A ​playful wedge with a platform sole for extra drama, the Salome sandals from Billini feature wrap-around ankle ties for a chic finish.

- Soft woven upper
- Light beige and black leopard spot print
- Open almond toe
- Twin straps to front with fixed knot detail to centre
- Slingback ankle strap
- Adjustable wrap-around ankle ties
- Woven jute-look sole; 3.5cm platform; 13cm wedge heel', '99.00', 1, '2017-01-23 12:29:05', '2017-01-23 12:29:04'),
(11, 'BY CHARLOTTE Charmed Hoops Gold', 'Beautifully crafted from sterling silver, the Charmed Hoops from By Charlotte are adorned with an enchanting four leaf clover charm that suspends from an open hoop.

- Hoop Diameter: 11mm; Charm: H4mm x W4mm
- Sterling gold; ceramic plated
- Hoop design with four leaf clover charm
- Stud fastenings for pierced ears
- Comes with branded gift box', '199.00', 1, '2017-01-23 12:29:05', '2017-01-23 12:29:05'),

(12, 'BY CHARLOTTE Charmed Hoops Silver', 'Beautifully crafted from sterling silver, the Charmed Hoops from By Charlotte are adorned with an enchanting four leaf clover charm that suspends from an open hoop.

- Hoop Diameter: 11mm; Charm: H4mm x W4mm
- Sterling silver; ceramic plated
- Hoop design with four leaf clover charm
- Stud fastenings for pierced ears
- Comes with branded gift box', '199.00', 1, '2017-01-23 12:29:06', '2017-01-23 12:29:06'),


(13, 'BY CHARLOTTE Eye of Protection Bracelet', 'A refined addition to any daily jewellery rotation, the By Charlotte Eye of Protection Bracelet is set with a sage green amazonite stone pendant reminiscent of the ancient Evil Eye motif.

- Chain Length: 18cm
- Gold-plated sterling silver
- Evil Eye pendant; sage green amazonite stone with white cubic zirconia crystals
- Fine flat cable chain
- Spring ring fastening
- Two shortening rings

PLEASE NOTE: All stones and crystals are unique, and may have slight variances in colour and characteristics from the image shown.', '139.00', 1, '2017-01-23 12:29:07', '2017-01-23 12:29:07'),

(14, 'DYLAN KAIN The Birkin Belt', 'Crafted from genuine leather, The Birkin Belt by Dylan Kain is bound to provide a stylish finish to your look. The slim belt is enhanced with a sleek, versatile palette and gold-toned hardware.

- Length: Smallest: 70cm; Largest: 105cm
- Genuine leather construction
- Black shade
- Gold-toned cross and bars and post fastening
- Comes with a branded dust bag and gift box', '119.00', 1, '2017-01-23 12:29:08', '2017-01-23 12:29:08'),

(15, 'ELLESSE Taggia - Womens', 'Italian sportswear giant Ellesse is the ultimate fusion of form and function. The brand was founded in 1959 by tailor Leonardo Servadio, after he was unable to find skiwear for himself that was at once stylish and performance-minded. In the fifty years since, Ellesse has expanded their portfolio to include premium sportswear and lifestyle ranges, dressing athletes at the highest level, all while infusing every piece with a fashion-forward sensibility.

- Grained leather upper
- Optic white shade
- Round toe
- Lace-up front
- Navy embroidered branding to the side
- Woven branding to tongue with grey and white accents
- Padded collar
- Raised Semi-Palla logo to heel counter', '119.90', 1, '2017-01-23 12:29:09', '2017-01-23 12:29:09'),

(16, 'Grace Straw Boater Hat', 'Known for their signature feminine style, Forever New designs are created to celebrate the beauty of the female figure. Defined by a versatile collection of pieces that will have you stepping out with confidence, look to the brand for tailored separates, classic gowns, effortless party dresses and polished shoes and accessories.

- Rounded top
- Straw construction
- Blush grosgrain trim
- Adjustable sizing elastic for the perfect fit
- Approximate brim width: 8cm

100% Straw', '39.90', 1, '2017-01-23 12:29:10', '2017-01-23 12:29:10'),

(17, '697 Stina Low Clogs Black', 'Scandinavian Summer in a shoe is the 697 Stina Low Clogs from Funkis - ready-made for picnics in the park and bike rides along the canal.

- Vegetable tanned leather upper
- Black shade
- Caged vamp; open toe
- Fixed ankle strap; silver-toned buckle fastening
- Timber base
- Moulded footbed
- Rubber gripping to sole
- Handmade in Sweeden
- 5cm Heel

Upper: Leather
Lining: Leather
Sole: Timber & Rubber', '149.90', 1, '2017-01-23 12:29:11', '2017-01-23 12:29:11'),


(18, '697 Stina Low Clogs Natural', 'Scandinavian Summer in a shoe is the 697 Stina Low Clogs from Funkis - ready-made for picnics in the park and bike rides along the canal.

- Vegetable tanned leather upper
- Black shade
- Caged vamp; open toe
- Fixed ankle strap; silver-toned buckle fastening
- Timber base
- Moulded footbed
- Rubber gripping to sole
- Handmade in Sweeden
- 5cm Heel

Upper: Leather
Lining: Leather
Sole: Timber & Rubber', '149.90', 1, '2017-01-23 12:29:12', '2017-01-23 12:29:12'),


(19, 'GEORG JENSEN Offspring Cuff', 'Georg Jensen is a Danish jewellery and silverware design house known for their Scandinavian craftsmanship, bold artistic designs and creative collaborations. The Offspring Cuff is crafted in an organic form, creating timeless beauty that can be passed down from generation to generation.

- Materials: Sterling Silver
- Circumference: S: 155 mm / 6.1 inches, M: 165 mm / 6.5 inches, L: 175 mm / 6.89 inches- Organic shape', '159.90', 1, '2017-01-23 12:29:12', '2017-01-23 12:29:13'),

(20, 'JO MERCER Somerset Casual Flats', 'An Australian icon since 1998, Melbourne-based footwear label Jo Mercer is the cornerstone of any well-curated shoe wardrobe. With a focus on fit, quality and enduring design, every pair of Jo Mercer shoes is a sartorial investment you will turn to time and time again. With a range that includes go-anywhere leather boots, party-perfect heels and everything in-between, Jo Mercer has a pair to suit every style profile.

- Smooth genuine leather upper; ponyhair heel counter
- Matte black; caramel heel with black leopard print
- Enclosed pointed toe
- Low-cut rounded vamp
- Padded footbed
- Enclosed heel counter
- Stacked heel; rubberised tread outsole', '159.90', 1, '2017-01-23 12:29:13', '2017-01-23 12:29:13'),
(21, 'JO MERCER Teckel High Heels Black', 'An Australian icon since 1998, Melbourne-based footwear label Jo Mercer is the cornerstone of any well-curated shoe wardrobe. The Teckle High Heels are perfect for all your occasions. Refined and Sleek they add that finishing touch to any outfit.

- Soft genuine leather
- Pointed toe shape
- Black Patent Hue
- Stiletto heel

Heel height: 9.8cm
Upper: Leather
Lining: Leather
Sole: Manmade', '199.90', 1, '2017-01-23 12:29:14', '2017-01-23 12:29:14'),

(22, 'LE SPECS Caliente black', 'For a contemporary take on the classic cat eye, look no further than Le Specs Caliente. These sleek black shades sport polished gold metal detailing through the brows and temples for a luxe twist.

- Cat eye frame shape
- Black frames and arms; gold-toned metal temples and brow
- Category 3 khaki mono lenses; high sun-glare reduction and good UV protection
- Includes protective canvas pouch
- One-year warranty', '79.90', 1, '2017-01-23 12:29:15', '2017-01-23 12:29:15'),

(23, 'LOVE MOSCHINO Quilted Cross-Body Bag black', 'The Quilted Cross-Body Bag from designer diffusion LOVE MOSCHINO offers an of-the-moment camera bag silhouette and diamond-quilted design. Fastened by a wide shoulder strap and finished off with the brands signature gold-toned branding, this cross-body is set to add a maximalist touch to your everyday rotation.

- Measurements: H15cm x W19cm x D9.5cm
- Faux leather construction; lined
- Black shade
- Polished gold-toned hardware
- Large quilted pocket to front; branded appliqué
- Top zip accessibility
- Detachable adjustable shoulder strap
- Comes with branded dust bag', '79.90', 1, '2017-01-23 12:29:16', '2017-01-23 12:29:16'),


(24, 'Michael kors mini parker rose gold ', 'The sense of glamour and luxury is not missed in this Michael Kors collection. A truly iconic, world-renowned design that exudes sophistication, indulgence and a modern lifestyle for the fashion-forward jet setter.

- Band and Case Colour: Rose Gold-Tone
- Band and Case Material: Stainless Steel
- Band Width: 17.5MM
- Case Size: 33MM
- Case Thickness: 17.5MM
- Water Resistant: 10 ATM', '469.90', 1, '2017-01-23 12:29:17', '2017-01-23 12:29:17'),

(25, 'NIKE Blazer Low LE - Womens', 'The Nike Blazer Low LE Basketball Shoes are streamlined with a lower collar and minimal stitching, whilst maintaining an urban performance aesthetic. The all-white sneakers are a weekend-worthy way to finish a minimal-chic outfit.

- White leather upper
- Round toe
- Lace-up front
- Minimal stitching
- Swoosh on side
- Low collar for natural fit around the ankle
- EVA sockliner for cushioning and impact absorption
- Rubber outsole for excellent traction', '110.90', 1, '2017-01-23 12:29:18', '2017-01-23 12:29:18'),


(26, 'PUMA Defy Mid Core - Womens', 'Bridging the gap between form and function, German-based brand Puma is one of the leading icons behind contemporary sportswear and lifestyle fashion. From ground-breaking improvements in sportswear technology to finely crafted casual styles, Puma excels at making fast product designs for the fastest athletes in the world.

- Perforated woven upper
- Mid-height profile
- Black and neon pink colour-way
- Round toe; rubber bumper
- Bootie construction
- Decorative cross-straps to the vamp
- Wordmark to the vamp and tongue
- Heel pull tab
- Big Cat logo applique to the heel
- High-rebound foam midsole offers cushioning and responsiveness
- Rubber outsole with traction points', '170.90', 1, '2017-01-23 12:29:19', '2017-01-23 12:29:19'),

(27, 'QUAY AUSTRALIA QUAY X CHRISSY', 'Engineered with light-blocking blue light lenses, the cat eye All Nighter glasses from Quay Australia are perfect for reducing eye strain when working.

- Cat eye frames; mocha brown tortoiseshell and black gradient
- Clear lenses; blue light filter
- Moulded nose pads
- White branding to left lens
- Slender temples arms with embossed branding
- Includes brand stamped protective case

PRACTICE SAFE SPECS

Stay lit, but filter out the blues. Introducing Quay Australias blue light blocking clear lens glasses.

Blue light from screens can cause headaches, blurry vision, and eye strain. Keep your eyes in the clear with Quay Australias blue light lenses, featuring technology to assist with blocking potentially harmful (blue) HEV light from screens to help prevent these symptoms.

Plus — look like a boss. Quay Australia has redesigned some of their best-selling sunnies in a clear blue light blocking lens format. Wear them when working on a laptop, watching TV, or scrolling the ‘gram to look good and feel good.', '65.90', 1, '2017-01-23 12:29:20', '2017-01-23 12:29:20'),

(28, 'RAY-BAN Hexagonal Flat Lens - Unisex', 'Make a statement in the Hexagonal Flat Lens from Ray-Ban. These frames offer a twist on their more well known rounded frames. The pair are perfect for for long summer days at the beach.

- Mirrored grey lenses
- Rounded hexagonal frames metal frames; gold-toned
- 100% UV protection
- Curved brow bar
- Adjustable silicone nose pads
- Thin metal temples with black plastic tips
- Logo etched on right lense
- Hard case included', '229.90', 1, '2017-01-23 12:29:21', '2017-01-23 12:29:21'),


(29, 'RAY-BAN Hexagonal Flat Lens', 'Make a statement in the Hexagonal Flat Lens from Ray-Ban. These frames offer a twist on their more well known rounded frames. The pair are perfect for for long summer days at the beach.

- Mirrored grey lenses
- Rounded hexagonal frames metal frames; gold-toned
- 100% UV protection
- Curved brow bar
- Adjustable silicone nose pads
- Thin metal temples with black plastic tips
- Logo etched on right lense
- Hard case included', '265.90', 1, '2017-01-23 12:29:22', '2017-01-23 12:29:22'),

(30, 'RAY-BAN Hexagonal Flat RB3548N', 'Update your look with the Hexagonal Flat RB3548N sunglasses from Ray-Ban. Crafted from fine gold metal framing and green tinted lenses.

- Dark green tinted lenses
- 100% UV protection
- Eye size: 51
- Hexagonal gold metal frames
- Single bridge
- Silicone nose pads
- Slim arms with brown tortoiseshell tips', '265.90', 1, '2017-01-23 12:29:23', '2017-01-23 12:29:23'),

(31, 'ROC BOOTS AUSTRALIA Indio black', 'Give your festival edit the Western treatment with ROC Boots Indio. Championing a distinctly cowboy-inspired aesthetic, the matte black pair are built with a genuine leather upper and 5cm block heel for a stylish boost.

- Genuine leather upper
- Matte black shade with decorative Western stitching to the vamp
- Pointed toe
- Side pull tabs
- 5cm block heel
- Optional 2mm footbed', '245.90', 1, '2017-01-23 12:29:24', '2017-01-23 12:29:24'),

(32, 'SENSO Petra I', 'Senso is a family owned, Australian-based footwear label known for its confident, contemporary designs. With a focus on high quality leathers and strong silhouettes, the collection contrasts a relaxed aesthetic with a subtle sense of luxury. Comprised of the finest materials, trims, treatments and linings, Senso stays true to its vision of bringing you shoes with edge, a touch of fun, and a sense of effortless style.

- Smooth leather upper and lining
- Ice blue shade
- Round, open toe
- Crossover vamp strap
- 7.5cm covered comma heel', '199.90', 1, '2017-01-23 12:29:25', '2017-01-23 12:29:25'),

(33, 'SOL SANA Megan Slides', 'Launched in 2010, Australian footwear label Sol Sana strikes the perfect balance between sartorial innovation and everyday comfort. Each season, the brand delivers a curated range of shoes crafted from genuine leather, with everything from summer-ready sandals and mules to go-anywhere ankle boots and heels to dance the night away in.

- Genuine basket-weave leather upper
- All-black shade
- Squared open toe
- Wide fixed woven strap across vamp
- Slide-on design
- Stacked heel; rubber tread outsole', '139.90', 1, '2017-01-23 12:29:26', '2017-01-23 12:29:26'),

(34, 'SPURR Sim Mules', 'Celebrated for its affordability and on-trend collections, SPURR is designed for the style-savvy shoeaholic. Launched in 2011, the brand stepped into the fashion industry and was quickly recognised for its value and contemporary designs. From summer sandals to killer boots, SPURR shoes will add versatility to your wardrobe and elevate any ensemble.

- Smooth faux-leather upper
- Black shade
- Enclosed apron toe
- Notched vamp; gold-toned horse-bit
- Cushioned footbed
- Open heel
- 2.5cm stacked heel', '49.90', 1, '2017-01-23 12:29:27', '2017-01-23 12:29:27'),


(35, 'STATUS ANXIETY Triple Threat', 'Expertly crafted with the highest quality leather, Status Anxiety designs are unassuming, yet distinctly nonchalant. With a namesake derived from the insatiable desire for social status at any cost, the brand is driven to create desirable staple wallets, bags and accessories that transcend both time and place. Worked in a contemporary palette and accented with sturdy hardware, the comprehensive Status Anxiety collection encourages personal expression whilst oozing luxe appeal.

- Measurements: H19cm x W11cm x D1.5cm
- Genuine full grain leather construction
- Pink shade
- Panelled design to front flap
- Twin stud fastenings; rose gold-toned
- Fourteen card slots
- Zipped internal coin compartment
- Cash compartment
- Monochrome canvas lining
- External slip pocket
- Embossed branding to back', '109.90', 1, '2017-01-23 12:29:28', '2017-01-23 12:29:28'),

(36, 'STEVE MADDEN Nema-L', 'This on-trend slip-on features a striped ribbon that adds style to this classic silhouette. New from Steve Madden, the Nema flats are perfect for pairing it with denim and a crisp white top for the casual simple chic look. Featuring a small .6cm heel, this shoe offers comfort and styles with the pony hair upper and luxe ribbon detail.

- Pony hair upper
- Leopard animal print
- Slip-on loafer silhouette
- made-made lining and sole
- 0.6cm heel height
- Almond toe shape', '139.90', 1, '2017-01-23 12:29:29', '2017-01-23 12:29:29'),


(37, 'SWAROVSKI Moonsun Cluster Ring', 'Whether stacked or worn solo, the Moonsun Cluster Ring by Swarovski is a striking celebration of the night sky.

- Diameter: 16mm approx. (one size)
- Rose gold-toned metal
- Prong-set white zirconia crystals
- From the MoonSun collaboration between Atelier Swarovski and internationally acclaimed actress Penélope Cruz

PLEASE NOTE: All stones and crystals are unique, and may have slight variances in colour and characteristics from the image shown.', '99.90', 1, '2017-01-23 12:29:30', '2017-01-23 12:29:30'),


(38, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy', 'With a focus on meticulously made pieces that channel personality and charm, Ted Baker has become one of the UK’s fastest-growing lifestyle brands, encompassing womenswear, accessories and handbags crafted from only the finest materials. Known for their playful prints, impeccable details and light-hearted humour, Ted Baker is the go-to brand for those who love to set trends and not follow the pack.

- Measurements: H23.5cm x W27.5cm x D11cm; Strap Drop: 23cm
- Unique textured pebble leather construction
- Navy shade
- Zip fastening to main compartment
- Slim fixed length shoulder straps
- Multiple organisational compartments to internal
- Removable inner pouch
- Jacquard satin lining
- Rose gold-toned hardware and foil branding
- Bow detail to front
- Foil branding to front and pouch', '239.90', 1, '2017-01-23 12:29:31', '2017-01-23 12:29:31'),

(39, 'THERAPY Azure', 'Devoted to developing cutting edge shoes that meet the aspirations of style-savvy shoppers, Therapy footwear is on-trend and contemporary. From statement heels to stylish summer sandals, the Therapy team scour the globe for the hottest trends to ensure you always put your best foot forward.

- Faux leather braided upper
- Tan shade
- Pointed toe
- Slip-on design
- 6cm block heel', '89.90', 1, '2017-01-23 12:29:32', '2017-01-23 12:29:32'),


(40, 'TONIMAY Onyx and Kyanite Solace Stack Pack', 'Designed in Laura Byrnes Sydney studio, ToniMays unique, bohemian-inspired jewellery pieces are made for those who wander. As beautiful stacked together as worn separately, the 925 sterling silver Onyx and Kyanite Solace Stack Pack is a three-piece set accented with kyanite and black onyx crystals.



- Diameter: 20mm (size 8)

- Set of three; stackable

- 925 sterling silver construction

- Designers Solace Ring with black onyx to centre; Crescent Ring with etched detailing; Crown Ring with etching and inset kyanite gemstone

- Handmade', '220.90', 1, '2017-01-23 12:29:33', '2017-01-23 12:29:33'),

(41, 'TORY BURCH The Reva Gold-Tone Analogue Watch', 'Tory Burch is an American lifestyle brand that embodies the personal style and sensibility of its Executive Chairman and Chief Creative Officer, Tory Burch. The collection, known for its colourful & eclectic details uses inspiration from art, music, travel, interiors and the designers own stylish parents.

- Strap Color: Gold-Tone
- Dial Color:Cream
- Band Material:Stainless Steel
- Strap Width:16 MM
- Case Material:Stainless Steel
- Dial Size:28 MM
- Case Thickness:8 MM
- Water Resistance Depth:3 ATM', '460.90', 1, '2017-01-23 12:29:34', '2017-01-23 12:29:34'),

(42, 'UGG Fluffette', 'UGG slippers are an essential in any cold weather wardrobe, and UGG have a diverse range of designs for you to choose from. Whether a slip-on style or a knee-high pair, our collection won’t fail to provide you with ultimate comfort when the temperature drops.

- Genuine leather upper; fluffy funish
- Pure wool lining
- Beige and brown leopard print
- Classic slipper design
- Rubber sole', '460.90', 1, '2017-01-23 12:29:36', '2017-01-23 12:29:36'),

(43, 'URBAN ORIGINALS My World', 'The My World Tote by Urban Originals is a prime example of our brand ethos of luxury for less. This roomy tote opens up beautifully into 3 large compartments, and converts easily thanks to a removable shoulder strap. The gorgeous scaly finish has a varnish like shine.

- Light gold hardware
- 3x Large internal secure compartments
- Adjustable strap: 38-58cm- Dimensions: H29cm x W33 x D12.7cm
- PETA Certified Vegan leather', '99.90', 1, '2017-01-23 12:29:36', '2017-01-23 12:29:36'),

(44, 'VIZZANO Bumblebee Sneakers', 'Adorned with a bumblebee motif and side stripes, the Bumblebee Sneakers by Vizzano are fresh low-tops with personality.

- Faux leather upper
- Smooth white; red and green accents; gold-toned hardware
- Low profile
- Rounded toe
- Brand debossed metal bar to vamp
- Six-eye lacing system
- Striped grosgrain to sides
- Metal bumblebee motif to outer side
- Padded heel collar
- Lined and cushioned insole
- Rubberised outsole', '199.90', 1, '2017-01-23 12:29:37', '2017-01-23 12:29:37')


-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`, `active`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 1),
(11, 3, 1),
(12, 3, 1),
(13, 3, 1),
(14, 3, 1),
(15, 2, 1),
(16, 3, 1),
(17, 2, 1),
(18, 2, 1),
(19, 3, 1),
(20, 2, 1),
(21, 2, 1),
(22, 3, 1),
(23, 3, 1),
(24, 3, 1),
(25, 2, 1),
(26, 2, 1),
(27, 3, 1),
(28, 3, 1),
(29, 3, 1),
(30, 3, 1),
(31, 2, 1),
(32, 2, 1),
(33, 2, 1),
(34, 2, 1),
(35, 3, 1),
(36, 3, 1),
(37, 3, 1),
(38, 3, 1),
(39, 3, 1),
(40, 3, 1),
(41, 2, 1),
(42, 2, 1);



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
(168, 44, 168, 1),








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
(44, 3, '2019-02-17 12:37:32'),


-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `cart_id` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `account_id` int(11) DEFAULT NULL,
  `creator_session_id` varchar(32) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NULL DEFAULT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`cart_id`, `account_id`, `creator_session_id`, `updated`, `created`, `checked_out`) VALUES
(0x1d358c89fdc4ded4ad5da26f952d3c69, NULL, '9fe6357d0504ee378bae68e6ee443f7c', '2019-02-10 10:02:35', '2019-02-10 10:02:35', 0),
(0x37363633373831346136373232303432, NULL, '9fe6357d0504ee378bae68e6ee443f7c', '2019-02-10 10:01:32', '2019-02-10 10:01:32', 0),
(0x4e0b12e50440deb8961bbb97f4711ce9, 1, '', '2019-02-10 09:50:36', '2019-02-10 09:50:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_items`
--

CREATE TABLE `shopping_cart_items` (
  `item_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `account2`
--
ALTER TABLE `account2`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_log`
--
ALTER TABLE `auth_log`
  ADD PRIMARY KEY (`auth_row_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_file_name` (`image_file_name`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `product_id` (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD UNIQUE KEY `product_id_2` (`product_id`,`image_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD UNIQUE KEY `product_id_2` (`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `cart_id` (`cart_id`,`account_id`,`creator_session_id`);

--
-- Indexes for table `shopping_cart_items`
--
ALTER TABLE `shopping_cart_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `cart_product_id` (`cart_id`,`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account2`
--
ALTER TABLE `account2`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_log`
--
ALTER TABLE `auth_log`
  MODIFY `auth_row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'page id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `shopping_cart_items`
--
ALTER TABLE `shopping_cart_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_category_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `images_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD CONSTRAINT `product_quantity_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `shopping_cart_items`
--
ALTER TABLE `shopping_cart_items`
  ADD CONSTRAINT `shopping_cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
