USE db_vet;

-- Exercicio 1. Crie uma função que receba o id_cliente e retorne a quantidade de
-- pets que esse cliente possui.

DELIMITER $$
CREATE FUNCTION ContarPets(
    p_id_clienteF INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE TotalPets INT;
    SELECT COUNT(*)
    INTO TotalPets
    FROM tb_pets
    WHERE id_clienteF = p_id_clienteF;
    RETURN TotalPets;
END$$

DELIMITER ;
DROP FUNCTION ContarPets;
SELECT ContarPets(1) AS 'Quantidade de Pets';

-- Exercicio 2. Crie uma função que recebe o id_pet e retorna a data da última
-- consulta do pet.

DELIMITER $$

CREATE FUNCTION UltimaConsulta(
    p_id_petF INT
)
RETURNS DATE
READS SQL DATA
BEGIN
    DECLARE UltimaData DATE;
    SELECT MAX(data_atendimento)
    INTO UltimaData
    FROM tb_atendimentos
    WHERE id_petF = p_id_petF;
    RETURN UltimaData;
END$$
DELIMITER ;
SELECT UltimaConsulta(2) AS 'Ultima Consulta do Pet';

-- Exercicio 3. Crie uma função que receba o id_veterinario e retorne o número total
-- de atendimentos feitos por ele.
DELIMITER $$
CREATE FUNCTION TotalAtendimentos (
p_id_veterinarioF INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE NumTotal INT;
    SELECT COUNT(*)
    INTO NumTotal
    FROM tb_atendimentos
    WHERE id_veterinarioF = p_id_veterinarioF;
    RETURN NumTotal;
END$$
DELIMITER ; 
SELECT TotalAtendimentos(2) AS 'Quantidade de Atendimentos do Veterinario';





