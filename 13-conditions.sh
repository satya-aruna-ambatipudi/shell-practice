#!/bin/bash

NUMBER=$1

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal
if [ $NUMBER -gt 20 ]; then
    echo "Given number: $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]; then
    echo "Given number: $NUMBER is equal to 20"
else
    echo "Given number: $NUMBER is less than 20"
fi

if [[ $NUMBER -gt 10  ]]; then
    echo "Given number: $NUMBER is greater than 10"
elif [[ $NUMBER -eq 10 ]]; then
    echo "Given number: $NUMBER is equal to 10"
else
    echo "Given number: $NUMBER is less than 10"
fi

if (( $NUMBER > 15 )); then
    echo "Given number: $NUMBER is greater than 15"
elif (( $NUMBER = 15 )); then
    echo "Given number: $NUMBER is equal to 15"
else
    echo "Given number: $NUMBER is less than 15"
fi