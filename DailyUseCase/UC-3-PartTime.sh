#!/bin/bash

isPartTime=1
isFullTime=2
empRateHr=20
randomCheck=$((RANDOM%3))

if [ $isPartTime -eq $randomCheck ]
then 
	empHrs=4
elif [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
else
	empHrs=0
fi

salary=$(($empHrs*$empRateHr))

echo "Then employee is work for $empHrs hours and his salary is : $salary"
