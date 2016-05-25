#!/bin/bash
# Script for IARL addon installation 

# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
wget --no-check-certificate -O /storage/plugin.program.iarl.zip https://github.com/zach-morris/plugin.program.iarl/archive/master.zip
# tar -xf /storage/iarl.tar.gz -C /storage/.kodi/addons/ -xz

# rm /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
# wget --no-check-certificate -O /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/iarl/romlaunch_OE_RPi2.sh
# chmod a+x /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh

# rm /storage/iarl.tar.gz
# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"