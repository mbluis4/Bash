#!/bin/bash

echo -n "do you need to add user data? [y/n]: "
read -n 1 ans
LOWER_ANS="${ans,,}"

#check response

if [[ $LOWER_ANS == "y" ]]; then
  echo
  echo "enter file name: "
  read FILE
  if test -f "$FILE"; then
    echo "$FILE accepted"
  FILE="file://$FILE"
  echo "$FILE"
  else
    echo "your file does not exist"
    exit
  fi
elif [[ $LOWER_ANS == "n" ]]; then
  echo
  echo "proceding without user data"
  FILE=""
else
  echo
  echo "enter y/n"
fi

#aws provisoning
echo "################################################"
echo "Launching EC2 instance"
aws ec2 run-instances --image-id ami-06878d265978313ca --count 1 --instance-type t2.micro --key-name bash-key --security-group-ids sg-082e44de06e8e12ef --user-data "$FILE"


