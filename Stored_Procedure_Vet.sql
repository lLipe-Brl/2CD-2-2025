USE db_vet;

-- EXERCICIO 1. Crie uma stored procedure que adicione um novo veterinário na tabela
-- Veterinarios.

DELIMITER $$

CREATE PROCEDURE InserirVeterinario (
IN p_id_veterinario INT,
IN p_nome VARCHAR(100),
IN p_especialidade VARCHAR(255),
IN p_telefone VARCHAR(50)
)
BEGIN
	INSERT INTO tb_veterinarios (id_veterinario, nome, especialidade, telefone)
    VALUES (p_id_veterinario, p_nome, p_especialidade, p_telefone);
END $$

DELIMITER ;
select * from tb_veterinarios;
CALL InserirVeterinario('5', 'Flenderson', 'Oftalmologia', '11932320595');

-- EXERCICIO 2. Crie uma stored procedure para atualizar os dados de um cliente,
-- como nome, endereço e telefone.

DELIMITER $$

CREATE PROCEDURE AtualizarCliente(
    IN p_id_cliente INT,
    IN p_nome VARCHAR(100),
    IN p_endereco VARCHAR(255),
    IN p_telefone VARCHAR(50)
)
BEGIN
    UPDATE tb_clientes
    SET nome = p_nome, endereco = p_endereco, telefone = p_telefone
    WHERE id_cliente = p_id_cliente;
END $$

DELIMITER ;

CALL AtualizarCliente(1, 'Roberto', 'Rua dos Tchurusbangos Tchurusbagos', '11993085640');

select * from tb_clientes;

-- EXERCICIO 3. Crie uma stored procedure que registre um novo atendimento de um
-- pet, verificando se o veterinário e o pet existem.

DELIMITER $$

CREATE PROCEDURE RegistrarAtendimento(
    IN p_id_pet INT,
    IN p_id_veterinario INT,
    IN p_data_atendimento DATE,
    IN p_descricao VARCHAR(255)
)
BEGIN
    -- Verifica se o pet E o veterinário existem em uma única condição
    IF EXISTS (SELECT 1 FROM tb_pets WHERE id_pet = p_id_pet) AND
       EXISTS (SELECT 1 FROM tb_veterinarios WHERE id_veterinario = p_id_veterinario)
    THEN
        -- Se ambos existirem, insere o novo atendimento
        INSERT INTO tb_atendimentos (id_petF, id_veterinarioF, data_atendimento, descricao)
        VALUES (p_id_pet, p_id_veterinario, p_data_atendimento, p_descricao);
        
        SELECT 'Atendimento registrado com sucesso.' AS resultado;
    ELSE
        -- Se um deles (ou ambos) não existir, retorna uma mensagem de erro
        SELECT 'Erro: Pet ou veterinário não encontrado. O atendimento não foi registrado.' AS resultado;
    END IF;
END $$

DELIMITER ;

CALL RegistrarAtendimento(1, 2, '2025-09-20', 'Aplicação de vacina anual');