
#!/bin/bash -x

read -p "Enter any integer - " x
#switch
case $x in
	1) echo "1. userinput - " $x;;
	2) echo "2. userprint - " $x;;
	*) echo "default userinput - " $x;;
esac

if [ $x -eq 1 ]
then 
	echo "condition true - " $x
else
	echo "condition false - " $x
fi

while [ $x -lt 3 ]
do
	echo "iteration - " $x
	((x++))
done


#foreach loop on array element
#for varX in 1 2 3

#for between 1 to 5 without interval
#for varX in {1..5}

# between 1 and 5 with inetrval 2
for varX in {1..5..2}
do 
	echo "for loop iterator value - "  $varX
done

y=5;

for (( count=0; count < $x; count++ ))
do 
	echo "for with count - " $count
done

