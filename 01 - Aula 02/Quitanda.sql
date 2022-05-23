/*criando banco de dados */
create database db_quitanda;

/*usar o banco de dados*/
use db_quitanda;

/*Criando tabela*/
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int, 
data_validade date,
preco decimal not null,
primary key (id)
);

insert into tb_produtos (nome, quantidade, data_validade, preco) 
values ("Mexirica", 20, "2022-05-30", 8);

insert into tb_produtos (nome, quantidade, data_validade, preco) 
values ("Maça", 2000, "2022-05-30", 6);

insert into tb_produtos (nome, quantidade, data_validade, preco) 
values ("Laranja", 200, "2022-05-30", 12.55);

insert into tb_produtos (nome, quantidade, data_validade, preco) 
values ("Tomate", 210, "2022-05-30", 18.99);

insert into tb_produtos (nome, quantidade, data_validade, preco) 
values ("Limão", 300, "2022-05-30", 2.99);


/*atualizar alguma informação na tabela, sempre bom usar o "where" para identificar*/
update tb_produtos set preco = 8.99 where id = 1;

delete from tb_produtos where id=3;

/*tirar a "trava", pra travar de novo colocar o 1*/
set sql_safe_updates = 0;

/*não funciona porque o MySQL tem uma trava pra dar uma segurança*/
delete from tb_produtos;

select * from tb_produtos;

select * from tb_produtos order by nome;

select * from tb_produtos order by nome desc;

select nome_produto, concat('R$ ',format (preco,2, 'pt_br')) as preço from tb_produtos;

/*alterar alguma informação/definição da estrutura da tabela*/
alter table tb_produtos modify preco decimal(6,2);

alter table tb_produtos add descricao varchar (500);

alter table tb_produtos drop descricao; 

alter table tb_produtos change nome nome_produto varchar(255);






