USE db_biblioteca;

SELECT min(data_adesao) AS data_publicação, titulo FROM tb_livros GROUP BY titulo ORDER BY data_publicação;
SELECT max(data_adesao) AS data_publicação, titulo FROM tb_livros GROUP BY titulo ORDER BY data_publicação;

SELECT COUNT(id_livro) AS 'Livros Registrados' FROM tb_livros;

SELECT COUNT(id_emprestimo) FROM tb_emprestimo WHERE data_devolução = '2025-08-18';

SELECT * FROM tb_autores ORDER BY nome ASC;
SELECT * FROM tb_livros ORDER BY titulo DESC;

