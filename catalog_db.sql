-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2020 at 09:23 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artifacts`
--

CREATE TABLE `Artifacts` (
  `id` int(11) NOT NULL,
  `artifactName` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artifacts`
--

INSERT INTO `Artifacts` (`id`, `artifactName`, `vendor`, `material`, `image`, `section`, `createdAt`, `updatedAt`, `userId`) VALUES
(25, 'Desktop', 'Apple Ltd', 'Metal/Plastic', 'http://127.0.0.1:5000/images/oldcomp.jpeg1602674755702.jpg', 'A14', '2020-10-14 11:23:15', '2020-10-14 11:25:55', 1),
(26, 'Keyboard', 'Mac', 'plastic', 'http://127.0.0.1:5000/images/keyboard1.png1602674655762.png', 'A123', '2020-10-14 11:24:15', '2020-10-14 11:24:15', 1),
(27, 'CPU', 'Intel', 'Metal', 'http://127.0.0.1:5000/images/cpu1.jpeg1602674803631.jpg', 'ab', '2020-10-14 11:26:43', '2020-10-14 17:17:45', 1),
(28, 'CPU', 'Toshiba', 'plastic/Metal', 'http://127.0.0.1:5000/images/cpu2.jpeg1602674841151.jpg', 'ab', '2020-10-14 11:27:21', '2020-10-14 11:27:21', 1),
(29, 'Keyboard', 'Apple Ltd', 'plastic', 'http://127.0.0.1:5000/images/keyboard1.png1602675366631.png', 'BA30', '2020-10-14 11:36:06', '2020-10-14 11:36:06', 4),
(30, 'Mouse', 'Apple Ltd', 'Metal/Plastic', 'http://127.0.0.1:5000/images/desktop2.jpeg1602691463468.jpg', 'A124', '2020-10-14 16:04:23', '2020-10-14 16:04:23', 4),
(31, 'Desktop', 'Toshiba', 'plastic/Metal', 'http://127.0.0.1:5000/images/desktop2.jpeg1602691525320.jpg', 'A130', '2020-10-14 16:05:25', '2020-10-14 16:05:25', 4),
(32, 'Keyboard', 'HP', 'plastic', 'http://127.0.0.1:5000/images/keyboard1.png1602691634730.png', 'A124', '2020-10-14 16:07:14', '2020-10-14 16:07:14', 4),
(33, 'Desktop', 'Apple Ltd', 'plastic', 'http://127.0.0.1:5000/images/oldcomp.jpeg1602691694107.jpg', 'A123', '2020-10-14 16:08:14', '2020-10-14 16:08:14', 4),
(34, 'Mouse', 'Mac', 'plastic', 'http://127.0.0.1:5000/images/desktop3.jpeg1602691743456.jpg', 'A14', '2020-10-14 16:09:03', '2020-10-14 16:09:03', 4),
(35, 'CPU', 'Mac', 'Metal', 'http://127.0.0.1:5000/images/cpu2.jpeg1602691774926.jpg', 'A14', '2020-10-14 16:09:34', '2020-10-14 16:09:34', 4);

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20201007081939-create-user.js'),
('20201007083418-create-artifact.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `admin`, `createdAt`, `updatedAt`) VALUES
(1, 'Caleb', 'Osano', 'caleb.osano@gmail.com', 'caleb', '$2b$10$rc3SBI/H8SwPSI3GwL2hiupeYaUp63wFaopox7B.PlU0zg1mSMX3G', 1, '2020-10-07 10:11:45', '2020-10-07 10:11:45'),
(2, 'Maureen', 'Bor', 'maureenjepz@gmail.com', 'maureen', '$2b$10$tstCX1YhE2xNUKrn/AMfF./Im4lu7hFP03sLmGSEIrydCHOhMDYUq', NULL, '2020-10-07 21:35:39', '2020-10-07 21:35:39'),
(3, 'Jim', 'Mecha', 'jim@gmail.com', 'mecha', '$2b$10$Qdo0Mln/1fDMmZdVTI.TluCfPIRzMmZoNnLTRBkmyvQ1BCBuQ03HO', NULL, '2020-10-08 08:37:11', '2020-10-08 08:37:11'),
(4, 'Dan', 'Mosongo', 'dan@gamil.com', 'dan', '$2b$10$jdZpb8K6ejDd3cQCZkfT.OIAgwQPxZAR7IgCWhCEju9ORUJOveflO', NULL, '2020-10-14 08:16:48', '2020-10-14 08:16:48'),
(5, 'Elizabeth', 'Moraa', 'elizabeth@gmail.com', 'elizabeth', '$2b$10$2AvSSn4.f0JtxDfE5QVu5.XplJRZR1ecFC1fxtxV1ilUOfBYjioKe', NULL, '2020-10-14 08:34:38', '2020-10-14 08:34:38'),
(6, 'James', 'Mageto', 'james@gmail.com', 'james', '$2b$10$4HHPvr1eAv5VOF78PcVZTOFK1xL5nEpzJOv/wWNC2cJ2HaLm4Rkw2', 1, '2020-10-14 08:42:50', '2020-10-14 08:42:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artifacts`
--
ALTER TABLE `Artifacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artifacts`
--
ALTER TABLE `Artifacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Artifacts`
--
ALTER TABLE `Artifacts`
  ADD CONSTRAINT `Artifacts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
