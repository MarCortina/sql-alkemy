-- Para cada caso, escriba la consulta correspondiente:

-- >Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY fecha_nacimiento;

-- Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT * FROM PROFESOR WHERE SALARIO >= 65000;

-- Todos los profesores que nacieron en la década del 80.
SELECT * FROM PROFESOR WHERE fecha_nacimiento >= '1980-01-01' AND fecha_nacimiento <= '1989-12-31';

-- 5 registros
SELECT * FROM PROFESOR LIMIT 5;

-- Todos los profesores cuyo apellido inicie con la letra “P”
SELECT * FROM PROFESRO WHERE apellido LIKE 'P%';

-- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM PROFESOR WHERE fecha_nacimiento >= '1980-01-01' AND fecha_nacimiento <= '1989-12-31' AND SALARIO >= 80000;