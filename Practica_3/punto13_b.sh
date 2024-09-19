#!/bin/bash
if [ $# -ne 0 ]; then
	exit 1
else
	select var in Listar DondeEstoy QuienEsta Salir
	do
		case $var in
			"Listar")
				echo "Contenido del directorio actual: $(ls)"
			;;
			"DondeEstoy")
				echo "Directorio actual: $(pwd)"
			;;
			"QuienEsta")
				echo "Usuarios conectados:  $(who)"
			;;
			"Salir")
				echo "Saliendo del script.."
				break
				;;
			*)
				echo "Opcion no válida."
		esac
	done
fi
exit 0
