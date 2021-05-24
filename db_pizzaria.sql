create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint primary key auto_increment,
tradicional varchar(255),
premium varchar(255),
doce varchar(255),
foreign key (tradicional) references tb_pizzaT(nome),
foreign key (premium) references tb_pizzaP(nome),
foreign key (doce) references tb_pizzaD(nome)
);

insert into tb_categoria(tradicional) values ("Preço R$50.00, Massa tradicional");

insert into tb_categoria(premium) values ("Preço R$75, Massa fina e frita ");

insert into tb_categoria(doce) values ("Preço R$50, Massa tradicional");
                    

create table tb_pizzaT(
tradicional_id bigint auto_increment,
nome varchar(255),
bordaRecheada boolean,
tipoDaMassa varchar(255),
calorias bigint,
observacao varchar(255)
 );
 
 insert into tb_pizzaT(nome, bordaRecheada, tipopDaMassa, calorias, observacao)
				values
("Margherita", 0, "Tradicional", "600kcal", ""),
("Napolitana", 0, "Tradicional", "650kcal", ""),
("Calabresa", 0, "Tradicional", "800kcal", "");

 
 create table tb_pizzaP(
premium_id bigint primary key auto_increment,
nome  varchar(255),
bordaRecheada boolean,
tipoDaMassa varchar(255),
calorias bigint,
observacao varchar(255)
 );
 
 insert into tb_pizzaP(nome, bordaRecheada, tipopDaMassa, calorias, observacao)
				values
("Camarão", 1, "Fina e frita", "700kcal", ""),
("Doritos", 1, "Fina e frita", "1200", ""),
("Cinco Queijos", 1, " Fina e frita", "");
 
 
 create table tb_pizzaD(
doce_id bigint primary key auto_increment,
nome  varchar(255),
bordaRecheada boolean,
tipoDaMassa varchar(255),
calorias bigint,
observacao varchar(255)
 );


insert into tb_pizzaD(nome, bordaRecheada, tipopDaMassa, calorias, observacao)

				values
("Romeu e Juleira", 0, "1000kcal", ""),
("Brigadeiro", 0, "1500kcal", ""),
("Pretígio", 0, "1200kcal", "");


select * from 














