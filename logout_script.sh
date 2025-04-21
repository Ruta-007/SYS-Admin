#!/bin/bash
wall "System maintainance:All active user sessions will be logged out at 13:00 hrs. Please save your work."
sleep 60
pkill -KILL -u $(who | awk '{print $1}') 2>/dev/null
echo "$(date +"%Y-%m-%d %M:%M:%S") - All active users logged out." >> /var/log/logout.log
