-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 11:17 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `b_type` varchar(3) NOT NULL,
  `bday` date NOT NULL,
  `h_address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `don_date` date NOT NULL,
  `stats` text NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pulse` varchar(10) NOT NULL,
  `bp` varchar(10) NOT NULL,
  `weight` int(11) NOT NULL,
  `hemoglobin` varchar(25) NOT NULL,
  `hbsag` varchar(10) NOT NULL,
  `aids` varchar(15) NOT NULL,
  `malaria_smear` varchar(20) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `fname`, `mname`, `lname`, `sex`, `b_type`, `bday`, `h_address`, `city`, `don_date`, `stats`, `temp`, `pulse`, `bp`, `weight`, `hemoglobin`, `hbsag`, `aids`, `malaria_smear`, `hematocrit`, `phone`, `mobile`) VALUES
(30, 'Yash', '', 'Aggarwal', 'male', 'O+', '2001-07-16', '613, yogi Nagar\r\nRanjhi , Front Of Goswami Buildi', 'Malgudi', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762'),
(31, 'Harshvardan', '', 'Yadav', 'male', 'B+', '2000-02-02', 'Chandpole\r\n', 'Jaipur', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 63%', '', '8602042302'),
(32, 'Varanshu', '', 'Gupta', 'male', 'A+', '2002-09-24', 'SBI Colony, Baldev Bagh\r\n', 'Rotak', '2015-04-19', 'Normal', '30', '70', '80 | 120', 52, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '', '8269036096'),
(33, 'Sarathi ', '', 'P.Y', 'female', 'AB+', '1998-08-05', 'New Delhi', 'New Delhi', '2019-05-05', '50', '30', '77', '120', 65, '90', '50', 'Negative', 'No', '50', '06189789', '98456545'),
(34, 'Chanukya', '', 'Legend', 'male', 'O-', '1995-05-05', 'Lehnath', 'Pokhara', '2019-09-01', 'Good', '35', '88', '120', 66, '50', '50', 'Negative', 'Negative', '50', '', '98988'),
(35, 'Dolly', '', 'Shah', 'female', 'A-', '1996-08-08', 'Mumbai', 'Mumbai', '2019-11-11', 'normal', '35', '56', '125', 65, '50', '55', 'Negative', 'Negative', '88', '', '88995566'),
(36, 'Sanjkeet', '', 'Jana', 'male', 'B-', '1998-05-05', 'Kaski', 'Odisha', '2019-12-11', 'Normal', '30', '50', '120', 66, '15', '50', 'Negative', 'Negative', '50', '', '9988');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `f_name` varchar(35) NOT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `b_day` date NOT NULL,
  `prc_nr` int(25) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `landline` varchar(10) DEFAULT NULL,
  `mobile_nr` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `f_name`, `m_name`, `l_name`, `username`, `password`, `b_day`, `prc_nr`, `designation`, `landline`, `mobile_nr`) VALUES
(11, 'Mayank', '', 'Aggarwal', 'mayank', '12345', '1991-07-19', 2147483647, 'Student', '2632181', '9827983762');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `b_type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `b_type`, `address`, `city`, `mobile`, `created_at`) VALUES
(1, 'Yash', 'Aggarwal', 'yashaggarwal007@gmail.com', '2001-07-16', 'Male', 'O+', '613, yogi Nagar\r\nRanjhi , Front Of Goswami Buildi', 'Malgudi', '9827983762', '2015-04-18 17:12:26'),
(2, 'Harshvardan', 'Yadav', 'harsha24gupta24@gmail.com', '2000-02-02', 'Male', 'B+', 'Chandpole', 'Jaipur', '8269036096', '2015-04-18 10:08:46'),
(3, 'Varanshu', 'Gupta', 'iammagnificient@gmail.com', '2002-09-24', 'Male', 'A+', 'SBI Colony, Baldev Bagh\r\n', 'Rotak', '8871479418', '2015-04-19 06:27:06'),
(5, 'Sarathi', 'P.Y', 'pysarathi@gmail.com', '1998-08-05', 'Female', 'AB+', 'New Delhi', 'New Delhi', '99887070', '2019-05-05 08:24:03'),
(6, 'Dolly', 'Shah', 'lollydolly@gmail.com', '1996-08-08', 'Female', 'A-', 'Mumbai', 'Mumbai', '99889988', '2019-11-11 10:02:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `prc_nr` (`prc_nr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
