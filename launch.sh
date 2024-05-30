#!/usr/bin/env bash

#THEME="chnvok"
#THEME="dracula"
#THEME="gruvbox"
#THEME="lofi"
THEME="material"
#THEME="minimal"
#THEME="murz"
#THEME="nord"
#THEME="onedark"


killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini
polybar main -c $CONFIG_DIR &
