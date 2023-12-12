CREATE TABLE `Ceps` (
	`id_cep` int NOT NULL AUTO_INCREMENT,
	`cep` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cep`)
);

CREATE TABLE `Cargos` (
	`id_cargo` int NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cargo`)
);

CREATE TABLE `Funcionarios` (
	`id_funcionario` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`cidade` varchar(255) NOT NULL,
	`UF` varchar(255) NOT NULL,
	`celular` varchar(255) NOT NULL,
	`RG` varchar(255) NOT NULL,
	`CPF` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`id_cargo` int NOT NULL,
	`id_cep` int NOT NULL,
	PRIMARY KEY (`id_funcionario`)
);

CREATE TABLE `tipos_pagamentos` (
	`id_tipo_pagamento` int NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_tipo_pagamento`)
);

CREATE TABLE `Clientes` (
	`id_cliente` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`cidade` varchar(255) NOT NULL,
	`UF` varchar(255) NOT NULL,
	`celular` varchar(255) NOT NULL,
	`RG` varchar(255) NOT NULL,
	`CPF` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`id_cep` int NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `Carros` (
	`id_carro` int NOT NULL AUTO_INCREMENT,
	`modelo` varchar(255) NOT NULL,
	`marca` varchar(255) NOT NULL,
	`cor` varchar(255) NOT NULL,
	`km` varchar(255) NOT NULL,
	PRIMARY KEY (`id_carro`)
);

CREATE TABLE `Lojas` (
	`id_loja` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`cidade` varchar(255) NOT NULL,
	`UF` varchar(255) NOT NULL,
	`telefone` varchar(255) NOT NULL,
	`id_cep` int NOT NULL,
	PRIMARY KEY (`id_loja`)
);

CREATE TABLE `Locacoes` (
	`id_locacao` int NOT NULL AUTO_INCREMENT,
	`id_cliente` int NOT NULL,
	`id_loja` int NOT NULL,
	`id_carro` int NOT NULL,
	`id_funcionario` int NOT NULL,
	`id_tipo_pagamento` int NOT NULL,
	`valor` int NOT NULL,
	`data` DATE NOT NULL,
	PRIMARY KEY (`id_locacao`)
);

ALTER TABLE `Funcionarios` ADD CONSTRAINT `Funcionarios_fk0` FOREIGN KEY (`id_cargo`) REFERENCES `Cargos`(`id_cargo`);

ALTER TABLE `Funcionarios` ADD CONSTRAINT `Funcionarios_fk1` FOREIGN KEY (`id_cep`) REFERENCES `Ceps`(`id_cep`);

ALTER TABLE `Clientes` ADD CONSTRAINT `Clientes_fk0` FOREIGN KEY (`id_cep`) REFERENCES `Ceps`(`id_cep`);

ALTER TABLE `Lojas` ADD CONSTRAINT `Lojas_fk0` FOREIGN KEY (`id_cep`) REFERENCES `Ceps`(`id_cep`);

ALTER TABLE `Locacoes` ADD CONSTRAINT `Locacoes_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes`(`id_cliente`);

ALTER TABLE `Locacoes` ADD CONSTRAINT `Locacoes_fk1` FOREIGN KEY (`id_loja`) REFERENCES `Lojas`(`id_loja`);

ALTER TABLE `Locacoes` ADD CONSTRAINT `Locacoes_fk2` FOREIGN KEY (`id_carro`) REFERENCES `Carros`(`id_carro`);

ALTER TABLE `Locacoes` ADD CONSTRAINT `Locacoes_fk3` FOREIGN KEY (`id_funcionario`) REFERENCES `Funcionarios`(`id_funcionario`);

ALTER TABLE `Locacoes` ADD CONSTRAINT `Locacoes_fk4` FOREIGN KEY (`id_tipo_pagamento`) REFERENCES `tipos_pagamentos`(`id_tipo_pagamento`);









