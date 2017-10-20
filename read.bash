#!/bin/bash
# -n permite ficar na mesma linha
echo -n "Enter some text > "
#read - sem variavel atribuida usa a variável de ambiente $REPLY
read text
#echo "You entered: $REPLY"
echo "You entered: $text"

echo -n "Hurry up and type something! > "
if read -t 3 response; then
  echo -e "\nGreat you did it in time!"
else
  echo -e "\nToo slow!!"
fi


echo -n "Enter you password: > "
read -s password
echo -e "\nYour password: $password"

exit 0
