create database db_RH;

use db_RH;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar(300),
    data_nascimento date,
    cargo varchar(200),
    salario decimal(9,5),
    primary key (id)
);

insert into tb_colaboradores (nome, data_nascimento, cargo, salario) value ("Edgard Henrique", "1992-10-20", "Desenvolvedor java full stack", 6000.00); 
insert into tb_colaboradores (nome, data_nascimento, cargo, salario) value ("Fernando Silva", "1990-09-15", "Gerente", 8000.00); 
insert into tb_colaboradores (nome, data_nascimento, cargo, salario) value ("Roberto Perera", "1988-07-25", "Estagiario", 1500.00); 
insert into tb_colaboradores (nome, data_nascimento, cargo, salario) value ("Erica Sayuri", "1985-12-10", "Desenvolvedora java full stack", 6000.00); 
insert into tb_colaboradores (nome, data_nascimento, cargo, salario) value ("Lois Camargo", "1995-01-02", "Estagiaria", 1500.00); 

select *from tb_colaboradores;

select *from tb_colaboradores where salario >2000.00;

select *from tb_colaboradores where salario <2000.00;

update tb_colaboradores set salario = 1900.00 where id = 3;




