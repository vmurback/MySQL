create database cidade_das_frutas;

use cidade_das_frutas;

create table tb_categoria(
id bigint primary key auto_increment,
pesagem varchar(50),
promocao boolean
);

insert into tb_categoria(pesagem,promocao)
		values
	("Unidade", 0),
	("Unidade", 1),
	("Por Kilo", 0),
	("Por Kilo", 1);

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(50),
tipo varchar(50),
preco decimal(4,2),
classificacao varchar(50),
importada boolean,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, tipo, preco, classificacao, importada,categoria_id ) 
				values 
("Banana", "Prata", 3.00, "Doce", 0, 3),
("Maça", "Gala", 10.00, "Doce", 1, 4),
("Abacate", "Breda", 4.50, "Oleaginosas", 0, 1),
("Melão", "Amarelo", 5.00, "Monofágicas", 0, 2),
("Caqui", "Rama Forte", 6.00, "Doce", 0, 4),
("Maracujá", "Amarelo", 3.50, "Semiácidas", 0, 3),
("Limão", "Siciliano", 16.00, "Ácidas", 1, 4),
("Goiaba", "Paluma", 3.60, "Semiácidas", 0, 3);



                        
select * from tb_categoria;   
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%Maçã%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select nome from tb_produto ;



