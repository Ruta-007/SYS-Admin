#!/bin/bash
THRESHOLD-80
while true; do
RAM_TOTAL=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
RAM_AVAILABLE=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
RAM_USED=$((RAM_TOTAL - RAM_AVAILABLE))
RAM_PERCENTAGE=$((RAM_USED * 100 / RAM_TOTAL))
if [ "$RAM_PERCENTAGE" -gt "$THRESHOLD" ]; then
echo "ALERT: High RAM usage detected!"
echo "Current RAM usage: $RAM_PERCENTAGE%"
echo "Please check for resource-intensive processes."
fi
sleep 5
done
