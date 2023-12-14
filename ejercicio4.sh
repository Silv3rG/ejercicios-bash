#!/bin/bash

if [[ -r $1 ]]; then
  echo "El archivo existe y tenemos permisos de lectura"
  cat $1
else
  echo "El archivo no existe o no tienes los permisos necesarios"
fi 
