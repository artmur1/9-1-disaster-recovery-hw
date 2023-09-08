#!/bin/bash

FILE=/var/www/html/index.html
if [ -f "$FILE" ]; then
   echo $?
else
   exit 1
fi

check_port=$(sudo netstat -tlpn4 | grep ":80")

if [ -z "$check_port" ]; then
   exit 1
fi
