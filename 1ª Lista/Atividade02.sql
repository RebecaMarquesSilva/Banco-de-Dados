CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
	marca VARCHAR (50),
	valor DECIMAL (10,2),
	estoque BOOLEAN,
	PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Bicicleta", "Caloi", 2500.00, TRUE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Bola", "Nike", 50.00, FALSE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Torradeira", "Phillips", 80.00, TRUE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Caixa de Som", "JBL", 700.00, TRUE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Lava-louças", "Eletrolux", 2500.00, FALSE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Geladeira", "Brastemp", 6000.00, TRUE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Geladeira", "Consul", 3500.00, TRUE);
INSERT INTO tb_produtos (nome, marca, valor, estoque) VALUES ("Fone de Ouvido", "Corsair", 300.00, TRUE);

SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET estoque = FALSE WHERE id = 1