create database db_rh;

use db_rh;

create table funcionarios(
cpf bigint not null,
nome varchar(255) not null,
idade int not null,
cargo varchar(255) not null,
salario decimal not null,
primary key(cpf)

);

insert into funcionarios(cpf, nome, idade, cargo, salario) 
values (68798632501, "Abelirdes Fonseca", 33, "Faxineira", 9000);

insert into funcionarios(cpf, nome, idade, cargo, salario)
values
			(39345265936, "Astolfo Martins", 54, "Motorista", 12000),
				(06931528877, "Etelvina Souza", 113, "Presidente", 999000),
					(56631246863, "Divina da Graça" , 99, "Desenvolvedora Java", 87000),
						(35689752411, "Jaime Lindolfo", 45, "orteiro", 7000);
                        
                        
select * from funcionarios;   
select * from funcionarios where salario >= 2000;
select * from funcionarios where salario <= 2000;


update funcionarios set cargo = "Porteiro" where cpf = 35689752411;


                 