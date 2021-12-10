-- Cree una tabla llamada CURSO con los atributos:
-- =>Código de curso (clave primaria, entero no nulo)
-- =>Nombre (varchar no nulo)
-- =>Descripcion (varcha)
-- =>Turno (varchar no nulo)
CREATE TABLE CURSO (
    CODIGO_CURSO INTEGER NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR(50) NOT NULL,
    DESCRIPCION VARCHAR(50),
    TURNO VARCHAR(50) NOT NULL
);


-- Agregue un campo “cupo” de tipo numérico
ALTER TABLE CURSO ADD CUPO INTEGER;

-- Inserte datos en la tabla:
-- =>(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
-- =>(102, “Matemática Discreta”,””,”Tarde”,30)

INSERT INTO CURSO VALUES (101, 'Algoritmos', 'Algoritmos y Estructuras de Datos', 'Mañana', 35);
INSERT INTO CURSO VALUES (102, 'Matemática Discreta', '', 'Tarde', 30);


-- Intente ingresar un registro con el nombre nulo y verifique que no funciona.
INSERT INTO curso VALUES(103,"Bootcamp","Fullstack",NULL,50);
-- >output: NOT NULL constraint failed: CURSO.TURNO

-- Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
INSERT INTO curso VALUES(101,"Bootcamp","Fullstack","Noche",50);
-- >output: UNIQUE constraint failed: CURSO.CODIGO_CURSO

-- Actualice, para todos los cursos, el cupo en 25.
UPDATE CURSO SET CUPO = 25;

-- Elimine el curso Algoritmos.
DELETE FROM CURSO WHERE NOMBRE = "Algoritmos";
