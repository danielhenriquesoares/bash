#!/bin/bash

value=
echo -n "Enter a value between 1 and 3 inclusive > "
read value

case $value in
  1 ) echo "You entered one."
      ;;
  2 ) echo "You entered two."
      ;;
  3 ) echo "You entered three."
      ;;
  * ) echo "You did not enter a number between 1 and 3."
esac
exit 0