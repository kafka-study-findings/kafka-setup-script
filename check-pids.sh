#!/bin/bash
ps -ef | egrep "^(.{20}).*(server|zookeeper).properties$" | sed -En "s/^(.{60}).*(.{40})$/\1 ... \2/p"

pids=`ps -ef | egrep "^(.{20}).*(server|zookeeper).properties$" | sed -En "s/^\w+[ ]+([0-9]+)[ ]+(.{60}).*$/\1 /p" | tr -d "\n"`
echo ""
echo "kill -9 $pids"