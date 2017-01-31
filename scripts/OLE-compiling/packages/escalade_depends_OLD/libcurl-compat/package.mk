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

PKG_NAME="libcurl-compat"
PKG_VERSION="7.51.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://curl.haxx.se"
PKG_URL="http://curl.haxx.se/download/curl-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain zlib libressl rtmpdump"
PKG_SECTION="depends"
PKG_SHORTDESC="curl library with older version symbol"

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_lib_rtmp_RTMP_Init=yes \
                           ac_cv_header_librtmp_rtmp_h=yes \
                           --disable-debug \
                           --enable-optimize \
                           --enable-warnings \
                           --disable-curldebug \
                           --disable-ares \
                           --enable-largefile \
                           --enable-http \
                           --enable-ftp \
                           --enable-file \
                           --disable-ldap \
                           --disable-ldaps \
                           --enable-rtsp \
                           --enable-proxy \
                           --disable-dict \
                           --disable-telnet \
                           --disable-tftp \
                           --disable-pop3 \
                           --disable-imap \
                           --disable-smb \
                           --disable-smtp \
                           --disable-gopher \
                           --disable-manual \
                           --enable-libgcc \
                           --enable-ipv6 \
                           --enable-versioned-symbols \
                           --enable-nonblocking \
                           --enable-threaded-resolver \
                           --enable-verbose \
                           --disable-sspi \
                           --enable-crypto-auth \
                           --enable-cookies \
                           --enable-symbol-hiding \
                           --disable-soname-bump \
                           --with-gnu-ld \
                           --without-krb4 \
                           --without-spnego \
                           --without-gssapi \
                           --with-zlib \
                           --without-egd-socket \
                           --enable-thread \
                           --with-random=/dev/urandom \
                           --without-gnutls \
                           --with-ssl \
                           --without-polarssl \
                           --without-nss \
                           --with-ca-bundle=/etc/ssl/cert.pem \
                           --without-ca-path \
                           --without-libpsl \
                           --without-libmetalink \
                           --without-libssh2 \
                           --with-librtmp=$SYSROOT_PREFIX/usr \
                           --without-libidn"

unpack() {
  mkdir -p $BUILD/$PKG_NAME-$PKG_VERSION ; cd $BUILD/$PKG_NAME-$PKG_VERSION
  tar -jxf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2
  mv curl-$PKG_VERSION/* .
  rm -rf curl-$PKG_VERSION
  cd -
}

pre_configure_target() {
# link against librt because of undefined reference to 'clock_gettime'
  export LIBS="-lrt -lm -lrtmp"
}

post_configure_target() {
  $SED "s:CURL_OPENSSL_4:CURL_OPENSSL_3:" lib/libcurl.vers
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
  cp lib/.libs/libcurl.so.4.4.0 $INSTALL/usr/lib/libcurl-compat.so
}
