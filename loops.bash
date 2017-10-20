#!/bin/bash

echo -e "\nWhile\n"

number=0
# executa enquanto o exit status do while é true (0)
while [ $number -lt 10 ]; do
  echo "Number = $number"
  number=$((number + 1))
done

echo -e "\nUntil\n"

number=0
#executa enquanto o exit status do until é false (diferente de zero)
until [ "$number" -ge 10 ]; do
  echo "Number=$number"
  number=$((number + 1))
done

exit 0
