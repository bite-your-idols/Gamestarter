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

PKG_NAME="freeimage"
PKG_VERSION="3170"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="http://freeimage.sourceforge.net/"
PKG_URL="http://downloads.sourceforge.net/freeimage/FreeImage$PKG_VERSION.zip"
PKG_SOURCE_DIR="FreeImage"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="emulators/depends"
PKG_SHORTDESC="FreeImage library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export CXXFLAGS="$CXXFLAGS -Wno-narrowing"
  export CFLAGS="$CFLAGS -DPNG_ARM_NEON_OPT=0"
}
