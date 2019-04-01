-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 11:17 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `utilizador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `utilizador`
--

CREATE TABLE `utilizador` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilizador`
--

INSERT INTO `utilizador` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$kGo21bZj60OGPAJqCY8vVuT/.ep6CmJGOb2ZxrAriclFgzwkkcIei', NULL, NULL, NULL),
(2, 'mauricio', 'mauricio@gmail.com', '$2y$10$T8.m/CN6u2YnOP12xapC4uPMj2DyRIVdLTNnx1AjLSIEnKGQ9t82C', NULL, NULL, NULL),
(3, 'tiago', 'tiago2@gmail.com', '$2y$10$/Pp1aqB5wP56oSdt3ClF5ugrYV7p2WUX88ehzcYIsYrwjc/kITV4q', NULL, NULL, NULL),
(10, 'tghgfhgfh', 'tiago@gmail.com', '$2y$10$/Pp1aqB5wP56oSdt3ClF5ugrYV7p2WUX88ehzcYIsYrwjc/kITV4q', NULL, '0000-00-00 00:00:00', NULL),
(12, 'duarte', 'duarteleca@hotmail.com', '$2y$10$Wx3UuH0hqfecUkB8gW8ZteWeCFT9gD6oD8raoVh.QWy2s6GGTLUrq', NULL, NULL, '2019-04-01 21:01:37'),
(13, 'testeUser', 'testeUser@hotmail.com', '$2y$10$MYvMhenkVdnyH1Wfsr4Oy.w4lQKDbe1Fo.TgjWautr69nQ4u8NsxO', NULL, NULL, '2019-04-01 20:59:31'),
(15, 'mau-mau_69@hotmail.com', 'mau-mau_69@hotmail.com', '$2y$10$SppR5GrtOSl8gJTb66rVdeRq.b5LYeH9E0Amm2VE6UfbzVYerwpsu', NULL, NULL, NULL),
(16, 'gsfggf', 'ffgfgf@gmail.com', '$2y$10$gceMN1kk.OJ0yve5UNEsK.BTldqwz69GCel9NU0NAL5xRni28Nl0a', '2019-04-01 21:54:05', NULL, '2019-04-01 21:54:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`utilizador_id`);

--
-- Indexes for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk` FOREIGN KEY (`utilizador_id`) REFERENCES `utilizador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
