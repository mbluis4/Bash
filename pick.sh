#!/bin/bash

echo "Pick a fruit"
read  ans

case $ans in
"apple"*)
  Message="you like $ans"
  ;;
"pear"*)
  Message="nice choice of $ans"
  ;;
"banana"*)
  Message="it's all about potasium"
  ;;
*)
  Message="that's a really exotic fruit you like"
esac

echo "$Message"
echo "the end"
