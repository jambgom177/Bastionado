#!/bin/bash

if [ $# -eq 0 ]; then #Nos enumera los parámetros pasado y valida si no hay ninguno
    echo "No has introducido ningún parámetro"
else #Si la validación anterior no se cumple pasará por aquí
    IFS="-" #Cambiamos el espacio por el caracter que se pase por IFS
    echo "$*"
fi