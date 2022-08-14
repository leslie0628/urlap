-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 10:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlap`
--

-- --------------------------------------------------------

--
-- Table structure for table `urlap01`
--

CREATE TABLE `urlap01` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `e_mail` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `uzenet` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `urlap01`
--

INSERT INTO `urlap01` (`id`, `nev`, `e_mail`, `uzenet`) VALUES
(25, 'teszt', 'teszt@teszt.hu', 'teszt üzenet!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urlap01`
--
ALTER TABLE `urlap01`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urlap01`
--
ALTER TABLE `urlap01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
