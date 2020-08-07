-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 12:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_checker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `civil services (preliminary) examination, 2018 series a`
--

CREATE TABLE `civil services (preliminary) examination, 2018 series a` (
  `question_number` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `civil services (preliminary) examination, 2018 series a`
--

INSERT INTO `civil services (preliminary) examination, 2018 series a` (`question_number`, `answer`) VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 3),
(7, 1),
(8, 4),
(9, 3),
(10, 1),
(11, 3),
(12, 4),
(13, 1),
(14, 4),
(15, 3),
(16, 1),
(17, 3),
(18, 4),
(19, 1),
(20, 2),
(21, 2),
(22, 2),
(23, 1),
(24, 2),
(25, 2),
(26, 4),
(27, 4),
(28, 1),
(29, 1),
(30, 1),
(31, 3),
(32, 1),
(33, 1),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 1),
(40, 2),
(41, 3),
(42, 4),
(43, 3),
(44, 2),
(45, 3),
(46, 2),
(47, 3),
(48, 3),
(49, 3),
(50, 4),
(51, 3),
(52, 3),
(53, 2),
(54, 1),
(55, 4),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 4),
(61, 1),
(62, 4),
(63, 2),
(64, 2),
(65, 1),
(66, 2),
(67, 4),
(68, 4),
(69, 3),
(70, 4),
(71, 2),
(72, 4),
(73, 2),
(74, 3),
(75, 3),
(76, 4),
(77, 1),
(78, 3),
(79, 1),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 4),
(85, 1),
(86, 2),
(87, 4),
(88, 3),
(89, 2),
(90, 3),
(91, 2),
(92, 3),
(93, 2),
(94, 1),
(95, 1),
(96, 2),
(97, 3),
(98, 1),
(99, 4),
(100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `combined defence services examination (i), 2019 series a maths`
--

CREATE TABLE `combined defence services examination (i), 2019 series a maths` (
  `question_number` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combined defence services examination (i), 2019 series a maths`
--

INSERT INTO `combined defence services examination (i), 2019 series a maths` (`question_number`, `answer`) VALUES
(1, 4),
(2, 1),
(3, 1),
(4, 4),
(5, 1),
(6, 3),
(7, 3),
(8, 3),
(9, 1),
(10, 3),
(11, 3),
(12, 2),
(13, 3),
(14, 4),
(15, 2),
(16, 1),
(17, 1),
(18, 4),
(19, 3),
(20, 3),
(21, 4),
(22, 4),
(23, 3),
(24, 4),
(25, 1),
(26, 3),
(27, 3),
(28, 1),
(29, 4),
(30, 4),
(31, 2),
(32, 3),
(33, 2),
(34, 4),
(35, 4),
(36, 3),
(37, 3),
(38, 1),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 3),
(44, 2),
(45, 2),
(46, 1),
(47, 3),
(48, 2),
(49, 4),
(50, 3),
(51, 2),
(52, 3),
(53, 2),
(54, 2),
(55, 2),
(56, 3),
(57, 1),
(58, 2),
(59, 1),
(60, 3),
(61, 3),
(62, 3),
(63, 2),
(64, 3),
(65, 4),
(66, 4),
(67, 2),
(68, 1),
(69, 1),
(70, 4),
(71, 3),
(72, 1),
(73, 1),
(74, 2),
(75, 3),
(76, 1),
(77, 1),
(78, 3),
(79, 3),
(80, 3),
(81, 2),
(82, 1),
(83, 3),
(84, 4),
(85, 3),
(86, 2),
(87, 3),
(88, 4),
(89, 4),
(90, 3),
(91, 1),
(92, 3),
(93, 4),
(94, 1),
(95, 2),
(96, 3),
(97, 4),
(98, 3),
(99, 1),
(100, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `civil services (preliminary) examination, 2018 series a`
--
ALTER TABLE `civil services (preliminary) examination, 2018 series a`
  ADD PRIMARY KEY (`question_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
