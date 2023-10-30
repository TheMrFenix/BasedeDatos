
SELECT * FROM pedido ORDER BY fecha DESC;

SELECT * FROM pedido ORDER BY cantidad DESC LIMIT 2;

SELECT DISTINCT(id_cliente) FROM pedido;

SELECT * FROM pedido WHERE cantidad>500 AND fecha BETWEEN '2017-01-01' AND '2017-12-30';

SELECT nombre,apellido1,apellido2,comision FROM comercial WHERE comision>=0.05 AND comision<=0.11;

SELECT comision FROM comercial ORDER BY comision DESC LIMIT 1;

SELECT id,nombre,apellido1 FROM cliente WHERE apellido2 IS NOT NULL ORDER BY apellido1, nombre;

SELECT nombre FROM cliente WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre;

SELECT nombre FROM cliente WHERE nombre NOT LIKE 'A%' ORDER BY nombre;

SELECT DISTINCT(nombre) FROM comercial WHERE nombre NOT LIKE '%o';
