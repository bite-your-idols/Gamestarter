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

PKG_NAME="SDL_ttf"
PKG_VERSION="2.0.11"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.libsdl.org/"
PKG_URL="http://www.libsdl.org/projects/SDL_ttf/release/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL freetype"
PKG_SECTION="emulators/depends"
PKG_SHORTDESC="libsdl_ttf: TTF rendering for SDL"
PKG_LONGDESC="This is a sample library which allows you to use TrueType fonts in your SDL applications."
PKG_IS_ADDON="no"
PKG_ADDON_TYPE="xbmc.python.pluginsource"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-gnu-ld \
			   --disable-shared \
			   --with-freetype-prefix=$SYSROOT_PREFIX/usr \
                           --with-sdl-prefix=$SYSROOT_PREFIX/usr"
