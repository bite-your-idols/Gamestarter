################################################################################
#      This file is part of LibreELEC - https://LibreELEC.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="uae4arm"
# PKG_VERSION="b9ee437"
PKG_VERSION="f87cd39"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/Chips-fr/uae4arm-rpi.git"
PKG_URL="https://github.com/Chips-fr/uae4arm-rpi/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain alsa-lib freetype zlib libX11 SDL SDL_image SDL_ttf SDL_gfx libpng guichan flac mpg123 libjpeg-turbo"
PKG_PRIORITY="optional"
PKG_SECTION="emulation"
PKG_SHORTDESC="uae4arm-rpi amiga emulator."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  mv $BUILD/uae4arm-rpi* $BUILD/$PKG_NAME-$PKG_VERSION
}

make_target() {
  strip_lto
  export SYSROOT_PREFIX=$SYSROOT_PREFIX
  case $PROJECT in
    RPi)
      make PLATFORM=generic-sdl CPU_FLAGS="-mcpu=arm1176jzf-s -mfpu=vfp -mfloat-abi=hard"
      ;;
    RPi2)
      make PLATFORM=generic-sdl CPU_FLAGS="-mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard"
      ;;
  esac
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp $ROOT/$PKG_BUILD/uae4arm $INSTALL/usr/bin
  cp $PKG_DIR/scripts/* $INSTALL/usr/bin
  mkdir -p $INSTALL/usr/config
  cp -R $PKG_DIR/config $INSTALL/usr/config/uae4arm
  cp -R data 		$INSTALL/usr/config/uae4arm/
  ln -s /storage/roms/bios $INSTALL/usr/config/uae4arm/kickstarts
 }
