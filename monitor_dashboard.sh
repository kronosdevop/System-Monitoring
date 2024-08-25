#!/bin/bash

# Define functions for each monitoring section
source ./monitor_top_apps.sh
source ./monitor_network.sh
source ./monitor_disk_usage.sh
source ./monitor_system_load.sh
source ./monitor_memory_usage.sh
source ./monitor_processes.sh
source ./monitor_services.sh

display_top_apps() {
    ./monitor_top_apps.sh
}

display_network() {
    ./monitor_network.sh
}

display_disk_usage() {
    ./monitor_disk_usage.sh
}

display_system_load() {
    ./monitor_system_load.sh
}

display_memory_usage() {
    ./monitor_memory_usage.sh
}

display_process_monitoring() {
    ./monitor_processes.sh
}

display_service_monitoring() {
    ./monitor_services.sh
}

# Parse command-line arguments
while getopts "cpu memory network disk load processes services" opt; do
    case ${opt} in
        cpu)
            display_top_apps
            ;;
        memory)
            display_memory_usage
            ;;
        network)
            display_network
            ;;
        disk)
            display_disk_usage
            ;;
        load)
            display_system_load
            ;;
        processes)
            display_process_monitoring
            ;;
        services)
            display_service_monitoring
            ;;
        \?)
            echo "Usage: cmd [-cpu] [-memory] [-network] [-disk] [-load] [-processes] [-services]"
            exit 1
            ;;
    esac
done

# If no arguments, display the full dashboard
if [ "$#" -eq 0 ]; then
    display_top_apps
    echo ""
    display_network
    echo ""
    display_disk_usage
    echo ""
    display_system_load
    echo ""
    display_memory_usage
    echo ""
    display_process_monitoring
    echo ""
    display_service_monitoring
fi
