#!/bin/bash
. ./func.sh
. ./colors.sh

function print {
    echo -e "${BG1}${F1} HOSTNAME${endcolor} = ${BG2}${F2} $hostname${endcolor}"
    echo -e "${BG1}${F1} TIMEZONE ${endcolor} = ${BG2}${F2} $timezone${endcolor}"
    echo -e "${BG1}${F1} USER ${endcolor} = ${BG2}${F2} "$USER"${endcolor}"
    echo -e "${BG1}${F1} OS ${endcolor} = ${BG2}${F2} $os${endcolor}"
    echo -e "${BG1}${F1} DATE ${endcolor} = ${BG2}${F2} $date${endcolor}"
    echo -e "${BG1}${F1} UPTIME ${endcolor} = ${BG2}${F2} $uptime${endcolor}"
    echo -e "${BG1}${F1} UPTIME_SEC ${endcolor} = ${BG2}${F2} $uptime_sec${endcolor}"
    echo -e "${BG1}${F1} IP ${endcolor} = ${BG2}${F2} $ip${endcolor}"
    echo -e "${BG1}${F1} MASK ${endcolor} = ${BG2}${F2} $mask${endcolor}"
    echo -e "${BG1}${F1} GATEWAY ${endcolor} = ${BG2}${F2} $gateway${endcolor}"
    echo -e "${BG1}${F1} RAM_TOTAL ${endcolor} = ${BG2}${F2} $ram_total${endcolor}"
    echo -e "${BG1}${F1} RAM_USED ${endcolor} = ${BG2}${F2} $ram_used${endcolor}"
    echo -e "${BG1}${F1} RAM_FREE ${endcolor} = ${BG2}${F2} $ram_free${endcolor}"
    echo -e "${BG1}${F1} SPACE_ROOT ${endcolor} = ${BG2}${F2} $space_root${endcolor}"
    echo -e "${BG1}${F1} SPACE_ROOT_USED ${endcolor} = ${BG2}${F2} $space_root_used${endcolor}"
    echo -e "${BG1}${F1} SPACE_ROOT_FREE ${endcolor} = ${BG2}${F2} $space_root_free${endcolor}"
}

#function setColor {
    if [ $# -ne 4 ]; then
        echo "Error: need only 4 arguments"
    else
        re='^[1-6]$'
        if ! [[ $1 =~ $re ]] && [[ $2 =~ $re ]] && [[ $3 =~ $re ]] && [[ $4 =~ $re ]]; then
            echo "Error: invalid arguments"
        else
            if [ $1 = $2 ] || [ $3 = $4 ]; then
                echo "Error: backgound color = fonts color"
            else
                case $1 in
                    "1") BG1=$white_bg;;
                    "2") BG1=$red_bg;;
                    "3") BG1=$green_bg;;
                    "4") BG1=$blue_bg;;
                    "5") BG1=$purple_bg;;
                    "6") BG1=$black_bg;;
                esac
                case $2 in
                    "1") F1=$white;;
                    "2") F1=$red;;
                    "3") F1=$green;;
                    "4") F1=$blue;;
                    "5") F1=$purple;;
                    "6") F1=$black;;
                esac
                case $3 in
                    "1") BG2=$white_bg;;
                    "2") BG2=$red_bg;;
                    "3") BG2=$green_bg;;
                    "4") BG2=$blue_bg;;
                    "5") BG2=$purple_bg;;
                    "6") BG2=$black_bg;;
                esac
                case $4 in
                    "1") F2=$white;;
                    "2") F2=$red;;
                    "3") F2=$green;;
                    "4") F2=$blue;;
                    "5") F2=$purple;;
                    "6") F2=$black;;
                esac
                print
            fi
        fi
    fi
#}

