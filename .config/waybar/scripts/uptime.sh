#!/bin/bash

uptime_seconds_raw=$(cat /proc/uptime | awk '{print $1}')

uptime_seconds=${uptime_seconds_raw%.*}

hours=$(( (uptime_seconds % 86400) / 3600 ))
minutes=$(( (uptime_seconds % 3600) / 60 ))

# Display uptime
if [ "$hours" -eq 0 ]; then
    echo "↑ ${minutes} m"
else
    echo "↑ ${hours} h:${minutes} m"
fi

