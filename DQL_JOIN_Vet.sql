USE db_vet;

-- INNER JOIN

-- 1 Liste o nome do pet, o nome do cliente e o telefone do cliente para todos
-- os pets cadastrados.
SELECT P.nome AS nome_pet, 
C.nome AS nome_cliente, C.telefone
FROM tb_clientes AS C
INNER JOIN tb_pets AS P 
ON P.id_clienteF = C.id_cliente;

-- 2 Liste a data, a descrição do atendimento, o nome do pet e o nome do
-- veterinário responsável.
SELECT A.data_atendimento, A.descricao, P.nome AS nome_pet,
V.nome AS nome_veterinario
FROM tb_atendimentos AS A
INNER JOIN tb_pets AS P 
ON A.id_petF = P.id_pet
INNER JOIN tb_veterinarios AS V 
ON A.id_veterinarioF = V.id_veterinario;

-- 3 Liste o nome do veterinário e todos os pets que ele já atendeu.
SELECT V.nome AS nome_veterinario, P.nome AS nome_pet
FROM tb_veterinarios AS V
INNER JOIN tb_atendimentos AS A
ON V.id_veterinario = A.id_veterinarioF
INNER JOIN tb_pets AS P
ON A.id_petF = P.id_pet
ORDER BY V.nome, P.nome;

-- 4 Mostre o nome do cliente, o nome do pet e a especialidade do
-- veterinário para cada atendimento realizado.
SELECT C.nome, P.nome AS nome_pet, V.especialidade
FROM tb_atendimentos AS A
INNER JOIN tb_pets AS P
ON A.id_petF = P.id_pet
INNER JOIN tb_clientes AS C
ON P.id_clienteF = C.id_cliente
INNER JOIN tb_veterinarios AS V
ON A.id_veterinarioF = V.id_veterinario;

-- LEFT JOIN

-- 5 Liste todos os clientes e, caso existam, seus respectivos pets (mesmo
-- que não tenham atendimento registrado).
SELECT C.nome AS nome_cliente, P.nome AS nome_pet
FROM tb_clientes AS C
LEFT JOIN tb_pets AS P
ON C.id_cliente = P.id_clienteF
ORDER BY C.nome;

-- 6 Liste todos os veterinários e, caso existam, os atendimentos realizados
-- por eles.
SELECT * FROM tb_veterinarios AS V
LEFT JOIN tb_atendimentos AS A
ON V.id_veterinario = A.id_veterinarioF
ORDER BY V.nome, A.data_atendimento;

-- RIGHT JOIN
-- 7 Liste todos os pets e, caso existam, seus respectivos donos (mesmo que
-- alguns registros de clientes não existam).
SELECT P.nome AS nome_pet, C.nome AS nome_cliente
FROM tb_pets AS P
LEFT JOIN tb_clientes AS C
ON P.id_clienteF = C.id_cliente
ORDER BY P.nome;

-- 8 Liste todos os atendimentos, mesmo que algum veterinário não esteja
-- cadastrado na tabela.
SELECT A.id_atendimento, A.data_atendimento, A.descricao,
V.nome AS nome_veterinario
FROM tb_atendimentos AS A
LEFT JOIN tb_veterinarios AS V
ON A.id_veterinarioF = V.id_veterinario
ORDER BY A.data_atendimento;

-- Treino

-- 1 Mostre o nome do cliente, o nome do pet e o telefone do
-- clinte para todos os pets cadastrados.
SELECT P.nome, C.nome, C.telefone FROM tb_pets AS P
left join tb_clientes AS C
LEFT JOIN P.id_cliente AS C
ON P.id_clienteF = C.id_cliente;

-- 2 
SELECT * FROM tb_clientes AS C 
RIGHT JOIN tb_pets AS P
ON C.id_cliente = P.id_clienteF;

-- 3
SELECT * FROM tb_atendimentos AS A
LEFT JOIN tb_veterinarios AS V
ON A.id_veterinarioF = V.id_veterinario;



















