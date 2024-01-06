#!/bin/bash

# Hay  que añadir en crontab la siguiente linea (*/2 * * * * /ruta/del/script/ejercicio8.sh)


num_usuarios=$(who | cut -d' ' -f1 | sort -u | wc -l)


echo " $(date) - Usuarios conectados: $num_usuarios"  >> /tmp/usuarios

