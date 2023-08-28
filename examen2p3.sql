CREATE DATABASE universidad;
USE universidad;

CREATE TABLE departamento (
	id INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(50) NOT null
);

CREATE TABLE profesor (
	id INTEGER(10) PRIMARY KEY,
	id_profesor INTEGER(10),
	id_departamento INTEGER(10),
	FOREIGN KEY (id_departamento) REFERENCES departamento(id),
	FOREIGN KEY (id_profesor) REFERENCES persona(id) REFERENCES 
);

CREATE TABLE grado (
	id INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100)
);

CREATE TABLE person (
	id INTEGER(10) PRIMARY KEY,
	nif VARCHAR(9) NOT NULL,
	nombre VARCHAR(25) NOT NULL,
	apellido1 VARCHAR(50) NOT NULL,
	apellido2 VARCHAR(50) NOT NULL,
	ciudad VARCHAR(25) NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	telefono VARCHAR(9) NOT NULL,
	fecha_nacimiento DATE,
	sexo ENUM('H','M'),
	tipo ENUM()
);

CREATE TABLE asignatura (
	id INTEGER(10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	creditos FLOAT,
	tipo ENUM(),
	curso TINYINT(3),
	cuatrimestre TINYINT(3),
	id_profesor INTEGER(10),
	id_grado INT(10),
	FOREIGN KEY (id_profesor) REFERENCES profesor(id),
	FOREIGN KEY (id_grado) REFERENCES grado(id)
);

CREATE TABLE alumno_se_matricula_asignatura (
	id_alumno INTEGER(10),
	id_asignatura INTEGER(10),
	id_curso_escolar INTEGER(10),
	FOREIGN KEY (id_alumno) REFERENCES persona(id),
	FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
	FOREIGN KEY (id_curso_escolar) REFERENCES curso_escolar(id) 
);

CREATE TABLE curso_escolar (
	id INTEGER(10) PRIMARY KEY,
	año_inicio YEAR(4),
	año_final YEAR(4)
);