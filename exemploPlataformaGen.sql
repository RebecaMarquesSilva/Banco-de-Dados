CREATE DATABASE db_estoque;

USE db_estoque;

CREATE TABLE tb_marcas(
	id BIGINT(5) AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
    ativo BOOLEAN,
    PRIMARY KEY (ID)
);

SELECT * FROM tb_marcas;

INSERT INTO tb_marcas(nome, ativo) VALUES ("Nike", TRUE);

SELECT * FROM tb_marcas;

INSERT INTO tb_marcas (nome, ativo) VALUES ("Prada", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Armany", true);

SELECT * FROM tb_marcas;

USE db_estoque;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    preco DECIMAL(10,2),
    marca_id BIGINT NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (marca_id) REFERENCES tb_marcas(id)
);

INSERT INTO tb_produtos (nome, preco, marca_id) VALUES ("Camisa", 22.99, 1);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","60.53",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","58.18",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","83.50",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","92.81",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","76.95",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","96.56",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","61.16",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","73.08",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","53.45",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","56.92",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","81.02",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","90.09",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","55.73",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","09.46",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","60.61",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","71.91",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","54.90",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","13.16",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","80.22",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","84.27",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","87.11",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","35.96",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","23.16",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","77.88",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","83.63",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","68.98",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","18.33",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","43.75",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","96.40",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","59.48",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","19.44",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","32.70",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","53.47",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","68.23",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","45.82",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","17.42",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","76.39",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","01.88",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","69.80",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","80.52",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","86.33",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","61.78",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","28.29",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","57.99",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","55.48",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","84.55",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","68.45",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","64.03",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","37.26",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","54.97",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","60.05",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","02.20",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","62.34",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","27.78",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","09.43",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","59.28",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","32.32",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","33.27",3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_marcas;

-- INNER JOIN

SELECT * FROM tb_produtos INNER JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_marcas.nome FROM tb_produtos
INNER JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_marcas.nome FROM tb_produtos
INNER JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id
WHERE tb_marcas.nome = "Nike"; -- LIKE "%Ni%"

SELECT tb_produtos.nome, tb_produtos.preco, tb_marcas.nome FROM tb_produtos
INNER JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id
WHERE tb_marcas.nome LIKE "%Ni%" AND tb_produtos.preco < 50.00 
AND tb_produtos.nome = "Camisa";

SELECT tb_produtos.nome, tb_produtos.preco, tb_marcas.nome FROM tb_produtos
INNER JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id
WHERE tb_produtos.nome = "Meias" OR tb_produtos.nome = "Tênis";

-- LEFT / RIGHT JOIN

SELECT * FROM tb_produtos LEFT JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id;

SELECT * FROM tb_produtos RIGHT JOIN tb_marcas on tb_marcas.id = tb_produtos.marca_id;
