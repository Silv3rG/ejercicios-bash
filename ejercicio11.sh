#!/bin/bash

numero=35

while [[ $num -ne $numero ]]
do

echo "Adivina el numero entre 1 y 100"
read num


   if [[ $num -eq $numero ]]; then
       echo "Enhorabuena"
   elif [[ $num -gt $numero ]]; then
       echo "El numero introducido es mayor"
   else
       echo "El numero introducido es menor"
   fi

done
