-- Inserindo veterinários
INSERT INTO tb_veterinarios (id_veterinario, nome, especialidade, telefone)
VALUES (1, 'Dr. Carlos Mendes', 'Clínico Geral', '11987654321');

INSERT INTO tb_veterinarios (id_veterinario, nome, especialidade, telefone)
VALUES (2, 'Dra. Ana Silva', 'Cirurgia', '11988887777');

INSERT INTO tb_veterinarios (id_veterinario, nome, especialidade, telefone)
VALUES (3, 'Dr. João Pereira', 'Dermatologia', '11999995555');


-- Inserindo clientes
INSERT INTO tb_clientes (id_cliente, nome, endereco, telefone)
VALUES (1, 'Mariana Souza', 'Rua das Flores, 123', '11911112222');

INSERT INTO tb_clientes (id_cliente, nome, endereco, telefone)
VALUES (2, 'Pedro Lima', 'Av. Paulista, 456', '11933334444');

INSERT INTO tb_clientes (id_cliente, nome, endereco, telefone)
VALUES (3, 'Fernanda Costa', 'Rua Azul, 789', '11955556666');


-- Inserindo pets
INSERT INTO tb_pets (id_pet, nome, tipo, raca, data_nascimento, id_clienteF)
VALUES (1, 'Rex', 'Cachorro', 'Golden Retriever', '2020-05-10', 1);

INSERT INTO tb_pets (id_pet, nome, tipo, raca, data_nascimento, id_clienteF)
VALUES (2, 'Mia', 'Gato', 'Persa', '2019-11-20', 2);

INSERT INTO tb_pets (id_pet, nome, tipo, raca, data_nascimento, id_clienteF)
VALUES (3, 'Bob', 'Cachorro', 'Poodle', '2021-03-15', 3);

INSERT INTO tb_pets (id_pet, nome, tipo, raca, data_nascimento, id_clienteF)
VALUES (4, 'Theo', 'Gato', 'Persa', '2015-02-11', 1);

INSERT INTO tb_pets (id_pet, nome, tipo, raca, data_nascimento, id_clienteF)
VALUES (5, 'Platão', 'Cachorro', 'Husky', '2019-04-12', 2);


-- Inserindo atendimentos
INSERT INTO tb_atendimentos (id_atendimento, id_petF, id_veterinarioF, data_atendimento, descricao)
VALUES (1, 1, 1, '2024-08-01', 'Consulta de rotina');

INSERT INTO tb_atendimentos (id_atendimento, id_petF, id_veterinarioF, data_atendimento, descricao)
VALUES (2, 2, 2, '2024-08-05', 'Cirurgia de castração');

INSERT INTO tb_atendimentos (id_atendimento, id_petF, id_veterinarioF, data_atendimento, descricao)
VALUES (3, 3, 3, '2024-08-10', 'Tratamento de alergia');

INSERT INTO tb_atendimentos (id_atendimento, id_petF, id_veterinarioF, data_atendimento, descricao)
VALUES (4, 3, 2, '2024-08-10', 'Cirurgia de Castração');

INSERT INTO tb_atendimentos (id_atendimento, id_petF, id_veterinarioF, data_atendimento, descricao)
VALUES (5, 1, 2, '2024-08-10', 'Cirurgia de Castração');

SELECT * FROM tb_atendimentos;

UPDATE tb_veterinarios SET nome = 'Dr. Américo Silva' WHERE id_veterinario = '1';
UPDATE tb_veterinarios SET nome = 'Dra. Jucilene Santos' WHERE id_veterinario = '2';
UPDATE tb_pets SET raca = 'Siamês' WHERE id_pet = '2';
UPDATE tb_clientes SET nome = 'Maria Clara' WHERE id_cliente = '2';
UPDATE tb_clientes SET nome = 'Pedro Rocha' WHERE id_cliente = '1';
UPDATE tb_atendimentos SET data_atendimento = '2025-08-01' WHERE id_atendimento = '1';
