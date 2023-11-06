SELECT SUM(presupuesto) AS suma_departamentos FROM departamento;

SELECT SUM(presupuesto/7) AS media_departamento FROM departamento;

SELECT MIN(presupuesto) FROM departamento;

SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto ASC LIMIT 1;

SELECT presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 1;

SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 1;

SELECT id FROM empleado ORDER BY id DESC LIMIT 1;

SELECT id FROM empleado ORDER BY id DESC LIMIT 2, 1;

SELECT d.nombre, d.id FROM empleado e LEFT JOIN departamento d ON e.id_departamento=d.id;

SELECT d.nombre, d.id FROM empleado e LEFT JOIN departamento d ON e.id_departamento=d.id WHERE e.id_departamento=d.id IS NOT NULL;

SELECT d.id FROM empleado e LEFT JOIN departamento d ON e.id_departamento=d.id WHERE presupuesto>200000;
