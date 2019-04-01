-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 08:25 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `tipo`, `estado`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$kGo21bZj60OGPAJqCY8vVuT/.ep6CmJGOb2ZxrAriclFgzwkkcIei', 1, 1),
(2, 'mauricio', 'mauricio@gmail.com', '$2y$10$T8.m/CN6u2YnOP12xapC4uPMj2DyRIVdLTNnx1AjLSIEnKGQ9t82C', 5, 1),
(3, 'tiago', 'tiago2@gmail.com', '$2y$10$/Pp1aqB5wP56oSdt3ClF5ugrYV7p2WUX88ehzcYIsYrwjc/kITV4q', 3, 1),
(10, 't', 'tiago@gmail.com', '$2y$10$/Pp1aqB5wP56oSdt3ClF5ugrYV7p2WUX88ehzcYIsYrwjc/kITV4q', 3, 1),
(12, 'duarte', 'duarteleca@hotmail.com', '$2y$10$Wx3UuH0hqfecUkB8gW8ZteWeCFT9gD6oD8raoVh.QWy2s6GGTLUrq', 5, 2),
(13, 'testeUser', 'testeUser@hotmail.com', '$2y$10$MYvMhenkVdnyH1Wfsr4Oy.w4lQKDbe1Fo.TgjWautr69nQ4u8NsxO', 5, 2),
(15, 'mau-mau_69@hotmail.com', 'mau-mau_69@hotmail.com', '$2y$10$SppR5GrtOSl8gJTb66rVdeRq.b5LYeH9E0Amm2VE6UfbzVYerwpsu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aula`
--

CREATE TABLE `aula` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `lotacao` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora_inicio` datetime DEFAULT NULL,
  `hora_fim` datetime DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `funcionario_admin_id` int(11) NOT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aula`
--

INSERT INTO `aula` (`id`, `nome`, `duracao`, `lotacao`, `data`, `hora_inicio`, `hora_fim`, `tipo`, `sala_id`, `funcionario_admin_id`, `data_inicio`, `data_fim`) VALUES
(1, 'aula 1', '00:00:01', 10, '2019-03-29', '2019-03-06 10:00:00', '2019-03-06 11:00:00', 1, 2, 10, '2019-03-29 10:00:00', '2019-03-29 11:00:00'),
(2, 'aula 2', '00:00:01', 12, '2019-02-26', '2019-03-06 12:00:00', '2019-03-06 13:00:00', 2, 1, 10, '2019-02-26 12:00:00', '2019-02-26 12:00:00'),
(3, 'aula 3', '00:00:01', 12, '2019-02-28', '2019-03-06 14:00:00', '2019-03-06 15:00:00', 3, 1, 2, '2019-02-28 14:00:00', '2019-02-28 15:00:00'),
(4, 'aula 4', '00:00:01', 12, '2019-02-26', '2019-03-06 09:00:00', '2019-03-06 10:00:00', 1, 3, 10, '2019-02-26 09:00:00', '2019-02-26 10:00:00'),
(5, 'aula 5', '00:00:01', 12, '2019-02-26', '2019-03-06 07:00:00', '2019-03-06 08:00:00', 2, 1, 10, '2019-02-26 07:00:00', '2019-02-26 08:00:00'),
(6, '6', '00:00:01', 12, '2019-02-26', '2019-03-06 15:00:00', '2019-03-06 16:00:00', 3, 3, 10, '2019-02-26 15:00:00', '2019-02-26 16:00:00'),
(7, 'aula 7', '00:00:01', 12, '2019-02-25', '2019-03-06 16:00:00', '2019-03-06 17:00:00', 2, 1, 2, '2019-02-25 16:00:00', '2019-02-25 17:00:00'),
(9, 'aula9', '00:00:01', 12, '2019-02-26', '2019-03-06 11:00:00', '2019-03-06 12:00:00', 1, 1, 10, '2019-02-26 11:00:00', '2019-02-26 12:00:00'),
(15, 'Pedro', '00:01:00', 60, '2019-02-28', '2019-03-06 11:11:00', '2019-03-06 11:12:00', 1, 2, 2, '2019-02-28 11:00:00', '2019-02-28 12:00:00'),
(16, 'aula10', '02:00:00', 10, '2019-02-27', '2019-03-06 07:00:00', '2019-03-06 09:00:00', 1, 1, 10, '2019-02-27 07:00:00', '2019-02-27 08:00:00'),
(18, 'aula10', '01:00:00', 10, '2019-02-25', '2019-03-06 18:00:00', '2019-03-06 19:00:00', 1, 1, 2, '2019-02-25 18:00:00', '2019-02-25 19:00:00'),
(22, '[removed]alert&#40;\'hello\'&#41;[removed]', '01:01:00', 10, '2019-03-05', '2006-03-00 00:00:00', '2007-04-00 00:00:00', 1, 1, 10, NULL, NULL),
(24, '/ `*     --- ____    adawwad ', '01:01:00', 10, '2019-03-05', '2006-04-00 00:00:00', '2007-05-00 00:00:00', 1, 1, 10, NULL, NULL),
(25, '/ `*     --- ____    adawwad ', '01:10:00', 4, '2019-03-05', '2000-01-00 00:00:00', '2001-11-00 00:00:00', 1, 1, 10, NULL, NULL),
(26, 'octavio10', '00:01:00', 10, '2019-03-05', '2019-03-05 02:01:00', '2019-03-05 02:02:00', 1, 1, 10, NULL, NULL),
(27, 'Aula de 123', '01:00:00', 10, '2019-03-05', '2019-03-05 10:00:00', '2019-03-05 11:00:00', 1, 1, 10, NULL, NULL),
(28, 'aula 12', '04:00:00', 15, '2019-03-05', '2019-03-05 03:00:00', '2019-03-05 07:00:00', 1, 1, 10, NULL, NULL),
(29, 'aula 100', '01:00:00', 49, '2019-03-05', '2019-03-05 15:00:00', '2019-03-05 16:00:00', 1, 1, 10, NULL, NULL),
(30, 'aula65', '02:19:00', 12, '2019-03-05', '2019-03-05 17:33:00', '2019-03-05 19:52:00', 1, 1, 10, NULL, NULL),
(31, 'aula10', '01:00:00', 25, '2019-03-06', '2019-03-06 10:00:00', '2019-03-06 11:00:00', 1, 2, 10, NULL, NULL),
(32, 'aula10', '01:00:00', 21, '2019-03-06', '2019-03-06 09:00:00', '2019-03-06 10:00:00', 1, 6, 10, NULL, NULL),
(33, 'aula teste', '01:00:00', 24, '2019-03-06', '2019-03-06 10:00:00', '2019-03-06 11:00:00', 1, 2, 10, NULL, NULL),
(34, 'aula teste 2', '01:00:00', 23, '2019-03-28', '2019-03-06 10:00:00', '2019-03-06 11:00:00', 1, 2, 10, NULL, NULL),
(35, 'teste v2', '02:00:00', 45, '2019-03-29', '2019-03-29 09:00:00', '2019-03-29 11:00:00', 1, 1, 10, NULL, NULL),
(36, 'aula10', '01:00:00', -1, '2019-03-06', '2019-03-06 10:00:00', '2019-03-06 11:00:00', 1, 1, 10, NULL, NULL),
(40, 'NOME AULA', '00:01:00', -1, '2019-03-04', '2000-11-00 00:00:00', '2000-12-00 00:00:00', 1, 1, 10, NULL, NULL),
(41, 'NOME2', '00:01:00', 6, '2019-03-04', '2000-11-00 00:00:00', '2000-12-00 00:00:00', 1, 1, 10, NULL, NULL),
(43, '[removed]alert&#40;\'hello\'&#41;[removed]', '01:00:00', 5, '2019-03-05', '2002-02-00 00:00:00', '2003-02-00 00:00:00', 1, 1, 10, NULL, NULL),
(46, 'aula10', '02:00:00', 10, '2019-02-27', '2019-02-28 07:00:00', '2019-02-28 09:00:00', 1, 1, 10, NULL, NULL),
(48, 'aula10', '01:00:00', 10, '2019-02-25', '2019-02-28 18:00:00', '2019-02-28 19:00:00', 1, 1, 2, NULL, NULL),
(49, 'aula10', '00:59:00', 9, '2019-02-27', '2019-02-28 09:01:00', '2019-02-28 10:00:00', 1, 1, 10, NULL, NULL),
(61, 'aula 1', '00:00:01', 12, '2019-03-29', '2019-02-28 10:00:00', '2019-02-28 11:00:00', 1, 2, 10, NULL, NULL),
(63, 'aula 3', '00:00:01', 12, '2019-02-28', '2019-02-28 14:00:00', '2019-02-28 15:00:00', 3, 1, 2, NULL, NULL),
(64, 'aula 4', '00:00:01', 12, '2019-02-26', '2019-02-28 09:00:00', '2019-02-28 10:00:00', 1, 3, 10, NULL, NULL),
(65, 'aula 5', '00:00:01', 12, '2019-02-26', '2019-02-28 07:00:00', '2019-02-28 08:00:00', 2, 1, 10, NULL, NULL),
(66, '6', '00:00:01', 12, '2019-02-26', '2019-02-28 15:00:00', '2019-02-28 16:00:00', 3, 3, 10, NULL, NULL),
(67, 'aula 7', '00:00:01', 12, '0000-00-00', '2019-02-28 16:00:00', '2019-02-28 17:00:00', 2, 1, 2, NULL, NULL),
(69, 'aula9', '00:00:01', 12, '2019-02-26', '2019-02-28 11:00:00', '2019-02-28 12:00:00', 1, 1, 10, NULL, NULL),
(75, 'Pedro', '00:01:00', 60, '2019-02-28', '2019-02-28 11:11:00', '2019-02-28 11:12:00', 1, 2, 2, NULL, NULL),
(76, 'grgtreg', '00:04:00', 11, '2019-03-22', '2019-03-22 05:04:00', '2019-03-22 05:08:00', 1, 2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aula_has_cliente`
--

CREATE TABLE `aula_has_cliente` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `ac_estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aula_has_cliente`
--

INSERT INTO `aula_has_cliente` (`id`, `id_cliente`, `id_aula`, `ac_estado`) VALUES
(1, 2, 1, 'aceite'),
(2, 3, 1, 'pendente'),
(4, 2, 15, NULL),
(6, 2, 16, NULL),
(8, 2, 16, NULL),
(9, 3, 1, NULL),
(15, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(85) DEFAULT NULL,
  `genero` tinytext,
  `data_registo` date DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `localidade` varchar(55) DEFAULT NULL,
  `codigo_postal` varchar(55) DEFAULT NULL,
  `telefone` int(20) DEFAULT NULL,
  `nacionalidade` tinyint(3) DEFAULT NULL,
  `cc` varchar(20) DEFAULT NULL,
  `nif` int(9) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `ultimo_pagamento` date DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `plano_adesao_id` int(11) DEFAULT NULL,
  `foto` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`nome`, `genero`, `data_registo`, `morada`, `localidade`, `codigo_postal`, `telefone`, `nacionalidade`, `cc`, `nif`, `data_nascimento`, `ultimo_pagamento`, `admin_id`, `plano_adesao_id`, `foto`) VALUES
('mauricio', 'm', '2019-02-22', 'gregegre', '1', '9300-000', 2147483647, 1, '234234234', 24234234, '2019-01-30', '0000-00-00', 2, 2, 'logo3.png'),
('tiago', 'm', NULL, NULL, NULL, NULL, NULL, NULL, '12345', 54321, NULL, NULL, 3, NULL, NULL),
('duarte', 'm', '2019-03-06', 'regregerg', '1', '4344-554', 1111111, 1, '564646', 45654645, '2019-03-13', '0000-00-00', 12, 2, NULL),
('testeUser', 'm', '2019-03-08', 'regregerg', 'Camara de Lobos', '4344-554', 1111111, 33, '5435435434534', 2147483647, '2019-03-08', '0000-00-00', 13, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cliente_has_planotreino`
--

CREATE TABLE `cliente_has_planotreino` (
  `id` int(11) NOT NULL,
  `id_planoTreino` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `cpt_estado` varchar(45) DEFAULT NULL,
  `cpt_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente_has_planotreino`
--

INSERT INTO `cliente_has_planotreino` (`id`, `id_planoTreino`, `id_cliente`, `cpt_estado`, `cpt_data`) VALUES
(1, 2, 2, 'pendente', '2019-03-01'),
(2, 2, 3, 'rejeitado', '2019-03-02'),
(4, 16, 12, 'aceite', '2019-03-01'),
(7, 47, 2, 'pendente', '2019-03-07'),
(8, 48, 2, 'pendente', '2019-03-07'),
(9, 50, 2, 'pendente', '2019-03-07'),
(10, 57, 2, 'pendente', '2019-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `equipamento`
--

CREATE TABLE `equipamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `data_aquisicao` date DEFAULT NULL,
  `garantia` date DEFAULT NULL,
  `categoria` tinyint(1) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `sala_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exercicio`
--

CREATE TABLE `exercicio` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `dificuldade` varchar(45) DEFAULT NULL,
  `duracao` int(3) DEFAULT NULL,
  `tipo_exercicio` varchar(20) DEFAULT NULL,
  `tipo_duracao` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `funcionario_admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercicio`
--

INSERT INTO `exercicio` (`id`, `nome`, `descricao`, `dificuldade`, `duracao`, `tipo_exercicio`, `tipo_duracao`, `foto`, `funcionario_admin_id`) VALUES
(1, 'exercicio a', 'O supino com barra em banco plano é o exercício mais conhecido e realizado nos ginásios. Embora não existam músculos peitorais “superiores” e “inferiores”, o supino plano parece recrutar mais as fibras intermédias (parte esternocostal).', 'Iniciante', 10, 'cardio', 'repetições', '1.gif', 10),
(2, 'exercicio b', 'Esta variação do supino plano coloca uma maior ênfase na parte clavicular (superior) do grande peitoral. O supino inclinado com um ângulo de +45 graus, proporciona uma estimulação 69% mais elevada na “parte superior do peitoral”.', 'Mediano', 2, 'peito', 'minutos', '2.gif', 10),
(3, 'exercicio c', 'O supino declinado é a variação do supino que recruta uma maior percentagem de fibras muscular, muito devido ao fato de também ser o tipo de supino em que é possível utilizar mais peso.', 'Experiente', 5, 'cardio', 'minutos', '3.gif', NULL),
(4, 'exercicio d', 'O supino em máquina é indicado especialmente para os principiantes, ou indivíduos com algum tipo de limitação física que os impeça de treinar com barra e/ou halteres. É ideal para desenvolver força e coordenação suficiente para se posteriormente para os pesos livres.', 'Mediano', 10, 'cardio', 'repetições', '4.gif', NULL),
(5, 'exercicio e', 'Esta variação do supino, é em quase tudo semelhante ao supino com barra em banco plano, com a diferença de serem usados halteres em vez de uma barra, o que permite um arco de movimento mais natural.', 'Iniciante', 30, 'braço', 'segundos', '5.gif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funcionario`
--

CREATE TABLE `funcionario` (
  `nome` varchar(85) DEFAULT NULL,
  `genero` tinytext,
  `data_registo` date DEFAULT NULL,
  `classificacao` int(11) DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `localidade` varchar(55) DEFAULT NULL,
  `codigo_postal` varchar(55) DEFAULT NULL,
  `telefone` int(20) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `cc` varchar(20) DEFAULT NULL,
  `nif` int(9) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funcionario`
--

INSERT INTO `funcionario` (`nome`, `genero`, `data_registo`, `classificacao`, `morada`, `localidade`, `codigo_postal`, `telefone`, `nacionalidade`, `cc`, `nif`, `data_nascimento`, `salario`, `admin_id`, `foto`) VALUES
('mauricio', 'm', '0000-00-00', 0, 'asd', 'asd', '213', 123, '123', '123', 12, '0000-00-00', 12, 2, 'black-circle-logo-with-white-b-1503621.png'),
('t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funcionario_has_cliente`
--

CREATE TABLE `funcionario_has_cliente` (
  `id` int(11) NOT NULL,
  `cliente_admin_id` int(11) NOT NULL,
  `funcionario_admin_id` int(11) NOT NULL,
  `fc_estado` varchar(55) DEFAULT NULL,
  `fc_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funcionario_has_cliente`
--

INSERT INTO `funcionario_has_cliente` (`id`, `cliente_admin_id`, `funcionario_admin_id`, `fc_estado`, `fc_data`) VALUES
(1, 3, 2, NULL, NULL),
(2, 12, 10, 'rejeitado', '2019-02-26'),
(4, 2, 10, 'pendente', '2019-02-22'),
(5, 2, 10, 'activo', '2019-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mensagem`
--

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `data_envio` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `assunto` varchar(105) DEFAULT NULL,
  `descricao` varchar(545) DEFAULT NULL,
  `de_utilizador_id` int(11) NOT NULL,
  `para_utilizador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `paisId` tinyint(3) UNSIGNED NOT NULL,
  `paisNome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`paisId`, `paisNome`) VALUES
(1, 'AFEGANISTÃO'),
(2, 'ACROTÍRI E DECELIA'),
(3, 'ÁFRICA DO SUL'),
(4, 'ALBÂNIA'),
(5, 'ALEMANHA'),
(6, 'AMERICAN SAMOA'),
(7, 'ANDORRA'),
(8, 'ANGOLA'),
(9, 'ANGUILLA'),
(10, 'ANTÍGUA E BARBUDA'),
(11, 'ANTILHAS NEERLANDESAS'),
(12, 'ARÁBIA SAUDITA'),
(13, 'ARGÉLIA'),
(14, 'ARGENTINA'),
(15, 'ARMÉNIA'),
(16, 'ARUBA'),
(17, 'AUSTRÁLIA'),
(18, 'ÁUSTRIA'),
(19, 'AZERBAIJÃO'),
(20, 'BAHAMAS'),
(21, 'BANGLADECHE'),
(22, 'BARBADOS'),
(23, 'BARÉM'),
(24, 'BASSAS DA ÍNDIA'),
(25, 'BÉLGICA'),
(26, 'BELIZE'),
(27, 'BENIM'),
(28, 'BERMUDAS'),
(29, 'BIELORRÚSSIA'),
(30, 'BOLÍVIA'),
(31, 'BÓSNIA E HERZEGOVINA'),
(32, 'BOTSUANA'),
(33, 'BRASIL'),
(34, 'BRUNEI DARUSSALAM'),
(35, 'BULGÁRIA'),
(36, 'BURQUINA FASO'),
(37, 'BURUNDI'),
(38, 'BUTÃO'),
(39, 'CABO VERDE'),
(40, 'CAMARÕES'),
(41, 'CAMBOJA'),
(42, 'CANADÁ'),
(43, 'CATAR'),
(44, 'CAZAQUISTÃO'),
(45, 'CENTRO-AFRICANA REPÚBLICA'),
(46, 'CHADE'),
(47, 'CHILE'),
(48, 'CHINA'),
(49, 'CHIPRE'),
(50, 'COLÔMBIA'),
(51, 'COMORES'),
(52, 'CONGO'),
(53, 'CONGO REPÚBLICA DEMOCRÁTICA'),
(54, 'COREIA DO NORTE'),
(55, 'COREIA DO SUL'),
(56, 'COSTA DO MARFIM'),
(57, 'COSTA RICA'),
(58, 'CROÁCIA'),
(59, 'CUBA'),
(60, 'DINAMARCA'),
(61, 'DOMÍNICA'),
(62, 'EGIPTO'),
(63, 'EMIRADOS ÁRABES UNIDOS'),
(64, 'EQUADOR'),
(65, 'ERITREIA'),
(66, 'ESLOVÁQUIA'),
(67, 'ESLOVÉNIA'),
(68, 'ESPANHA'),
(69, 'ESTADOS UNIDOS'),
(70, 'ESTÓNIA'),
(71, 'ETIÓPIA'),
(72, 'FAIXA DE GAZA'),
(73, 'FIJI'),
(74, 'FILIPINAS'),
(75, 'FINLÂNDIA'),
(76, 'FRANÇA'),
(77, 'GABÃO'),
(78, 'GÂMBIA'),
(79, 'GANA'),
(80, 'GEÓRGIA'),
(81, 'GIBRALTAR'),
(82, 'GRANADA'),
(83, 'GRÉCIA'),
(84, 'GRONELÂNDIA'),
(85, 'GUADALUPE'),
(86, 'GUAM'),
(87, 'GUATEMALA'),
(88, 'GUERNSEY'),
(89, 'GUIANA'),
(90, 'GUIANA FRANCESA'),
(91, 'GUINÉ'),
(92, 'GUINÉ EQUATORIAL'),
(93, 'GUINÉ-BISSAU'),
(94, 'HAITI'),
(95, 'HONDURAS'),
(96, 'HONG KONG'),
(97, 'HUNGRIA'),
(98, 'IÉMEN'),
(99, 'ILHA BOUVET'),
(100, 'ILHA CHRISTMAS'),
(101, 'ILHA DE CLIPPERTON'),
(102, 'ILHA DE JOÃO DA NOVA'),
(103, 'ILHA DE MAN'),
(104, 'ILHA DE NAVASSA'),
(105, 'ILHA EUROPA'),
(106, 'ILHA NORFOLK'),
(107, 'ILHA TROMELIN'),
(108, 'ILHAS ASHMORE E CARTIER'),
(109, 'ILHAS CAIMAN'),
(110, 'ILHAS COCOS (KEELING)'),
(111, 'ILHAS COOK'),
(112, 'ILHAS DO MAR DE CORAL'),
(113, 'ILHAS FALKLANDS (ILHAS MALVINAS)'),
(114, 'ILHAS FEROE'),
(115, 'ILHAS GEÓRGIA DO SUL E SANDWICH DO SUL'),
(116, 'ILHAS MARIANAS DO NORTE'),
(117, 'ILHAS MARSHALL'),
(118, 'ILHAS PARACEL'),
(119, 'ILHAS PITCAIRN'),
(120, 'ILHAS SALOMÃO'),
(121, 'ILHAS SPRATLY'),
(122, 'ILHAS VIRGENS AMERICANAS'),
(123, 'ILHAS VIRGENS BRITÂNICAS'),
(124, 'ÍNDIA'),
(125, 'INDONÉSIA'),
(126, 'IRÃO'),
(127, 'IRAQUE'),
(128, 'IRLANDA'),
(129, 'ISLÂNDIA'),
(130, 'ISRAEL'),
(131, 'ITÁLIA'),
(132, 'JAMAICA'),
(133, 'JAN MAYEN'),
(134, 'JAPÃO'),
(135, 'JERSEY'),
(136, 'JIBUTI'),
(137, 'JORDÂNIA'),
(138, 'KIRIBATI'),
(139, 'KOWEIT'),
(140, 'LAOS'),
(141, 'LESOTO'),
(142, 'LETÓNIA'),
(143, 'LÍBANO'),
(144, 'LIBÉRIA'),
(145, 'LÍBIA'),
(146, 'LISTENSTAINE'),
(147, 'LITUÂNIA'),
(148, 'LUXEMBURGO'),
(149, 'MACAU'),
(150, 'MACEDÓNIA'),
(151, 'MADAGÁSCAR'),
(152, 'MALÁSIA'),
(153, 'MALAVI'),
(154, 'MALDIVAS'),
(155, 'MALI'),
(156, 'MALTA'),
(157, 'MARROCOS'),
(158, 'MARTINICA'),
(159, 'MAURÍCIA'),
(160, 'MAURITÂNIA'),
(161, 'MAYOTTE'),
(162, 'MÉXICO'),
(163, 'MIANMAR'),
(164, 'MICRONÉSIA'),
(165, 'MOÇAMBIQUE'),
(166, 'MOLDÁVIA'),
(167, 'MÓNACO'),
(168, 'MONGÓLIA'),
(169, 'MONTENEGRO'),
(170, 'MONTSERRAT'),
(171, 'NAMÍBIA'),
(172, 'NAURU'),
(173, 'NEPAL'),
(174, 'NICARÁGUA'),
(175, 'NÍGER'),
(176, 'NIGÉRIA'),
(177, 'NIUE'),
(178, 'NORUEGA'),
(179, 'NOVA CALEDÓNIA'),
(180, 'NOVA ZELÂNDIA'),
(181, 'OMÃ'),
(182, 'PAÍSES BAIXOS'),
(183, 'PALAU'),
(184, 'PALESTINA'),
(185, 'PANAMÁ'),
(186, 'PAPUÁSIA-NOVA GUINÉ'),
(187, 'PAQUISTÃO'),
(188, 'PARAGUAI'),
(189, 'PERU'),
(190, 'POLINÉSIA FRANCESA'),
(191, 'POLÓNIA'),
(192, 'PORTO RICO'),
(193, 'PORTUGAL'),
(194, 'QUÉNIA'),
(195, 'QUIRGUIZISTÃO'),
(196, 'REINO UNIDO'),
(197, 'REPÚBLICA CHECA'),
(198, 'REPÚBLICA DOMINICANA'),
(199, 'ROMÉNIA'),
(200, 'RUANDA'),
(201, 'RÚSSIA'),
(202, 'SAHARA OCCIDENTAL'),
(203, 'SALVADOR'),
(204, 'SAMOA'),
(205, 'SANTA HELENA'),
(206, 'SANTA LÚCIA'),
(207, 'SANTA SÉ'),
(208, 'SÃO CRISTÓVÃO E NEVES'),
(209, 'SÃO MARINO'),
(210, 'SÃO PEDRO E MIQUELÃO'),
(211, 'SÃO TOMÉ E PRÍNCIPE'),
(212, 'SÃO VICENTE E GRANADINAS'),
(213, 'SEICHELES'),
(214, 'SENEGAL'),
(215, 'SERRA LEOA'),
(216, 'SÉRVIA'),
(217, 'SINGAPURA'),
(218, 'SÍRIA'),
(219, 'SOMÁLIA'),
(220, 'SRI LANCA'),
(221, 'SUAZILÂNDIA'),
(222, 'SUDÃO'),
(223, 'SUÉCIA'),
(224, 'SUÍÇA'),
(225, 'SURINAME'),
(226, 'SVALBARD'),
(227, 'TAILÂNDIA'),
(228, 'TAIWAN'),
(229, 'TAJIQUISTÃO'),
(230, 'TANZÂNIA'),
(231, 'TERRITÓRIO BRITÂNICO DO OCEANO ÍNDICO'),
(232, 'TERRITÓRIO DAS ILHAS HEARD E MCDONALD'),
(233, 'TIMOR-LESTE'),
(234, 'TOGO'),
(235, 'TOKELAU'),
(236, 'TONGA'),
(237, 'TRINDADE E TOBAGO'),
(238, 'TUNÍSIA'),
(239, 'TURKS E CAICOS'),
(240, 'TURQUEMENISTÃO'),
(241, 'TURQUIA'),
(242, 'TUVALU'),
(243, 'UCRÂNIA'),
(244, 'UGANDA'),
(245, 'URUGUAI'),
(246, 'USBEQUISTÃO'),
(247, 'VANUATU'),
(248, 'VENEZUELA'),
(249, 'VIETNAME'),
(250, 'WALLIS E FUTUNA'),
(251, 'ZÂMBIA'),
(252, 'ZIMBABUÉ');

-- --------------------------------------------------------

--
-- Table structure for table `plano_adesao`
--

CREATE TABLE `plano_adesao` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `periodicidade` tinyint(1) DEFAULT NULL,
  `tempo_fidelizacao` int(2) DEFAULT NULL,
  `cardiofit_musculacao` tinyint(4) DEFAULT NULL,
  `consulta_nutricao` tinyint(4) DEFAULT NULL,
  `avaliacao_fisica` tinyint(4) DEFAULT NULL,
  `aulas_grupo` tinyint(4) DEFAULT NULL,
  `protocolo` tinyint(2) DEFAULT NULL,
  `identificacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plano_adesao`
--

INSERT INTO `plano_adesao` (`id`, `nome`, `preco`, `periodicidade`, `tempo_fidelizacao`, `cardiofit_musculacao`, `consulta_nutricao`, `avaliacao_fisica`, `aulas_grupo`, `protocolo`, `identificacao`) VALUES
(1, 'Livre Transito', 29, 7, 12, 1, 1, 1, 1, 0, '7643332'),
(2, '2x / Semana', 19, 2, 6, 1, 0, 0, 1, 0, '3242344'),
(3, 'Estudante', 17, 7, 12, 1, 0, 0, 1, 0, '2543534');

-- --------------------------------------------------------

--
-- Table structure for table `plano_treino`
--

CREATE TABLE `plano_treino` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `funcionario_admin_id` int(11) DEFAULT NULL,
  `cliente_admin_id` int(11) DEFAULT NULL,
  `pt_estado` varchar(45) DEFAULT NULL,
  `pt_data` date DEFAULT NULL,
  `pt_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plano_treino`
--

INSERT INTO `plano_treino` (`id`, `nome`, `funcionario_admin_id`, `cliente_admin_id`, `pt_estado`, `pt_data`, `pt_tipo`) VALUES
(1, 'plano teste', 2, 12, 'ativo', NULL, NULL),
(2, 'wefwef', 10, 12, 'ativo', NULL, NULL),
(15, 'plano c', NULL, 12, 'ativo', NULL, NULL),
(16, 'plano d', 2, 12, 'ativo', NULL, NULL),
(17, 'plano e', 2, 12, 'ativo', NULL, NULL),
(34, 'pedido', 10, 12, '1', '2019-02-27', NULL),
(36, 'pedido', 2, 12, 'ativo', '2019-02-27', NULL),
(38, 'ola', NULL, 12, 'ativo', '2019-03-01', NULL),
(44, 'olwfgwrwgwgwgwege', 10, 12, '1', '2019-03-06', 'privado'),
(47, 'pedido', 10, 12, 'ativo', '2019-03-07', 'privado'),
(48, 'pedido', 10, 12, 'pendente', '2019-03-07', 'privado'),
(50, 'pedido', 10, 2, 'pendente', '2019-03-07', 'privado'),
(57, 'pedido', 2, 2, 'pendente', '2019-03-07', 'privado'),
(58, 'gwgrgregreg', NULL, 2, 'ativo', '2019-03-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plano_treino_has_exercicio`
--

CREATE TABLE `plano_treino_has_exercicio` (
  `id` int(11) NOT NULL,
  `plano_treino_id` int(11) NOT NULL,
  `exercicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plano_treino_has_exercicio`
--

INSERT INTO `plano_treino_has_exercicio` (`id`, `plano_treino_id`, `exercicio_id`) VALUES
(15, 15, 5),
(17, 16, 2),
(18, 16, 3),
(24, 17, 2),
(26, 15, 2),
(28, 1, 1),
(29, 15, 1),
(30, 38, 4),
(32, 17, 1),
(33, 15, 3),
(34, 1, 2),
(35, 44, 1),
(36, 44, 2),
(37, 44, 4),
(38, 58, 1),
(39, 58, 2),
(41, 2, 1),
(42, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `capacidade_maxima` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`id`, `nome`, `tipo`, `capacidade_maxima`) VALUES
(1, 'sala 108', 1, 50),
(2, 'sala 208', 2, 25),
(3, 'sala 105', 3, 11),
(4, 'sala 103', 3, 2),
(5, 'sala 109', 1, 55),
(6, 'sala 102', 2, 22),
(7, 'sala 101', 1, 33),
(8, 'sala 500', 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(10) NOT NULL,
  `value` varchar(245) DEFAULT NULL,
  `id_utilizador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `value`, `id_utilizador`) VALUES
(1, 'ec8382f30cb74b3daa96e5276f77dcf7ab876d3f30987cfec8560f307bc92a1f', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aula_sala1_idx` (`sala_id`),
  ADD KEY `fk_aula_funcionario1_idx` (`funcionario_admin_id`);

--
-- Indexes for table `aula_has_cliente`
--
ALTER TABLE `aula_has_cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_idx` (`id_cliente`),
  ADD KEY `fk2_idx` (`id_aula`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `fk_cliente_admin1_idx` (`admin_id`),
  ADD KEY `fk_cliente_plano_adesao1_idx` (`plano_adesao_id`),
  ADD KEY `fk_cliente_pais_idx` (`nacionalidade`);

--
-- Indexes for table `cliente_has_planotreino`
--
ALTER TABLE `cliente_has_planotreino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_idx` (`id_cliente`),
  ADD KEY `fk_pt_idx` (`id_planoTreino`);

--
-- Indexes for table `equipamento`
--
ALTER TABLE `equipamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idx` (`sala_id`);

--
-- Indexes for table `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_exercicio_funcionario1_idx` (`funcionario_admin_id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `fk_funcionario_admin_idx` (`admin_id`);

--
-- Indexes for table `funcionario_has_cliente`
--
ALTER TABLE `funcionario_has_cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionario_has_cliente_cliente1_idx` (`cliente_admin_id`),
  ADD KEY `fk_funcionario_has_cliente_funcionario1_idx` (`funcionario_admin_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_log_admin1_idx` (`admin_id`);

--
-- Indexes for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mensagem_cliente1_idx` (`de_utilizador_id`),
  ADD KEY `fk_mensagem_funcionario1_idx` (`para_utilizador_id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`paisId`);

--
-- Indexes for table `plano_adesao`
--
ALTER TABLE `plano_adesao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plano_treino`
--
ALTER TABLE `plano_treino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plano_treino_cliente1_idx` (`cliente_admin_id`),
  ADD KEY `fk_plano_treino_funcionario1_idx` (`funcionario_admin_id`);

--
-- Indexes for table `plano_treino_has_exercicio`
--
ALTER TABLE `plano_treino_has_exercicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plano_treino_has_exercicio_plano_treino1_idx` (`plano_treino_id`),
  ADD KEY `fk_plano_treino_has_exercicio_exercicio1_idx` (`exercicio_id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_token_admin1_idx` (`id_utilizador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `aula`
--
ALTER TABLE `aula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `aula_has_cliente`
--
ALTER TABLE `aula_has_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cliente_has_planotreino`
--
ALTER TABLE `cliente_has_planotreino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `equipamento`
--
ALTER TABLE `equipamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `funcionario_has_cliente`
--
ALTER TABLE `funcionario_has_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `paisId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `plano_adesao`
--
ALTER TABLE `plano_adesao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `plano_treino`
--
ALTER TABLE `plano_treino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `plano_treino_has_exercicio`
--
ALTER TABLE `plano_treino_has_exercicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `fk_aula_funcionario1` FOREIGN KEY (`funcionario_admin_id`) REFERENCES `funcionario` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_sala1` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `aula_has_cliente`
--
ALTER TABLE `aula_has_cliente`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cliente_plano_adesao1` FOREIGN KEY (`plano_adesao_id`) REFERENCES `plano_adesao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cliente_has_planotreino`
--
ALTER TABLE `cliente_has_planotreino`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt` FOREIGN KEY (`id_planoTreino`) REFERENCES `plano_treino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `equipamento`
--
ALTER TABLE `equipamento`
  ADD CONSTRAINT `fk` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `fk_exercicio_funcionario1` FOREIGN KEY (`funcionario_admin_id`) REFERENCES `funcionario` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `funcionario_has_cliente`
--
ALTER TABLE `funcionario_has_cliente`
  ADD CONSTRAINT `fk_funcionario_has_cliente_cliente1` FOREIGN KEY (`cliente_admin_id`) REFERENCES `cliente` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcionario_has_cliente_funcionario1` FOREIGN KEY (`funcionario_admin_id`) REFERENCES `funcionario` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_log_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD CONSTRAINT `fk_mensagem_cliente1` FOREIGN KEY (`de_utilizador_id`) REFERENCES `cliente` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mensagem_funcionario1` FOREIGN KEY (`para_utilizador_id`) REFERENCES `funcionario` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `plano_treino`
--
ALTER TABLE `plano_treino`
  ADD CONSTRAINT `fk_plano_treino_cliente1` FOREIGN KEY (`cliente_admin_id`) REFERENCES `cliente` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_plano_treino_funcionario1` FOREIGN KEY (`funcionario_admin_id`) REFERENCES `funcionario` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `plano_treino_has_exercicio`
--
ALTER TABLE `plano_treino_has_exercicio`
  ADD CONSTRAINT `fk_plano_treino_has_exercicio_exercicio1` FOREIGN KEY (`exercicio_id`) REFERENCES `exercicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_plano_treino_has_exercicio_plano_treino1` FOREIGN KEY (`plano_treino_id`) REFERENCES `plano_treino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_token_admin1` FOREIGN KEY (`id_utilizador`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
