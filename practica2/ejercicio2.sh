#!/bin/bash

if [[ -z $1 || -z $2 ]]  ; then
  echo "Error, debes poner dos parametros al ejecutar el script (./ejercicio2.sh x y)"
else
 echo $((z=$1+$2));
fi 
