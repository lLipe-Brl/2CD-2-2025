/* Criação da Banco de Dados */
CREATE DATABASE db_carro;

/* Acesso ao Banco de Dados */
USE db_carro;

/* Criação da Tabela */
CREATE TABLE tb_carro(
id_carro INT(10) NOT NULL,
marca VARCHAR(100),
modelo VARCHAR(100),
ano INT(4),
valor DECIMAL(10,2),
cor VARCHAR(100),
numero_Vendas INT(100),
PRIMARY KEY (id_carro)
);

SELECT * FROM tb_carro;