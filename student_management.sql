-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 05:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(255) DEFAULT NULL,
  `Theory_Component` tinyint(1) DEFAULT NULL,
  `Credits` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Course_Name`, `Theory_Component`, `Credits`, `createdAt`, `updatedAt`) VALUES
('CIS222', 'Database Systems', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS223', 'Computer Networks', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS224', 'Operating Systems', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS225', 'Artificial Intelligence', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS226', 'Software Engineering', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS227', 'Cybersecurity', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS228', 'Cloud Computing', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS229', 'Data Science', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS230', 'Web Development', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56'),
('CIS231', 'Machine Learning', 1, 3, '2025-04-04 16:34:56', '2025-04-04 16:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_member`
--

CREATE TABLE `faculty_member` (
  `Faculty_ID` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_member`
--

INSERT INTO `faculty_member` (`Faculty_ID`, `Name`, `Age`, `createdAt`, `updatedAt`) VALUES
('710002880', 'Dr. Smith', 45, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002881', 'Dr. Brown', 48, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002882', 'Dr. Brown', 48, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002883', 'Dr. Taylor', 42, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002884', 'Dr. Anderson', 55, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002885', 'Dr. Thomas', 40, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002886', 'Dr. Jackson', 52, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002887', 'Dr. White', 46, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002888', 'Dr. Harris', 49, '2025-04-04 16:30:08', '2025-04-04 16:30:08'),
('710002889', 'Dr. Martin', 53, '2025-04-04 16:30:08', '2025-04-04 16:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_thesis`
--

CREATE TABLE `project_thesis` (
  `Project_ID` varchar(50) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_thesis`
--

INSERT INTO `project_thesis` (`Project_ID`, `Name`, `createdAt`, `updatedAt`) VALUES
('P001', 'AI Chatbot for Education', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P002', 'Blockchain-based Voting System', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P003', 'IoT-based Smart Home', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P004', 'Autonomous Car Simulation', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P005', 'AI-Powered Healthcare Assistant', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P006', 'Augmented Reality in E-Commerce', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P007', 'Deep Learning for Image Recognition', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P008', 'Cybersecurity Threat Detection', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P009', 'Big Data Analysis for Marketing', '2025-04-04 16:39:26', '2025-04-04 16:39:26'),
('P010', 'Quantum Computing in Cryptography', '2025-04-04 16:39:26', '2025-04-04 16:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL,
  `Faculty_ID` varchar(50) DEFAULT NULL,
  `Project_ID` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Name`, `Date_of_Birth`, `Address`, `Age`, `CGPA`, `Faculty_ID`, `Project_ID`, `createdAt`, `updatedAt`) VALUES
('193-16-461', 'Alice Johnson', '2000-03-15', 'Dhaka', 24, 3.80, '710002880', 'P001', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-462', 'Bob Smith', '1999-07-22', 'Chittagong', 23, 3.60, '710002881', 'P002', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-463', 'Charlie Brown', '2001-01-10', 'Khulna', 22, 3.90, '710002882', 'P003', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-464', 'David White', '1998-11-05', 'Rajshahi', 21, 3.50, '710002883', 'P004', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-465', 'Emily Harris', '2000-05-30', 'Sylhet', 20, 3.70, '710002884', 'P005', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-467', 'Frank Wilson', '1999-09-12', 'Rangpur', 19, 3.60, '710002885', 'P006', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-468', 'Grace Thomas', '2001-02-25', 'Comilla', 25, 3.80, '710002886', 'P007', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-480', 'Hannah Martin', '2000-06-18', 'Dhaka', 24, 3.90, '710002887', 'P008', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-483', 'Jessica Green', '2001-04-08', 'Dhaka', 22, 3.70, '710002889', 'P010', '2025-04-04 16:54:03', '2025-04-04 16:54:03'),
('193-16-485', 'Isaac Carter', '1998-12-20', 'Chittagong', 23, 3.40, '710002888', 'P009', '2025-04-04 16:54:03', '2025-04-04 16:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `Student_Course_ID` varchar(50) NOT NULL,
  `Student_ID` varchar(50) DEFAULT NULL,
  `Course_ID` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`Student_Course_ID`, `Student_ID`, `Course_ID`, `createdAt`, `updatedAt`) VALUES
('SC001', '193-16-461', 'CIS222', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC002', '193-16-462', 'CIS223', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC003', '193-16-463', 'CIS224', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC004', '193-16-465', 'CIS225', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC005', '193-16-467', 'CIS226', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC006', '193-16-468', 'CIS227', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC007', '193-16-480', 'CIS228', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC008', '193-16-485', 'CIS229', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC009', '193-16-483', 'CIS230', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC010', '193-16-464', 'CIS231', '2025-04-04 17:03:36', '2025-04-04 17:03:36'),
('SC011', '193-16-461', 'CIS223', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC012', '193-16-461', 'CIS224', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC013', '193-16-461', 'CIS225', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC014', '193-16-480', 'CIS222', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC015', '193-16-480', 'CIS223', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC016', '193-16-480', 'CIS226', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC017', '193-16-467', 'CIS222', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC018', '193-16-467', 'CIS224', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC019', '193-16-463', 'CIS225', '2025-04-04 17:25:58', '2025-04-04 17:25:58'),
('SC020', '193-16-462', 'CIS226', '2025-04-04 17:25:58', '2025-04-04 17:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Room_Number` int(11) DEFAULT NULL,
  `Floor_Number` int(11) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `Name`, `Room_Number`, `Floor_Number`, `Phone_Number`, `Email`, `createdAt`, `updatedAt`) VALUES
('T001', 'Prof. Adams', 101, 1, '01728170790', 'adams@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:29:16'),
('T002', 'Prof. Baker', 102, 1, '01728170791', 'baker@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:29:39'),
('T003', 'Prof. Carter', 103, 1, '01728170792', 'carter@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:29:46'),
('T004', 'Prof. Davis', 201, 2, '01728170793', 'davis@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:29:58'),
('T005', 'Prof. Evans', 202, 2, '01728170794', 'evans@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:11'),
('T006', 'Prof. Foster', 203, 2, '01728170795', 'foster@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:19'),
('T007', 'Prof. Green', 301, 3, '01728170796', 'green@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:26'),
('T008', 'Prof. Hill', 302, 3, '01828170792', 'hill@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:32'),
('T009', 'Prof. Irwin', 303, 3, '01628170792', 'irwin@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:40'),
('T010', 'Prof. Jones', 401, 4, '01328170792', 'jones@diu.edu.bd', '2025-04-04 16:37:40', '2025-04-04 17:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course`
--

CREATE TABLE `teacher_course` (
  `Teacher_Course_ID` varchar(50) NOT NULL,
  `Teacher_ID` varchar(50) DEFAULT NULL,
  `Course_ID` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` (`Teacher_Course_ID`, `Teacher_ID`, `Course_ID`, `createdAt`, `updatedAt`) VALUES
('TC001', 'T001', 'CIS222', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC002', 'T002', 'CIS223', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC003', 'T003', 'CIS224', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC004', 'T004', 'CIS225', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC005', 'T005', 'CIS226', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC006', 'T006', 'CIS227', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC007', 'T007', 'CIS228', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC008', 'T008', 'CIS229', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC009', 'T009', 'CIS230', '2025-04-04 16:58:24', '2025-04-04 16:58:24'),
('TC010', 'T010', 'CIS231', '2025-04-04 16:58:24', '2025-04-04 16:58:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `faculty_member`
--
ALTER TABLE `faculty_member`
  ADD PRIMARY KEY (`Faculty_ID`);

--
-- Indexes for table `project_thesis`
--
ALTER TABLE `project_thesis`
  ADD PRIMARY KEY (`Project_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Faculty_ID` (`Faculty_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`Student_Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`);

--
-- Indexes for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD PRIMARY KEY (`Teacher_Course_ID`),
  ADD KEY `Teacher_ID` (`Teacher_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Faculty_ID`) REFERENCES `faculty_member` (`Faculty_ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Project_ID`) REFERENCES `project_thesis` (`Project_ID`);

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD CONSTRAINT `teacher_course_ibfk_1` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`),
  ADD CONSTRAINT `teacher_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
