#!/bin/bash

#Sintaxe perfeitamente v�lida
#number=
number=1
# a shell expande a vari�vel, logo fica algo como if [ "" = "1" ];
set -x # permite fazer tracing quando o script � executado
if [ "$number" = "1" ]; then
  echo "Number equals 1"
else
  echo "Number does not equal 1"
fi
set +x
exit 0
