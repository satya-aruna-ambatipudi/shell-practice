#!/bin/bash

STARTTIME=$(date +%s)
echo "Script start time $(date)"

# Basic Arithmetic
num1=10
num2=3

# Capture the result directly
result=$((num1 + num2))
echo "Addition: $result" # Outputs: 13

# Division (Note: Bash truncates decimals automatically)
div_result=$((num1 / num2))
echo "Division: $div_result" # Outputs: 3 (not 3.33)

# Modulo (Remainder)
remainder=$((num1 % num2))
echo "Remainder: $remainder" # Outputs: 1

sleep 10
ENDTIME=$(date +%s)
#TOTALTIME=$ENDTIME-$STARTTIME
TOTALTIME=$((ENDTIME-STARTTIME))
echo "Script end time $(date)"
echo "Execution time $TOTALTIME"
