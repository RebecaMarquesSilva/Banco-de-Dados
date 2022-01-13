CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE funcionaries(
	nome VARCHAR (50),
	cpf BIGINT (11),
	email VARCHAR (50),
	setor VARCHAR (50),
	salario DECIMAL (10,2),
	PRIMARY KEY (cpf)
);

INSERT INTO funcionaries (nome, cpf, email, setor, salario) VALUES ("Carolina", 10000000012, "carolina@email.com", "Fotografia", 3000.60);
INSERT INTO funcionaries (nome, cpf, email, setor, salario) VALUES ("Paula", 10000000034, "paula@email.com", "Edição", 1900.00);
INSERT INTO funcionaries (nome, cpf, email, setor, salario) VALUES ("Marcela", 10000000056, "marcela@email.com", "Catering", 1800.00);
INSERT INTO funcionaries (nome, cpf, email, setor, salario) VALUES ("Maria", 10000000078, "maria@email.com", "Produção", 5000.20);
INSERT INTO funcionaries (nome, cpf, email, setor, salario) VALUES ("Roberta", 10000000090, "roberta@email.com", "Direção", 3000.00);

SELECT * FROM funcionaries WHERE salario > 2000;
SELECT * FROM funcionaries WHERE salario < 2000;

UPDATE funcionaries SET salario = 2200.00 WHERE cpf = 10000000056