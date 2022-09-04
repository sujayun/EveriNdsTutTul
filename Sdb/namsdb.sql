-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 07:00 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `namsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `namtbl`
--

CREATE TABLE `namtbl` (
  `UidKol` int(11) NOT NULL,
  `TtlKol` varchar(100) NOT NULL,
  `DtlKol` varchar(1000) DEFAULT '0',
  `AmtKol` int(5) NOT NULL,
  `TymKol` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `namtbl`
--

INSERT INTO `namtbl` (`UidKol`, `TtlKol`, `DtlKol`, `AmtKol`, `TymKol`) VALUES
(1, 'Apple', '5', 100, '2021-11-18 04:36:58'),
(2, 'Mango', '15', 100, '2021-11-18 05:48:13'),
(3, 'Banana', '10', 250, '2021-11-18 08:55:55'),
(4, 'Orange', '1', 300, '2021-11-18 08:56:07'),
(5, 'TV', '1', 30000, '2021-11-18 08:57:07'),
(6, 'Mobile', '1', 30000, '2021-11-18 08:59:46'),
(7, 'Atta', '5', 500, '2021-11-18 08:59:46'),
(8, 'Red Chilli', '500', 50, '2021-11-18 08:59:46'),
(9, 'Green Chilli', '50', 20, '2021-11-18 08:59:46'),
(10, 'Pepper', '100', 50, '2021-11-18 08:59:46'),
(11, 'Chat Masala', '10', 150, '2021-11-18 08:59:46'),
(12, 'PaniPuri', '2', 50, '2021-11-18 08:59:46'),
(13, 'Masala Puri', '1', 25, '2021-11-18 08:59:46'),
(14, 'Balepuri', '1', 30, '2021-11-18 08:59:46'),
(15, 'SavPuri', '2', 50, '2021-11-18 08:59:46'),
(16, 'Maida', '1', 150, '2021-11-18 09:03:54'),
(17, 'Rice Floor', '1', 30, '2021-11-18 09:03:54'),
(18, 'Ragi Floor', '1', 50, '2021-11-18 09:03:54'),
(19, 'Amul Ice Creem', '500', 250, '2021-11-18 09:03:54'),
(20, 'Floor Cleaner', '250', 60, '2021-11-18 09:03:54'),
(21, 'Bread', '1', 30, '2021-11-18 09:03:54'),
(22, 'Veg Puff', '5', 150, '2021-11-18 09:03:54'),
(23, 'Egg Puff', '5', 250, '2021-11-18 09:03:54'),
(24, 'Veg Burgger', '5', 800, '2021-11-18 09:03:54'),
(25, 'Chicken Burger', '5', 1500, '2021-11-18 09:03:54'),
(26, 'Tomato', '1', 20, '2021-11-18 11:04:42'),
(27, 'AC', '1', 80000, '2021-11-18 12:24:18'),
(28, 'ORANGE', '1', 80, '2021-11-18 13:26:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `namtbl`
--
ALTER TABLE `namtbl`
  ADD PRIMARY KEY (`UidKol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `namtbl`
--
ALTER TABLE `namtbl`
  MODIFY `UidKol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
