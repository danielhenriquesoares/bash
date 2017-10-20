#!/bin/bash

##### Variables
selection=
countInvalid=0

##### Functions
pressEnter() {
  echo -en "\nPress enter to continue"
  read
  clear
}

until [ "$selection" = "0" ] || [ "$countInvalid" = "3" ]; do
  echo "
  PROGRAM MENU
  1 - Display free disk space
  2 - Display free memory

  0 - Exit program
  "
  echo -n "Enter selection: "
  read selection
  echo ""
  case $selection in
    1 ) df ; pressEnter ;;
    2 ) free ; pressEnter ;;
    0 ) exit 0 ;;
    * ) echo "Please enter 1, 2, or 0"
        countInvalid=$((countInvalid + 1))
  esac
done
