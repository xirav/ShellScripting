#!/bin/bash 

#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
x=2
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0   #using underscope
totalWorkingDays=0      #camel case
totalWage=0
workDonePerDay=0

#declaration of array
declare -a perDayHoursDone

#declaration of dictionary
declare -i dayWiseWageStorage

#function declaration
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME;;
                1) workDonePerDay=$FULL_TIME;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
while [[ $totalWorkingDays -lt $x && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) );
        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));

        perDayHoursDone[((totalWorkingDays))]=$workDonePerDay
        dayWiseWageStorage[((totalWorkingDays))]=$tempWage
done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours


echo "Hours per day : " ${perDayHoursDone[@]}
echo "wages per day : " ${dayWiseWageStorage[@]}
echo "days in dictionary : " ${!dayWiseWageStorage[@]}
