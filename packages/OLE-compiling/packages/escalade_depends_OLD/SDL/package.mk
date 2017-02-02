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

PKG_NAME="SDL"
PKG_VERSION="5e5cf17"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/vanfanel/SDL-1.2.15-raspberrypi.git"
PKG_URL="https://github.com/vanfanel/SDL-1.2.15-raspberrypi/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain yasm:host alsa-lib"
PKG_SECTION="emulators/depends"
PKG_SHORTDESC="libsdl: A cross-platform Graphic API"
PKG_LONGDESC="Simple DirectMedia Layer is a cross-platform multimedia library designed to provide fast access to the graphics framebuffer and audio device. It is used by MPEG playback software, emulators, and many popular games, including the award winning Linux port of 'Civilization: Call To Power.' Simple DirectMedia Layer supports Linux, Win32, BeOS, MacOS, Solaris, IRIX, and FreeBSD."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-video-directfb \
			   --disable-oss \
			   --disable-alsatest \
			   --disable-pulseaudio \
			   --disable-pulseaudio-shared \
			   --disable-arts \
			   --disable-nas \
			   --disable-esd \
			   --disable-nas-shared \
			   --disable-diskaudio \
			   --disable-dummyaudio \
			   --disable-mintaudio \
			   --disable-input-tslib"

if [[ "$PROJECT" =~ "RPi" ]]; then
  PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --disable-video-x11 --enable-video-dispmanx"
else
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libX11 libXext"
  PKG_CONFIGURE_OPTS_TARGET="have_const_param_xdata32=yes $PKG_CONFIGURE_OPTS_TARGET"
fi

pre_configure_target() {
  export SYSROOT_PREFIX
}

post_unpack() {
  mv $BUILD/SDL-1.2.15-raspberrypi* $BUILD/$PKG_NAME-$PKG_VERSION
}

post_makeinstall_target() {
  mkdir -p $ROOT/$TOOLCHAIN/bin
    cp $SYSROOT_PREFIX/usr/bin/sdl-config $ROOT/$TOOLCHAIN/bin
    $SED "s:\(['=\" ]\)/usr:\\1$SYSROOT_PREFIX/usr:g" $SYSROOT_PREFIX/usr/bin/sdl-config

  rm -rf $INSTALL/usr/bin
}
