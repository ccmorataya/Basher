#!/bin/bash
# Crate a new file taking as first argument the file name
if [ $1 = "crear" ]; then
	if [ ! -f $1 ]; then
		echo "Ya existe un archivo con el nombre: $1"
	else
		echo "Creado el archivo $2"
		touch $2
		touch LISTA
		echo $2 > LISTA
	fi
# List all files created in the dir
elif [ $1 = "listar" ]; then
	if [ ! -f LISTA ]; then
		echo "No se ha creado ningun archivo"
	else
		cat LISTA
	fi
fi
