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

PKG_NAME="openssl-compat"
PKG_VERSION="1.0.2j"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.openssl.org/"
PKG_URL="http://www.openssl.org/source/openssl-$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="openssl-$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_SECTION="security"
PKG_SHORTDESC="openssl: Open Source toolkit for Secure Sockets Layer and Transport Layer Security"
PKG_LONGDESC="The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, fully featured, and Open Source toolkit implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) protocols as well as a full-strength general purpose cryptography library. The project is managed by a worldwide community of volunteers that use the Internet to communicate, plan, and develop the OpenSSL toolkit and its related documentation."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
  export MAKEFLAGS=-j1

  case $TARGET_ARCH in
    x86_64)
      OPENSSL_TARGET=linux-x86_64
      ;;
    arm)
      OPENSSL_TARGET=linux-armv7
      ;;
  esac
}

configure_target() {
  ./Configure --prefix=/usr \
              --libdir=lib \
              --openssldir="/etc/ssl" \
              shared \
              threads \
              zlib \
              enable-camellia \
              enable-seed \
              enable-tlsext \
              enable-rfc3779 \
              enable-cms \
              enable-md2 \
              no-krb5 \
              no-mdc2 \
              no-rc5 \
              no-ec \
              no-ec2m \
              no-ecdh \
              no-ecdsa \
              no-srp \
              $OPENSSL_TARGET
}

make_target() {
  make CC="$CC" \
       AR="$AR r" \
       RANLIB="$RANLIB" \
       MAKEDEPPROG="$CC" \
       depend all build-shared

}

makeinstall_target() {
  make INSTALL_PREFIX=$INSTALL install
  chmod 755 $INSTALL/usr/lib/*.so*
  chmod 755 $INSTALL/usr/lib/engines/*.so
}

post_makeinstall_target() {
  rm -rf $INSTALL/etc
  rm -rf $INSTALL/usr/bin
  rm -rf $INSTALL/usr/lib/engines
  rm -rf $INSTALL/usr/lib/*.so
}
