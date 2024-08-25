# System Monitoring Dashboard

This repository contains scripts to monitor various system resources and display them in a dashboard format.

## Scripts

- `monitor_top_apps.sh`: Displays top 10 most used applications by CPU and memory.
- `monitor_network.sh`: Monitors network connections, packet drops, and MB in/out.
- `monitor_disk_usage.sh`: Shows disk space usage and highlights partitions over 80% usage.
- `monitor_system_load.sh`: Displays system load and CPU usage breakdown.
- `monitor_memory_usage.sh`: Shows total, used, and free memory along with swap usage.
- `monitor_processes.sh`: Displays active processes and top 5 processes by CPU and memory usage.
- `monitor_services.sh`: Monitors the status of essential services like sshd, nginx, apache2, iptables.
- `monitor_dashboard.sh`: Main script to display the dashboard and handle command-line options.

## Usage

Make the main script executable:
```bash
chmod +x monitor_dashboard.sh



Run the main script to see the full dashboard:
./monitor_dashboard.sh



Run with specific options:
./monitor_dashboard.sh -cpu
./monitor_dashboard.sh -memory
./monitor_dashboard.sh -network
./monitor_dashboard.sh -disk
./monitor_dashboard.sh -load
./monitor_dashboard.sh -processes
./monitor_dashboard.sh -services
