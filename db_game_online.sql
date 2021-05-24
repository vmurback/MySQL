-- Esqueci de olhar o que o exercicio pedia e criei um db um pouco diferente
-- ataque == HP
-- defesa == Mana

create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagens(
character_id bigint auto_increment,
Nickname varchar(255) not null,
Raca varchar(255) not null,
Sexo varchar(255) not null,
Classe bigint not null,
Servidor varchar(255) not null,
primary key (character_id),
FOREIGN KEY (Classe) references tb_classe (class_id)
);

create table tb_classe (
class_id bigint PRIMARY KEY auto_increment,
Tipo varchar(255) not null,
Nível bigint not null,
HP bigint not null,
Mana bigint not null
);

insert into tb_classe(Tipo, Nível, HP, Mana) 
				values
        ("Assassino", 1,  40, 60),
        ("Arqueiro", 1, 25, 75),
		("Bardo", 1, 40, 60),
        ("Espadachim", 1, 80 ,20),
		("Mago", 1 , 20, 80),
        ("Sacerdote", 1, 30 ,70);
        
insert into tb_personagens(Nickname, Raca, Sexo, Classe, Servidor)
								values
		("Ferberus", "desconhecido", "desconhecido", 5, "Dalarant"),
        ("Violeta", "Humana", "Feminino", 1, "Dalarant" ),  
        ("Ranker001", "Elfo", "Masculino", 3, "Kalimdor"),
        ("Dibraldinho", "Humano", "Masculino", 5, "HueHue"),
        ("Ekath", "Golias", "Feminino", 4, "HueHue"),
        ("Zalmar", "Orc", "Masculino", 4, "Dalarant" ),
        ("20pegar70correr", "Troll", "Masculino", 1, "Kalimdor"),
        ("Gonzales", "Fada", "Masculino", 6, "HueHue");
        
        
        select * from tb_classe where HP > 50;
		select * from tb_classe where Mana > 50;
        select * from tb_classe where Tipo like "%c%";
        select * from tb_personagens inner join tb_classe on tb_classe.class_id = tb_personagens.character_id;
        
        
        
        select * from tb_personagens inner join tb_classe 
on tb_classe.class_id = tb_personagens.Classe where tb_classe.Tipo like "%Bardo%";

	
        
        


