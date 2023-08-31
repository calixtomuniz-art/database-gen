-- Criação do banco de dados
CREATE DATABASE db_ecommerce;

-- Utilização do banco de dados
USE db_ecommerce;

-- Criação da tabela dos produtos
CREATE TABLE Produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT
);

-- Inserção de registros na tabela de produtos
INSERT INTO Produtos (id, nome, descricao, preco, estoque)
VALUES
    (1, 'Sapatos de Couro', 'Sapatos elegantes feitos de couro genuíno.', 149.99, 50),
    (2, 'Bolsa de Designer', 'Bolsa de alta qualidade com design exclusivo.', 299.99, 30),
    (3, 'Relógio de Luxo', 'Relógio sofisticado com mecanismo automático.', 599.99, 100),
    (4, 'Vestido de Festa', 'Vestido elegante perfeito para ocasiões especiais.', 199.99, 20),
    (5, 'Óculos de Sol Premium', 'Óculos de sol com proteção UV e estilo moderno.', 129.99, 15),
    (6, 'Camisa Social Slim', 'Camisa social ajustada para um visual profissional.', 69.99, 40),
    (7, 'Calça Jeans Premium', 'Calça jeans de alta qualidade com corte moderno.', 89.99, 25),
    (8, 'Jaqueta de Couro', 'Jaqueta de couro resistente e com design moderno.', 179.99, 10);

-- SELECT para retornar produtos com valor maior que 200
SELECT * FROM Produtos WHERE preco > 200;

-- SELECT para retornar produtos com valor menor que 200
SELECT * FROM Produtos WHERE preco < 200;

-- Atualização de um registro na tabela de produtos
UPDATE Produtos SET preco = 249.99 WHERE id = 6;
