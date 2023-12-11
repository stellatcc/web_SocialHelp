-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/10/2023 às 16:01
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
  `description_notice` text NOT NULL,
  `all_notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticia`
--

INSERT INTO `noticia` (`id`, `data_create`, `title_notice`, `description_notice`, `all_notice`) VALUES
(9, '2023-10-21 13:52:40', 'Pessoas solidárias se unem para amenizar dificuldades de famílias que vivem na extrema pobreza.', 'Em novembro, o IBGE revelou o tamanho do sofrimento imposto aos brasileiros pela crise econômica. De 2014 a 2018, mais de 4,5 milhões de pessoas passaram a viver na extrema pobreza. Daí a importância do trabalho solidário dos cidadãos que se uniram para amenizar as dificuldades de tanta gente. A repórter Isabella Scalabrini encontrou alguns exemplos em Minas Gerais.', 'Em novembro, o IBGE revelou o tamanho do sofrimento imposto aos brasileiros pela crise econômica. De 2014 a 2018, mais de 4,5 milhões de pessoas passaram a viver na extrema pobreza. Daí a importância do trabalho solidário dos cidadãos que se uniram para amenizar as dificuldades de tanta gente. A repórter Isabella Scalabrini encontrou alguns exemplos em Minas Gerais.\r\n\r\nGustavo está se divertindo ajudando na montagem das cestas básicas. Ele não sabe, mas já é um voluntário; 150 pessoas reúnem, num galpão, na região metropolitana de Belo Horizonte, alimentos, roupas, colchões, brinquedos. As doações são levadas em caminhões e entregues a moradores de regiões pobres do norte de Minas. O grupo trabalha o ano todo para fazer essa boa ação de três em três meses.\r\n“Isso devia ser feito praticamente diariamente, porque a fome é o ano todo. Ela não é só no Natal”, diz a vendedora Luciana Santos, presidente da ONG.\r\n\r\n“Às vezes acontece, por exemplo, você vestir uma roupinha numa criança e, em três meses, ela ainda estar com a mesma roupa, esperando a gente voltar lá para trocar aquela roupa, porque não tem outra mesmo”, conta a promotora de eventos Marlene Valverde.\r\n\r\nEm um dos maiores conjuntos de favelas da capital mineira, a associação de moradores também arrecada alimentos e distribui cestas. “Os relatos que chegam aqui diariamente são fortes. A gente não imagina que do lado da casa da gente tem pessoas com necessidades. Às vezes até na família da gente mesmo”, explica Cristiane Pereira, presidente da Associação de Moradores da Vila do Cafezal, em Belo Horizonte.\r\n\r\nNa casa de dona de casa Eliane Pereira, falta quase tudo. Ela e as três filhas estão desempregadas. “Tem vez que eu não tenho pão para dar às crianças. Não tem leite. Mas Deus está dando força. A gente consegue sobreviver”.\r\n\r\nOs mantimentos chegam. É despensa cheia por um tempo. A comida vai logo para a panela: “Arroz, o feijão, o angu. Uma muchibinha que eu ganhei no açougue e um quiabinho que está ali, que eu ganhei no sacolão”.\r\nMuitas pessoas recebem doações pelo Brasil afora. Agora, imagine alguém chegar na sua casa, feita de madeira reaproveitada e lona, e oferecer uma casa novinha, no mesmo lugar. Foi o que aconteceu em uma comunidade em Belo Horizonte, com o Gabriel e a Raiane.\r\n\r\n“Não é todo dia que aparecem pessoas assim na vida da gente, batendo na porta de sua casa, perguntando: ‘oi, você quer uma casa nova? Você quer uma ajuda? Você quer isso?’\'”, destaca Raiane dos Santos Pereira, de 24 anos.\r\n\r\nA casa de madeira pré-moldada é feita em dois dias. O grupo já ergueu mais de quatro mil casas desse tipo em todo o Brasil. “A intenção é que a gente construa uma moradia emergencial para que a família possa dar uma desafogada e começar a pensar em outras questões em relação à comunidade que ela mora, a vivência que ela tem.\", fala Valter Gomes, gestor da ONG Teto.\r\n\r\nGabriel e Raiane têm dois filhos. A renda do casal, fazendo pizza, é de quase um salário mínimo por mês. A casa doada é só o começo de um sonho em família. “Uma casa mais confortável para os meus meninos, ver eles crescendo, o que cada criança merece. Uma família merece”, diz o pizzaiolo Gabriel Ferreira Costa.\r\n\r\nNotícia retirada de: https://g1.globo.com/jornal-nacional/noticia/2019/12/27/pessoas-solidarias-se-unem-para-amenizar-dificuldades-de-familias-que-vivem-na-extrema-pobreza.ghtml\r\n');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
