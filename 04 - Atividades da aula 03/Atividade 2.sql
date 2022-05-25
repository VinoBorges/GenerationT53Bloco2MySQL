/*ATIVIDADE 02*/
/*Criar banco de dados*/
create database db_pizzaria_legal;

/*Selecionar banco de dados db_pizzaria_legal*/
use db_pizzaria_legal;

/*Criar tabela tb_categorias*/
create table tb_categorias(
id bigint not null auto_increment,
sabor varchar(255) not null,
primary key(id)
);

/*Insere dados na tabela tb_categorias*/
INSERT INTO tb_categorias (sabor) 
VALUE ("Mussarela"),("Quatro queijos"),("Rúcula"),("Palmito"),("Brócolis"),("Alho");

/*Lista todos os dados da tabela tb_categorias*/
select * from tb_categorias;

/*Criar tabela tb_pizzas*/
create table tb_pizzas(
id BIGINT NOT NULL AUTO_INCREMENT,
tamanho varchar(255)  NOT NULL,
quantidade INT NOT NULL,
dtvalidade DATE,
preco DECIMAL(5,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

/*Insere dados na tabela tb_pizzas*/
INSERT INTO tb_pizzas (tamanho, quantidade, dtvalidade, preco, categoria_id)
VALUE ("Família", 1, "2022-05-30", 50.00, 6),("Broto", 3, "2022-05-30", 75.00, 4),
("Grande", 2, "2022-05-30", 80.00, 1),("Família", 3, "2022-05-30", 150.00, 4),
("Broto", 5, "2022-05-30", 125.00, 2),("Broto", 1, "2022-05-30", 25.00, 3),
("Grande", 1, "2022-05-30", 45.00, 3),("Grande", 1, "2022-05-30", 50.00, 6);

/*Lista todos os dados da tabela tb_pizzas*/
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00; 

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE tamanho LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE tb_categorias.sabor = "Alho";

 