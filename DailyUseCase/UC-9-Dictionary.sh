#!/bin/bash -x
isPartTime=1
isFullTime=2

empRatePerHr=20
workingDaysInMonths=20
maxWorkingHrInMonth=100

totalEmpHr=0
totalEmpWorkingDays=0

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


function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxWorkingHrInMonth &&
	$totalEmpWorkingDays -lt $workingDaysInMonths ]]
do
	((totalEmpWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalEmpWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary=$( getEmpWage $totalEmpHr )
echo ${dailyWages[@]}

echo ${!dailyWages[@]}
echo ${#dailyWages[@]}

