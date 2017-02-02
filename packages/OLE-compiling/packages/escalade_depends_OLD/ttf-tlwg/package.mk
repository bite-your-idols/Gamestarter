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

PKG_NAME="ttf-tlwg"
PKG_VERSION="0.6.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://linux.thai.net/fonts/tlwg"
PKG_URL="https://linux.thai.net/pub/thailinux/software/thai-ttf/ttf-tlwg-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain util-macros"
PKG_SECTION="x11/fonts"
PKG_SHORTDESC="Collection of scalable Thai fonts"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/share/fonts/ttf-tlwg
    cp *.ttf $INSTALL/usr/share/fonts/ttf-tlwg
  mkdir -p $INSTALL/usr/share/fontconfig/conf.avail
    cp etc/fonts/conf.avail/* $INSTALL/usr/share/fontconfig/conf.avail/
}

post_install() {
  mkfontdir $INSTALL/usr/share/fonts/ttf-tlwg
  mkfontscale $INSTALL/usr/share/fonts/ttf-tlwg
}
