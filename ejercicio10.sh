#!/bin/bash

if [ ! -d $1 ]; then #Valida de que NO (!) exista un directorio en la ruta que pasa por parámetro
    mkdir $1 #Crea un directorio
 else #Si no entra en el if, entrará directamente en el else
    echo "Ya existe un escritorio en la ruta $1" #Muestra por pantalla la ruta existente
fi #Cierra la validación