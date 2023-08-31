-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

-- Utilização do banco de dados
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    tipo VARCHAR(50)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (id, nome, tipo)
VALUES
    (1, 'Mago', 'Ranged Mage'),
    (2, 'Arqueiro', 'Ranged Physical');
    (3, 'Guerreiro', 'Melee'),

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserção de registros aleatórios na tabela tb_personagens
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, classe_id)
VALUES
    (1, 'Aldric', 30, 2800, 2100, 2),
    (2, 'Seraphina', 28, 2100, 1800, 1),
    (3, 'Lorelei', 25, 2200, 1700, 3),
    (4, 'Cassius', 18, 1000, 1200, 1),
    (5, 'Thalira', 27, 2400, 2000, 1),
    (6, 'Merlin', 29, 2600, 2200, 2),
    (7, 'Elysia', 23, 1800, 1500, 3),
    (8, 'Xander', 26, 2000, 1800, 2);

-- SELECT que retorna personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando LIKE para buscar personagens com 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT utilizando INNER JOIN para unir tb_personagens com tb_classes
SELECT p.nome, p.nivel, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- SELECT utilizando INNER JOIN para unir tb_personagens com tb_classes e filtrar por classe específica
SELECT p.nome, p.nivel, c.nome AS classe FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id WHERE c.nome = 'Mago';
