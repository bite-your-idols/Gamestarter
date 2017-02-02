################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="emulationstation"
PKG_VERSION="76c1538"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/Herdinger/EmulationStation.git"
PKG_URL="https://github.com/Herdinger/EmulationStation/archive/$PKG_VERSION.tar.gz"
#PKG_DEPENDS_TARGET="toolchain systemd SDL2 boost freetype curl cmake:host freeimage eigen emulationstation-theme-simple-dark emulationstation-theme-carbon"
PKG_DEPENDS_TARGET="toolchain systemd SDL2 boost freetype curl cmake:host freeimage eigen"
PKG_PRIORITY="optional"
PKG_SECTION="emulation"
PKG_SHORTDESC="Emulationstation emulator frontend"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  tar -zxf $SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $BUILD
  mv $BUILD/EmulationStation* $BUILD/$PKG_NAME-$PKG_VERSION
}

configure_target() {
  if [[ "$PROJECT" =~ "RPi" ]]; then
    export CMAKE_CXXFLAGS="$CXXFLAGS \
      -I$SYSROOT_PREFIX/usr/include/interface \
      -I$SYSROOT_PREFIX/usr/include/interface/vcos/pthreads/ \
      -I$SYSROOT_PREFIX/usr/include/interface/vmcs_host/linux"
    export LDFLAGS="$LDFLAGS -L$SYSROOT_PREFIX/usr/lib -ldl -lbcm_host -lGLESv2"
  fi
  cmake -DCMAKE_TOOLCHAIN_FILE=$CMAKE_CONF \
        -DBUILD_SHARED_LIBS=1 \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=/usr/lib \
        -DCMAKE_INSTALL_LIBDIR_NOARCH=/usr/lib \
        -DCMAKE_INSTALL_PREFIX_TOOLCHAIN=$SYSROOT_PREFIX/usr \
        -DCMAKE_PREFIX_PATH=$SYSROOT_PREFIX/usr \
	-DCMAKE_FIND_ROOT_PATH=$SYSROOT_PREFIX/usr \
        $EXTRA_CMAKE_OPTS \
        ..
}

post_makeinstall_target() {  
    mkdir -p $INSTALL/etc/emulationstation
    mkdir -p $INSTALL/usr/config/emulationstation
    mkdir -p $INSTALL/usr/lib/tmpfiles.d
    ln -s /storage/.config/emulationstation/es_systems.cfg $INSTALL/etc/emulationstation/
    cp $PKG_DIR/scripts/* $INSTALL/usr/bin
    cp $PKG_DIR/files/emulationstation.conf $INSTALL/usr/config/emulationstation/
    cp $PKG_DIR/files/es_input.cfg $INSTALL/usr/config/emulationstation/
    cp $PKG_DIR/files/es_settings.cfg $INSTALL/usr/config/emulationstation/
    if [[ "$PROJECT" =~ "RPi" ]]; then
      cp $PKG_DIR/files/es_systems-rpi.cfg $INSTALL/usr/config/emulationstation/es_systems.cfg
      cp $PKG_DIR/files/emulationstation-userdirs-rpi.conf $INSTALL/usr/lib/tmpfiles.d/emulationstation-userdirs.conf
    else
      cp $PKG_DIR/files/es_systems-generic.cfg $INSTALL/usr/config/emulationstation/es_systems.cfg
      cp $PKG_DIR/files/emulationstation-userdirs-generic.conf $INSTALL/usr/lib/tmpfiles.d/emulationstation-userdirs.conf
    fi
}
