CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR (30),
    tipo VARCHAR(50),
    acesso_vitalicio BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_curso(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50),
	horas DECIMAL (5,2),
    autor VARCHAR(30),
	valor DECIMAL (5,2),
    material_apoio BOOLEAN,
	fk_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id) 
);

INSERT INTO tb_categoria (categoria, tipo, acesso_vitalicio) 
VALUES 
("Desenvolvimento", "Desenvolvimento Web", TRUE),
("Desenvolvimento", "Desenvolvimento de Games", FALSE),
("TI & Software", "Hardware", TRUE),
("TI & Software", "Sistemas Opercionais", TRUE),
("Desenvolvimento", "Data Science", TRUE);

INSERT INTO tb_curso (nome, horas, autor, valor, material_apoio, fk_categoria) 
VALUES 
("JavaScript do 0 ao Avançado", 38.5, "BCode", 239.90, TRUE, 1),
("UNITY 2D", 68.5, "HubGames", 184.90, TRUE, 2),
("Introdução ao Arduino", 14, "EngenTech", 39.90, TRUE, 3),
("Linux: Da migração à administração", 10, "OSPro", 79.90, FALSE, 4),
("Machine Learning e Data Science com Python", 18.5, "ML EdTech", 169.90, TRUE, 5),
("Angular Avançado", 16.5, "WebTech", 69.90, TRUE, 1), 
("Programando arduino do zero", 12, "TechMakers", 49.90, FALSE, 3),
("Desenvolvimento Web Completo", 114.5, "BCode", 244.90, TRUE, 1);

SELECT * FROM tb_curso WHERE valor > 50;
SELECT * FROM tb_curso WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE tb_curso.nome LIKE "%C%";
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.fk_categoria;
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.fk_categoria WHERE tb_categoria.tipo = "Desenvolvimento Web";
