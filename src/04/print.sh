#!/bin/bash

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
echo -e "${BG1}${F1} SPACE_ROOT_FREE ${endcolor} = ${BG2}${F2} $space_root_free${endcolor} \n"
}

function print_nameColor {
	echo Column 1 background = $column1_background $BG1_C
	echo Column 1 font color = $column1_font_color $F1_C
	echo Column 2 background = $column2_background $BG2_C
	echo Column 2 font color = $column2_font_color $F2_C
}
