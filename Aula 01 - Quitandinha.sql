-- Criar Banco de Dados
create database db_quitanda;

use db_quitanda;

-- Criar Tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preço decimal not null,
primary key(id)
);

-- Insere dados na tabela
insert into tb_produtos(nome,preço) values ("tomate", 50.00);
insert into tb_produtos(nome,preço) values ("maçã", 5.00);
insert into tb_produtos(nome,preço) values ("abacate", 4.00);

-- Visualizar dados
select * from tb_produtos;

-- Altera a estrutura da tabela
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

-- Alterar dados na tabela
update tb_produtos set preço = 10 where id = 1;

-- Deletar dados na tabela
delete from tb_produtos where id = 2; 


