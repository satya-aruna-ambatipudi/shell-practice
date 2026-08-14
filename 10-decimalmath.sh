#!/bin/bash

# Capture math output using awk
result1=$(awk 'BEGIN {print 5.5 * 2.1}')

echo "Result1: $result1" # Outputs: 11.55

result2=$(awk 'BEGIN {print 8.0 / 3.5}')

echo "Result2: $result2"