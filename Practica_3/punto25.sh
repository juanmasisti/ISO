#!/bin/bash
if [ $# -gt 2 ];then
	echo "Parámetros invalidos"
	exit 1
fi

arreglo=( $(cat /etc/group | grep users | cut -d: -f4| tr ',' ' '))

case $1 in
	"-b")
		if [ ! $2 -lt 0 ] && [ ! $2 -gt ${#arreglo[*]} ];then
			echo "${arreglo[$2]}"
		else
			echo "Valor de n invalido"
		fi
	;;
	"-l")
		echo "Longitud del arreglo: ${#arreglo[*]}"
	;;
	"-i")
		echo "${arreglo[*]}"
	;;
	*)
		echo "Numero de parametros invalido"
	;;

esac

exit 0

