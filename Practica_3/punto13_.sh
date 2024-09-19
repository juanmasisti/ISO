#!/bin/bash

echo "Número   Cuadrado"

for ((numero = 1; numero <= 100; numero++)); do
    cuadrado=$((numero * numero))
    echo "$numero        $cuadrado"
done
