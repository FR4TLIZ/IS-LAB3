#!/bin/bash

# Output file
OUTPUT_FILE="system_info.txt"

# Date and hour of created raport
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# RAM info in MB
TOTAL_RAM=$(free -m | awk '/Mem:/ { print $2 }')

# Disk info
DISK_USAGE=$(df -h --output=source,size,used,avail,target | grep "^/")

# Hostname
HOSTNAME=$(hostname)

# Operating system info
OS_NAME=$(uname -s)
OS_VERSION=$(uname -r)

# Raport scheme
{
    echo "===== RAPORT SYSTEMOWY ====="
    echo "Data i godzina: $CURRENT_DATE"
    echo "============================"
    echo
    echo ">>> PAMIĘĆ RAM"
    echo "Całkowita pamięć RAM: $TOTAL_RAM MB"
    echo
    echo ">>> WYKORZYSTANIE DYSKU"
    echo "$DISK_USAGE"
    echo
    echo ">>> NAZWA HOSTA"
    echo "$HOSTNAME"
    echo
    echo ">>> SYSTEM OPERACYJNY"
    echo "$OS_NAME $OS_VERSION"
} > "$OUTPUT_FILE"

echo "Raport został zapisany do pliku '$OUTPUT_FILE'."
