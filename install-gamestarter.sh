#!/bin/bash
# Script for downloading and installing Gamestarter

#Welcome message
echo '*******************************************************************************' 
echo 'This script will install/update Gamestarter' 
echo 'Version 0.0.1' 
echo '*******************************************************************************'

# create setaup directories

mkdir -p /storage/downloads

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

	
#remove downloaded files
rm /storage/downloads/retroarch.tar.gz
rm /storage/downloads/uae4arm.tar.gz
rm /storage/install-gamestarter.sh

# end installation
echo 'installation complete, please enjoy!!'
