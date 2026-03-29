#!/bin/bash

# Define the log file
logfile="search.txt"

# Check if the file exists
if [ -e "$logfile" ]; then
    echo "Reading log file: $logfile"
    
    # Read the file line by line
    while IFS= read -r line; do
        echo "Log entry: $line"
    done < "$logfile"
else
    echo "Log file $logfile does not exist."
fi