SELECT * FROM producto

SELECT nombre FROM producto

SELECT nombre,precio FROM producto

SELECT nombre,(precio*7.37),(precio*6.91) FROM producto

SELECT nombre,(precio*7.37) AS euros,(precio*6.91) AS dolares FROM producto

SELECT UPPER(nombre), precio FROM producto

SELECT LOWER(nombre), precio FROM producto

SELECT nombre,UPPER(SUBSTRING(nombre,1,2)) FROM fabricante

SELECT nombre,ROUND(precio) FROM producto

SELECT nombre,TRUNCATE(precio,0) FROM producto

SELECT fabricante.id FROM producto JOIN fabricante ON producto.id_fabricante=fabricante.id

SELECT distinct(fabricante.id) FROM producto JOIN fabricante ON producto.id_fabricante=fabricante.id

SELECT nombre FROM fabricante ORDER BY(nombre) ASC

SELECT nombre FROM fabricante ORDER BY(nombre) DESC

SELECT nombre,precio FROM producto ORDER BY nombre ASC,precio DESC

SELECT * FROM fabricante LIMIT 5 

SELECT * FROM fabricante LIMIT 3,2

SELECT nombre,precio FROM producto ORDER BY precio ASC LIMIT 1

SELECT nombre,precio FROM producto ORDER BY precio DESC LIMIT 1

SELECT nombre,id_fabricante FROM producto WHERE id_fabricante= 2

SELECT nombre,precio FROM producto WHERE precio<=120

SELECT nombre,precio FROM producto WHERE precio>=400

SELECT nombre,precio FROM producto WHERE precio<400

SELECT * FROM producto WHERE precio>=80 AND precio<=300

SELECT * FROM producto WHERE precio>=60 AND precio<=200

SELECT * FROM producto WHERE precio>200 AND id_fabricante=6

SELECT * FROM producto WHERE id_fabricante=1 OR id_fabricante=3 OR id_fabricante=5

SELECT * FROM producto WHERE id_fabricante IN(1,3,5)

SELECT nombre,(precio*100) AS céntimos FROM producto

SELECT nombre FROM fabricante WHERE nombre LIKE 'S%'

SELECT nombre FROM fabricante WHERE nombre LIKE '%e'

SELECT nombre FROM fabricante WHERE nombre LIKE '%w%'

SELECT nombre FROM fabricante WHERE CHAR_LENGTH(nombre)<=4

SELECT nombre FROM producto WHERE nombre LIKE '%Portátil%'

SELECT nombre,precio FROM producto WHERE nombre LIKE '%Monitor%' AND precio <=215

SELECT nombre,precio FROM producto WHERE precio >=180 ORDER BY precio DESC, nombre ASC
