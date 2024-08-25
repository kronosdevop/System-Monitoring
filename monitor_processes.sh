#!/bin/bash

echo "Process Monitoring:"
echo -e "Number of Active Processes:\n$(ps aux | wc -l)"
echo -e "Top 5 Processes by CPU Usage:\n$(ps -eo pid,%cpu,comm --sort=-%cpu | head -n 6)"
echo -e "Top 5 Processes by Memory Usage:\n$(ps -eo pid,%mem,comm --sort=-%mem | head -n 6)"
