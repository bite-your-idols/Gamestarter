#!/bin/bash
# Script for checking for updates 
# kodi-send --action=Notification"(Gamestarter,Checking for updates...,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
ADDON_VERSION=$1
LATEST_VERSION="2.0.2"
# echo $ADDON_VERSION
# kodi-send --action=Notification"(Gamestarter,$ADDON_VERSION,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"

if [ $ADDON_VERSION == $LATEST_VERSION ]
then
   kodi-send --action=Notification"(Gamestarter,Gamestarter is up to date,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
else
    #do_something_else
    kodi-send --action=Notification"(Gamestarter,There is a new version you can download,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
fi

# comprobar que changelog de internet y local son iguales
# file1=
# file2=
# if cmp -s "$file1" "$file2"
# then
#    echo "The files match"
# else
#    echo "The files are different"
# fi

# touch /storage/.kodi/addons/script.gamestarter/resources/bin/updated
#rm /storage/.kodi/addons/script.gamestarter/resources/bin/updated
rm /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh

