#!/bin/bash

echo "Memory Usage:"
echo -e "Total, Used, and Free Memory:\n$(free -h)"
echo -e "Swap Memory Usage:\n$(swapon --show)"
