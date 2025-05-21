---Eliminacion del procedure actualizar
DROP PROCEDURE IF EXISTS proc_actualizar_datos;

---Ṕrocedure para actualizar registros
DELIMITER //
CREATE PROCEDURE proc_actualizar_datos(
   IN p_id_trabajador INT,
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
   UPDATE trabajador SET
      nombre = p_nombre,
      apellido_paterno = p_apellido_paterno,
      apellido_materno = p_apellido_materno,
      sueldo = p_sueldo,
      direccion = p_direccion,
      correo = p_correo,
      telefono = p_telefono,
      id_puesto = p_puesto
      WHERE id_trabajador = p_id_trabajador;
END //
DELIMITER ;

CALL proc_actualizar_datos(3, 'neto','Archundia','Montiel',4000.00,'canalejas','neto@gmail.com','5555432190',4);

