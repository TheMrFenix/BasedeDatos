CREATE DATABASE ventas;
USE ventas;

CREATE TABLE comercial (
	id INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido1 VARCHAR(100) NOT NULL,
	apellido2 VARCHAR(100) NOT NULL,
	ciudad VARCHAR(100) NOT NULL,
	comision float
);

CREATE TABLE pedido (
	id INTEGER(10) PRIMARY KEY,
	cantidad DOUBLE,
	fecha DATE,
	id_cliente INTEGER(10),
	id_comercial INTEGER(10),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id),
	FOREIGN KEY (id_comercial) REFERENCES comercial(id)
);

CREATE TABLE cliente (
	id INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido1 VARCHAR(100) NOT NULL,
	apellido2 VARCHAR(100) NOT NULL,
	ciudad VARCHAR(100) NOT NULL,
	categoria INTEGER(10)
);