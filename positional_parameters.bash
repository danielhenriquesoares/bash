#!/bin/bash
#Obter argumentos passados para o script atrav�s da consola
echo "Positional parameters"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3

#verificar se tenho argumentos passados para o script
#
if [ $# -gt 0 ]; then
  echo "A linha de comandos cont�m $# argumentos"
else
  echo "A linha de comandos n�o cont�m argumentos"
fi
