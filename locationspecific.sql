-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 04:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locationspecific`
--

-- --------------------------------------------------------

--
-- Table structure for table `locationspecific`
--

CREATE TABLE `locationspecific` (
  `id` int(100) NOT NULL,
  `Birdname` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Count` int(10) NOT NULL,
  `Year` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationspecific`
--

INSERT INTO `locationspecific` (`id`, `Birdname`, `State`, `City`, `Count`, `Year`) VALUES
(1, 'Siberian crane', 'Bihar', 'Patna', 10, 2017),
(1, 'Siberian crane', 'Bihar', 'Patna', 12, 2016),
(1, 'Siberian crane', 'Bihar', 'Patna', 12, 2017),
(1, 'Siberian crane', 'Bihar', 'gaya', 22, 2017),
(1, 'Siberian crane', 'Bihar', 'Patna', 22, 2016),
(1, 'Siberian crane', 'Bihar', 'Gaya', 20, 2016),
(2, 'Greater flammingo', 'Gujarat', 'Ahmedabad', 29, 2017),
(2, 'Greater flammingo', 'Gujarat', 'Ahmedabad', 20, 2016),
(2, 'Greater flammingo', 'Gujarat', 'Surat', 15, 2017),
(2, 'Greater flammingo', 'Gujarat', 'Surat', 20, 2016),
(3, 'Common teal ', 'Kashmir', 'Bandi pora', 22, 2017),
(3, 'Common teal ', 'Kashmir', 'Bandi pora', 25, 2016),
(3, 'Common teal', 'Kashmir', 'Anantnag', 30, 2017),
(3, 'Common teal', 'Kashmir', 'Anantnag', 20, 2016),
(4, 'Yellow wagtail', 'Kashmir', 'Anantnag', 33, 2017),
(4, 'Yellow wagtail', 'Kashmir', 'Anantnag', 43, 2016),
(4, 'Yellow wagtail', 'Kashmir', 'Bandipora', 20, 2017),
(4, 'Yellow wagtail', 'Kashmir', 'Bandipora', 23, 2016),
(5, 'Wood sandpiper', 'Kashmir', 'Bandi pora', 25, 2017),
(5, 'Wood sandpiper', 'Kashmir', 'Bandi pora', 40, 2016),
(5, 'Wood sandpiper', 'Kashmir', 'Anantnag', 25, 2017),
(5, 'Wood sandpiper', 'Kashmir', 'Anantnag', 22, 2016),
(6, 'Eurasian wigeon', 'Assam', 'Baksa', 27, 2017),
(6, 'Eurasian wigeon', 'Assam', 'Baksa', 26, 2016),
(6, 'Eurasian wigeon', 'Assam', 'Barpeta', 31, 2017),
(6, 'Eurasian wigeon', 'Assam', 'Barpeta', 32, 2016),
(7, 'Spotted redchunk', 'Gujarat', 'Ahmedabad', 23, 2017),
(7, 'Spotted redchunk', 'Gujarat', 'Ahmedabad', 24, 2016),
(7, 'Spotted redchunk', 'Gujarat', 'Surat', 27, 2017),
(7, 'Spotted redchunk', 'Gujarat', 'Surat', 27, 2016),
(8, 'Yellow-breasted bunting', 'Assam', 'Baksa', 28, 2017),
(8, 'Yellow-breasted bunting', 'Assam', 'Baksa', 29, 2016),
(8, 'Yellow-breasted bunting', 'Assam', 'Barpeta', 29, 2017),
(8, 'Yellow-breasted bunting', 'Assam', 'Barpeta', 30, 2016),
(9, 'Amur falco', 'Assam', 'Barpeta', 33, 2017),
(9, 'Amur falco', 'Assam', 'Barpeta', 35, 2016),
(9, 'Amur falco', 'Assam', 'Baksha', 28, 2017),
(9, 'Amur falco', 'Assam', 'Baksha', 29, 2016),
(16, 'Barau\'s petrel', 'Tamilnadu', 'Madurai', 44, 2017),
(16, 'Barau\'s petrel', 'Tamilnadu', 'Madurai', 43, 2016),
(16, 'Barau\'s petrel', 'Tamilnadu', 'Coimbatore', 28, 2017),
(16, 'Barau\'s petrel', 'Tamilnadu', 'Coimbatore', 33, 2017),
(23, 'Wedge-tailed shearwater', 'Kearala', 'Idukki', 24, 2017),
(23, 'Wedge-tailed shearwater', 'Kearala', 'Idukki', 28, 2016),
(23, 'Wedge-tailed shearwater', 'Kerala', 'Alappuzha', 33, 2017),
(23, 'Wedge-tailed shearwater', 'Kerala', 'Alappuzha', 36, 2016),
(23, 'Wedge-tailed shearwater', 'Kerala', 'Idukki', 35, 2017),
(23, 'Wedge-tailed shearwater', 'Kerala', 'Idukki', 36, 2016);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
