-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2023 às 14:53
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdgustavo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE `tbaluno` (
  `idaluno` int(11) NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `dtnasc` date NOT NULL,
  `mensalidade` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbaluno`
--

INSERT INTO `tbaluno` (`idaluno`, `aluno`, `dtnasc`, `mensalidade`) VALUES
(1, 'gustavo', '2023-08-03', 258.58),
(2, 'roberto', '2023-05-18', 258.58),
(3, 'pedro', '2023-07-12', 258.58),
(4, 'brenda', '2023-05-08', 258.58),
(5, 'gabriel', '2023-07-24', 258.58);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcurso`
--

CREATE TABLE `tbcurso` (
  `idcurso` int(11) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `cargahoraria` varchar(5) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbcurso`
--

INSERT INTO `tbcurso` (`idcurso`, `curso`, `cargahoraria`, `valor`) VALUES
(1, 'JAVA EE', '60h', 569.99),
(2, 'DevFullStack JAVA', '150h', 1200),
(3, 'IONIC', '70h', 800),
(4, 'ANGULAR', '40h', 450);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Índices para tabela `tbcurso`
--
ALTER TABLE `tbcurso`
  ADD PRIMARY KEY (`idcurso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tbcurso`
--
ALTER TABLE `tbcurso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
