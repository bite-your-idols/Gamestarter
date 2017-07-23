#!/bin/bash
# Script for installing Gamestarter

kodi-send --action="xbmc.ActivateWindow(busydialog)"

echo '::Gamestarter:: -> installation on ' $(date)
ADDON_DIRECTORY=$1
# ADDON_VERSION="OLE"
# ADDON_VERSION="LE8alpha"
#versionstart
ADDON_VERSION="XXX"
#versionend

# comprobamos si le ha llegado una ruta sino ponemos la de OLE por defecto
if [ -z "$ADDON_DIRECTORY" ]; then
	ADDON_DIRECTORY="/storage/.kodi/addons/script.gamestarter"
	# ADDON_DIRECTORY="/home/osmc/.kodi/addons/script.gamestarter"
# else
	# echo "$ADDON_DIRECTORY"
fi

echo "::Gamestarter:: -> installing in Open/LibreELEC: " $ADDON_VERSION
# CONFIG_DIRECTORY="/storage/.config"
USERADDON_DIRECTORY="/storage/.kodi/userdata/addon_data"
CONFIG_DIRECTORY=$USERADDON_DIRECTORY"/script.gamestarter"
ROOT_DIRECTORY="/storage"
 
# añadir audio al config.txt
mount -o remount,rw /flash
if grep -Fxq "dtparam=audio=on" /flash/config.txt
then
    echo '::Gamestarter:: -> no edit config.txt...'
else
	echo 'dtparam=audio=on' >> /flash/config.txt
	echo '::Gamestarter:: -> edit config.txt...'
fi

# hacer ejecutables los scripts y binarios
echo '::Gamestarter:: -> script permissions...'
chmod a+x $ADDON_DIRECTORY/resources/bin/gamestarter.sh
chmod a+x $ADDON_DIRECTORY/resources/bin/gamestarter.start
chmod a+x $ADDON_DIRECTORY/resources/bin/retroarch
# chmod a+x $ADDON_DIRECTORY/resources/bin/emulationstation
# chmod a+x $ADDON_DIRECTORY/resources/bin/uae4arm
chmod a+x $ADDON_DIRECTORY/resources/bin/backup.sh


#copiar los packages de data a .config
echo '::Gamestarter:: -> copying packages...'
# mkdir $CONFIG_DIRECTORY
tar -xf $ADDON_DIRECTORY/resources/data/retroarch.tar.gz -C $CONFIG_DIRECTORY/ -xz
# mkdir $CONFIG_DIRECTORY/retroarch/cores/
cat $ADDON_DIRECTORY/resources/data/libretro-cores.tar.gz.part.* > $ADDON_DIRECTORY/resources/data/libretro-cores.tar.gz
tar -xf $ADDON_DIRECTORY/resources/data/libretro-cores.tar.gz -C $ADDON_DIRECTORY/resources/bin/ -xz
# mv $CONFIG_DIRECTORY/retroarch/libretro-cores $CONFIG_DIRECTORY/retroarch/cores
rm $ADDON_DIRECTORY/resources/data/libretro-cores.tar.gz
# tar -xf $ADDON_DIRECTORY/resources/data/emulationstation.tar.gz -C $CONFIG_DIRECTORY/ -xz
tar -xf $ADDON_DIRECTORY/resources/data/emulators.tar.gz -C $ROOT_DIRECTORY -xz
mkdir /storage/emulators/roms/amiga
mkdir /storage/emulators/roms/atari2600
mkdir /storage/emulators/roms/atarilynx
mkdir /storage/emulators/roms/atarist
mkdir /storage/emulators/roms/fba
mkdir /storage/emulators/roms/gamegear
mkdir /storage/emulators/roms/gb
mkdir /storage/emulators/roms/gba
mkdir /storage/emulators/roms/gw
mkdir /storage/emulators/roms/mame
mkdir /storage/emulators/roms/mastersystem
mkdir /storage/emulators/roms/megadrive
mkdir /storage/emulators/roms/msx
mkdir /storage/emulators/roms/n64
mkdir /storage/emulators/roms/neogeo
mkdir /storage/emulators/roms/nes
mkdir /storage/emulators/roms/nds
#mkdir /storage/emulators/roms/ngp
mkdir /storage/emulators/roms/pcengine
mkdir /storage/emulators/roms/ports
mkdir /storage/emulators/roms/psp
mkdir /storage/emulators/roms/psx
#mkdir /storage/emulators/roms/saturn
#mkdir /storage/emulators/roms/sega32x
#mkdir /storage/emulators/roms/sg1000
#mkdir /storage/emulators/roms/scummvm
mkdir /storage/emulators/roms/snes
# mkdir /storage/emulators/roms/vectrex
mkdir /storage/emulators/roms/videopac
mkdir /storage/emulators/roms/wonderswan
mkdir /storage/emulators/roms/zxspectrum
tar -xf $ADDON_DIRECTORY/resources/data/frontend-assets.tar.gz -C $CONFIG_DIRECTORY -xz

# chmod a+x $ROOT_DIRECTORY/emulators/roms/ports/CaveStory.sh
# chmod a+x $ROOT_DIRECTORY/emulators/roms/ports/Dinothawr.sh
# chmod a+x $ROOT_DIRECTORY/emulators/roms/ports/Doom.sh
# chmod a+x $ROOT_DIRECTORY/emulators/roms/ports/Quake.sh

#acceso directo de retroarch en .config que es donde se genera por default
if [ ! -L $ROOT_DIRECTORY/.config/retroarch ]
  then
    ln -s $CONFIG_DIRECTORY/retroarch $ROOT_DIRECTORY/.config/retroarch
fi


if [ "$ADDON_VERSION" = "OLE" ]; then
	# Open/LibreELEC
	echo '::Gamestarter:: -> installing advanced launcher...'
	tar -xf $ADDON_DIRECTORY/resources/data/plugin.program.advanced.launcher.tar.gz -C $USERADDON_DIRECTORY/ -xz
	# wget --no-check-certificate -O $ROOT_DIRECTORY/advancedlauncher.zip https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/advanced-launcher-2.5.8.zip
	# unzip -o $ROOT_DIRECTORY/advancedlauncher.zip -d $ROOT_DIRECTORY/.kodi/addons/
	unzip -o $ADDON_DIRECTORY/resources/data/advanced-launcher-2.5.8.zip -d $ROOT_DIRECTORY/.kodi/addons/
	# rm $ROOT_DIRECTORY/advancedlauncher.zip
else
	# LibreELEC 8 alpha
	# echo '::Gamestarter:: -> installing advanced emulator launcher...'
	# wget --no-check-certificate -O $ROOT_DIRECTORY/advancedemulatorlauncher.zip https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/plugin.program.advanced.emulator.launcher-0.9.3.zip
	# unzip $ROOT_DIRECTORY/advancedemulatorlauncher.zip -d $ROOT_DIRECTORY/.kodi/addons/
	unzip -o $ADDON_DIRECTORY/resources/data/plugin.program.advanced.emulator.launcher.zip -d $ROOT_DIRECTORY/.kodi/addons/
	# rm $ROOT_DIRECTORY/advancedemulatorlauncher.zip
	tar -xf $ADDON_DIRECTORY/resources/data/plugin.program.advanced.emulator.launcher.tar.gz -C $USERADDON_DIRECTORY/ -xz
fi

touch $ADDON_DIRECTORY/resources/bin/installed
rm -rf $ADDON_DIRECTORY/resources/data

echo $ADDON_VERSION >> $ADDON_DIRECTORY/resources/bin/installed

# end installation
echo '::Gamestarter:: -> installation completed, enjoy!!'

kodi-send --action="xbmc.Dialog.Close(busydialog)"
