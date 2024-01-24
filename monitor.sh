#!/bin/bash

CURRENT_TIME=$(date +"%Y-%m-%d %H:%M")
CPU_INFO=$(top -b -d1 -n1|grep -i "Cpu(s)"|head -c21|cut -d ' ' -f3|cut -d '%' -f1)
RAM_INFO=$(free -m | awk '/^Mem:/ {printf "%d", $3}')

echo "$CURRENT_TIME,$RAM_INFO,$CPU_INFO" >> system_info.txt

