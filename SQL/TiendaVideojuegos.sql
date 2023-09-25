CREATE DATABASE TiendaVideojuegos;
USE TiendaVideojuegos;

CREATE TABLE Cliente(
	PRIMARY KEY INTEGER(20) id;
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) direccion NOT NULL,
	VARCHAR(15) telefono NOT NULL,
	VARCHAR(50) correo_telefono NOT NULL
);

CREATE TABLE Empleado(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(50) puesto NOT NULL,
	DOUBLE salario
);

CREATE TABLE Compra(
	PRIMARY KEY INTEGER(20) id,
	DATE fecha,
	INTEGER(10) cantidad,
	DOUBLE total,
	INTEGER(20) id_cliente,
	INTEGER(20) id_juego,
	INTEGER(20) id_empleado,
	FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
	FOREIGN KEY(id_juego) REFERENCES Videojuego(id),
	FOREIGN KEY(id_empleado) REFERENCES Empleado(id)
);

CREATE TABLE Videojuego(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(50) plataforma NOT NULL,
	VARCHAR(200) descripcion NOT NULL,
	VARCHAR(50) precio NOT NULL,
	INTEGER(50) stock,
	INTEGER(20) id_proveedor,
	FOREIGN KEY(id_proveedor) REFERENCES Proveedor(id)
);

CREATE TABLE Proveedor(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre_empresa NOT NULL,
	VARCHAR(50) contacto NOT NULL,
	VARCHAR(50) correo_electronico NOT NULL,
	VARCHAR(15) telefono NOT NULL
);