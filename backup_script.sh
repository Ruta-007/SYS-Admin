#!'/bin/bash
SOURCE_DIR="home/Tatney/university/StudentRecords"
BACKUP_DIR="home/Tatney/BACKUP_DIR"
DATE=$(date +%Y-%m-%d")
tar -czf "$BACKUP_DIR/StudentRecords_BACKUP_DIR_$DATE.tar.gz" "SOURCE_DIR"
echo "$(date +"Y-%m-%d %H:%M:%S")
- Backup created at $BACKUP_DIR/StudentRecords_BACKUP_DIR_$DATE.tar.gz" >> /var/log/backup.log
