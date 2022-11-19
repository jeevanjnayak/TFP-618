#!/bin/bash -x

function calculateWorkingHour() {
	case $1 in
		1)
			perDayHour=4;;
		2)
			perDayHour=8;;
		*)
			perDayHour=0;;
	esac
	echo $perDayHour
}

perHourSalary=50
totalSalary=0
daysPresent=0
maxDayInMonth=30
empAbsent=0
while [[ $daysPresent -lt 20 && $maxDayInMonth -gt 0 ]]
do
	workingHour=$(calculateWorkingHour $((RANDOM%3)))
	perDaySalary=$(($perHourSalary*$workingHour))
	totalSalary=$(($totalSalary+$perDaySalary))
	maxDayInMonth=$(($maxDayInMonth-1))
	
	if [ $workingHour != 0 ]
	then
		((daysPresent++))
	else
		((empAbsent++))
	fi
done

echo "The person is present for $daysPresent days"
echo "salary of the month is $totalSalary"
echo "$maxDayInMonth days left before the employee reached 20 present days"
echo "The employee is absent for $empAbsent this month"
