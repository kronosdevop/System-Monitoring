#!/bin/bash

echo "System Load:"
echo -e "Load Average:\n$(uptime)"
echo -e "CPU Usage:\n$(top -bn1 | grep 'Cpu(s)')"
