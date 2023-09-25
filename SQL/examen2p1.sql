CREATE DATABASE tienda;
USE tienda;

CREATE TABLE producto (
	codigo INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	precio DOUBLE,
	codigo_fabricante INTEGER(10),
	FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

CREATE TABLE fabricante (
	codigo INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);