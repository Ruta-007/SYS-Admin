#!/bin/bash
THRESHOLD-80
TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
USED=$(free -m | awk '/^Mem: {print $3}')
if [[ -n "TOTAL" && -n "$USED" ]]; then
RAM_PERCENTAGE=$(( USED * 100 / TOTAL ))
echo "Current RAM usage: $RAM_PERCENTAGE%"
if [ "RAM_PERCENTAGE" -ge THRESHOLD ]; then
echo "ALERT: RAM usage is above threshold"
fi
else 
echo "error: Unable to determine RAM usages."
fi
sleep 5
done
#!/bin/bash
ram_usage=$(free | awk '/Mem:/ {printf("%.0f", ($3/$2)*100)}')
if [[ "$ram_usage" =~ ^[0-9]+$ ]]; then
echo "RAM Usage: $ram_usage%"
if [ "$ram_usage" -gt 80 ]; then
echo "High RAM usage detected: $ram_usage%"
else
echo "RAM usage is normal: $ram_usage%"
fi
else
echo "Error: Unable to determine RAM usage."
fi
sleep 10
done



