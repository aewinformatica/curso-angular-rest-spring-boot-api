CREATE TABLE categoria  ( 
codigo SERIAL NOT NULL, 
nome character varying(50),
CONSTRAINT categoria_pkey PRIMARY KEY (codigo) ) WITH ( OIDS=FALSE );

INSERT INTO categoria (nome) values ('Lazer');
INSERT INTO categoria (nome) values ('Alimentação');
INSERT INTO categoria (nome) values ('Supermercado');
INSERT INTO categoria (nome) values ('Farmácia');
INSERT INTO categoria (nome) values ('Outros');


