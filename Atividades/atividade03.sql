-- Criação do banco de dados
CREATE DATABASE db_school;

-- Utilização do banco de dados
USE db_school;

-- Criação da tabela dos estudantes
CREATE TABLE Estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    curso VARCHAR(50),
    nota DECIMAL(4, 2)
);

-- Inserção de registros na tabela de estudantes
INSERT INTO Estudantes (id, nome, idade, curso, nota)
VALUES
    (1, 'Maria Santos', 19, 'Engenharia', 8.2),
    (2, 'João Silva', 20, 'Medicina', 7.6),
    (3, 'Ana Oliveira', 21, 'Arquitetura', 6.8),
    (4, 'Pedro Souza', 18, 'Direito', 9.1),
    (5, 'Laura Fernandes', 22, 'Psicologia', 8.7),
    (6, 'Lucas Costa', 19, 'Administração', 6.5),
    (7, 'Mariana Rodrigues', 20, 'Biologia', 7.3),
    (8, 'Gabriel Almeida', 18, 'Engenharia', 8.9);

-- SELECT para retornar estudantes com nota maior que 7.0
SELECT * FROM Estudantes WHERE nota > 7.0;

-- SELECT para retornar estudantes com nota menor que 7.0
SELECT * FROM Estudantes WHERE nota < 7.0;

-- Atualização de um registro na tabela de estudantes
UPDATE Estudantes SET nota = 7.8 WHERE id = 3;