CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR (50) NOT NULL,
	arma VARCHAR (50),
	origem VARCHAR(50),
	PRIMARY KEY (id)
);

INSERT INTO tb_classe (tipo, arma, origem) 
VALUES 
("Arqueiro", "Arco e Flecha","Floresta das Trevas"),
("Monge", "Planador","Nômades do Ar"),
("Ladrão", "Espada","Condado"),
("Viking", "Machado","Valhalla"),
("Mago", "Cajado","Terra Média");

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idade BIGINT,
	altura DECIMAL(10,2),
	ataque BIGINT NOT NULL,
	defesa BIGINT NOT NULL,
	fk_classes BIGINT,
	PRIMARY KEY (id),
	FOREIGN KEY (fk_classes) REFERENCES tb_classe(id) 
);

INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, fk_classes) 
VALUES 
("Fábio", 22, 1.70, 3000, 5000, 2),
("Cássio", 29, 2.00, 700, 9000, 1),
("Alessandro", 30, 1.80, 3000, 7000, 2),
("Anderson", 32, 1.78, 2000, 9000, 4),
("Jorge", 28, 1.65, 8000, 1000, 3),
("Paulo", 25, 1.80, 5000, 5000, 3),
("Danilo", 20, 1.78, 6000, 5000, 5),
("Ralf", 22, 1.85, 2000, 9000, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE tb_personagem.nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.fk_classes;
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.fk_classes WHERE tb_classe.tipo = "Monge";
