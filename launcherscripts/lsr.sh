#!/bin/bash

ls ~/workspace/config/bash/bsct | rofi -show -dmenu -p "> " -theme ~/.config/rofi/theme/sidev4.rasi -i | xargs -I_ bash ~/workspace/config/bash/bsct/_

# doc
# listamos | pasamos esa lista por rofi | con xargs le pasamos la elección que hicimos a bash para que ejecute

# rofi parametros
# -i | sensitive: la no distincion de mayusculas o minusculas en la busqueda
# -font "Hack Nerd Font 15" | elección de fonts por parametros
# -p " " | pasamos un titulo como parametro
