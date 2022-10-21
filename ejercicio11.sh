#!/bin/bash

if [ $# -lt 2 ]; then #Valida que los parámetros sean menor que dos
    echo "Se han pasado menos de dos parámetros" #Si es menor que dos entraría dentro del código
elif [ ! -f $2 ] #Valida que NO se un fichero el segundo parámetro y entonces entraría dentro
then
    echo "No existe ningún fichero en la ruta $2" #Muestra la ruta del fichero
else
    cat $2 #Muestra el interior del fichero que se pasa por parámetro
fi