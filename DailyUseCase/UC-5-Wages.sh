#!/bin/bash -x

isPartTime=1
isFullTime=2
empRateParHr=20
workingDaysInMonths=20
totalSalary=0

for (( day=1; day<workingDaysInMonths; day++ ))
do
	randomCheck=$((RANDOM%3))
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
	salary=$(($empHrs*$empRateParHr))
	totalSalary=$(($totalSalary+$salary))

done
