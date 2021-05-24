create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint primary key auto_increment,
categoria varchar(255),
faixaEtaria varchar(255),
controlado boolean
);

insert tb_categoria(categoria, faixaEtaria, controlado) 
		values 
("Alimento", "Infantil",0),
("Alimento", "Adulto",0),
("Medicamento", "Infantil",0),
("Medicamento", "Adulto",0),
("Higiene", "Infantil",0),
("Higiene", "Adulto",0);



create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
fabricante varchar(255),
validade date,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto(nome, preco, fabricante, validade, categoria_id) 
			values 
("Papinha Naturnes Carne, Legumes e Mandioquinha 115g", 3.89, "Nestlé", "2022-11-25", 1),
("Vital 4k: Concentrado de polifenóis", 180, "Doutor Nature", "2022-12-31", 2),
("AAS Infantil SANOFI 100mg 10 comprimidos", 6.40, "Sanofi","2024-01-20", 3),
("Advil 400mg 20 cápsulas", 36, "gsk","2023-09-21", 4),
("Escova Dental Curaprox Ultra Soft Trio Especial Edition CS5460b 3 Unidades", 55.67, "CURAPROX","2025-06-01", 5),
("Fralda Geriátrica Tena Slip UltraCare G Descartável com 20 unidades", 54.90, "TENA", "2026-09-09", 6),
("Creme Dental Colgate Máxima Proteção Anticáries 90G Promo Leve Mais Por Menos 6Un", 17.36, "Colgate", "2023-05-15", 6),
("Shampoo Palmolive Naturals Kids Todo Tipo de Cabelo", 9.99, "PALMOLIVE", "2024-05-22", 5);

select * from tb_produto;
select * from tb_categoria;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;