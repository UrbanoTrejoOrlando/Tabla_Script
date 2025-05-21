---Eliminacion del procedure
DROP PROCEDURE IF EXISTS proc_eliminar_registro;

---Procedure para eliminar un registro de la base de datos
DELIMITER //
CREATE PROCEDURE proc_eliminar_registro(
   IN p_id_trabajador INT
)
BEGIN
   DELETE FROM trabajador WHERE id_trabajador = p_id_trabajador;
END //
DELIMITER ;


