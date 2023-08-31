-- Criação do banco de dados
CREATE DATABASE db_pizzaria;

-- Utilização do banco de dados
USE db_pizzaria;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (id, nome, descricao)
VALUES
    (1, 'Salgada', 'Pizzas salgadas deliciosas'),
    (2, 'Doce', 'Pizzas doces e saborosas');

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    ingredientes TEXT,
    valor DECIMAL(8, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_pizzas
INSERT INTO tb_pizzas (id, nome, ingredientes, valor, categoria_id)
VALUES
    (1, 'Margherita', 'Molho de tomate, queijo, manjericão', 35.90, 1),
    (2, 'Pepperoni', 'Molho de tomate, queijo, pepperoni', 40.50, 1),
    (3, 'Calabresa', 'Molho de tomate, queijo, calabresa', 38.70, 1),
    (4, 'Chocolate', 'Chocolate, morango, leite condensado', 30.00, 2),
    (5, 'Banana', 'Banana, canela, açúcar', 32.50, 2),
    (6, 'Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 42.00, 1),
    (7, 'Brigadeiro', 'Brigadeiro, granulado', 28.90, 2),
    (8, 'Quatro Queijos', 'Molho de tomate, queijo gorgonzola, parmesão, provolone, muçarela', 45.80, 1);

-- SELECT que retorna pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- SELECT que retorna pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- SELECT utilizando LIKE para buscar pizzas com 'M' no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT utilizando INNER JOIN para unir tb_pizzas com tb_categorias
SELECT p.nome AS pizza, p.valor, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- SELECT utilizando INNER JOIN para unir tb_pizzas com tb_categorias e filtrar por categoria específica
SELECT p.nome AS pizza, p.valor, c.nome AS categoria FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Doce';
