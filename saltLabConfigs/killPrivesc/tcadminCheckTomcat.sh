#!/bin/bash

# This task makes sure tomcat is running
# and echos a yes or no

/bin/ps -ef | grep tomcat | grep -v grep 2>&1 >/dev/null
if [ $? -eq "0" ]
then
  echo "YES!!"
else
  echo "NO!!"
fi

