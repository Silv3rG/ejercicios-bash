#!/bin/bash

tar czf "/root/copia_etc_$(date).tgz" /etc

echo "Se ha creado la siguiente copia de seguridad: root/copia_etc_$(date).tgz"
