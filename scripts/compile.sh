#!/bin/bash
#################################################
# COMPILAR LOS ZIPS DEL ADDON GAMESTARTER
#################################################


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
	
	echo "Compilamos las carpetas de data..."
	# advancedemulatorlauncher.tar.gz | advancedlauncher.tar.gz | emulators.tar.gz | libretro-part1.tar.gz | libretro-part2.tar.gz | retroarch.tar.gz
	# subir cada package actualizando el existente
	cd packages && tar -zcvf ../script.gamestarter/resources/data/emulators.tar.gz emulators/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/advancedemulatorlauncher.tar.gz advancedemulatorlauncher/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/advancedlauncher.tar.gz advancedlauncher/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/retroarch.tar.gz retroarch/ && cd ..
	cd packages && tar -zcvf ../script.gamestarter/resources/data/libretro-cores.tar.gz libretro-cores/ && cd ..
	cd script.gamestarter/resources/data/ && split -b 24M libretro-cores.tar.gz "libretro-cores.tar.gz.part." && cd ../../../
#	rm script.gamestarter/resources/data/libretro-cores.tar.gz
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
	mkdir -p exports/script.gamestarter
	cp -R script.gamestarter exports/

	if [ "$ADDON_VERSION" = "OLE" ]; then
		echo "Compilamos el addon para "$ADDON_VERSION" ..."
		# OLE
		# install.sh ADDON_VERSION
		sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="XXX"/ADDON_VERSION="OLE"/' exports/script.gamestarter/resources/bin/install.sh

		# retroarch_1.3.6(OLE)
		mv exports/script.gamestarter/resources/bin/retroarch_1.3.6 exports/script.gamestarter/resources/bin/retroarch
		rm exports/script.gamestarter/resources/bin/retroarch_1.3.6_libreelec8

		# seleccionar advanced launcher
		rm exports/script.gamestarter/resources/data/advancedemulatorlauncher.tar.gz

		# dejar las libs necesarias: /lib/libbrcmEGL.so y /lib/libbrcmGLESv2.so para glupen64
		rm exports/script.gamestarter/lib/libs.txt

	else
		echo "Compilamos el addon para "$ADDON_VERSION" ..."
		# LE8alpha:
		# install.sh ADDON_VERSION
		sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="XXX"/ADDON_VERSION="LE8alpha"/' exports/script.gamestarter/resources/bin/install.sh

		# retroarch_1.3.6_libreelec8
		mv exports/script.gamestarter/resources/bin/retroarch_1.3.6_libreelec8 exports/script.gamestarter/resources/bin/retroarch
		rm exports/script.gamestarter/resources/bin/retroarch_1.3.6

		# seleccionar advanced emulator launcher
		rm exports/script.gamestarter/resources/data/advancedlauncher.tar.gz

		# quitar las libs
		rm -rf exports/script.gamestarter/lib

	fi

	# crear el zip
	TIMESTAMP=`date +%Y%m%d`
	cd exports && zip -r script.gamestarter-$ADDON_VERSION-$TIMESTAMP.zip script.gamestarter/ && cd ..
	rm -rf exports/script.gamestarter/

esac


echo "done!"
