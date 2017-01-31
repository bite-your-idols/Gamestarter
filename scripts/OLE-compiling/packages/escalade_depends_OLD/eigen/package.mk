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

PKG_NAME="eigen"
PKG_VERSION="3.2.10"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://eigen.tuxfamily.org/index.php?title=Main_Page"
PKG_URL="http://bitbucket.org/eigen/eigen/get/$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain cmake:host"
PKG_SECTION="depends"
PKG_SHORTDESC="eigen c++ headers"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  mv $BUILD/eigen-* $BUILD/$PKG_NAME-$PKG_VERSION
}
