#!/bin/bash
# Script for EmulationsStation installation 

# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
ADDON_DIRECTORY="/storage/.kodi/addons/script.gamestarter"
CONFIG_DIRECTORY="/storage/.config"

# chekeamos si ya esta instalado y hacemos copia de seguridad de sus archivos
# if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems.cfg" ]
# then
# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg
# 	mv $CONFIG_DIRECTORY/emulationstation/es_input.cfg $CONFIG_DIRECTORY/emulationstation/es_input_BACKUP.cfg
# fi

wget --no-check-certificate -O /storage/emulationstation.tar.gz https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/emulationstation.tar.gz
tar -xf /storage/emulationstation.tar.gz -C $CONFIG_DIRECTORY/ -xz
rm /storage/emulationstation.tar.gz

mv $CONFIG_DIRECTORY/emulationstation/emulationstation $ADDON_DIRECTORY/resources/bin/emulationstation
mkdir -p $ADDON_DIRECTORY/lib/
mv $CONFIG_DIRECTORY/emulationstation/lib/* $ADDON_DIRECTORY/lib/
rm -rf $CONFIG_DIRECTORY/emulationstation/lib/

chmod a+x $ADDON_DIRECTORY/resources/bin/emulationstation

#para el scraper
ln -s $CONFIG_DIRECTORY/emulationstation /storage/.emulationstation
chmod a+x $CONFIG_DIRECTORY/emulationstation/sselph-scraper/scraper.sh

#restauramos sus archivos si los tenia
# if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg" ]
# then
# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $CONFIG_DIRECTORY/emulationstation/es_systems_gamestarter.cfg
# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_systems.cfg
# 	mv $CONFIG_DIRECTORY/emulationstation/es_input.cfg $CONFIG_DIRECTORY/emulationstation/es_input_gamestarter.cfg
# 	mv $CONFIG_DIRECTORY/emulationstation/es_input_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_input.cfg
# fi







# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
