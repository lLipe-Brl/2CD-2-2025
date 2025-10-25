USE db_biblioteca;

-- INNER JOIN

-- 1 Liste o título do livro e o nome do autor.

SELECT L.titulo AS titulo, A.nome AS nome_autor
FROM tb_autores AS A
INNER JOIN tb_livros AS L
ON L.id_autorF = A.id_autor;

-- 2 Liste o título do livro, o nome do autor e o ano de publicação.

SELECT L.titulo AS titulo, A.nome AS nome_autor, L.data_adesao
FROM tb_autores AS A
INNER JOIN tb_livros AS L
ON L.id_autorF = A.id_autor = L.id_livro;

-- 3 Liste o nome do membro, o título do livro e a data de empréstimo.

SELECT M.nome AS membro, L.titulo AS titulo_livro, E.data_emprestimo
FROM tb_emprestimos AS E
INNER JOIN tb_membros AS M 
ON E.id_membroF = M.id_membro
INNER JOIN tb_livros AS L 
ON E.id_livroF = L.id_livro;

-- 4 Liste todos os empréstimos com o nome do membro, título do livro, nome
-- do autor e data de devolução.

SELECT M.nome AS membros, L.titulo AS titulo_livro, A.nome AS nome_autor,
E.data_emprestimo, E.data_devolução
FROM tb_emprestimos AS E
INNER JOIN tb_membros AS M 
ON E.id_membroF = M.id_membro
INNER JOIN tb_livros AS L 
ON E.id_livroF = L.id_livro
INNER JOIN tb_autores AS A
ON L.id_autorF = A.id_autor;

-- LEFT JOIN
-- 5 Liste todos os membros e, caso existam, os livros que eles já emprestaram.

SELECT M.nome AS membro, L.titulo AS livro_emprestado
FROM tb_membros AS M
LEFT JOIN tb_emprestimos AS E 
ON M.id_membro = E.id_membroF
LEFT JOIN tb_livros AS L
ON E.id_livroF = L.id_livro
ORDER BY M.nome;

-- 6 Liste todos os autores e os livros que eles escreveram (mesmo que algum
-- autor ainda não tenha livros cadastrados).

SELECT A.nome AS autor, L.titulo AS livro
FROM tb_autores AS A
LEFT JOIN tb_livros AS L
ON A.id_autor = L.id_autorF
ORDER BY A.nome;

-- LEFT JOIN
-- 7 Liste todos os livros e, caso tenham, o nome do autor correspondente.

SELECT L.titulo AS livro, A.nome AS autor
FROM tb_autores AS A
RIGHT JOIN tb_livros AS L
ON L.id_autorF = A.id_autor
ORDER BY L.titulo;

-- 8 Liste todos os livros e, caso tenham, os membros que os emprestaram.

SELECT L.titulo AS livro, M.nome AS membro
FROM tb_livros AS L
RIGHT JOIN tb_emprestimos AS E
ON L.id_livro = E.id_livroF
RIGHT JOIN tb_membros AS M
ON E.id_membroF = M.id_membro
ORDER BY L.titulo;