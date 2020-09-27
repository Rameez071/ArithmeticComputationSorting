#!/bin/bash -x

#Taking inputs from user
read -p "enter the 1st no:" val1
read -p "enter the 2nd no:" val2
read -p "enter the 3rd no:" val3

#function for 1st compute
function arithmetic_Compute()
{
  echo "$(( $val1+$val2*$val3 ))"
}

result[$((count++))]="$( arithmetic_Compute $(($val1,$val2,$val3)) )"


