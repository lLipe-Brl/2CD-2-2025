USE db_biblioteca;

-- 1 EXERCICIO 1. Crie uma stored procedure que insira um novo autor na tabela Autores.
DELIMITER $$

CREATE PROCEDURE InserirAutor (
IN p_id_autor INT,
IN p_nome VARCHAR(100),
IN p_data_nascimento DATE
)
BEGIN
	INSERT INTO tb_autores (id_autor, nome, data_nascimento)
    VALUES (p_id_autor, p_nome, p_data_nascimento);
END $$

DELIMITER ;

select * from tb_autores;
CALL InserirAutor('6', 'Fiódor Dostoiévski', '1821-11-11');

-- EXERCICIO 2. Crie uma stored procedure para atualizar a data de devolução de um
-- empréstimo já registrado.

DELIMITER $$

CREATE PROCEDURE AtualizarDevolucao(
    IN p_id_emprestimo INT,
    IN p_data_nova_devolucao DATE
)
BEGIN
    UPDATE tb_emprestimos
    SET data_devolução = p_data_nova_devolucao
    WHERE id_emprestimo = p_id_emprestimo;
END $$

DELIMITER ;

CALL AtualizarDevolucao(1, '2025-08-11');

select * from tb_emprestimos;

-- EXERCICIO 3. Crie uma stored procedure que consulte todos os livros emprestados
-- por um determinado membro, retornando os títulos dos livros e as datas de
-- empréstimo.

DELIMITER $$

CREATE PROCEDURE LivrosEmprestados(
    IN p_id_membro INT
)
BEGIN
    SELECT L.titulo AS titulo_livro, E.data_emprestimo
    FROM tb_emprestimos AS E
    INNER JOIN tb_livros AS L 
    ON E.id_livroF = L.id_livro
    WHERE E.id_membroF = p_id_membro;
END $$

DELIMITER ;

CALL LivrosEmprestados(3);



