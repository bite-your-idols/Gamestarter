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

PKG_NAME="SDL_image"
PKG_VERSION="1.2.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.libsdl.org/"
PKG_URL="http://www.libsdl.org/projects/SDL_image/release/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL libjpeg-turbo libpng tiff"
PKG_SECTION="emulators/depends"
PKG_SHORTDESC="libsdl_image: A cross-platform Graphic API"
PKG_LONGDESC="SDL_image is an image loading library that is used with the SDL library, and almost as portable. It allows a programmer to use multiple image formats without having to code all the loading and conversion algorithms themselves."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-bmp \
                           --enable-gif \
                           --enable-jpg \
                           --disable-lbm \
                           --enable-pcx \
                           --enable-png \
                           --disable-png-shared \
                           --enable-pnm \
                           --enable-tga \
                           --enable-tif \
                           --disable-tif-shared \
                           --enable-xcf \
                           --enable-xpm \
                           --enable-xv \
                           --with-sdl-prefix=$SYSROOT_PREFIX/usr"
