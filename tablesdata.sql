-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2023 at 08:05 PM
-- Server version: 5.7.32
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatab`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablesdata`
--

CREATE TABLE `tablesdata` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablesdata`
--

INSERT INTO `tablesdata` (`id`, `name`, `state`, `company`, `job`, `contact`) VALUES
(1, 'Eric Cartman', 'Colorado', 'Home Center', 'Security', '15699892'),
(2, 'Bart Simpson', 'Oregon', 'Cotsco', 'Security', '15699891'),
(3, 'Jane Doe', 'California', 'Wallmart', 'Cashier', '15699891'),
(4, 'John Doe', 'Colorado', 'Target', 'Greeter', '15699891'),
(5, 'John Smith', 'Oregon', 'Wallmart', 'Cashier', '13456789'),
(7, 'Jane Smith', 'Oregon', 'Target', 'Bagger', '12345678'),
(9, 'Rick Sanchez', 'California', 'Cotsco', 'Bagger', '11234567'),
(10, 'arslan', 'gorgia', 'blustream', 'devops', '031321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablesdata`
--
ALTER TABLE `tablesdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tablesdata`
--
ALTER TABLE `tablesdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
