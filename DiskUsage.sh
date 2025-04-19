#!/bin/bash
#
#Defining a variable
THRESHOLD=20
# Using variables
df -h | grep '^/dev/' | while read line;
do
usage=$(echo $line | awk '{print $5}' | sed 's/%//g')
mount=$(echo $line | awk '{print $6}')
# Using -ge for numeric comparision
if [ $usage -ge $THRESHOLD ];
then
echo " Disk usage:${usage}% on $mount"
fi
done
