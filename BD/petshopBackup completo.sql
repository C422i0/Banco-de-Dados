-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Ago-2022 às 16:07
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE `agenda` (
  `idAgenda` int(11) NOT NULL,
  `dataServico` varchar(45) NOT NULL DEFAULT '',
  `fkVenda` int(11) NOT NULL,
  `pago` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agenda`
--

INSERT INTO `agenda` (`idAgenda`, `dataServico`, `fkVenda`, `pago`) VALUES
(2, '2022/08/09', 2, 'sim'),
(3, '2022/08/09', 3, 'sim'),
(4, '2022/08/09', 4, 'sim'),
(5, '2022/08/09', 5, 'sim'),
(6, '2022/08/09', 6, 'sim'),
(7, '2022/08/09', 7, 'sim'),
(8, '2022/08/09', 8, 'sim'),
(9, '2022/08/09', 9, 'não'),
(10, '2022/08/09', 10, 'não'),
(11, '2022/08/09', 11, 'não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `idAnimal` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `especie` varchar(45) NOT NULL,
  `raca` varchar(45) NOT NULL,
  `observacoes` varchar(45) NOT NULL,
  `fkCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`idAnimal`, `nome`, `especie`, `raca`, `observacoes`, `fkCliente`) VALUES
(1, 'brigadeiro', 'cachorro', 'pug', 'bravo', 2),
(2, 'brigadeiro', 'cachorro', 'pug', 'bravo', 2),
(3, 'minnie', 'cachorro', 'pincher', 'não gosta de secador', 3),
(4, 'tobby', 'cachorro', 'viralata', 'gosta de morder', 4),
(5, 'belinha', 'cachorro', 'shih tzu', 'pelo sensivel', 5),
(6, 'marrye', 'cachorro', 'yorkshire', 'brincalhona', 6),
(7, 'joaninha', 'cachorro', 'fox paulistinha', 'bravo', 7),
(8, 'thor', 'cachorro', 'Chihuahua', 'bravo', 8),
(9, 'nina', 'cachorro', 'Bulldog inglês', 'medroso', 9),
(10, 'simba', 'cachorro', 'Chihuahua', 'medroso', 10),
(11, 'pandora', 'cachorro', 'maltes', 'bravo', 11),
(12, 'frida', '', 'cachorro', 'medo de agua', 12),
(13, 'tomate', 'cachorro', 'buldogue frances\'', 'morde', 13),
(14, 'brigadeiro', 'cachorro', 'poodle', 'arranha', 14),
(15, 'estrela', 'cachorro', 'dogue alemao', 'arranha', 15),
(16, 'saladinha', 'cachorro', 'pastor alemao', 'morde', 16),
(17, 'roberta', 'cachorro', 'rotweiller', 'morde', 17),
(18, 'cacau', 'cachorro', 'SRD', 'bravo', 18),
(19, 'baycon', 'cachorro', 'american bully', 'morde', 19),
(20, 'milo', 'cachorro', 'border collie', 'morde', 20),
(21, 'lua', 'gato', 'gato', 'bravo', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `numeroCasa` varchar(45) NOT NULL,
  `fkEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `email`, `numeroCasa`, `fkEndereco`) VALUES
(2, 'ricardo', 'ricardo@gmail.com', 'f34', 1),
(3, 'samuel', 'samuel@gmail.com', '465', 2),
(4, 'paula', 'paula@gmail.com', '435', 3),
(5, 'pedro', 'pedro@gmail.com', '685', 4),
(6, 'marcela', 'marcela@gmail.com', '785', 5),
(7, 'cassio', 'cassio@gmail.com', '784', 6),
(8, 'guilherme', 'guilherme@gmail.com', '675', 7),
(9, 'maria', 'maria@gmail.com', '234', 8),
(10, 'duda', 'duda@gmail.com', '934', 9),
(11, 'fernanda', 'fernanda@gmail.com', '38', 10),
(12, 'jessica', 'jessica@gmail.com', '328', 11),
(13, 'felipe', 'felipe@gmail.com', '98', 12),
(14, 'valeria', 'valeria@gmail.com', '78', 13),
(15, 'mariana', 'mariana@gmail.com', '798', 14),
(16, 'eduardo', 'eduardo@gmail.com', '12', 15),
(17, 'rafael', 'rafael@gmail.com', '1422', 16),
(18, 'antonio', 'antonio@gmail.com', '2', 17),
(19, 'sergio', 'sergio@gmail.com', '90', 18),
(20, 'eliza', 'eliza@gmail.com', '92', 19),
(21, 'davi', 'davi@gmail.com', '932', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL DEFAULT '',
  `cidade` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `bairro`, `cep`, `rua`, `logradouro`, `cidade`) VALUES
(1, 'eear', '12345678', 'alameda bahia', 'eear', 'guaratingueta'),
(2, 'eear', '87654321', 'alameda rio de janiero', 'eear', 'guaratingueta'),
(3, 'cta', '11111111', 'h18a', 'cta', 'guaratingueta'),
(4, 'cta', '33333333', 'h21', 'cta', 'guaratingueta'),
(5, 'santa luzia', '99999999', 'girassol', 'avenida', 'guaratingueta'),
(6, 'sao francisco', '44444444', 'florianopolis', 'rua', 'guaratingueta'),
(7, 'santa luzia', '56789345', 'luiz de camoes', 'avenida', 'guaratingueta'),
(8, 'sao francisco', '45698712', 'alemada sao paulo', 'rua', 'guaratingueta'),
(9, 'pedregulho', '88888888', 'alameda goiania', 'avenida', 'guaratingueta'),
(10, 'pedregulho', '24739368', 'salvador', 'avenida', 'guaratingueta'),
(11, 'pingo de ouro', '77777777', 'belo horizonte', 'logoa', 'guaratingueta'),
(12, 'pingo de ouro', '00000000', 'amazonas ', 'moro', 'guaratingueta'),
(13, 'jardim aeroporto', '66666666', 'goias', 'moro', 'guaratingueta'),
(14, 'jardim aeroporto', '76475698', 'rosas', 'logoa', 'guaratingueta'),
(15, 'jardim', '04378437', 'flores', 'avenida', 'guaratingueta'),
(16, 'tiroteio', '13243546', 'fuzil', 'moro', 'rio de janeiro'),
(17, 'flores', '00000000', 'margaridas ', 'moro', 'aparecida'),
(18, 'flores', '00000000', 'rosas brancas', 'moro', 'aparecida'),
(19, 'jardim roni', '55555555', 'sao joao ', 'rua', 'lorena'),
(20, 'jardim roni', '55555555', 'sao joao ', 'rua', 'lorena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `quantidadeMinima` decimal(10,0) NOT NULL,
  `custo` float NOT NULL,
  `dataCompra` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idEstoque`, `nome`, `quantidade`, `quantidadeMinima`, `custo`, `dataCompra`) VALUES
(1, 'Shampoo', '5000', '1000', 30, '0000-00-00 00:00:00'),
(2, 'Shampoo', '5000', '1000', 30, '2022/05/14'),
(3, 'Gravatinha', '30', '10', 5, '2022/03/30'),
(4, 'laço', '30', '10', 5, '2022/03/30'),
(5, 'Ração', '5000', '1000', 35, '2022/07/2'),
(6, 'Alicate', '30', '10', 25, '2022/01/27'),
(7, 'Sabonete', '5000', '1000', 30, '2022/06/28'),
(8, 'Perfume', '1500', '200', 45, '2022/06/28'),
(9, 'Limpador Auricular', '3000', '1000', 30, '2022/07/3'),
(10, 'Hidratante', '5000', '1000', 35, '2022/07/3'),
(11, 'Shampoo anti pulgas', '5000', '1000', 35, '2022/07/3'),
(12, 'Condicionador anti pulgas', '5000', '1000', 35, '2022/07/3'),
(13, 'Roupa p', '50', '10', 10, '2022/07/3'),
(14, 'Roupa m', '50', '10', 10, '2022/07/3'),
(15, 'Roupa g', '50', '10', 10, '2022/07/3'),
(16, 'Shampoo perfumado', '5000', '1000', 50, '2022/07/3'),
(17, 'Shampoo perfumado', '5000', '1000', 50, '2022/07/3'),
(18, 'Shampoo perfumado', '5000', '1000', 50, '2022/07/3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensservicos`
--

CREATE TABLE `itensservicos` (
  `idItensServicos` int(11) NOT NULL,
  `fkEstoque` int(11) NOT NULL DEFAULT 0,
  `fkServico` int(11) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itensservicos`
--

INSERT INTO `itensservicos` (`idItensServicos`, `fkEstoque`, `fkServico`, `quantidade`) VALUES
(2, 1, 1, '12'),
(3, 11, 2, '50'),
(4, 2, 3, '45'),
(5, 17, 4, '100'),
(6, 16, 5, '12'),
(7, 1, 1, '20'),
(8, 2, 4, '50'),
(9, 8, 9, '200'),
(10, 12, 9, '12'),
(11, 5, 3, '90'),
(12, 9, 2, '10'),
(13, 10, 3, '50'),
(14, 18, 9, '100'),
(15, 4, 1, '60'),
(16, 13, 3, '1'),
(17, 6, 10, '12'),
(18, 2, 11, '250'),
(19, 1, 4, '100');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idServico` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServico`, `nome`, `valor`) VALUES
(1, 'banho p', 30),
(2, 'banho m', 40),
(3, 'banho g', 50),
(4, 'tosa p', 25),
(5, 'tosa m', 35),
(6, 'tosa g', 45),
(7, 'cortar unha', 20),
(8, 'limpeza ouvido', 15),
(9, 'hidratacao dos pelos', 50),
(10, 'escovacao dos dentes', 15),
(11, 'desenbaracamento dos pelos', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicosvendidos`
--

CREATE TABLE `servicosvendidos` (
  `idServicosVendidos` int(11) NOT NULL,
  `fkServico` int(11) NOT NULL,
  `fkvenda` int(11) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicosvendidos`
--

INSERT INTO `servicosvendidos` (`idServicosVendidos`, `fkServico`, `fkvenda`, `quantidade`, `valor`) VALUES
(1, 1, 2, '1', 30),
(2, 2, 3, '2', 40),
(3, 3, 4, '3', 50),
(4, 4, 5, '4', 25),
(5, 5, 6, '5', 35),
(6, 6, 7, '6', 45),
(7, 8, 9, '8', 15),
(8, 10, 11, '10', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `ddd` decimal(2,0) NOT NULL DEFAULT 0,
  `numero` varchar(45) NOT NULL,
  `fkCliente` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idTelefone`, `ddd`, `numero`, `fkCliente`, `tipo`) VALUES
(1, '12', '987654321', 2, 'celular'),
(2, '12', '123456789', 3, 'celular'),
(3, '15', '111111111', 4, ''),
(4, '89', '222222222', 5, 'celular'),
(5, '82', '333333333', 6, 'celular'),
(6, '53', '444444444', 7, 'celular'),
(7, '25', '555555555', 8, 'celular'),
(8, '13', '666666666', 9, 'celular'),
(9, '34', '777777777', 10, 'celular'),
(10, '90', '888888888', 11, 'celular'),
(11, '12', '999999999', 12, 'celular'),
(12, '22', '354356437', 13, 'celular'),
(13, '62', '547998678', 14, 'celular'),
(14, '78', '46566556', 15, 'fixo'),
(15, '35', '43764378', 16, 'fixo'),
(16, '23', '43785436', 17, 'fixo'),
(17, '54', '14987556', 18, 'fixo'),
(18, '56', '35456698', 19, 'fixo'),
(19, '88', '98549509', 20, 'fixo'),
(20, '24', '27436785', 21, 'fixo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `dataVenda` varchar(45) NOT NULL DEFAULT '',
  `valorTotal` float NOT NULL DEFAULT 0,
  `fkCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `dataVenda`, `valorTotal`, `fkCliente`) VALUES
(2, '2022/08/09 09:00:00', 45, 2),
(3, '2022/08/09 10:00:00', 45, 3),
(4, '2022/08/09 10:45:00', 55, 4),
(5, '2022/08/09 11:30:00', 45, 5),
(6, '2022/08/09 12:10:00', 50, 6),
(7, '2022/08/09 14:30:00', 15, 7),
(8, '2022/08/09 15:25:00', 20, 8),
(9, '2022/08/09 15:50:00', 55, 9),
(10, '2022/08/09 16:55:00', 20, 10),
(11, '2022/08/09 17:30:00', 0, 11);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`idAgenda`),
  ADD KEY `fkVenda` (`fkVenda`);

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `fkCliente` (`fkCliente`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `fkEndereco` (`fkEndereco`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idEstoque`);

--
-- Índices para tabela `itensservicos`
--
ALTER TABLE `itensservicos`
  ADD PRIMARY KEY (`idItensServicos`),
  ADD KEY `fkEstoque` (`fkEstoque`),
  ADD KEY `fkServico` (`fkServico`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServico`);

--
-- Índices para tabela `servicosvendidos`
--
ALTER TABLE `servicosvendidos`
  ADD PRIMARY KEY (`idServicosVendidos`),
  ADD KEY `fkServico` (`fkServico`),
  ADD KEY `fkvenda` (`fkvenda`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `fkCliente` (`fkCliente`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `fkCliente` (`fkCliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `idAgenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `idAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `idEstoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `itensservicos`
--
ALTER TABLE `itensservicos`
  MODIFY `idItensServicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `servicosvendidos`
--
ALTER TABLE `servicosvendidos`
  MODIFY `idServicosVendidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`fkVenda`) REFERENCES `venda` (`idVenda`);

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`fkCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`fkEndereco`) REFERENCES `endereco` (`idEndereco`);

--
-- Limitadores para a tabela `itensservicos`
--
ALTER TABLE `itensservicos`
  ADD CONSTRAINT `itensservicos_ibfk_1` FOREIGN KEY (`fkEstoque`) REFERENCES `estoque` (`idEstoque`),
  ADD CONSTRAINT `itensservicos_ibfk_2` FOREIGN KEY (`fkServico`) REFERENCES `servico` (`idServico`);

--
-- Limitadores para a tabela `servicosvendidos`
--
ALTER TABLE `servicosvendidos`
  ADD CONSTRAINT `servicosvendidos_ibfk_1` FOREIGN KEY (`fkServico`) REFERENCES `servico` (`idServico`),
  ADD CONSTRAINT `servicosvendidos_ibfk_2` FOREIGN KEY (`fkvenda`) REFERENCES `venda` (`idVenda`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fkCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`fkCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
