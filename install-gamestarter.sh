#!/bin/bash
# Script for downloading and installing Gamestarter

#Welcome message
echo '*******************************************************************************' 
echo 'This script will install/update Gamestarter' 
echo 'Version 0.0.1' 
echo '*******************************************************************************'

# create/setup directories
mkdir -p /storage/downloads
mkdir -p /storage/emulators

# descargar retroarch y los cores
echo 'downloading RetroArch...' 
wget --no-check-certificate -O /storage/downloads/retroarch.tar.gz https://github.com/bite-your-idols/gamestarter-openelec/blob/master/packages/retroarch.tar.gz?raw=true
tar -xf /storage/downloads/retroarch.tar.gz -C /storage/emulators/ -xz

echo 'downloading Libretro cores...' 
mkdir -p /storage/emulators/retroarch/cores
wget --no-check-certificate -O /storage/downloads/libretro-1.tar.gz https://github.com/bite-your-idols/gamestarter-openelec/blob/master/packages/libretro-1.tar.gz?raw=true
tar -xf /storage/downloads/libretro-1.tar.gz -C /storage/emulators/retroarch/cores/ -xz
wget --no-check-certificate -O /storage/downloads/libretro-2.tar.gz https://github.com/bite-your-idols/gamestarter-openelec/blob/master/packages/libretro-2.tar.gz?raw=true
tar -xf /storage/downloads/libretro-2.tar.gz -C /storage/emulators/retroarch/cores/ -xz


# descargar amiga
echo 'downloading uae4arm...' 
wget --no-check-certificate -O /storage/downloads/uae4arm.tar.gz https://github.com/bite-your-idols/gamestarter-openelec/blob/master/packages/uae4arm.tar.gz?raw=true
tar -xf /storage/downloads/uae4arm.tar.gz -C /storage/emulators/ -xz


# descargar scripts, permisos de escritura y carpetas vacias
echo 'downloading Gamestarter scripts...' 
mkdir -p /storage/emulators/scripts
wget --no-check-certificate -O /storage/emulators/scripts/gamestarter.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/gamestarter.sh
wget --no-check-certificate -O /storage/emulators/scripts/gamestarter.start https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/scripts/gamestarter.start
chmod a+x /storage/emulators/scripts/gamestarter.sh
chmod a+x /storage/emulators/scripts/gamestarter.start
chmod a+x /storage/emulators/retroarch/retroarch
chmod a+x /storage/emulators/uae4arm/uae4arm
mkdir -p /storage/emulators/bios
mkdir -p /storage/emulators/saves
mkdir -p /storage/emulators/roms

# instalar el addon de Retroarch
echo 'downloading RetroArch launcher addon...' 
wget --no-check-certificate -O /storage/downloads/script.gamestarter.retroarch.tar.gz https://github.com/bite-your-idols/script.gamestarter.retroarch/archive/0.0.1.tar.gz
tar -xf /storage/downloads/script.gamestarter.retroarch.tar.gz -C /storage/.kodi/addons/ -xz

# instalar el addon/libs de uae4arm
echo 'downloading uae4arm launcher addon and libs...' 
wget --no-check-certificate -O /storage/downloads/script.gamestarter.uae4arm.tar.gz https://github.com/bite-your-idols/script.gamestarter.uae4arm/archive/0.0.1.tar.gz
tar -xf /storage/downloads/script.gamestarter.uae4arm.tar.gz -C /storage/.kodi/addons/ -xz

# instalar advanced launcher, launchers.xml/symlink y caratulas -> frontend.tar.gz ?
echo 'downloading AdvancedLauncher frontend...'
wget --no-check-certificate -O /storage/downloads/advanced.launcher.tar.gz https://github.com/bite-your-idols/advanced-launcher/archive/2.5.8.tar.gz
tar -xf /storage/downloads/advanced.launcher.tar.gz -C /storage/.kodi/addons/ -xz

wget --no-check-certificate -O /storage/downloads/frontend.tar.gz https://github.com/bite-your-idols/gamestarter-openelec/blob/master/packages/frontend.tar.gz?raw=true
tar -xf /storage/downloads/frontend.tar.gz -C /storage/emulators/ -xz

mkdir /storage/.kodi/userdata/addon_data/plugin.program.advanced.launcher
ln -s /storage/emulators/frontend/launchers.xml  /storage/.kodi/userdata/addon_data/plugin.program.advanced.launcher/launchers.xml


# Lo de Gamemaker Pi 



	
#remove downloaded files
rm /storage/downloads/retroarch.tar.gz
rm /storage/downloads/libretro-1.tar.gz
rm /storage/downloads/libretro-2.tar.gz
rm /storage/downloads/uae4arm.tar.gz
rm /storage/downloads/script.gamestarter.retroarch.tar.gz
rm /storage/downloads/script.gamestarter.uae4arm.tar.gz
rm /storage/downloads/advanced.launcher.tar.gz
rm /storage/downloads/frontend.tar.gz
rm /storage/install-gamestarter.sh

# end installation
echo 'installation complete, please enjoy!!'
