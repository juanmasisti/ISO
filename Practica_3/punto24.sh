#!/bin/bash
if [ $# -ne 0 ]; then
        echo "El script no debe recibir parametros"
        exit 1
else
	vector1=( 1 80 65 35 2 )
	vector2=( 5 98 3 41 8 )
        for ((i = 0; i < ${#vector1[*]}; i++)); do
		suma=$((vector1[i] + vector2[i]))
		echo "La suma de los elementos de la posision $i es de $suma"
        done
fi
exit 0


