-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 06:39 PM
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
-- Database: `aci_leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(1, 'Computer Science & Engineering', 'CSE', '2023-03-19 05:31:37'),
(2, 'Mechanical Engineering', 'ME', '2023-03-19 05:31:53'),
(3, 'Electronics and Communication Engineering', 'ECE', '2023-03-19 05:32:16'),
(4, 'Electrical Engineering', 'EE', '2023-03-19 05:32:42'),
(5, 'Civil Engineering', 'CE', '2023-03-19 05:35:55'),
(6, 'Applied Science & Humanities', 'ASH', '2023-03-19 05:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `Staff_ID` varchar(50) NOT NULL,
  `Position_Staff` varchar(100) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `Staff_ID`, `Position_Staff`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`, `signature`) VALUES
(2, 'Admin', 'Admin', '124', 'Registrar', 'admin@gmail.com', 'e6e061838856bf47e1de730719fb2609', 'Male', '3 February, 1990', 'CSE', 'N NEPO', '30', '7876787677', 'Online', '2017-11-10 13:40:02', 'Admin', 'vivek.jpg', 'reg_de_8587944255_2.png'),
(11, 'Vivek', 'Kumar', '1', 'HOD', 'vivek@thdcihet.ac.in', '7d077f716c9a40f5660456534922464f', 'male', '07 August 1985', 'CSE', 'New Tehri, Uttarakhand', '30', '9084822972', 'Online', '2023-03-19 05:39:58', 'HOD', 'NO-IMAGE-AVAILABLE.jpg', 'hod_iv_9084822972_11.png'),
(12, 'Manish', 'Kumar', '2', 'Assistant Professor', 'manish@thdcihet.ac.in', 'b2fd8301040ce1dae22f4bfcd54017b0', 'male', '09 February 1988', 'CSE', 'New Tehri, Uttarkhand', '18', '1234567898', 'Online', '2023-03-19 05:42:41', 'Staff', 'NO-IMAGE-AVAILABLE.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE `tblleave` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `RequestedDays` int(11) NOT NULL,
  `DaysOutstand` int(11) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `ToDate` varbinary(120) DEFAULT NULL,
  `Sign` varchar(120) DEFAULT NULL,
  `PostingDate` date DEFAULT NULL,
  `WorkCovered` varchar(120) DEFAULT NULL,
  `HodRemarks` int(11) NOT NULL DEFAULT 0,
  `HodSign` varchar(200) NOT NULL,
  `HodDate` varchar(120) NOT NULL,
  `RegRemarks` int(1) NOT NULL DEFAULT 0,
  `RegSign` varchar(200) NOT NULL,
  `RegDate` varchar(120) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleave`
--

INSERT INTO `tblleave` (`id`, `LeaveType`, `RequestedDays`, `DaysOutstand`, `FromDate`, `ToDate`, `Sign`, `PostingDate`, `WorkCovered`, `HodRemarks`, `HodSign`, `HodDate`, `RegRemarks`, `RegSign`, `RegDate`, `IsRead`, `empid`, `num_days`) VALUES
(38, 'Casual Leave', 4, 26, '21-03-2023', 0x32342d30332d32303233, 'sig_an_1234567898_12.png', '2023-03-19', 'nothing', 1, 'hod_iv_9084822972_11.png', '2023-03-19 ', 1, 'reg_de_8587944255_2.png', '2023-03-26 ', 1, 12, 4),
(39, 'Casual Leave', 4, 30, '21-03-2023', 0x32342d30332d32303233, 'sig_iv_9084822972_11.png', '2023-03-19', 'nothing', 0, '', '', 0, '', '', 0, 11, 4),
(40, 'Casual Leave', 3, 30, '22-03-2023', 0x32342d30332d32303233, 'sig_iv_9084822972_11.png', '2023-03-19', 'nothing', 0, '', '', 0, '', '', 0, 11, 3),
(41, 'Medical Leave', 4, 30, '18-04-2023', 0x32312d30342d32303233, 'sig_iv_9084822972_11.png', '2023-04-02', 'nothing', 0, '', '', 0, '', '', 0, 11, 4),
(42, 'Casual Leave', 3, 26, '18-04-2023', 0x32302d30342d32303233, 'sig_an_1234567898_12.png', '2023-04-02', 'nothing', 0, '', '', 0, '', '', 0, 12, 3),
(43, 'Casual Leave', 3, 26, '11-04-2023', 0x31332d30342d32303233, 'sig_an_1234567898_12.png', '2023-04-02', 's', 0, '', '', 0, '', '', 0, 12, 3),
(44, 'Medical Leave', 3, 26, '18-04-2023', 0x32302d30342d32303233, 'sig_an_1234567898_12.png', '2023-04-02', 'sda', 1, 'hod_iv_9084822972_11.png', '2023-06-24 ', 0, '', '', 1, 12, 3),
(45, 'Medical Leave', 3, 30, '25-04-2023', 0x32372d30342d32303233, 'sig_iv_9084822972_11.png', '2023-04-02', 'w43', 0, '', '', 0, '', '', 0, 11, 3),
(46, 'Casual Leave', 4, 22, '17-04-2023', 0x32302d30342d32303233, 'sig_an_1234567898_12.png', '2023-04-03', 'no', 1, 'hod_iv_9084822972_11.png', '2023-04-03 ', 1, 'reg_de_8587944255_2.png', '2023-04-03 ', 1, 12, 4),
(47, 'Casual Leave', 4, 18, '16-05-2023', 0x31392d30352d32303233, 'sig_an_1234567898_12.png', '2023-05-13', 'nothing', 1, 'hod_iv_9084822972_11.png', '2023-05-13 ', 1, 'reg_de_8587944255_2.png', '2023-05-13 ', 1, 12, 4),
(48, 'Casual Leave', 15, 30, '01-05-2023', 0x31392d30352d32303233, 'sig_iv_9084822972_11.png', '2023-05-13', 'notjhing', 0, '', '', 0, '', '', 0, 11, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave', '2021-05-23', '2021-06-20', '2021-05-19 14:32:03'),
(2, 'Medical Leave', 'Medical Leave', '2021-05-05', '2021-05-28', '2021-05-19 15:29:05'),
(3, 'Other', 'Leave all staff', '31-05-2021', '04-06-2021', '2021-05-20 17:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` text NOT NULL,
  `outgoing_msg_id` text NOT NULL,
  `text_message` text NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `text_message`, `curr_date`, `curr_time`) VALUES
(1, '12', '2', 'hi\n', 'March 19, 2023 ', '5:43 am'),
(2, '12', '11', 'hi', 'March 19, 2023 ', '5:51 am'),
(3, '11', '12', 'how are you doing\n', 'March 19, 2023 ', '5:52 am'),
(4, '12', '11', 'hi\n', 'May 13, 2023 ', '3:05 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblleave`
--
ALTER TABLE `tblleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblleave`
--
ALTER TABLE `tblleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
