#!/bin/bash
# This script will backup a specified directory to another directory.
# Usage: ./script_name.sh source_directory backup_directory
# replace source_directory and backup_directory with the directories you want to backup and store the backup in

SOURCE_DIR=$1
BACKUP_DIR=$2
DATE=$(date +%Y-%m-%d_%H-%M-%S)

tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $SOURCE_DIR

echo "Backup of $SOURCE_DIR completed! File Name: backup_$DATE.tar.gz"
