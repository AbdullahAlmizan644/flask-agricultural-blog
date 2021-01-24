-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2021 at 03:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agricultural_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(200) NOT NULL,
  `message` text NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_number`, `message`, `date`) VALUES
(1, 'Abdullah Al Mizan', 'priyoakashi405@gmail.com', 1862856218, 'hi', '2021-01-16 14:11:41.639434'),
(2, 'Abdullah Al Mizan', 'priyoakashi405@gmail.com', 1862856218, 'hi', '2021-01-16 17:03:55.316750'),
(3, 'Abdullah Al Mizan', 'priyoakashi405@gmail.com', 1862856218, 'hi', '2021-01-16 17:04:40.881092'),
(4, 'Abdullah Al Mizan', 'abdullahalmizan644@gmail.com', 1862856218, 'hi', '2021-01-16 17:07:40.888303'),
(5, 'Abdullah Al Mizan', 'priyoakashi405@gmail.com', 1862856218, 'hi', '2021-01-16 17:08:55.242373'),
(6, 'Abdullah Al Mizan', 'priyoakashi405@gmail.com', 1862856218, 'hi', '2021-01-16 17:13:21.139657');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(200) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `tagline` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `tagline`, `content`, `image`, `date`) VALUES
(1, 'This is first post', 'first-post', 'this is first post', 'karim chacha cha lo', 'first-post.jpeg', '2021-01-16 17:25:59.000000'),
(2, 'this is second post', 'second-post', 'this is second post', 'karim chacha is a good boy', 'first-post.jpeg', '2021-01-16 17:25:59.000000'),
(3, 'this is third post', 'third-post', 'this is third post', 'this is third post', '', '2021-01-24 12:22:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
