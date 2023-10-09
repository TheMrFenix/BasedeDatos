SELECT f.nombre,p.nombre FROM producto p RIGHT JOIN fabricante f ON p.id_fabricante=f.id;

SELECT f.nombre FROM fabricante f LEFT JOIN producto p ON p.id_fabricante=f.id WHERE p.id_fabricante=f.id IS NULL;