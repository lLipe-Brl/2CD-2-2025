CREATE DATABASE db_vet;
USE db_vet;

CREATE TABLE tb_veterinarios(
id_veterinario INT(10) NOT NULL UNIQUE,
nome VARCHAR(100),
especialidade VARCHAR(255),
telefone VARCHAR (50),
PRIMARY KEY(id_veterinario)
);

CREATE TABLE tb_clientes(
id_cliente INT(10) NOT NULL UNIQUE,
nome VARCHAR(100),
endereco VARCHAR(255),
telefone VARCHAR (50),
PRIMARY KEY(id_cliente)
);

CREATE TABLE tb_pets(
id_pet INT(10) NOT NULL UNIQUE,
nome VARCHAR(100),
tipo VARCHAR(100),
raca VARCHAR(100),
data_nascimento DATE,
id_clienteF INT(100),
PRIMARY KEY(id_pet),
FOREIGN KEY (id_clienteF) REFERENCES tb_clientes (id_cliente)
);

CREATE TABLE tb_atendimentos(
id_atendimento INT(10) NOT NULL UNIQUE,
id_petF INT(100),
id_veterinarioF INT(100),
data_atendimento DATE,
descricao VARCHAR(100),
PRIMARY KEY(id_atendimento),
FOREIGN KEY(id_petF) REFERENCES tb_pets (id_pet),
FOREIGN KEY(id_veterinarioF) REFERENCES tb_veterinarios (id_veterinario)
);

SELECT * FROM tb_veterinarios;

