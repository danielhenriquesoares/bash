#!/bin/bash

character=
echo -n "Type a digit or a letter > "
read character
case $character in
                             # check for letters
  [[:lower:]] | [[:upper:]] ) echo "you typed the letter $character"
                              ;;
                             #check for numbers
  [0-9] )                    echo "you typed the digit $character"
                              ;;
                            #check for anything else
  * )                       echo "you typed something else"
esac
exit 0
