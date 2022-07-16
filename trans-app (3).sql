-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 03:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

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
-- Table structure for table `applyforride`
--

CREATE TABLE `applyforride` (
  `id` int(4) NOT NULL,
  `interCity` varchar(1) NOT NULL,
  `outsideCity` varchar(1) NOT NULL,
  `from` int(20) NOT NULL,
  `to` varchar(20) NOT NULL,
  `withCompany` varchar(1) NOT NULL,
  `alone` varchar(1) NOT NULL,
  `numberOfadult` int(50) NOT NULL,
  `numberOfchildren` int(50) NOT NULL,
  `numberOfinfant` int(50) NOT NULL,
  `checkIndate` varchar(15) DEFAULT NULL,
  `checkOut` varchar(15) DEFAULT NULL,
  `returnDate` varchar(15) DEFAULT NULL,
  `returnTime` varchar(15) DEFAULT NULL,
  `willYoubebringingpets` varchar(1) DEFAULT NULL,
  `howMany` int(20) DEFAULT NULL,
  `dailyRoutine` varchar(1) DEFAULT NULL,
  `car` varchar(1) DEFAULT NULL,
  `bus` varchar(1) DEFAULT NULL,
  `luxirious` varchar(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `phoneNo` varchar(14) NOT NULL,
  `NIN` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `rememberMe` varchar(1) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `fullName`, `phoneNo`, `NIN`, `address`, `password`, `rememberMe`, `img_url`, `created_at`, `uploaded_at`) VALUES
(1, 'zainab yakub', '12345678', '08141714172', '14082002', 'zaria road', '', '', '2022-07-01 15:58:44', '2022-07-01 15:58:44'),
(2, 'Yair', '09018661696', '21212121', 'Kano', '12345', '', '', '2022-07-01 16:14:10', '2022-07-01 16:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `publish_ride`
--

CREATE TABLE `publish_ride` (
  `CarName` varchar(100) NOT NULL,
  `LicencePlate` varchar(100) NOT NULL,
  `Caryear` varchar(100) NOT NULL,
  `CarColor` varchar(100) NOT NULL,
  `Carmodel` varchar(100) NOT NULL,
  `Totalseats` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registercar`
--

CREATE TABLE `registercar` (
  `id` int(11) NOT NULL,
  `carName` varchar(100) NOT NULL,
  `carModel` varchar(100) NOT NULL,
  `carImage` varchar(100) NOT NULL,
  `carSeats` varchar(100) NOT NULL,
  `carColor` varchar(100) NOT NULL,
  `carYear` varchar(100) NOT NULL,
  `Platenumber` varchar(100) NOT NULL,
  `driver_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registercar`
--

INSERT INTO `registercar` (`id`, `carName`, `carModel`, `carImage`, `carSeats`, `carColor`, `carYear`, `Platenumber`, `driver_id`) VALUES
(1, 'audi', 'A8', '', '2', 'blue', '2020', 'NRS-23jk', '1');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `account_type` varchar(50) NOT NULL,
  `id` int(4) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `licenseNo` int(12) NOT NULL,
  `licenseExpiryDate` int(10) DEFAULT NULL,
  `NIN` varchar(11) NOT NULL,
  `currentAddress` varchar(500) NOT NULL,
  `phoneNo` varchar(14) NOT NULL,
  `passWord` varchar(50) NOT NULL,
  `rememberMe` varchar(1) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Age` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`account_type`, `id`, `fullName`, `licenseNo`, `licenseExpiryDate`, `NIN`, `currentAddress`, `phoneNo`, `passWord`, `rememberMe`, `img_url`, `created_at`, `uploaded_at`, `Age`) VALUES
('driver', 1, 'zainab yakub', 1212134, 2022, '21212121', 'zaria road', '08141714172', '123456', '', '', '2022-07-06 09:10:16', '2022-07-06 09:10:16', '20'),
('passenger', 2, 'Yair', 0, 0, '567890', 'Kano', '07032', '123456', '', '', '2022-07-06 09:16:33', '2022-07-06 09:16:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `requestride`
--

CREATE TABLE `requestride` (
  `trip_from` varchar(50) NOT NULL,
  `trip_to` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `Seat` varchar(100) NOT NULL,
  `nextOfKinPhone` varchar(14) NOT NULL,
  `request_id` int(11) NOT NULL,
  `Trip_id` varchar(100) NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestride`
--

INSERT INTO `requestride` (`trip_from`, `trip_to`, `date`, `time`, `Seat`, `nextOfKinPhone`, `request_id`, `Trip_id`, `user_id`) VALUES
('kano', 'Abuja', '2022-06-25', '08:03:00', '3', '080080808', 1, '', ''),
('', '', '0000-00-00', '00:00:00', '0', '', 2, '', ''),
('kano', 'kaduna', '2022-06-17', '02:00:00', '3', '3456789099786', 3, '', ''),
('kano', 'kaduna', '2022-06-30', '12:47:00', '2', '567890', 4, '', ''),
('Yobe', 'Kano', '2022-07-04', '05:29:00', '', '3456789099786', 5, '', ''),
('lago', 'kn', '2022-07-06', '09:40:00', '2', '08141714172', 6, '', ''),
('', '', '2022-07-06', '09:40:00', '', '', 7, '', ''),
('', '', '2022-07-06', '09:40:00', '', '', 8, '12', '4'),
('kano', 'kaduna', '2022-07-05', '04:13:00', '3', '07066154113', 9, 'undefined', ''),
('kano', 'kaduna', '2022-07-05', '04:13:00', '2', '07066154113', 10, 'undefined', '2'),
('kano', 'kaduna', '2022-07-05', '04:13:00', '3', '07066154113', 11, 'undefined', '2'),
('kano', 'kaduna', '2022-07-05', '04:13:00', '2', '07066154113', 12, 'undefined', '2');

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
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `Trip_from` varchar(100) NOT NULL,
  `Trip_to` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `availableSeats` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `car_id` varchar(50) NOT NULL,
  `driver_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `Trip_from`, `Trip_to`, `date`, `time`, `availableSeats`, `price`, `car_id`, `driver_id`) VALUES
(1, 'kano', 'kaduna', '2022-07-05', '04:13:00', '4', '2000', '', '1'),
(2, 'zaria', 'kano', '2022-07-15', '05:58:00', '5', '13000', '', '1');

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

--
-- Indexes for dumped tables
--

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
-- Indexes for table `registercar`
--
ALTER TABLE `registercar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestride`
--
ALTER TABLE `requestride`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registercar`
--
ALTER TABLE `registercar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requestride`
--
ALTER TABLE `requestride`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
