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
/*classe + jovem
classe + adulto
classe + idoso*/

/*Lista todos os dados da tabela tb_classes*/
select * from tb_classes;

/*Criar tabela tb_personagens*/
create table db_personagens(
id bigint auto_increment,
nome varchar(255) not null,
personagemLevel int not null, 
personagemForca int,
personagemDefesa int,
personagemInteligencia int,
personagemCarisma int,
primary key(id),
foreign key (classe_id) references tb_classes(id)
);