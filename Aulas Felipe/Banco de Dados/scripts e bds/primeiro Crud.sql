-- do CRUD, o INSERT é o "C" (Create)
INSERT INTO aluno 
    (rg, escolaridade, email, nome, endereco)
VALUES
    ('22.555.666-0', 'Cursando ensino médio', 'fulano@fulano.com', 'Beltrano', 'Rua dos bobos');

INSERT INTO aluno 
    (rg, escolaridade, email, nome, endereco)
VALUES
    ('35.458.958-8',
    'Ensino fundamental completo',
    'antonio@gmail.com',
    'Antonio da Silva',
    'Rua São João, 204');

-- do CRUD, o SELECT é o "R" (Read)
SELECT * FROM aluno;

-- do CRUD, o UPDATE é o "U" (Update)
UPDATE aluno
SET escolaridade = 'Ensino médio completo'
--WHERE ra = 1; --Atualizar apenas uma linha
WHERE ra in (1, 3, 5); --Atualizar mais de uma linha

--do CRUD, o DELETE é o "D" (Delete)
DELETE FROM aluno
WHERE nome = 'Beltrano';
