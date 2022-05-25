create database tb_gamer;

drop database tb_gamer;

use tb_gamer;

create table tb_classes(
id bigint not null auto_increment,
tipo varchar(255) not null,
primary key (id)
);

insert into tb_classes (tipo)
values ("Aventura");

insert into tb_classes (tipo)
values ("Corrida");

insert into tb_classes (tipo)
values ("Tiro");

insert into tb_classes (tipo)
values ("RPG");

insert into tb_classes (tipo)
values ("Terror");

select *from tb_classes;

create table tb_personagens(
id bigint not null auto_increment,
Nome varchar(255) not null,
classe varchar(255) not null,
sexo varchar(255) not null,
raca varchar(255) not null,
poder_ataque decimal (6) not null,
poder_defesa decimal (6) not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("Juquinha", "mago", "masculino", "elfo", "5000", "1000", "1");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("Zezinho", "pirata", "masculino", "humano", "4000", "2000", "4");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("zequinha", "piloto", "masculino", "humano", "1000", "1000", "2");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("erica", "bruxa", "feminino", "elfa", "10000", "50000", "5");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("edinho", "fuzileiro", "masculino", "elfo", "2500", "2000", "3");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("jureminha", "elemental", "feminino", "fada", "500", "500", "1");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("carlinhos", "piloto", "masculino", "humano", "1000", "1000", "2");

insert into tb_personagens (Nome, classe, sexo, raca, poder_ataque, poder_defesa, classe_id)
values ("lumi", "pet", "feminino", "gata", "2000", "1000", "4");

select * from tb_personagens;

select * from tb_personagens where poder_ataque > 2000;

select * from tb_personagens where poder_defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id; 

select classe tb_classes from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;
