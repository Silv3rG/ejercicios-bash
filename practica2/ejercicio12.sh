#!/bin/bash

#funciones

function sumar(){
 echo "La suma es: $(($num1 + $num2))"
}

function restar(){
 echo "La resta es: $(($num1 - $num2))"
}

function dividir(){
 echo "La division es: $(($num1 / $num2))"
}

function multiplicar(){
 echo "La multiplicacion es: $(($num1 * $num2))"
}

function salir(){
 exit
}
ç
function numeros(){
read -p "Dime un numero: " num1
read -p "Dime otro numero: " num2

}

while true; do

echo "1 - Sumar"
echo "2 - Restar"
echo "3 - Dividir"
echo "4 - Multiplicar"
echo "0 - Salir"

read -p "Selecciona una opcion: " opcion

case $opcion in
      1)
        numeros
        sumar
       ;;
      2)
        numeros
        restar
       ;;
      3)
        numeros
        dividir
       ;;
      4)
        numeros
        multiplicar
       ;;
      0)
        salir
       ;;
      *) echo "Opcion no valida"
      ;;
esac
done

