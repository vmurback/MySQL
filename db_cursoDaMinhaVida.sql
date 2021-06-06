create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint primary key auto_increment,
nome varchar(50),
professor varchar(50),
tipo varchar(50)
);

insert into tb_categoria(nome, professor, tipo)
		values
	("Design", "Thais Weiller", "Online"),
	("Games","Vitor Murback", "Online"),
	("Front End", "André Peduti", "Online"),
	("Back End", " Isaque Costa", "Online"),
    ("Lógica de Programação", "Jeff Confia no Processo", "Online");
    

create table tb_curso(
id bigint primary key auto_increment,
nome varchar(50),
preco decimal(6,2),
cargahoraria varchar(50),
idioma varchar(50),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome, preco, cargahoraria, idioma, categoria_id ) 
				values 
("Unreal Engine 5", 9900, 600, "Português", 2),
("Visual Studio Code", 1000, 460, "Inglês", 3),
("Portugol Studio", 0, 40, "Português",  5),
("Autodesk Maya", 3999, 800, "Português", 2),
("Eclipse", 1.99, 200, "Português", 4),
("Adobe Photoshop", 299, 400, "Inglês",  1),
("Postman", 99, 20, "Inglês", 4),
("Unity", 2500, 540, "Português", 2);



                        
select * from tb_categoria;   
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%J%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select nome from tb_curso ;


