#!/bin/bash

function menu() {

	indice=0
	while [ $indice -ne 6 ] ; do

	clear

    echo "+-----------------------------------------------------------------+"
    echo "|                      Menu de Scripts                            |"
    echo "+-----------------------------------------------------------------+"
    echo "|                                                                 |"
    echo "|    1-Crear copia de seguridad           	                   |"
    echo "|    2-Crear estructura de proyecto web                           |"
    echo "|    3-Crear estructura de proyecto Java con Maven	           |"
    echo "|    4-Inicializar repositorio GitHub                             |"
    echo "|    5-Crear estructura de proyecto Python                        |"
    echo "|    6-Salir del script                                           |"
    echo "|_________________________________________________________________|" 

read -p "Seleccione una opción: " indice
	if ! [[ $indice =~ ^[1-6]+$ ]]; then
		echo "Opción inválida, por favor seleccione una opción del menú."
		read -p "Presione una tecla para volver al menú: " tecla
		continue
	fi

	case $indice in
		
		1)
				. copiaDeSeguridad.sh;;
		2)
				. crearEstructuraHTML.sh;;
		3)
				. crearEstructuraMaven.sh;;
		4)
				. inicializarRepositorio.sh;;
		5)
				. crearEstructuraPython.sh;;
		6)
				break;;

	esac
	if [ $indice -ne 6 ]; then
	echo
	read -p "Presione una tecla para volver al menú: " tecla
	fi
done

}
menu
