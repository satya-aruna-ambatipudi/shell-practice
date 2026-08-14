#!/bin/bash

# You must specify 'scale' to set the number of decimal places
total_memory=16
used_memory=7

# Capture decimal output using command substitution
mem_percentage=$(echo "scale=2; ($used_memory / $total_memory) * 100" | bc)

echo "Memory usage is: $mem_percentage%" # Outputs: 43.75%
