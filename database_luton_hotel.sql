-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 08:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_luton_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `Billing_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `VAT` int(10) DEFAULT NULL,
  `Service_Charge` int(11) NOT NULL,
  `Room_Price` int(10) DEFAULT NULL,
  `Total_Bill` double(20,1) DEFAULT NULL,
  `Biiling_Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`Billing_ID`, `Booking_ID`, `Name`, `VAT`, `Service_Charge`, `Room_Price`, `Total_Bill`, `Biiling_Status`) VALUES
(1, 2, 'nzl raj', 13, 500, 75000, 85250.0, 'Paid'),
(2, 4, 'Anjil kharel', 13, 500, 45000, 51350.0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `Room_ID` int(11) DEFAULT NULL,
  `Booking_Type` varchar(50) DEFAULT NULL,
  `Booking_Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_ID`, `Customer_ID`, `CheckIn`, `CheckOut`, `Room_ID`, `Booking_Type`, `Booking_Status`) VALUES
(2, 1, '2023-04-30', '2023-05-05', 6, 'Deluxe', 'Inactive'),
(4, 2, '2023-04-30', '2023-05-03', 2, 'Double', 'Inactive'),
(5, 2, '2023-05-10', '2023-05-15', 11, 'Deluxe', 'Booked'),
(6, 1, '2023-05-02', '2023-05-15', NULL, 'Double', 'Requested');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Username` varchar(150) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Credit_Number` varchar(20) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `Title`, `Name`, `Gender`, `DOB`, `Mobile`, `Email`, `Address`, `Username`, `Password`, `Credit_Number`, `Role`) VALUES
(1, 'Mr.', 'nzl raj', 'Male', '1998-08-05', '9825687999', 'nzlraj@gmail.com', 'Jhapa', 'Nzl01', 'Nzl@123', '4564-5644-6565', 'Individual'),
(2, 'Mr.', 'Anjil kharel', 'Male', '1997-11-20', '9817942834', 'anjil01@gmail.com', 'Damak', 'Anjil01', 'Anjil@123', '9874-5647-1234', 'Corp User');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_ID` int(10) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rate` double(9,2) DEFAULT NULL,
  `rooms_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_ID`, `type`, `rate`, `rooms_status`) VALUES
(1, 'Single', 10000.00, 'Available'),
(2, 'Double', 15000.00, 'Available'),
(3, 'Deluxe', 20000.00, 'Available'),
(4, 'Twin', 18000.00, 'Available'),
(5, 'Single', 10000.00, 'Available'),
(6, 'Double', 15000.00, 'Available'),
(7, 'Deluxe', 20000.00, 'Available'),
(8, 'Twin', 18000.00, 'Available'),
(9, 'Single', 10000.00, 'Available'),
(10, 'Double', 15000.00, 'Available'),
(11, 'Deluxe', 20000.00, 'Booked'),
(12, 'Twin', 18000.00, 'Available'),
(13, 'Single', 10000.00, 'Available'),
(14, 'Double', 15000.00, 'Available'),
(15, 'Deluxe', 20000.00, 'Active'),
(16, 'Twin', 18000.00, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `Registration_ID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`Registration_ID`, `Title`, `Name`, `Address`, `Mobile`, `Email`, `Username`, `Password`, `Role`) VALUES
(1, 'Mr.', 'Gopal Krishna', 'Bindraban', 9800000000, 'krishna@gmail.com', 'admin', 'admin', 'Manager'),
(2, 'Mrs.', 'Radhey Radhey', 'Gokuldham', 9812121212, 'radha@gmail.com', 'Radha01', 'Radha@123', 'Receptionist'),
(3, 'Mr.', 'Sujeet ruwali', 'Chitwan', 9841543241, 'sujeet@gmail.com', 'sujeet01', 'Sujeet@123', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`Billing_ID`),
  ADD KEY `Booking_ID` (`Booking_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `Mobile` (`Mobile`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Credit_Number` (`Credit_Number`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_ID`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`Registration_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `Billing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Room_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `Registration_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`Booking_ID`) REFERENCES `booking` (`Booking_ID`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
