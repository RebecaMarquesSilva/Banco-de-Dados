CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

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
	fk_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id) 
);

INSERT INTO tb_categoria (categoria, tipo, entrega) 
VALUES 
("Pisos e Revestimentos", "Porcelanato", TRUE),
("Ferramentas", "Manuais", TRUE),
("Material de Construção", "Cimentos e Aragamassas", FALSE),
("Material Hidráulico", "Tubos e Conexões", TRUE),
("Metais e Acessórios", "Torneiras", TRUE);

INSERT INTO tb_produto (nome, quantidade, fabricante, valor, estoque, fk_categoria) 
VALUES 
("Porcelanato Esmaltado 90x90cm", 1, "Eliane", 159.72, TRUE, 1),
("Alicate Universal", 2, "Tramontina", 29.99, TRUE, 2),
("Cimento Votoran 50kg", 5, "Votorantim", 31.50, FALSE, 3),
("Tubo de Ligação para Bacia", 3, "GTRES", 5.99, TRUE, 4),
("Torneira para Lavatório", 3, "Deca", 269.99, TRUE, 5),
("Torneira para Cozinha", 1, "Roca", 476.99, FALSE, 5),
("Porcelanato Acetinado 24x100cm", 3, "Villagres", 82,99, TRUE, 1),
("Argamassa Colante 20kg", 6, "Quartzolit", 21.49, FALSE, 3);

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE tb_produto.nome LIKE "%C%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria WHERE tb_categoria.tipo = "Porcelanato";
