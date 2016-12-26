-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2016 at 10:10 AM
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
  `username` varchar(50) NOT NULL DEFAULT '0',
  `cinema` varchar(50) NOT NULL,
  `moviename` varchar(50) NOT NULL,
  `moviedate` date NOT NULL,
  `movietime` varchar(20) NOT NULL,
  `bookingdate` datetime NOT NULL,
  `seat` varchar(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0 - in process | 1 - approved | 2 - cancelled | 3 - paid | 4 - done'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `username`, `cinema`, `moviename`, `moviedate`, `movietime`, `bookingdate`, `seat`, `status`) VALUES
(13, '000', 'Aeon Bandaraya Melaka', 'FALLEN', '2016-12-15', '4PM', '2016-12-15 11:03:12', 'R4 S10', 0),
(14, 'asyraf', '1Borneo', 'FALLEN', '2016-12-15', '6PM', '2016-12-15 17:12:47', 'R6 S10', 3),
(15, 'asyraf', 'Alamanda', 'FALLEN', '2016-12-15', '4PM', '2016-12-15 17:40:33', 'R1 S10', 2),
(16, 'asyraf', 'Klang Parade', 'FALLEN', '2016-12-15', '8PM', '2016-12-15 22:22:26', 'R4 S10', 1),
(20, 'asyraf', 'UMall', 'Moana', '2016-12-17', '8PM', '2016-12-17 00:32:11', 'R6 S10', 0),
(21, 'asyraf', 'AEON Bukit Indah', 'Captain America: Civil War', '2016-12-26', '12PM', '2016-12-26 14:09:34', 'R4 S10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `id` int(11) NOT NULL,
  `cinemaname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - deactivate | 1 - active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`id`, `cinemaname`, `status`) VALUES
(2, 'UMall', 1),
(3, 'AEON Bukit Indah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `moviename` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'default.png',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - deactivate | 1 - active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `moviename`, `image`, `status`) VALUES
(1, 'Central Intelligence', 'm9.jpg', 1),
(3, 'Mechanic: Resurrection', 'm6.jpg', 1),
(4, 'Moana', 'c1.jpg', 1),
(5, 'Captain America: Civil War', 'm19.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobileNum` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `userType`, `fullName`, `email`, `mobileNum`) VALUES
('asyraf', '12345', 'customer', 'Mohamad Asyraf Osman', 'a@e.com', '0172364838'),
('fantastic', 'cinema', 'admin', 'Miss Fantastic', '', ''),
('nat', '12345', 'customer', 'natalie', 'nat@gmail.com', '1234');

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
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
