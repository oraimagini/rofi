#!/bin/bash

# Powermenu made with Rofi

poweroff=$(echo ⏻ );
reboot=$(echo ◀ );
sleep=$(echo ⏾ );
logout=$(echo ❮);
lock=$(echo ✖);
options="$poweroff\n$reboot\n$sleep\n$logout\n$lock"

selected="$(echo -e "$options" | rofi -show -dmenu -theme ~/.config/rofi/theme/style01/pwm.rasi )"

case $selected in
    "${poweroff}")
        systemctl poweroff
        ;;
    "${reboot}")
        systemctl reboot
        ;;
    "${sleep}")
        systemctl suspend
        ;;
    "${logout}")
        kill -9 -1
        ;;
    "${lock}")
	terminator -f -x "cmatrix; bash" && terminator --geometry=1200x780+0 -x "cmatrix; bash"
        ;;
esac
