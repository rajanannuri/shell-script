#!/bin/bash
#creation archive for 30 days
sourcedir=/var/log
archivedir=/archive
days=30
# we need to create a archival folder
if [ -d $archivedir ];then
echo " folder : $archivedir available"
else
echo "create $archivedir folder"
mkdir -p $archivedir
echo "$archivedir created successfully"
fi
# we need to find files now
find $sourcedir -type f -mtime +$days -exec mv {} $archivedir \;
# verifying files successfully moved or not
if [ $? -eq 0 ];then
echo "files older then $days moved successfully"
else
echo " files failed to archive"
fi
## -mtime --- modification time ### +$days ---- the age of the files is more then 30 days ### -$days ---- files have less then 30 days age, it means recently modified files.
