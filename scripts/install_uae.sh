#!/bin/bash
# Script for UAE4ARM emulator installation 

# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
ADDON_DIRECTORY="/storage/.kodi/addons/script.gamestarter"

wget --no-check-certificate -O /storage/uae4arm.tar.gz https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/uae4arm.tar.gz
tar -xf /storage/uae4arm.tar.gz -C /storage/uae4arm-temp/ -xz
# rm /storage/uae4arm.tar.gz

mkdir /storage/uae4arm-temp
mv /storage/uae4arm-temp/uae4arm $ADDON_DIRECTORY/resources/bin/uae4arm
mv /storage/uae4arm-temp/lib/* /storage/.kodi/addons/script.gamestarter/lib/
# rm -rf /storage/uae4arm-temp/

chmod a+x $ADDON_DIRECTORY/resources/bin/uae4arm

# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
