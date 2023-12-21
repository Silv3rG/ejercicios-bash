 #!/bin/bash

absoluta="/"
contador=0
if [[ $1 =~ $absoluta.* ]]; then

  contenido=$(ls "$1")
  for cont in $contenido
  do
    if [[ -f "$1/$cont" ]]; then
      echo "$cont es un archivo"
      ((contador++));

    elif [[ -d "$1/$cont" ]]; then
      echo "$cont es un directorio"
       ((contador++));

    elif [[ -L "$1/$cont" ]]; then
      echo "$cont es un enlace simbolico"
       ((contador++));

    elif [[ -b "$1/$cont" ]]; then
      echo "$cont es un archivo especial de bloque"
       ((contador++));

    elif [[ -c  "$1/$cont" ]]; then
      echo "$cont es un archivo especial de caracter"
       ((contador++));


    else
      echo "$cont es otro tipo de archivo"
      ((contador++));
    fi
   done
else
   echo "Debes introducir la ruta absoluta"
fi

echo "El numero de entradas es $contador"
