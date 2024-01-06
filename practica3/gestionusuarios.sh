#!/bin/bash

id="alu$(echo "$3" | grep -o '^..')$(echo "$4" | grep -o '^..')$(echo "$2" | grep -o '^.')"

case "$1" in

      alta)
          if [ "$#" -lt 5 ]; then
             grupo=$id
             sudo groupadd $grupo
          else
             grupo=$5
          fi

          sudo useradd -m -g $grupo -G $grupo $id
          echo "Usuario $id creado en el grupo $grupo"
          ;;

     baja)
        sudo userdel -r $id
        echo "Usuario $id eliminado"
        ;;
    *)
        echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
        exit 1
        ;;
esac
