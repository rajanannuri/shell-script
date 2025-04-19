#!/bin/bash
# Backup and Cleanup logs
# Taking backup from /var/log to /backup/logs folder and delete log files older then 7 days

# defining variables

sourcedir=/var/log
backupdir=/backup/logs
days=7
# creating backup folder
if [ -d $backupdir ];then
echo "folder:$backupdir exist"
else
echo "create folder:$backupdir"

mkdir -p $backupdir

echo "folder:$backupdir created successfully"
fi
# taking backup

cp -r $sourcedir/*.log $backupdir

# need to find and delete log files from source directory

find $sourcedir/*.log -type f -mtime +$days -exec rm {} \;
echo "backup and cleanup completed"
