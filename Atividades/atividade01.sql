-- Criação do banco de dados
CREATE DATABASE rh_company;

-- Utilização do banco de dados
USE rh_company;

-- Criação da tabela de colaboradores
CREATE TABLE Colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE
);

-- Inserção de registros na tabela de colaboradores
INSERT INTO Colaboradores (id, nome, cargo, salario, data_contratacao)
VALUES
    (1, 'Ana Silva', 'Desenvolvedora', 3500.00, '2020-02-15'),
    (2, 'Pedro Santos', 'Gerente de Vendas', 5000.00, '2018-09-03'),
    (3, 'Mariana Souza', 'Analista de Marketing', 2800.00, '2022-06-10'),
    (4, 'Rafael Oliveira', 'Coordenador de Projetos', 4200.00, '2019-11-22'),
    (5, 'Carla Costa', 'Recrutadora', 3200.00, '2021-08-18');

-- SELECT para retornar colaboradores com salário maior que 2000
SELECT * FROM Colaboradores WHERE salario > 2000;

-- SELECT para retornar colaboradores com salário menor que 2000
SELECT * FROM Colaboradores WHERE salario < 2000;

-- Atualização de um registro na tabela de colaboradores
UPDATE Colaboradores SET salario = 3800.00 WHERE id = 3;
