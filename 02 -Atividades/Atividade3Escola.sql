create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255),
idade int,
faltas int,
nota decimal (4,2),
primary key (id)
);
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Maria Luiza", 15, 2, 7.25); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Luiza", 13, 1, 9.50); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Robson", 16, 8, 8.75); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Lara", 17, 0, 10.0); 
  
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("João", 12, 3, 6.25); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Maria Maria", 14, 4, 8.25); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Josete", 13, 0, 9.75); 
 
 insert into tb_estudantes (nome, idade, faltas, nota)
 values ("Gustavo", 16, 9, 5.75); 
 
 select * from tb_estudantes; 
 select * from tb_estudantes where nota > 7;
 select * from tb_estudantes where nota < 7;
 
 update tb_estudantes set nota = 6 where id = 8; 