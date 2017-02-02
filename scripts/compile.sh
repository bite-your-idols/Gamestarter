#!/bin/bash
#################################################
# COMPILAR LOS ZIPS DEL ADDON GAMESTARTER
#################################################

#################################################
# ACtualizar assets libretro
#################################################

read -r -p "Do you want to update libretro assets? [y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
	echo "Descargamos libretro infos..."
	curl -o packages/retroarch/info.zip https://buildbot.libretro.com/assets/frontend/info.zip
	rm packages/retroarch/info/*
	unzip -o packages/retroarch/info.zip -d packages/retroarch/info
	rm packages/retroarch/info.zip

	echo "Descargamos libretro joypad autoconfigs..."
	curl -o packages/retroarch/autoconfig.zip https://buildbot.libretro.com/assets/frontend/autoconfig.zip
	unzip -o packages/retroarch/autoconfig.zip -d packages/retroarch/autoconfig-temp
	rm packages/retroarch/autoconfig.zip
	rm -rf packages/retroarch/autoconfig
	cp -r packages/retroarch/autoconfig-temp/udev packages/retroarch/autoconfig
	rm -rf packages/retroarch/autoconfig-temp

	echo "Descargamos libretro frontend assets..."
	curl -o packages/retroarch/assets.zip https://buildbot.libretro.com/assets/frontend/assets.zip
	unzip -o packages/retroarch/assets.zip -d packages/retroarch/assets-temp
	rm packages/retroarch/assets.zip
	rm -rf packages/retroarch/assets
	mkdir packages/retroarch/assets
	cp -r packages/retroarch/assets-temp/xmb packages/retroarch/assets/xmb
	rm -rf packages/retroarch/assets-temp

	# echo "Descargamos libretro daabases..."
	# curl -o packages/retroarch/database.zip https://buildbot.libretro.com/assets/frontend/database-rdb.zip
	# rm packages/retroarch/database/*
	# unzip -o packages/retroarch/database.zip -d packages/retroarch/database
	# rm packages/retroarch/database.zip	
esac


#################################################
# crear los tar.gz de las carpetas de packages
#################################################

# read -p "Do you want to make tar/zip packages (y/n)? " -n 1 -r
# echo    # (optional) move to a new line
# if [[ ! $REPLY =~ ^[Yy]$ ]];then

read -r -p "Do you want to make tar/zip packages? [y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
       
    echo "Compilamos las carpetas de packages..."
	# hacer un pack de carpeta para cada package y resources/data: 
	# emulationstation.tar.gz | libretro-extra-cores.tar.gz | uae4arm.tar.gz
	cd packages && tar -zcvf emulationstation.tar.gz emulationstation/ && cd ..
	cd packages && tar -zcvf uae4arm.tar.gz uae4arm/ && cd ..
	cd packages && tar -zcvf drastic.tar.gz drastic/ && cd ..
	
	echo "Compilamos las carpetas de data..."
	# advancedemulatorlauncher.tar.gz | advancedlauncher.tar.gz | emulators.tar.gz | libretro-part1.tar.gz | libretro-part2.tar.gz | retroarch.tar.gz
	# subir cada package actualizando el existente
	# cd packages && tar -zcvf ../script.gamestarter/resources/data/emulators.tar.gz emulators/ && cd ..
	cp -R packages/emulators emulators
	rm -rf emulators/roms/ports
	cd packages && tar -zcvf ../script.gamestarter/resources/data/emulators.tar.gz emulators/ && cd ..
	tar -zcvf script.gamestarter/resources/data/emulators.tar.gz emulators/
	rm -rf emulators
	cd packages && tar -zcvf ../script.gamestarter/resources/data/plugin.program.advanced.emulator.launcher.tar.gz plugin.program.advanced.emulator.launcher/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/plugin.program.advanced.launcher.tar.gz plugin.program.advanced.launcher/ && cd ..
	mkdir packages/retroarch/playlists
	cd packages && tar -zcvf ../script.gamestarter/resources/data/retroarch.tar.gz retroarch/ && cd ..
	rm -rf packages/retroarch/playlists
	cd packages && tar -zcvf ../script.gamestarter/resources/data/frontend-assets.tar.gz frontend-assets/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/libretro-cores.tar.gz libretro-cores/ && cd ..
	cd script.gamestarter/resources/data/ && split -b 24M libretro-cores.tar.gz "libretro-cores.tar.gz.part." && cd ../../../
	rm script.gamestarter/resources/data/libretro-cores.tar.gz
	cp packages/plugin.program.advanced.emulator.launcher.zip script.gamestarter/resources/data
	cp packages/advanced-launcher-2.5.8.zip script.gamestarter/resources/data
        ;;
    # *)
        # do_something_else
        # ;;
esac


#################################################
# crear los zips de las versiones del addon
#################################################

# ADDON_VERSION="OLE"
# ADDON_VERSION="LE8alpha"
ADDON_VERSION=$1

read -r -p "Do you want to make addon zip file for "$1"? [y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
	
	echo "compilamos los zips..."
	mkdir -p releases/script.gamestarter
	cp -R script.gamestarter releases/

	if [ "$ADDON_VERSION" = "OLE" ]; then
		echo "Compilamos el addon para "$ADDON_VERSION" ..."
		# OLE
		# install.sh ADDON_VERSION
		sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="XXX"/ADDON_VERSION="OLE"/' releases/script.gamestarter/resources/bin/install.sh

		# retroarch_1.3.6(OLE)
		mv releases/script.gamestarter/resources/bin/retroarch_1.4.0_OE6 releases/script.gamestarter/resources/bin/retroarch
		rm releases/script.gamestarter/resources/bin/retroarch_1.4.0_LE8

		# seleccionar advanced launcher
		rm releases/script.gamestarter/resources/data/plugin.program.advanced.emulator.launcher.tar.gz
		rm releases/script.gamestarter/resources/data/plugin.program.advanced.emulator.launcher.zip

		# dejar las libs necesarias: /lib/libbrcmEGL.so y /lib/libbrcmGLESv2.so para glupen64
		# rm releases/script.gamestarter/lib/README.md
		# quitar las libs -> nuevo core compilado no las necesita
		rm -rf releases/script.gamestarter/lib

	else
		echo "Compilamos el addon para "$ADDON_VERSION" ..."
		# LE8alpha:
		# install.sh ADDON_VERSION
		sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="XXX"/ADDON_VERSION="LE8"/' releases/script.gamestarter/resources/bin/install.sh

		# retroarch_1.3.6_LE8
		mv releases/script.gamestarter/resources/bin/retroarch_1.4.0_LE8 releases/script.gamestarter/resources/bin/retroarch
		rm releases/script.gamestarter/resources/bin/retroarch_1.4.0_OE6

		# seleccionar advanced emulator launcher
		rm releases/script.gamestarter/resources/data/plugin.program.advanced.launcher.tar.gz
		rm releases/script.gamestarter/resources/data/advanced-launcher-2.5.8.zip

		# quitar las libs
		rm -rf releases/script.gamestarter/lib

	fi

	# crear el zip
	# TIMESTAMP=`date +%Y%m%d%k%M%S`
	TIMESTAMP=`date +%Y%m%d%H%M%S`
	cd releases && zip -r script.gamestarter-$ADDON_VERSION-$TIMESTAMP.zip script.gamestarter/ && cd ..
	rm -rf releases/script.gamestarter/

esac


echo "done!"
