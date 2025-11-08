-- Exercício 2: SQL (JOINs e Filtros)
-- Aluno: Marco Cifuentes
-- Bootcamp: Orion - New Rizon

-- ---------------------------------
-- 1. SELECT com INNER JOIN (Aluno + Curso)
--
-- ---------------------------------
SELECT
    alunos.nome,
    cursos.nome_curso
FROM
    alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id;

-- ---------------------------------
-- 2. SELECT com WHERE e JOIN (Filtrar por nome do curso)
--
-- ---------------------------------
SELECT
    alunos.nome,
    cursos.nome_curso
FROM
    alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE
    cursos.nome_curso = 'Ciência de Dados'; -- Filtra apenas por este curso

-- ---------------------------------
-- 3. UPDATE (Mover um aluno de curso)
--
-- ---------------------------------
-- Primeiro, vamos ver o curso do 'Davi Moreira' (deve ser 'Engenharia de IA com n8n')
SELECT a.nome, c.nome_curso
FROM alunos a
JOIN cursos c ON a.curso_id = c.id
WHERE a.nome = 'Davi Moreira';

-- Agora, vamos mover o Davi para 'Ciência de Dados' (curso_id = 1)
UPDATE alunos
SET curso_id = 1
WHERE nome = 'Davi Moreira';

-- ---------------------------------
-- Critério de Sucesso: Verificar o UPDATE
--
-- ---------------------------------
-- Vamos rodar a consulta de novo.
-- O resultado agora deve ser 'Davi Moreira', 'Ciência de Dados'
SELECT a.nome, c.nome_curso
FROM alunos a
JOIN cursos c ON a.curso_id = c.id
WHERE a.nome = 'Davi Moreira';

-- ---------------------------------
-- Extra (Avançado): LEFT JOIN
-- 
-- Encontrar cursos sem nenhum aluno.
-- ---------------------------------
SELECT
    c.nome_curso AS curso_sem_alunos
FROM
    cursos c
LEFT JOIN alunos a ON c.id = a.curso_id
WHERE
    a.id IS NULL; -- Onde o lado do aluno da junção é NULO (vazio)