#!/bin/bash

archivoDeCopia=$(date +%Y-%m-%d_%H-%M-%S).tar.gz

read -p "Escribe la RUTA ABSOLUTA del fichero del que quieras hacer la copia de seguridad: " fichero

resultado=$(tar -zcvf $archivoDeCopia $fichero)
if [ $? -eq 0 ]; then
    echo "Copia de seguridad realizada correctamente en $PWD"
else
    echo "No se ha podido realizar la copia de seguridad"
fi
