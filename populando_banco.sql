-- Criação da tabela
CREATE TABLE IF NOT EXISTS pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    cidade VARCHAR(50) NOT NULL
);

-- Inserção dos 45 registros
INSERT INTO pessoas (nome, email, data_nascimento, cidade) VALUES
('Ana Silva', 'ana.silva@email.com', '1990-05-12', 'São Paulo'),
('Bruno Santos', 'bruno.santos@email.com', '1985-10-23', 'Rio de Janeiro'),
('Carla Oliveira', 'carla.oliveira@email.com', '1992-03-15', 'Belo Horizonte'),
('Daniel Souza', 'daniel.souza@email.com', '1988-12-01', 'Curitiba'),
('Eduarda Lima', 'eduarda.lima@email.com', '1995-07-19', 'Porto Alegre'),
('Felipe Costa', 'felipe.costa@email.com', '1991-01-30', 'Salvador'),
('Gabriela Pereira', 'gabriela.pereira@email.com', '1993-09-08', 'Recife'),
('Henrique Rodrigues', 'henrique.rodrigues@email.com', '1987-04-14', 'Fortaleza'),
('Isabela Almeida', 'isabela.almeida@email.com', '1996-11-25', 'Brasília'),
('João Alves', 'joao.alves@email.com', '1982-06-03', 'Goiânia'),
('Karen Ribeiro', 'karen.ribeiro@email.com', '1994-08-17', 'Manaus'),
('Lucas Ferreira', 'lucas.ferreira@email.com', '1989-02-28', 'Belém'),
('Mariana Gomes', 'mariana.gomes@email.com', '1997-10-05', 'Florianópolis'),
('Nicolas Martins', 'nicolas.martins@email.com', '1990-12-11', 'Campinas'),
('Olívia Carvalho', 'olivia.carvalho@email.com', '1986-05-20', 'Vitória'),
('Paulo Rocha', 'paulo.rocha@email.com', '1984-07-04', 'Natal'),
('Quintino Barbosa', 'quintino.barbosa@email.com', '1979-09-14', 'Maceió'),
('Rafaela Ribeiro', 'rafaela.ribeiro@email.com', '1998-01-22', 'João Pessoa'),
('Samuel Araujo', 'samuel.araujo@email.com', '1991-03-09', 'São Luís'),
('Tatiane Melo', 'tatiane.melo@email.com', '1993-06-18', 'Teresina'),
('Ulysses Cardoso', 'ulysses.cardoso@email.com', '1983-11-02', 'Aracaju'),
('Vanessa Correia', 'vanessa.correia@email.com', '1995-04-27', 'Campo Grande'),
('Wagner Teixeira', 'wagner.teixeira@email.com', '1987-08-13', 'Cuiabá'),
('Xavier Freitas', 'xavier.freitas@email.com', '1980-02-10', 'Porto Velho'),
('Yasmin Machado', 'yasmin.machado@email.com', '1999-12-07', 'Macapá'),
('Zack Dias', 'zack.dias@email.com', '1992-10-31', 'Boa Vista'),
('Alice Ramos', 'alice.ramos@email.com', '1994-05-04', 'Rio Branco'),
('Bernardo Castro', 'bernardo.castro@email.com', '1988-09-29', 'Palmas'),
('Camila Duarte', 'camila.duarte@email.com', '1996-07-11', 'São Paulo'),
('Diego Monteiro', 'diego.monteiro@email.com', '1990-03-24', 'Rio de Janeiro'),
('Elisa Mendes', 'elisa.mendes@email.com', '1991-11-15', 'Belo Horizonte'),
('Fernando Nunes', 'fernando.nunes@email.com', '1985-01-08', 'Curitiba'),
('Giulia Peixoto', 'giulia.peixoto@email.com', '1997-04-02', 'Porto Alegre'),
('Heitor Farias', 'heitor.farias@email.com', '1989-08-21', 'Salvador'),
('Iara Nogueira', 'iara.nogueira@email.com', '1993-12-30', 'Recife'),
('Jorge Fonseca', 'jorge.fonseca@email.com', '1982-02-17', 'Fortaleza'),
('Lara Vieira', 'lara.vieira@email.com', '1995-06-25', 'Brasília'),
('Matheus Borges', 'matheus.borges@email.com', '1990-10-10', 'Goiânia'),
('Natalia Campos', 'natalia.campos@email.com', '1987-03-05', 'Manaus'),
('Otávio Guimarães', 'otavio.guimaraes@email.com', '1984-09-12', 'Belém'),
('Patrícia Moura', 'patricia.moura@email.com', '1998-05-18', 'Florianópolis'),
('Renan Cavalcanti', 'renan.cavalcanti@email.com', '1992-07-22', 'Campinas'),
('Sabrina Figueiredo', 'sabrina.figueiredo@email.com', '1994-01-14', 'Vitória'),
('Thiago Barros', 'thiago.barros@email.com', '1986-11-09', 'Natal'),
('Vinícius Moreira', 'vinicius.moreira@email.com', '1991-08-06', 'Maceió');

-- --------------------------------------------------------------------------------- -- 

-- Inserção dos 45 pedidos com os valores atualizados conforme o catálogo de produtos
INSERT INTO pedidos (pessoa_id, data_pedido, status, valor_total) VALUES
(1, '2026-09-01 10:30:00', 'Entregue', 5400.00),         -- Vestido Sereia Zibeline
(2, '2026-09-01 11:15:00', 'Entregue', 3900.00),         -- Vestido Sereia Renda
(3, '2026-09-02 09:00:00', 'Cancelado', 2299.00),        -- Vestido Sereia Tule
(4, '2026-09-02 14:20:00', 'Entregue', 7390.00),         -- Vestido Princesa Organza Marfim
(5, '2026-09-03 16:45:00', 'Entregue', 2490.00),         -- Vestido Azul Princesa Encantada
(6, '2026-09-03 18:10:00', 'Pendente', 589.00),          -- Vestido Moderno Azul Royal
(7, '2026-09-04 08:30:00', 'Entregue', 8290.00),         -- Vestido Princesa Zibeline Marfim
(8, '2026-09-04 13:00:00', 'Em Processamento', 389.00),  -- Vestido Midi Preto com Cauda
(9, '2026-09-05 10:05:00', 'Entregue', 6199.00),         -- Vestido Princesa Renda
(10, '2026-09-05 15:40:00', 'Entregue', 679.90),         -- Vestido Esmeralda Verde Musgo
(11, '2026-09-06 11:50:00', 'Cancelado', 1890.00),       -- Vestido Debutante Rosé
(12, '2026-09-06 17:25:00', 'Entregue', 1990.00),        -- Vestido Roxo Glamour Organza
(13, '2026-09-07 09:15:00', 'Entregue', 8290.00),        -- Vestido Princesa Zibeline Marfim
(14, '2026-09-07 12:00:00', 'Pendente', 390.90),         -- Vestido Midi Musgo
(15, '2026-09-08 14:35:00', 'Entregue', 1899.00),        -- Vestido Sereia Rosa Organza
(16, '2026-09-08 16:10:00', 'Em Processamento', 540.90), -- Vestido Midi Sereia
(17, '2026-09-09 10:00:00', 'Entregue', 799.90),         -- Vestido Rubi Vermelho
(18, '2026-09-09 13:45:00', 'Entregue', 749.90),         -- Vestido Ametista Roxo Brilhante
(19, '2026-09-10 11:20:00', 'Entregue', 389.00),         -- Vestido Midi Preto com Cauda
(20, '2026-09-10 18:00:00', 'Cancelado', 2190.00),       -- Vestido Princesa Azul
(21, '2026-09-11 08:50:00', 'Entregue', 7390.00),        -- Vestido Princesa Organza Marfim
(22, '2026-09-11 15:15:00', 'Entregue', 729.90),         -- Vestido Esmeralda Verde
(23, '2026-09-12 10:40:00', 'Pendente', 1999.00),        -- Vestido Sereia Lavanda
(24, '2026-09-12 14:05:00', 'Entregue', 1890.00),        -- Vestido Azul Celeste
(25, '2026-09-13 16:30:00', 'Em Processamento', 390.90), -- Vestido Midi Musgo
(26, '2026-09-13 19:10:00', 'Entregue', 2190.00),        -- Vestido Princesa Rosé
(27, '2026-09-14 09:25:00', 'Entregue', 890.00),         -- Vestido Longo Azul
(28, '2026-09-14 11:00:00', 'Entregue', 1799.00),        -- Vestido Evasé Bordô
(29, '2026-09-15 13:50:00', 'Cancelado', 1890.00),       -- Vestido Debutante Rosé
(30, '2026-09-15 17:15:00', 'Entregue', 8290.00),        -- Vestido Princesa Zibeline Marfim
(31, '2026-09-16 10:10:00', 'Entregue', 589.00),         -- Vestido Moderno Azul Royal
(32, '2026-09-16 12:40:00', 'Pendente', 2190.00),        -- Vestido Princesa Azul
(33, '2026-09-17 14:20:00', 'Entregue', 2490.00),        -- Vestido Azul Princesa Encantada
(34, '2026-09-17 18:05:00', 'Em Processamento', 389.00),  -- Vestido Midi Preto com Cauda
(35, '2026-09-18 09:00:00', 'Entregue', 1890.00),        -- Vestido Azul Celeste
(36, '2026-09-18 11:30:00', 'Entregue', 799.90),         -- Vestido Rubi Vermelho
(37, '2026-09-19 15:00:00', 'Entregue', 6199.00),        -- Vestido Princesa Renda
(38, '2026-09-19 16:45:00', 'Cancelado', 589.00),        -- Vestido Moderno Azul Royal
(39, '2026-09-20 10:15:00', 'Entregue', 1990.00),        -- Vestido Roxo Glamour Organza
(40, '2026-09-20 13:20:00', 'Pendente', 540.90),         -- Vestido Midi Sereia
(41, '2026-09-21 08:40:00', 'Entregue', 5400.00),        -- Vestido Sereia Zibeline
(42, '2026-09-21 14:55:00', 'Entregue', 679.90),         -- Vestido Esmeralda Verde Musgo
(43, '2026-09-22 11:10:00', 'Em Processamento', 390.90), -- Vestido Midi Musgo
(44, '2026-09-22 17:30:00', 'Entregue', 890.00),         -- Vestido Longo Azul
(45, '2026-09-23 10:00:00', 'Entregue', 3900.00);        -- Vestido Sereia Renda

-- ---------------------------------------------
-- =========================================

INSERT INTO produto (modelo, categoria, cor, tecido, valor) VALUES
-- VESTIDOS DE NOIVA
('Vestido Sereia Zibeline', 'Noiva', 'Branco-Marfim', 'Zibeline', 5400.00),
('Vestido Sereia Renda', 'Noiva', 'Branco', 'Renda', 3900.00),
('Vestido Sereia Tule', 'Noiva', 'Branco-Marfim', 'Tule', 2299.00),
('Vestido Sereia Chiffon Marfim', 'Noiva', 'Branco-Marfim', 'Chiffon', 3390.00),
('Vestido Sereia Crepe Marfim', 'Noiva', 'Branco-Marfim', 'Crepe', 1900.00),
('Vestido Sereia Organza', 'Noiva', 'Branco-Marfim', 'Organza', 1999.00),
('Vestido Princesa Organza Marfim', 'Noiva', 'Branco-Marfim', 'Organza', 7390.00),
('Vestido Princesa Zibeline Marfim', 'Noiva', 'Branco-Marfim', 'Zibeline', 8290.00),
('Vestido Princesa Renda', 'Noiva', 'Branco-Marfim', 'Renda', 6199.00),

-- VESTIDOS DE FESTA
('Vestido Azul Princesa Encantada', 'Festa', 'Azul', 'Organza', 2490.00),
('Vestido Roxo Glamour Organza', 'Festa', 'Roxo', 'Organza', 1990.00),
('Vestido Sereia Rosa Organza', 'Festa', 'Rosa Pink', 'Organza', 1899.00),
('Vestido Moderno Azul Royal', 'Festa', 'Azul Royal', 'Crepe', 589.00),
('Vestido Esmeralda Verde Musgo', 'Festa', 'Verde Musgo', 'Crepe', 679.90),
('Vestido Rubi Vermelho', 'Festa', 'Vermelho', 'Crepe', 799.90),
('Vestido Ametista Roxo Brilhante', 'Festa', 'Roxo', 'Renda', 749.90),
('Vestido Longo Azul', 'Festa', 'Azul Escuro', 'Renda', 890.00),
('Vestido Esmeralda Verde', 'Festa', 'Verde', 'Renda', 729.90),
('Vestido Midi Preto com Cauda', 'Festa', 'Preto', 'Scuba Crepe', 389.00),
('Vestido Midi Sereia', 'Festa', 'Amarelo Claro', 'Crepe', 540.90),
('Vestido Midi Musgo', 'Festa', 'Verde Oliva', 'Crepe', 390.90),

-- VESTIDOS DE DEBUTANTE
('Vestido Debutante Rosé', 'Debutante', 'Rosé', 'Tule', 1890.00),
('Vestido Princesa Azul', 'Debutante', 'Azul', 'Tule', 2190.00),
('Vestido Sereia Lavanda', 'Debutante', 'Lavanda', 'Tule', 1999.00),
('Vestido Azul Celeste', 'Debutante', 'Azul Celeste', 'Cetim', 1890.00),
('Vestido Princesa Rosé', 'Debutante', 'Rosé', 'Cetim', 2190.00),
('Vestido Evasé Bordô', 'Debutante', 'Bordô', 'Cetim', 1799.00),
('Vestido Princesa Azul Renda', 'Debutante', 'Azul', 'Renda', 2390.00),
('Vestido Sereia Lilás', 'Debutante', 'Lilás', 'Renda', 2290.00),
('Vestido Evasé Verde-Sálvia', 'Debutante', 'Verde-Sálvia', 'Renda', 2199.00);

-- -----------------------------------------------------------------------------------
INSERT INTO cliente (cliente_id, nome, email, telefone, cpf) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', '(11) 98765-4321', '12345678901'),
(2, 'Beatriz Souza', 'beatriz.souza@email.com', '(11) 98765-4322', '12345678902'),
(3, 'Camila Oliveira', 'camila.oliveira@email.com', '(11) 98765-4323', '12345678903'),
(4, 'Daniela Santos', 'daniela.santos@email.com', '(11) 98765-4324', '12345678904'),
(5, 'Eduarda Lima', 'eduarda.lima@email.com', '(11) 98765-4325', '12345678905'),
(6, 'Fernanda Costa', 'fernanda.costa@email.com', '(11) 98765-4326', '12345678906'),
(7, 'Gabriela Pereira', 'gabriela.pereira@email.com', '(11) 98765-4327', '12345678907'),
(8, 'Helena Rodrigues', 'helena.rodrigues@email.com', '(11) 98765-4328', '12345678908'),
(9, 'Isabela Almeida', 'isabela.almeida@email.com', '(11) 98765-4329', '12345678909'),
(10, 'Juliana Nascimento', 'juliana.nascimento@email.com', '(11) 98765-4330', '12345678910'),
(11, 'Larissa Alves', 'larissa.alves@email.com', '(11) 98765-4331', '12345678911'),
(12, 'Mariana Carvalho', 'mariana.carvalho@email.com', '(11) 98765-4332', '12345678912'),
(13, 'Natalia Gomes', 'natalia.gomes@email.com', '(11) 98765-4333', '12345678913'),
(14, 'Olivia Martins', 'olivia.martins@email.com', '(11) 98765-4334', '12345678914'),
(15, 'Patricia Ribeiro', 'patricia.ribeiro@email.com', '(11) 98765-4335', '12345678915'),
(16, 'Amanda Rocha', 'amanda.rocha@email.com', '(11) 98765-4336', '12345678916'),
(17, 'Barbara Mendes', 'barbara.mendes@email.com', '(11) 98765-4337', '12345678917'),
(18, 'Carolina Freitas', 'carolina.freitas@email.com', '(11) 98765-4338', '12345678918'),
(19, 'Debora Barbieri', 'debora.barbieri@email.com', '(11) 98765-4339', '12345678919'),
(20, 'Elisa Fernandes', 'elisa.fernandes@email.com', '(11) 98765-4340', '12345678920'),
(21, 'Fabiana Cardoso', 'fabiana.cardoso@email.com', '(11) 98765-4341', '12345678921'),
(22, 'Giovanna Ramos', 'giovanna.ramos@email.com', '(11) 98765-4342', '12345678922'),
(23, 'Isadora Teixeira', 'isadora.teixeira@email.com', '(11) 98765-4343', '12345678923'),
(24, 'Jessica Moreno', 'jessica.moreno@email.com', '(11) 98765-4344', '12345678924'),
(25, 'Katia Nogueira', 'katia.nogueira@email.com', '(11) 98765-4345', '12345678925'),
(26, 'Leticia Duarte', 'leticia.duarte@email.com', '(11) 98765-4346', '12345678926'),
(27, 'Luana Machado', 'luana.machado@email.com', '(11) 98765-4347', '12345678927'),
(28, 'Manuela Castro', 'manuela.castro@email.com', '(11) 98765-4348', '12345678928'),
(29, 'Nicole Pires', 'nicole.pires@email.com', '(11) 98765-4349', '12345678929'),
(30, 'Priscila Farias', 'priscila.farias@email.com', '(11) 98765-4350', '12345678930'),
(31, 'Raquel Barros', 'raquel.barros@email.com', '(11) 98765-4351', '12345678931'),
(32, 'Renata Miranda', 'renata.miranda@email.com', '(11) 98765-4352', '12345678932'),
(33, 'Sabrina Nunes', 'sabrina.nunes@email.com', '(11) 98765-4353', '12345678933'),
(34, 'Tatiane Soares', 'tatiane.soares@email.com', '(11) 98765-4354', '12345678934'),
(35, 'Vanessa Mota', 'vanessa.mota@email.com', '(11) 98765-4355', '12345678935'),
(36, 'Yasmin Vieira', 'yasmin.vieira@email.com', '(11) 98765-4356', '12345678936'),
(37, 'Alice Monteiro', 'alice.monteiro@email.com', '(11) 98765-4357', '12345678937'),
(38, 'Bianca Araujo', 'bianca.araujo@email.com', '(11) 98765-4358', '12345678938'),
(39, 'Clarice Dias', 'clarice.dias@email.com', '(11) 98765-4359', '12345678939'),
(40, 'Dara Marques', 'dara.marques@email.com', '(11) 98765-4360', '12345678940'),
(41, 'Evelyn Correia', 'evelyn.correia@email.com', '(11) 98765-4361', '12345678941'),
(42, 'Flavia Lopes', 'flavia.lopes@email.com', '(11) 98765-4362', '12345678942'),
(43, 'Geovanna Fonseca', 'geovanna.fonseca@email.com', '(11) 98765-4363', '12345678943'),
(44, 'Ingrid Siqueira', 'ingrid.siqueira@email.com', '(11) 98765-4364', '12345678944'),
(45, 'Joana Batista', 'joana.batista@email.com', '(11) 98765-4365', '12345678945');

-- ---------------------------------------------------

INSERT INTO pagamento (statusPG, formaPG, data_pagamento, valor_total) VALUES
('Aprovado', 'Cartão de Crédito', '2026-09-01', 5400.00),
('Aprovado', 'PIX', '2026-09-01', 3900.00),
('Cancelado', 'Cartão de Crédito', '2026-09-02', 2299.00),
('Aprovado', 'Transferência', '2026-09-02', 7390.00),
('Aprovado', 'PIX', '2026-09-03', 2490.00),
('Pendente', 'Boleto', '2026-09-03', 589.00),
('Aprovado', 'Cartão de Crédito', '2026-09-04', 8290.00),
('Processando', 'PIX', '2026-09-04', 389.00),
('Aprovado', 'Cartão de Crédito', '2026-09-05', 6199.00),
('Aprovado', 'PIX', '2026-09-05', 679.90),
('Cancelado', 'Boleto', '2026-09-06', 1890.00),
('Aprovado', 'Cartão de Crédito', '2026-09-06', 1990.00),
('Aprovado', 'Transferência', '2026-09-07', 8290.00),
('Pendente', 'Boleto', '2026-09-07', 390.90),
('Aprovado', 'PIX', '2026-09-08', 1899.00),
('Processando', 'Cartão de Crédito', '2026-09-08', 540.90),
('Aprovado', 'PIX', '2026-09-09', 799.90),
('Aprovado', 'Cartão de Crédito', '2026-09-09', 749.90),
('Aprovado', 'PIX', '2026-09-10', 389.00),
('Cancelado', 'Cartão de Crédito', '2026-09-10', 2190.00),
('Aprovado', 'Transferência', '2026-09-11', 7390.00),
('Aprovado', 'PIX', '2026-09-11', 729.90),
('Pendente', 'Boleto', '2026-09-12', 1999.00),
('Aprovado', 'Cartão de Crédito', '2026-09-12', 1890.00),
('Processando', 'PIX', '2026-09-13', 390.90),
('Aprovado', 'Cartão de Crédito', '2026-09-13', 2190.00),
('Aprovado', 'PIX', '2026-09-14', 890.00),
('Aprovado', 'Transferência', '2026-09-14', 1799.00),
('Cancelado', 'Boleto', '2026-09-15', 1890.00),
('Aprovado', 'Cartão de Crédito', '2026-09-15', 8290.00),
('Aprovado', 'PIX', '2026-09-16', 589.00),
('Pendente', 'Boleto', '2026-09-16', 2190.00),
('Aprovado', 'Cartão de Crédito', '2026-09-17', 2490.00),
('Processando', 'PIX', '2026-09-17', 389.00),
('Aprovado', 'PIX', '2026-09-18', 1890.00),
('Aprovado', 'Cartão de Crédito', '2026-09-18', 799.90),
('Aprovado', 'Transferência', '2026-09-19', 6199.00),
('Cancelado', 'Boleto', '2026-09-19', 589.00),
('Aprovado', 'Cartão de Crédito', '2026-09-20', 1990.00),
('Pendente', 'PIX', '2026-09-20', 540.90),
('Aprovado', 'Cartão de Crédito', '2026-09-21', 5400.00),
('Aprovado', 'PIX', '2026-09-21', 679.90),
('Processando', 'Boleto', '2026-09-22', 390.90),
('Aprovado', 'Cartão de Crédito', '2026-09-22', 890.00),
('Aprovado', 'PIX', '2026-09-23', 3900.00);