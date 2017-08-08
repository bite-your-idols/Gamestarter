#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/game.ppsspp"

systemd-run $DIR/addon.start "$@" >> /storage/.kodi/temp/ppsspp.log
