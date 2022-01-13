CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
	sala VARCHAR (50),
	nota DECIMAL (10, 2),
	aprovado BOOLEAN,
	PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("David", "2º E", 7.9, TRUE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Samuel", "1º F", 9, TRUE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Thierry", "1º F", 6, FALSE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Luiz", "3º A", 9, TRUE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Lionel", "3º A", 10, TRUE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Xavier", "1º D", 6, TRUE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Sergio", "2º E", 5, FALSE);
INSERT INTO tb_estudantes (nome, sala, nota, aprovado) VALUES ("Andrés", "1º D", 8, TRUE);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET aprovado = FALSE WHERE id = 6