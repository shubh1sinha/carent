-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 09:18 PM
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
-- Database: `carent`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_vehicle`
--

CREATE TABLE `booked_vehicle` (
  `book_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `days` smallint(4) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_vehicle`
--

INSERT INTO `booked_vehicle` (`book_id`, `vehicle_id`, `model`, `start_date`, `days`, `username`) VALUES
(1, 1, 'Tata Wagainar', '2022-05-22', 2, 'shubh'),
(2, 3, 'Tata Nano', '2022-05-20', 1, 'shubh'),
(3, 2, 'Toyota Elexi', '2022-05-10', 2, 'shubh'),
(4, 1, 'Tata Wagainar', '2022-05-10', 1, 'sinha');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` enum('user','agency') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `type`) VALUES
(1, 'agency1', 'agency1@gmail.com', '123', 'agency'),
(2, 'shubh', 'sinha@gmail.com', '123', 'user'),
(3, 'sinha', 'sinha@gmail.com', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `capacity` int(10) NOT NULL,
  `rent` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `model`, `vehicle_number`, `capacity`, `rent`) VALUES
(2, 'Toyota Elexi', 'HYD1234', 6, 609),
(3, 'Tata Nano', 'BR1290', 2, 300),
(4, 'Nissan Micra', 'MH12DR1211', 3, 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_vehicle`
--
ALTER TABLE `booked_vehicle`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_vehicle`
--
ALTER TABLE `booked_vehicle`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
