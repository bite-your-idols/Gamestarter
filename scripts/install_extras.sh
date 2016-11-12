#!/bin/bash
# Script for Extra installations
kodi-send --action="xbmc.ActivateWindow(busydialog)"

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
		if [ ! -L /storage/.config/emulationstation ]
		  then
		    ln -s $CONFIG_DIRECTORY/emulationstation /storage/.config/emulationstation
		fi
		
		if [ ! -L /storage/.emulationstation ]
		  then
		    ln -s $CONFIG_DIRECTORY/emulationstation /storage/.emulationstation
		fi
		

		#para el scraper
		mv $CONFIG_DIRECTORY/emulationstation/sselph-scraper/scraper.sh $ADDON_DIRECTORY/resources/bin/
		mv $CONFIG_DIRECTORY/emulationstation/sselph-scraper/scraper.py $ADDON_DIRECTORY/resources/bin/
		mv $CONFIG_DIRECTORY/emulationstation/sselph-scraper/scraper $ADDON_DIRECTORY/resources/bin/
		rm -rf $CONFIG_DIRECTORY/emulationstation/sselph-scraper
		chmod a+x $ADDON_DIRECTORY/resources/bin/scraper.sh
		chmod a+x $ADDON_DIRECTORY/resources/bin/scraper

		#restauramos sus archivos si los tenia
		# if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg" ]
		# then
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $CONFIG_DIRECTORY/emulationstation/es_systems_gamestarter.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_systems_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_systems.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_input.cfg $CONFIG_DIRECTORY/emulationstation/es_input_gamestarter.cfg
		# 	mv $CONFIG_DIRECTORY/emulationstation/es_input_BACKUP.cfg $CONFIG_DIRECTORY/emulationstation/es_input.cfg
		# fi

		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
		echo "Emulationstation Installed."
  ;;
  "iarl")  
     	# IARL addon installation 
		# kodi-send --action=Notification"(Gamestarter,Installing IARL,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

		# wget --no-check-certificate -O /storage/plugin.program.iarl.zip https://github.com/zach-morris/plugin.program.iarl/archive/master.zip
		# lo cambiamos por el de la repo de zACHMORRIS
		wget --no-check-certificate -O /storage/plugin.program.iarl.zip https://github.com/zach-morris/repository.zachmorris/raw/master/plugin.program.iarl/plugin.program.iarl-1.5.8.zip
		# y descargamos su repo para los autoupdates
		wget --no-check-certificate -O /storage/repository.zachmorris.zip https://github.com/zach-morris/repository.zachmorris/raw/master/repository.zachmorris/repository.zachmorris-1.0.0.zip
		# tar -xf /storage/iarl.tar.gz -C /storage/.kodi/addons/ -xz

		# rm /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
		# wget --no-check-certificate -O /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/iarl/romlaunch_OE_RPi2.sh
		# chmod a+x /storage/.kodi/addons/plugin.program.iarl-master/resources/bin/romlaunch_OE_RPi2.sh
		# rm /storage/iarl.tar.gz

		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
		echo "IARL Downloaded."
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
		echo "UAE4ARM Installed."
  ;;
   "ports")  
     	# Script for Libretro PORTS installation 
		# kodi-send --action=Notification"(Gamestarter,Installing Libretro ports,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

		echo "Installing Cave Story..."
		curl -o /storage/cavestory.zip https://buildbot.libretro.com/assets/cores/NXEngine/Cave%20Story%20%28en%29.zip
		unzip -o /storage/cavestory.zip -d /storage/emulators/roms/ports/
		rm /storage/cavestory.zip
		wget --no-check-certificate -O /storage/emulators/roms/ports/CaveStory.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/ports/CaveStory.sh
		chmod a+x /storage/emulators/roms/ports/CaveStory.sh
		
		echo "Installing Doom..."
		curl -o /storage/doom.zip https://buildbot.libretro.com/assets/cores/PrBoom/Doom%20%5Bshareware%5D%5B1993%5D.zip
		unzip -o /storage/doom.zip -d /storage/emulators/roms/ports/
		rm /storage/doom.zip
		wget --no-check-certificate -O /storage/emulators/roms/ports/Doom.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/ports/Doom.sh
		chmod a+x /storage/emulators/roms/ports/Doom.sh

		echo "Installing Quake..."
		curl -o /storage/quake.zip https://buildbot.libretro.com/assets/cores/Tyrquake/Quake%20%5Bshareware%5D%5B1996%5D.zip
		unzip -o /storage/quake.zip -d /storage/emulators/roms/ports/
		rm /storage/quake.zip
		wget --no-check-certificate -O /storage/emulators/roms/ports/Quake.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/ports/Quake.sh
		chmod a+x /storage/emulators/roms/ports/Quake.sh

		echo "Installing Dinothawr..."
		curl -o /storage/dino.zip https://buildbot.libretro.com/assets/cores/Dinothawr/Dinothawr.zip
		unzip -o /storage/dino.zip -d /storage/emulators/roms/ports/
		rm /storage/dino.zip
		wget --no-check-certificate -O /storage/emulators/roms/ports/Dinothawr.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/ports/Dinothawr.sh
		chmod a+x /storage/emulators/roms/ports/Dinothawr.sh
		
		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
		echo "Libretro ports Installed."
  ;;
   "esthemes")  
     	# Script for ES themes installation 
		# kodi-send --action=Notification"(Gamestarter,Installing Libretro ports,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"

		echo "Installing Carbon no-meta..."
		wget --no-check-certificate -O  /storage/carbon-nometa.zip https://github.com/RetroPie/es-theme-carbon-nometa/archive/master.zip
		unzip -o /storage/carbon-nometa.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/carbon-nometa.zip
		
		echo "Installing Carbon..."
		wget --no-check-certificate -O  /storage/carbon.zip https://github.com/RetroPie/es-theme-carbon/archive/master.zip
		unzip -o /storage/carbon.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/carbon.zip

		echo "Installing Pixel..."
		wget --no-check-certificate -O  /storage/pixel.zip https://github.com/RetroPie/es-theme-pixel/archive/master.zip
		unzip -o /storage/pixel.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/pixel.zip

		echo "Installing Turtle-pi..."
		wget --no-check-certificate -O  /storage/turtle.zip https://github.com/RetroPie/es-theme-turtle-pi/archive/master.zip
		unzip -o /storage/turtle.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/turtle.zip

		echo "Installing Canela..."
		wget --no-check-certificate -O  /storage/canela.zip https://github.com/RetroPie/es-theme-simplified-static-canela/archive/master.zip
		unzip -o /storage/canela.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/canela.zip

		echo "Installing clean look..."
		wget --no-check-certificate -O  /storage/clean.zip https://github.com/RetroPie/es-theme-clean-look/archive/master.zip
		unzip -o /storage/clean.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/clean.zip

		echo "Installing Tronkyfran..."
		wget --no-check-certificate -O  /storage/tronkyfran.zip https://github.com/HerbFargus/es-theme-tronkyfran/archive/master.zip
		unzip -o /storage/tronkyfran.zip -d $CONFIG_DIRECTORY/emulationstation/themes/
		rm /storage/tronkyfran.zip
		
		# kodi-send --action=Notification"(Gamestarter,IARL addon downloaded,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
		echo "ES Themes Installed."
   ;;
   "excores")  
     	# Script for Experimental Cores installation 
		wget --no-check-certificate -O  /storage/.kodi/addons/script.gamestarter/resources/bin/libretro-cores/desmume_libretro.so https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-ex/desmume_libretro.so
		wget --no-check-certificate -O  /storage/.kodi/addons/script.gamestarter/resources/bin/libretro-cores/mame2010_libretro.so https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-ex/mame2010_libretro.so
		wget --no-check-certificate -O  /storage/.kodi/addons/script.gamestarter/resources/bin/libretro-cores/yabause_libretro.so https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-ex/yabause_libretro.so

		echo "Experimental cores Installed."
  ;;
esac

kodi-send --action="xbmc.Dialog.Close(busydialog)"