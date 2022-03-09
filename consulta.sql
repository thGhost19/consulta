-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Mar-2022 às 19:17
-- Versão do servidor: 5.7.36
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `consulta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

DROP TABLE IF EXISTS `conta`;
CREATE TABLE IF NOT EXISTS `conta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `genero` varchar(50) NOT NULL,
  `cpf` char(14) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id`, `nome`, `data`, `genero`, `cpf`, `email`, `token`, `senha`) VALUES
(1, 'Ã‰rick Vinicius dos santos Almeida', '2022-03-02', '', '05674071012', 'viniciuserick1029@gmail.com', '6228d69211cfa', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacao`
--

DROP TABLE IF EXISTS `movimentacao`;
CREATE TABLE IF NOT EXISTS `movimentacao` (
  `movimentacao_id` int(11) NOT NULL AUTO_INCREMENT,
  `conta_id` int(11) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome` varchar(150) NOT NULL,
  `cpf` char(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`movimentacao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
