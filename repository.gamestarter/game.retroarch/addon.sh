#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/game.retroarch"
# systemd-run $DIR/addon.start "$@" >> /storage/.kodi/temp/retroarch.log

# AEL_CAT=$3
# AEL_LAUNCHER=$4
# AEL_ROM=$5
# AEL="yes"

# # echo "RetroArch [ADDON] :: Launching using AEL ($3 $4 $5 $6 $7)" >> /storage/.kodi/temp/retroarch.log
# if [ ! "$AEL_CAT"="" ] && [! "$AEL_LAUNCHER"=""]; then
# 	echo "RetroArch [ADDON] :: Launching using AEL ($3 $4 $5)" >> /storage/.kodi/temp/retroarch.log
# # else
# fi

systemd-run $DIR/addon.start "$@" >> /storage/.kodi/temp/retroarch.log
