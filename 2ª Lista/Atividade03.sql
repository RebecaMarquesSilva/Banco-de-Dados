CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR (30),
	tipo VARCHAR(30),
    entrega BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30),
	quantidade BIGINT,
    fabricante VARCHAR(30),
	valor DECIMAL (5,2),
    estoque BOOLEAN,
	id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id) 
);

INSERT INTO tb_categoria (categoria, tipo, entrega) 
VALUES 
("Medicamentos", "Anti-Inflamatório", TRUE),
("Medicamentos", "Anti-Gripal", TRUE), 
("Medicamentos", "Calmante", FALSE), 
("Cuidados Diários", "Shampoo", TRUE), 
("Beleza", "Protetor Solar", FALSE);

INSERT INTO tb_produto (nome, quantidade, fabricante, valor, estoque, id_categoria) 
VALUES 
("Cimegripe", 2, "Cimed", 19.99, 1, 2), 
("Dorflex", 3, "Sanofi Aventis", 11.99, 1, 1), 
("Maracugina", 1, "Hypera", 17.99, 0, 3), 
("Elseve Hidra Hialurônico", 2, "L'Oréal", 14.99, 1, 4), 
("Neutrogena Sun Fresh", 1, "Johnson & Johnson", 38, 0, 5), 
("Isdin Fusion Water", 1, "Isdin", 94.99, 1, 5), 
("Clear Men", 3, "Unilever", 24.99, 1, 4), 
("Calman", 1, "Ativus", 34.99, 0, 3);

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE tb_produto.nome LIKE "%C%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria WHERE tb_categoria.tipo = "Protetor Solar";
