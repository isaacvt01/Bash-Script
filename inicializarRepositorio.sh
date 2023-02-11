#!/bin/bash

# El nombre asignador del repositorio se da al ejecutar el script
echo ESTE SCRIPT SOLO FUNCIONA SI ESTAS REGISTRADO EN GITHUB DESDE TU TERMINAL
echo debes introducir tu nombre de usuario correctamente
read -p "Introduce tu nombre de usuario en GitHub: " nombreUsuario
read -p "Introduce un nombre para tu repositorio: " nombreRepo


if [ -z "@nombreRepo" ]; then
  echo "Debes proporcionar un nombre de repositiorio"
  exit 1
fi

# Se crea un directorio con el nombre del repositorio

mkdir $nombreRepo
cd $nombreRepo

#Inicializar un repo local
git init

#Conectar el repositorio local con el repositorio remoto
curl -u $nombreUsuario https://api.github.com/user/repos -d "[\"name\":\"$nombreRepo\";"
git remote add origin https://github.com/$nombreUsuario/$nombreRepo.git


touch README.md
git add .
git commit -am "Initial commit"
git push -u origin master

cd ..
