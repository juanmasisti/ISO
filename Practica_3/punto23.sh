#!/bin/bash
if [ $# -ne 0 ]; then
        echo "El script no debe recibir parametros"
        exit 1
else
        num=(10 3 5 7 9 3 5 4)
        for i in ${num[@]}; do
        	if ((i % 2 == 0)); then
			echo "Numero par: $i"
		else
			((cantImp++))
        	fi
	done
        echo "Ĺa cantidad de numeros impares que posee el arreglo es de: $cantImp"
fi
exit 0

