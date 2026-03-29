#!/bin/bash

# Check disk space on C: drive
DRIVE_PATH="/c/"

echo "------------------------------------------"
echo "Disk Usage Report for C: Drive"
echo "------------------------------------------"

# Execute df -h for the specific drive
df -h $DRIVE_PATH
echo "------------------------------------------"
#!/bin/bash

# Define the drive path (Change to /mnt/c/ if using WSL)
DRIVE="/c/"

# Get the available space in Gigabytes (extracting the number only)
# df -BG provides the size in 1GB blocks
AVAILABLE_GB=$(df -BG "$DRIVE" | awk 'NR==2 {print $4}' | sed 's/G//')

# Check if available space is exactly 150
if [ "$AVAILABLE_GB" -eq 150 ]; then
    echo "yes"
else
    echo "Available space: ${AVAILABLE_GB} GB"
fi