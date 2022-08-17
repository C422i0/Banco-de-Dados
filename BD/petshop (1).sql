-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2022 às 14:13
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
CREATE DATABASE IF NOT EXISTS `petshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `petshop`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE `agenda` (
  `idAgenda` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `fkVenda` int(11) NOT NULL,
  `pago` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `agenda`:
--   `fkVenda`
--       `venda` -> `idVenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `idAnimal` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `especie` varchar(45) NOT NULL,
  `fkRaca` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `genero` varchar(45) NOT NULL,
  `fkCliente` int(11) NOT NULL,
  `dataNascimento` varchar(45) NOT NULL DEFAULT '',
  `observacoes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `animal`:
--   `fkCliente`
--       `cliente` -> `idCliente`
--   `fkRaca`
--       `raca` -> `idRaca`
--

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`idAnimal`, `nome`, `especie`, `fkRaca`, `genero`, `fkCliente`, `dataNascimento`, `observacoes`) VALUES
(4, 'minnie', 'cachorro', 1, 'femea', 1, '0000-00-00', 'não gosta de secador'),
(5, 'minnie', 'cachorro', 1, 'femea', 1, '2020/05/29', 'não gosta de secador'),
(6, 'belinha', 'cachorro', 2, 'femea', 2, '2010/09/05', 'pelo seco e sensível'),
(7, 'marrye', 'cachorro', 3, 'femea', 3, '2013/01/03', 'mansa'),
(8, 'joaninha', 'gato', 32, 'femea', 4, '2019/11/12', 'arisca e agitada no banho'),
(9, 'thor', 'cachorro', 4, 'femea', 5, '2015/05/18', 'aceita somente shampoo neutro'),
(10, 'nina', 'cachorro', 5, 'macho', 6, '2020/05/22', 'alergia a condicionador'),
(11, 'simba', 'cachorro', 6, 'macho', 7, '2020/05/29', 'agitado nos banhos'),
(12, 'pandora', 'gato', 31, 'femea', 8, '2021/02/01', 'medo de secador'),
(13, 'frida', 'cachorro', 7, 'femea', 9, '2020/08/24', 'ouvido sensível'),
(14, 'tomate', 'cachorro', 8, 'femea', 10, '2020/01/30', 'mansa'),
(15, 'brigadeiro', 'cachorro', 9, 'macho', 11, '2018/01/08', 'manso'),
(16, 'estrela', 'cachorro', 10, 'femea', 12, '2021/10/11', 'pele ressecada'),
(17, 'saladinha', 'cachorro', 11, 'femea', 13, '2021/02/11', 'raivosa'),
(18, 'roberta', 'gato', 33, 'femea', 14, '2015/03/30', 'agressiva'),
(19, 'arthur', 'cachorro', 12, 'macho', 15, '2020/09/27', 'agitado'),
(20, 'lagartixa', 'cachorro', 13, 'femea', 16, '2020/01/30', 'alergia a perfume'),
(21, 'cacau', 'cachorro', 14, 'femea', 17, '2020/01/30', 'mansa'),
(22, 'picanha', 'cachorro', 15, 'femea', 18, '2020/01/30', 'agressiva ao tocar no pescoço'),
(23, 'baycon', 'gato', 32, 'macho', 19, '2018/12/30', 'calmo'),
(24, 'leo', 'cachorro', 16, 'macho', 20, '2020/05/11', 'nenhuma alergia, manso'),
(25, 'milo', 'cachorro', 17, 'macho', 1, '2019/07/22', 'agitado com secador'),
(26, 'mia', 'gato', 31, 'femea', 12, '2018/02/07', 'agitada durante o banho'),
(27, 'jao', 'cachorro', 18, 'macho', 3, '2022/01/30', 'manso'),
(28, 'lua', 'cachorro', 19, 'femea', 5, '2020/01/30', 'mansa'),
(29, 'romeu', 'gato', 33, 'macho', 10, '2010/10/30', 'se acalma com petisco'),
(30, 'dakota', 'cachorro', 20, 'femea', 18, '2010/11/09', 'idosa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `numeroCasa` varchar(45) NOT NULL,
  `fkEndereco` int(11) NOT NULL,
  `nomeCliente` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `cliente`:
--   `fkEndereco`
--       `endereco` -> `idEndereco`
--

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `email`, `numeroCasa`, `fkEndereco`, `nomeCliente`) VALUES
(1, 'cassio@gmail.com', '12', 1, 'cassio'),
(2, 'mateus@gmail.com', '12', 11, 'mateus'),
(3, 'marcela@gmail.com', '20', 2, 'marcela'),
(4, 'paulo@gmail.com', '33', 3, 'cassio'),
(5, 'ze@gmail.com', '10', 4, 'jose'),
(6, 'tiago@gmail.com', '12', 20, 'tiago'),
(7, 'maria@gmail.com', '532', 5, 'maria'),
(8, 'teclado@gmail.com', '505', 6, 'teclado'),
(9, 'mouse@gmail.com', '505', 7, 'mouse'),
(10, 'janela@gmail.com', '202', 8, 'janela'),
(11, 'josias@gmail.com', '14505', 9, 'josias'),
(12, 'banco@gmail.com', '5135', 10, 'banco'),
(13, 'caixa@gmail.com', '15152', 12, 'caixa'),
(14, 'mesa@gmail.com', '17952', 13, 'mesa'),
(15, 'josefina@gmail.com', '2', 14, 'josefina'),
(16, 'muro@gmail.com', '1', 15, 'muro'),
(17, 'vacalo@gmail.com', '89', 16, 'vacalo'),
(18, 'garrafa@gmail.com', '987', 17, 'garrafa'),
(19, 'computador@gmail.com', '750', 18, 'computador'),
(20, 'tela@gmail.com', '150', 19, 'tela');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `endereco`:
--

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `logradouro`, `bairro`, `rua`, `cidade`) VALUES
(1, 'avenida', 'jardim rony', 'avenida campos novos', 'campos do jordao'),
(2, 'rua', 'clube dos 500', 'rua das jassmins', 'guaratingueta'),
(3, 'avenida', 'clube dos 500', 'avenida sao paulo', 'guaratingueta'),
(4, 'praca', 'centro', 'praca arnolfo de azevedo', 'lorena'),
(5, 'rua', 'centro', 'rua doutor rodrigues de azevedo', 'lorena'),
(6, 'avenida', 'centro', 'avenida antartica', 'canas'),
(7, 'avenida', 'jardim esperanca', 'avenida josias', 'osasco'),
(8, 'estrada', 'dell', 'mouse', 'teclado'),
(9, 'rua', 'nova jacarei', 'rua nova jacarei', 'osasco'),
(10, 'rua', 'matagal', 'rua matagai', 'amazoas'),
(11, 'rua', 'matatos', 'rua matataios', 'amazoas'),
(12, 'rua', 'centro', 'rua comendador custodio vieira', 'lorena'),
(13, 'rua', 'centro', 'rua fone', 'lorena'),
(14, 'rua', 'centro', 'rua pocofone', 'lorena'),
(15, 'rua', 'centro', 'rua correios', 'lorena'),
(16, 'rua', 'centro', 'rua comendados', 'lorena'),
(17, 'rua', 'centro', 'rua dos carteiros', 'lorena'),
(18, 'rua', 'centro', 'rua procrastinacao', 'lorena'),
(19, 'rua', 'centro', 'rua profissoes', 'lorena'),
(20, 'rua', 'centro', 'rua comendados da silva', 'lorena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoqueprodutos`
--

CREATE TABLE `estoqueprodutos` (
  `idEstoqueProdutos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `quantidadeMinima` decimal(10,0) NOT NULL,
  `custoUnitario` float NOT NULL,
  `dataCompra` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `estoqueprodutos`:
--

--
-- Extraindo dados da tabela `estoqueprodutos`
--

INSERT INTO `estoqueprodutos` (`idEstoqueProdutos`, `nome`, `quantidade`, `quantidadeMinima`, `custoUnitario`, `dataCompra`) VALUES
(1, 'Shampoo', '5000', '1000', 30, '2022/05/14'),
(2, 'Condicionador', '5000', '1000', 40, '2022/05/14'),
(3, 'Gravatinha', '30', '10', 5, '2022/03/30'),
(4, 'laço', '30', '10', 5, '2022/03/30'),
(5, 'Ração', '5000', '1000', 35, '2022/07/2'),
(6, 'Alicate', '30', '10', 25, '2022/01/27'),
(7, 'Sabonete', '5000', '1000', 30, '2022/06/28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensservico`
--

CREATE TABLE `itensservico` (
  `idItensServico` int(11) NOT NULL,
  `fkEstoqueProdutos` int(11) NOT NULL,
  `fkServico` int(11) NOT NULL,
  `quantidadeUtilizada` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `itensservico`:
--   `fkEstoqueProdutos`
--       `estoqueprodutos` -> `idEstoqueProdutos`
--   `fkServico`
--       `servico` -> `idServico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `raca`
--

CREATE TABLE `raca` (
  `idRaca` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL DEFAULT '',
  `porte` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `raca`:
--

--
-- Extraindo dados da tabela `raca`
--

INSERT INTO `raca` (`idRaca`, `nome`, `porte`) VALUES
(1, 'pug', 'pequeno'),
(2, 'pinscher', 'pequeno'),
(3, 'shih tzu', 'pequeno'),
(4, 'yorkshire', 'pequeno'),
(5, 'fox paulistinha', 'pequeno'),
(6, 'Chihuahua', 'pequeno'),
(7, 'maltes', 'pequeno'),
(8, 'salsicha', 'pequeno'),
(9, 'buldogue frances', 'pequeno'),
(10, 'SRD', 'pequeno'),
(11, 'poodle', 'pequeno'),
(12, 'salsicha', 'pequeno'),
(13, 'pitbull', 'medio'),
(14, 'chow chow', 'medio'),
(15, 'shar pei', 'medio'),
(16, 'Schnauzer', 'medio'),
(17, 'Bulldog inglês', 'medio'),
(18, 'SRD', 'medio'),
(19, 'pastor australiano', 'medio'),
(20, 'american bully', 'medio'),
(21, 'akita', 'grande'),
(22, 'border collie', 'grande'),
(23, 'sao bernardo', 'grande'),
(24, 'dogue alemao', 'grande'),
(25, 'golden retriver', 'grande'),
(26, 'SRD', 'grande'),
(27, 'labrador', 'grande'),
(28, 'fila brasileiro', 'grande'),
(29, 'pastor alemao', 'grande'),
(30, 'rotweiller', 'grande'),
(31, 'gato', 'sem pelo'),
(32, 'gato', 'pelo medio'),
(33, 'gato', 'pelo grande');

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
-- RELACIONAMENTOS PARA TABELAS `servico`:
--

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServico`, `nome`, `valor`) VALUES
(1, 'banho p', 30),
(2, 'banho m', 40),
(3, 'banho g', 50),
(4, 'tosa g', 45),
(5, 'tosa m', 35),
(6, 'tosa p', 25),
(7, 'cortar unha', 20),
(8, 'limpeza ouvido', 15),
(9, 'hidratacao dos pelos', 50),
(10, 'escovacao dos dentes', 15),
(11, 'desenbaracamento dos pelos', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicovendido`
--

CREATE TABLE `servicovendido` (
  `idServicoVendido` int(11) NOT NULL,
  `fkServico` int(11) NOT NULL,
  `fkVenda` int(11) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `valorAtual` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `servicovendido`:
--   `fkServico`
--       `servico` -> `idServico`
--   `fkVenda`
--       `venda` -> `idVenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `ddd` decimal(2,0) NOT NULL DEFAULT 0,
  `numero` decimal(9,0) NOT NULL DEFAULT 0,
  `tipo` varchar(45) NOT NULL,
  `fkUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `telefone`:
--   `fkUsuario`
--       `cliente` -> `idCliente`
--

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idTelefone`, `ddd`, `numero`, `tipo`, `fkUsuario`) VALUES
(1, '24', '154656766', 'celular', 1),
(2, '88', '76978059', 'fixo', 20),
(3, '56', '44336554', 'fixo', 19),
(4, '54', '34354352', 'fixo', 18),
(5, '23', '13423324', 'fixo', 17),
(6, '35', '42365465', 'fixo', 16),
(7, '78', '31786577', 'fixo', 15),
(8, '62', '47998678', 'fixo', 14),
(9, '22', '354356437', 'celular', 13),
(10, '12', '999999999', 'celular', 12),
(11, '90', '888888888', 'celular', 11),
(12, '34', '777777777', 'celular', 10),
(13, '13', '666666666', 'celular', 9),
(14, '25', '555555555', 'celular', 8),
(15, '53', '444444444', 'celular', 7),
(16, '82', '333333333', 'celular', 6),
(17, '89', '222222222', 'celular', 5),
(18, '15', '111111111', 'celular', 4),
(19, '12', '123456789', 'celular', 3),
(20, '12', '987654321', 'celular', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `dataVenda` datetime NOT NULL,
  `valorTotal` float NOT NULL,
  `fkCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `venda`:
--   `fkCliente`
--       `cliente` -> `idCliente`
--

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
  ADD KEY `fkCliente` (`fkCliente`),
  ADD KEY `fkRaca` (`fkRaca`);

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
-- Índices para tabela `estoqueprodutos`
--
ALTER TABLE `estoqueprodutos`
  ADD PRIMARY KEY (`idEstoqueProdutos`);

--
-- Índices para tabela `itensservico`
--
ALTER TABLE `itensservico`
  ADD PRIMARY KEY (`idItensServico`),
  ADD KEY `fkServico` (`fkServico`),
  ADD KEY `fkEstoqueProdutos` (`fkEstoqueProdutos`);

--
-- Índices para tabela `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`idRaca`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServico`);

--
-- Índices para tabela `servicovendido`
--
ALTER TABLE `servicovendido`
  ADD PRIMARY KEY (`idServicoVendido`),
  ADD KEY `fkServico` (`fkServico`),
  ADD KEY `fkVenda` (`fkVenda`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `fkUsuario` (`fkUsuario`);

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
  MODIFY `idAgenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `idAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `estoqueprodutos`
--
ALTER TABLE `estoqueprodutos`
  MODIFY `idEstoqueProdutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `itensservico`
--
ALTER TABLE `itensservico`
  MODIFY `idItensServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `raca`
--
ALTER TABLE `raca`
  MODIFY `idRaca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `servicovendido`
--
ALTER TABLE `servicovendido`
  MODIFY `idServicoVendido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `fkCliente` FOREIGN KEY (`fkCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fkRaca` FOREIGN KEY (`fkRaca`) REFERENCES `raca` (`idRaca`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fkEndereco` FOREIGN KEY (`fkEndereco`) REFERENCES `endereco` (`idEndereco`);

--
-- Limitadores para a tabela `itensservico`
--
ALTER TABLE `itensservico`
  ADD CONSTRAINT `fkEstoqueProdutos` FOREIGN KEY (`fkEstoqueProdutos`) REFERENCES `estoqueprodutos` (`idEstoqueProdutos`),
  ADD CONSTRAINT `fkServico` FOREIGN KEY (`fkServico`) REFERENCES `servico` (`idServico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicovendido`
--
ALTER TABLE `servicovendido`
  ADD CONSTRAINT `servicovendido_ibfk_1` FOREIGN KEY (`fkServico`) REFERENCES `servico` (`idServico`),
  ADD CONSTRAINT `servicovendido_ibfk_2` FOREIGN KEY (`fkVenda`) REFERENCES `venda` (`idVenda`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fkUsuario` FOREIGN KEY (`fkUsuario`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`fkCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
