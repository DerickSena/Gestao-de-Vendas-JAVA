CREATE DATABASE modulo_produto;

use modulo_produto;

CREATE TABLE PRODUTO(
ID INT PRIMARY KEY AUTO_INCREMENT, 
NOME VARCHAR(100) NOT NULL UNIQUE,
DESCRICAO VARCHAR(200),
PRECO DECIMAL(10, 2) NOT NULL,
QUANTIDADE INT NOT NULL,
DATA_HORA_CRIACAO DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE DATABASE modulo_cliente;

use modulo_cliente;

CREATE TABLE CLIENTE(
ID INT PRIMARY KEY AUTO_INCREMENT, 
NOME VARCHAR(100) NOT NULL, 
CPF VARCHAR(15) NOT NULL UNIQUE, 
CEP VARCHAR(9), 
LOCALIDADE VARCHAR(100), 
UF VARCHAR(2), 
COMPLEMENTO VARCHAR(500), 
DATA_HORA_CRIACAO DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE DATABASE modulo_venda;

use modulo_venda;

CREATE TABLE VENDA(
ID INT PRIMARY KEY AUTO_INCREMENT,
TOTAL_VENDA DECIMAL(10,2) NOT NULL,
VALOR_PAGO DECIMAL(10, 2) NOT NULL,
TROCO DECIMAL(10, 2) NOT NULL,
DESCONTO DECIMAL(10, 2) NOT NULL,
CLIENTE_CPF VARCHAR(15) NOT NULL,
CLIENTE_NOME VARCHAR(100) NOT NULL,
CLIENTE_CEP VARCHAR(9) NOT NULL,
USUARIO_ID BIGINT NOT NULL,
DATA_HORA_CRIACAO DATETIME DEFAULT CURRENT_TIMESTAMP,
ULTIMA_ACTUALIZACAO DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE VENDA_ITEM(
VENDA_ID INT NOT NULL,
PRODUTO_ID BIGINT NOT NULL,
PRODUTO_NOME VARCHAR(75) NOT NULL,
PRODUTO_PRECO DECIMAL(10, 2) NOT NULL,
QUANTIDADE INT NOT NULL,
TOTAL DECIMAL(10, 2) NOT NULL,
DESCONTO DECIMAL(10, 2) NOT NULL,
CONSTRAINT FK_VENDA_ITEM_VENDA FOREIGN KEY(VENDA_ID) REFERENCES VENDA(ID)
);


