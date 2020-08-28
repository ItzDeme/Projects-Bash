#!/bin/bash

cd /c/Users/Vicio/Desktop

pwd

rename 's/ /-/g' *

for i in *
do
echo ${i#*.}
if [[ ${i#*.} == "png" ]]
    then
    if [[ -e Pictures ]]
    then
    mv $i Pictures/
    else
    mkdir Pictures
    mv $i Pictures/
    fi

elif [[ ${i#*.} == "exe" ]]
    then
    if [[ -e Programs ]]
    then
    mv $i Programs/
    else
    mkdir Programs
    mv $i Programs
    fi
elif [[ ${i#*.} == "txt" ]]
    then
    if [[ -e Documents ]]
    then
    mv $i Documents/
    else
    mkdir Documents
    mv $i Documents/
    fi
elif [[ ${i#*.} == "html" ]]
    then
    if [[ -e Websites ]]
    then
    mv $i Websites/
    else
    mkdir Websites
    mv $i Websites/
    fi
else
    if [[ -e Other ]]
    then
    mv $i Other/
    else
    mkdir Other
    mv $i Other/
    fi
fi

done