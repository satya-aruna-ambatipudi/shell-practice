#!/bin/bash

# You must specify 'scale' to set the number of decimal places
total_memory=16
used_memory=7

# Capture decimal output using command substitution
#mem_percentage=$(echo "scale=2; ($used_memory / $total_memory) * 100" | bc)

# the above command won't work if bc is not installed in your linux environment

# FIX: Use awk instead of bc for floating-point calculations
mem_percentage=$(awk -v u="$used_memory" -v t="$total_memory" 'BEGIN { printf "%.2f", (u / t) * 100 }')

echo "Memory usage is: $mem_percentage%" # Outputs: 43.75%



