-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2022 at 05:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `issued` varchar(20) NOT NULL,
  `year` int(10) NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `name`, `author`, `department`, `subject`, `issued`, `year`, `location`) VALUES
(10000, 'Book one', 'Me man', 'CS', 'Computer science', 'true', 2001, 'CS-cs-07'),
(10001, 'Book two', 'New Era', 'FS', 'Fire safty', 'true', 2005, 'FS-fs-06'),
(10002, 'the new book', 'Mohan', 'CS', 'system parts', 'true', 2006, 'CS-sp-89'),
(10003, 'Quich Start', 'The Ram', 'EC', 'sircuit board', 'true', 1998, 'EC-sd-1001'),
(10004, 'newbook', 'someone', 'FT', 'firesafty', 'false', 2001, 'FT-fs-91');

-- --------------------------------------------------------

--
-- Table structure for table `due`
--

CREATE TABLE `due` (
  `due_id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `maindate` varchar(11) NOT NULL,
  `returndate` varchar(11) NOT NULL,
  `due` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `due`
--

INSERT INTO `due` (`due_id`, `student`, `book`, `maindate`, `returndate`, `due`) VALUES
(10000, 100000, 10000, '12/01/2020', '15/03/2020', 150),
(10001, 100000, 10001, '12/01/2020', '15/03/2020', 150);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `i_id` int(11) NOT NULL,
  `b_id` int(10) NOT NULL,
  `s_id` int(20) NOT NULL,
  `l_id` int(20) NOT NULL,
  `issue_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`i_id`, `b_id`, `s_id`, `l_id`, `issue_date`) VALUES
(10017, 10000, 100000, 10000, '04/10/2021'),
(10018, 10001, 100000, 10000, '04/10/2021'),
(10019, 10002, 100000, 10000, '2021/12/09'),
(10025, 10003, 100000, 10000, '2021/12/17');

-- --------------------------------------------------------

--
-- Table structure for table `librarys`
--

CREATE TABLE `librarys` (
  `id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarys`
--

INSERT INTO `librarys` (`id`, `password`, `name`, `last`, `email`, `number`) VALUES
(10000, 'sambare', 'bhupendra', 'sambare', 'admin@gmail.com', '8989898989');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `name`, `last`, `email`, `number`, `password`) VALUES
(100000, 'bhupendra', 'sambare', 'bhupendra@gmail.com', '7845696257', 'sam@1404'),
(100016, 'Mohit', 'Pawar', 'mohitpawar@gmail.com', '8945782356', 'mohit'),
(100018, 'Deep', 'Talwarkar', 'deep@gmail.com', '7856891245', 'deep'),
(100019, 'aditi', 'lodhi', 'aditi@gmail.com', '4512329878', 'aditi'),
(100027, 'Sam', 'sam', 'sam@gmail.com', '9856451223', 'sam'),
(100028, 'gautam', 'gupta', 'gautamgupta@gmail.com', '98765453210', 'gautam'),
(100029, 'TestChecker', 'Checker', 'check@gmail.com', '8956231245', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `due`
--
ALTER TABLE `due`
  ADD PRIMARY KEY (`due_id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `librarys`
--
ALTER TABLE `librarys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `due`
--
ALTER TABLE `due`
  MODIFY `due_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10026;

--
-- AUTO_INCREMENT for table `librarys`
--
ALTER TABLE `librarys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100032;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
