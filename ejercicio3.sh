#!/bin/bash

if [[ -f $1 ]]; then
  echo "El archivo es un fichero y existe"
elif [[ -d $1 ]]; then
  echo "El archivo es un directorio y existe"
else
  echo "El archivo no existe o no es ni un fichero ni un directorio"
fi 
