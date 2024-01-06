#!/bin/bash

#Hay que añadir en crontab la siguiente linea (0 1 * * * /ruta/del/script/tu_script.sh)

dia_semana=$(date '+%u')
fecha=$(date)


if [ "$dia_semana" -eq 7 ]; then

    tar czf "/copia_seguridad/completa/copia_completa_$fecha.tgz" /home /etc /root
else

    tar czf "/copia_seguridad_incremental/$(date '+%m_%d_%Y')/copia_incremental_$fecha.tgz" /etc
fi


date '+%H:%M:%S' >> "/copia_seguridad/fecha.txt"

echo "Copia de seguridad generada y archivo fecha.txt creado."
