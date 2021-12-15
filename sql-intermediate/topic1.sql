-- El objetivo de este ejercicio es poder hacer consultas que obtengan datos en forma agregada.

-- 1.Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.
SELECT CARRERA COUNT(*)
FROM ESTUDIANTES
WHERE CARRERA = 'Mecánica';

-- 2. Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.
SELECT MIN(SALARIO)
FROM PROFESOR
WHERE fecha_nacimiento >= '1980-01-01' AND fecha_nacimiento <= '1989-12-31';


-- 4. Escriba las siguientes consultas:

-- Cantidad de pasajeros por país
SELECT pais.nombre, COUNT(*)
FROM pais JOIN pasajero 
ON pais.idpais = pasajero.idpais
GROUP BY pais.nombre;

-- Suma de todos los pagos realizados
SELECT SUM(monto) 
FROM pago;

-- Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
SELECT pasajero.nombre, ROUND(SUM(pago.monto), 2)
FROM pasajero JOIN pago 
ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.nombre;

-- Promedio de los pagos que realizó un pasajero.
SELECT pasajero.nombre, AVG(pago.monto)
FROM pasajero JOIN pago 
ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.nombre;
