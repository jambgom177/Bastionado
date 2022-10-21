#!/bin/bash
if [ $# -eq 0 ] ; then #Nos enumera los parámetros pasado y valida si no hay ninguno
    echo "No se están pasando ningún parametro al script"
else
    IFS="-"
    echo "$*"
fi