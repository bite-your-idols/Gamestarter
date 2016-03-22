#!/bin/bash
# Script for downloading and installing Gamestarter

#Welcome message
echo '*******************************************************************************' 
echo 'This script will install/update Gamestarter' 
echo 'Version 0.0.1' 
echo '*******************************************************************************'

# create directories
mkdir -p /storage/emulators/scripts
mkdir -p /storage/downloads

# curl -L --output /storage/downloads/uae4arm.tar.gz --get https://github.com/bite-your-idols/gamestarter-openelec/blob/master/uae4arm.tar.gz

wget --no-check-certificate -O /storage/downloads/uae4arm.tar.gz http://www.dropbox.com/s/jmu7gis9ckty4gb/RetroArch_base.tar.gz?dl=0
tar -xf /storage/downloads/uae4arm.tar.gz -C /storage/emulators/ -xz



# download the retrosmc scripts and files
# wget --no-check-certificate -w 4 -O /storage/emulators/scripts/gamestarter.sh https://github.com/bite-your-idols/gamestarter-openelec/blob/master/scripts/gamestarter.sh
# wget --no-check-certificate -w 4 -O /storage/emulators/scripts/gamestarter.start https://github.com/bite-your-idols/gamestarter-openelec/blob/master/scripts/gamestarter.start
# chmod a+x /storage/emulators/scripts/gamestarter.sh
# chmod a+x /storage/emulators/scripts/gamestarter.start
# chmod a+x /storage/emulators/retroarch/retroarch
# chmod a+x /storage/emulators/uae4arm/uae4arm
	


# end installation
echo 'done!'
