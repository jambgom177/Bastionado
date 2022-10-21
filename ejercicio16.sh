#!/bin/bash

if [ $# -lt 2 ]; then #Nos enumera los parámetros pasado y valida si son menos de dos
    echo "Has introducido menos de dos parámetros"
else #Si la validación anterior no se cumple pasará por aquí
    echo "Parametro 1: "$1
    echo "Parametro 2: "$2
    echo "Parametro 3: "$3
    echo "Parametro 4: "$4
    echo "Parametro 5: "$5
    echo "Parametro 6: "$6
    echo "Parametro 7: "$7
    echo "Parametro 8: "$8
    echo "Parametro 9: "$9
fi