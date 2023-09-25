CREATE DATABASE infoblog;
USE infoblog;

CREATE TABLE usuario (
	id INTEGER PRIMARY KEY,
	login VARCHAR(30) NOT NULL,
	PASSWORD VARCHAR(32) NOT NULL,
	nickname VARCHAR(40) NOT NULL,
	email VARCHAR (40) NOT NULL UNIQUE 
);

CREATE TABLE posts(
	id INTEGER PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	fecha_publicacion TIMESTAMP,
	contenido TEXT,
	estatus CHAR(8),
	usuario_id INTEGER,
	CHECK(estatus IN('Activo','Inactivo'),
	FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE comentarios(
	id INTEGER PRIMARY KEY,
	comentario TEXT,
	usuario_id INTEGER,
	FOREIGN KEY (usuario_id) REFERENCES usuario(id),
	FOREIGN KEY (posts_id) REFERENCES posts(id)
);

CREATE TABLE categorias(
	id INTEGER PRIMARY KEY,
	categorias VARCHAR(30) NOT NULL
);

CREATE TABLE etiquetas(
	id INTEGER PRIMARY KEY,
	nombre_etiqueta VARCHAR(30) NOT NULL
);

CREATE TABLE postetiquetas(
	post_id INTEGER PRIMARY KEY,
	etiqueta_id INTEGER PRIMARY KEY,
	FOREIGN KEY (post_id) REFERENCES posts(id),
	FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(id)
);