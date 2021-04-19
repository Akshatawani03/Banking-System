-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 11:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(22, 'Vaishnavi Wani', 'Soham More', 677, '2021-04-19 12:02:29'),
(23, 'Sumit Sonavne', 'Sakshi Dudhal', 34, '2021-04-19 12:20:22'),
(24, 'Ritika Todankar', 'Akshata Wani', 560, '2021-04-19 12:44:26'),
(25, 'Tejas Wani', 'Vaishnavi Wani', 345, '2021-04-19 12:44:57'),
(26, 'Vaishnavi Wani', 'Tejas Wani', 345, '2021-04-19 12:48:22'),
(27, 'Vaishnavi Wani', 'Tejas Wani', 3459, '2021-04-19 13:42:09'),
(28, 'Vaishnavi Wani', 'Tejas Wani', 2345, '2021-04-19 13:53:47'),
(29, 'Tejas Wani', 'Akshata Wani', 3455, '2021-04-19 14:02:21'),
(30, 'Vaishnavi Wani', 'Tejas Wani', 345, '2021-04-19 14:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Vaishnavi Wani', 'vhwani8@gmail.com', 6013),
(2, 'Sakshi Dudhal', 'sdudhal@gmail.com', 23982),
(3, 'Ritika Todankar', 'todankarr@gmail.com', 98142),
(4, 'Shubham Shirsekar', 'shirsekars@gmail.com', 20345),
(5, 'Maheshwari Patil', 'patilm@gmail.com', 10000),
(6, 'Tanaya Rawade', 'tanayarawade01@gmail.com', 45678),
(7, 'Akshata Wani', 'waniakshata@gmail.com', 7510),
(8, 'Soham More', 'sohammore18@gmail.com', 30717),
(9, 'Sumit Sonavne', 'sonavnes@gmail.com', 9401),
(10, 'Jaydeep Balsara', 'bjaydeep9@gmail.com', 9889),
(16, 'Tejas Wani', 'tejaswa02@gmail.com', 8364);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
