#!/bin/bash -x

perHourSalary=50
fullDayHour=8
halfDayHour=4
fullDay=1
halfDay=2

randomValue=$((RANDOM%3))

if [ $randomValue -eq $fullDay ]
then
	salary=$(($perHourSalary*$fullDayHour))

elif [ $randomValue -eq $halfDay ]
then
	salary=$(($perHourSalary*$halfDayHour))

else
	salary=0

fi
echo "salary is $salary"
