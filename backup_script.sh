#!/bin/bash
SOURCE_DIR="/home/Tatney/university/StudentRecords"
BACKUP_DIR="/home/Tatney/BACKUP_DIR"
DATE=$(date +%Y-%m-%d)
LOG_FILE="/home/Tatney/backup.log"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/StudentRecords_BACKUP_$DATE.tar.gz" "$SOURCE_DIR"
echo "$(date +'Y-%m-%d %H:%M:%S') - Backup created at $BACKUP_DIR/StudentRecords_BACKUP_$DATE.tar.gz" >> "$LOG_FILE"
