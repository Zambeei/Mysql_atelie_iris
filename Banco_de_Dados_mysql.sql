
-- ===================================================================================== --
-- Nome do projeto: Ateliê Iris
-- Integrantes: Anna Beatriz F.Zambe -- Mônica A. Evangelista -- Maria Alice T. Silva 
-- Julia S.V. Alves -- Sthefany Vitoria J. da Silva.
-- Data: [07/10/2016]
-- ===================================================================================== --

USE atelie_iris
SHOW TABLES;

-- ===================================================================================== --
-- 1. COUNT --
-- Pergunta: Quantos clientes estão registrados? 
-- Explicação: Contando a quantidade de pessoas existentes na tabela "pessoas"
SELECT COUNT(*) AS quantidade_clientes
From pessoas
-- Resposta: Existem 45 pessoas registradas

-- 2. SUM --
-- Pergunta: Qual é o valor total de vendas do site?
-- Unidade: Reais (R$)
-- Unidade de apoio: Setor financeiro.
-- EXplicação: Dentro da tabela "pedido" o SUM vai calcular o valor de todos as informações da tabela "valor_total"
SELECT SUM(valor_total) AS valor_final_vendas
From pedidos
-- Resultado: O valor total até o momento é R$ 133.208,30

-- 3. AVG --
-- Pergunta: Qual a média de preço dos produtos?
-- Explicação: Dentro da tabela pedidos, pegamos os dados do valor_total, e tiramos a média, de acordo com o valor estimulado nos produtos vendidos.
SELECT AVG(valor_total) AS media_de_preco
FROM pedidos;

-- 4. GROUP BY --
-- Pergunta: Quantos produtos existem em cada categoria?
-- Explicação: Dentro da tabela produto "produto" vamos calcular, a quantidade de vestidos que existem em cada categoria.
-- E depois de separa-los, calculamos a média de custo de cada um.
SELECT categoria, COUNT(*) AS quantidade_modelos, 
AVG(valor) AS preco_medio_categoria
FROM produto
GROUP BY categoria;
-- Resposta: Na tabela Noivas existem 9 modelos, e seu preço médio é R$ 4529,66.
-- Os de Festa existem 12 modelos, e seu preço médio é R$ 1011,53.
-- Os de Debutante existem 9 modelos, e seu preço médio é R$ 2093,00

-- 5. INNER JOIN --
-- Pergunta: Os pedidos são para quais clientes?
-- Explicação: Juntar as chaves. Chave primaria, com a chave estrangeira.
show columns from cliente

SELECT c.cliente_id, p.cliente_id
FROM cliente AS c
INNER JOIN pedidos AS p ON c.cliente_id = p.cliente_id
ORDER BY c.cliente_id

SELECT c.nome AS cliente, p.id AS numero_pedido, p.valor_total
FROM cliente AS c
INNER JOIN pedidos AS p ON c.cliente_id = p.cliente_id
ORDER BY c.cliente_id;