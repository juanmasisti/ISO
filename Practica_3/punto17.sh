#!/bin/bash

if [ $# -ne 0 ]; then
	echo "El script no debe recibir parámetros"
	exit 1
else
	for file in $(ls); do
		newName=$(echo $file | tr '[:lower:]' '[:upper:]' | tr -d 'aA')
		"Nombre original: $file"
		"Nombre modificado: $newName"
	done
fi
exit 0
