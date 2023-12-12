CREATE TABLE `ceps` (
	`id_cep` int NOT NULL AUTO_INCREMENT,
	`descricao` varchar(50) NOT NULL,
	PRIMARY KEY (`id_cep`)
);

CREATE TABLE `cidades` (
	`id_cidade` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	PRIMARY KEY (`id_cidade`)
);

CREATE TABLE `ufs` (
	`id_uf` int NOT NULL AUTO_INCREMENT,
	`descrisao` varchar(10) NOT NULL,
	PRIMARY KEY (`id_uf`)
);

CREATE TABLE `marcas` (
	`id_marca` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_marca`)
);

CREATE TABLE `fornecedores` (
	`id_fornecedor` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	`cnpj` varchar(50) NOT NULL,
	`id_cep` int NOT NULL,
	`id_cidade` int NOT NULL,
	`id_uf` int NOT NULL,
	PRIMARY KEY (`id_fornecedor`)
);

CREATE TABLE `clientes` (
	`id_cliente` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	`cpf` varchar(30) NOT NULL,
	`rg` varchar(30) NOT NULL,
	`data_nascimento` DATE NOT NULL,
	`telefone` varchar(30) NOT NULL,
	`end` varchar(100) NOT NULL,
	`id_cep` int NOT NULL,
	`id_cidade` int NOT NULL,
	`id_uf` int NOT NULL,
	`email` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `produtos` (
	`id_produto` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`validade` DATE NOT NULL,
	`qtd` int NOT NULL,
	`valor` real NOT NULL,
	`id_marca` int NOT NULL,
	`id_fornecedor` int NOT NULL,
	PRIMARY KEY (`id_produto`)
);

CREATE TABLE `itens_venda` (
	`id_item` int NOT NULL AUTO_INCREMENT,
	`id_produto` int NOT NULL,
	`id_venda` int NOT NULL,
	`qtd` int NOT NULL,
	PRIMARY KEY (`id_item`)
);

CREATE TABLE `vendas` (
	`id_venda` int NOT NULL AUTO_INCREMENT,
	`id_cliente` int NOT NULL,
	`data` DATE NOT NULL,
	PRIMARY KEY (`id_venda`)
);

ALTER TABLE `fornecedores` ADD CONSTRAINT `fornecedores_fk0` FOREIGN KEY (`id_cep`) REFERENCES `ceps`(`id_cep`);

ALTER TABLE `fornecedores` ADD CONSTRAINT `fornecedores_fk1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades`(`id_cidade`);

ALTER TABLE `fornecedores` ADD CONSTRAINT `fornecedores_fk2` FOREIGN KEY (`id_uf`) REFERENCES `ufs`(`id_uf`);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk0` FOREIGN KEY (`id_cep`) REFERENCES `ceps`(`id_cep`);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades`(`id_cidade`);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk2` FOREIGN KEY (`id_uf`) REFERENCES `ufs`(`id_uf`);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk0` FOREIGN KEY (`id_marca`) REFERENCES `marcas`(`id_marca`);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores`(`id_fornecedor`);

ALTER TABLE `itens_venda` ADD CONSTRAINT `itens_venda_fk0` FOREIGN KEY (`id_produto`) REFERENCES `produtos`(`id_produto`);

ALTER TABLE `itens_venda` ADD CONSTRAINT `itens_venda_fk1` FOREIGN KEY (`id_venda`) REFERENCES `vendas`(`id_venda`);

ALTER TABLE `vendas` ADD CONSTRAINT `vendas_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`);










