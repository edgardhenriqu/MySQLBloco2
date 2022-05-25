create database db_ecommerce;

USE db_ecommerce;

/*Criar a Tabela de produtos*/
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(200),
    genero varchar(10),
    categoria varchar(100),
    preco decimal(7,2),
    primary key (id)
);


INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny", "Feminino", "Calça", 220.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Vestido manga curta", "Feminino", "Vestido", 110.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça jeans", "Masculino", "Jeans", 150.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Camiseta básica", "Unissex", "Básico", 90.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Bermuda algodão", "Masculino", "Bermuda", 550.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny jeans", "Unissex", "Jeans", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Biquini", "Feminino", "Praia", 50.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Boné", "Masculino", "Acessórios", 60.00);

SELECT * FROM tb_produtos;


SELECT * FROM tb_produtos WHERE preco > 500.00;


SELECT * FROM tb_produtos WHERE preco < 500.00;


UPDATE tb_produtos SET preco = 150.00 WHERE id = 6;