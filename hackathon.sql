-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2017 at 06:33 PM
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(5) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `EmailID`, `Password`) VALUES
(1, 'shobanak16115@gmail.com', 'shobana');

-- --------------------------------------------------------

--
-- Table structure for table `bird`
--

CREATE TABLE IF NOT EXISTS `bird` (
`id` int(5) NOT NULL,
  `Birdname` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Season` varchar(30) NOT NULL,
  `Count` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bird`
--

INSERT INTO `bird` (`id`, `Birdname`, `State`, `Season`, `Count`) VALUES
(1, 'Asiatic Sparrow Hawk', 'Kerala', 'Winter', 4),
(2, 'Pale Harrier ', 'Rajasthan', 'Winter', 5),
(3, 'Marsh Harrier', 'Gujarat', 'Winter', 10),
(4, 'Pied Harrier', 'Kerala', 'Winter', 10),
(5, 'Long Billed Plover', 'Nepal', 'Winter', 15),
(6, 'Greater Flamingo', 'Gujarat', 'Winter', 20),
(7, 'Spotted RedShunk', 'Gujarat', 'Winter', 25),
(8, 'Asiatic Sparrow Hawk', 'Tamilnadu', '4season', 2),
(9, 'Asiatic Sparrow Hawk', 'Tamilnadu', 'Winter', 3);

-- --------------------------------------------------------

--
-- Table structure for table `birddet`
--

CREATE TABLE IF NOT EXISTS `birddet` (
`id` int(5) NOT NULL,
  `Birdname` varchar(100) NOT NULL,
  `Count` int(5) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Season` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `birddet`
--

INSERT INTO `birddet` (`id`, `Birdname`, `Count`, `Date`, `State`, `Season`) VALUES
(1, 'Spotted RedShunk', 10, '24-03-2017', 'Tamilnadu', 'Winter'),
(2, 'Asiatic Sparrow Hawk', 2, '24-03-2017', 'Tamilnadu', 'Winter'),
(3, 'Asiatic Sparrow Hawk', 3, '24-03-2017', 'Manipur', 'Summer'),
(4, 'Pied Harrier', 10, '24-03-2017', 'Assam', 'Winter'),
(5, 'Asiatic Sparrow Hawk', 30, '24-03-2017', 'Goa', 'Winter'),
(6, 'Asiatic Sparrow Hawk', 89, '24-03-2017', 'Madhya Pradesh', 'Winter'),
(7, 'Asiatic Sparrow Hawk', 9, '24-03-2017', 'Uttar Pradesh', 'Winter'),
(8, 'Pied Harrier', 15, '25-03-2017', 'Karnataka', 'Winter'),
(9, 'Marsh Harrier', 5, '25-03-2017', 'Kerala', 'Winter'),
(10, 'Marsh Harrier', 8, '25-03-2017', 'Tamilnadu', 'Winter'),
(11, 'Long Billed Plover', 12, '25-03-2017', 'Chhattisgarh', 'Winter');

-- --------------------------------------------------------

--
-- Table structure for table `birddetails`
--

CREATE TABLE IF NOT EXISTS `birddetails` (
  `id` int(10) NOT NULL,
  `Birdname` varchar(100) NOT NULL,
  `Count` int(6) NOT NULL,
  `Date` varchar(12) NOT NULL,
  `State` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birddetails`
--

INSERT INTO `birddetails` (`id`, `Birdname`, `Count`, `Date`, `State`) VALUES
(5, 'Wood sandpiper', 10, '25-03-2017', 'Tamilnadu');

-- --------------------------------------------------------

--
-- Table structure for table `birds`
--

CREATE TABLE IF NOT EXISTS `birds` (
`ID` int(10) NOT NULL,
  `Birdsname` varchar(30) NOT NULL,
  `Season` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

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
(8, 'Yellow-breasted bunting', 'Winter'),
(9, 'Amur falco', 'Winter'),
(10, 'Asian brown flycatcher', 'Winter'),
(11, 'Asiatic sparrow hawk', 'Winter'),
(12, 'Pale harrier', 'Winter'),
(13, 'Marsh harrier', 'Winter'),
(14, 'Pied harrier', 'Winter'),
(15, 'Long billed plover', 'Winter'),
(16, 'Barau''s Petrel ', 'Summer'),
(17, 'Eurasian nightjar', 'Summer'),
(18, 'Flesh-footed shearwater ', 'Summer'),
(19, 'Jouanin''s petrel', 'Summer'),
(20, 'Persian shearwater', 'Summer'),
(21, 'Sooty falco', 'Summer'),
(22, 'Streaked shearwater', 'Summer'),
(23, ' Wedge-tailed Shearwater', 'Summer'),
(24, 'Nightjar', 'Summer'),
(25, 'Japanese sparrow hawk', 'Summer'),
(26, ' White-faced storm-petre', 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `birdsd`
--

CREATE TABLE IF NOT EXISTS `birdsd` (
  `id` int(5) NOT NULL,
  `Birdname` varchar(100) NOT NULL,
  `Count` int(5) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Month` varchar(100) NOT NULL,
  `Year` int(7) NOT NULL,
  `Season` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birdsd`
--

INSERT INTO `birdsd` (`id`, `Birdname`, `Count`, `State`, `City`, `Month`, `Year`, `Season`) VALUES
(1, 'Siberian crane', 21, 'Tamilnadu', 'Madurai', 'JAN', 2015, 'Winter'),
(1, 'Siberian crane', 45, 'Kerala', 'Allappuzha', 'JAN', 2015, 'Winter'),
(1, 'Siberian crane', 67, 'Tamilnadu', 'Madurai', 'JAN', 2016, 'Winter'),
(1, 'Siberian crane', 34, 'Tamilnadu', 'Madurai', 'JAN', 2017, 'Winter'),
(1, 'Siberian crane', 24, 'Kerala', 'Allappuzha', 'JAN', 2016, 'Winter'),
(1, 'Siberian crane', 24, 'Tamilnadu', 'Coimbatore', 'JAN', 2016, 'Winter'),
(1, 'Siberian crane', 12, 'Tamilnadu', 'Coimbatore', 'JAN', 2017, 'Winter'),
(1, 'Siberian crane', 88, 'Kerala', 'Allappuzha', 'JAN', 2017, 'Winter');

-- --------------------------------------------------------

--
-- Table structure for table `birdwatcher2017`
--

CREATE TABLE IF NOT EXISTS `birdwatcher2017` (
`id` int(10) NOT NULL,
  `Birdname` varchar(30) NOT NULL,
  `Location1` varchar(20) NOT NULL,
  `Location2` varchar(20) NOT NULL,
  `Season` varchar(20) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(10) NOT NULL,
  `Count` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `birdwatcher2017`
--

INSERT INTO `birdwatcher2017` (`id`, `Birdname`, `Location1`, `Location2`, `Season`, `Month`, `Year`, `Count`) VALUES
(1, 'Siberian Crane', 'Bihar', 'Patna', 'Winter', 'January', 2017, 10),
(2, 'Greater flammingo', 'Gujarat', 'Ahmedabad', 'Winter', 'December', 2015, 15),
(3, 'Common teal', 'Kashmir', 'Bandi pora', 'Winter', 'February', 2017, 12),
(4, 'Yellow wagtail', 'Kashmir', 'Anantnag', 'Winter', 'February', 2016, 14),
(5, 'Wood sandpiper', 'Kashmir', 'Bandi pora', 'Winter', 'January', 2017, 15),
(6, 'Eurasian wigeon', 'Assam', 'Baksa', 'Winter', 'December', 2014, 12),
(7, 'Spotted redchunk', 'Gujarat', 'Ahmedabad', 'Winter', 'December', 2014, 14),
(8, 'Yellow-breasted Bunting', 'Assam', 'Baksa', 'Winter', 'February', 2017, 15),
(9, 'Amur falco', 'Assam', 'Barpeta', 'Winter', 'February', 2015, 14),
(10, 'Asian brown flycatcher', 'Meghalaya', 'Shillong', 'Winter', 'February', 2015, 13),
(11, 'Asiatic sparrow hawk', 'Kerala', 'Idukki', 'Winter', 'December', 2014, 15),
(12, 'Pale harrier', 'Rajasthan', 'Ajmer', 'Winter', 'December', 2014, 10),
(13, 'Marsh Harrier', 'Rajasthan', 'Alwar', 'Winter', 'February', 2017, 12),
(14, 'Pied harrier', 'Kerala', 'Allappuzha', 'Winter', 'January', 2017, 13),
(15, 'Long billed plover', 'Manipur', 'Bishnupur', 'Winter', 'December', 2015, 19),
(16, 'Barau''s petrel', 'Tamil nadu', 'Madurai', 'Summer', 'March', 2017, 8),
(17, 'Eurasian nightjar', 'Maharashtra', 'Mumbai', 'Summer', 'May', 2016, 11),
(18, 'Flesh-footed shearwater', 'Tamil nadu', 'Coimbatore', 'Summer', 'May', 2016, 12),
(19, 'Jouanin''s petrel', 'Tamil nadu', 'Madurai', 'Summer', 'March', 2017, 14),
(20, 'Persian Shearwater', 'Maharashtra', 'Nagpur', 'Summer', 'May', 2016, 8),
(21, 'Sooty falco', 'Rajasthan', 'Ajmer', 'Summer', 'April', 2016, 20),
(22, 'Streaked Shearwater', 'Tamil nadu', 'Coimbatore', 'Summer', 'April', 2016, 15),
(23, 'Wedge-tailed shearwater', 'Kearala', 'Idukki', 'Summer', 'April', 2015, 15),
(24, 'Nightjar', 'Maharashtra', 'Mumbai', 'Summer', 'March', 2017, 11),
(25, 'Japanese sparrow hawk', 'Kerala', 'Alappuzha', 'Summer', 'April', 2015, 19),
(26, ' White-faced Storm-Petre', 'Lakshadweep', 'Lakshadweep', 'Summer', 'March', 2017, 18),
(27, 'Siberian Crane', 'Bihar', 'Patna', 'Winter', 'April', 2015, 40);

-- --------------------------------------------------------

--
-- Table structure for table `userdet`
--

CREATE TABLE IF NOT EXISTS `userdet` (
`id` int(5) NOT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Emailid` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Phonenumber` bigint(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userdet`
--

INSERT INTO `userdet` (`id`, `Firstname`, `Lastname`, `Emailid`, `Username`, `Password`, `State`, `City`, `Organization`, `Phonenumber`) VALUES
(1, 'Shobana', 'Devi', 'shobanak16115@gmail.com', 'shobana16', 'shobana', 'TamilNadu', 'Anandhpure', 'Velammal College of Engineering and Technology', 9677962227);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bird`
--
ALTER TABLE `bird`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birddet`
--
ALTER TABLE `birddet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birds`
--
ALTER TABLE `birds`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `birdwatcher2017`
--
ALTER TABLE `birdwatcher2017`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdet`
--
ALTER TABLE `userdet`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bird`
--
ALTER TABLE `bird`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `birddet`
--
ALTER TABLE `birddet`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `birds`
--
ALTER TABLE `birds`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `birdwatcher2017`
--
ALTER TABLE `birdwatcher2017`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `userdet`
--
ALTER TABLE `userdet`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
