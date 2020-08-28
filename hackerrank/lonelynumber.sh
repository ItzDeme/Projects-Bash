#!/bin/bash

#arrayLength determines how big the user wants the array to be
read -p "Enter Array Length: " arrayLength


declare -a lonelyArray

#loops through getting the amount numbers for array's desired length
for ((i = 0; i < $arrayLength; i++))
do
    read num
    lonelyArray+=($num)
done

isSeen=0


#loops through the array
for i in "${lonelyArray[@]}"; do
  echo "Does this work $i"
unset isSeen
    for z in "${lonelyArray[@]}"; do
    if [[ "${lonelyArray[$i]}" -eq "${lonelyArray[$z + 1]}" ]]
    then
    ((isSeen++))
     echo "$isSeen"
    fi
    done
    if [[ $isSeen -eq 1 ]]
        then
        lonelyNumber=${lonelyArray[$i]}
    fi
done


# echo "$isSeen"
echo "$lonelyNumber"