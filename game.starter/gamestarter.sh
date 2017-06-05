#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/game.starter"

systemd-run $DIR/gamestarter.start "$@" &> /storage/.kodi/temp/gamestarter.log
