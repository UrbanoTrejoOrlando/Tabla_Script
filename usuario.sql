--- Creacion de la base de datos --
CREATE DATABASE truper;

CREATE USER 'orlando'@'%' IDENTIFIED BY 'database';

GRANT ALL PRIVILEGES ON truper.* TO 'orlando'@'%';

FLUSH PRIVILEGES;

--Usar la base de datos ---
USE truper;


