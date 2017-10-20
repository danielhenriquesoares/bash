#!/bin/bash

#Sintaxe perfeitamente válida
#number=
number=1
# a shell expande a variável, logo fica algo como if [ "" = "1" ];
set -x # permite fazer tracing quando o script é executado
if [ "$number" = "1" ]; then
  echo "Number equals 1"
else
  echo "Number does not equal 1"
fi
set +x
exit 0
