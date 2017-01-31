################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
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

PKG_NAME="reicast-libretro"
PKG_VERSION="af37d42"
PKG_REV="1"
PKG_ARCH="x86_64 arm"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/reicast-emulator"
PKG_URL="https://github.com/libretro/reicast-emulator/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="Reicast is a multiplatform Sega Dreamcast emulator"
PKG_LONGDESC="Reicast is a multiplatform Sega Dreamcast emulator"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  mv $BUILD/reicast* $BUILD/$PKG_NAME-$PKG_VERSION
}

make_target() {
  case $PROJECT in
    RPi)
      make platform=rpi WITH_DYNAREC=arm
      ;;
    RPi2)
      make platform=rpi2 WITH_DYNAREC=arm
      ;;
    Generic)
      make WITH_DYNAREC=x86_64
      ;;
  esac

}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp reicast_libretro.so $INSTALL/usr/lib/libretro/
}
