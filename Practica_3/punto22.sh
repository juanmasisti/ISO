#!/bin/bash
if [ $# -ne 0 ]; then
	echo "El script no debe recibir parametros"
	exit 1
else
	num=(10 3 5 7 9 3 5 4)
	resultado=1
	function productoria {
		for i in ${num[@]}; do
			resultado=$((resultado * i))
		done
		echo "El resultado de la productoria es: $resultado"
	}

	#Testeo
	productoria
fi
exit 0
