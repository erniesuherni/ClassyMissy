-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 10:21 PM
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
-- Database: `data2`
--

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
(23, 'BEAU COOPS Duke Loafers nero1.jpg', '2018-12-06 12:12:15','',1),
(24, 'BEAU COOPS Duke Loafers nero2.jpg', '2018-12-06 12:12:16','',1),
(25, 'BEAU COOPS Duke Loafers nero3.jpg', '2018-12-06 12:12:17','',1),
(26, 'BEAU COOPS Duke Loafers nero4.jpg', '2018-12-06 12:12:18','',1),
(27, 'BEAU COOPS Duke Loafers tierra1.jpg', '2018-12-06 12:12:19','',1),
(28, 'BEAU COOPS Duke Loafers tierra2.jpg', '2018-12-06 12:12:19','',1),
(29, 'BEAU COOPS Duke Loafers tierra3.jpg', '2018-12-06 12:12:19','',1),
(30, 'BEAU COOPS Duke Loafers tierra4.jpg', '2018-12-06 12:12:19','',1),
(31, 'BILLINI Salome1.jpg', '2018-12-06 12:12:20','',1),
(32, 'BILLINI Salome2.jpg', '2018-12-06 12:12:21','',1),
(33, 'BILLINI Salome3.jpg', '2018-12-06 12:12:22','',1),
(34, 'BILLINI Salome4.jpg', '2018-12-06 12:12:23','',1),
(35, 'BY CHARLOTTE Charmed Hoops gold1.jpg', '2018-12-06 12:12:24','',1),
(36, 'BY CHARLOTTE Charmed Hoops gold2.jpg', '2018-12-06 12:12:25','',1),
(37, 'BY CHARLOTTE Charmed Hoops gold3.jpg', '2018-12-06 12:12:26','',1),
(38, 'BY CHARLOTTE Charmed Hoops gold4.jpg', '2018-12-06 12:12:27','',1),
(39, 'BY CHARLOTTE Charmed Hoops silver1.jpg', '2018-12-06 12:12:28','',1),
(40, 'BY CHARLOTTE Charmed Hoops silver2.jpg', '2018-12-06 12:12:29','',1),
(41, 'BY CHARLOTTE Charmed Hoops silver3.jpg', '2018-12-06 12:12:30','',1),
(42, 'BY CHARLOTTE Charmed Hoops silver4.jpg', '2018-12-06 12:12:31','',1),
(43, 'BY CHARLOTTE Eye of Protection Bracelet1.jpg', '2018-12-06 12:12:32','',1),
(44, 'BY CHARLOTTE Eye of Protection Bracelet2.jpg', '2018-12-06 12:12:33','',1),
(45, 'BY CHARLOTTE Eye of Protection Bracelet3.jpg', '2018-12-06 12:12:34','',1),
(46, 'BY CHARLOTTE Eye of Protection Bracelet4.jpg', '2018-12-06 12:12:35','',1),
(47, 'DYLAN KAIN The Birkin Belt1.jpg', '2018-12-06 12:12:36','',1),
(48, 'DYLAN KAIN The Birkin Belt2.jpg', '2018-12-06 12:12:37','',1),
(49, 'DYLAN KAIN The Birkin Belt3.jpg', '2018-12-06 12:12:38','',1),
(50, 'DYLAN KAIN The Birkin Belt4.jpg', '2018-12-06 12:12:39','',1),
(51, 'ELLESSE Taggia - Womens1.jpg', '2018-12-06 12:12:40','',1),
(52, 'ELLESSE Taggia - Womens2.jpg', '2018-12-06 12:12:41','',1),
(53, 'ELLESSE Taggia - Womens3.jpg', '2018-12-06 12:12:42','',1),
(54, 'ELLESSE Taggia - Womens4.jpg', '2018-12-06 12:12:43','',1),
(55, 'FOREVER NEW Grace Straw Boater Hat1.jpg', '2018-12-06 12:12:44','',1),
(56, 'FOREVER NEW Grace Straw Boater Hat2.jpg', '2018-12-06 12:12:45','',1),
(57, 'FOREVER NEW Grace Straw Boater Hat3.jpg', '2018-12-06 12:12:46','',1),
(58, 'FOREVER NEW Grace Straw Boater Hat4.jpg', '2018-12-06 12:12:47','',1),
(59, 'FUNKIS 697 Stina Low Clogs black1.jpg', '2018-12-06 12:12:48','',1),
(60, 'FUNKIS 697 Stina Low Clogs black2.jpg', '2018-12-06 12:12:49','',1),
(61, 'FUNKIS 697 Stina Low Clogs black3.jpg', '2018-12-06 12:12:50','',1),
(62, 'FUNKIS 697 Stina Low Clogs black4.jpg', '2018-12-06 12:12:51','',1),
(63, 'FUNKIS 697 Stina Low Clogs natural1.jpg', '2018-12-06 12:12:51','',1),
(64, 'FUNKIS 697 Stina Low Clogs natural2.jpg', '2018-12-06 12:12:52','',1),
(65, 'FUNKIS 697 Stina Low Clogs natural3.jpg', '2018-12-06 12:12:53','',1),
(66, 'FUNKIS 697 Stina Low Clogs natural4.jpg', '2018-12-06 12:12:54','',1),
(67, 'GEORG JENSEN Offspring Cuff1.jpg', '2018-12-06 12:12:55','',1),
(68, 'GEORG JENSEN Offspring Cuff2.jpg', '2018-12-06 12:12:56','',1),
(69, 'GEORG JENSEN Offspring Cuff3.jpg', '2018-12-06 12:12:57','',1),
(70, 'GEORG JENSEN Offspring Cuff4.jpg', '2018-12-06 12:12:58','',1),
(71, 'JO MERCER Somerset Casual Flats1.jpg', '2018-12-06 12:12:59','',1),
(72, 'JO MERCER Somerset Casual Flats2.jpg', '2018-12-06 12:13:00','',1),
(73, 'JO MERCER Somerset Casual Flats3.jpg', '2018-12-06 12:13:01','',1),
(74, 'JO MERCER Somerset Casual Flats4.jpg', '2018-12-06 12:13:02','',1),
(75, 'JO MERCER Teckel High Heels black1.jpg', '2018-12-06 12:13:03','',1),
(76, 'JO MERCER Teckel High Heels black2.jpg', '2018-12-06 12:13:04','',1),
(77, 'JO MERCER Teckel High Heels black3.jpg', '2018-12-06 12:13:05','',1),
(78, 'JO MERCER Teckel High Heels black4.jpg', '2018-12-06 12:13:06','',1),
(79, 'LE SPECS Caliente black1.jpg', '2018-12-06 12:13:07','',1),
(80, 'LE SPECS Caliente black2.jpg', '2018-12-06 12:13:08','',1),
(81, 'LE SPECS Caliente black3.jpg', '2018-12-06 12:13:09','',1),
(82, 'LE SPECS Caliente black4.jpg', '2018-12-06 12:13:10','',1),
(83, 'LOVE MOSCHINO Quilted Cross-Body Bag black1', '2018-12-06 12:13:11','',1),
(84, 'LOVE MOSCHINO Quilted Cross-Body Bag black2', '2018-12-06 12:13:12','',1),
(85, 'LOVE MOSCHINO Quilted Cross-Body Bag black3', '2018-12-06 12:13:13','',1),
(86, 'LOVE MOSCHINO Quilted Cross-Body Bag black4', '2018-12-06 12:13:14','',1),
(87, 'michael kors mini parker rose gold -tone1', '2018-12-06 12:13:15','',1),
(88, 'michael kors mini parker rose gold -tone2', '2018-12-06 12:13:16','',1),
(89, 'michael kors mini parker rose gold -tone3', '2018-12-06 12:13:17','',1),
(90, 'michael kors mini parker rose gold -tone4', '2018-12-06 12:13:18','',1),
(91, 'NIKE Blazer Low LE - Womens1', '2018-12-06 12:13:19','',1),
(92, 'NIKE Blazer Low LE - Womens2', '2018-12-06 12:13:20','',1),
(93, 'NIKE Blazer Low LE - Womens3', '2018-12-06 12:13:21','',1),
(94, 'NIKE Blazer Low LE - Womens4', '2018-12-06 12:13:22','',1),
(95, 'PUMA Defy Mid Core - Womens1', '2018-12-06 12:13:23','',1),
(96, 'PUMA Defy Mid Core - Womens2', '2018-12-06 12:13:24','',1),
(97, 'PUMA Defy Mid Core - Womens3', '2018-12-06 12:13:25','',1),
(98, 'PUMA Defy Mid Core - Womens4', '2018-12-06 12:13:26','',1),
(99, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours1', '2018-12-06 12:13:26','',1),
(100, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours2', '2018-12-06 12:13:27','',1),
(101, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours3', '2018-12-06 12:13:28','',1),
(102, 'QUAY AUSTRALIA QUAY X CHRISSY - After Hours4', '2018-12-06 12:13:29','',1),
(103, 'RAY-BAN Hexagonal Flat Lens - Unisex1', '2018-12-06 12:13:30','',1),
(104, 'RAY-BAN Hexagonal Flat Lens - Unisex2', '2018-12-06 12:13:31','',1),
(105, 'RAY-BAN Hexagonal Flat Lens - Unisex3', '2018-12-06 12:13:32','',1),
(106, 'RAY-BAN Hexagonal Flat Lens - Unisex4', '2018-12-06 12:13:33','',1),
(107, 'RAY-BAN Hexagonal Flat Lens1', '2018-12-06 12:13:34','',1),
(108, 'RAY-BAN Hexagonal Flat Lens2', '2018-12-06 12:13:35','',1),
(109, 'RAY-BAN Hexagonal Flat Lens3', '2018-12-06 12:13:36','',1),
(110, 'RAY-BAN Hexagonal Flat Lens4', '2018-12-06 12:13:37','',1),
(111, 'RAY-BAN Hexagonal Flat RB3548N1', '2018-12-06 12:13:38','',1),
(112, 'RAY-BAN Hexagonal Flat RB3548N2', '2018-12-06 12:13:39','',1),
(113, 'RAY-BAN Hexagonal Flat RB3548N3', '2018-12-06 12:13:40','',1),
(114, 'RAY-BAN Hexagonal Flat RB3548N4', '2018-12-06 12:13:41','',1),
(115, 'ROC BOOTS AUSTRALIA Indio black1', '2018-12-06 12:13:42','',1),
(116, 'ROC BOOTS AUSTRALIA Indio black2', '2018-12-06 12:13:43','',1),
(117, 'ROC BOOTS AUSTRALIA Indio black3', '2018-12-06 12:13:44','',1),
(118, 'ROC BOOTS AUSTRALIA Indio black4', '2018-12-06 12:13:45','',1),
(119, 'SENSO Petra I1', '2018-12-06 12:13:46','',1),
(120, 'SENSO Petra I2', '2018-12-06 12:13:47','',1),
(121, 'SENSO Petra I3', '2018-12-06 12:13:48','',1),
(122, 'SENSO Petra I4', '2018-12-06 12:13:49','',1),
(123, 'SOL SANA Megan Slides1', '2018-12-06 12:13:51','',1),
(124, 'SOL SANA Megan Slides2', '2018-12-06 12:13:52','',1),
(125, 'SOL SANA Megan Slides3', '2018-12-06 12:13:53','',1),
(126, 'SOL SANA Megan Slides4', '2018-12-06 12:13:54','',1),
(127, 'SPURR Sim Mules1', '2018-12-06 12:13:55','',1),
(128, 'SPURR Sim Mules2', '2018-12-06 12:13:56','',1),
(129, 'SPURR Sim Mules3', '2018-12-06 12:13:57','',1),
(130, 'SPURR Sim Mules4', '2018-12-06 12:13:58','',1),
(131, 'STATUS ANXIETY Triple Threat pink1', '2018-12-06 12:13:59','',1),
(132, 'STATUS ANXIETY Triple Threat pink2', '2018-12-06 12:14:00','',1),
(133, 'STATUS ANXIETY Triple Threat pink3', '2018-12-06 12:14:01','',1),
(134, 'STATUS ANXIETY Triple Threat pink4', '2018-12-06 12:14:02','',1),
(135, 'STEVE MADDEN Nema-L1', '2018-12-06 12:14:03','',1),
(136, 'STEVE MADDEN Nema-L2', '2018-12-06 12:14:04','',1),
(137, 'STEVE MADDEN Nema-L3', '2018-12-06 12:14:05','',1),
(138, 'STEVE MADDEN Nema-L4', '2018-12-06 12:14:06','',1),
(139, 'SWAROVSKI Moonsun Cluster Ring1', '2018-12-06 12:14:07','',1),
(140, 'SWAROVSKI Moonsun Cluster Ring2', '2018-12-06 12:14:08','',1),
(141, 'SWAROVSKI Moonsun Cluster Ring3', '2018-12-06 12:14:09','',1),
(142, 'SWAROVSKI Moonsun Cluster Ring4', '2018-12-06 12:14:10','',1),
(143, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy1', '2018-12-06 12:14:11','',1),
(144, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy2', '2018-12-06 12:14:12','',1),
(145, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy3', '2018-12-06 12:14:13','',1),
(146, 'TED BAKER Jjesica Bow Detail Leather Shopper Bag navy4', '2018-12-06 12:14:14','',1),
(147, 'THERAPY Azure1', '2018-12-06 12:14:15','',1),
(148, 'THERAPY Azure2', '2018-12-06 12:14:16','',1),
(149, 'THERAPY Azure3', '2018-12-06 12:14:17','',1),
(150, 'THERAPY Azure4', '2018-12-06 12:14:18','',1),
(151, 'TONIMAY Onyx and Kyanite Solace Stack Pack1', '2018-12-06 12:14:19','',1),
(152, 'TONIMAY Onyx and Kyanite Solace Stack Pack2', '2018-12-06 12:14:20','',1),
(153, 'TONIMAY Onyx and Kyanite Solace Stack Pack3', '2018-12-06 12:14:21','',1),
(154, 'TONIMAY Onyx and Kyanite Solace Stack Pack4', '2018-12-06 12:14:22','',1),
(155, 'TORY BURCH The Reva Gold-Tone Analogue Watch1', '2018-12-06 12:14:23','',1),
(156, 'TORY BURCH The Reva Gold-Tone Analogue Watch2', '2018-12-06 12:14:24','',1),
(157, 'UGG Fluffette1', '2018-12-06 12:14:25','',1),
(158, 'UGG Fluffette2', '2018-12-06 12:14:26','',1),
(159, 'UGG Fluffette3', '2018-12-06 12:14:27','',1),
(160, 'UGG Fluffette4', '2018-12-06 12:14:28','',1),
(161, 'URBAN ORIGINALS My World1', '2018-12-06 12:14:29','',1),
(162, 'URBAN ORIGINALS My World2', '2018-12-06 12:14:30','',1),
(163, 'URBAN ORIGINALS My World3', '2018-12-06 12:14:31','',1),
(164, 'URBAN ORIGINALS My World4', '2018-12-06 12:14:32','',1),
(165, 'VIZZANO Bumblebee Sneakers1', '2018-12-06 12:14:33','',1),
(166, 'VIZZANO Bumblebee Sneakers2', '2018-12-06 12:14:34','',1),
(167, 'VIZZANO Bumblebee Sneakers3', '2018-12-06 12:14:35','',1),
(168, 'VIZZANO Bumblebee Sneakers4', '2018-12-06 12:14:36','',1),
(169, 'checked', '2018-12-06 12:14:37','',1),
(170, 'checked2', '2018-12-06 12:14:38','',1),
(171, 'checked3', '2018-12-06 12:14:39','',1),
(172, 'dobby', '2018-12-06 12:14:40','',1),
(173, 'dobby2', '2018-12-06 12:14:40','',1),
(174, 'dobby3', '2018-12-06 12:14:40','',1),
(175, 'dobby4', '2018-12-06 12:14:40','',1);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_file_name` (`image_file_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
