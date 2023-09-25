CREATE DATABASE Biblioteca;
USE biblioteca;

CREATE TABLE Usuario(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) direccion NOT NULL,
	VARCHAR(15) telefono NOT NULL,
	VARCHAR(50) correo_electronico NOT NULL 
);

CREATE TABLE Prestamo(
	PRIMARY KEY INTEGER(20) id,
	DATE fecha_prestamo,
	DATE fecha_devolucion,
	VARCHAR(15) estado NOT NULL,
	INTEGER(20) id_libro,
	INTEGER(20) id_usuario,
	FOREIGN KEY (id_libro) REFERENCES Libro(id),
	FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);

CREATE TABLE Libro(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) titulo NOT NULL,
	VARCHAR(50) autor NOT NULL,
	BOOLEAN disponible,
	DATE fecha_publicacion,
	INTEGER(20) id_categoria,
	INTEGER(20) id_editorial,
	FOREIGN KEY (id_categoria) REFERENCES Categoria(id),
	FOREIGN KEY (id_editorial) REFERENCES Editorial(id)
);

CREATE TABLE Editorial(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) direccion NOT NULL,
	VARCHAR(15) telefano NOT NULL
);

CREATE TABLE Categoria(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) descripcion NOT NULL
);