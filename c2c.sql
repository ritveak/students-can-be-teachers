-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 12:13 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c2c`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `testid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`username`, `password`, `testid`) VALUES
('admin', 'pass', 'entertest');

-- --------------------------------------------------------

--
-- Table structure for table `choice1`
--

CREATE TABLE `choice1` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choice1`
--

INSERT INTO `choice1` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 0, '41'),
(2, 1, 0, '50'),
(3, 1, 1, '60'),
(4, 1, 0, '70'),
(5, 2, 0, '120,130'),
(6, 2, 1, '140,280'),
(7, 2, 0, '240,280'),
(8, 2, 0, '100,120'),
(9, 3, 0, '46'),
(10, 3, 0, '48'),
(11, 3, 1, '64'),
(12, 3, 0, '84');

-- --------------------------------------------------------

--
-- Table structure for table `choice2`
--

CREATE TABLE `choice2` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choice2`
--

INSERT INTO `choice2` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 0, '41'),
(2, 1, 0, '50'),
(3, 1, 1, '60'),
(4, 1, 0, '70'),
(5, 2, 0, '120,130'),
(6, 2, 1, '140,280'),
(7, 2, 0, '240,280'),
(8, 2, 0, '100,120'),
(9, 3, 0, '46'),
(10, 3, 0, '48'),
(11, 3, 1, '64'),
(12, 3, 0, '84');

-- --------------------------------------------------------

--
-- Table structure for table `choice3`
--

CREATE TABLE `choice3` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choice3`
--

INSERT INTO `choice3` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 0, '41'),
(2, 1, 0, '50'),
(3, 1, 1, '60'),
(4, 1, 0, '70'),
(5, 2, 0, '120,130'),
(6, 2, 1, '140,280'),
(7, 2, 0, '240,280'),
(8, 2, 0, '100,120'),
(9, 3, 0, '46'),
(10, 3, 0, '48'),
(11, 3, 1, '64'),
(12, 3, 0, '84');

-- --------------------------------------------------------

--
-- Table structure for table `choice4`
--

CREATE TABLE `choice4` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choice4`
--

INSERT INTO `choice4` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 0, '41'),
(2, 1, 0, '50'),
(3, 1, 1, '60'),
(4, 1, 0, '70'),
(5, 2, 0, '120,130'),
(6, 2, 1, '140,280'),
(7, 2, 0, '240,280'),
(8, 2, 0, '100,120'),
(9, 3, 0, '46'),
(10, 3, 0, '48'),
(11, 3, 1, '64'),
(12, 3, 0, '84');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(1, 1, 0, '40'),
(2, 1, 0, '50'),
(3, 1, 1, '60'),
(4, 1, 0, '70'),
(5, 2, 0, '120,130'),
(6, 2, 1, '140,280'),
(7, 2, 0, '240,280'),
(8, 2, 0, '100,120'),
(9, 3, 0, '46'),
(10, 3, 0, '48'),
(11, 3, 1, '64'),
(12, 3, 0, '84');

-- --------------------------------------------------------

--
-- Table structure for table `classmarks`
--

CREATE TABLE `classmarks` (
  `class` varchar(20) NOT NULL,
  `m1` int(11) NOT NULL,
  `t1` varchar(22) NOT NULL,
  `m2` int(11) NOT NULL,
  `t2` varchar(22) NOT NULL,
  `m3` int(11) NOT NULL,
  `t3` varchar(22) NOT NULL,
  `m4` int(11) NOT NULL,
  `t4` varchar(22) NOT NULL,
  `m5` int(11) NOT NULL,
  `t5` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classmarks`
--

INSERT INTO `classmarks` (`class`, `m1`, `t1`, `m2`, `t2`, `m3`, `t3`, `m4`, `t4`, `m5`, `t5`) VALUES
('B', 55, 't', 66, 't', 66, 'g', 68, 'h', 78, 'jk'),
('9', 80, 'pranjal', 20, 'dugar', 0, 'Archit', 50, 'aditya', 90, 'Not present'),
('12', 32, 'p', 23, 'pk', 8, 'pl', 9, 'mk', 92, 'mk'),
('12', 1, 'pranjal2', 2, 'fgn', 8, 'a', 34, '4', 4, '5'),
('7', 30, 'pranjal', 50, 'khandelwal', 22, 'lol', 89, 'eit', 22, 'huhh'),
('7', 30, 'pranjal', 50, 'khandelwal', 22, 'lol', 89, 'eit', 22, 'huhh'),
('12', 20, 'b', 20, 'b', 20, 'b', 20, 'b', 20, 'b'),
('23', 23, '23', 0, '', 0, '', 0, '', 0, ''),
('12', 23, 'ot', 0, '', 0, '', 0, '', 0, ''),
('12', 23, 'ot', 0, '', 0, '', 0, '', 0, ''),
('12', 23, 'ot', 0, '', 0, '', 0, '', 0, ''),
('12', 23, 'ot', 0, '', 0, '', 0, '', 0, ''),
('12', 23, 'ot', 0, '', 0, '', 0, '', 0, ''),
('10', 19, 'b', 20, 'b', 21, 'b', 223, 'b', 4, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `question1`
--

CREATE TABLE `question1` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `question1`
--

INSERT INTO `question1` (`question_number`, `question`) VALUES
(1, 'Customers are asked to stand in the lines. If one customer is extra in a line, then there would be two less lines. If one customer is less in line, there would be three more lines. Find the number of students in the class.'),
(2, '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work.'),
(3, 'The sum of two digits and the number formed by interchanging its digit is 110. If ten is subtracted from the first number, the new number is 4 more than 5 times of the sum of the digits in the first number. Find the first number.');

-- --------------------------------------------------------

--
-- Table structure for table `question2`
--

CREATE TABLE `question2` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `question2`
--

INSERT INTO `question2` (`question_number`, `question`) VALUES
(1, 'Customers are asked to stand in the lines. If one customer is extra in a line, then there would be two less lines. If one customer is less in line, there would be three more lines. Find the number of students in the class.'),
(2, '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work.'),
(3, 'The sum of two digits and the number formed by interchanging its digit is 110. If ten is subtracted from the first number, the new number is 4 more than 5 times of the sum of the digits in the first number. Find the first number.');

-- --------------------------------------------------------

--
-- Table structure for table `question3`
--

CREATE TABLE `question3` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `question3`
--

INSERT INTO `question3` (`question_number`, `question`) VALUES
(1, 'Customers are asked to stand in the lines. If one customer is extra in a line, then there would be two less lines. If one customer is less in line, there would be three more lines. Find the number of students in the class.'),
(2, '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work.'),
(3, 'The sum of two digits and the number formed by interchanging its digit is 110. If ten is subtracted from the first number, the new number is 4 more than 5 times of the sum of the digits in the first number. Find the first number.');

-- --------------------------------------------------------

--
-- Table structure for table `question4`
--

CREATE TABLE `question4` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `question4`
--

INSERT INTO `question4` (`question_number`, `question`) VALUES
(1, 'Customers are asked to stand in the lines. If one customer is extra in a line, then there would be two less lines. If one customer is less in line, there would be three more lines. Find the number of students in the class.'),
(2, '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work.'),
(3, 'The sum of two digits and the number formed by interchanging its digit is 110. If ten is subtracted from the first number, the new number is 4 more than 5 times of the sum of the digits in the first number. Find the first number.');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question`) VALUES
(1, 'Customers are asked to stand in the lines. If one customer is extra in a line, then there would be two less lines. If one customer is less in line, there would be three more lines. Find the number of students in the class.'),
(2, '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work.'),
(3, 'The sum of two digits and the number formed by interchanging its digit is 110. If ten is subtracted from the first number, the new number is 4 more than 5 times of the sum of the digits in the first number. Find the first number.');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `currclass` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `s1pass` varchar(22) NOT NULL DEFAULT 'Not Eligible',
  `s2pass` varchar(22) NOT NULL DEFAULT 'Not Eligible',
  `s3pass` varchar(22) NOT NULL DEFAULT 'Not Eligible',
  `s4pass` varchar(22) NOT NULL DEFAULT 'Not Eligible',
  `s5pass` varchar(22) NOT NULL DEFAULT 'Not Eligible'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`username`, `password`, `fname`, `lname`, `currclass`, `gender`, `contact`, `emailid`, `s1pass`, `s2pass`, `s3pass`, `s4pass`, `s5pass`) VALUES
('Pranjal', 'qwerty', 'Vinod', 'gupta', 5, 'M', 2147483647, 'Vinodguptakota@gmail.com', 'NotEligible', 'Not Eligible', 'Not Eligible', 'Not Eligible', 'Not Eligible'),
('a', 'a', 'a', 'a', 22, 'M', 206060606, 'kugkugkj', 'Not Eligible', 'Not Eligible', 'Not Eligible', 'Not Eligible', 'Not Eligible'),
('b', 'b', 'Vinod', 'gupta', 2, 'M', 2147483647, 'Vinodguptakota@gmail.com', 'NotEligible', 'NotEligible', 'NotEligible', 'Eligible', 'NotEligible'),
('ad', 'pass', 'kl', 'll', 10, 'M', 1343, 'Vinodguptakota@gmail.com', 'Eligible', 'Eligible', 'Eligible', 'Eligible', 'Eligible');

-- --------------------------------------------------------

--
-- Table structure for table `studentpref`
--

CREATE TABLE `studentpref` (
  `username` varchar(20) NOT NULL,
  `sp1` varchar(11) DEFAULT NULL,
  `sp2` varchar(11) DEFAULT NULL,
  `sp3` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentpref`
--

INSERT INTO `studentpref` (`username`, `sp1`, `sp2`, `sp3`) VALUES
('qwe', 'a', 'a', 'a'),
('Admin', 'a', 'a', 'a'),
('Pranjal', 'b', 'a', 'c'),
('Pranjal', 'a', 'b', 'a'),
('b', 'a', 'b', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choice1`
--
ALTER TABLE `choice1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice2`
--
ALTER TABLE `choice2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice3`
--
ALTER TABLE `choice3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice4`
--
ALTER TABLE `choice4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question1`
--
ALTER TABLE `question1`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `question2`
--
ALTER TABLE `question2`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `question3`
--
ALTER TABLE `question3`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `question4`
--
ALTER TABLE `question4`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choice1`
--
ALTER TABLE `choice1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `choice2`
--
ALTER TABLE `choice2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `choice3`
--
ALTER TABLE `choice3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `choice4`
--
ALTER TABLE `choice4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
