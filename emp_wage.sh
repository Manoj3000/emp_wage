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
max_working_hrs=96
working_days=0
max_working_days=20

declare -A daily_total_wage

function getWokingHours(){
    case $1 in
        1)
            echo "8"
        ;;
        2)
            echo "4"
        ;;
        *)
            echo "0"
        ;;
    esac
}

while true
do

    if (( $working_hrs < $max_working_hrs && $working_days < $max_working_days ))
    then
        random_check=$((RANDOM%3))
        emp_hrs=$( getWokingHours $random_check )
        daily_wage=$(( $per_hrs * $emp_hrs ))
        month_wage=$(( $month_wage + $daily_wage ))
        working_hrs=$(( $working_hrs + $emp_hrs ))
        working_days=$(( $working_days + 1 ))

        daily_total_wage[$working_days]="$daily_wage"


        echo "1=fulltime || 2=parttime || 0=absent"
        echo "random_check ==== " $random_check
        echo "emp_hrs = " $emp_hrs
        echo "daily_wage = " $daily_wage
        echo "month_wage = " $month_wage
        echo "working_hrs = " $working_hrs
        echo "working_days = " $working_days
        echo
    else
        echo "Working days are : $working_days || Working hours are : $working_hrs"
        break
    fi
done


for i in ${!daily_total_wage[@]}
do
    echo "day $i wage = ${daily_total_wage[$i]}" 
done


count=$((${#daily_total_wage[@]} + 1))
daily_total_wage[$count]=$(($month_wage))
echo "Total wage = ${daily_total_wage[$count]}" 

echo "Employee wage of month is : $month_wage"