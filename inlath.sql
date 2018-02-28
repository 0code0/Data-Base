-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2017 at 01:10 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inlath`
--

-- --------------------------------------------------------

--
-- Table structure for table `legendscategory`
--

CREATE TABLE IF NOT EXISTS `legendscategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `IsApproved` varchar(45) DEFAULT NULL,
  `IsDeleted` varchar(45) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legendscategory`
--

INSERT INTO `legendscategory` (`Id`, `Name`, `IsApproved`, `IsDeleted`, `CreatedOn`, `CreatedBy`) VALUES
(1, 'jaswinder Singh', 'true', 'false', 'Mon Feb 06 14:30:38 IST 2017', 'Admin'),
(2, 'jaswinder Singh', 'true', 'false', 'Mon Feb 06 15:04:12 IST 2017', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `legendsdetail`
--

CREATE TABLE IF NOT EXISTS `legendsdetail` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Born` varchar(45) DEFAULT NULL,
  `Detail` longtext,
  `FamilyDetail` mediumtext,
  `ImageUrl` varchar(450) DEFAULT NULL,
  `MoreDetailUrl` varchar(500) DEFAULT NULL,
  `IsApproved` varchar(45) DEFAULT NULL,
  `IsDeleted` varchar(45) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legendsdetail`
--

INSERT INTO `legendsdetail` (`Id`, `Name`, `Born`, `Detail`, `FamilyDetail`, `ImageUrl`, `MoreDetailUrl`, `IsApproved`, `IsDeleted`, `CreatedOn`, `CreatedBy`, `CategoryId`) VALUES
(1, 'jaswinder', 'bhbjhbjhbj', 'item.getString()item.getString()item.getString()', 'item.getString()item.getString()item.getString()', '/INLATH/Admin/Uploads/Untitled.png', 'item.getString()', 'true', 'false', 'Mon Feb 06 16:19:28 IST 2017', 'Admin', 1),
(2, 'Name', 'fdsfsfsf', 'jaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singh', 'jaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singhjaswinder Singh', NULL, 'http://localhost:8080/INLATH/Admin/ManageLegendsDetail.jsp?Id=2&Show=Update', 'true', 'false', 'Mon Feb 06 17:24:58 IST 2017', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `randd`
--

CREATE TABLE IF NOT EXISTS `randd` (
  `Id` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Detail` varchar(45) DEFAULT NULL,
  `Url` varchar(45) DEFAULT NULL,
  `IsApproved` varchar(45) DEFAULT NULL,
  `IsDeleted` varchar(45) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `LegendsDetailId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `legendscategory`
--
ALTER TABLE `legendscategory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `legendsdetail`
--
ALTER TABLE `legendsdetail`
  ADD PRIMARY KEY (`Id`), ADD UNIQUE KEY `Name_UNIQUE` (`Name`), ADD KEY `legendsCategoryLegendDetail_idx` (`CategoryId`);

--
-- Indexes for table `randd`
--
ALTER TABLE `randd`
  ADD PRIMARY KEY (`Id`), ADD KEY `randdLegend_idx` (`LegendsDetailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `legendscategory`
--
ALTER TABLE `legendscategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `legendsdetail`
--
ALTER TABLE `legendsdetail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `randd`
--
ALTER TABLE `randd`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `legendsdetail`
--
ALTER TABLE `legendsdetail`
ADD CONSTRAINT `legendsCategoryLegendDetail` FOREIGN KEY (`CategoryId`) REFERENCES `legendscategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `randd`
--
ALTER TABLE `randd`
ADD CONSTRAINT `randdLegend` FOREIGN KEY (`LegendsDetailId`) REFERENCES `legendsdetail` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
