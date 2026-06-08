#!/bin/bash

echo "Backup Script Started"

SRC="/home/ubuntu"
DEST="/home/ubuntu/backups2/"

echo "SOURCE : $SRC"
echo "Destinantion : $DEST"

mkdir -p "$DEST"

DATE=$(date +%Y-%m-%d-%H-%M)

BACKUP_FILE="$DEST/backup_$DATE.tar.gz"

echo "Creating Backup......"

tar -czf "$BACKUP_FILE" "$SRC"

if [ -f $BACKUP_FILE ]; then
	echo "Backup Created Successfully....."
	du -h "$BACKUP_FILE"
else
	echo "Backup Failed......"
	exit 1
fi

echo "Deleting old backups.... Latest 5 remain only...."

cd "$DEST"

ls -t backup_*.tar.gz | tail -n +6 | xargs -r rm

echo "Now, only latest 5 Backups remains....."
