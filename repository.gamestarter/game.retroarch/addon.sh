#!/bin/sh
. /etc/profile

 DIR="/storage/.kodi/addons/game.retroarch"
systemd-run $DIR/addon.start "$@" >> /storage/.kodi/temp/retroarch.log