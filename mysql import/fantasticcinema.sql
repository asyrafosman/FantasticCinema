-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2016 at 04:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantasticcinema`
--
CREATE DATABASE IF NOT EXISTS `fantasticcinema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fantasticcinema`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `userid` varchar(11) NOT NULL DEFAULT '0',
  `cinema` varchar(50) NOT NULL,
  `moviename` varchar(50) NOT NULL,
  `moviedate` date NOT NULL,
  `movietime` varchar(20) NOT NULL,
  `bookingdate` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userid`, `cinema`, `moviename`, `moviedate`, `movietime`, `bookingdate`, `status`) VALUES
(1, '000', 'Dataran Pahlawan', 'War Dogs', '2016-11-24', '8PM', '2016-11-24 12:03:14', 0),
(2, '000', 'Alamanda', 'War Dogs', '2016-11-24', '4PM', '2016-11-24 12:03:45', 0),
(3, '000', 'Dataran Pahlawan', 'War Dogs', '2016-11-24', '10PM', '2016-11-24 12:14:35', 0),
(4, '000', 'Setia City Mall', 'Peter', '2016-11-24', '10PM', '2016-11-24 12:14:49', 0),
(5, '000', '1Borneo', 'Civil War', '2016-11-24', '6PM', '2016-11-24 12:16:24', 0),
(6, '000', 'Bintang Megamall', 'Civil War', '2016-11-24', '2PM', '2016-11-24 14:46:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icNum` varchar(12) NOT NULL,
  `mobileNum` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - deactivate | 1 - active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
