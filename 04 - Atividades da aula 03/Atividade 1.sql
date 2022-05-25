/*ATIVIDADE 01*/
/*Criar banco de dados*/
create database db_generation_game_online;

/*Selecionar banco de dados db_generation_game_online*/
use db_generation_game_online;

/*Criar tabela tb_classes*/
create table tb_classes (
id bigint auto_increment,
classesDescricao varchar(255) not null,
classesIdade varchar(255) not null,
primary key(id)
);

/*Insere dados na tabela tb_classes*/
insert into tb_classes (classesDescricao, classesIdade)
values ("Arqueiro", "Jovem"), ("Arqueiro", "Adulto"), ("Arqueiro", "Idoso"),
("Guerreiro", "Jovem"), ("Guerreiro", "Adulto"), ("Guerreiro","Idoso"),
("Mago", "Jovem"), ("Mago", "Adulto"), ("Mago", "Idoso"),
("Clérigo","Jovem"), ("Clérigo", "Adulto"), ("Clérigo", "Idoso"),
("Ladrão","Jovem"), ("Ladrão", "Adulto"), ("Ladrão", "Idoso"),
("Bárbaro","Jovem"), ("Bárbaro","Adulto"), ("Bárbaro", "Idoso");

/*Lista todos os dados da tabela tb_classes*/
select * from tb_classes;

/*Criar tabela tb_personagens*/
create table tb_personagens(
id bigint auto_increment,
personagemNome varchar(255) not null,
personagemLevel int not null, 
personagemForca int,
personagemDefesa int,
personagemInteligencia int,
personagemCarisma int,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classes(id)
);

/*Insere dados na tabela tb_personagens*/
insert into tb_personagens (personagemNome, personagemLevel, personagemForca, 
personagemDefesa, personagemInteligencia, personagemCarisma, classe_id)
value ("Perna Longa", 80, 1500, 1000, 2000, 1000, 1), 
("Patolino - O Mago Implaclável", 1340, 100000, 50000, 60000, 7, 8), 
("Gaguinho", 70, 1000, 2000, 900, 6000, 4),
("TásMania", 100, 10000, 8000, 100, 6000, 17),
("Frajola", 55, 2500, 2000, 1500, 1000, 13),
("Piu-Piu", 60, 3000, 2500, 2000, 4000, 4),
("Lola", 90, 3000, 2000, 2000, 3000, 16),
("Vovó", 200, 1500, 30000, 30000, 40000, 6);

/*Visualiza todos os dados da tabela tb_personagens*/
select * from tb_personagens; 

select * from tb_personagens where personagemForca > 2000;

select * from tb_personagens where personagemDefesa between 1000 and 2000;

select * from tb_personagens where personagemNome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id where classesDescricao = "Arqueiro"; 

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id where tb_classes.classesDescricao = "Arqueiro";


