#!/bin/bash
#
#Print "Hello Codeacademy"
echo "Hello Codeacademy!"
#Using variables
greeting="Hello"
echo $greeting
FirstName="Mishal"
echo $FirstName
first_greeting="Nice to meet you!"
later_greeting="How are you?"
greeting_occasion=-1

#Check if greeting_occasion is less than 1
if [ $greeting_occasion -lt 1 ]
then
  echo $first_greeting
else
  echo $later_greeting
fi

#print a message to the user "Is it raining?"
echo "Is it raining?[Y/N]"
#variable declare
read IS_RAIN
if [ $IS_RAIN == "Y" ]
then
echo "Stay at home"
else
echo "Go out"
fi
