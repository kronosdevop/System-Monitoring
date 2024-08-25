#!/bin/bash

echo "Service Monitoring:"
for service in sshd nginx apache2 iptables; do
    echo -e "$service Status:\n$(systemctl is-active $service)"
done
