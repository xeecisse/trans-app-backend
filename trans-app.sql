-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 01:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trans-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `driverregistration`
--

CREATE TABLE `driverregistration` (
  `id` int(4) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `licenseNo` int(12) NOT NULL,
  `licenseExpiryDate` int(10) DEFAULT NULL,
  `NIN` varchar(11) NOT NULL,
  `currentAddress` varchar(500) NOT NULL,
  `phoneNo` int(14) NOT NULL,
  `passWord` int(50) NOT NULL,
  `rememberMe` varchar(1) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driverregistration`
--

INSERT INTO `driverregistration` (`id`, `fullName`, `licenseNo`, `licenseExpiryDate`, `NIN`, `currentAddress`, `phoneNo`, `passWord`, `rememberMe`, `img_url`, `created_at`, `uploaded_at`) VALUES
(1, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:05:41', '2022-06-10 17:05:41'),
(2, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:05', '2022-06-10 17:07:05'),
(3, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:06', '2022-06-10 17:07:06'),
(4, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:06', '2022-06-10 17:07:06'),
(5, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:06', '2022-06-10 17:07:06'),
(6, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:06', '2022-06-10 17:07:06'),
(7, '', 0, 0, '', '', 0, 0, '', '', '2022-06-10 17:07:46', '2022-06-10 17:07:46'),
(8, 'dgfhjkl;', 0, 0, '456789p0[', 'dgfhjkl;', 0, 2022, '', '', '2022-06-10 17:09:55', '2022-06-10 17:09:55'),
(9, 'dgfhjkl;', 0, 0, '456789p0[', 'dgfhjkl;', 0, 2022, '', '', '2022-06-10 17:09:58', '2022-06-10 17:09:58'),
(10, 'salim muhammad', 356789, 34567890, '45678990', '5677889900', 0, 2022, '', '', '2022-06-14 05:34:59', '2022-06-14 05:34:59'),
(11, 'salim muhammad', 356789, 34567890, '45678990', '5677889900', 0, 2022, '', '', '2022-06-14 05:41:01', '2022-06-14 05:41:01'),
(12, 'adam ', 1234, 34567890, '5689', '45579', 0, 2022, '', '', '2022-06-14 05:41:01', '2022-06-14 05:41:01'),
(13, 'adam ', 1234, 34567890, '5689', '45579', 0, 2022, '', '', '2022-06-14 05:41:01', '2022-06-14 05:41:01'),
(14, 'salim muhammad', 356789, 34567890, '45678990', '5677889900', 0, 2022, '', '', '2022-06-14 05:41:01', '2022-06-14 05:41:01'),
(15, 'adam ', 5689, 1234, '34567890-', '45579', 0, 2022, '', '', '2022-06-14 05:41:10', '2022-06-14 05:41:10'),
(16, 'adam ', 5689, 1234, '34567890-', '45579', 0, 2022, '', '', '2022-06-13 09:48:46', '2022-06-13 09:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `id` int(4) NOT NULL,
  `phoneNo` int(14) NOT NULL,
  `password` int(20) NOT NULL,
  `rememberMe` varchar(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(4) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `phoneNo` int(14) NOT NULL,
  `NIN` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` int(20) NOT NULL,
  `rememberMe` varchar(1) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `fullName`, `phoneNo`, `NIN`, `address`, `password`, `rememberMe`, `img_url`, `created_at`, `uploaded_at`) VALUES
(1, 'Saeed Ahmad Abubakar', 12345, 2147483647, '08033302906', 0, '', '', '2022-06-10 17:02:47', '2022-06-10 17:02:47'),
(2, 'halima hadi', 34567890, 88743432, '23456788', 0, '', '', '2022-06-14 05:33:41', '2022-06-14 05:33:41'),
(3, 'halima hadi', 34567890, 88743432, '23456788', 0, '', '', '2022-06-14 05:33:47', '2022-06-14 05:33:47'),
(4, '', 0, 0, '', 0, '', '', '2022-06-13 10:10:21', '2022-06-13 10:10:21'),
(5, 'hadiza', 0, 7890, '567890', 0, '', '', '2022-06-13 10:14:23', '2022-06-13 10:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(4) NOT NULL,
  `from` varchar(15) NOT NULL,
  `to` varchar(15) NOT NULL,
  `destination` varchar(15) NOT NULL,
  `noOfpassengers` int(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vechile_registration`
--

CREATE TABLE `vechile_registration` (
  `id` int(4) NOT NULL,
  `meke_name` int(4) NOT NULL,
  `meke_id` int(4) NOT NULL,
  `engine_no` varchar(10) NOT NULL,
  `model` varchar(20) NOT NULL,
  `model_year` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `plate_number` varchar(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL DEFAULT 'bus',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driverregistration`
--
ALTER TABLE `driverregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginform`
--
ALTER TABLE `loginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechile_registration`
--
ALTER TABLE `vechile_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driverregistration`
--
ALTER TABLE `driverregistration`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vechile_registration`
--
ALTER TABLE `vechile_registration`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
