# Función para eliminar un registro
eliminar_registro() {
	read -p "Ingrese el Id del trabajador que desea eliminar:: " id
	mysql -u root -e "USE truper; CALL proc_eliminar_registro($id)"
	echo "Trabajador eliminado correctamente"
	echo ""
}

# Función para modificar un registro
modificar_registro() {
	read -p  "Ingrese el Id del trabajador que desea modificar: " id
	echo ""
	read -p "Ingresa el nombre: " nombre
	read -p "Ingresa el apellido paterno: " apellido_p
	read -p "Ingresa el apellido materno: " apellido_m
	read -p "Ingresa el sueldo: " sueldo
	read -p "Ingresa la direccion: " direccion
	read -p "Ingresa el correo: " correo
	read -p "Ingresa el telefono: " telefono
	read -p "Ingresa el id del puesto: " puesto
	
	mysql -u root -e "USE truper; CALL proc_actualizar_datos($id,'$nombre','$apellido_p','$apellido_m',$sueldo,'$direccion','$correo','$telefono',$puesto)"
	echo "Actualizacion realizada correctamente"
	echo ""
}
# Funcion para insertar un registro
insertar_registro() {
	read -p "Ingresa el nombre: " nombre
	read -p "Ingresa el apellido paterno: " apellido_p
	read -p "Ingresa el apellido materno: " apellido_m
	read -p "Ingresa el sueldo: " sueldo
	read -p "Ingresa la direccion: " direccion
	read -p "Ingresa el correo: " correo
	read -p "Ingresa el telefono: " telefono
	read -p "Ingresa el id del puesto: " puesto

    mysql -u root -e "USE truper; CALL proc_inserta_trabajador('$nombre', '$apellido_p', '$apellido_m', $sueldo, '$direccion', '$correo', '$telefono', $puesto);"    
    echo "Insercion correcta"
    echo ""
}

# Función para respaldar los datos de la tabla
respaldar_informacion() {
	mysqldump -u root truper trabajador > respaldo_base.sql
 	echo "Respaldo correcto"
	echo ""
}

# Función para visualizar la información de la tabla en pantalla
visualizar_tabla() {
    mysql -u root -e "use truper; CALL proc_consultar_trabajador();"
    echo "Consulta valida"
    echo ""
}

# Menú principal
while true; do
    echo "Seleccione una opción:"
    echo "1) Eliminar un registro"
    echo "2) Modificar un registro"
    echo "3) Insertar un registro"
    echo "4) Respaldar la información de la tabla"
    echo "5) Visualizar la información de la tabla"
    echo "6) Salir"
    read opcion

    case $opcion in
        1) eliminar_registro ;;
        2) modificar_registro ;;
        3) insertar_registro ;;
        4) respaldar_informacion ;;
        5) visualizar_tabla ;;
        6) echo "Saliendo del script."; exit ;;
        *) echo "Opción no válida";;
    esac
done

