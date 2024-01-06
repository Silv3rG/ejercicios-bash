#!/bin/bash

cuarentena="/root/cuarentena"

if [ ! -d "$cuarentena" ]; then
    sudo mkdir -p "$cuarentena"
fi


find / -type f -name "*Hack*" | while read -r archivo; do

    sudo mv "$archivo" "$cuarentena"
    echo "Archivo $archivo movido a $cuarentena"
done

echo "Archivos que contienen la palabra 'Hack' movidos a $cuarentena"





