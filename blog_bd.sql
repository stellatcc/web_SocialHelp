-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/10/2023 às 01:14
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog_bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `data_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `title_notice` varchar(150) NOT NULL,
  `description_notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticia`
--

INSERT INTO `noticia` (`id`, `data_create`, `title_notice`, `description_notice`) VALUES
(4, '2023-10-09 23:03:42', 'Pessoas solidárias se unem para amenizar dificuldades de famílias que vivem na extrema pobreza.', 'Em novembro, o IBGE revelou o tamanho do sofrimento imposto aos brasileiros pela crise econômica. De 2014 a 2018, mais de 4,5 milhões de pessoas passaram a viver na extrema pobreza. Daí a importância do trabalho solidário dos cidadãos que se uniram para amenizar as dificuldades de tanta gente. A repórter Isabella Scalabrini encontrou alguns exemplos em Minas Gerais.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
