---Eliminacion del procedure
DROP PROCEDURE IF EXISTS proc_eliminar_registro;

DELIMITER //
CREATE PROCEDURE proc_eliminar_registro(
   IN p_id_trabajador INT
)
BEGIN
   DELETE FROM trabajador WHERE id_trabajador = p_id_trabajador;
END //
DELIMITER ;


