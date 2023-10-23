SELECT e.*,d.* FROM empleado e LEFT JOIN departamento d ON e.id_departamento=d.id;

SELECT e.*,d.* FROM empleado e LEFT JOIN departamento d ON e.id_departamento=d.id WHERE e.id_departamento=d.id IS NULL;

SELECT e.*,d.* FROM empleado e RIGHT JOIN departamento d ON e.id_departamento=d.id WHERE d.id=e.id_departamento IS NULL;

SELECT * FROM empleado e JOIN departamento d ORDER BY d.nombre;

SELECT * FROM empleado e JOIN departamento d WHERE e.id_departamento=d.id IS NULL;
