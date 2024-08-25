#!/bin/bash

echo "Network Monitoring:"
echo -e "Number of Concurrent Connections:\n$(netstat -an | grep 'ESTABLISHED' | wc -l)"
echo -e "Packet Drops:\n$(netstat -i | grep 'Drop' | awk '{print $3}')"
echo -e "Number of MB In and Out:\n$(ifstat -i eth0 1 1 | tail -1 | awk '{print "In: " $1 " MB, Out: " $2 " MB"}')"
