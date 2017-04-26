#!/bin/bash
# @creator: Cristian Morataya @ccmorataya [cris.morataya@gmail.com]
# @repo: https://github.com/ccmorataya/Basher
# Crate a new file taking as first argument the file name
if [ $# -eq 0 ] || [ $1 = "-h" ]; then
	echo "Forma de uso: "
	echo "./basher.sh [OPCION] [NOMBRE_ARCHIVO]"
	echo "Donde OPCION:"
	echo -e "\tcrear\t\tCrea un nuevo archivo"
	echo -e "\tlistar\t\tLista todos los archivos creados"
	echo -e "\tleer\t\tMuestra en pantalla el contenido del archivo"
	echo -e "\teliminar\tElimina el archivo designado"
	echo -e "\tcleanall\tLimpia el directorio actual eliminando todos los archivos creados"
elif [ $1 = "crear" ]; then
	if [ ! -f $2 ]; then
		echo "Creado el archivo '$2'"
		touch $2
		touch XYZ
		echo $2 >> XYZ
	else
		echo "Ya existe un archivo con el nombre: '$2'"
	fi
# List all files created in the dir
elif [ $1 = "listar" ]; then
	if [ ! -f XYZ ]; then
		echo "No se ha creado ningun archivo"
	else
		cat XYZ
	fi
# Show the designed file in screen
elif [ $1 = "leer" ]; then
	echo "$(cat $2)"
elif [ $1 = "eliminar" ]; then
	if [ ! -f $2 ]; then
		echo "No existe el archivo '$2', que se desea eliminar"
	else
		echo "Se ha eliminado el archivo '$2'"
		rm $2
	fi
# Clean the directory
elif [ $1 = "cleanall" ]; then
	echo "AVISO: Se han eliminado todos los archivos"
	find . ! -name 'basher.sh' -type f -exec rm -f {} +
# Show mini man with the default option
else
	echo "Opción incorrecta utliza -h para mostrar la ayuda"
fi
