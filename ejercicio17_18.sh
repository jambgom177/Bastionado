#!/bin/bash

if [ $# -eq 0 ] #Si no se introduce ningún parametro entra aqui
then
    echo "No has introducido ningún parametro"
else
    if [ -d $1 ] #Si es un directorio entrará en esta validación
    then	
       	echo " $1 es un directorio"
    elif [ -f $1 ] #Si es un fichero entrará en esta validación
    then
	echo " $1 es un fichero"
    else #Si no es ninguno de los dos anteriores entonces no existe
        echo "No existe $1"
    fi
fi
