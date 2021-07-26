#!/bin/bash

echo "Welcome to in emp_wage program"

isPresent=1
randomCheck=$(((RANDOM%2)+1))

if [ $isPresent -eq $randomCheck ]
then
    echo "Employee is present"
else
    echo "Employee is absent"
fi