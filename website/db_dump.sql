
-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 17, 2021 at 03:09 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivalabavaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE DATABASE IF NOT EXISTS vivalabavaria;
USE vivalabavaria;

CREATE TABLE `bayern` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bayern`
--

INSERT INTO `bayern` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'superadmin', '3c10f0ba944360e3b58c2a9d701bc49c', '2021-05-17 15:09:38'),
(2, 'wurzelsepp', 'e6b11d20d1eb13fed316d539cae335c8', '2021-05-17 15:09:39'),
(3, 'hacklberger', '177c78e0878ddbb5a9e19ed635c35da6', '2021-05-17 15:09:40'),
(4, 'augustfan', 'a45958517604f5cd90d6ee51ad9cfdb6', '2021-05-17 15:09:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayern`
--
ALTER TABLE `bayern`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayern`
--
ALTER TABLE `bayern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
