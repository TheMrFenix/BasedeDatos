CREATE DATABASE VentaAutos;
USE VentaAutos;

CREATE TABLE Cliente(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) direccion NOT NULL,
	VARCHAR(50) telefono NOT NULL,
	VARCHAR(50) correo_electronico NOT NULL
);
	
CREATE TABLE Empleado(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(50) puesto NOT NULL,
	DOUBLE salario
);

CREATE TABLE Vehiculo(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(10) modelo NOT NULL,
	DOUBLE precio,
	BOOLEAN disponible
);

CREATE TABLE Concesionario(
	PRIMARY KEY INTEGER(20) id,
	VARCHAR(50) nombre NOT NULL,
	VARCHAR(100) direccion NOT NULL,
	INTEGER(20) id_vehiculo,
	INTEGER(20) id_empleado,
	FOREIGN KEY(id_vehiculo) REFERENCES Vehiculo(id),
	FOREIGN KEY(id_empleado) REFERENCES Empleado(id)
);

CREATE TABLE Transaccion(
	PRIMARY KEY INTEGER(20) id,
	DATE fecha,
	INTEGER(20) id_vehiculo,
	INTEGER(20) id_cliente,
	INTEGER(20) id_empleado,
	FOREIGN KEY(id_vehiculo) REFERENCES Vehiculo(id),
	FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
	FOREIGN KEY(id_empleado) REFERENCES Empleado(id)
);