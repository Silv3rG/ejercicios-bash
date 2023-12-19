#!/bin/bash

echo "Introduce un numero"
read num
num2=$(($num % 2))

if [[ $num2 == 0 ]]; then
     echo "El numero $num es par"
else
     echo "El numero $num es impar"
fi
