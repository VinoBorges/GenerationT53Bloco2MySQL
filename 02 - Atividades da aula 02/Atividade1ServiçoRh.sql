create database db_servico_rh;

use db_servico_rh;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
nivel varchar (255),
salario decimal (7,2) not null,
primary key (id)
);

insert into tb_colaboradores (nome, idade, nivel, salario) 
values ("José Carlos", 45, "Júnior", 4000.00);

insert into tb_colaboradores (nome, idade, nivel, salario) 
values ("José Fernando", 45, "Pleno", 9000.00);

insert into tb_colaboradores (nome, idade, nivel, salario) 
values ("José Josival", 45, "Sênior", 15000.00);

insert into tb_colaboradores (nome, idade, nivel, salario) 
values ("José Roberto", 45, "Sênior Sênior", 20000.00);

insert into tb_colaboradores (nome, idade, nivel, salario) 
values ("José Jose", 45, "Estágiario", 1800.00);

select * from tb_colaboradores;
select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario <2000.00;

update tb_colaboradores set nivel = "Sênior" where id = 4; 