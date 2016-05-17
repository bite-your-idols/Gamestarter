#!/bin/bash
# Script for installing Gamestarter

#Welcome message
echo 'Gamestarter v-2.0' 

#dependiedo del OS seleccionamos un retroarch u otro
# mv /storage/.kodi/addons/script.gamestarter/resources/bin/retroarch-kodi15 /storage/.kodi/addons/script.gamestarter/resources/bin/retroarch

# hacer ejecutables los scripts y binarios
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.start
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/retroarch
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/emulationstation
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/uae4arm

chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/install_iarl.sh
chmod a+x /storage/.kodi/addons/script.gamestarter/resources/bin/install_gamemaker.sh

#copiar los packages de data a .config
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/retroarch.tar.gz -C /storage/.config/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part1.tar.gz -C /storage/.config/retroarch/cores/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part2.tar.gz -C /storage/.config/retroarch/cores/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part3.tar.gz -C /storage/.config/retroarch/cores/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/emulationstation.tar.gz -C /storage/.config/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/emulators.tar.gz -C /storage/ -xz
tar -xf /storage/.kodi/addons/script.gamestarter/resources/data/advancedlauncher.tar.gz -C /storage/.config/ -xz

chmod a+x /storage/emulators/roms/ports/CaveStory.sh
chmod a+x /storage/emulators/roms/ports/Dinothawr.sh


# instalar advanced launcher a manopla, en kodi 17 habria que activarlo
ln -s /storage/.config/advancedlauncher/ /storage/.kodi/userdata/addon_data/plugin.program.advanced.launcher
wget --no-check-certificate -O /storage/advanced.launcher.tar.gz https://github.com/bite-your-idols/advanced-launcher/archive/2.5.8.tar.gz
tar -xf /storage/advanced.launcher.tar.gz -C /storage/.kodi/addons/ -xz
rm /storage/advanced.launcher.tar.gz

# añadir audio al config.txt
mount -o remount,rw /flash
echo 'dtparam=audio=on' >> /flash/config.txt

# borramos los zips de data y renombramos el instalador
# rm /storage/.kodi/addons/script.gamestarter/resources/data/retroarch.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part1.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part2.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/libretro-part3.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/emulationstation.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/emulators.tar.gz
# rm /storage/.kodi/addons/script.gamestarter/resources/data/advancedlauncher.tar.gz

touch /storage/.kodi/addons/script.gamestarter/resources/bin/installed
# mv /storage/.kodi/addons/script.gamestarter/resources/bin/setup.sh /storage/.kodi/addons/script.gamestarter/resources/bin/setup_done.sh 

# end installation
echo '::Gamestarter:: -> Installation completed, enjoy!!'
