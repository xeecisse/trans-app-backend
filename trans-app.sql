-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 03:32 PM
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
-- Table structure for table `deriverdetails`
--

CREATE TABLE `deriverdetails` (
  `id` int(4) NOT NULL,
  `fullName` varchar(40) NOT NULL,
  `age` varchar(2) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(40) NOT NULL,
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

--
-- Dumping data for table `publish_ride`
--

INSERT INTO `publish_ride` (`CarName`, `LicencePlate`, `Caryear`, `CarColor`, `Carmodel`, `Totalseats`) VALUES
('audi', 'ABC 123', '2019', 'black', 'DDFFF', '4'),
('', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registercar`
--

CREATE TABLE `registercar` (
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

INSERT INTO `registercar` (`carName`, `carModel`, `carImage`, `carSeats`, `carColor`, `carYear`, `Platenumber`, `driver_id`) VALUES
('Mercedes', 'E350', '', '4', 'Black', '2020', '', ''),
('audi', 'A8', '', '4', 'Black', '1', '', ''),
('honda', 'accord', '', '2', 'blue', '2020', '', ''),
('Mercedes', 'accord', '', '2', 'Black', '2020', '', ''),
('audir', 'E350', '', '4', 'Black', '2020', 'ABR-123-jk', ''),
('lombo', 'accord', '', '2', 'Black', '2020', 'ABR-123-jk', '3'),
('Mercedes', 'A8', '', '4', 'blue', '2020', 'ABR-123-jke', '3'),
('audi', 'E350', 'C:fakepathScreenshot (6).png', '4', 'blue', '2020', 'ABR-123-jke5', '6');

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
('', 1, 'zainab', 456789, 2022, '456789', 'zaria', '08765433', '123456', '', '', '2022-06-29 11:21:43', '2022-07-01 16:35:04', '20'),
('passenger', 2, 'babe', 0, 0, '567890', 'hooro', '070123456', '123456789', '', '', '2022-07-01 17:40:36', '2022-07-01 17:40:36', ''),
('driver', 3, 'honey', 123456, 2022, '21212121', 'hooro', '09018661696', '123456789', '', '', '2022-07-01 17:41:46', '2022-07-01 17:41:46', '15'),
('passenger', 4, 'aisha', 0, 0, '123456789', 'zaria road', '08037870335', '123456', '', '', '2022-07-01 21:08:20', '2022-07-01 21:08:20', ''),
('passenger', 5, 'bb', 0, 0, '11', 'kn', '07032', '12', '', '', '2022-07-02 12:11:00', '2022-07-02 12:11:00', ''),
('driver', 6, 'kk', 123456, 2022, '22', 'Kano', '08036', '12', '', '', '2022-07-02 12:13:36', '2022-07-02 12:13:36', '1'),
('driver', 7, '', 0, 0, '', '', '', '', '', '', '2022-07-02 12:13:52', '2022-07-02 12:13:52', ''),
('passenger', 8, 'zainab yakub', 0, 0, '21212121', 'zaria road', '09018661696', '12', '', '', '2022-07-02 13:25:06', '2022-07-02 13:25:06', ''),
('passenger', 9, 'ijr', 0, 0, 'hu', 'hu', 'uhuh', 'huh', '', '', '2022-07-02 13:29:16', '2022-07-02 13:29:16', '');

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
  `nextOfKinPhone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestride`
--

INSERT INTO `requestride` (`trip_from`, `trip_to`, `date`, `time`, `Seat`, `nextOfKinPhone`) VALUES
('kano', 'Abuja', '2022-06-25', '08:03:00', '3', '080080808'),
('', '', '0000-00-00', '00:00:00', '0', ''),
('kano', 'kaduna', '2022-06-17', '02:00:00', '3', '3456789099786'),
('kano', 'kaduna', '2022-06-30', '12:47:00', '2', '567890'),
('Yobe', 'Kano', '2022-07-04', '05:29:00', '', '3456789099786');

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

INSERT INTO `trip` (`Trip_from`, `Trip_to`, `date`, `time`, `availableSeats`, `price`, `car_id`, `driver_id`) VALUES
('', '', '0000-00-00', '00:00:00', '1', '', '', ''),
('kano', 'maidugur', '2022-07-14', '09:13:00', '2', '100', '', ''),
('kwara', 'maidugur', '2022-07-12', '08:23:00', '5', '13000', '', ''),
('ee', 'ee', '2022-06-29', '05:19:00', '3', '300', '', '');

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
-- Indexes for table `registration`
--
ALTER TABLE `registration`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
