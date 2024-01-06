#!/bin/bash

ls -lR / 2>/dev/null | grep -E "^(.{7}rwx)" > archivos_peligrosos.txt

if [ -s archivos_peligrosos.txt ]; then
    echo "El resultado se ha guardado en archivos_peligrosos.txt"
else
   echo "No se han encontrado archivos peligrosos."
fi
