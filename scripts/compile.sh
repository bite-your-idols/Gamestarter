#!/bin/bash
#################################################
# COMPILAR LOS ZIPS DEL ADDON GAMESTARTER
#################################################


#################################################
# crear los tar.gz de las carpetas de packages
#################################################

# hacer un pack de carpeta para cada package y resources/data: 
# emulationstation.tar.gz | libretro-extra-cores.tar.gz | uae4arm.tar.gz
# advancedemulatorlauncher.tar.gz | advancedlauncher.tar.gz | emulators.tar.gz | libretro-part1.tar.gz | libretro-part2.tar.gz | retroarch.tar.gz
# subir cada package actualizando el existente



#################################################
# crear los zips de las versiones del addon
#################################################

# ADDON_VERSION="OLE"
# ADDON_VERSION="LE8alpha"
ADDON_VERSION=$1

cp -R script.gamestarter exports/script.gamestarter

if [ "$ADDON_VERSION" = "OLE" ]; then

	# OLE
	# install.sh ADDON_VERSION
	sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="xxx"/ADDON_VERSION="OLE"/' /exports/script.gamestarter/resources/bin/install.sh

	# retroarch_1.3.6(OLE)
	mv /exports/script.gamestarter/resources/bin/retroarch_1.3.6 /exports/script.gamestarter/resources/bin/retroarch
	rm /exports/script.gamestarter/resources/bin/retroarch_1.3.6_libreelec8

	# seleccionar advanced launcher
	rm /exports/script.gamestarter/resources/data/advancedemulatorlauncher.tar.gz

	# dejar las libs necesarias: /lib/libbrcmEGL.so y /lib/libbrcmGLESv2.so para glupen64

else

	# LE8alpha:
	# install.sh ADDON_VERSION
	sed -i '/#versionstart/,/#versionend/s/ADDON_VERSION="xxx"/ADDON_VERSION="LE8alpha"/' /exports/script.gamestarter/resources/bin/install.sh

	# retroarch_1.3.6_libreelec8
	mv /exports/script.gamestarter/resources/bin/retroarch_1.3.6_libreelec8 /exports/script.gamestarter/resources/bin/retroarch
	rm /exports/script.gamestarter/resources/bin/retroarch_1.3.6

	# seleccionar advanced emulator launcher
	rm /exports/script.gamestarter/resources/data/advancedlauncher.tar.gz

	# quitar las libs
	rm -rf /exports/script.gamestarter/lib

fi


# crear el zip
zip /exports/script.gamestarter script.gamestarter-$ADDON_VERSION.

echo "done!"
