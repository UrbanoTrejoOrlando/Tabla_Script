--Crear tabla de puesto---
CREATE TABLE puesto(
   id_puesto INT AUTO_INCREMENT,
   puesto VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_puesto)
);

---- Creacion de tabla trabajador-----
CREATE TABLE trabajador(
   id_trabajador INT AUTO_INCREMENT,
   nombre VARCHAR(20) NOT NULL,
   apellido_paterno VARCHAR(20) NOT NULL,
   apellido_materno VARCHAR(20) NOT NULL,
   sueldo DECIMAL(9,2) NOT NULL,
   direccion VARCHAR(50) NOT NULL,
   correo VARCHAR(20) NOT NULL,
   telefono VARCHAR(10) NOT NULL,
   id_puesto INT NOT NULL,
   PRIMARY KEY(id_trabajador),
   FOREIGN KEY(id_puesto) REFERENCES puesto(id_puesto)
);

