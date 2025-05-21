--Veirificarsi si el procedure existe
DROP PROCEDURE IF proc_inserta_puesto;

------Creacion de procedure para inserta un puesto
DELIMITER //
CREATE PROCEDURE proc_inserta_puesto(
   IN p_puesto VARCHAR(50)
)
BEGIN
   INSERT INTO puesto (puesto) VALUES (p_puesto);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS proc_inserta_puesto;

---Llamada al procedure-------
CALL proc_inserta_puesto('Auxiliar Invetarios');
CALL proc_inserta_puesto('Operador de transporte de personal');
CALL proc_inserta_puesto('Supervisor de seguridad');
CALL proc_inserta_puesto('Verificador de productos');
CALL proc_inserta_puesto('Gerente de proyectos');
CALL proc_inserta_puesto('Facilitador Ambiental');
CALL proc_inserta_puesto('Monitorista');
CALL proc_inserta_puesto('Analista tráfico');
CALL proc_inserta_puesto('Auditor JR');
CALL proc_inserta_puesto('Checador');

--- Insertar datos de manera normal ---
INSERT INTO puesto (puesto) VALUES
   ('Auxiliar Invetarios'),
   ('Operador de transporte de personal'),
   ('Supervisor de seguridad'),
   ('Verificador de productos'),
   ('Gerente de proyectos'),
   ('Facilitador Ambiental'),
   ('Monitorista'),
   ('Analista tráfico'),
   ('AuditorJR');

