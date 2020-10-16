#!/bin/bash -x

for eachElement in `ls *.txt`;
do
	fileNameWithoutExtension=`echo $eachElement|awk -F. '{print $1}'`
	echo $fileNameWithoutExtension;
	#checking directory
	
	if [ -d $fileNameWithoutExtension ]
	then
		rm -r $fileNameWithoutExtension
	fi
	mkdir $fileNameWithoutExtension
	

	#moving file to created folder
	mv $eachElement $fileNameWithoutExtension
done

