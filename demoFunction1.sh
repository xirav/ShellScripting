#!/bin/bash -x

#function declaration
addition() {
#the way to get parameters passed in using - $_ => "-" represnt the no. of parameter 
	echo $(($1+$2));    #echo keyword in function - is return statment
}

read -p "Enter First Value - " first_value;
read -p "enter 2nd val - " second_value;
res= $( addition $first_value $second_value );
echo= "result-" $res




