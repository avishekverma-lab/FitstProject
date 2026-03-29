#!/bin/bash

LOG_FILE="log.txt"  # Replace with your log file path

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File $LOG_FILE not found."
    exit 1
fi

while IFS= read -r line; do
    echo "Line: $line"  # Process the line here (e.g., grep, parse fields)
done < "$LOG_FILE"

echo "Finished processing log file."


#LOG_FILE="${1:-log.txt}"  # Default file; pass as arg: ./script.sh /path/to/log

if [ ! -f "$LOG_FILE" ]; then
  echo "Error: $LOG_FILE not found."
  exit 1
fi

echo "Scanning $LOG_FILE for ERROR lines...!!"

ERROR_LINES1=$(grep -i "Avishek" "$LOG_FILE")
ERROR_COUNT=$(echo "$ERROR_LINES1" | wc -l)

if [ "$ERROR_COUNT" -gt 0 ]; then
  echo "Found $ERROR_COUNT ERROR lines:"
  echo "$ERROR_LINES1"
  echo "$ERROR_LINES1" > log.txt  # Save to file
else
  echo "No ERROR lines found."
fi