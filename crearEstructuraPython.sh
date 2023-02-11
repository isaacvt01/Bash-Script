#!/bin/bash

read -p "Introduce un nombre de archivo: " nombre_archivo

if [ -d "$nombre_archivo" ]; then
  echo "El directorio $nombre_archivo ya existe."
  exit 1
fi

mkdir $nombre_archivo || {
  echo "No se pudo crear el directorio $nombre_archivo."
  exit 1
}

cd $nombre_archivo || {
  echo "No se pudo acceder al directorio $nombre_archivo."
  exit 1
}

mkdir src || {
  echo "No se pudo crear el subdirectorio src."
  exit 1
}

mkdir test || {
  echo "No se pudo crear el subdirectorio test."
  exit 1
}

cd src || {
  echo "No se pudo acceder al subdirectorio src."
  exit 1
}

touch app.py || {
  echo "No se pudo crear el archivo app.py en el subdirectorio src."
  exit 1
}

cd ../test || {
  echo "No se pudo acceder al subdirectorio test."
  exit 1
}

touch test.py || {
  echo "No se pudo crear el archivo test.py en el subdirectorio test."
  exit 1
}

echo "Archivos creados exitosamente."

cd ..
cd ..
