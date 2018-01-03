#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/script.gamestarter"

systemd-run $DIR/resources/bin/gamestarter.start "$@" &> /storage/.kodi/temp/gamestarter.log
