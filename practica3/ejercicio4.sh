#!/bin/bash

while IFS=' ' read -r accion nombre apellido1 apellido2 grupo || [[ -n "$accion" ]]; do
    id="alu$(echo "$apellido1" | grep -o '^..')$(echo "$apellido2" | grep -o '^..')$(echo "$nombre" | grep -o '^.')"

    case "$accion" in
        alta)
            if [ -z "$grupo" ]; then
                grupo=$id
                sudo groupadd "$grupo"
                echo "Se ha creado el grupo $grupo"
            fi

            sudo useradd -m -g "$grupo" -G "$grupo" "$id"
            echo "Usuario $id creado en el grupo $grupo"
            ;;
        baja)
            sudo userdel -r "$id"
            echo "Usuario $id eliminado"
            ;;
        *)
            echo "Error. Acción no reconocida en la línea: $accion $nombre $apellido1 $apellido2 $grupo"
            exit 1
            ;;
    esac
done < usuarios.txt

