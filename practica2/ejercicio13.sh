#!/bin/bash

read -p  "Introduce un numero: " num1
total=$num1

while true; do

   read -p "Introduce otro: " num2

if [[ num2 -ne 0 ]]; then
       total=$((total + num2))
       echo "La suma es $total"
else
       echo "La suma es $total"
       exit 0
fi

done
