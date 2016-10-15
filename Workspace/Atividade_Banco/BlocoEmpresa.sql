CREATE DATABASE empresa DEFAULT COLLATE utf8_unicode_ci;

USE empresa;

CREATE TABLE clientes (
	id_cliente INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	nome_cliente VARCHAR(255) NOT NULL, 
	data_nasc DATE, 
	cli_sexo CHAR(1), 
	cli_cpf VARCHAR(11) NOT NULL, 
	cli_rg VARCHAR(11), 
	cli_telefone VARCHAR(12), 
	cli_email VARCHAR(50)
);
	
CREATE TABLE endereco_cliente(
	id_endereco INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	cli_cep VARCHAR(11),
	id_cliente INT, 
	FOREIGN KEY(id_cliente)REFERENCES clientes(id_cliente)
); 

CREATE TABLE celular( 
	id_celular INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	numero varchar(12),
	FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);


CREATE TABLE Uni_Cli_Celu (
	id_cliente INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	nome_cliente VARCHAR(255) NOT NULL, 
	data_nasc DATE, 
	cli_sexo CHAR(1), 
	cli_cpf VARCHAR(11) NOT NULL, 
	cli_rg VARCHAR(11), 
	cli_telefone VARCHAR(12), 
	cli_email VARCHAR(50),
	id_celular INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	numero varchar(12),
	FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)	
);


CREATE TABLE vendedor(
	id_vendedor INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_vendedor VARCHAR(255),
	cpf_vendedor VARCHAR(11),
	rg_vendedor VARCHAR(11)
);


CREATE TABLE contato_vendedor( 
	id_contato INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_vendedor INT,
	foreign key (id_vendedor) REFERENCES vendedor(id_vendedor),
	celu_vendedor VARCHAR(12),
	email_vendrdor VARCHAR(50)
);
	
CREATE TABLE servicos( 
	id_servicos INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	descri_serv varchar(255),
	valor REAL
);

CREATE TABLE plano( 
	id_plano INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	descri_serv varchar(255),
	mud_valor INT
);

CREATE TABLE adesao( 
	id_adesao INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	FOREIGN KEY(id_cliente)REFERENCES clientes(id_cliente),
	id_servico INT,
	FOREIGN KEY(id_servico)REFERENCES servico(id_servico),
	id_plano INT, 
	FOREIGN KEY(id_plano)REFERENCES plano(id_plano),
	id_vendedor INT,
	FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor)
);
	
CREATE TABLE fatura( 
	id_fatura INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_adesao INT,
	FOREIGN KEY(id_adesao) REFERENCES adesao(id_adesao),
	id_cliente INT,
	FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente),
	id_servicos INT,
	FOREIGN KEY(id_servicos) REFERENCES servicos(id_servicos),
	id_plano INT, 
	FOREIGN KEY(id_plano) REFERENCES plano(id_plano),
	id_vendedor INT,
	FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor),
	data_venc DATE
);








	




