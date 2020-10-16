#!/bin/bash -x
#if (( $(echo "$value1 $value2" | awk '{print ($1 > $2)}') )); then
temp_Faren() {


Celcius= $(echo "scale=2;((9/5) * $tc) + 32")

}

temp_Cel() {

echo $((5/9) * ($faren - 32));

}

read -p "Enter choice 1 is c and 2 is f" choice

case $choice in
	1)"conversion from C to F" $choice
	2)"conversion from F to C" $choice
esac

if [ $choice -eq 1 ]
then
	read -p "enter the temp - " Celcius

	farent= $( temp_Faren $Celcius );
	echo $Celcius "F"

elif [ $choice -eq 2 ]
then
	read -p "enter the temp - " faren
	celi= $( temp_Cel $faren )
	echo $faren "C"

else

	echo "please select 1 or 2"
	exit 1

fi

















