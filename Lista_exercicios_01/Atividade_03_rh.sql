create database db_escola;

use db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    nota decimal(4,2),
    primary key (id)
);


INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Paulo Miklos", "1959-01-21", 1, 8.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Sérgio Britto", "1959-09-18", 1, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Tony Bellotto", "1960-06-30", 2, 6.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Charles Gavin", "1960-07-09", 2, 5.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Arnaldo Antunes", "1960-09-02", 2, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Marcelo Fromer", "1961-12-03", 3, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Branco Mello", "1962-03-16", 3, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Nando Reis", "1963-01-12", 3, 8.00);


SELECT * FROM tb_estudantes;


SELECT * FROM tb_estudantes WHERE nota > 7.00;


SELECT * FROM tb_estudantes WHERE nota < 7.00;


UPDATE tb_estudantes SET nota = 5.50 WHERE id = 7;