create database db_pizzaria_legal_original;

use db_pizzaria_legal_original;

create table tb_categoria(
id bigint primary key auto_increment,
ingredientes varchar(255),
tipo varchar(255),
tamanho char,
promocao boolean
);

insert tb_categoria(ingredientes,tipo,tamanho,promocao)
		values 
("Mussarela, tomate e manjericão", "Tradicional", 'G', 0),
("Mussarela, alho, tomate, e orégano", "Tradicional", 'G', 0),
("Calabresa com cebola", "Tradicional", 'G',0),
("Catupiry, camarão, salsinha e alcaparras ", "Premium", 'M', 1),
("Mussarela e goiabada fresca", "Doce", 'B',0),
("Chocolate com coco ralado fresco", "Doce", 'B', 0),
("Não adicionado","Tradicional", 'G', 0);



create table tb_pizza(
id bigint primary key auto_increment,
nome varchar(255),
preco decimal(4,2),
observacao varchar(255),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(nome, preco, observacao, categoria_id) 
			values 
("Margherita", 25, "", 1),
("Napolitana", 25.99, "", 2),
("Calabresa", 27, "", 3),
("Camarão", 40.99, "", 4),
("Romeu e Julieta", 20, "", 5),
("Prestígio", 22.99, "", 6),
("Atum", 30,  "", 7),
("Caipira", "34.99", "", 7);

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_piza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 1;













