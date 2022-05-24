create database db_e_commerce;

use db_e_commerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
quantidade int,
cor varchar (255),
preco decimal (6,2),
primary key (id)
);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Cabo USB-C", 666, "preto", 80.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Carregador", 234, "branco", 120.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("PowerBank", 764, "prata", 220.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Tablet", 1238, "preto", 880.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Celular da Maça", 345, "rosa", 5680.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Celular da janela", 978, "preto", 1550.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Celular da Coreia do Sul", 534, "roxo", 2000.00);

insert into tb_produtos (nome, quantidade, cor, preco)
value ("Celular da China", 235, "preto", 1600.00);

select * from tb_produtos;
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set preco = 9999.99 where id = 5;

