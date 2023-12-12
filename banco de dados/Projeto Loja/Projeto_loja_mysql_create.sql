CREATE TABLE `bairros` (
	`id_bairro` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_bairro`)
);

CREATE TABLE `cidades` (
	`id_cidade` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cidade`)
);

CREATE TABLE `clientes` (
	`id_cliente` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`cpf` int NOT NULL,
	`numero` int NOT NULL,
	`email` varchar(255) NOT NULL,
	`cep` int(255) NOT NULL,
	`id_bairro` int NOT NULL,
	`casa_num` int NOT NULL,
	`id_cidade` int NOT NULL,
	`id_uf` int NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `estoque` (
	`id_estoque` int NOT NULL AUTO_INCREMENT,
	`id_produto` int NOT NULL,
	`id_fornecedor` int NOT NULL,
	`validade` TIME NOT NULL,
	`lote` int NOT NULL,
	`qtd` int NOT NULL,
	PRIMARY KEY (`id_estoque`)
);

CREATE TABLE `fornecedores` (
	`id_fornecedor` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`cep` int(255) NOT NULL,
	PRIMARY KEY (`id_fornecedor`)
);

CREATE TABLE `itens_venda` (
	`id_cesta` int NOT NULL AUTO_INCREMENT,
	`id_venda` int NOT NULL,
	`id_produto` int NOT NULL,
	`valor` int NOT NULL,
	PRIMARY KEY (`id_cesta`)
);

CREATE TABLE `marcas` (
	`id_marca` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_marca`)
);

CREATE TABLE `produtos` (
	`id_produto` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`tipo` varchar(255) NOT NULL,
	`id_marca` int NOT NULL,
	`id_fornecedor` int NOT NULL,
	`preco` int NOT NULL,
	PRIMARY KEY (`id_produto`)
);

CREATE TABLE `tipo_pagamentos` (
	`id_tipo_pagamento` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_tipo_pagamento`)
);

CREATE TABLE `uf` (
	`id_uf` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id_uf`)
);

CREATE TABLE `vendas` (
	`id_venda` int NOT NULL AUTO_INCREMENT,
	`id_cesta` int NOT NULL,
	`id_cliente` int NOT NULL,
	`data` DATE NOT NULL,
	`preco_total` int NOT NULL,
	`id_tipo_pagamento` int NOT NULL,
	PRIMARY KEY (`id_venda`)
);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk0` FOREIGN KEY (`id_bairro`) REFERENCES `bairros`(`id_bairro`);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades`(`id_cidade`);

ALTER TABLE `clientes` ADD CONSTRAINT `clientes_fk2` FOREIGN KEY (`id_uf`) REFERENCES `uf`(`id_uf`);

ALTER TABLE `estoque` ADD CONSTRAINT `estoque_fk0` FOREIGN KEY (`id_produto`) REFERENCES `produtos`(`id_produto`);

ALTER TABLE `estoque` ADD CONSTRAINT `estoque_fk1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores`(`id_fornecedor`);

ALTER TABLE `itens_venda` ADD CONSTRAINT `itens_venda_fk0` FOREIGN KEY (`id_venda`) REFERENCES `vendas`(`id_venda`);

ALTER TABLE `itens_venda` ADD CONSTRAINT `itens_venda_fk1` FOREIGN KEY (`id_produto`) REFERENCES `produtos`(`id_produto`);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk0` FOREIGN KEY (`id_marca`) REFERENCES `marcas`(`id_marca`);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores`(`id_fornecedor`);

ALTER TABLE `vendas` ADD CONSTRAINT `vendas_fk0` FOREIGN KEY (`id_cesta`) REFERENCES `itens_venda`(`id_cesta`);

ALTER TABLE `vendas` ADD CONSTRAINT `vendas_fk1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`);

ALTER TABLE `vendas` ADD CONSTRAINT `vendas_fk2` FOREIGN KEY (`id_tipo_pagamento`) REFERENCES `tipo_pagamentos`(`id_tipo_pagamento`);












