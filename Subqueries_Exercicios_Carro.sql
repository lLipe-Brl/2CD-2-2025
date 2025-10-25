-- Proprietários de carros acima da média de preço
-- Liste o nome dos proprietários que possuem carros com valor acima da média
-- de todos os carros.

SELECT nome, modelo FROM tb_proprietario AS P
LEFT JOIN tb_carro AS C
ON P.id_carroF = C.id_carro 
WHERE valor > (SELECT AVG(valor) FROM tb_carro);

-- Carros vendidos mais que a média geral de vendas
-- Liste os modelos de carro cujo numero_vendas seja maior que a média de
-- vendas de todos os carros.

SELECT marca, modelo, numero_vendas FROM tb_carro WHERE numero_Vendas > (SELECT AVG(numero_Vendas) FROM tb_carro);

-- Carros que já tiveram valor acima da média histórica
-- Mostre os carros cujo valor já foi maior que a média de todos os valores
-- registrados no histórico.

select * from tb_historico;

SELECT H.id_carroF, C.marca, C.modelo, H.valor_novo, H.data_modificacao FROM tb_historico AS H
INNER JOIN tb_carro AS C
ON H.id_carroF = C.id_carro 
WHERE valor_novo > (SELECT AVG(valor_novo) FROM tb_historico)
ORDER BY H.valor_novo DESC;

-- Carros sem histórico de alteração de preço
-- Liste os modelos de carros que não aparecem na tabela historico_preco.

SELECT modelo FROM tb_carro
WHERE id_carro NOT IN (SELECT id_carroF FROM tb_historico);

SELECT AVG(valor_novo) FROM tb_historico;







