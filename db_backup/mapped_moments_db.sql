-- phpMyAdmin SQL Dump
-- version 4.3.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2015 at 09:42 PM
-- Server version: 5.5.42-MariaDB
-- PHP Version: 5.5.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mapped_moments_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `moments`
--

CREATE TABLE IF NOT EXISTS `moments` (
  `id_moment` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext,
  `date_time` datetime DEFAULT NULL,
  `latitude` float(10,7) NOT NULL,
  `longitude` float(10,7) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `search` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moments`
--

INSERT INTO `moments` (`id_moment`, `title`, `description`, `date_time`, `latitude`, `longitude`, `last_modified`, `search`) VALUES
(1, 'Birth of Mapped Moments', NULL, NULL, 53.6196327, -113.5427246, '2015-04-05 07:45:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moments`
--
ALTER TABLE `moments`
  ADD PRIMARY KEY (`id_moment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moments`
--
ALTER TABLE `moments`
  MODIFY `id_moment` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
