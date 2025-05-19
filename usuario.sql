--- Creacion de la base de datos --
CREATE DATABASE truper;
--Creacion de un usuario
CREATE USER 'orlando'@'%' IDENTIFIED BY 'database';
-- Otorgar permisos al usuario sobre la base de datos
GRANT ALL PRIVILEGES ON truper.* TO 'orlando'@'%';
-- Guardar cambios
FLUSH PRIVILEGES;

--Usar la base de datos ---
USE truper;


