-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 02:48 PM
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

DROP TABLE IF EXISTS `interest_name_table`;
CREATE TABLE `interest_name_table` (
  `interest_name_id` int(11) NOT NULL,
  `interest_name` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `people_and_community`
--

DROP TABLE IF EXISTS `people_and_community`;
CREATE TABLE `people_and_community` (
  `uid` bigint(20) DEFAULT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `photo_table`
--

DROP TABLE IF EXISTS `photo_table`;
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

DROP TABLE IF EXISTS `photo_tags_table`;
CREATE TABLE `photo_tags_table` (
  `photo_id` int(11) DEFAULT NULL,
  `Interest_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_details_table`
--

DROP TABLE IF EXISTS `user_details_table`;
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
(151399956, 'asd2@gmail.com', 'asd', 'bangalore', '2000-05-22', 'Pradeep E'),
(151429747, 'asd3@gmail.com', 'asd3@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(368523782, '22@gmail.com', '22', 'bangalore', '2000-05-22', 'Pradeep2'),
(424238057, '123@gmail.com', '123@gmail.com', 'bangalore', '2000-05-22', 'Pradeep E'),
(424287209, 'asd@gmail.com', 'asd', 'bangalore', '2000-05-22', 'Pradeep E'),
(957429881, 'dyoshini1234@gmail.com', '', 'Chennai', '2002-06-25', 'Yoshini');

-- --------------------------------------------------------

--
-- Table structure for table `user_interest_table`
--

DROP TABLE IF EXISTS `user_interest_table`;
CREATE TABLE `user_interest_table` (
  `uid` bigint(20) DEFAULT NULL,
  `interest_name_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `interest_name_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_table`
--
ALTER TABLE `photo_table`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
