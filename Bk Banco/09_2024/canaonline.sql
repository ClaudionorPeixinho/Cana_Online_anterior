-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2024 às 21:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `canaonline`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `apontamentos`
--

CREATE TABLE `apontamentos` (
  `id` int(11) NOT NULL,
  `data_lancamento` date NOT NULL,
  `hora_saida` time NOT NULL,
  `liberacao` text NOT NULL,
  `fazenda` text NOT NULL,
  `operacao` text NOT NULL,
  `lider` text NOT NULL,
  `frota` text NOT NULL,
  `motorista` text NOT NULL,
  `colhedora` text NOT NULL,
  `operador1` text NOT NULL,
  `transbordo` text NOT NULL,
  `operador2` text NOT NULL,
  `informacao` text NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `apontamentos`
--

INSERT INTO `apontamentos` (`id`, `data_lancamento`, `hora_saida`, `liberacao`, `fazenda`, `operacao`, `lider`, `frota`, `motorista`, `colhedora`, `operador1`, `transbordo`, `operador2`, `informacao`, `created`) VALUES
(56, '2024-05-23', '11:44:00', '13301', '6615', 'colheita', 'claudeir', '712', 'Claudionor Peixinho', '976280', 'jairson', '715', 'Patrick Alexandre', 'colhendo com teste do sistema', '2024-05-23 11:44:16'),
(57, '2024-08-21', '17:20:00', '123456', '6748', 'Plantio', 'Claudeir Pontes', '714', 'José Euclides Silveira', '96842-2', 'João Antonio Carneiro dos Santos', '718', 'Adriano', 'Colhendo Cana Queimada', '2024-08-21 16:20:53'),
(61, '2024-08-26', '13:31:00', '123456', '6628', 'Plantio', 'Claudeir', '718', 'Mauro Fracaroli', '96842-2', 'Marco Germano', '799', 'José de Souza', 'testando', '2024-08-26 12:31:34'),
(62, '2024-08-26', '12:38:00', '123456', '6628', 'Plantio', 'Claudeir', '718', 'Mauro Fracaroli', '96842-2', 'Joel Menezes', '97689-0', 'Adriano Santesso', 'Colhendo Cana Queimada', '2024-08-26 12:37:55'),
(63, '2024-08-20', '13:39:00', '123456', '6959', 'Transporte', 'Mario Ferraz', '718', 'Guilherme Colovato', '97619-1', 'Edirson Gomes Rego', '97689-0', 'Adriano', 'Acertando Banco dados', '2024-08-26 12:40:16'),
(64, '2024-08-26', '15:53:00', '123456', '6628', 'Plantio', 'Mario Ferraz', '718', 'Mauro Fracaroli', '96842-2', 'Marco Germano', '799', 'Adriano', 'Segundo Teste', '2024-08-26 14:54:21'),
(65, '2024-08-12', '20:00:00', 'cccc', '6959', 'Plantio', 'Claudeir', '718', 'José Euclides Silveira', '97619-1', 'Marco Germano', '718', 'Rodrigo Tenorio', 'Agora estou testando o banco editado', '2024-08-26 14:55:20'),
(66, '2024-08-26', '18:01:00', '147895', '6750', 'tratos', 'Claudionor Peixinho', '97712-2', 'Luis Antonio dos Santos', '97619-1', 'Edirson Gomes Rego', '715', 'Juraci da Silva ', 'testando', '2024-08-26 14:56:54'),
(68, '2024-08-26', '18:16:00', '0005', '6636', 'Plantio Soja', 'Willian Azevedo', '778', 'Claudio Barrinha', '96842-2', 'Tadeu Sgavioli', '97632-5', 'Tibila', 'Testando no banco', '2024-08-26 15:15:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_colaborador`
--

CREATE TABLE `cad_colaborador` (
  `Id` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Funcao` varchar(255) NOT NULL,
  `Telefone` varchar(255) NOT NULL,
  `Apelido` varchar(255) NOT NULL,
  `Turno` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `Modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cad_colaborador`
--

INSERT INTO `cad_colaborador` (`Id`, `Matricula`, `Nome`, `Funcao`, `Telefone`, `Apelido`, `Turno`, `created`, `Modified`) VALUES
(10, '7270', 'Marco Germano', 'Operador de Colhedora', '14 99628-9874', 'Marquinhos', 'Noturno', '2024-05-02 14:16:29', NULL),
(19, '7028', 'Luis Otavio Grana', 'Coordenador Logistica', '14 99628-8978', 'Batavito', 'Diurno', '2024-05-03 08:21:30', NULL),
(23, '8090', 'André Luis Araujo', 'Administrativo', '14 99114-5040', 'Pantera Negra', 'Diurno', '2024-05-03 08:47:06', NULL),
(25, '8090', 'André Luis Araujo', 'Administrativo', '14 99114-5040', 'Pantera Negra', 'Diurno', '2024-05-03 09:20:45', NULL),
(26, '1000', 'André Luis Araujo', 'Administrativo', '14 99114-5040', 'Pantera Negra', 'Diurno', '2024-05-15 13:31:32', NULL),
(28, '7233', 'André Luis Araujo', 'Auxiliar Logistica', '1499658-7896', 'Panterão', 'Diur', '2024-05-15 16:42:46', NULL),
(29, '7270', 'Claudionor  Peixinho', 'Operador de Colhedora', '14996288051', 'Peixinho louco', 'Diurno', '2024-05-16 15:49:29', NULL),
(30, '7270', 'Claudionor Peixinho', 'Operador de Colhedora', '14996288051', 'Peixinho louco', 'Diurno', '2024-05-16 15:51:34', NULL),
(31, '7270', 'Claudionor  Peixinho', 'Operador de Colhedora', '14996288051', 'Peixinho louco', 'Diurno', '2024-05-16 15:51:59', NULL),
(32, '7270', 'André Luis  Araujo', 'Motorista Pipa', '14996587896', 'Pantera Negra', 'Diurno', '2024-05-16 15:53:18', NULL),
(33, '12345', 'Claudionor dos Santos Peixinho', 'Coordenador Tecnologias Agrícolas', '14996288051', 'Peixinho louco', 'Noturno', '2024-05-16 15:54:38', NULL),
(34, '12345', 'Claudionor dos Santos Peixinho', 'Coordenador Tecnologias Agrícolas', '14996288051', 'Peixinho louco', 'Noturno', '2024-05-16 15:56:17', NULL),
(36, '7270', 'Claudionor dos Santos Peixinho', 'Operador de Colhedora', '14996288051', 'Marquinhos', '', '2024-05-17 13:50:53', NULL),
(38, '7270', 'Claudionor dos Santos Peixinho', 'Operador de Colhedora', '14996288051', 'Marquinhos', 'Diurno', '2024-05-17 14:40:13', NULL),
(39, '7809', 'Claudionor dos Santos Peixinho', 'coordenador', '14996288051', 'Peixinho', 'Noturno', '2024-05-18 11:24:55', NULL),
(40, '7809', 'Claudionor dos Santos Peixinho', 'coordenador', '14996288051', 'Peixinho', 'Noturno', '2024-05-23 11:44:25', NULL),
(42, '7159', 'Claudionor Peixinho', 'Motorista Canavieiro', '14991141057', 'Fio Badaró', 'Qualquer um', '2024-08-23 10:32:54', NULL),
(49, '1234', 'Claudionor Peixinho', 'Coordenador Sistema', '14 99628-8051', 'Peixinho', 'Noturno', '2024-09-03 16:32:34', NULL),
(50, '1234', '', '', '', '', '', '2024-09-03 16:42:04', NULL),
(51, '1234', 'Claudionor Peixinho', 'Coordenador de assuntos sem importâncias', '14 99628-8051', 'Peixinho', 'Diurno', '2024-09-03 16:42:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_equipamentos`
--

CREATE TABLE `cad_equipamentos` (
  `id` int(11) NOT NULL,
  `Frota` varchar(255) NOT NULL,
  `Modelo` varchar(255) NOT NULL,
  `Operacao` varchar(255) NOT NULL,
  `Tag` varchar(255) NOT NULL,
  `Categoria` varchar(255) NOT NULL,
  `Created` datetime DEFAULT NULL,
  `Modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cad_equipamentos`
--

INSERT INTO `cad_equipamentos` (`id`, `Frota`, `Modelo`, `Operacao`, `Tag`, `Categoria`, `Created`, `Modified`) VALUES
(6, '97710', 'Volvo Fh 540 - 6x4', 'Colheita Mecanizada', '710', 'Caminhão Canavieiro', '2024-05-03 08:11:13', '0000-00-00 00:00:00'),
(7, '601', 'Mercedes Benz 2219', 'Combate Incendio', '601', 'Caminhão', '2024-05-03 08:22:21', '0000-00-00 00:00:00'),
(9, '605', 'Mercedes Benz 2220', 'Prancha', '605', 'Caminhão', '2024-05-03 08:47:15', '0000-00-00 00:00:00'),
(12, '97714-5', 'Mercedes Benz 2220', 'Transporte', '710', 'Caminhão', '2024-05-16 15:58:21', '0000-00-00 00:00:00'),
(14, '97710-0', 'Volvo Fh 540 - 6x4', 'Transporte', '710', 'Caminhão', '2024-05-17 14:40:20', '0000-00-00 00:00:00'),
(15, '97714-5', 'Carregadeira de Cana', 'Acerto de cargas ', '14', 'Trator', '2024-05-18 11:25:23', '0000-00-00 00:00:00'),
(16, '97714-5', 'Carregadeira de Cana', 'Acerto de cargas ', '14', 'Trator', '2024-05-23 11:44:32', '0000-00-00 00:00:00'),
(17, '789', 'Ônibus', 'Transporte de Funcionários', '89', 'Utilitario', '2024-08-02 16:45:43', '0000-00-00 00:00:00'),
(18, '601', 'Volvo Vm-270', 'Transporte', '601', 'Caminhão', '2024-08-02 16:48:18', '0000-00-00 00:00:00'),
(19, '718', 'Volvo Vm-270', 'Plantio', '777', 'Transbordo', '2024-08-21 16:19:04', '0000-00-00 00:00:00'),
(20, '97710', 'Volvo Vm-270', 'Transporte', '718', 'Caminhão Canavieiro', '2024-08-21 16:22:11', '0000-00-00 00:00:00'),
(21, '97710', 'Volvo Vm-270', 'Transporte', '718', 'Caminhão Canavieiro', '2024-08-26 12:40:54', '0000-00-00 00:00:00'),
(22, '97710', 'Volvo Vm-270', 'Transporte', '718', 'Caminhão Canavieiro', '2024-08-26 12:41:24', '0000-00-00 00:00:00'),
(23, '97711-5', 'Volvo FH-540', 'Transporte Cana Picada', '711', 'Caminhão 6x4 - Canavieiro', '2024-08-26 14:46:43', '0000-00-00 00:00:00'),
(25, '97710', 'Colhedora Cana', 'colheita 24', '123456', 'Máquina', '2024-09-03 16:42:48', '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `apontamentos`
--
ALTER TABLE `apontamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cad_colaborador`
--
ALTER TABLE `cad_colaborador`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_equipamentos`
--
ALTER TABLE `cad_equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apontamentos`
--
ALTER TABLE `apontamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `cad_colaborador`
--
ALTER TABLE `cad_colaborador`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `cad_equipamentos`
--
ALTER TABLE `cad_equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
