#!bin/bash

read -p "Enter amount of numbers" num

declare -a arr

declare -i result

for (( i = 0; i < $num; i++ )) 
do
    read nums
    arr+=($nums)
    numbs=$(( numbs + ${arr[i]} ))
done

##result=$((numbs / num | bc -l)) 

#printf "%.3f\n" $result

echo "scale=3; $numbs/$num" | bc -l 