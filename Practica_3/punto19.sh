#!/bin/bash
if [ $# -ne 0 ]; then
	echo "El script no debe recibir parametros"
	exit 1
else
	echo "Menu de comandos"
	select opcion in $(ls) Salir; do  # Esta línea inicia un bucle select y permite al usuario seleccionar una opción del menú. Las opciones del menú se generan dinámicamente a partir de los archivos en el directorio actual (obtenidos mediante $(ls)) más la opción Salir.
		case $opcion in
			"Salir")
				echo "Saliendo..."
				exit 0
			;;
			*)
				bash $opcion
			;;
		esac
	done
fi
exit 0

