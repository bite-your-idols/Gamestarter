#!/bin/sh
# . /etc/profile

# MY_DIR="/storage/emulators/roms/ports/CaveStory"
MY_DIR="/storage/emulators/roms/ports/Quake"
RETROARCH_APP="/storage/.kodi/addons/script.gamestarter/resources/bin/retroarch"
RETROARCH_CONFIG_FILE="/storage/.kodi/userdata/addon_data/script.gamestarter/retroarch/retroarch.cfg"
RETROARCH_CORE_DIR="/storage/.kodi/addons/script.gamestarter/resources/bin/libretro-cores"

chmod a+x $MY_DIR/*
$RETROARCH_APP -c $RETROARCH_CONFIG_FILE -L $RETROARCH_CORE_DIR/tyrquake_libretro.so $MY_DIR/PAK0.PAK