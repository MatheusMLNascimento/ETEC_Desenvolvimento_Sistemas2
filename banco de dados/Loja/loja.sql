-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2023 às 00:46
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ceps`
--

CREATE TABLE `ceps` (
  `id_cep` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ceps`
--

INSERT INTO `ceps` (`id_cep`, `descricao`) VALUES
(1, '13033035'),
(2, '04323180'),
(3, '13033010'),
(4, '04323110'),
(5, '21031700');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome`) VALUES
(1, 'campinas'),
(2, 'rio de janeiro'),
(3, 'salvador'),
(4, 'góias'),
(5, 'piracicaba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `rg` varchar(30) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `end` varchar(100) NOT NULL,
  `id_cep` int(11) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `id_uf` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `cpf`, `rg`, `data_nascimento`, `telefone`, `end`, `id_cep`, `id_cidade`, `id_uf`, `email`) VALUES
(1, 'Jose Bonitinho', '13033455', '44456774', '2003-11-10', '199987653', 'Rua A', 1, 1, 1, 'joseboni@gmail.com'),
(2, 'Roberto Bonitinho', '13035477', '45673456', '1994-08-12', '199923553', 'Rua João Romariz', 1, 1, 1, 'robboni@gmail.com'),
(3, 'Rafael Drummont', '12088678', '25349678', '1996-06-14', '1999465653', 'Avenida Brigadeiro Rafael Tobias de Aguiar', 2, 2, 2, 'rafadrum@hotmail.com'),
(4, 'Matheus Martins', '44036755', '96783456', '2000-03-09', '198677653', 'Rua Marie Gabi', 3, 5, 3, 'martinsmatheus@outlook.com'),
(5, 'Gabriele Cavalvanti', '18073905', '25340276', '2005-08-18', '199997853', 'Rua do Céu', 5, 4, 3, 'gabcavalcanti@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `id_cep` int(11) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `id_uf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornecedor`, `nome`, `cnpj`, `id_cep`, `id_cidade`, `id_uf`) VALUES
(1, 'Doritos', '55346745', 3, 2, 1),
(2, 'Ruffles', '55346745', 1, 2, 3),
(3, 'Cheetos', '55346745', 2, 2, 4),
(4, 'Camp', '55346745', 1, 5, 2),
(5, 'Moises caminhoes', '55346745', 4, 5, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id_item` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id_item`, `id_produto`, `id_venda`, `qtd`) VALUES
(1, 1, 2, 4),
(2, 2, 4, 5),
(3, 5, 2, 5),
(4, 4, 3, 2),
(5, 3, 2, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nome`) VALUES
(1, 'Cheetos'),
(2, 'Ruffles'),
(3, 'Doritos'),
(4, 'Ype'),
(5, 'Dove');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `qtd` int(11) NOT NULL,
  `valor` double NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `descricao`, `validade`, `qtd`, `valor`, `id_marca`, `id_fornecedor`) VALUES
(1, '55346745', 'Salgadinho Doritos', '2024-11-15', 10, 5, 3, 1),
(2, '55346745', 'Salgadinho Cheetos', '2025-11-20', 5, 4, 1, 3),
(3, '55346745', 'Salgadinho Ruffles', '2024-11-28', 35, 7, 2, 2),
(4, '55346745', 'Sabonete Dove', '2023-11-24', 42, 12, 5, 4),
(5, '55346745', 'Desinfetante Ype', '2023-11-24', 21, 23, 4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ufs`
--

CREATE TABLE `ufs` (
  `id_uf` int(11) NOT NULL,
  `descrisao` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ufs`
--

INSERT INTO `ufs` (`id_uf`, `descrisao`) VALUES
(1, 'SP'),
(2, 'RJ'),
(3, 'SA'),
(4, 'GO'),
(5, 'MG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `id_cliente`, `data`) VALUES
(1, 1, '2023-11-15'),
(2, 2, '2023-09-06'),
(3, 4, '2023-11-18'),
(4, 3, '2023-11-12'),
(5, 5, '2023-11-06');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ceps`
--
ALTER TABLE `ceps`
  ADD PRIMARY KEY (`id_cep`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `clientes_fk0` (`id_cep`),
  ADD KEY `clientes_fk1` (`id_cidade`),
  ADD KEY `clientes_fk2` (`id_uf`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD KEY `fornecedores_fk0` (`id_cep`),
  ADD KEY `fornecedores_fk1` (`id_cidade`),
  ADD KEY `fornecedores_fk2` (`id_uf`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `itens_venda_fk0` (`id_produto`),
  ADD KEY `itens_venda_fk1` (`id_venda`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `produtos_fk0` (`id_marca`),
  ADD KEY `produtos_fk1` (`id_fornecedor`);

--
-- Índices para tabela `ufs`
--
ALTER TABLE `ufs`
  ADD PRIMARY KEY (`id_uf`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `vendas_fk0` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ceps`
--
ALTER TABLE `ceps`
  MODIFY `id_cep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ufs`
--
ALTER TABLE `ufs`
  MODIFY `id_uf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_fk0` FOREIGN KEY (`id_cep`) REFERENCES `ceps` (`id_cep`),
  ADD CONSTRAINT `clientes_fk1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`),
  ADD CONSTRAINT `clientes_fk2` FOREIGN KEY (`id_uf`) REFERENCES `ufs` (`id_uf`);

--
-- Limitadores para a tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD CONSTRAINT `fornecedores_fk0` FOREIGN KEY (`id_cep`) REFERENCES `ceps` (`id_cep`),
  ADD CONSTRAINT `fornecedores_fk1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`),
  ADD CONSTRAINT `fornecedores_fk2` FOREIGN KEY (`id_uf`) REFERENCES `ufs` (`id_uf`);

--
-- Limitadores para a tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD CONSTRAINT `itens_venda_fk0` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  ADD CONSTRAINT `itens_venda_fk1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id_venda`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_fk0` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`),
  ADD CONSTRAINT `produtos_fk1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
