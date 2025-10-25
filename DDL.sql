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

/* Seleciona tudo da tb_carro */
SELECT * FROM tb_carro;

CREATE TABLE tb_proprietario(
id_proprietario INT(10) NOT NULL,
nome VARCHAR(100),
id_carroF INT (10) NOT NULL,
PRIMARY KEY (id_proprietario),
FOREIGN KEY (id_carroF) REFERENCES tb_carro(id_carro)
);

SELECT * FROM tb_proprietario;
SELECT modelo FROM tb_carro;
ALTER TABLE tb_proprietario MODIFY COLUMN idade int(3);


CREATE TABLE tb_historico (
id_historico INT(10) NOT NULL,
data_modificacao DATE,
id_carroF INT(10) NOT NULL,
valor_anterior DECIMAL(10,2),
valor_novo DECIMAL (10,2),
PRIMARY KEY (id_historico),
FOREIGN KEY (id_carroF) REFERENCES tb_carro(id_carro)
);

