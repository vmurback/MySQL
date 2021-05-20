create database db_escola;

use db_escola;

create table alunos(
RA bigint auto_increment,
nome varchar(255) not null,
portugues decimal(5,2) not null,
matematica decimal(5,2) not null,
ciencias decimal(5,2) not null,
primary key (RA)
);

insert into alunos(nome, portugues, matematica, ciencias)

		values
("Martinha", 8, 7, 10),
("Joãozinho", 4, 7.7, 5),
("Rafaelo", 10, 9.5, 10),
("Gonzales", 1, 2.3, 4),
("Marcas", 6.5, 8, 5),
("Lindia", 8.1, 8.7, 8.9),
("Dibraldinho", 10, 10, 10),
("Hebe", 5, 2, 7.5);

select * from alunos;   
select * from alunos where matematica >= 7;
select * from alunos where matematica <= 7;

update alunos set matematica = 2.5 where RA = 4;

