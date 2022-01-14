CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR (50) NOT NULL,
	arma VARCHAR (50),
	origem VARCHAR(50),
	PRIMARY KEY (id)
);

INSERT INTO tb_classe (tipo, arma, origem) VALUES ("Arqueiro", "Arco e Flecha","Floresta das Trevas");
INSERT INTO tb_classe (tipo, arma, origem) VALUES ("Monge", "Planador","Nômades do Ar");
INSERT INTO tb_classe (tipo, arma, origem) VALUES ("Ladrão", "Espada","Condado");
INSERT INTO tb_classe (tipo, arma, origem) VALUES ("Viking", "Machado","Valhalla");
INSERT INTO tb_classe (tipo, arma, origem) VALUES ("Mago", "Cajado","Terra Média");

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idade BIGINT,
	altura DECIMAL(10,2),
	ataque BIGINT NOT NULL,
	defesa BIGINT NOT NULL,
	id_classes BIGINT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_classes) REFERENCES tb_classe(id) 
);

INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Fábio", 22, 1.70, 3000, 5000, 2);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Cássio", 29, 2.00, 700, 9000, 1);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Alessandro", 30, 1.80, 3000, 7000, 2);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Anderson", 32, 1.78, 2000, 9000, 4);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Jorge", 28, 1.65, 8000, 1000, 3);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Paulo", 25, 1.80, 5000, 5000, 3);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Danilo", 20, 1.78, 6000, 5000, 5);
INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES ("Ralf", 22, 1.85, 2000, 9000, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE tb_personagem.nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classes;
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classes WHERE tb_classe.tipo = "Monge";
