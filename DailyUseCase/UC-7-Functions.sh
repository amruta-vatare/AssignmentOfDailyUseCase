#!/bin/bash -x
isPartTime=1
isFullTime=2

empRateParHr=20
workingDaysInMonths=20
maxWorkingHrInMonth=100

totalEmpHr=0
totalEmpWorkingDays=0
totalSalary=0
function getWorkHours()
{
	case $randomCheck in
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac
}
while [[ $totalEmpHr -lt $maxWorkingHrInMonth &&
	$totalEmpWorkingDays -lt $workingDaysInMonths ]]
do
	((totalEmpWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRateParHr))

