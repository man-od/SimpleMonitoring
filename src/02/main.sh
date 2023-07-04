#!/bin/bash
. ./func.sh

function print {
echo HOSTNAME $hostname
echo TIMEZONE $timezone
echo USER "$USER"
echo OS $os
echo DATE $date
echo UPTIME $UPTIME
echo UPTIME_SEC $uptime_sec

echo IP $ip
echo MASK $mask
echo GATEWAY $gateway

echo RAM_TOTAL $ram_total
echo RAM_USED $ram_used
echo RAM_FREE $ram_free

echo SPACE_ROOT $space_root
echo SPACE_ROOT_USED $space_root_used
echo SPACE_ROOT_FREE $space_root_free
}
print
read -p "Do you want to save in to file? (y/n):" answer
if [ $answer == "y" ] || [ $answer == "Y" ]; then
    name_file="$(date +%d_%m_%y_%H_%M_%S).status"
    print > $name_file
fi
