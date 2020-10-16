#!/bin/bash
read -p "Enter First number - " N
read -p "Enter Second number - " M

for ((i=$N+1;i<=$M-1;i++))
do
p=0
for((j=2;j <= $i-1;j++))
do
if [[ `expr $i % $j` -eq 0 ]]
then
p=1
break
fi
done
if [[ `expr $p` -eq 0 ]]
then
echo $i
fi
done
