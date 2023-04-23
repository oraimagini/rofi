#!/bin/bash

# control music made with Rofi

alta=$(echo 🕪 );
media=$(echo 🕩 );
baja=$(echo 🕨 );
mute=$(echo 🗙 );
fuerte=$(echo 🎝 );
options="$alta\n$media\n$baja\n$mute\n$fuerte"

selected="$(echo -e "$options" | rofi -show -dmenu -theme ./theme/style01/cvm.rasi)"

case $selected in
    "${alta}")
        pactl set-sink-volume @DEFAULT_SINK@ 72%;
        exit;;
    "${media}")
        pactl set-sink-volume @DEFAULT_SINK@ 42%
        ;;
    "${baja}")
        pactl set-sink-volume @DEFAULT_SINK@ 13%
        ;;
    "${mute}")
        pactl set-sink-volume @DEFAULT_SINK@ 0%
        ;;
    "${fuerte}")
        pactl set-sink-volume @DEFAULT_SINK@ 100%
        ;;
esac
