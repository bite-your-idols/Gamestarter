#!/bin/bash
# Script for GameMaker Pi ports installation 
# kodi-send --action=Notification"(Gamestarter,Installing GameMaker Pi ports,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
# wget --no-check-certificate -O /storage/install-gamemaker-openelec.sh https://raw.githubusercontent.com/bite-your-idols/gamemaker-openelec/master/gamemaker-openelec.sh && sh /storage/install-gamemaker-openelec.sh

#  echo 'Installing Gamemaker Pi games in Openelec' 
wget --no-check-certificate -O /storage/MalditaCastilla.tar.gz https://www.yoyogames.com/download/pi/castilla
wget --no-check-certificate -O /storage/SuperCrateBox.tar.gz https://www.yoyogames.com/download/pi/crate
wget --no-check-certificate -O /storage/TheyNeedToBeFed.tar.gz https://www.yoyogames.com/download/pi/tntbf
# mkdir /storage/emulators/roms/ports
tar xvzf /storage/MalditaCastilla.tar.gz -C /storage/emulators/roms/ports/
tar xvzf /storage/SuperCrateBox.tar.gz -C /storage/emulators/roms/ports/
tar xvzf /storage/TheyNeedToBeFed.tar.gz -C /storage/emulators/roms/ports/


tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/gamemaker.tar.gz -C /storage/emulators/roms/ports/ -xz
chmod a+x /storage/emulators/roms/ports/MalditaCastilla.sh
chmod a+x /storage/emulators/roms/ports/SuperCrateBox.sh
chmod a+x /storage/emulators/roms/ports/TheyNeedToBeFed.sh

rm /storage/MalditaCastilla.tar.gz
rm /storage/SuperCrateBox.tar.gz
rm /storage/TheyNeedToBeFed.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/gamemaker.tar.gz

wget --no-check-certificate -O /storage/gamemaker-libs.tar.gz https://github.com/bite-your-idols/gamemaker-openelec/raw/master/packages/gamemaker-libs.tar.gz?raw=true
tar -xf /storage/gamemaker-libs.tar.gz -C /storage/ -xz

rm /storage/gamemaker-libs.tar.gz

wget --no-check-certificate -O /storage/script.hacklib.tar.gz https://github.com/bite-your-idols/script.hacklib/archive/master.tar.gz
tar -xf /storage/script.hacklib.tar.gz -C /storage/.kodi/addons/ -xz
echo '[ $PPID -eq 1 -a -f /storage/.kodi/addons/script.hacklib-master/bin/hacklib ] && . /storage/.kodi/addons/script.hacklib-master/bin/hacklib' >> /storage/.config/autostart.sh
chmod +x /storage/.config/autostart.sh
chmod a+x /storage/.kodi/addons/script.hacklib-master/bin/hacklib
rm /storage/script.hacklib.tar.gz

# mv /storage/.kodi/addons/script.gamestarter/resources/bin/install_gamemaker.sh /storage/.kodi/addons/script.gamestarter/resources/bin/install_gamemaker_done.sh 

# end installation
# echo 'Installation completed!! Now you must reboot...'
# kodi-send --action=Notification"(Gamestarter,GameMaker Pi ports installed,2000,/storage/.kodi/addons/script.gamestarter/icon.png)"
