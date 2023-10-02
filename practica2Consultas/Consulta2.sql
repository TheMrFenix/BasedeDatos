SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante;

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante ORDER BY f.nombre ASC;

SELECT p.id,p.nombre,f.id,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante;

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante ORDER BY p.precio ASC LIMIT 1; 

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante ORDER BY p.precio DESC LIMIT 1;

SELECT p.*,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.nombre LIKE '%Lenovo%';

SELECT p.*,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.nombre LIKE '%Crucial%' AND p.precio >200;

SELECT p.*,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.id=1 OR f.id=3 OR f.id=5;

SELECT p.*,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.id IN(1,3,5);

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.nombre LIKE '%e';

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE f.nombre LIKE '%w%';

SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE p.precio >=180 ORDER BY p.precio DESC, p.nombre ASC;

SELECT p.id,f.* FROM producto p JOIN fabricante f ON f.id=p.id_fabricante WHERE p.id IN(4,5);
