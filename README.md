# 🛒 Projeto de Análise de Dados - E-commerce SQL

Este repositório contém um projeto prático de banco de dados para um cenário de E-commerce. O objetivo é demonstrar habilidades em modelagem de dados (DDL), manipulação de dados (DML) e criação de consultas analíticas complexas (Joins, Agregações e Filtros) para geração de insights de negócios.

## 📊 Estrutura do Banco de Dados
O modelo consiste em 4 tabelas principais:
- **Clientes**: Dados cadastrais e localização.
- **Produtos**: Catálogo de produtos, preços e controle de estoque.
- **Pedidos**: Registro de compras e status do pedido.
- **Itens do Pedido**: Tabela intermediária que armazena os produtos de cada pedido, quantidades e preços praticados no momento da venda.

## 📁 Como Executar o Projeto

1. Certifique-se de ter um gerenciador de banco de dados instalado (MySQL, PostgreSQL, etc.).
2. Execute o arquivo `schema.sql` para criar o banco de dados e a estrutura das tabelas.
3. Execute o arquivo `seeds.sql` para poupar as tabelas com dados fictícios de teste.
4. Abra e execute as consultas contidas em `queries.sql` para visualizar os insights gerados.

## 📈 Principais Insights Respondidos pelas Queries:
- Ranking de clientes que mais geraram faturamento.
- Produtos mais vendidos e receita detalhada por item.
- Performance de vendas consolidada por estado (região).

---
*Projeto desenvolvido para fins de portfólio.*