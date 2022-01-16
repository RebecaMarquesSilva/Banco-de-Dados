CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR (30),
	tamanho VARCHAR (20),
    entrega BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
	sabor VARCHAR(30),
	nr_pedacos BIGINT,
	qnt_pizzas BIGINT,
    borda_recheada BOOLEAN,
	valor DECIMAL (5,2),
	id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id) 
);

INSERT INTO tb_categoria (categoria, tamanho, entrega) 
VALUES 
("Salgada", "Grande", TRUE),
("Doce","Media", TRUE), 
("Salgada", "Media", FALSE), 
("Doce", "Broto", TRUE), 
("Salgada", "Grande", FALSE);

INSERT INTO tb_pizza (sabor, nr_pedacos, qnt_pizzas, borda_recheada, valor, id_categoria) 
VALUES 
("Mussarela", 8, 1, TRUE, 29.99, 1), 
("Calabresa", 16, 1, FALSE, 59.99, 5),
("Chocolate", 6, 2, TRUE, 21.99, 2), 
("Vegetariana", 8, 1, FALSE, 39.99, 3), 
("4 Queijos", 8, 1, TRUE, 41.99, 1), 
("Portuguesa", 8, 2, TRUE, 35.99, 1), 
("Mussarela", 16, 1, FALSE, 29.99, 1), 
("Romeu e Juliete", 4, 2, TRUE, 14.99, 4);

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE tb_pizza.sabor LIKE "%C%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria;
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria WHERE tb_categoria.categoria = "Salgada";
