-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 07:34 AM
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
(1, 'TT Table', 'Supreme Table Tennis', 40000, '2021-11-18 05:48:13'),
(2, 'Banana', '10', 250, '2021-11-18 08:55:55');

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
  MODIFY `UidKol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
