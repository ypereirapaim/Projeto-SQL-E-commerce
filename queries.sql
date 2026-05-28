USE ecommerce_db;

-- 1. Faturamento Total por Cliente (Apenas pedidos entregues ou processando)
SELECT 
    c.nome AS cliente,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(ip.quantidade * ip.preco_unitario) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
WHERE p.status != 'Cancelado'
GROUP BY c.id_cliente
ORDER BY total_gasto DESC;


-- 2. Produtos Mais Vendidos e Receita Gerada
SELECT 
    prod.nome_produto,
    prod.categoria,
    SUM(ip.quantidade) AS unidades_vendidas,
    SUM(ip.quantidade * ip.preco_unitario) AS receita_total
FROM itens_pedido ip
JOIN produtos prod ON ip.id_produto = prod.id_produto
JOIN pedidos p ON ip.id_pedido = p.id_pedido
WHERE p.status != 'Cancelado'
GROUP BY prod.id_produto
ORDER BY unidades_vendidas DESC;


-- 3. Análise de Vendas por Estado
SELECT 
    c.estado,
    COUNT(DISTINCT p.id_pedido) AS total_pedidos,
    SUM(ip.quantidade * ip.preco_unitario) AS faturamento_estado
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
WHERE p.status != 'Cancelado'
GROUP BY c.estado
ORDER BY faturamento_estado DESC;