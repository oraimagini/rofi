#!/bin/bash

ls ~/workspace/config/bash/bsct | rofi -show -dmenu -p "> " -theme ~/.config/rofi/theme/style01/lsr.rasi -i | xargs -I_ bash ~/workspace/config/bash/bsct/_
