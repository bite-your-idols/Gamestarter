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

PKG_NAME="guisan"
PKG_VERSION="ae7ea55"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="https://github.com/kallisti5/guisan"
PKG_URL="https://github.com/kallisti5/guisan/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL2 SDL2_image SDL2_ttf"
PKG_SECTION="depends"
PKG_SHORTDESC="guisan GUI library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  scons
}

makeinstall_target() {
  cp -R include/* $SYSROOT_PREFIX/usr/include/
  cp src/libguisan.a $SYSROOT_PREFIX/usr/lib/
}
