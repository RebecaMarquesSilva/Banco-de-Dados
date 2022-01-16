CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR (30),
	bandeja BOOLEAN,
    entrega BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30),
	orgânico BOOLEAN,
    peso DECIMAL (5,3),
	valor DECIMAL (5,2),
    estoque BOOLEAN,
	fk_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id) 
);

INSERT INTO tb_categoria (categoria, bandeja, entrega) 
VALUES 
("Frutas", TRUE, TRUE),
("Frutas", FALSE, FALSE), 
("Fruta", FALSE, TRUE),
("Legumes", TRUE, TRUE),
("Legumes", FALSE, FALSE);

INSERT INTO tb_produto (nome, orgânico, peso, valor, estoque, fk_categoria) 
VALUES 
("Abacaxi", TRUE, 1.5, 10.49, 1, 2),
("Maçã", FALSE, 1.0, 10.0, 0, 3),
("Pitaya", FALSE, 1.0, 51.90, 0, 1),
("Cenoura", TRUE, 0.300, 3.39, 1, 5),
("Abobrinha", TRUE, 0.600, 5.99, 1, 4),
("Melancia", FALSE, 3.0, 18.99, 0, 2),
("Batata", FALSE, 0.500, 3.19, 1, 5),
("Abacate", TRUE, 0.600, 12.90, 1, 3);

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE tb_produto.nome LIKE "%C%";
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria.id;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria.id WHERE tb_categoria.categoria = "Legumes";
