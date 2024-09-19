#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Se espera un directorio como parametro"
	exit 1
fi

arreglo=()

if [ -d $1 ]; then
	for  archivo in "$1"/*; do
		if [ -f "$archivo" ]; then
			arreglo+=("$archivo")
		fi
	done
else
	echo "El parametro recibido no es un directorio existente"
fi

function delete {
	echo "Ingrese un archivo a eliminar"
	read a
	local pos=0
	for i in "${arreglo[*]}"; do
		if [ "$i" == "$a" ]; then
			unset arreglo[$pos]
			rm "$a"
			break
		fi
		((pos++))
	done
}

function index {
	echo "Ingrese un archivo para ver el indice"
	read archivo
	local pos=0
	for i in "${arreglo[*]}"; do
		if [ "$i" == "$archivo" ]; then
			echo "Indice del archivo: $pos "
			break
		fi
		((pos++))
	done
}

function size {
	echo "Cantidad de archivos: ${#arreglo[*]}"
}

function list {
	echo "Listado de archivos: ${arreglo[*]}"
}

cant=0
select i in "delete" "index" "size" "list" "exit"
do
	case $i in
		"delete")
			((cant++))
			delete
		;;
		"index")
			((cant++))
			index
		;;
		"size")
			((cant++))
			size
		;;
		"list")
			((cant++))
			list
		;;
		"exit")
			echo "Cantidad de interacciones: $cant"
			exit 0
		;;
		*)
			echo "Ingrese una opcion valida"
		;;
	esac
done
