#!/bin/bash

STARTTIME=$(date +%s)
echo "Script start time $(date)"
sleep 10
ENDTIME=$(date +%s)
#TOTALTIME=$ENDTIME-$STARTTIME
TOTALTIME=$((ENDTIME-STARTTIME))
echo "Script end time $(date)"
echo "Execution time $TOTALTIME"
