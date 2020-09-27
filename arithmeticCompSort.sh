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

#3rd compute
function arthematic_Compute_third()
{
  echo "$(( $val3+$val1/$val2 ))"
}

result[$((count++))]="$( arthematic_Compute_third $(($val1,$val2,$val3)) )"
}

#4th compute
function arthematic_Compute_fourth()
{
  echo "$(( $val1%$val2+$val3 ))"
}
result[$((count++))]="$( arthematic_Compute_fourth $(($val1,$val2,$val3)) )"

echo "${result[@]}"
echo "${!result[@]}"

#Sorting in Descending order
for (( i=0; i<4; i++ ))
do
     arr[i]=${result[$i]}
     echo "${arr[i]}"
done

function sorting_Array_inDecending_order()
{
   for (( i=0; i<4; i++ ))
   do
      for (( j=$i+1; j<4; j++ ))
      do
         if [[ ${arr[i]} -lt ${arr[j]} ]] 
         then
              temp=${arr[i]}
              arr[i]=${arr[j]}
              arr[j]=$temp
         fi
      done
   done
   echo ${arr[@]}
}

res="$( sorting_Array_inDecending_order ${arr[@]} )"
echo "decending order is : $res"

#Sorting in Ascending order
function sorting_Array_inAscending_order()
{
   for (( i=0; i<4; i++ ))
   do
      for (( j=$i+1; j<4; j++ ))
      do
         if [[ ${arr[i]} -gt ${arr[j]} ]]
         then                                                                                                                                                                                                                    temp=${arr[i]}
              arr[i]=${arr[j]}
              arr[j]=$temp
         fi
      done
   done
              echo ${arr[@]}
}

res1="$( sorting_Array_inAscending_order ${arr[@]} )"
echo "Ascending order is : $res1"
