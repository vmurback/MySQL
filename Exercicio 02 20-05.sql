create database db_lojinha;

use db_lojinha;

create table produtos2(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255)not null,
preco decimal not null,
vencimento varchar(255),
primary key (id)
);

insert into produtos2 (nome, marca, preco, vencimento) 
values 
("Baralho Uno", "Copag", 20.00,"Indeterminada"),
("Kindle Paperwhite", "Amazon", 399.00,"Indeterminada"),
("Teclado K70 RGB", "Corsair",820.00,"Indeterminada"),
("Whisky White Walker 750ml", "Johnnie Walker" , 120.00, "Indeterminada"),
("Bala de Menta 28g", "Halls", 1.00, "2022"),
("Energético Energy Ultra 473ml", "Monster", 7.00, "2022"),
("Amendoim Japonês 100g", "Yoki", 3.00, "2022"),
("Monitor 24 144hz FULL HD 1 ms ", "BenQ", 2200.00,"Indeterminada");

select * from produtos2;   
select * from produtos2 where preco >= 500;
select * from produtos2 where preco <= 500;

update produtos2 set preco = 140 where id = 4;





