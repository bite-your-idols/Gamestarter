################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2009-2016 Lukas Rusak (lrusak@libreelec.tv)
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

PKG_NAME="glupen64-libretro"
# PKG_VERSION="6baff60"
# PKG_VERSION="40b7b34"
PKG_VERSION="f1897fb" #28/01/17
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/GLupeN64/GLupeN64"
PKG_URL="https://github.com/GLupeN64/GLupeN64/archive/$PKG_VERSION.tar.gz"
# PKG_SOURCE_DIR="glupen64-libretro-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="emulation"
PKG_SHORTDESC="mupen64plus + RSP-HLE + GLideN64 + libretro"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  tar -zxf $SOURCES/$PKG_NAME/$PKG_VERSION.tar.gz -C $BUILD
  mv $BUILD/GLupeN64* $BUILD/$PKG_NAME-$PKG_VERSION
}

pre_configure_target() {
  strip_lto
}

make_target() {
  make platform=rpi2
}

makeinstall_target() {
  # mkdir -p $INSTALL/usr/lib/libretro
  # cp glupen64_libretro.so $INSTALL/usr/lib/libretro/
  :
}
