#!/bin/bash
# Script for Extra installations
OPTION=$1
ADDON_DIRECTORY="/storage/.kodi/addons/script.gamestarter"
# CONFIG_DIRECTORY="/storage/.config"
CONFIG_DIRECTORY="/storage/.kodi/userdata/addon_data/script.gamestarter"

case $1 in
  "emulationstation")  
  		# EmulationsStation installation
	    # kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

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
		
		# acceso directo a la carpeta de config default
		ln -s $CONFIG_DIRECTORY/emulationstation /storage/.config/emulationstation
		ln -s $CONFIG_DIRECTORY/emulationstation /storage/.emulationstation

		#para el scraper
		mv $CONFIG_DIRECTORY/emulationstation/sselph-scraper/ $ADDON_DIRECTORY/resources/bin/
		rm -rf $CONFIG_DIRECTORY/emulationstation/sselph-scraper
		chmod a+x $ADDON_DIRECTORY/resources/bin/scraper.sh

		#restauramos sus archivos si los tenia
		# if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg" ]
		# then
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $CONFIG_DIRECTORY/emulationstation/es_systems_gamestarter.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_systems.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_input.cfg $CONFIG_DIRECTORY/emulationstation/es_input_gamestarter.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_input_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_input.cfg
		# fi

		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
  ;;
  "iarl")  
     	# IARL addon installation 
		# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

		# wget --no-check-certificate -O /storage/plugin.program.iarl.zip https://github.com/zach-morris/plugin.program.iarl/archive/master.zip
		# lo cambiamos por el de la repo de zACHMORRIS
		wget --no-check-certificate -O /storage/plugin.program.iarl.zip https://github.com/zach-morris/repository.zachmorris/raw/master/plugin.program.iarl/plugin.program.iarl-1.5.5.zip
		# y descargamos su repo para los autoupdates
		wget --no-check-certificate -O /storage/repository.zachmorris.zip https://github.com/zach-morris/repository.zachmorris/raw/master/repository.zachmorris/repository.zachmorris-1.0.0.zip
		# tar -xf /storage/iarl.tar.gz -C /storage/.kodi/addons/ -xz

		# rm /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
		# wget --no-check-certificate -O /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/iarl/romlaunch_OE_RPi2.sh
		# chmod a+x /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
		# rm /storage/iarl.tar.gz

		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
  ;;
   "uae4arm")  
     	# Script for UAE4ARM emulator installation 
		# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

		wget --no-check-certificate -O /storage/uae4arm.tar.gz https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/uae4arm.tar.gz
		tar -xf /storage/uae4arm.tar.gz -C /storage/ -xz
		rm /storage/uae4arm.tar.gz

		mv /storage/uae4arm/uae4arm $ADDON_DIRECTORY/resources/bin/uae4arm
		mkdir -p $ADDON_DIRECTORY/lib/
		mv /storage/uae4arm/lib/* $ADDON_DIRECTORY/lib/
		rm -rf /storage/uae4arm/

		chmod a+x $ADDON_DIRECTORY/resources/bin/uae4arm

		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
  ;;
esac
