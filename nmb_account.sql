-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 02:46 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmb_account`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `account_number` int(14) NOT NULL,
  `date_of_creation` date NOT NULL,
  `currency` varchar(40) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `initial_balance` int(11) NOT NULL,
  `active_balance` int(11) NOT NULL,
  `debit_amount` int(11) NOT NULL,
  `credit_amount` int(11) NOT NULL,
  `debit_narration` varchar(255) NOT NULL,
  `credit_narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `account_number`, `date_of_creation`, `currency`, `mobile_number`, `branch`, `initial_balance`, `active_balance`, `debit_amount`, `credit_amount`, `debit_narration`, `credit_narration`) VALUES
(1, 2147483647, '2022-02-01', 'USD', 783499297, 'bulawayo', 0, 180, 150, 50, 'fees', 'deposit'),
(2, 2147483647, '2022-02-02', 'USD', 773392885, 'Harare', 500, 430, 450, 450, 'payments', 'savings');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `city`, `code`) VALUES
(1, 'Bulawayo', '258'),
(2, 'Harare', '789');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `NationalID` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Homeowner` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CreationDate` int(11) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `FirstName`, `LastName`, `Age`, `NationalID`, `Title`, `Homeowner`, `Email`, `CreationDate`, `Gender`, `Username`) VALUES
(1, 'Thando', 'Ngwabi', 24, '2126676A53', 'Software Developer', 'yes', 'thando10ngwabi@gmail.com', 20220201, 'Female', 'thando10'),
(2, 'tatenda', 'mbira', 30, '2126696s32', 'accountant', 'no', 'tatsmbira@gmail.com', 20220201, 'male', 'tats2022'),
(4, 'simba', 'chad', 32, '2126658a55', 'electrician', 'yes', 'simbachad@gmail.com', 1022022, 'male', 'simchad');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `withdrawal` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `charges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
