create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
	tipo_de_ataque VARCHAR(255) NOT NULL,
        
        PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    id_classes BIGINT,
    
    PRIMARY KEY (id)
    
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classes) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe, tipo_de_ataque)
VALUES 
	('mago', 'magico'), 
    ('lutador', 'fisico'),
    ('tanque', 'magico'),
    ('tanque', 'fisico'),
    ('assassino', 'magico'),
    ('assassino', 'fisico'),
    ('atirador', 'fisico');
    
    INSERT INTO tb_personagens (nome, sexo, ataque, defesa, id_classes)
    VALUES
    ('Seraphine', 'feminino', 3000, 1200, 1),
    ('VI', 'feminino', 2500, 1700, 2),
    ('Malphite', 'masculino', 1000, 2500, 3),
    ('Garen', 'masculino', 2200, 2700, 4),
    ('Akali', 'feminino', 2700, 1400, 5),
    ('Zed', 'masculino', 2600, 1300, 6),
    ('Caitlyn', 'feminino', 2900, 1400, 7);
    
SELECT * FROM tb_classes;
    
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT classe, tipo_de_ataque, tb_personagens.nome
FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.id_classes;

SELECT classe, tipo_de_ataque, tb_personagens.nome
FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.id_classes WHERE classe = 'tanque';



