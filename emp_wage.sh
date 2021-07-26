#!/bin/bash

echo "Welcome to in emp_wage program"

is_present=1
is_part_time=2
per_hrs=20
full_day_hrs=8
part_time_hrs=4
month=20
month_wage=0


for (( i=1; i<=$month; i++ ))
do
    random_check=$((RANDOM%3))
    
    case $random_check in
    1)
        total_wage=$(( $per_hrs * $full_day_hrs ))
        echo "Employee is present for Full time wage is : $total_wage"
        month_wage=$(( $month_wage + $total_wage ))
        ;;
    2)
        part_wage=$(( $per_hrs * $part_time_hrs ))
        echo "Employee is present for part time wage is : $part_wage"
        month_wage=$(( $month_wage + $part_wage ))
        ;;
    *)
        echo "Employee is absent and wage is : 0"
        ;;
    esac
done

echo "Employee wage of month is : $month_wage"