#!/bin/bash
contador=5
while [[ $contador -ge 1 ]]
do
  echo $contador
  ((contador--))
done
