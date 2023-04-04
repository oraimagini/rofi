#!/usr/bin/bash

# var git status
gsa=$(cd ~/workspace/arduino/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')
gse=$(cd ~/workspace/exercises/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')
gsc=$(cd ~/workspace/config/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')

egsa=$(echo "    Arduino: $gsa");
egse=$(echo "    Exercises: $gse");
egsc=$(echo "    Config: $gsc");
options="\n\n$egsa\n\n$egse\n\n$egsc\n\n"

#echo " || Arduino: $gsa || Config: $gsc || Exercises: $gse" | rofi -sep '|' -dmenu -p " *** GIT STATUS *** " -theme ./theme/v1-gitstatus.rasi -i
selected="$(echo -e "$options" | rofi -show -dmenu -p " *** GIT STATUS *** " -theme ./theme/gitstatus.rasi -i)"
