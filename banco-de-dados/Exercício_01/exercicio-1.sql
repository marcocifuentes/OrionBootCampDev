-- Exercício 1: SQL Básico (Criação e Inserção)
-- Aluno: Marco Cifuentes
-- Bootcamp: Orion - New Rizon

-- ---------------------------------
-- 6. Criar a tabela cursos
--
-- ---------------------------------
CREATE TABLE IF NOT EXISTS cursos (
    id SERIAL PRIMARY KEY, -- 'SERIAL' no Postgres é um numérico auto-incremento
    nome_curso VARCHAR(255) NOT NULL -- 'VARCHAR' é o tipo para Texto
);

-- ---------------------------------
-- 7. Criar a tabela alunos
--
-- ---------------------------------
CREATE TABLE IF NOT EXISTS alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    curso_id INT, -- Coluna que vai se relacionar

    -- Configura a Chave Estrangeira (FK)
    --
    CONSTRAINT fk_curso
        FOREIGN KEY(curso_id) 
        REFERENCES cursos(id)
);

-- ---------------------------------
-- 8. Inserir dados
--
-- ---------------------------------

-- Inserindo 3 cursos
INSERT INTO cursos (nome_curso) VALUES
('Ciência de Dados'),
('Desenvolvimento Back-end com Python'),
('Engenharia de IA com n8n');

-- Inserindo 4 alunos
INSERT INTO alunos (nome, email, curso_id) VALUES
('Ana Silva', 'ana.silva@email.com', 1), -- Ana -> Ciência de Dados
('Bruno Costa', 'bruno.costa@email.com', 2), -- Bruno -> Back-end
('Carla Dias', 'carla.dias@email.com', 1), -- Carla -> Ciência de Dados
('Davi Moreira', 'davi.moreira@email.com', 3); -- Davi -> n8n

-- ---------------------------------
-- Critério de Sucesso: Teste de Chave Estrangeira
--
-- ---------------------------------
-- O comando abaixo DEVE falhar, provando que a FK funciona,
-- pois não existe curso com id = 99.
-- (Descomente a linha abaixo para testar e veja o erro)

-- INSERT INTO alunos (nome, email, curso_id) VALUES ('Usuario Fantasma', 'fantasma@email.com', 99);

-- ---------------------------------
-- Critério de Sucesso: SELECT * FROM alunos
--
-- ---------------------------------
SELECT * FROM alunos;