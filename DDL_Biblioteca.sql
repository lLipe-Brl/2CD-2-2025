CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE tb_autores(
id_autor INT(10) NOT NULL UNIQUE,
nome VARCHAR(100),
data_nascimento DATE,
PRIMARY KEY (id_autor)
);

CREATE TABLE tb_livros(
id_livro INT(10) NOT NULL,
titulo VARCHAR(100),
data_adesao DATE,
id_autorF INT(10),
FOREIGN KEY (id_autorF) REFERENCES tb_autores (id_autor),
PRIMARY KEY (id_livro)
);

CREATE TABLE tb_membros (
id_membro INT(10) NOT NULL,
nome VARCHAR(100),
data_adesao DATE,
PRIMARY KEY (id_membro)
);

CREATE TABLE tb_emprestimos (
id_emprestimo INT(10) NOT NULL UNIQUE,
id_membroF INT(10),
id_livroF INT(10),
PRIMARY KEY (id_emprestimo),
FOREIGN KEY (id_membroF) REFERENCES tb_membros (id_membro),
FOREIGN KEY (id_livroF) REFERENCES tb_livros (id_livro),
data_emprestimo DATE,
data_devolução DATE
); 	

SELECT * FROM tb_livros;