-- Verificar si el procedure existe
DROP PROCEDURE IF EXISTS proc_inserta_trabajador;

---- Creacion del Procedure para insertar u ntrabajador
DELIMITER //
CREATE PROCEDURE proc_inserta_trabajador(
   IN p_nombre VARCHAR(20),
   IN p_apellido_paterno VARCHAR(20),
   IN p_apellido_materno VARCHAR(20),
   IN p_sueldo DECIMAL(9,2),
   IN p_direccion VARCHAR(50),
   IN p_correo VARCHAR(20),
   IN p_telefono VARCHAR(10),
   IN p_puesto INT
)
BEGIN
   INSERT INTO trabajador (nombre, apellido_paterno, apellido_materno, sueldo, direccion, correo, telefono, id_puesto)
         VALUES (p_nombre, p_apellido_paterno, p_apellido_materno, p_sueldo, p_direccion, p_correo, p_telefono, p_puesto);
END //
DELIMITER ;

--Eliminar al procedure
DROP PROCEDURE IF EXISTS proc_inserta_trabajador;
--Llamada a los procedures

CALL proc_inserta_trabajador('Orlando','Urbano','Trejo',13500.00,'Calle 123, Ciudad','orlando@gmail.com','5614364142',1);
CALL proc_inserta_trabajador('Maria','Martinez','Garcia',5000.00,'Av. Principal 456','maria@gmail.com','4432901689',2);
CALL proc_inserta_trabajador('Ernesto','Archundia','Montiel',600.00,'Calle Secundaria 789, Ciudad','neto@gmail.com','8756410093',3);
CALL proc_inserta_trabajador('Raul','Hernandez','Lopez',6500.00,'Av. Central 789, Ciudad','raul@gmail.com','5566443322',4);
CALL proc_inserta_trabajador('Fatima','Martinez','Cadena',3000.00,'Calle Principal 567, Ciudad','fatima@gmail.com','5566789013',5);
CALL proc_inserta_trabajador('Horacio','Rosales','Velasco',2800.00,'Calle 321, Ciudad','horacio@gmail.com','7788554421',6);
CALL proc_inserta_trabajador('Sofia','Rodriguez','Martin',3600.00,'Av. Secundaria 234, Ciudad','sofia@gmail.com','4433112590',7);
CALL proc_inserta_trabajador('Elena','Perez','Gomez',10000.00,'Calle Central 123, Ciudad','elena@gmail.com','5544097139',8);
CALL proc_inserta_trabajador('Juan','Gonzalez','Lopez',12800.00,'Av. Principal 890, Ciudad','juan@gmail.com','5677258011',9);
CALL proc_inserta_trabajador('Esmeralda','Urbano','Cruz',7200.00,'Calle Secundaria 567, Ciudad','esme@gmail.com','564318790',10);

