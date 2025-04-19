#!/bin/bash
# checking service status
#
service=ssh
# using condition for service status
if systemctl is-active --quiet $service;then
  echo "ssh $service is running fine"
else
   echo "restart the $service"
   systemctl restart $service
fi
