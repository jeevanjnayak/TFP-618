#!/bin/bash -x

isPartTime=1
isFullTime=2
ratePerHour=50
monthlySalary=0
daysPresent=0
maxDayInMonth=30
empAbsent=0

while [[ $daysPresent -lt 20 && $maxDayInMonth -gt 0 ]]
do
	presentCheck=$((RANDOM%3))

	case $presentCheck in
	$isPartTime)
		perDayHour=4
		daysPresent=$(($daysPresent+1));;
	$isFullTime)
		perDayHour=8
		daysPresent=$(($daysPresent+1));;
	*)
		perDayHour=0
		((empAbsent++));;
	esac

	perDaySal=$(($ratePerHour*$perDayHour))
	monthlySalary=$(($monthlySalary+$perDaySal))
	maxDayInMonth=$(($maxDayInMonth-1))
done

echo "The person is present for $daysPresent days"
echo "salary of the month is $monthlySalary"
echo "$maxDayInMonth days left before the employee reached 20 present days"
echo "The employee is absent for $empAbsent this month"
