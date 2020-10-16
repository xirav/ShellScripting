#!/bin/bash/ -x    ##this code for the factorial.

read -p "Enter any number - " num
factorial=1

for ((i=2 ; i<=num ; i++))
{
factorial=$((factorial * i))
}

echo $factorial


