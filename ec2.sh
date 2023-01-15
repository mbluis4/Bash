#!/bin/bash

echo -n "do you need to add user data? [y/n]: "
read -n 1 ans
LOWER_ANS="${ans,,}"

#check response

if [[ $LOWER_ANS == "y" ]]; then
  echo
  echo "enter file name: "
  read FILE
  echo "your file name is $FILE"
elif [[ $LOWER_ANS == "n" ]]; then
  echo
  echo "proceding without user data"
else
  echo
  echo "enter y/n"
fi






#funtion to check if file exists


