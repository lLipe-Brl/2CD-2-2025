USE db_biblioteca;

-- Exercicio 1. Crie uma função que recebe o id_autor e retorna a idade do autor
-- com base na data de nascimento.

DELIMITER $$

CREATE FUNCTION CalcularIdadeAutor(
    p_id_autor INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE RetornaIdade INT;
    SELECT TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())
    INTO RetornaIdade
    FROM tb_autores
    WHERE id_autor = p_id_autor;
    RETURN RetornaIdade;
END$$
DELIMITER ;
SELECT CalcularIdadeAutor (3);

-- Exercicio 2. Crie uma função que recebe o id_autor e retorna a quantidade de
-- livros escritos por esse autor.

DELIMITER $$
CREATE FUNCTION ContarLivros(
    p_id_autor INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE TotalLivros INT;
    SELECT COUNT(*)
    INTO TotalLivros
    FROM tb_autores
    WHERE id_autor = p_id_autor;
    RETURN TotalLivros;
END$$

DELIMITER ;
DROP FUNCTION ContarLivros;
SELECT ContarLivros(1) AS 'Quantidade de Livros do Autor';

-- Exercicio 3. Crie uma função que recebe duas datas e retorna o total de
-- empréstimos realizados nesse período.

DROP FUNCTION IF EXISTS ContarEmprestimosPorPeriodo;
DELIMITER $$

CREATE FUNCTION ContarEmprestimosPorPeriodo(
    p_data_inicio DATE,
    p_data_fim DATE
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE TotalEmprestimos INT;
    SELECT COUNT(*)
    INTO TotalEmprestimos
    FROM tb_emprestimos
    WHERE data_emprestimo BETWEEN p_data_inicio AND p_data_fim;

    RETURN TotalEmprestimos;
END$$
DELIMITER ;

SELECT ContarEmprestimosPorPeriodo('2025-08-01', '2025-08-31') AS total_no_periodo;

-- Exercicio 4. Crie uma função que retorna a média de dias em que os livros
-- foram emprestados.

DELIMITER $$
CREATE FUNCTION MediaDias(
p_id_livro VARCHAR(255)
)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE Media INT ;
    SELECT  AVG(DATEDIFF(data_devolução, data_emprestimo)) AS 'Media Dias' 
    INTO Media
    FROM tb_emprestimos
    WHERE p_id_livro = id_livroF;
    RETURN Media;
END$$

DELIMITER ;
SELECT MediaDias('1');