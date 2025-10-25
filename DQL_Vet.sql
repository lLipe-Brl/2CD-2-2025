USE db_vet;

-- A:
SELECT nome, data_nascimento FROM tb_pets ORDER BY data_nascimento ASC LIMIT 1;
-- B:
SELECT nome, data_nascimento FROM tb_pets ORDER BY data_nascimento DESC LIMIT 1;
-- C:
SELECT COUNT(id_pet) FROM tb_pets;
-- D:
SELECT nome FROM tb_pets ORDER BY nome ASC;
-- E:
SELECT nome FROM tb_pets ORDER BY nome DESC;
-- F:
SELECT nome FROM tb_veterinarios ORDER BY nome ASC;
-- G:
SELECT nome FROM tb_veterinarios ORDER BY nome DESC;
-- H:
SELECT id_atendimento, data_atendimento FROM 
tb_atendimentos ORDER BY data_atendimento ASC LIMIT 1;
-- I:
SELECT id_atendimento, data_atendimento FROM 
tb_atendimentos ORDER BY data_atendimento DESC LIMIT 1;




