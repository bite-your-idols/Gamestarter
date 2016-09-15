#!/bin/sh
# . /etc/profile

# MY_DIR="/storage/emulators/roms/ports/CaveStory"
MY_DIR="/storage/emulators/roms/ports/quake"
RETROARCH_APP="/storage/.kodi/addons/script.gamestarter/resources/bin/retroarch"
RETROARCH_CONFIG_FILE="/storage/.config/retroarch/retroarch.cfg"
RETROARCH_CORE_DIR="/storage/.config/retroarch/cores"

chmod a+x $MY_DIR/*
$RETROARCH_APP -c $RETROARCH_CONFIG_FILE -L $RETROARCH_CORE_DIR/tyrquake_libretro.so $MY_DIR/id1/pak0.pak