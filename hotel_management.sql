-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Aug 25, 2022 at 04:52 AM
-- Server version: 10.6.7-MariaDB-1:10.6.7+maria~focal-log
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_location_id` int(11) NOT NULL,
  `hotel_title` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `long_desc` longtext NOT NULL,
  `no_of_room` int(11) NOT NULL,
  `room_type` enum('single','double','triple','quad','queen','king','twin') NOT NULL,
  `hotel_star` enum('1','2','3','4','5') NOT NULL,
  `hotel_regi_date` date NOT NULL,
  `small_pic` varchar(255) NOT NULL,
  `large_pic` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_location_id`, `hotel_title`, `short_desc`, `long_desc`, `no_of_room`, `room_type`, `hotel_star`, `hotel_regi_date`, `small_pic`, `large_pic`, `status`, `created_date`, `modified_date`) VALUES
(3, 4, 'Taj Hotel', 'place like your home', 'place like your home', 10, 'quad', '5', '2022-05-09', 'hotel13.jpeg', 'hotel4.jpeg', '1', '2022-05-20', '2022-06-02'),
(7, 11, 'Marina Hotel', 'Good place to stay', 'Good place to stay', 120, 'queen', '4', '2022-05-17', 'hotel2.jpeg', 'hotel7.jpeg', '1', '2022-05-23', '2022-05-24'),
(8, 4, 'Palace Hotel', 'great place to stay', 'great place to stay', 100, 'double', '2', '2022-05-10', 'hotel9.jpeg', 'hotel4.jpeg', '1', '2022-05-23', '2022-05-24'),
(9, 3, 'Gardern Hotel', 'great place', 'great place', 12, 'triple', '3', '2022-05-17', 'hotel14.jpeg', 'hotel13.jpeg', '1', '2022-05-25', '2022-05-30'),
(13, 12, 'hotello', 'dasg', 'dhnb', 214, 'king', '3', '2022-05-19', 'hotel5.jpeg', 'hotel7.jpeg', '1', '2022-05-31', '2022-05-31'),
(12, 4, 'srdrfer', 'waegfthnj', 'rdesfhbn6ty5', 35, 'double', '3', '2022-05-13', 'hotel9.jpeg', 'hotel10.jpeg', '1', '2022-05-25', '2022-06-02'),
(21, 10, 'dzshb', 'szgvz ', 'xvnb ', 1, 'triple', '3', '2022-05-17', 'hotel13.jpeg', 'hotel14.jpeg', '0', '2022-05-31', '2022-05-31'),
(22, 10, 'asZtgv', 'drefjum ', 'ljbhn;.', 2, 'twin', '3', '2022-05-18', 'hotel13.jpeg', 'hotel14.jpeg', '1', '2022-05-31', '2022-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_location`
--

CREATE TABLE `hotel_location` (
  `hotel_location_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_location`
--

INSERT INTO `hotel_location` (`hotel_location_id`, `sort_order`, `location`, `city`, `state`, `status`, `created_date`, `modified_date`) VALUES
(3, 2, 'Ghivato', 'Patan', 'Gujarat', '1', '2022-05-23', '2022-05-31'),
(2, 4, 'Sabarmati', 'Gorakhpur', 'Up', '0', '2022-05-19', '2022-05-19'),
(4, 3, 'Loteswar', 'Patan', 'Gujarat', '1', '2022-05-23', '2022-05-24'),
(13, 6, 'sola', 'Ahmdebad', 'Gujarat', '1', '2022-05-20', '2022-05-20'),
(14, 2, 'Bandra', 'Mumbai', 'Maharastra', '1', '2022-05-25', '2022-05-25'),
(9, 5, 'Palika', 'Rajkot', 'Gujarat', '0', '2022-05-19', '2022-05-19'),
(10, 3, 'gota', 'Ahmdebad', 'Gujarat', '1', '2022-05-19', '2022-05-19'),
(11, 8, 'Paldi', 'Ahmdebad', 'Gujarat', '1', '2022-05-19', '2022-05-19'),
(12, 7, 'Ghodasar', 'Ahmdebad', 'Gujarat', '0', '2022-05-19', '2022-05-19'),
(15, 4, 'AFdc', 'svf', 'zdv', '1', '2022-05-25', '2022-05-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `hotel_location`
--
ALTER TABLE `hotel_location`
  ADD PRIMARY KEY (`hotel_location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hotel_location`
--
ALTER TABLE `hotel_location`
  MODIFY `hotel_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
