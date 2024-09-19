#!/bin/bash
if [$# -ne 3 ]; then
	echo "Error: Se debe ingresar como parametro tipo de operacion y 2 numeros"
	exit 1
else
	echo "Resultado: $(expr $2 $1 $3)"
fi

#Script realizado correctamente
exit 0
