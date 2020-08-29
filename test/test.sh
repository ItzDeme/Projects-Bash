#!/bin/bash

read  arr

for i in $arr;
    do 
        if [[ $i -lt 0 ]]
            then
                notNeg=$((i * -1))
                sum=$(( sum + notNeg ))
        else
            sum=$(( sum + i ))
        fi
    done
echo $sum
