#!/bin/bash

echo "Welcome to in emp_wage program"

is_present=1
is_part_time=2
per_hrs=20
full_day_hrs=8
part_time_hrs=4
month=20
month_wage=0
working_hrs=0
max_working_hrs=100
working_days=0
max_working_days=20


while true
do

    if (( $working_hrs < $max_working_hrs && $working_days < $max_working_days ))
    then
        random_check=$((RANDOM%3))
        
        case $random_check in
        1)
            total_wage=$(( $per_hrs * $full_day_hrs ))
            echo "Employee is present for Full time wage is : $total_wage"
            month_wage=$(( $month_wage + $total_wage ))
            working_hrs=$(( $working_hrs + $full_day_hrs ))
            working_days=$(( $working_days + 1 ))
            ;;
        2)
            part_wage=$(( $per_hrs * $part_time_hrs ))
            echo "Employee is present for part time wage is : $part_wage"
            month_wage=$(( $month_wage + $part_wage ))
            working_hrs=$(( $working_hrs + $part_time_hrs ))
            working_days=$(( $working_days + 1 ))
            ;;
        *)
            echo "Employee is absent and wage is : 0"
            ;;
        esac
    else
        echo "Working days are : $working_days and Working hours are : $working_hrs"
        break
    fi
done

echo "Employee wage of month is : $month_wage"