CREATE DATABASE ESCOLA_MARCIA;

-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

INSERT INTO Professor(id_professor, nome, email, senha)
VALUES
('1', 'Márcia', 'marcia@gmail.com', 'marcinha123'), 
('2', 'Lindomar', 'lindomiro@gmail.com', 'lindinho123');

INSERT INTO Turma(id_turma, numero, nome, id_professor)
VALUES
('01', '1', 'DSMB', '1'), 
('02', '2', 'DSMB', '2');

INSERT INTO atividade(id_atividade, numero, descricao, id_turma)
VALUES
('001', '1', 'Exercícios 1', '01'), 
('002', '2', 'Exercícios 2', '02');


-- desafios
-- 1
INSERT INTO Professor(nome, email, senha)
VALUES
('Cleber', 'clebinho@gmail.com', 'corinthians123');

-- 2
SELECT * 
FROM Turma WHERE id_turma = 02;

-- 3
UPDATE atividade
SET descricao = 'Continuação dos Exercícios'
WHERE id_atividade = 002;

-- 4
DELETE FROM Professor
WHERE id_professor = 3;

-- 5
INSERT INTO atividade(id_atividade, numero, descricao, id_turma)
VALUES 
('003', '3', 'Trabalho em Grupo', '02');

-- 6
SELECT id_atividade, descricao
FROM atividade
WHERE id_turma = 02;

-- 7
UPDATE Turma
SET id_professor = 2
WHERE id_turma = 01;

-- 8 
SELECT turma.id_turma, 
       turma.nome, 
       professor.nome, 
       professor.email
FROM turma
JOIN professor ON turma.id_professor = professor.id_professor;

-- 9
SELECT professor.nome,
	   turma.id_professor,
	   atividade.descricao
FROM atividade
JOIN turma ON 
JOIN professor ON atividade.id_atividade = professor.id_professor
