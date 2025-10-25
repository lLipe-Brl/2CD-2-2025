USE db_vet;

-- 1. Pet mais velho:
-- Liste o nome e a data de nascimento do pet mais antigo da clínica
-- usando uma subquery.
SELECT nome, YEAR (data_nascimento) AS Ano_nasimento FROM tb_pets
WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM tb_pets);

-- 2. Pet mais novo:
-- Liste o nome e a data de nascimento do pet mais novo usando uma
-- subquery.
SELECT nome, data_nascimento FROM tb_pets
WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM tb_pets);

-- 3. Veterinários do último atendimento:
-- Liste o nome de todos os veterinários que realizaram atendimentos na
-- data mais recente registrada.
SELECT DISTINCT V.nome AS nome_veterinario FROM tb_veterinarios AS V
INNER JOIN tb_atendimentos AS A
ON V.id_veterinario = A.id_veterinarioF
WHERE A.data_atendimento = (
SELECT MAX(data_atendimento) FROM tb_atendimentos);

-- 4. Clientes com mais de um pet:
-- Liste os nomes dos clientes que possuem mais de um pet, utilizando
-- uma subquery para contar a quantidade.
SELECT nome FROM tb_clientes
WHERE id_cliente IN (SELECT id_clienteF FROM tb_pets
GROUP BY id_clienteF
HAVING COUNT(*) > 1);

-- 5. Pets nunca atendidos:
-- Liste o nome de todos os pets que ainda não passaram por atendimento,
-- utilizando uma subquery para verificar.
SELECT nome FROM tb_pets
WHERE id_pet NOT IN (SELECT id_petF FROM tb_atendimentos);

-- 6. Quantidade de pets por cliente:
-- Para cada cliente, mostre o nome e a quantidade de pets cadastrados,
-- utilizando uma subquery no SELECT.
SELECT nome, (SELECT COUNT(*)FROM tb_pets WHERE tb_pets.id_clienteF = 
tb_clientes.id_cliente) 
AS 'Quantidade de Pets' FROM tb_clientes;

-- 7. Último veterinário cadastrado:
-- Liste todos os atendimentos realizados pelo veterinário mais
-- recentemente cadastrado no sistema.
SELECT * FROM tb_atendimentos
WHERE id_veterinarioF = (SELECT MAX(id_veterinario)
FROM tb_veterinarios);

-- 8. Atendimento mais antigo – dados completos:
-- Liste todas as informações do atendimento mais antigo registrado,
-- usando uma subquery para identificar a data.
SELECT * FROM tb_atendimentos
WHERE id_veterinarioF = (SELECT MIN(id_veterinario)
FROM tb_veterinarios);

-- 9. Clientes que já foram atendidos por mais de um veterinário
-- diferente:
-- Liste os nomes dos clientes que já tiveram atendimentos com pelo
-- menos dois veterinários distintos, usando subquery.
SELECT nome FROM tb_clientes
WHERE id_cliente IN (SELECT P.id_clienteF FROM tb_pets AS P
INNER JOIN tb_atendimentos AS A
ON P.id_pet = A.id_petF GROUP BY P.id_clienteF
HAVING COUNT(DISTINCT A.id_veterinarioF) > 1
);

-- 10. Pets atendidos pelo veterinário mais solicitado:
-- Liste os nomes dos pets que foram atendidos pelo veterinário que mais
-- realizou atendimentos na clínica, usando subquery para identificar esse
-- veterinário.
SELECT DISTINCT P.nome AS nome_pet
FROM tb_pets P JOIN tb_atendimentos A ON P.id_pet = A.id_petF
WHERE A.id_veterinarioF = (SELECT id_veterinarioF
FROM tb_atendimentos GROUP BY id_veterinarioF
ORDER BY COUNT(*) DESC LIMIT 1);
































