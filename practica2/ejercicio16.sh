 #!/bin/bash

absoluta="/"
contadorf=0
contadord=0
if [[ $1 =~ $absoluta.* ]]; then

  contenido=$(ls "$1")

 if [[ -d "$1/$cont" ]]; then
      for cont in $contenido
      do
        if [[ -f "$1/$cont" ]]; then
         ((contadorf++));
        elif [[ -d "$1/$cont" ]]; then
         ((contadord++))
        fi

      done
 else
 echo "La ruta introducida no es un directorio"
 fi
else
   echo "Debes introducir la ruta absoluta"
fi

echo "El directorio introducido tiene $contadorf archivos"
echo "El directorio introducido tiene $contadord subdirectorios"
