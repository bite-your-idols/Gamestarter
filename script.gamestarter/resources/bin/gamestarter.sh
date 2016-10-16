#!/bin/sh
. /etc/profile

DIR="/storage/.kodi/addons/script.gamestarter"

systemd-run $DIR/resources/bin/gamestarter.start "$@" &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log
