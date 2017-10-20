#!/bin/bash

firstNum=0
secondNum=0

echo -n "Enter first number --> "
read firstNum
echo -n "Enter second number --> "
read secondNum

# em oprações aritméticas as variáveis n precisam de ter antes o $
# para lidar com numeros de virgula fluatuante existe o programa bc
echo "first number + second number = $((firstNum + secondNum))"
echo "first number - second number = $((firstNum - secondNum))"
echo "first number * second number = $((firstNum * secondNum))"
if [ "$secondNum" = "0" ]; then
  echo "Second number must be different than zero" >&2
  exit 1
fi
echo "first number / second number = $((firstNum / secondNum))"
echo "first number % second number = $((firstNum % secondNum))"
echo "first number raised to the"
echo "power of the second number = $((firstNum ** secondNum))"
exit 0
