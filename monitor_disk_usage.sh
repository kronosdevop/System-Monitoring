#!/bin/bash

echo "Disk Usage:"
df -h | awk '{print $1, $5}' | grep -E '^/dev/' | while read line; do
    echo "$line"
    usage=$(echo $line | awk '{print $2}' | sed 's/%//')
    if [ "$usage" -gt 80 ]; then
        echo -e "\033[31mWARNING: $line\033[0m"
    fi
done
