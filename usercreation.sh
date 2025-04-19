#!/bin/bash
#
user=rajo
password=raja@123
#
if id "$user" ;then
#if grep -q "^$user:" /etc/passwd;then
echo "$user is available"
else
echo "creating $user and folder"
useradd -m -s /bin/bash $user
echo "$user created successfully"
echo "$user:$password" | chpasswd
echo "password updated successfully"
fi
