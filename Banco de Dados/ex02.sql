create database db_livraria;

use db_livraria;

CREATE TABLE tb_livros(
	id BIGINT AUTO_INCREMENT,
		nomeDoLivro VARCHAR(255) NOT NULL,
        autor VARCHAR(255) NOT NULL,
        editora VARCHAR(255) NOT NULL,
        anoDeEdicao DATE NOT NULL,
        valor DECIMAL (6,2) NOT NULL,
        
        PRIMARY KEY (id)
);

INSERT INTO tb_livros (nomeDoLivro, autor, editora, anoDeEdicao, valor) 
VALUES 
('Lote de Livros Dom Quixote', 'Miguel de Cervantes', 'Editora A', '1605-01-01', 500.00),
('Lote de Livros Orgulho e Preconceito', 'Jane Austen', 'Editora B', '1813-01-01', 569.90),
('Lote de Livros Cem Anos de Solidão', 'Gabriel García Márquez', 'Editora C', '1967-01-01', 239.90),
('Lote de Livros O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Editora D', '1943-01-01', 659.90),
('Lote de Livros Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Editora E', '1997-01-01', 775.20);

SELECT * FROM tb_livros WHERE valor > 500.00;
SELECT * FROM tb_livros WHERE valor < 500.00;

UPDATE tb_livros SET valor = 149.90 WHERE id = 3;
