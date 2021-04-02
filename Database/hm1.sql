-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2021 at 04:57 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `adds` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `f_name`, `l_name`, `adds`, `age`, `email`, `ph_no`) VALUES
(1, 'sarfarz', 'kahan', 'Bangalore', 21, 'ahmedsarfaraz@gmail.com', 2147483647),
(2, 'altamash', 'subedaar', 'mumbai', 19, 'altamshsebhedar@gmail.com', 2147483647),
(3, 'akhtar', 'khan', 'Karimganj', 23, 'akhtarkhanz@yahoo.com', 2147483647),
(4, 'sudheer', 'sharma', 'lucknow', 25, 'sudheer@gmail.com', 2147483647),
(5, 'nixon', 'dr', 'chennai', 39, 'nixonkabir@hotmail.com', 2147483647),
(6, 'masrur', 'akhtar', 'Bengaluru', 35, 'kkakhtar143@gmail.com', 23562),
(7, 'altamsh', 'akhtar', 'assam', 33, 'Nikhilsahani@gmail.com', 2356246),
(8, 'altamsh', 'khan', 'jfhjdfh', 7465784, 'mmakhter143@gmail.com', 2147483647),
(9, 'sarfaraz', 'khan', 'mumbai', 23, 'Nikhilsahani49@gmail.com', 1234567890),
(10, 'sudheer', 'khan', 'lucknow', 34, 'mmakhtar143@gmail.com', 988763475),
(11, 'sudheer', 'khan', 'lucknow', 34, 'mmakhtar143@gmail.com', 988763475),
(12, 'misbah', 'khan', 'mysore', 23, 'misb@gmail.com', 83785279),
(13, 'misbah', 'khan', 'mysore', 23, 'misb@gmail.com', 83785279),
(14, 'misbah', 'khan', 'mysore', 23, 'misb@gmail.com', 83785279),
(15, 'sudheer', 'akhtar', 'Bengaluru', 57, 'mmakhter143@gmail.com', 34737),
(16, 'sudheer', 'akhtar', 'Bengaluru', 57, 'mmakhter143@gmail.com', 34737),
(17, 'masuma', 'akhtar', 'karimganj', 34, 'Nikhilsahani@gmail.com', 985654353),
(18, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(19, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(20, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(21, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(22, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(23, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(24, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(25, 'altamsh', 'yhjkty', 'tyjtk', 56, 'mmakhter143@gmail.com', 478583476),
(26, 'kabir khan', 'hello world', 'bangalore', 34, 'mmakhter143@gmail.com', 2147483647),
(27, 'kabir khan', 'hello world', 'bangalore', 34, 'mmakhter143@gmail.com', 2147483647),
(28, 'kabir khan2', 'hello world', 'bangalore', 34, 'mmakhter143@gmail.com', 2147483647),
(29, 'kabir khan24', 'hello world', 'bangalore', 34, 'mmakhter143@gmail.com', 2147483647),
(30, 'i\'m khan', 'don\'t know', 'bangalore', 34, 'mmakhter143@gmail.com', 2147483647),
(31, 'Kabir', 'khan', 'Bengaluru', 56, 'Nikhilsahani49@gmail.com', 2147483647),
(32, 'Mis', '', '', 0, '', 0),
(33, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(34, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(35, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(36, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(37, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(38, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(39, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(40, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(41, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(42, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(43, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(44, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(45, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(46, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(47, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(48, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(49, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(50, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(51, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(52, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(53, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(54, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(55, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(56, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(57, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(58, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(59, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(60, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(61, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(62, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(63, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(64, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(65, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(66, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(67, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(68, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(69, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(70, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(71, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(72, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(73, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(74, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(75, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(76, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(77, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(78, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(79, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(80, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(81, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(82, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(83, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(84, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(85, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(86, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(87, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(88, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(89, 'misbah', 'Rahman', 'Bengaluru', 25, 'mmakhter143@gmail.com', 2147483647),
(90, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(91, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(92, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(93, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(94, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(95, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(96, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(97, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(98, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(99, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(100, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(101, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(102, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(103, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(104, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(105, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(106, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(107, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(108, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(109, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(110, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(111, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(112, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(113, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(114, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(115, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(116, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(117, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(118, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(119, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(120, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(121, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(122, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(123, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(124, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(125, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(126, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(127, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(128, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(129, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(130, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(131, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(132, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(133, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(134, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(135, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(136, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(137, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(138, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(139, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(140, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(141, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(142, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(143, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(144, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(145, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(146, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(147, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(148, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(149, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(150, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(151, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(152, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(153, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(154, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(155, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(156, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(157, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(158, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(159, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(160, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(161, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(162, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(163, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(164, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(165, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(166, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(167, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(168, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(169, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(170, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(171, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(172, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(173, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(174, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(175, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(176, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(177, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(178, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(179, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(180, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(181, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(182, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(183, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(184, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(185, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(186, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(187, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(188, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(189, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(190, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(191, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(192, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(193, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(194, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(195, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(196, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(197, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(198, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(199, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(200, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(201, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(202, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(203, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(204, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(205, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(206, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(207, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(208, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(209, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(210, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(211, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(212, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(213, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(214, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(215, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(216, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(217, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(218, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(219, 'masrur', 'Ahmed', 'Bengaluru', 67, 'mmakhter143@gmail.com', 2147483647),
(220, 'Masrur', 'Akhtar', 'Bengaluru', 22, 'kkakhtar143@gmail.com', 2147483647),
(221, 'Altamash ', 'Khan', 'Mumbai', 20, 'mmakhter143@gmail.com', 2147483647),
(222, 'Sarfaraz', 'Akhtar', 'Patna', 26, 'Nikhilsahani@gmail.com', 2147483647),
(223, 'Misbah', 'Sultana', 'Bengaluru', 20, 'msb@gmail.com', 2147483647),
(224, 'Altamash', 'Subhedar', 'Mumbai', 22, 'subhedaraltamash@gmail.com', 2147483647),
(225, 'Sumaiya', 'banu', 'Bengaluru', 86, 'Nikhilsahani49@gmail.com', 2147483647),
(226, 'Sadika', 'Banu', 'Mangalore', 22, 'mmakhtar143@gmail.com', 1234567890),
(227, 'Aamir', 'Khan', 'Mumbai', 55, 'aamir@gmail.com', 1234598765),
(228, 'Kabir', 'Khan', 'Bengaluru', 35, 'khan@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(40) NOT NULL,
  `e_email` varchar(30) NOT NULL,
  `e_ph_no` int(11) NOT NULL,
  `position` varchar(25) NOT NULL,
  `joining_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `e_name`, `e_email`, `e_ph_no`, `position`, `joining_date`) VALUES
(1, 'Md Masrur Akhtar', 'kkakhtar143@gmail.com', 2147483647, 'Manager', '2021-01-09 12:21:47'),
(2, 'Md Altamsh Akhtar', 'mmakhtar143@gmail.com', 2147483647, 'Room Service', '2021-01-09 12:21:47'),
(4, 'Misba Sultan', 'msb@gmail.com', 2147483647, 'Asst Manager', '2021-01-09 13:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `check_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `check_out` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `room_id`, `customer_id`, `check_in`, `check_out`) VALUES
(217, 28, 220, '2020-11-19 18:30:00', '2020-11-21 18:30:00'),
(218, 27, 221, '2020-11-20 18:30:00', '2020-11-29 18:30:00'),
(219, 28, 222, '2020-11-25 18:30:00', '2020-12-04 18:30:00'),
(220, 28, 223, '2020-11-20 18:30:00', '2020-11-29 18:30:00'),
(221, 28, 224, '2020-11-21 18:30:00', '2020-11-29 18:30:00'),
(222, 31, 225, '2020-12-28 18:30:00', '2020-12-30 18:30:00'),
(223, 31, 226, '2021-01-05 18:30:00', '2021-01-07 18:30:00'),
(224, 31, 227, '2021-01-31 18:30:00', '2021-02-06 18:30:00'),
(225, 31, 228, '2021-01-07 18:30:00', '2021-01-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(30) NOT NULL,
  `room_type` varchar(10) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `room_desc` varchar(255) NOT NULL,
  `room_size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `room_type`, `price`, `image`, `room_desc`, `room_size`) VALUES
(28, 'City View Room 2', 'Luxury', '136.00', 'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&h=350', 'Comfortable room decorated in pastel tones. Standard rooms are equipped with shower or bathtub and some of them with balcony overlooking hotel garden. Each room is air conditioned and has a flat-screen TV with international TV channels, cozy king size bed', 67),
(30, 'Taj Club Sea View', 'Luxury', '200.00', 'https://images.pexels.com/photos/545034/pexels-photo-545034.jpeg?auto=compress&cs=tinysrgb&h=350', 'Comfortable room decorated in pastel tones. Standard rooms are equipped with shower or bathtub and some of them with balcony overlooking hotel garden. Each room is air conditioned and has a flat-screen TV with international TV channels, cozy king size bed', 82),
(27, 'Sea View Luxury Room', 'Delux', '100.00', 'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&h=350', 'Our king size four posterOur Deluxe Twin/Large Double also provides views over landscaped gardens. It has a seating area, digital safe, minibar and luxurious duck down bedding. This room can be configured with either 2 single beds or zip and linked to pro', 75),
(29, 'Wayne Manor Room', 'Delux', '300.00', 'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg?auto=compress&cs=tinysrgb&h=350', 'Rooms interiors are like Wayne Manor is a fictional American mansion appearing in American comic books published by DC Comics. It is the personal residence of Bruce Wayne. Comfortable room decorated in pastel tones. ', 85),
(31, 'Sunrise View Room', 'Delux', '300.00', 'https://images.pexels.com/photos/1267438/pexels-photo-1267438.jpeg?auto=compress&cs=tinysrgb&h=350', 'The Standard Room comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings, and a balcony. Our ultramodern glass bathroom is equipped with a hairdryer, magnifying sha', 90);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(20) NOT NULL,
  `pswd` char(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `pswd`, `created_at`) VALUES
(7, 'sarfaraz', '12345', '2020-11-20 17:18:03'),
(8, 'akhtar', '12345', '2021-01-09 14:55:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
