USE db_biblioteca;
SELECT * FROM tb_autores;

INSERT INTO tb_autores (id_autor, nome, data_nascimento) VALUES (
'1',
'C.S Lewis',
'1898-11-29'
);

INSERT INTO tb_autores (id_autor, nome, data_nascimento) VALUES (
'2',
'Willian Shakespeare',
'1564-04-23'
);

INSERT INTO tb_autores (id_autor, nome, data_nascimento) VALUES (
'3',
'George Orwell',
'1903-06-25'
);

INSERT INTO tb_autores (id_autor, nome, data_nascimento) VALUES (
'4',
'Machado de Assis',
'1839-06-21'
);
INSERT INTO tb_autores (id_autor, nome, data_nascimento) VALUES (
'5',
'Carlos Drummond de Andrade',
'1902-10-31'
);

INSERT INTO tb_livros (id_livro, titulo, data_adesao, id_autorF) VALUES (
'1',
'Cristianismo Puro e Simples',
'1941-07-03',
'1'
);
INSERT INTO tb_livros (id_livro, titulo, data_adesao, id_autorF) VALUES (
'2',
'Romeu e Julieta',
'1591-05-01',
'2'
);
INSERT INTO tb_livros (id_livro, titulo, data_adesao, id_autorF) VALUES (
'3',
'1984',
'1949-06-08',
'3'
);
INSERT INTO tb_livros (id_livro, titulo, data_adesao, id_autorF) VALUES (
'4',
'Romeu e Julieta',
'1882-03-15',
'4'
);
INSERT INTO tb_livros (id_livro, titulo, data_adesao, id_autorF) VALUES (
'5',
'A rosa do povo',
'1945-08-08',
'5'
);

INSERT INTO tb_membros (id_membro, nome, data_adesao) VALUES (
'1',
'Andrey',
'2025-05-11'
);
INSERT INTO tb_membros (id_membro, nome, data_adesao) VALUES (
'2',
'Julio',
'2023-04-15'
);
INSERT INTO tb_membros (id_membro, nome, data_adesao) VALUES (
'3',
'Gustavo',
'2022-04-11'
);
INSERT INTO tb_membros (id_membro, nome, data_adesao) VALUES (
'4',
'Matheus',
'2024-02-07'
);
INSERT INTO tb_membros (id_membro, nome, data_adesao) VALUES (
'5',
'Felipe',
'2025-08-08'
);

INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo, data_devolução) VALUES (
'1',
'1',
'5',
'2025-08-08',
'2025-08-10'
);

INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo, data_devolução) VALUES (
'2',
'2',
'4',
'2025-07-10',
'2025-08-09'
);
INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo, data_devolução) VALUES (
'3',
'3',
'3',
'2025-08-08',
'2025-08-14'
);
INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo, data_devolução) VALUES (
'4',
'4',
'2',
'2025-08-09',
'2025-08-15'
);
INSERT INTO tb_emprestimos (id_emprestimo, id_membroF, id_livroF, data_emprestimo, data_devolução) VALUES (
'5',
'5',
'1',
'2025-08-04',
'2025-08-12'
);

SELECT * FROM tb_membros;


UPDATE tb_membros SET nome = 'Giovani Giorgio' WHERE id_membro = '5';


