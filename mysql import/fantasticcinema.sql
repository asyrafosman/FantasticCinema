-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2016 at 02:57 PM
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
(1, 'asyraf', 'UMall', 'Moana', '2016-12-23', '8PM', '2016-12-17 00:32:11', 'R6 S10', 2),
(2, 'jou', 'UMall', 'Ice Age: Collision Course', '2016-12-21', '12AM', '2016-12-17 23:07:51', 'R7 S10', 3),
(3, 'Peiying', 'AEON Bukit Indah', 'Captain America: Civil War', '2016-12-22', '4PM', '2016-12-17 23:52:21', 'R9 S4', 3),
(4, 'asyraf', 'AEON Bukit Indah', 'Captain America: Civil War', '2016-12-20', '12PM', '2016-12-18 14:09:34', 'R4 S10', 3),
(5, 'natalie', 'AEON Bukit Indah', 'Captain America: Civil War', '2016-12-28', '12PM', '2016-12-18 20:44:26', 'R6 S9', 2),
(6, 'jou', 'AEON Bukit Indah', 'Moana', '2016-12-23', '10AM', '2016-12-18 23:08:45', 'R7 S4', 3),
(7, 'Peiying', 'AEON Bukit Indah', 'Central Intelligence', '2016-12-25', '2PM', '2016-12-19 23:53:14', 'R5 S6', 3),
(8, 'natalie', 'Alamanda', 'Central Intelligence', '2016-12-27', '6PM', '2016-12-20 20:45:00', 'R8 S3', 0),
(9, 'asyraf', 'Dataran Pahlawan', 'Mechanic: Resurrection', '2016-12-21', '8PM', '2016-12-20 21:07:21', 'R4 S7', 0),
(10, 'natalie', 'Dataran Pahlawan', 'Ice Age: Collision Course', '2016-12-31', '10PM', '2016-12-21 20:45:23', 'R7 S1', 0),
(11, 'jou', 'IOI City Mall (Putrajaya)', 'Mechanic: Resurrection', '2017-01-02', '8PM', '2016-12-21 23:09:40', 'R5 S8', 2),
(12, 'natalie', 'IOI City Mall (Putrajaya)', 'Mechanic: Resurrection', '2017-01-02', '12AM', '2016-12-22 20:45:43', 'R2 S1', 0),
(13, 'Peiying', 'AEON Bukit Indah', 'Ice Age: Collision Course', '2017-01-01', '12PM', '2016-12-22 23:53:48', 'R7 S9', 2),
(14, 'asyraf', 'Alamanda', 'Captain America: Civil War', '2017-01-07', '4PM', '2016-12-23 21:08:23', 'R4 S2', 2),
(15, 'jou', 'Dataran Pahlawan', 'Mechanic: Resurrection', '2017-01-05', '2PM', '2016-12-23 23:10:31', 'R5 S8', 0),
(16, 'jou', 'AEON Bandaraya Melaka', 'Captain America: Civil War', '2017-01-06', '6PM', '2016-12-23 23:11:08', 'R7 S4', 0),
(17, 'natalie', 'AEON Bukit Indah', 'Mechanic: Resurrection', '2017-01-08', '6PM', '2016-12-24 20:46:01', 'R4 S8', 3),
(18, 'Peiying', 'AEON Bukit Indah', 'Mechanic: Resurrection', '2017-01-08', '12AM', '2016-12-24 23:55:31', 'R8 S2', 0),
(19, 'Peiying', 'AEON Bukit Indah', 'Moana', '2016-12-29', '2PM', '2016-12-24 23:56:40', 'R6 S1', 0),
(20, 'natalie', 'UMall', 'Ice Age: Collision Course', '2016-12-30', '12AM', '2016-12-25 20:49:27', 'R7 S5', 3),
(21, 'asyraf', 'IOI City Mall (Putrajaya)', 'Central Intelligence', '2017-01-04', '10PM', '2016-12-25 21:09:02', 'R6 S4', 3);

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
(3, 'AEON Bukit Indah', 1),
(4, 'AEON Bandaraya Melaka', 1),
(5, 'Dataran Pahlawan', 1),
(6, 'Alamanda', 1),
(7, 'IOI City Mall (Putrajaya)', 1);

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
(5, 'Captain America: Civil War', 'm19.jpg', 1),
(6, 'Ice Age: Collision Course', 'c6.jpg', 1);

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
('asyraf', '12345', 'customer', 'Mohamad Asyraf Osman', 'asyraf@gmail.com', '0172364838'),
('fantastic', 'cinema', 'admin', 'Miss Fantastic', '', ''),
('jou', '12345', 'customer', 'Lee Jia Jou', 'jou@gmail.com', '0164446916'),
('natalie', '1111', 'customer', 'natalienuai', 'nn@gmail.com', '0123455743'),
('Peiying', '12345', 'customer', 'SIA PEI YING', 'peiying0927@gmail.com', '0167679163');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
