#!/bin/bash -x     ##code for the prime number

read -p"type any number - " x
i=2
flag=0

while test $i -le `expr $x / 2`
do
if test `expr $x % $i` -eq 0
then flag=1
fi

done

if test $flag -eq 1
then
echo "The number is Not prime"
else
echo "the number is prime"
fi
