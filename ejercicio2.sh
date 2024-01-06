#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: ./ejercicio2.sh [ahora | N]"
    exit 1
fi

case "$1" in
    ahora)
        echo "Reiniciando el equipo ahora..."
        sudo shutdown -r now
        ;;
    [0-9]*)
        echo "Reiniciando el equipo en $1 minutos..."
        sleep "$1" m
        sudo shutdown -r now
        ;;
    *)
        echo "Opciones disponibles:"
        echo "  ahora        Reiniciar el equipo ahora"
        echo "  N            Reiniciar el equipo en N minutos"
        ;;
esac

