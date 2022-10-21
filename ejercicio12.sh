#!/bin/bash

if [ $# -ne 2 ]; then #Valida de que NO sea igual a 2
    echo "Debe introducir 2 parametros"
else
    if [ -e $2 ] #Si el fichero del segundo parámetro existe entra dentro
    then
        if [ -d $1 ] #Si el directorio existe entra dentro
        then
            echo "El directorio $1 ya existe por lo que no se crea de nuevo" 
            if [  ! -f $1/$2 ] #Si el fichero dentro del directorio no existe entra dentro
            then
                cp $2 $1 #Se copia el archivo dentro del directorio
		if [ "$?" = "0" ] #Se valida si recoge un 0 es que se ha ejecutado sin error
                then
			echo "Se ha copiado $2 en $1"
		else
			echo "Error al copiar el archivo $2 en $1"
		fi
            else #Si existe el fichero nos dice que se encuentra dentro
                echo "Ya existe un archivo con el nombre $2 dentro de $1"
            fi
        else #Si no existe directorio pasaría por aqui
            echo "No existe ningún directorio"
            mkdir $1 #Se crea el directorio
            cp $2 $1 #Se copia el archivo dentro de nuevo directorio
	    if [ "$?" = "0" ]
	    then 
	    	echo "Se ha creado el directorio $1 y copiado el fichero $2 dentro de el"
	    else
		echo "Error al copiar el archivo $2"
	    fi
        fi
    else #Si no existe el fichero pasará por aquí
        echo "El archivo pasado como segundo parametro no es existe en el directorio del script"
    fi
fi
