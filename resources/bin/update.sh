#!/bin/bash
# Script for checking for updates

ADDON_VERSION=$1
kodi-send --action=Notification"(Gamestarter,$ADDON_VERSION,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
# wget --no-check-certificate -O /storage/iarl.tar.gz https://github.com/zach-morris/plugin.program.iarl/archive/master.tar.gz
# tar -xf /storage/iarl.tar.gz -C /storage/.kodi/addons/ -xz

# rm /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
# wget --no-check-certificate -O /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/iarl/romlaunch_OE_RPi2.sh
# chmod a+x /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh

rm /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh
# kodi-send --action=Notification"(Gamestarter,IARL addon Installed,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
