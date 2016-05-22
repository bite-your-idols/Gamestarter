#!/bin/bash
# Script for checking for updates

# ADDON_VERSION=$1

rm /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh
kodi-send --action=Notification"(Gamestarter,IARL addon Installed,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
