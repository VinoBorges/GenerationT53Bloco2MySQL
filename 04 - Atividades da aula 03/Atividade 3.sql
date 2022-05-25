/*ATIVIDADE 03*/
/*Criar banco de dados*/
CREATE DATABASE db_farmacia_bem_estar; 

/*Selecionar banco de dados db_farmacia_bem_estar*/
USE db_farmacia_bem_estar;

/*Criar tabela tb_categorias*/
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
departamento VARCHAR(255),
fabricacao VARCHAR(255),
PRIMARY KEY (id)
);

/*Insere dados na tabela tb_categorias*/
INSERT INTO tb_categorias (departamento, fabricacao) VALUE ("Remédios", "Natural");
INSERT INTO tb_categorias (departamento, fabricacao) VALUE ("Cosméticos","Sintética");
INSERT INTO tb_categorias (departamento, fabricacao) VALUE ("Produtos para cabelo","Natural");
INSERT INTO tb_categorias (departamento, fabricacao) VALUE ("Higiene bucal","Sintética");
INSERT INTO tb_categorias (departamento, fabricacao) VALUE ("Higiene","Sintética");

/*Lista todos os dados da tabela tb_categorias*/
SELECT * FROM tb_categorias;

/*Criar tabela tb_produtos*/
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255),
dtvalidade DATE,
lote VARCHAR(255),
preco DECIMAL(5,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
); 


INSERT INTO tb_produtos (nome, dtvalidade, lote, preco, categoria_id)
VALUE ("Pacote de Sabonetes","2023-05-30", "256468928", 50.00, 5),("Escova de dentes elétrica", "2023-05-30", "325963147", 75.00, 4),
("Maracujina", "2023-05-30", "125658972", 80.00, 1),("Kit com 2 escovas elétricas", "2023-05-30", "125465982", 150.00, 4),
("Kit de maquiagem", "2023-05-30", "325647859",  125.00, 2),("Shampoo de babosa", "2023-05-30", "625489745", 25.00, 3),
("Shampoo de coco", "2023-05-30", "345879631", 45.00, 3),("Floral de Bach", "2023-05-30", "254158369", 50.00, 1);

/*Lista todos os dados da tabela tb_pizzas*/
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id; 

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.fabricacao = "Natural";
