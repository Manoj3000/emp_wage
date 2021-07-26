#!/bin/bash

echo "Welcome to in emp_wage program"

is_present=1
is_part_time=2
per_hrs=20
full_day_hrs=8
part_time_hrs=4

random_check=$((RANDOM%3))

if [ $is_present -eq $random_check ]
then
    total_wage=$(( $per_hrs * $full_day_hrs ))
    echo "Full time wage is : $total_wage"
elif [ $is_part_time -eq $random_check ]
then
    part_wage=$(( $per_hrs * $part_time_hrs ))
    echo "Part time wage is : $part_wage"
else
    echo "Employee is absent and todays wage is : 0"
fi
