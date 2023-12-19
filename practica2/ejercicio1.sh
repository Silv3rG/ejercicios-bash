#!/bin/bash

if [[ $1 -gt $2 ]]; then
  echo "$1 es mayor que $2"
elif [[ $1 -lt $2 ]]; then
  echo "$1 es menor que $2"
else
 echo "Los dos numeros son iguales"
fi 
