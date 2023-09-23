-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 05:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnypy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`username`, `password`) VALUES
('nahida', 'nahida'),
('suny', 'suny');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_name` varchar(100) NOT NULL,
  `course_category` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `course_description` varchar(300) DEFAULT NULL,
  `course_difficulty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_name`, `course_category`, `course_instructor`, `course_description`, `course_difficulty`) VALUES
('CSE110', 'general', 'mdh', 'Introduction to OOP', 'introductory'),
('cse302', 'general', 'dmrh', 'Database Related Course', 'intermediate'),
('cse303', 'data science', 'dmrh', 'Statistics For Data Science', 'advanced'),
('cse347', 'general', 'ntn', 'Course About System Design! ', 'introductory'),
('cse407', 'general', 'dawr', 'Green Computing', 'introductory'),
('cse412', 'developing', 'ntn', 'Software Engineering', 'intermediate'),
('CSE479', 'data science', 'mdh', 'Web Programming', 'advanced');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`category_name`, `category_description`) VALUES
('data science', 'Make a good use of data . Visualize it , mine it , make machine learn it. All up to you !'),
('developing', 'Web Database, Software Engineering, Mobile Programming everything is related to Developing.'),
('general', 'this is general category. Both data science and software engineering students can take this'),
('non departmental', 'Courses that are not related to your department. Such as Gen , Mat . This type of courses');

-- --------------------------------------------------------

--
-- Table structure for table `course_material`
--

CREATE TABLE `course_material` (
  `course_name` varchar(100) NOT NULL,
  `course_category` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `course_material_type` varchar(100) DEFAULT NULL,
  `course_material_name` varchar(100) DEFAULT NULL,
  `course_material_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_material`
--

INSERT INTO `course_material` (`course_name`, `course_category`, `course_instructor`, `course_material_type`, `course_material_name`, `course_material_description`) VALUES
('cse412', 'developing', 'ntn', 'pdf', 'onepiece', 'This is just a tester pdf'),
('cse412', 'developing', 'ntn', 'jpg', 'avatar1', 'tester jpg'),
('cse412', 'developing', 'ntn', 'jpg', 'avatar2', 'another pic tester');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_info`
--

CREATE TABLE `instructor_info` (
  `instructor_fname` varchar(100) DEFAULT NULL,
  `instructor_lname` varchar(100) DEFAULT NULL,
  `instructor_username` varchar(100) NOT NULL,
  `instructor_password` varchar(100) DEFAULT NULL,
  `instructor_pic` varchar(100) DEFAULT NULL,
  `instructor_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor_info`
--

INSERT INTO `instructor_info` (`instructor_fname`, `instructor_lname`, `instructor_username`, `instructor_password`, `instructor_pic`, `instructor_email`) VALUES
('Dr Ahmed', 'Wasif Reza', 'dawr', 'dawr', NULL, NULL),
('Dr Mohammad', 'Rezwanul Hoque', 'dmrh', 'dmrh', NULL, NULL),
('Mahamudul', 'Hasan', 'mdh', 'mdh', NULL, NULL),
('Nishat Tasnim', 'Niloy', 'ntn', 'ntn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `student_email` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_category` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `course_review_bool` varchar(10) DEFAULT 'false',
  `course_review_star` int(10) NOT NULL DEFAULT 0,
  `course_review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`student_email`, `course_name`, `course_category`, `course_instructor`, `course_review_bool`, `course_review_star`, `course_review`) VALUES
('alfeysuny@gmail.com', 'cse303', 'data science', 'dmrh', 'true', 5, 'This is a really great course. They say learn from the masters and I really did learnt from the mast'),
('alfeysuny@gmail.com', 'cse412', 'developing', 'ntn', 'false', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_fname` varchar(100) NOT NULL,
  `student_lname` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_fname`, `student_lname`, `student_email`, `student_password`, `student_pic`) VALUES
('alfe', 'suny', 'alfeysuny@gmail.com', '3fc9b689459d738f8c88a3a48aa9e33542016b7a4052e001aaa536fca74813cb', NULL),
('maimuna', 'liza', 'liza@gmail.com', '2c7e9f6370f03f6a5357991fee4896ae11b114efae430861a37bbc214888a904', NULL),
('nahida', 'nahida', 'nahida@gmail.com', '8dcca2f61cf29936eca5e149e36700ad41562308719fcb2fb60f04731919b90e', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_name`,`course_category`,`course_instructor`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`category_name`);

--
-- Indexes for table `instructor_info`
--
ALTER TABLE `instructor_info`
  ADD PRIMARY KEY (`instructor_username`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`student_email`,`course_name`,`course_category`,`course_instructor`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
