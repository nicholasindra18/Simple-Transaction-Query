-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 04:01 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aguitar`
--

-- --------------------------------------------------------

--
-- Table structure for table `msbrand`
--

CREATE TABLE `msbrand` (
  `BrandID` char(5) NOT NULL,
  `BrandName` varchar(50) NOT NULL
) ;

--
-- Dumping data for table `msbrand`
--

INSERT INTO `msbrand` (`BrandID`, `BrandName`) VALUES
('BR001', 'Gibson'),
('BR002', 'Fender'),
('BR003', 'Martin'),
('BR004', 'Taylor'),
('BR005', 'PRS'),
('BR006', 'Guild'),
('BR007', 'G&L'),
('BR008', 'Rickenbacker'),
('BR009', 'Gretsch'),
('BR010', 'Jackson'),
('BR011', 'Godin'),
('BR012', 'Schecter'),
('BR013', 'Charvel'),
('BR014', 'Yamaha'),
('BR015', 'Cort');

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustomerDOB` date NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `CustomerGender` varchar(6) NOT NULL,
  `CustomerAddress` varchar(100) NOT NULL
) ;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerName`, `CustomerDOB`, `CustomerEmail`, `CustomerGender`, `CustomerAddress`) VALUES
('CU001', 'Davey Camous', '1998-09-07', 'dcamous0@globo.com', 'Male', '100 Rose Street'),
('CU002', 'Etti Boulde', '1998-03-04', 'eboulde1@123-reg.co.uk', 'Female', '2 Poppy Street '),
('CU003', 'Franny Malham', '2008-04-21', 'fmalham2@oracle.com', 'Female', '1 Viola Street'),
('CU004', 'Jamie Lescop', '2007-04-06', 'jlescop3@go.com', 'Female', '3 Orchid Street'),
('CU005', 'Joycelin Cluckie', '2001-08-18', 'jcluckie4@163.com', 'Female', '124 Sakura Street'),
('CU006', 'Laney MacClure', '1995-10-30', 'lmacclure5@oaic.gov.au', 'Male', '66 Foxglove Street'),
('CU007', 'Glen Espinazo', '1992-09-23', 'gespinazo6@t.co', 'Female', '51 Cosmos Street'),
('CU008', 'Kelly Ege', '1991-04-25', 'kege7@exblog.jp', 'Female', '22 Tulip Street'),
('CU009', 'Minny Hallin', '1998-11-29', 'mhallin8@admin.ch', 'Female', '83 Lilac Street'),
('CU010', 'Hamlen Foystone', '1992-05-21', 'hfoystone9@eepurl.com', 'Male', '2548 Lotus Street'),
('CU011', 'Agace Humfrey', '1993-06-28', 'ahumfreya@vk.com', 'Female', '99 Hibiscus Street'),
('CU012', 'Oswald Silver', '1999-12-15', 'osilverb@mayoclinic.com', 'Male', '34 Dandelion Street'),
('CU013', 'Adolphus O\'Donegan', '2003-04-26', 'aodoneganc@nifty.com', 'Male', '27 Jasmine Street'),
('CU014', 'Josias Ballentime', '1999-12-04', 'jballentimed@nymag.com', 'Male', '11 Peony Street'),
('CU015', 'Trixy Kaines', '2007-09-22', 'tkainese@soundcloud.com', 'Female', '77 Dahlia Street');

-- --------------------------------------------------------

--
-- Table structure for table `msguitar`
--

CREATE TABLE `msguitar` (
  `GuitarID` char(5) NOT NULL,
  `BrandID` char(5) NOT NULL,
  `GuitarType` varchar(20) NOT NULL,
  `GuitarName` varchar(20) NOT NULL,
  `GuitarPrice` int(10) NOT NULL
) ;

--
-- Dumping data for table `msguitar`
--

INSERT INTO `msguitar` (`GuitarID`, `BrandID`, `GuitarType`, `GuitarName`, `GuitarPrice`) VALUES
('GU001', 'BR001', 'Classic', 'Muddywood', 59),
('GU002', 'BR002', 'Acoustic', 'Lucy', 100),
('GU003', 'BR003', 'Electric', 'Lucile', 45),
('GU004', 'BR004', 'Bass', '0001', 10),
('GU005', 'BR005', 'Classic', 'Blackie', 33),
('GU006', 'BR006', 'Acoustic', 'Old Black', 77),
('GU007', 'BR007', 'Electric', 'Trigger', 28),
('GU008', 'BR008', 'Bass', 'The Duck', 40),
('GU009', 'BR009', 'Classic', 'The Catfish', 79),
('GU010', 'BR010', 'Acoustic', 'CT-001', 129);

-- --------------------------------------------------------

--
-- Table structure for table `msstaff`
--

CREATE TABLE `msstaff` (
  `StaffID` char(5) NOT NULL,
  `StaffName` varchar(50) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffEmail` varchar(30) NOT NULL,
  `StaffSalary` int(10) NOT NULL,
  `StaffGender` varchar(6) NOT NULL,
  `StaffPosition` varchar(30) NOT NULL
) ;

--
-- Dumping data for table `msstaff`
--

INSERT INTO `msstaff` (`StaffID`, `StaffName`, `StaffDOB`, `StaffEmail`, `StaffSalary`, `StaffGender`, `StaffPosition`) VALUES
('ST001', 'Bar Andras', '1997-09-08', 'bandrasw@list-manage.com', 3000000, 'Male', 'Marketing'),
('ST002', 'Onfroi Dallan', '1992-07-25', 'odallanx@arstechnica.com', 4000000, 'Male', 'Cashier'),
('ST003', 'Duffie Dumbrill', '2001-07-09', 'ddumbrilly@acquirethisStaffNam', 3500000, 'Male', 'Cashier'),
('ST004', 'Rickert Skin', '2000-04-24', 'rskinz@omniture.com', 6000000, 'Male', 'Assitant Store Manager'),
('ST005', 'Kliment Isakovic', '2008-08-12', 'kisakovic10@amazon.de', 4500000, 'Male', 'Inventory'),
('ST006', 'Oberon Pepys', '2000-07-06', 'opepys11@shutterfly.com', 3200000, 'Male', 'Customer Service'),
('ST007', 'Gothart Fellowes', '1999-09-05', 'gfellowes12@marriott.com', 3300000, 'Male', 'Customer Service'),
('ST008', 'Job Starsmore', '1994-04-09', 'jstarsmore13@theatlantic.com', 3100000, 'Male', 'Cashier'),
('ST009', 'Fiann Tuffrey', '1995-03-14', 'ftuffrey14@soundcloud.com', 10000000, 'Female', 'Manager'),
('ST010', 'Camila Corthes', '2004-06-10', 'ccorthes15@tinyurl.com', 4200000, 'Female', 'Merchandising'),
('ST011', 'Nicol Lascell', '2008-06-20', 'nlascell16@digg.com', 3200000, 'Female', 'Marketing'),
('ST012', 'Koo Chaters', '1999-04-14', 'kchaters17@google.de', 3200000, 'Female', 'Merchandising'),
('ST013', 'Clovis Wilshin', '1991-07-08', 'cwilshin18@bloglovin.com', 2900000, 'Female', 'Assistant Merchandising'),
('ST014', 'Basilius Janney', '2001-10-12', 'bjanney19@alibaba.com', 4200000, 'Male', 'Accounting'),
('ST015', 'Walden Dannell', '2008-06-17', 'wdannell1i@mozilla.com', 3100000, 'Male', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(5) NOT NULL,
  `GuitarID` char(5) NOT NULL,
  `Quantity` int(10) NOT NULL
) ;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionID`, `GuitarID`, `Quantity`) VALUES
('TR001', 'GU001', 1),
('TR001', 'GU004', 23),
('TR001', 'GU009', 1),
('TR001', 'GU010', 3),
('TR002', 'GU003', 4),
('TR002', 'GU004', 100),
('TR003', 'GU004', 10),
('TR004', 'GU005', 2),
('TR004', 'GU006', 7),
('TR004', 'GU007', 5),
('TR005', 'GU001', 6),
('TR005', 'GU007', 7),
('TR006', 'GU006', 5),
('TR007', 'GU002', 2),
('TR007', 'GU010', 1),
('TR008', 'GU008', 12),
('TR009', 'GU008', 16),
('TR009', 'GU010', 3),
('TR011', 'GU002', 2),
('TR012', 'GU003', 15),
('TR012', 'GU007', 10),
('TR013', 'GU008', 20),
('TR014', 'GU002', 4),
('TR015', 'GU002', 8),
('TR015', 'GU005', 9);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(5) NOT NULL,
  `StaffID` char(5) DEFAULT NULL,
  `CustomerID` char(5) DEFAULT NULL,
  `TransactionDate` date NOT NULL
) ;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `StaffID`, `CustomerID`, `TransactionDate`) VALUES
('TR001', 'ST002', 'CU001', '2010-02-27'),
('TR002', 'ST002', 'CU002', '2015-10-01'),
('TR003', 'ST003', 'CU006', '2015-06-14'),
('TR004', 'ST008', 'CU015', '2011-12-31'),
('TR005', 'ST015', 'CU014', '2011-12-25'),
('TR006', 'ST001', 'CU012', '2020-08-03'),
('TR007', 'ST001', 'CU007', '2021-10-12'),
('TR008', 'ST009', 'CU008', '2019-08-19'),
('TR009', 'ST004', 'CU011', '2018-01-01'),
('TR010', 'ST011', 'CU003', '2016-09-11'),
('TR011', 'ST011', 'CU004', '2012-12-12'),
('TR012', 'ST004', 'CU005', '2013-11-20'),
('TR013', 'ST010', 'CU009', '2014-07-14'),
('TR014', 'ST012', 'CU013', '2017-08-17'),
('TR015', 'ST002', 'CU007', '2022-11-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msbrand`
--
ALTER TABLE `msbrand`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `msguitar`
--
ALTER TABLE `msguitar`
  ADD PRIMARY KEY (`GuitarID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `msstaff`
--
ALTER TABLE `msstaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`,`GuitarID`),
  ADD KEY `GuitarID` (`GuitarID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msguitar`
--
ALTER TABLE `msguitar`
  ADD CONSTRAINT `msguitar_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `msbrand` (`BrandID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`GuitarID`) REFERENCES `msguitar` (`GuitarID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `msstaff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactionheader_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
