#!/bin/bash

echo "Top 10 Most Used Applications:"
echo -e "CPU Usage:\n$(ps -eo pid,%cpu,comm --sort=-%cpu | head -n 11)"
echo -e "\nMemory Usage:\n$(ps -eo pid,%mem,comm --sort=-%mem | head -n 11)"
