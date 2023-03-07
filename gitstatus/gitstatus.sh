#!/usr/bin/bash

# var git status
gsa=$(cd ~/workspace/arduino/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')
gse=$(cd ~/workspace/exercises/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')
gsc=$(cd ~/workspace/config/ && git status | sed -n "4p" | sed -E 's/^.*(Changes|clean|Untracked|limpio|Cambios).*$/\1/')

echo " || Arduino: $gsa || Config: $gsc || Exercises: $gse" | rofi -sep '|' -dmenu -p " *** GIT STATUS *** " -theme ./theme/v1-gitstatus.rasi -i
