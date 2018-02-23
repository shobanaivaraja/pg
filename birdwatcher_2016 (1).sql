-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 07:40 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `birdwatcher_2017`
--

CREATE TABLE `birdwatcher_2017` (
  `id` int(100) NOT NULL,
  `Birdname` varchar(30) NOT NULL,
  `Location1` varchar(30) NOT NULL,
  `Location2` varchar(30) NOT NULL,
  `Season` varchar(20) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(10) NOT NULL,
  `Count` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birdwatcher_2017`
--

INSERT INTO `birdwatcher_2017` (`id`, `Birdname`, `Location1`, `Location2`, `Season`, `Month`, `Year`, `Count`) VALUES
(1, 'Siberian crane', 'Bihar', 'Patna', 'Winter', 'January', 2016, 20),
(1, 'Siberian crane', 'Bihar', 'Gaya', 'Winter', 'February', 2016, 20),
(2, 'Greater flammingo', 'Gujarat', 'Ahmedabad', 'Winter', 'December', 2016, 30),
(2, 'Greater flammingo', 'Gujarat', 'Surat', 'Winter', 'January', 2016, 25),
(3, 'Common teal', 'Kashmir', 'Bandipora', 'Winter', 'December', 2016, 22),
(3, 'Common teal', 'Kashmir', 'Anantnag', 'Winter', 'February', 2016, 10),
(6, 'Eurasian wigeon', 'Assam', 'Baksa', 'Winter', 'December', 2016, 25),
(6, 'Eurasian wigeon', 'Assam', 'Barpeta', 'Winter', 'December', 2016, 30),
(7, 'Barau\'s petrel', 'Tamilnadu', 'Madurai', 'Summer', 'March', 2016, 30),
(7, 'Barau\'s petrel', 'Tamilnadu', 'Coimbatore', 'summer', 'May', 2016, 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
