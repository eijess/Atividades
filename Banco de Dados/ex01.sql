create database db_empresa;

use db_empresa;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR(255) NOT NULL,
		cargo VARCHAR(255) NOT NULL,
        departamento VARCHAR(255) NOT NULL,
        dataDeAdmissao DATE NOT NULL,
        salario DECIMAL(7,2) NOT NULL,
        
		PRIMARY KEY (id)


);

INSERT INTO tb_funcionarios (nome, cargo, departamento, dataDeAdmissao, salario) 
VALUES 
('Carlos Oliveira', 'Analista de RH', 'Recursos Humanos', '2020-02-15', 3000.00),
('Juliana Lima', 'Analista Financeiro', 'Financeiro', '2019-08-10', 2800.00),
('Mariana Costa', 'Assistente Administrativo', 'Administração', '2021-01-05', 2200.00),
('Lucas Santos', 'Desenvolvedor', 'Tecnologia', '2020-05-20', 3500.00),
('Patrícia Souza', 'Gerente de Vendas', 'Vendas', '2018-10-25', 4000.00);

INSERT INTO tb_funcionarios (nome, cargo, departamento, dataDeAdmissao, salario) 
VALUES 
('Ana Clara Souza', 'Estagiaria', 'Vendas', '2022-04-17', '1500.00');

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 7000.00 WHERE id = 4;



