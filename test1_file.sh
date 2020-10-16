#!/bin/bash/ -x

read -p"enter any integer - " x
#switch
case $x in 
	1) "Enter user name - " $x;;
	2) "bengaluru - " $x;;
	3) "bidar - " $x;;
	*) "anything else" $x;;
esac
