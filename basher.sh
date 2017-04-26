#!/bin/bash
# Crate a new file taking as first argument the file name
if [ $1 = "crear" ]; then
	if [ ! -f $2 ]; then
		echo "Creado el archivo $2"
		touch $2
		touch LISTA
		echo $2 > LISTA
	else
		echo "Ya existe un archivo con el nombre: $2"
	fi
# List all files created in the dir
elif [ $1 = "listar" ]; then
	if [ ! -f LISTA ]; then
		echo "No se ha creado ningun archivo"
	else
		cat LISTA
	fi
# Show the designed file in screen
elif [ $1 = "leer" ]; then
	echo "$(cat $2)"
# Show mini man with the default option
else
	echo "Parametro incorrecto"
	echo "Forma de uso: "
fi
