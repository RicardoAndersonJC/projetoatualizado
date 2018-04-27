-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 27-Abr-2018 às 19:30
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemareserva`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
CREATE TABLE IF NOT EXISTS `cadastro` (
  `ID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `login` varchar(40) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `NomeCurso` varchar(150) NOT NULL,
  `IdCurso` int(11) NOT NULL AUTO_INCREMENT,
  `TurnoCurso` char(1) NOT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`NomeCurso`, `IdCurso`, `TurnoCurso`) VALUES
('Administração', 1, 'M'),
('Administração', 2, 'N'),
('Ciência da computação', 3, 'N'),
('Direito', 4, 'M'),
('ciências contábeis', 5, 'M'),
('Enfermagem', 6, 'M'),
('Fisioterapia', 7, 'M'),
('Pedagogia', 8, 'M'),
('ciências contábeis', 9, 'N'),
('publicidade e propaganda', 10, 'N'),
('Direito', 11, 'N'),
('Estética e cosmética', 12, 'N'),
('Fisioterapia', 13, 'N'),
('Nutrição ', 14, 'N'),
('Logistica', 15, 'N'),
('Pedagogia', 16, 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
CREATE TABLE IF NOT EXISTS `equipamento` (
  `QuantidadeEquipamento` int(11) NOT NULL,
  `IdModelo` varchar(30) NOT NULL,
  `NomeEquipamento` varchar(150) NOT NULL,
  PRIMARY KEY (`IdModelo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipamento`
--

INSERT INTO `equipamento` (`QuantidadeEquipamento`, `IdModelo`, `NomeEquipamento`) VALUES
(2, 'ABCDEF1234', 'Projetor'),
(2, 'Powerlite X24+', 'Projetor'),
(2, 'ppx2330', 'Projetor'),
(2, 'PPX2480', 'Projetor'),
(2, 'VLPDW120', 'Projetor'),
(3, 'ABC12345', 'Gabinete'),
(2, 'BCD23456', 'Gabinete'),
(4, 'LABCOM', 'Laboratório de computação'),
(2, 'LABENF', 'Laboratório Enfermagem'),
(1, 'SALPED', 'Sala Pedagogia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `nome` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`nome`, `email`, `senha`) VALUES
('anderson', 'negoanderson26@gmail.com', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
