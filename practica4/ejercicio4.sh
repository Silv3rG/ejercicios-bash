#!/bin/bash

# Hay  que añadir en crontab la siguiente linea (@reboot ruta del script)

fecha=$(date '+%Y-%m-%d %H:%M:%S')

echo "Reinicio del sistema: $fecha" >> /var/log/reinicios.txt


