-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2024 at 04:55 AM
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
-- Database: `clubevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `Password`) VALUES
('M.Vamsi', 'hello123'),
('indra', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `coursename` varchar(50) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `facultyid` varchar(10) NOT NULL,
  `strength` int(10) NOT NULL,
  `coursestatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`coursename`, `courseid`, `facultyid`, `strength`, `coursestatus`) VALUES
('HIP HOP', 'DAN01', 'SS113', 40, 'Completed'),
('guitar', 'CSA123', 'SS112', 40, 'Completed'),
('violin', 'CSA69', 'SS112', 40, 'Completed'),
('key Board', 'CSA78', 'SS115', 40, 'Completed'),
('printing club', 'CSA90', 'SS345', 40, 'Completed'),
('Demotesting', 'SS123', 'SS345', 40, 'Completed'),
('violin', 'CSA90', 'SS345', 40, 'Completed'),
('Drums', 'CSA08', 'SS113', 40, 'Completed'),
('music', 'CSA32', 'SS115', 40, 'Completed'),
('Waste Paper Recycling club', 'CLB001', 'SS113', 40, 'Completed'),
('keyboard', 'CLB009', 'SS113', 40, 'Completed'),
('Guitar', 'CLB006', 'SS113', 40, 'Completed'),
('Guitar', 'CLB002', 'SS113', 40, 'Completed'),
('violin', 'CLB003', 'SS113', 40, 'Completed'),
('Dance club', 'CLB004', 'SS113', 40, 'Completed'),
('Music Club', 'CLB010', 'SS113', 40, 'Completed'),
('Drum stick', 'CLB011', 'SS113', 40, 'completed'),
('Keyboard', 'CLB014', 'SS456', 40, 'Completed'),
('Tabla', 'CLB015', 'SS456', 40, 'Completed'),
('3D printing club', 'CLB160', 'SS456', 0, 'ACTIVE'),
('Robotics club', 'CLB908', 'SS456', 40, 'Completed'),
('Music club', 'CLB150', 'SS9090', 40, 'ACTIVE'),
('keyboard', 'CLB151', 'SS9090', 40, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `enrolatt`
--

CREATE TABLE `enrolatt` (
  `name` varchar(50) NOT NULL,
  `studentid` bigint(10) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `studentstatus` varchar(50) NOT NULL,
  `attendedclasses` bigint(10) NOT NULL,
  `totalclasses` bigint(10) NOT NULL,
  `coursestatus` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL DEFAULT 'NA',
  `strength` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolatt`
--

INSERT INTO `enrolatt` (`name`, `studentid`, `courseid`, `coursename`, `studentstatus`, `attendedclasses`, `totalclasses`, `coursestatus`, `grade`, `strength`) VALUES
('Naresh', 5895, 'CSA123', 'violin', 'Accepted', 0, 0, 'completed', 'Average', 0),
('xyz', 7899, 'CSA123', 'violin', 'Accepted', 0, 0, 'completed', 'good', 0),
('Ramkumar', 1920, 'CSA90', 'printing club', 'Approved', 0, 0, 'Completed', 'Good', 0),
('vijay', 716, 'CSA90', 'printing club', 'Approved', 0, 0, 'Completed', 'Average', 0),
('Masthan', 5849, 'CSA90', 'printing club', 'Approved', 12, 23, 'completed', 'Excellent', 0),
('Romesh', 897, 'CSA90', 'printing club', 'Approved', 12, 23, 'completed', 'Excellent', 0),
('Romesh', 897, 'CSA08', 'Drums', 'Approved', 10, 22, 'completed', 'Excellent', 0),
('vijay', 716, 'CSA08', 'Drums', 'Approved', 2, 9, 'Completed', 'Average', 0),
('Romesh', 897, 'CSA08', 'Drums', 'Approved', 5, 11, 'completed', 'Excellent', 0),
('Ganesh.G', 192011088, 'CSA90', 'violin', 'Approved', 12, 13, 'completed', 'Excellent', 0),
('sai', 741, 'CSA90', 'violin', 'Approved', 2, 13, 'completed', 'Excellent', 0),
('indra', 852, 'CLB009', 'keyboard', 'Approved', 0, 0, 'completed', 'Average', 0),
('suresh', 963, 'CLB001', 'waaste paper club', 'Approved', 1, 1, 'completed', 'Average', 0),
('suresh', 963, 'CLB009', 'keyboard', 'Approved', 0, 0, 'completed', 'Average', 0),
('Ramesh', 789, 'CLB001', 'waaste paper club', 'Approved', 1, 1, 'Completed', 'Excellent', 0),
('Ramesh', 789, 'CLB009', 'keyboard', 'Approved', 0, 0, 'Completed', 'Excellent', 0),
('Ramkumar', 1920, 'CLB006', 'Guitar', 'Approved', 1, 1, 'Completed', 'Good', 0),
('Mahesh', 4512, 'CLB006', 'Guitar', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('vijay', 716, 'CLB006', 'Guitar', 'Approved', 1, 1, 'Completed', 'Average', 0),
('Romesh', 897, 'CLB006', 'Guitar', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('Ramesh', 789, 'CLB002', 'Guitar', 'Approved', 0, 1, 'Completed', 'Excellent', 0),
('Ramesh', 789, 'CLB003', 'violin', 'Approved', 1, 1, 'Completed', 'Excellent', 0),
('Ramesh', 789, 'CLB004', 'Dance club', 'Approved', 2, 2, 'Completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB002', 'Guitar', 'Approved', 4, 4, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB003', 'violin', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB004', 'Dance club', 'Approved', 1, 2, 'completed', 'Excellent', 0),
('Ramkumar', 1920, 'CLB002', 'Guitar', 'Approved', 1, 1, 'Completed', 'Good', 0),
('Ramkumar', 1920, 'CLB003', 'violin', 'Approved', 1, 1, 'Completed', 'Good', 0),
('Ramkumar', 1920, 'CLB004', 'Dance club', 'Approved', 2, 2, 'Completed', 'Good', 0),
('indra', 852, 'CLB002', 'Guitar', 'Approved', 1, 1, 'completed', 'Average', 0),
('indra', 852, 'CLB003', 'violin', 'Approved', 1, 1, 'completed', 'Average', 0),
('indra', 852, 'CLB004', 'Dance club', 'Approved', 1, 2, 'completed', 'Average', 0),
('Masthan', 5849, 'CLB002', 'Guitar', 'Approved', 2, 4, 'completed', 'Excellent', 0),
('Masthan', 5849, 'CLB003', 'violin', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('Masthan', 5849, 'CLB004', 'Dance club', 'Approved', 1, 2, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB010', 'Music Club', 'Approved', 0, 0, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB011', 'Drum stick', 'Approved', 0, 0, 'completed', 'Excellent', 0),
('Ramkumar', 1920, 'CLB010', 'Music Club', 'Approved', 0, 0, 'Completed', 'Good', 0),
('Ramkumar', 1920, 'CLB011', 'Drum stick', 'Approved', 0, 0, 'Completed', 'Good', 0),
('Masthan', 5849, 'CLB010', 'Music Club', 'Approved', 0, 0, 'completed', 'Excellent', 0),
('Masthan', 5849, 'CLB011', 'Drum stick', 'Approved', 0, 0, 'completed', 'Excellent', 0),
('vijay', 716, 'CLB010', 'Music Club', 'Approved', 0, 0, 'Completed', 'Average', 0),
('vijay', 716, 'CLB011', 'Drum stick', 'Approved', 0, 0, 'Completed', 'Average', 0),
('Ganesh.G', 192011088, 'CLB014', 'Keyboard', 'Approved', 2, 2, 'completed', 'Excellent', 0),
('Ramkumar', 1920, 'CLB014', 'Keyboard', 'Approved', 1, 2, 'Completed', 'Good', 0),
('vijay', 716, 'CLB014', 'Keyboard', 'Approved', 2, 2, 'Completed', 'Average', 0),
('sai', 741, 'CLB014', 'Keyboard', 'Approved', 2, 2, 'completed', 'Excellent', 0),
('suresh', 963, 'CLB015', 'Tabla', 'Approved', 3, 3, 'completed', 'Average', 0),
('indra', 852, 'CLB015', 'Tabla', 'Approved', 2, 3, 'completed', 'Average', 0),
('Mahesh', 4512, 'CLB015', 'Tabla', 'Approved', 5, 6, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB015', 'Tabla', 'Approved', 5, 6, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB160', '3D printing club', 'Approved', 0, 1, 'completed', 'Excellent', 0),
('Mahesh', 4512, 'CLB908', 'Robotics club', 'Approved', 0, 1, 'completed', 'Excellent', 0),
('Romesh', 897, 'CLB160', '3D printing club', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('Romesh', 897, 'CLB908', 'Robotics club', 'Approved', 1, 1, 'completed', 'Excellent', 0),
('Ramkumar', 1920, 'CLB160', '3D printing club', 'Approved', 1, 1, 'Completed', 'Good', 0),
('suresh', 963, 'CLB908', 'Robotics club', 'Approved', 1, 1, 'completed', 'Average', 0),
('vijay', 716, 'CLB150', 'Music club', 'Approved', 8, 9, 'ACTIVE', 'Average', 0),
('vijay', 716, 'CLB151', 'keyboard', 'Approved', 6, 6, 'ACTIVE', 'Excellent', 0),
('Ramkumar', 1920, 'CLB150', 'Music club', 'Approved', 3, 4, 'ACTIVE', 'Average', 0),
('Ramkumar', 1920, 'CLB151', 'keyboard', 'Approved', 5, 5, 'ACTIVE', 'Excellent', 0),
('indra', 852, 'CLB150', 'Music club', 'Approved', 4, 4, 'ACTIVE', 'Average', 0),
('Mahesh', 4512, 'CLB150', 'Music club', 'Approved', 1, 4, 'ACTIVE', 'Average', 0),
('Masthan', 5849, 'CLB150', 'Music club', 'Approved', 4, 4, 'ACTIVE', 'Average', 0),
('Naresh', 589, 'CLB150', 'Music club', 'Approved', 1, 1, 'ACTIVE', 'Good', 0),
('Romesh', 897, 'CLB151', 'keyboard', 'Approved', 0, 0, 'ACTIVE', 'Excellent', 0),
('surendra', 745, 'CLB150', 'Music club', 'pending', 0, 0, 'ACTIVE', 'NA', 0),
('surendra', 745, 'CLB151', 'keyboard', 'pending', 0, 0, 'ACTIVE', 'NA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `facultydetails`
--

CREATE TABLE `facultydetails` (
  `name` varchar(50) NOT NULL,
  `facultyid` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultydetails`
--

INSERT INTO `facultydetails` (`name`, `facultyid`, `password`, `contact`, `address`, `dob`, `email`) VALUES
('hemanth reddy', 'SS113', '123', 9568741234, 'rajampet', '0000-00-00', 'hemanth@gmail.com'),
('Narasimha', 'SS456', 'welcome', 6548791230, 'chennai', '2004-02-14', 'narasimha@gmail.com'),
('Narendra', 'SS345', 'welcome', 6325147895, 'chitter', '2015-12-12', 'narndra@gmail.com'),
('kumar', 'SS115', 'welcome', 6589741234, 'Tamilnadu', '2002-12-02', 'kumar@gmail.com'),
('varun', 'SS9090', 'welcome', 8989890890, 'Chennai', '2000-02-20', 'facultyrandom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `name` varchar(50) NOT NULL,
  `studentid` bigint(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`name`, `studentid`, `password`, `contact`, `address`, `dob`, `email`) VALUES
('ganesh', 192011460, 'welcome', 6589741234, 'chittor', '2023-10-05', 'ganesh@gmail.com'),
('Elamaran G', 123, '123', 9098979695, '123', '2000-01-01', 'elamaran@gmail.com'),
('Ramesh', 789, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('Romesh', 897, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('Masthan', 5849, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('Naresh', 589, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('indra', 8965, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('nagesh', 56231, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('Mahesh', 4512, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('indra', 852, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('suresh', 963, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('sai', 741, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('surendra', 745, '123', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('vijay', 716, 'welcome', 6523147895, 'chennai', '2002-12-02', 'mahesh@gmail.com'),
('Ramkumar', 1920, 'welcome', 6304324356, 'Avadi', '2000-04-12', 'ram@gmail.com'),
('Ganesh.G', 192011088, 'welcome', 6589741235, 'Chettipedu', '2002-07-13', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
