################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="snes9x2010-libretro"
# PKG_VERSION="74953d8"
PKG_VERSION="7d25113" #28/01/17
PKG_ARCH="any"
PKG_LICENSE="Non-commercial"
PKG_SITE="https://github.com/libretro/snes9x2010.git"
PKG_URL="https://github.com/libretro/snes9x2010/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="gamestarter"
PKG_SHORTDESC="Optimized port/rewrite of SNES9x 1.52+ to Libretro."
PKG_LONGDESC="Optimized port/rewrite of SNES9x 1.52+ to Libretro."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  tar -zxf $SOURCES/$PKG_NAME/$PKG_VERSION.tar.gz -C $BUILD
  mv $BUILD/snes9x2010* $BUILD/$PKG_NAME-$PKG_VERSION
}

make_target() {
  make -f Makefile.libretro
}

makeinstall_target() {
  # mkdir -p $INSTALL/usr/lib/libretro
  # cp snes9x2010_libretro.so $INSTALL/usr/lib/libretro/
  :
}
