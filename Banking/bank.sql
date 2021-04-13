-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 06:30 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Abhishek', 'abhishekgowda16@gmail.com', 30000),
(4, 'Ankit', 'Ankitshah15@gmail.com', 40000),
(8, 'Rishabh', 'Rishabhkalai421@gmail.com', 40000),
(5, 'Ritu', 'Ritu234@gmail.com', 30000),
(6, 'Ruhi', 'Ruhishah235@gmail.com', 40000),
(7, 'Shruti', 'Shruthiv124@gmail.com', 35000),
(2, 'Siddharth', 'siddharthsundar16@gmail.com', 25000),
(3, 'Vishnu', 'vishnu13@gmail.com', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transferdate` date NOT NULL,
  `transfertime` time NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`transferdate`, `transfertime`, `sender`, `receiver`, `amount`) VALUES
('2021-04-09', '04:09:20', 'Siddharth', 'Rishabh', 5000),
('2021-04-09', '06:28:27', 'Siddharth', 'Siddharth', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD UNIQUE KEY `email` (`email`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
