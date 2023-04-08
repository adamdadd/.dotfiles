#!/bin/bash

# while true; do
# 	xsetroot -name "  $(free -m | grep '^Mem' | awk '{print int($3 / $2 * 100) "%"}')    $(top -bn 1 | grep 'Cpu(s)' | tr -d 'usy,' | awk '{print "u: " $2 "% | s: " $3 "%"}')     $(uptime | awk '{print $3 "mins"}' | tr -d ',')     $( date +"%F %R" )"
#     sleep 20s
# done &
