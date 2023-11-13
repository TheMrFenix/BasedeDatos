SELECT * FROM cliente cl LEFT JOIN pedido p ON p.id_cliente=cl.id ORDER BY cl.apellido1, cl.apellido2, cl.nombre;

SELECT * FROM comercial co LEFT JOIN pedido p ON p.id_comercial=co.id ORDER BY co.apellido1, co.apellido2, co.nombre;

SELECT * FROM cliente cl LEFT JOIN pedido p ON p.id_cliente=cl.id WHERE p.id_cliente IS NULL;

SELECT * FROM comercial co LEFT JOIN pedido p ON p.id_comercial=co.id WHERE p.id_comercial IS NULL;

SELECT CONCAT(c.nombre, ' ', c.apellido1, ' ', c.apellido2, ' (Cliente)') AS 'Resultado'
FROM cliente c LEFT JOIN pedido p ON c.id = p.id_cliente
WHERE p.id_cliente IS NULL
UNION
SELECT CONCAT(co.nombre, ' ', co.apellido1, ' ', co.apellido2, ' (Comercial)') 
FROM pedido p RIGHT JOIN comercial co ON co.id = p.id_comercial
WHERE p.id_comercial IS NULL

SELECT SUM(cantidad) AS total FROM pedido;

SELECT AVG(cantidad) AS promedio from pedido;

SELECT COUNT(DISTINCT id_comercial) AS total_comerciales FROM pedido;

SELECT COUNT(*) AS total_clientes FROM cliente;

SELECT MAX(cantidad) AS mayor_cantidad FROM pedido;

SELECT MIN(cantidad) AS menor_cantidad FROM pedido;

SELECT ciudad,MAX(categoria) AS maxima_categoria FROM cliente GROUP BY ciudad;

SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, MAX(p.cantidad) AS 'Máximo valor' FROM pedido p INNER JOIN cliente c ON p.id_cliente=c.id GROUP BY p.fecha;

SELECT p.fecha, MAX(p.cantidad) AS valor_maximo FROM pedido p INNER JOIN cliente c ON c.id=p.id_cliente GROUP BY p.fecha HAVING valor_maximo>2000;

SELECT c.id, c.nombre, c.apellido1, c.apellido2, MAX(p.cantidad) AS valor_maximo FROM pedido p INNER JOIN cliente c ON c.id=p.id_cliente WHERE p.fecha='2016-08-17' GROUP BY c.id;

SELECT c.id, c.nombre, c.apellido1, c.apellido2, COUNT(p.id) AS cantidad_pedidos FROM cliente c LEFT JOIN pedido p ON c.id=p.id_cliente GROUP BY c.id;

SELECT c.id, c.nombre, c.apellido1, c.apellido2, IFNULL(MAX(p.cantidad),0) AS cantidad_pedidos FROM pedido p INNER JOIN cliente c ON c.id=p.id_cliente WHERE YEAR(p.fecha)='2017' GROUP BY c.id;

SELECT c.id, c.nombre, c.apellido1, c.apellido2, IFNULL(MAX(p.cantidad),0) AS cantidad_maxima FROM cliente c LEFT JOIN pedido p ON c.id = p.id_cliente GROUP BY c.id;

SELECT YEAR(fecha) AS cada_año, MAX(cantidad) AS maximo_valor FROM pedido GROUP BY cada_año;

SELECT YEAR(fecha) AS cada_año, COUNT(*) AS cantidad_total FROM pedido GROUP BY cada_año;