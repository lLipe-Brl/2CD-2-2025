USE db_carro;

SELECT * FROM tb_carro;

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'1',
'Renault',
'Clio',
'2014',
'19000',
'Preto',
'300'
);
INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'6',
'Nissan',
'Versa',
'2011',
'19000',
'Preto',
'300'
);

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'2',
'Nissan',
'Sentra',
'2012',
'30000',
'Preto',
'450'
);

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'3',
'Chevrolet',
'Celta',
'2012',
'19000',
'Prata',
'300'
);

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'4',
'Toyota',
'Corolla',
'2008',
'19000',
'Branco',
'13'
);

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'5',
'Fiat',
'500',
'2015',
'50000',
'vermelho',
'30'
);
INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor , numero_Vendas) VALUES (
'6',
'Fiat',
'Argo',
'2020',
'60000',
'Prata',
'90'
);

INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'1',
'Matheus Archanjo',
'1',
'18'
);

INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'2',
'Filipe',
'2',
'30'
);
INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'3',
'Marcelo',
'3',
'24'
);
INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'4',
'Felipe Madruguinha',
'4',
'18'
);
INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'5',
'Andrey Ouclock Kamily',
'5',
'18'
);
INSERT INTO tb_proprietario (id_proprietario, nome, id_carroF, idade) VALUES(
'6',
'Guilherme',
'6',
'30'
);

SELECT * FROM tb_proprietario;
/* ALTERAÇÃO - UPDATE*/
UPDATE tb_carro SET cor = 'Vermelho' WHERE id_carro = '5';
DELETE FROM tb_carro WHERE id_carro = '6';

