#!/bin/bash

contador=2
echo "Introduce un numero"
read num

for (( i=2; i<= $num/2; i++))
do
       num2=$(($num % $i))

       if [[ $num2 == 0 ]]; then
         ((contador++))
       fi

done

if  [[ $contador -le 2 ]]; then
       echo "El numero es primo"
else
      echo "El numero no es primo"
fi
