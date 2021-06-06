create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint primary key auto_increment,
nome varchar(50),
tipo varchar(50)
);

insert into tb_categoria(nome, tipo)
		values
	("Ferramentas", "Chaves, Medição, isolantes"),
	("Argamassas", " Assentamento, Revestimento, Colante, Rejunte "),
	("Tintas", "Látex, Epóxi, Esmalte" ),
	("Elétricos", "Infraestrutura, Iluminação, Cabos, "),
    ("Hidráulicos", "Tubos, Registros, Caixas, Ralos" );

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(50),
preco decimal(6,2),
marca varchar(50),
estoque int,
promocao boolean,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, marca, preco, estoque, promocao,categoria_id) 
				values 
("Cimento Todas As Obras 50kg", "Votoran", 30.00, 299, true, 2),
("Chuveiro Acqua Duo 220V 7800W Preto e Cromado", "Lorenzetti", 10.00, 15, true, 5),
("Smart Lâmpada Led Colors, 10w Bivolt Wi-FI ", "Elgin", 60, 50, false, 4),
("Cabo Flexível com até 750V 2,5mm azul 100 metros", "Cobrecom", 209.89, 88, false, 4),
("Disjuntor Série Sd62 40a 2p Curva C 3ka", "Steck", 37.50, 120, true, 4),
("Martelo Ultra Framing com Face Fresada", "Real Steel",  128.34, 8, false, 1),
("Areia Média Lavada 20kg", "AB Areias", 3.69, 512, false, 2),
("Alicate Universal 8 Laranja", "Belzer", 53.10, 19, true, 1);



                        
select * from tb_categoria;   
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%m%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select marca from tb_produto ;