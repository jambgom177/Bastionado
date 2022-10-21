#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No has introducido ningún parámetro"
    
else
    echo "Ha recibido $# parámetros"
    echo "Los parametro recibidos son : $@"
fi