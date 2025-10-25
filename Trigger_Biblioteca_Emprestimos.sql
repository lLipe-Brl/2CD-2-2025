USE db_biblioteca;


INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo)
VALUES (7, 2, 3, '2025-08-20');

SELECT * FROM tb_autores;

INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo)
VALUES (8, 2, 4, '2024-07-15');

INSERT INTO tb_autores (id_autor, nome, data_nascimento)
VALUES (6, 'George Orwell', '1903-06-25');

INSERT INTO tb_autores (id_autor, nome, data_nascimento)
VALUES (6, 'George Orwell', '2025-06-25');
