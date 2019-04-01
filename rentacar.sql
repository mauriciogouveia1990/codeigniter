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
-- Database: `rentacar`
--

-- --------------------------------------------------------

--
-- Table structure for table `automovel`
--

CREATE TABLE `automovel` (
  `id` int(11) NOT NULL,
  `modelo_id` int(11) DEFAULT NULL,
  `cor_id` int(11) DEFAULT NULL,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `automovel`
--

INSERT INTO `automovel` (`id`, `modelo_id`, `cor_id`, `disponibilidade`, `matricula`, `foto`) VALUES
(1, 15, 2, 0, '01-ZZ-00', 'assets/img/yaris.png'),
(2, 8, 1, 0, '02-ZZ-00', 'assets/img/qashqai.png'),
(3, 1, 3, 1, '03-ZZ-00', 'assets/img/giulietta.png'),
(4, 13, 7, 0, '04-ZZ-00', 'assets/img/gla.png'),
(5, 4, 4, 1, '05-ZZ-00', 'assets/img/a3.png'),
(6, 1, 6, 0, '06-ZZ-00', 'assets/img/giulietta.png'),
(7, 9, 4, 1, '07-ZZ-00', 'assets/img/micra.png'),
(8, 1, 3, 1, NULL, 'assets/img/giulietta.png'),
(9, 6, 4, 0, NULL, 'assets/img/fiesta.png'),
(10, 8, 4, 1, NULL, 'assets/img/qashqai.png'),
(11, 4, 1, 1, NULL, 'assets/img/a3.png'),
(12, 7, 5, 1, NULL, 'assets/img/punto.png'),
(13, 4, 7, 1, NULL, 'assets/img/a3.png'),
(14, 2, 6, 0, NULL, 'assets/img/320.png'),
(15, 13, 1, 1, NULL, 'assets/img/gla.png'),
(16, 14, 1, 0, NULL, 'assets/img/corolla.png'),
(17, 7, 2, 1, NULL, 'assets/img/punto.png'),
(18, 2, 3, 0, NULL, 'assets/img/320.png'),
(19, 1, 7, 1, NULL, 'assets/img/giulietta.png'),
(20, 8, 4, 0, NULL, 'assets/img/qashqai.png'),
(21, 3, 7, 0, NULL, 'assets/img/120.png'),
(22, 5, 5, 1, NULL, 'assets/img/a4.png'),
(23, 11, 1, 1, NULL, 'assets/img/308.png'),
(24, 8, 6, 0, NULL, 'assets/img/qashqai.png'),
(25, 7, 5, 0, NULL, 'assets/img/punto.png'),
(26, 14, 5, 0, NULL, 'assets/img/corolla.png'),
(27, 3, 3, 1, NULL, 'assets/img/120.png'),
(28, 10, 3, 0, NULL, 'assets/img/208.png'),
(29, 11, 2, 1, NULL, 'assets/img/308.png'),
(30, 13, 7, 0, NULL, 'assets/img/gla.png'),
(31, 1, 4, 1, NULL, 'assets/img/giulietta.png'),
(32, 15, 4, 0, NULL, 'assets/img/yaris.png'),
(33, 12, 7, 0, NULL, 'assets/img/classea.png'),
(34, 6, 3, 1, NULL, 'assets/img/fiesta.png'),
(35, 8, 7, 1, NULL, 'assets/img/qashqai.png'),
(36, 14, 4, 0, NULL, 'assets/img/corolla.png'),
(37, 5, 3, 1, NULL, 'assets/img/a4.png'),
(38, 14, 5, 0, NULL, 'assets/img/corolla.png'),
(39, 13, 3, 1, NULL, 'assets/img/gla.png'),
(40, 7, 4, 0, NULL, 'assets/img/punto.png'),
(41, 1, 5, 1, NULL, 'assets/img/giulietta.png'),
(42, 15, 6, 0, NULL, 'assets/img/yaris.png'),
(43, 15, 5, 0, NULL, 'assets/img/yaris.png'),
(44, 12, 7, 0, NULL, 'assets/img/classea.png'),
(45, 9, 7, 1, NULL, 'assets/img/micra.png'),
(46, 3, 2, 0, NULL, 'assets/img/120.png'),
(47, 1, 2, 1, NULL, 'assets/img/giulietta.png'),
(48, 2, 2, 1, NULL, 'assets/img/320.png'),
(49, 4, 2, 1, NULL, 'assets/img/a3.png'),
(50, 3, 3, 1, NULL, 'assets/img/120.png'),
(51, 8, 4, 1, NULL, 'assets/img/qashqai.png'),
(52, 14, 5, 0, NULL, 'assets/img/corolla.png'),
(53, 1, 4, 0, NULL, 'assets/img/giulietta.png'),
(54, 4, 7, 0, NULL, 'assets/img/a3.png'),
(55, 5, 6, 1, NULL, 'assets/img/a4.png'),
(56, 1, 7, 1, NULL, 'assets/img/giulietta.png'),
(57, 6, 2, 0, NULL, 'assets/img/fiesta.png'),
(58, 15, 5, 0, NULL, 'assets/img/yaris.png'),
(59, 11, 7, 1, NULL, 'assets/img/308.png'),
(60, 1, 3, 1, NULL, 'assets/img/giulietta.png'),
(61, 12, 5, 0, NULL, 'assets/img/classea.png'),
(62, 10, 5, 1, NULL, 'assets/img/208.png'),
(63, 9, 4, 0, NULL, 'assets/img/micra.png'),
(64, 1, 2, 1, NULL, 'assets/img/giulietta.png'),
(65, 4, 3, 1, NULL, 'assets/img/a3.png'),
(66, 3, 6, 0, NULL, 'assets/img/120.png'),
(67, 14, 4, 0, NULL, 'assets/img/corolla.png'),
(68, 15, 6, 0, NULL, 'assets/img/yaris.png'),
(69, 12, 4, 0, NULL, 'assets/img/classea.png'),
(70, 8, 4, 0, NULL, 'assets/img/qashqai.png'),
(71, 3, 4, 0, NULL, 'assets/img/120.png'),
(72, 14, 7, 0, NULL, 'assets/img/corolla.png'),
(73, 15, 3, 0, NULL, 'assets/img/yaris.png'),
(74, 2, 7, 0, NULL, 'assets/img/320.png'),
(75, 4, 4, 0, NULL, 'assets/img/a3.png'),
(76, 14, 5, 0, NULL, 'assets/img/corolla.png'),
(77, 15, 4, 0, NULL, 'assets/img/yaris.png'),
(78, 3, 3, 0, NULL, 'assets/img/120.png'),
(79, 6, 7, 0, NULL, 'assets/img/fiesta.png'),
(80, 3, 7, 1, NULL, 'assets/img/120.png'),
(81, 3, 3, 1, NULL, 'assets/img/120.png'),
(82, 4, 5, 0, NULL, 'assets/img/a3.png'),
(83, 12, 7, 1, NULL, 'assets/img/classea.png'),
(84, 4, 3, 0, NULL, 'assets/img/a3.png'),
(85, 12, 7, 0, NULL, 'assets/img/classea.png'),
(86, 12, 7, 1, NULL, 'assets/img/classea.png'),
(87, 10, 4, 1, NULL, 'assets/img/208.png'),
(88, 9, 6, 0, NULL, 'assets/img/micra.png'),
(89, 7, 4, 1, NULL, 'assets/img/punto.png'),
(90, 1, 4, 1, NULL, 'assets/img/giulietta.png'),
(91, 5, 5, 1, NULL, 'assets/img/a4.png'),
(92, 7, 2, 0, NULL, 'assets/img/punto.png'),
(93, 3, 6, 0, NULL, 'assets/img/120.png'),
(94, 12, 4, 0, NULL, 'assets/img/classea.png'),
(95, 11, 2, 0, NULL, 'assets/img/308.png'),
(96, 13, 3, 1, NULL, 'assets/img/gla.png'),
(97, 5, 2, 0, NULL, 'assets/img/a4.png'),
(98, 3, 1, 0, NULL, 'assets/img/120.png'),
(99, 4, 2, 0, NULL, 'assets/img/a3.png'),
(100, 14, 5, 0, NULL, 'assets/img/corolla.png'),
(140, 15, 7, 0, '01-00-01', 'assets/img/yaris.png'),
(163, 15, 11, 0, '00-00-00', 'assets/img/yaris.png'),
(164, 15, 3, 1, '00-00-00', 'assets/img/yaris.png'),
(165, 15, 7, 1, '55-55-55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `assunto` varchar(50) DEFAULT NULL,
  `mensagem` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(7, 'svcav', 'usertest@ponchaadvis', 'Suporte', 'davsdvd'),
(8, 'svcav', 'usertest@ponchaadvis', 'Suporte', 'davsdvd'),
(9, 'nome', 'teste@ponchaadvisor.', 'Sugestões', 'evwvwevewvwevwevwevwv'),
(10, 'fwef04', 'admin04@ponchaadviso', 'Suporte', '04wefweffwe'),
(11, 'fwef04', 'teste04@ponchaadviso', 'Suporte', '04qef we fwfwf '),
(12, 'fwef04', 'teste04@ponchaadviso', 'Suporte', '04qef we fwfwf ');

-- --------------------------------------------------------

--
-- Table structure for table `cor`
--

CREATE TABLE `cor` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cor`
--

INSERT INTO `cor` (`id`, `nome`) VALUES
(1, 'vermelho'),
(2, 'verde'),
(3, 'preto'),
(4, 'branco'),
(5, 'cinzento'),
(6, 'azul'),
(7, 'amarelo'),
(11, 'laranja');

-- --------------------------------------------------------

--
-- Table structure for table `fabricante`
--

CREATE TABLE `fabricante` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fabricante`
--

INSERT INTO `fabricante` (`id`, `nome`) VALUES
(1, 'Alfa Romeo'),
(2, 'BMW'),
(3, 'Audi'),
(4, 'Ford'),
(5, 'Fiat'),
(6, 'Nissan'),
(7, 'Peugeot'),
(8, 'Mercedes'),
(9, 'Toyota');

-- --------------------------------------------------------

--
-- Table structure for table `modelo`
--

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fabricante_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelo`
--

INSERT INTO `modelo` (`id`, `nome`, `fabricante_id`) VALUES
(1, 'Gulieta', 1),
(2, '320', 2),
(3, '120', 2),
(4, 'A3', 3),
(5, 'A4', 3),
(6, 'Fiesta', 4),
(7, 'Punto', 5),
(8, 'Qashqai', 6),
(9, 'Micra', 6),
(10, '208', 7),
(11, '308', 7),
(12, 'Classe A', 8),
(13, 'GLA', 8),
(14, 'Corolla', 9),
(15, 'Yaris', 9);

-- --------------------------------------------------------

--
-- Table structure for table `utilizador`
--

CREATE TABLE `utilizador` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tipoUtilizador` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilizador`
--

INSERT INTO `utilizador` (`id`, `nome`, `username`, `email`, `pass`, `tipoUtilizador`) VALUES
(1, 'admin', 'admin@rentacar.com', 'admin@rentacar.com', '$2y$10$I6XSXvQB.nqd5/vm3IDJ9O8hdx5vCH9j.lWo7lrZLNwR2Y/FcWs6C', 1),
(2, 'usertest', 'usertest@rentacar.com', 'usertest@rentacar.com', '$2y$10$rQTXJSvYLvOjnjdIBb8V7eRKRT3.zNzRPSwBi0lkzK7AIz2.rfDVm', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automovel`
--
ALTER TABLE `automovel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-model_idx` (`modelo_id`),
  ADD KEY `fk-color_idx` (`cor_id`);

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-fabricante_idx` (`fabricante_id`);

--
-- Indexes for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automovel`
--
ALTER TABLE `automovel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cor`
--
ALTER TABLE `cor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `automovel`
--
ALTER TABLE `automovel`
  ADD CONSTRAINT `fk-color` FOREIGN KEY (`cor_id`) REFERENCES `cor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk-model` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk-fabricante` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
