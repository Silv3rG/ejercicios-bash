#!/bin/bash

# Hay  que añadir en crontab la siguiente linea (*/10 * * * * /ruta/del/script/ejercicio6.sh)

info=$(w)

echo "$w" >> /var/log/historial.txt

