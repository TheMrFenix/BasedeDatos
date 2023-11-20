
SELECT DISTINCT(id),nombre,apellido1,apellido2 FROM cliente ORDER BY nombre;

SELECT * FROM cliente c LEFT JOIN pedido p ON p.id_cliente=c.id ORDER BY c.nombre;

SELECT * FROM pedido;

SELECT * FROM cliente c JOIN pedido p WHERE fecha BETWEEN '2017-01-01' AND '2017-12-30' AND cantidad>=300 AND cantidad<=1000; 
