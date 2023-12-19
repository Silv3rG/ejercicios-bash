#!/bin/bash

read -p  "Introduce un numero: " num1

while true: do


read -p "Introduce otro: " num2

if [[num2 -ne 0]]; then
 echo $(( total=num1+num2 ));
else
 exit 0
fi

done
