# SYS-Admin
Bash script ICT Automation project

This project demonstrates three key server automation tasks using Bash scripting on a Linux system. It is part of an ICT automation initiative aimed at improving server maintenance, user management, and data security.

---

## Project Overview

### 1. **RAM Monitoring and Alert System**
A script that continuously monitors the system’s RAM usage and alerts when usage exceeds 80%.

- **Script**: `ram_monitoring.sh`
- **Features**:
  - Real-time memory usage monitoring
  - Triggers alerts for high usage
  - Configurable to run continuously or on a schedule
- **Demo**:
  - Script runs in a loop, checking every 10 seconds.
  - Logs or prints usage percentages.

---

### 2. **Automatic User Logout at 13:00 Hrs**
Automates the forced logout of all non-root users at exactly 13:00 hours daily using `cron`.

- **Script**: `auto_logout.sh`
- **Features**:
  - Identifies active user sessions
  - Kills user processes except `root` and `system`
  - Runs automatically via scheduled `cron` job
- **Schedule**: Daily at 1:00 PM (13:00)

---

### 3. **Automated Backup of Student Records**
Backs up the "Student Records" directory into a timestamped `.tar.gz` archive daily.

- **Script**: `backup_student_records.sh`
- **Features**:
  - Archives the contents of the directory
  - Stores backups in a designated folder
  - Supports scheduling via `cron`
- **Demo**:
  - Archive generated with current date/time
  - Backup file example: `student_records_backup_2025-04-22_13-00-00.tar.gz`

---

## How to Run

./ram_monitoring.sh
./auto_logout.sh
./backup_student_records.sh

 **Dependencies**
    bash
    cron
    tar
    awk, free, pkill

**Author**

Rutatina Francis
ICT Automation Project – Uganda Martyrs University
2025
