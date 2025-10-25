-- a. Liste os autores que possuem livros com ano de publicação maior que a
-- média de anos de publicação de todos os livros cadastrados.
SELECT * FROM tb_livros WHERE data_adesao > (SELECT AVG(data_adesao) FROM tb_livros);

-- b. Liste os livros que foram emprestados ao menos uma vez.
SELECT * FROM tb_livros;
SELECT * FROM tb_emprestimos;

SELECT * FROM tb_livros WHERE id_livro IN (SELECT id_livro FROM tb_emprestimos);

-- c. Consulte os livros que ainda não foram emprestados.
SELECT * FROM tb_livros
WHERE id_livro NOT IN (
SELECT id_livroF FROM tb_emprestimos
);

USE db_biblioteca;


