-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 08:25 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `birds`
--

CREATE TABLE `birds` (
  `ID` int(10) NOT NULL,
  `Birdsname` varchar(30) NOT NULL,
  `Season` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birds`
--

INSERT INTO `birds` (`ID`, `Birdsname`, `Season`) VALUES
(1, 'Siberian crane', 'Winter'),
(2, 'Greater flammingo', 'Winter'),
(3, 'Common teal', 'Winter'),
(4, 'Yellow wagtail', 'Winter'),
(5, 'Wood sandpiper', 'Winter'),
(6, 'Eurasian wigeon', 'Winter'),
(7, 'Spotted redchunk', 'Winter'),
(9, 'Amur falco', 'Winter'),
(10, 'Asian brown flycatcher', 'Winter'),
(13, 'Marsh harrier', 'Winter'),
(16, 'Barau\'s petrel ', 'Summer'),
(17, 'Eurasian nightjar', 'Summer'),
(18, 'Flesh-footed shearwater ', 'Summer'),
(19, 'Jouanin\'s petrel', 'Summer'),
(20, 'Persian shearwater', 'Summer'),
(21, 'Sooty falco', 'Summer'),
(22, 'Streaked shearwater', 'Summer'),
(23, ' Wedge-tailed shearwater', 'Summer'),
(26, ' White-faced storm-petre', 'Summer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birds`
--
ALTER TABLE `birds`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birds`
--
ALTER TABLE `birds`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
