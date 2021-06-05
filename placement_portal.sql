-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 08:48 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `rollno` int(11) NOT NULL,
  `prog_name` varchar(100) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `profile_name` varchar(50) NOT NULL,
  `statas` varchar(50) DEFAULT NULL,
  `resumeno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`rollno`, `prog_name`, `company_name`, `profile_name`, `statas`, `resumeno`) VALUES
(1, 'BTech CSE', 'Flying', 'Assistant', 'Applied', NULL),
(1, 'BTech CSE', 'Microsoft', 'Intern', 'Applied', NULL),
(123, 'MSc MnC', 'amazon', 'software engineer', 'Applied', NULL),
(456, 'MTech CSE', 'amazon', 'software engineer', 'Applied', NULL),
(555, 'BTech CSE', 'amazon', 'software engineer', 'Applied', NULL),
(555, 'BTech CSE', 'Google', 'SDE', 'Applied', NULL),
(555, 'BTech CSE', 'Microsoft', 'Intern', 'Applied', NULL),
(555, 'BTech CSE', 'VIT', 'SDE', 'Applied', NULL),
(789, 'BTech MnC', 'HP', 'SDE', 'Applied', NULL),
(2623, 'BTech MnC', 'HP', 'SDE', 'Applied', NULL),
(2638, 'BTech CSE', 'Google', 'SDE', 'Applied', NULL),
(2638, 'BTech CSE', 'HP', 'SDE', 'Applied', NULL),
(2638, 'BTech CSE', 'Microsoft', 'Intern', 'Applied', NULL),
(2650, 'BTech CSE', 'amazon', 'software engineer', 'Applied', NULL),
(2650, 'BTech CSE', 'HP', 'SDE', 'Applied', NULL),
(2650, 'BTech CSE', 'Microsoft', 'Intern', 'Applied', NULL),
(2662, 'BTech CSE', 'CG', 'SDE', 'Applied', NULL),
(2662, 'BTech CSE', 'HP', 'SDE', 'Applied', NULL),
(2662, 'BTech CSE', 'Microsoft', 'Intern', 'Applied', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eligible`
--

CREATE TABLE `eligible` (
  `prog_name` varchar(100) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `profile_name` varchar(50) NOT NULL,
  `tenth_per_crt` double DEFAULT 0,
  `twelveth_per_crt` double DEFAULT 0,
  `ug_cpi_crt` double DEFAULT 0,
  `pg_cpi_crt` double DEFAULT 0,
  `phd_cpi_crt` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eligible`
--

INSERT INTO `eligible` (`prog_name`, `company_name`, `profile_name`, `tenth_per_crt`, `twelveth_per_crt`, `ug_cpi_crt`, `pg_cpi_crt`, `phd_cpi_crt`) VALUES
('BTech CSE', 'amazon', 'software engineer', 55, 60, 0, 0, 0),
('BTech CSE', 'CG', 'SDE', 60, 65, 70, 0, 0),
('BTech CSE', 'Flying', 'Assistant', 50, 40, 70, 0, 0),
('BTech CSE', 'Google', 'SDE', 60, 60, 60, 60, 0),
('BTech CSE', 'HP', 'SDE', 45, 60, 75, 0, 0),
('BTech CSE', 'Microsoft', 'Intern', 60, 55, 65, 0, 0),
('BTech CSE', 'VIT', 'SDE', 40, 45, 50, 0, 0),
('BTech MnC', 'amazon', 'software engineer', 65, 75, 95, 0, 0),
('BTech MnC', 'CG', 'SDE', 55, 70, 75, 0, 0),
('BTech MnC', 'HP', 'SDE', 50, 50, 65, 0, 0),
('MSc MnC', 'amazon', 'software engineer', 43, 56, 58, 0, 0),
('MSc MnC', 'CG', 'SDE', 60, 70, 80, 65, 40),
('MTech CSE', 'amazon', 'software engineer', 40, 60, 70, 0, 0),
('MTech CSE', 'CG', 'SDE', 65, 70, 75, 65, 0),
('MTech CSE', 'HP', 'SDE', 65, 70, 86, 78, 0),
('MTech CSE', 'VIT', 'SDE', 55, 45, 60, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `company_name` varchar(50) NOT NULL,
  `profile_name` varchar(50) NOT NULL,
  `job_details` varchar(200) DEFAULT NULL,
  `ctc` int(11) DEFAULT NULL,
  `application_deadline` datetime DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`company_name`, `profile_name`, `job_details`, `ctc`, `application_deadline`, `password`) VALUES
('amazon', 'software engineer', 'B.Tech', 5, '2021-06-12 00:00:00', 'test'),
('CG', 'SDE', 'B.Tech CSE', 50, '2021-06-20 00:00:00', 'test'),
('Flying', 'Assistant', 'B.Tech All branches', 6, '2021-06-17 00:00:00', 'test'),
('Google', 'SDE', 'Internship', 15, '2021-06-22 00:00:00', 'test'),
('HP', 'SDE', 'MTech CSE', 10, '2021-06-15 00:00:00', 'test'),
('Microsoft', 'Intern', 'B.Tech', 10, '2021-06-19 00:00:00', 'test'),
('VIT', 'SDE', 'B.tech CSE', 15, '2021-06-20 00:00:00', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `no_of_students` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_name`, `department`, `no_of_students`) VALUES
('BTech CSE', 'Computer', 6),
('BTech MnC', 'Mathematics', 2),
('MSc MnC', 'Mathematics', 1),
('MTech CSE', 'Computer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resumeno` int(11) NOT NULL,
  `rollno` int(11) NOT NULL,
  `resume` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` int(11) NOT NULL,
  `tenth_per` double NOT NULL,
  `twelveth_per` double NOT NULL,
  `ug_cpi` double NOT NULL,
  `pg_cpi` double NOT NULL DEFAULT -1,
  `phd_cpi` double NOT NULL DEFAULT -1,
  `ug_college` varchar(100) DEFAULT NULL,
  `pg_college` varchar(100) DEFAULT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `prog_name` varchar(100) NOT NULL,
  `passwd` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `tenth_per`, `twelveth_per`, `ug_cpi`, `pg_cpi`, `phd_cpi`, `ug_college`, `pg_college`, `fname`, `mname`, `lname`, `email`, `prog_name`, `passwd`) VALUES
(1, 73, 57, 85, -1, -1, 'VES', '', 'Nikku', '', 'Sastri', 'niks@gmail.com', 'BTech CSE', '1234'),
(100, 50, 70, 60, -1, -1, 'IIT', '', 'raj', '', 'kapoor', 'kapoor@gmail.com', 'BTech CSE', '100'),
(123, 80, 90, 85, -1, -1, '', '', 'test', '', 'user', 'test@mail.com', 'MSc MnC', '123'),
(456, 75, 80, 77, -1, -1, 'vit', '', 'rahul', '', 'karn', 'rahul@gmail.com', 'MTech CSE', '456'),
(555, 60, 60, 70, -1, -1, 'VIT', '', 'Test', '', 'User', 'test@gmail.com', 'BTech CSE', '555'),
(789, 60, 75, 65, -1, -1, 'test', '', 'anonymous', '', 'user', 'user@gmail.com', 'BTech MnC', '789'),
(2623, 85, 90, 86, -1, -1, 'VIT', '', 'Aditya', 'Narayan', 'Jha', 'jhaaadi@gmail.com', 'BTech MnC', '2623'),
(2638, 90, 90, 85, -1, -1, 'VIT', '', 'Atul', 'Kumar', 'Karn', 'atul@gmail.com', 'BTech CSE', '2638'),
(2650, 80, 85, 85, -1, -1, 'VIT', '', 'Rajan', '', 'Chaudhary', 'rajan.chaudhary2019@vitstudent.ac.in', 'BTech CSE', '2650'),
(2662, 87, 85, 80, -1, -1, 'VIT', '', 'Sushant ', '', 'Srivastav', 'metalsrivastav@gmail.com', 'BTech CSE', '2662');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `trig_update_no_of_students` AFTER INSERT ON `student` FOR EACH ROW UPDATE program SET program.no_of_students=program.no_of_students+1 WHERE program.prog_name=NEW.prog_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `profile_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`start_time`, `end_time`, `links`, `purpose`, `company_name`, `profile_name`) VALUES
('2021-06-03 16:29:00', '2021-06-12 16:29:00', '', 'test5', 'HP', 'SDE'),
('2021-06-04 16:09:00', '2021-06-05 16:10:00', '', 'test', 'amazon', 'software engineer'),
('2021-06-04 16:11:00', '2021-06-10 16:11:00', '', 'test4', 'amazon', 'software engineer'),
('2021-06-05 16:10:00', '2021-06-06 16:10:00', '', 'test2', 'amazon', 'software engineer'),
('2021-06-05 16:15:00', '2021-06-06 16:15:00', 'www.google.com', 'test6', 'amazon', 'software engineer'),
('2021-06-05 16:26:00', '2021-06-08 16:26:00', '', 'test2', 'HP', 'SDE'),
('2021-06-05 16:27:00', '2021-06-06 16:27:00', '', 'test3', 'HP', 'SDE'),
('2021-06-07 11:28:00', '2021-06-10 12:28:00', 'meet.google.com', 'Interview Phase 1', 'VIT', 'SDE'),
('2021-06-09 02:18:00', '2021-06-30 02:18:00', 'meet.google.com', 'Interview 1', 'Google', 'SDE'),
('2021-06-10 11:28:00', '2021-06-22 11:28:00', 'test.com', 'Test2', 'VIT', 'SDE'),
('2021-06-11 16:26:00', '2021-06-15 16:26:00', '', 'test1', 'HP', 'SDE'),
('2021-06-12 16:33:00', '2021-06-14 16:33:00', 'test.com', 'test5', 'HP', 'SDE'),
('2021-06-15 23:00:00', '2021-06-22 23:00:00', 'test.com', 'Interview 1', 'CG', 'SDE'),
('2021-06-17 17:50:00', '2021-06-10 17:50:00', '', 'interview 1', 'amazon', 'software engineer'),
('2021-06-18 23:00:00', '2021-06-26 23:00:00', '', 'interview 2', 'CG', 'SDE'),
('2021-06-19 02:19:00', '2021-06-28 02:19:00', '', 'Interview 2', 'Google', 'SDE'),
('2021-06-20 02:27:00', '2021-06-21 14:27:00', 'meet.com', 'Interview', 'Flying', 'Assistant'),
('2021-06-20 22:45:00', '2021-06-19 12:45:00', 'test portal', 'Interview phase 1', 'Microsoft', 'Intern'),
('2021-06-22 23:00:00', '2021-06-26 23:00:00', 'test1.com', 'interview 3', 'CG', 'SDE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`rollno`,`prog_name`,`company_name`,`profile_name`),
  ADD KEY `prog_name` (`prog_name`),
  ADD KEY `company_name` (`company_name`,`profile_name`);

--
-- Indexes for table `eligible`
--
ALTER TABLE `eligible`
  ADD PRIMARY KEY (`prog_name`,`company_name`,`profile_name`),
  ADD KEY `company_name` (`company_name`,`profile_name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`company_name`,`profile_name`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_name`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`resumeno`,`rollno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`),
  ADD KEY `prog_name` (`prog_name`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`start_time`,`end_time`),
  ADD KEY `company_name` (`company_name`,`profile_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE,
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`prog_name`) REFERENCES `program` (`prog_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `application_ibfk_3` FOREIGN KEY (`company_name`,`profile_name`) REFERENCES `jobs` (`company_name`, `profile_name`) ON DELETE CASCADE;

--
-- Constraints for table `eligible`
--
ALTER TABLE `eligible`
  ADD CONSTRAINT `eligible_ibfk_1` FOREIGN KEY (`prog_name`) REFERENCES `program` (`prog_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `eligible_ibfk_2` FOREIGN KEY (`company_name`,`profile_name`) REFERENCES `jobs` (`company_name`, `profile_name`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`prog_name`) REFERENCES `program` (`prog_name`) ON DELETE NO ACTION;

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_ibfk_1` FOREIGN KEY (`company_name`,`profile_name`) REFERENCES `jobs` (`company_name`, `profile_name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
