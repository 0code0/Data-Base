-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2016 at 08:21 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stockmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `BuildingId` int(11) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE IF NOT EXISTS `building` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='			';

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE IF NOT EXISTS `parts` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `RackID` int(11) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `SerialNo` varchar(45) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhoneNo` varchar(45) DEFAULT NULL,
  `Identified` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Image` varchar(45) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE IF NOT EXISTS `quantity` (
  `ID` int(11) NOT NULL,
  `Count` varchar(45) DEFAULT NULL,
  `PartsId` int(11) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `BlockId` int(11) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `used`
--

CREATE TABLE IF NOT EXISTS `used` (
  `ID` int(11) NOT NULL,
  `PeopleId` int(11) DEFAULT NULL,
  `QuantityId` int(11) DEFAULT NULL,
  `IsApproved` tinyint(4) DEFAULT NULL,
  `IsDeleted` tinyint(4) DEFAULT NULL,
  `CreatedOn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`), ADD KEY `Block_Building_idx` (`BuildingId`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`), ADD KEY `Parts_Rack_idx` (`RackID`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`), ADD KEY `Quanity_Parts_idx` (`PartsId`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
  ADD PRIMARY KEY (`Id`), ADD UNIQUE KEY `Id_UNIQUE` (`Id`), ADD KEY `Rack_Block_idx` (`BlockId`);

--
-- Indexes for table `used`
--
ALTER TABLE `used`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_UNIQUE` (`ID`), ADD KEY `Used_People_idx` (`PeopleId`), ADD KEY `Used_Quantity_idx` (`QuantityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `used`
--
ALTER TABLE `used`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `block`
--
ALTER TABLE `block`
ADD CONSTRAINT `Block_Building` FOREIGN KEY (`BuildingId`) REFERENCES `building` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
ADD CONSTRAINT `Parts_Rack` FOREIGN KEY (`RackID`) REFERENCES `rack` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `quantity`
--
ALTER TABLE `quantity`
ADD CONSTRAINT `Quanity_Parts` FOREIGN KEY (`PartsId`) REFERENCES `parts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rack`
--
ALTER TABLE `rack`
ADD CONSTRAINT `Rack_Block` FOREIGN KEY (`BlockId`) REFERENCES `block` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `used`
--
ALTER TABLE `used`
ADD CONSTRAINT `Used_People` FOREIGN KEY (`PeopleId`) REFERENCES `people` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `Used_Quantity` FOREIGN KEY (`QuantityId`) REFERENCES `quantity` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
