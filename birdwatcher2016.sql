-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 12:21 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `birdwatcher2016`
--

CREATE TABLE IF NOT EXISTS `birdwatcher2016` (
  `id` int(10) NOT NULL,
  `Birdname` varchar(30) NOT NULL,
  `Location1` varchar(20) NOT NULL,
  `Location2` varchar(20) NOT NULL,
  `Season` varchar(20) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(10) NOT NULL,
  `Count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birdwatcher2016`
--

INSERT INTO `birdwatcher2016` (`id`, `Birdname`, `Location1`, `Location2`, `Season`, `Month`, `Year`, `Count`) VALUES
(1, 'Siberian Crane', 'Bihar', 'Patna', 'Winter', 'January', 2016, 10),
(2, 'Greater flammingo', 'Gujarat', 'Ahmedabad', 'Winter', 'December', 2016, 15),
(3, 'Common teal', 'Kashmir', 'Bandi pora', 'Winter', 'Feburary', 2016, 12),
(4, 'Yellow wagtail', 'Kashmir', 'Anantnag', 'Winter', 'Feburary', 2016, 14),
(5, 'Wood sandpiper', 'Kashmir', 'Bandi pora', 'Winter', 'January', 2016, 15),
(6, 'Eurasian wigeon', 'Assam', 'Baksa', 'Winter', 'December', 2016, 12),
(7, 'Spotted redchunk', 'Gujarat', 'Ahmedabad', 'Winter', 'December', 2016, 14),
(8, 'Yellow-breasted Bunting', 'Assam', 'Baksa', 'Winter', 'Feburary', 2016, 15),
(9, 'Amur falco', 'Assam', 'Barpeta', 'Winter', 'Feburary', 2016, 14),
(10, 'Asian brown flycatcher', 'Meghalaya', 'Shillong', 'Winter', 'Feburary', 2016, 13),
(11, 'Asiatic sparrow hawk', 'Kerala', 'Idukki', 'Winter', 'December', 2016, 15),
(12, 'Pale harrier', 'Rajasthan', 'Ajmer', 'Winter', 'December', 2016, 10),
(13, 'Marsh Harrier', 'Rajasthan', 'Alwar', 'Winter', 'Feburary', 2016, 12),
(14, 'Pied harrier', 'Kerala', 'Allappuzha', 'Winter', 'January', 2016, 13),
(15, 'Long billed plover', 'Manipur', 'Bishnupur', 'Winter', 'December', 2016, 19),
(16, 'Barau''s petrel', 'Tamil nadu', 'Madurai', 'Summer', 'March', 2016, 8),
(17, 'Eurasian nightjar', 'Maharashtra', 'Mumbai', 'Summer', 'May', 2016, 11),
(18, 'Flesh-footed shearwater', 'Tamil nadu', 'Coimbatore', 'Summer', 'May', 2016, 12),
(19, 'Jouanin''s petrel', 'Tamil nadu', 'Madurai', 'Summer', 'March', 2016, 14),
(20, 'Persian Shearwater', 'Maharashtra', 'Nagpur', 'Summer', 'May', 2016, 8),
(21, 'Sooty falco', 'Rajasthan', 'Ajmer', 'Summer', 'April', 2016, 20),
(22, 'Streaked Shearwater', 'Tamil nadu', 'Coimbatore', 'Summer', 'April', 2016, 15),
(23, 'Wedge-tailed Shearwater', 'Kerala', 'Idukki', 'Summer', 'April', 2016, 15),
(24, 'Nightjar', 'Maharashtra', 'Mumbai', 'Summer', 'March', 2016, 11),
(25, 'Japanese sparrow hawk', 'Kerala', 'Alappuzha', 'Summer', 'April', 2016, 19),
(26, 'White-faced Storm-Petre', 'Lakshadweep', 'Lakshadweep', 'Summer', 'March', 2016, 18);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
