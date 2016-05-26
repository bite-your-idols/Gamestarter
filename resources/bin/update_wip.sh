#!/bin/bash
# Script for checking for updates 
# kodi-send --action=Notification"(Gamestarter,Checking for updates...,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
# ADDON_VERSION=$1
# LATEST_VERSION="2.0.2"

# if [ $ADDON_VERSION == $LATEST_VERSION ]
# then
#   kodi-send --action=Notification"(Gamestarter,Gamestarter is up to date,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
# else
    #do_something_else
#    kodi-send --action=Notification"(Gamestarter,There is a new version you can download,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
#fi

# comprobar que changelog de internet y local son iguales
wget --no-check-certificate -O /storage/.kodi/addons/script.gamestarter/changelog_latest.txt https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/changelog.txt
changelog_local="/storage/.kodi/addons/script.gamestarter/changelog.txt"
changelog_remote="/storage/.kodi/addons/script.gamestarter/changelog_latest.txt"
if cmp -s "$changelog_local" "$changelog_remote"
then
   echo "The files match"
   kodi-send --action=Notification"(Gamestarter,Gamestarter is up to date,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
else
   echo "The files are different"
   kodi-send --action=Notification"(Gamestarter,There is a new version you can download,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
fi

# touch /storage/.kodi/addons/script.gamestarter/resources/bin/updated
#rm /storage/.kodi/addons/script.gamestarter/resources/bin/updated
rm /storage/.kodi/addons/script.gamestarter/changelog_latest.txt
rm /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh

