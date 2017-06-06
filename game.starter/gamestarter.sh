#!/bin/sh
. /etc/profile

ADDON_DIRECTORY="/storage/.kodi/addons/game.starter"
chmod a+x $ADDON_DIRECTORY/gamestarter.sh
chmod a+x $ADDON_DIRECTORY/gamestarter.start
chmod a+x $ADDON_DIRECTORY/game.retroarch

systemd-run $ADDON_DIRECTORY/gamestarter.start "$@" &> /storage/.kodi/temp/gamestarter.log
# systemd-run /storage/.kodi/addons/game.starter/gamestarter.start retroarch &> /storage/.kodi/temp/gamestarter.log