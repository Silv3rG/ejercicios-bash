#!/bin/bash

#Imprimir por pantalla
read -p "Dime un numero" num1
read -p "Dime otro numero" num2


echo "1 - Sumar"
echo "2 - Restar"
echo "3 - Dividir"
echo "4 - Multiplicar"
echo "0 - Salir"

read -p "Selecciona una opcion: " opcion

#funciones

function sumar(){
 (($num1 + $num2))
}

#
case $opcion in
      1)
       ;;

