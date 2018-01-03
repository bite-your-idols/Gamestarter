#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/game.drastic"

systemd-run $DIR/addon.start "$@" >> /storage/.kodi/temp/drastic.log
