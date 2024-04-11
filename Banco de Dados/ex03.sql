create database db_colegio;


use db_colegio;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR(255) NOT NULL,
		sobrenome VARCHAR(255) NOT NULL,
        turma VARCHAR(255) NOT NULL,
        nascimento DATE NOT NULL,
        nota DECIMAL (5,2) NOT NULL,
        
        PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, sobrenome, turma, nascimento, nota) 
VALUES 
('João', 'Silva', 'A', '2005-03-10', 8.75),
('Maria', 'Santos', 'B', '2006-06-15', 9.50),
('Pedro', 'Oliveira', 'A', '2005-02-20', 5.80),
('Ana', 'Gomes', 'C', '2007-01-05', 8.25),
('Lucas', 'Ferreira', 'B', '2006-04-25', 9.00),
('Juliana', 'Rodrigues', 'A', '2005-08-12', 4.40),
('Mateus', 'Almeida', 'C', '2007-03-30', 8.90),
('Camila', 'Machado', 'B', '2006-10-18', 9.25);

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 6.80 WHERE id = 3;
UPDATE tb_alunos SET nota = 8.95 WHERE id = 4;



