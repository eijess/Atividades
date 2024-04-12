create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
		categoria VARCHAR(255) NOT NULL,
		tamanho VARCHAR(255) NOT NULL,
        
        PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ('Salgada', 'Brotinho'),
       ('Salgada', 'Grande'),
       ('Doce', 'Brotinho'),
       ('Doce', 'Grande'),
       ('Salgada', 'Tradicional'),
       ('Doce', 'Tradicional');
       
SELECT * FROM tb_categorias;

       CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
		sabores VARCHAR(255) NOT NULL,
		borda VARCHAR(255) NOT NULL,
        ingredientes VARCHAR(255) NOT NULL,
        tipo VARCHAR(255) NOT NULL,
        preco DECIMAL (7,2) NOT NULL,
        categoriaid BIGINT,
        
        
        
        PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (sabores, borda, ingredientes, tipo, preco, categoriaid)
VALUES ('Mussarela', 'Borda Recheada', 'Queijo mussarela, molho de tomate e orégano', 'Tradicional', 65.00, 5),
       ('Calabresa', 'Borda Recheada', 'Queijo mussarela, calabresa, molho de tomate e orégano', 'Grande', 80.00, 2),
       ('Pepperoni', 'Borda Recheada', 'Queijo mussarela, pepperoni, molho de tomate e orégano', 'Brotinho', 45.00, 1),
       ('Nutella', 'Borda Tradicional', 'Nutella', 'Tradicional', 57.00, 6),
       ('Morango', 'Borda Tradicional', 'Leite condensado e morango', 'Brotinho', 40.00, 3),
       ('Carne Vegetariana', 'Borda Recheada', 'Carne do Futuro, molho de tomate e orégano', 'Tradicional', 100.00, 5),
       ('Beijinho Vegetariano', 'Borda Tradicional', 'Leite condensado de soja e coco', 'Grande', 100.00, 4);

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas WHERE sabores LIKE '%M%';

SELECT * FROM tb_pizzas WHERE preco > 50.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT categoria, tamanho, tb_pizzas.ingredientes
FROM tb_categorias INNER JOIN tb_pizzas 
ON tb_categorias.id = tb_pizzas.categoriaid;

SELECT categoria, tamanho, tb_pizzas.ingredientes
FROM tb_categorias INNER JOIN tb_pizzas 
ON tb_categorias.id = tb_pizzas.categoriaid WHERE categoria = "Doce";





