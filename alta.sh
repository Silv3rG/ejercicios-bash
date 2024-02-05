#!/bin/bash

contador_dep=0
contador_emp=0


#Importar los departamentos del archivo csv y  salta la primera línea para crear los grupos

 while IFS=";" read -r nom_dep desc_dep; do

      ((contador_dep++))

      if [ $contador_dep -eq 1 ]; then
          continue
      fi

     grupo_existe=$(samba-tool group list | grep "$nom_dep")

      if [[ -z $grupo_existe ]]; then
          samba-tool group add "$nom_dep" --description "$desc_dep"
      else
          echo "El grupo $nom_dep ya existe"
      fi

 done < /home/admin01/departamentos.csv

#Importar los empleados del archivo csv y salta la primera línea para crear los usuarios

 while IFS=";" read -r nom_dep nom_emp ap_emp; do

      ((contador_emp++))

       if [ $contador_emp -eq 1 ]; then
          continue
       fi

      usuario_existe=$(samba-tool user list | grep "${nom_emp}.${ap_emp}")

       if [[ -z $usuario_existe ]]; then
          samba-tool user add "${nom_emp}.${ap_emp}" "Hola01?" --given-name="$nom_emp" --surname="$ap_emp"
       else
          echo "El usuario ${nom_emp}.${ap_emp} ya existe"
       fi

#Añadir cada usuario a su respectivo grupo.

       usuario_en_grupo=$(samba-tool group listmembers "$nom_dep" | grep "${nom_emp}.${ap_emp}")

       if [[ -z $usuario_en_grupo ]]; then
          samba-tool group addmembers "$nom_dep" "${nom_emp}.${ap_emp}"
       else
          echo "El usuario ${nom_emp}.${ap_emp} ya pertenece al grupo $nom_dep"
       fi

 done < /home/admin01/empleados.csv

