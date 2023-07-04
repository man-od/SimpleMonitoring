#!/bin/bash
. ./func.sh
. ./colors.sh
. ./print.sh
. ./config.conf

#function setColor {
	if [ $# -ne 0 ]; then
		echo "Error: Found arguments!"
	else
		export f_BG1=$column1_background
		export f_F1=$column1_font_color
		export f_BG2=$column2_background
		export f_F2=$column2_font_color
		
		if [[ $f_BG1 == "" ]]; then
			f_BG1=1; 
			column1_background="default"
		fi
		if [[ $f_F1 == "" ]]; then
			f_F1=6; 
			column1_font_color="default"
		fi
		if [[ $f_BG2 == "" ]]; then
			f_BG2=4; 
			column2_background="default"
		fi
		if [[ $f_F2 == "" ]]; then
			f_F2=1; 
			column2_font_color="default"
		fi

		re='(^[1-6]$)'
		if ! [[ $f_BG1 =~ $re ]] && [[ $f_F1 =~ $re ]] && [[ $f_BG2 =~ $re ]] && [[ $f_F2 =~ $re ]]; then
			echo "Error: invalid arguments"
		else
			if [ $f_BG1 = $f_F1 ] || [ $f_BG2 = $f_F2 ]; then
				echo "Error: backgound color = fonts color"
			else
				case $f_BG1 in
					"1") BG1=$white_bg; BG1_C="(white)";;
					"2") BG1=$red_bg; BG1_C="(red)";;
					"3") BG1=$green_bg; BG1_C="(green)";;
					"4") BG1=$blue_bg; BG1_C="(blue)";;
					"5") BG1=$purple_bg; BG1_C="(purple)";;
					"6") BG1=$black_bg; BG1_C="(black)";;
				esac
				case $f_F1 in
					"1") F1=$white; F1_C='(white)';;
					"2") F1=$red; F1_C='(red)';;
					"3") F1=$green; F1_C='(green)';;
					"4") F1=$blue; F1_C='(blue)';;
					"5") F1=$purple; F1_C='(purple)';;
					"6") F1=$black; F1_C='(black)';;
				esac
				case $f_BG2 in
					"1") BG2=$white_bg; BG2_C='(white)';;
					"2") BG2=$red_bg; BG2_C='(red)';;
					"3") BG2=$green_bg; BG2_C='(green)';;
					"4") BG2=$blue_bg; BG2_C='(blue)';;
					"5") BG2=$purple_bg; BG2_C='(purple)';;
					"6") BG2=$black_bg; BG2_C='(black)';;
				esac
				case $f_F2 in
					"1") F2=$white; F2_C='(white)';;
					"2") F2=$red; F2_C='(red)';;
					"3") F2=$green; F2_C='(green)';;
					"4") F2=$blue; F2_C='(blue)';;
					"5") F2=$purple; F2_C='(purple)';;
					"6") F2=$black; F2_C='(black)';;
				esac
				print
				print_nameColor
			fi
		fi
	fi
#}
