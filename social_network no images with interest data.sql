-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 04:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--
CREATE DATABASE IF NOT EXISTS `social_network` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `social_network`;

-- --------------------------------------------------------

--
-- Table structure for table `interest_name_table`
--

CREATE TABLE `interest_name_table` (
  `interest_name_id` int(11) NOT NULL,
  `interest_name` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest_name_table`
--

INSERT INTO `interest_name_table` (`interest_name_id`, `interest_name`) VALUES
(1, '7@gmail.com'),
(2, '8@gmail.com'),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, '9@gmail.com'),
(9, '123'),
(10, 'pradeep'),
(11, 'siby'),
(12, 'bike'),
(13, '10@gmail.com'),
(14, 'shravan'),
(15, 'duke'),
(16, ''),
(17, '12@gmail.com'),
(18, '112@gmail.com'),
(19, '424237065'),
(20, 'theja'),
(21, 'iamnew'),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, 'mee too'),
(28, 'Prade3p'),
(29, 'Reading'),
(30, 'Teasing'),
(31, 'Silence '),
(32, 'asdd'),
(33, 'asdasd'),
(34, 'test@gmail.com'),
(35, 'car'),
(36, 'vp'),
(37, '31@gmail.com'),
(38, 'asddd@gmail.com'),
(39, 'asdd2@gmail.com'),
(40, 'asd333@gmail.com'),
(41, 'asd335@gmail.com'),
(42, 'apex'),
(43, 'second'),
(44, 'malavika'),
(45, 'games'),
(46, 'photo'),
(47, 'sky'),
(48, 'cyberpunk'),
(49, 'dynamic-programming'),
(50, 'mark zucker berg'),
(51, ' next mark is pradeep'),
(52, 'dhoni'),
(53, 'csk'),
(54, 'pradeep loves games'),
(55, 'memes');

-- --------------------------------------------------------

--
-- Table structure for table `people_and_community`
--

CREATE TABLE `people_and_community` (
  `uid` bigint(20) DEFAULT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_and_community`
--

INSERT INTO `people_and_community` (`uid`, `cid`, `priority`) VALUES
(153380162, 1, 0),
(915113687, 2, 3),
(368523719, 2, 2),
(368525958, 2, 1),
(368525763, 2, 0),
(424237065, 3, 0),
(397067098, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `photo_table`
--

CREATE TABLE `photo_table` (
  `photo_id` int(11) NOT NULL,
  `photo` mediumblob DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `photo_tags_table`
--

CREATE TABLE `photo_tags_table` (
  `photo_id` int(11) DEFAULT NULL,
  `Interest_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_graph`
--

CREATE TABLE `temp_graph` (
  `aaa` int(11) NOT NULL,
  `bbb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_nodes`
--

CREATE TABLE `temp_nodes` (
  `node` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_tojava`
--

CREATE TABLE `temp_tojava` (
  `tnode` int(11) NOT NULL,
  `fak_cluster` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_details_table`
--

CREATE TABLE `user_details_table` (
  `uid` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Full_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details_table`
--

INSERT INTO `user_details_table` (`uid`, `email`, `password`, `location`, `DOB`, `Full_name`) VALUES
(4434, 'asd', 'asd', 'bangalore', '2000-05-22', NULL),
(1365951, 'asd2', 'asd', 'bangalore', '2000-05-22', NULL),
(25819155, 'onipradeep@gmail.com', 'asd', 'chennai', '2000-05-22', 'Pradeep E'),
(137935618, 'tousiff.th.97@gmail.com', 'olaolaola', 'Coimbatore', '1997-12-22', 'Tousiff'),
(151381649, '1543@gmail.com', '1543@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(151399956, 'asd2@gmail.com', 'asd', 'bangalore', '2000-05-22', 'Pradeep E'),
(151429747, 'asd3@gmail.com', 'asd3@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(153380162, 'test@gmail.com', 'test@gmail.com', 'velachery', '1999-09-17', 'shravan'),
(368523719, '10@gmail.com', '10@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(368523752, '31@gmail.com', '31@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(368523781, '12@gmail.com', '12@gmail.com', 'chennai', '2000-05-22', 'Pradeep E'),
(368523782, '22@gmail.com', '22', 'bangalore', '2000-05-22', 'Pradeep2'),
(368525763, 'mp@gmail.com', 'mp', 'Thoraipakkam', '1999-09-15', 'Mohana'),
(368525862, 'ss@gmail.com', 'ss@gmail.com', 'velachery', '1999-09-17', 'shravan'),
(368525958, 'vv@gmail.com', 'vv@gmail.com', 'vv@gmail.com', '2000-05-22', 'Pradeep E'),
(397067098, 'pradeep@gmail.com', 'ass', 'India', '2000-05-22', 'Pradeep E'),
(424237065, '112@gmail.com', '112@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(424238057, '123@gmail.com', '123@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(424239111, '154@gmail.com', '154@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(424287209, 'asd@gmail.com', 'asd', 'bangalore', '2000-05-22', 'Pradeep E'),
(476829882, 'asd333@gmail.com', 'asd333@gmail.com', 'bangalore', '2000-05-22', 'asd'),
(534088184, 'asd335@gmail.com', 'asd335@gmail.com', 'bangalore', '2000-05-22', 'asd'),
(692828277, '15243@gmail.com', '15243@gmail.com', 'bangalore', '2000-05-22', '1543@gmail.com'),
(693384744, 'asdd2@gmail.com', 'asdd2@gmail.com', 'bangalore', '2000-05-22', 'asd2'),
(739560794, 'asddd@gmail.com', 'asddd@gmail.com', 'bangalore', '2000-05-22', 'asd'),
(915113679, '1@gmail.com', '1@gmail.com', '123', '2000-05-22', 'Pradeep E'),
(915113680, '2@gmail.com', '2@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113681, '3@gmail.com', '3@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113683, '5@gmail.com', '5@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113684, '6@gmail.com', '	iiid = rs.getInt(\"interest_name_id\");', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113685, '7@gmail.com', '7@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113686, '8@gmail.com', '8@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(915113687, '9@gmail.com', '9@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(957429881, 'dyoshini1234@gmail.com', '', 'Chennai', '2002-06-25', 'Yoshini');

-- --------------------------------------------------------

--
-- Table structure for table `user_interest_table`
--

CREATE TABLE `user_interest_table` (
  `uid` bigint(20) DEFAULT NULL,
  `interest_name_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_interest_table`
--

INSERT INTO `user_interest_table` (`uid`, `interest_name_id`) VALUES
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(915113686, 2),
(915113686, 2),
(915113686, 2),
(915113686, 2),
(915113686, 2),
(915113686, -1),
(915113686, -1),
(915113686, -1),
(915113686, -1),
(915113686, -1),
(915113687, 8),
(915113687, 9),
(915113687, 10),
(915113687, 11),
(915113687, 12),
(368523719, 13),
(368523719, 11),
(368523719, 10),
(368523719, 14),
(368523719, 15),
(368523719, 16),
(368523719, 16),
(368523719, 16),
(368523719, 16),
(368523719, 16),
(368523781, 17),
(368523781, 17),
(368523781, 17),
(368523781, 17),
(368523781, 17),
(424237065, 18),
(424237065, 18),
(424237065, 18),
(424237065, 18),
(424237065, 18),
(424237065, 19),
(424237065, 19),
(424237065, 19),
(424237065, 19),
(424237065, 19),
(0, -1),
(0, -1),
(0, -1),
(0, -1),
(0, -1),
(368525763, 28),
(368525763, 10),
(368525763, 29),
(368525763, 30),
(368525763, 31),
(153380162, 34),
(153380162, 11),
(153380162, 18),
(153380162, 35),
(153380162, 36),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(368523752, 37),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(739560794, 38),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(693384744, 39),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(476829882, 40),
(534088184, 41),
(534088184, 41),
(534088184, 41),
(534088184, 41),
(534088184, 41),
(368525958, 10),
(368525958, 42),
(368525958, 43),
(368525958, 12),
(368525958, 44),
(397067098, 12),
(397067098, 35),
(397067098, 45),
(397067098, 46),
(397067098, 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interest_name_table`
--
ALTER TABLE `interest_name_table`
  ADD PRIMARY KEY (`interest_name_id`),
  ADD UNIQUE KEY `UK_interest_name` (`interest_name`) USING HASH;

--
-- Indexes for table `photo_table`
--
ALTER TABLE `photo_table`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `user_details_table`
--
ALTER TABLE `user_details_table`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interest_name_table`
--
ALTER TABLE `interest_name_table`
  MODIFY `interest_name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `photo_table`
--
ALTER TABLE `photo_table`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
