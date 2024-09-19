#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Debe proporcionar exactamente dos números como parámetros."
    exit 1
fi

numero1=$1
numero2=$2

echo "Suma: `expr $numero1 + $numero2`"
echo "Resta: `expr $numero1 - $numero2`"
echo "Multiplicacion: `expr $numero1 \* $numero2`"

if [ $numero2 -eq 0 ]; then
    echo "Division: No es posible dividir por cero."
else
    echo "Division: `expr $numero1 / $numero2`"
fi

# El script se ejecutó correctamente, por lo que se puede salir con un código de salida 0
exit 0
