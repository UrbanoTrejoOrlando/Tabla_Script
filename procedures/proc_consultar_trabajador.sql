--Eliminar procedure consultar
DROP PROCEDURE IF EXISTS proc_consultar_trabajador;

DELIMITER //
CREATE PROCEDURE proc_consultar_trabajador()
BEGIN
   SELECT
      nombre,
      apellido_paterno,
      apellido_materno,
      sueldo,
      direccion,
      correo,
      telefono,
      puesto
      FROM
      trabajador
      INNER JOIN puesto ON trabajador.id_puesto = puesto.id_puesto;
END //
DELIMITER ;

--Llamada al procedure
CALL proc_consultar_trabajador();

