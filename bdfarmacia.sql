-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2025 às 00:00
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdfarmacia`
--
CREATE DATABASE IF NOT EXISTS `bdfarmacia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdfarmacia`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `CPF` varchar(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `alergia` varchar(20) NOT NULL,
  `doenca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CPF`, `nome`, `idade`, `telefone`, `email`, `alergia`, `doenca`) VALUES
('00123456789', 'Emerson', 16, '99853-3456', 'emersongotardi@gmail.com', 'Não possui', 'Não possui'),
('11234567890', 'Nicolas', 16, '99538-3675', 'nicolastoreli@gmail.com', 'Não possui', 'Miopia'),
('12345678900', 'João Luiz', 16, '99854-3053', 'joaocampibasseto@gmail.com', 'Não possui', 'Não possui'),
('22134567890', 'Paola', 17, '99675-1254', 'paolalohana@gmail.com', 'Não possui', 'Miopia'),
('33124567890', 'Maria Eduarda', 17, '99574-1223', 'mariaeduarda@gmail.com', 'Não possui', 'Não possui'),
('44123567890', 'Maria Isabely', 16, '99223-1756', 'mariaisabely@gmail.com', 'Chatice', 'Não possui'),
('55123467890', 'Robinson', 16, '99288-0987', 'robinsonsilva@gmail.com', 'Não Possui', 'Miopia'),
('66123457890', 'Alessandra', 49, '99887-6655', 'alessandracristina@gmail.com', 'Não Possui', 'Não possui'),
('77123456890', 'Geovana', 27, '99778-2211', 'geovanacampideli@gmail.com', 'Não Possui', 'Não possui'),
('88123456790', 'Graziele', 31, '99664-2092', 'grazi@gmail.com', 'Não Possui', 'Não possui'),
('99123456780', 'Maria Inês', 70, '99224-6622', 'mariaines@gmail.com', 'Não Possui', 'Não possui');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

DROP TABLE IF EXISTS `itens_venda`;
CREATE TABLE `itens_venda` (
  `CodItem` int(11) NOT NULL,
  `valorItem` double(7,2) NOT NULL,
  `Quantidade` varchar(50) NOT NULL,
  `codBarra` varchar(15) NOT NULL,
  `IdVenda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `codBarra` varchar(15) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `dataValidade` varchar(30) NOT NULL,
  `uso` varchar(30) NOT NULL,
  `preco` float(7,2) NOT NULL,
  `bula` varchar(255) NOT NULL,
  `alergia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codBarra`, `Nome`, `dataValidade`, `uso`, `preco`, `bula`, `alergia`) VALUES
('012', 'Metformina', '2027-01-09', 'Três vezes por dia', 109.99, 'Filler', 'Não haver'),
('123', 'Loratadina', '2026-06-27', 'Semanal', 49.99, 'Filer', 'Não haver'),
('1234', 'Paracetamol', '2026-12-04', 'diário', 25.00, 'preencher espaço', 'Não haver'),
('345', 'Viagra', '2027-02-22', 'Diário', 69.99, 'Filler', 'Não haver'),
('3456', 'Omeprazol', '2026-08-12', 'Um a cada dois dias', 29.99, 'Filler', 'Para intolerantes'),
('456', 'Cetirizina', '2026-08-19', 'Mensal', 39.99, 'Filler', 'Não haver'),
('5678', 'Dipirona', '2027-11-23', 'Duas vezes por dia', 13.50, 'Filler', 'Não haver'),
('789', 'Losartana', '2026-03-03', 'Três vezes por dia', 19.99, 'Filler', 'Não haver'),
('7890', 'Amoxicilina', '2027-12-12', 'Semanal', 40.00, 'Filler', 'Para intolerantes'),
('9012', 'Ibuprofeno', '2026-04-24', 'Diário', 34.99, 'Filler', 'Não haver');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `login` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`) VALUES
('joao', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE `vendas` (
  `IdVenda` int(11) NOT NULL,
  `dataVenda` date NOT NULL,
  `valorVenda` double(7,2) NOT NULL,
  `CPF_CLiente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`CodItem`),
  ADD KEY `codBarra` (`codBarra`),
  ADD KEY `IdVenda` (`IdVenda`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codBarra`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`IdVenda`),
  ADD KEY `CPF_CLiente` (`CPF_CLiente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `CodItem` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`codBarra`) REFERENCES `produto` (`codBarra`),
  ADD CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`IdVenda`) REFERENCES `vendas` (`IdVenda`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`CPF_CLiente`) REFERENCES `cliente` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
