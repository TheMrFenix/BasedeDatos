SELECT apellido1 FROM empleado

SELECT DISTINCT(apellido1) FROM empleado

SELECT * FROM empleado

SELECT nombre,apellido1,apellido2 FROM empleado

SELECT id_departamento FROM empleado

SELECT DISTINCT(id_departamento) FROM empleado

SELECT UPPER(CONCAT(nombre,apellido1,apellido2)) FROM empleado

SELECT LOWER(CONCAT(nombre,apellido1,apellido2)) FROM empleado

SELECT id,SUBSTRING(nif,2,7) AS nif1,SUBSTRING(nif,9,1) AS nif2 FROM empleado ORDER BY id

SELECT nombre, (presupuesto - gastos) AS Presupuesto_actual FROM departamento

SELECT nombre, (presupuesto - gastos) AS Presupuesto_actual FROM departamento ORDER BY presupuesto_actual ASC

SELECT nombre FROM departamento ORDER BY nombre ASC

SELECT nombre FROM departamento ORDER BY nombre DESC

SELECT apellido1,apellido2,nombre FROM empleado ORDER BY apellido1

SELECT nombre,presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 3

SELECT nombre,presupuesto FROM departamento ORDER BY presupuesto ASC LIMIT 3

SELECT nombre,gastos FROM departamento ORDER BY gastos DESC LIMIT 2

SELECT nombre,gastos FROM departamento ORDER BY gastos ASC LIMIT 2

SELECT * FROM empleado LIMIT 2,5

SELECT nombre,presupuesto FROM departamento WHERE presupuesto>=150000

SELECT nombre,presupuesto FROM departamento WHERE presupuesto<5000

SELECT nombre,presupuesto FROM departamento WHERE presupuesto>100000 AND presupuesto<200000

SELECT nombre,presupuesto FROM departamento WHERE NOT presupuesto>100000 AND presupuesto<200000

SELECT nombre,presupuesto FROM departamento WHERE presupuesto BETWEEN 100000 AND 200000

SELECT nombre,presupuesto FROM departamento WHERE NOT presupuesto BETWEEN 100000 AND 200000

SELECT nombre,presupuesto,gastos FROM departamento WHERE gastos>presupuesto

SELECT nombre,presupuesto,gastos FROM departamento WHERE presupuesto>gastos

SELECT nombre,presupuesto,gastos FROM departamento WHERE presupuesto=gastos

SELECT * FROM empleado WHERE apellido2 IS NULL

SELECT * FROM empleado WHERE apellido2 IS NOT NULL

SELECT * FROM empleado WHERE apellido2 LIKE '%López%'

SELECT * FROM empleado WHERE apellido2 LIKE '%Díaz%' OR apellido2 like '%Moreno%'

SELECT * FROM empleado WHERE apellido2 IN('Díaz','Moreno')

SELECT nombre,apellido1,apellido2,nif,id_departamento FROM empleado WHERE id_departamento=3

SELECT nombre,apellido1,apellido2,nif,id_departamento FROM empleado WHERE id_departamento IN(2,4,5)