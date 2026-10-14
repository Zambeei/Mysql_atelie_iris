USE atelie_iris;

-- =================================================================================
-- Grupo: Iris
-- Data: 14/10/2026
-- Participantes: Anna Beatriz F.Zambe, Sthefany Vitoria J. da Silva, 
-- Julia Santos, Mônica Alves Evangelista, Maria Alice Teixeira Silva
-- Tabela Principal: cliente - ( Armazena os dados dos clientes )
-- Tabela Relaciomnada: pedido - ( Armazena os pedidos feitos pelos clientes)
-- Chave Primária (PK): cliente.cliente_id
-- Chave Estrangeira (FK): pedido.cliente_id
-- Pergunta: Existe algum cliente registrado que não tenha feito nenhum pedido?
-- Registro sem correspondente: cliente, pois pode haver clientes cadastrados que ainda não fizeram pedidos.

SHOW TABLES
SHOW COLUMNS FROM pedidos
SHOW COLUMNS FROM cliente

-- 1. INNER JOIN: Mostra apenas os clientes que possuem pedidos realizados
SELECT c.cliente_id, c.nome AS nome_cliente, p.id AS pedido_id,
p.valor_total AS valor_pedido
FROM cliente AS c
INNER JOIN pedidos AS p ON c.cliente_id = p.cliente_id;
-- Apenas clientes que já tem algum pedido aparecem

INSERT INTO cliente (cliente_id, nome, email, telefone, cpf)
VALUES
 (46, 'Sthefany Jesus', 'sthefany.vi@email.com', '(11) 98345-1223', '12345678946');
 
 -- LEFT JOIN: mantem todos os clientes mesmo sem pedidos
SELECT c.cliente_id, c.nome AS nome_cliente, p.id AS pedido_id,
p.valor_total AS valor_pedido
FROM cliente AS c
LEFT JOIN pedidos AS p ON c.cliente_id = p.cliente_id;
-- Aparece todos os clientes sem excessão.


-- Right join: 
SELECT c.cliente_id, c.nome AS nome_cliente, p.id AS pedido_id,
p.valor_total AS valor_pedido
FROM pedidos AS p
RIGHT JOIN cliente AS c
ON c.cliente_id = p.cliente_id;
-- Ele garante que todas as informações ta tabela apareçam.

-- 4 Encontrar clientes sem pedidos
SELECT c.cliente_id, c.nome AS nome_cliente, c.email
FROM cliente AS c
LEFT JOIN pedidos AS p
ON c.cliente_id = p.cliente_id
WHERE p.id IS NULL;
-- Filtrar a tabela e mostrar apenas os clientes que não fizeram pedidos.

-- 1- Onde essa informação seria útil no sistema do grupo? 
-- -- Para descobrir quais clientes não efetuaram nenhuma compra para enviar cupons exclusivos.
-- 2- O que o usuário entenderia ao ver um registro sem correspondência?
-- -- Que existe um usuario cadastrado, porém sem nenhum pedido vinculado.
-- 3- Qual das consultas vocês usariam para atender a essa necessidade?
-- -- A consulta 4, para facilitar a distribuição de descontos e vizualização da quantidade de clientes ativos.
