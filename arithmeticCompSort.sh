#!/bin/bash -x

#Taking inputs from user
read -p "enter the 1st no:" val1
read -p "enter the 2nd no:" val2
read -p "enter the 3rd no:" val3

#1st compute 
function arthematic_Compute()
{
  echo "$(( $val1+$val2*$val3 ))"
}

result[$((count++))]="$( arthematic_Compute $(($val1,$val2,$val3)) )"

#2nd Compute
function arthematic_Compute_second()
{
  echo "$(( $val1*$val2+$val3 ))"
}

result[$((count++))]="$( arthematic_Compute_second $(($val1,$val2,$val3)) )"
