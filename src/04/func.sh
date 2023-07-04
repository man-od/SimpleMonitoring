#!/bin/bash

hostname=$`hostname`
timezone=$`timedatectl | grep Time | awk '{print $3 $4 $5}'`
os=$`cat /etc/issue | awk '{print $1$2$3}'`
date=$`date "+%d %b %Y %H:%M:%S"`
uptime=$`uptime | awk '{print $2 $3 $4}'`
uptime_sec=$`cat /proc/uptime | awk '{print $1}'`

ip=$`ifconfig | grep -m1 inet | awk '{print $2}'`
mask=$`ifconfig | grep -m1 inet | awk '{print $4}'`
gateway=$`ip r | grep default | awk '{print $3}'`

ram_total=$`free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}'`
ram_used=$`free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}'`
ram_free=$`free -m | awk '/Mem:/{printf "%.3f GB", $4/1024}'`

space_root=$`df -m | grep ubuntu | awk '{printf "%.2f GB", $2/1024}'`
space_root_used=$`df -m | grep ubuntu | awk '{printf "%.2f GB", $3/1024}'`
space_root_free=$`df -m | grep ubuntu | awk '{printf "%.2f GB", $4/1024}'`
