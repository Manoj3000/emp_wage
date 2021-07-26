#!/bin/bash

echo "Welcome to in emp_wage program"

is_present=1
is_part_time=2
per_hrs=20
full_day_hrs=8
part_time_hrs=4

random_check=$((RANDOM%3))

case $random_check in
1)
    echo "Employee is present for full time"
    total_wage=$(( $per_hrs * $full_day_hrs ))
    echo "Full time wage is : $total_wage"
    ;;
2)
    echo "Employee is present for part time"
    part_wage=$(( $per_hrs * $part_time_hrs ))
    echo "Part time wage is : $part_wage"
    ;;
*)
    echo "Employee is absent and wage is : 0"
    ;;
esac