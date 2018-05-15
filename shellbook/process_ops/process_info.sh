#!/bin/bash

# run sleep in the background
sleep 10 &

# get pid by process name
SLEEP_PROCESS_PID=$(pidof sleep)

echo "sleep pid id $SLEEP_PROCESS_PID "
# get memory usage of the process
cat /proc/$SLEEP_PROCESS_PID/maps 
