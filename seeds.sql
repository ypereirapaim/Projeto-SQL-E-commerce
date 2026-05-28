USE ecommerce_db;

-- Inserindo Clientes
INSERT INTO clientes (nome, email, data_cadastro, cidade, estado) VALUES
('Ana Silva', 'ana.silva@email.com', '2025-01-15', 'São Paulo', 'SP'),
('Bruno Costa', 'bruno.costa@email.com', '2025-02-20', 'Rio de Janeiro', 'RJ'),
('Carlos Souza', 'carlos.souza@email.com', '2025-03-10', 'Belo Horizonte', 'MG'),
('Diana Oliveira', 'diana.o@email.com', '2025-04-05', 'São Paulo', 'SP');

-- Inserindo Produtos
INSERT INTO produtos (nome_produto, categoria, preco, estoque) VALUES
('Smartphone X', 'Eletrônicos', 2500.00, 50),
('Notebook Pro', 'Eletrônicos', 4500.00, 20),
('Cadeira Gamer', 'Móveis', 1200.00, 15),
('Fone de Ouvido Bluetooth', 'Acessórios', 300.00, 100);

-- Inserindo Pedidos
INSERT INTO pedidos (id_cliente, data_pedido, status) VALUES
(1, '2026-01-10', 'Entregue'),
(2, '2026-01-12', 'Entregue'),
(3, '2026-01-15', 'Cancelado'),
(1, '2026-02-01', 'Processando'),
(4, '2026-02-15', 'Entregue');

-- Inserindo Itens dos Pedidos
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 2500.00), -- Ana comprou Smartphone
(1, 4, 2, 300.00),  -- Ana comprou 2 Fones
(2, 2, 1, 4500.00), -- Bruno comprou Notebook
(3, 3, 1, 1200.00), -- Carlos comprou Cadeira (Cancelado)
(4, 4, 1, 300.00),  -- Ana comprou outro Fone
(5, 3, 1, 1200.00); -- Diana comprou Cadeira