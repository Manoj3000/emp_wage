#!/bin/bash

echo "Welcome to in emp_wage program"

is_present=1
per_hrs=20
day_hrs=8

random_check=$(((RANDOM%2)+1))

if [ $is_present -eq $random_check ]
then
    total_wage=$(( $per_hrs * $day_hrs ))
    echo "Employee is present and todays wage is : $total_wage"
else
    echo "Employee is absent and todays wage is : 0"
fi
