SELECT e.nombre,e.apellido1,e.apellido2,d.* FROM empleado e JOIN departamento d ON d.id=e.id_departamento;

SELECT e.nombre,e.apellido1,e.apellido2,d.* FROM empleado e JOIN departamento d ON d.id=e.id_departamento ORDER BY d.nombre ASC, e.apellido1, e.apellido2, e.nombre;

SELECT e.nombre,e.apellido1,e.apellido2,d.id,d.nombre FROM empleado e JOIN departamento d ON d.id=e.id_departamento;

SELECT e.nombre,e.apellido1,e.apellido2,d.id,d.nombre,(d.presupuesto - d.gastos) AS presupuesto_actual FROM empleado e JOIN departamento d ON d.id=e.id_departamento;

SELECT e.nif,d.* FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE e.nif LIKE '%38382980M%';

SELECT e.nombre,e.apellido1,e.apellido2,d.* FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE e.nombre LIKE '%Pepe%';

SELECT e.*,d.nombre FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE d.nombre LIKE '%I+D%' ORDER BY e.nombre ASC;

SELECT e.*,d.nombre FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE d.nombre IN('Sistemas','Contabilidad','I+D') ORDER BY e.nombre ASC;

SELECT e.nombre,d.presupuesto FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE NOT d.presupuesto BETWEEN 100000 AND 200000;

SELECT DISTINCT(d.nombre),e.nombre,e.apellido1,e.apellido2 FROM empleado e JOIN departamento d ON d.id=e.id_departamento WHERE e.apellido2 IS NULL;