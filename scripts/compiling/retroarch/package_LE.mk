################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="retroarch"
# PKG_VERSION="2294bcf"
# PKG_VERSION="218d6f5" #v1.3.6
# PKG_VERSION="2e358ba" #12/11/2016
# PKG_VERSION="82ced82" #24/11/2016
# PKG_VERSION="9d7fe2c" #21/01/2017
# PKG_VERSION="74b2fde" #28/01/2017
# PKG_VERSION="d8855ca" #v1.4.1
# PKG_VERSION="51581e1" #09/03/2017 pre-v1.5.0
PKG_VERSION="f14473f" #01/06/2017 v1.6
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/libretro/RetroArch.git"
PKG_URL="https://github.com/libretro/RetroArch/archive/$PKG_VERSION.tar.gz"
# PKG_DEPENDS_TARGET="toolchain alsa-lib freetype zlib retroarch-assets core-info retroarch-joypad-autoconfig common-shaders libretro-database ffmpeg"
PKG_DEPENDS_TARGET="toolchain alsa-lib freetype zlib ffmpeg"
PKG_PRIORITY="optional"
PKG_SECTION="gamestarter"
PKG_SHORTDESC="Reference frontend for the libretro API."
PKG_LONGDESC="RetroArch is the reference frontend for the libretro API. Popular examples of implementations for this API includes videogame system emulators and game engines, but also more generalized 3D programs. These programs are instantiated as dynamic libraries. We refer to these as libretro cores."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  cd $ROOT/$PKG_BUILD
  # git clone --depth 1 https://github.com/KhronosGroup/SPIRV-Cross.git deps/SPIRV-Cross
  # git clone --depth 1 https://github.com/KhronosGroup/glslang.git deps/glslang/glslang
  cd -
}

if [ "$OPENGLES_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OPENGLES"
else
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OPENGL"
fi

if [ "$SAMBA_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET samba"
fi

if [ "$AVAHI_DAEMON" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET avahi nss-mdns"
fi

if [ "$OPENGLES" == "no" ]; then
  RETROARCH_GL="--enable-kms --enable-vulkan"
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET mesa vulkan-loader"
elif [[ "$PROJECT" =~ "RPi" ]]; then
  # RETROARCH_GL="--enable-gles --disable-kms"
  RETROARCH_GL="--disable-kms"
  CFLAGS="$CFLAGS -I$SYSROOT_PREFIX/usr/include/interface/vcos/pthreads \
                  -I$SYSROOT_PREFIX/usr/include/interface/vmcs_host/linux"
elif [ "$OPENGLES" == "sunxi-mali" ] || [ "$OPENGLES" == "odroidc1-mali" ] || [ "$OPENGLES" == "odroidxu3-mali" ] || [ "$OPENGLES" == "opengl-meson6" ] || [ "$OPENGLES" == "opengl-meson8" ]; then
  RETROARCH_GL="--enable-gles --disable-kms --enable-mali_fbdev"
elif [ "$OPENGLES" == "gpu-viv-bin-mx6q" ]; then
  RETROARCH_GL="--enable-gles --disable-kms --enable-vivante_fbdev"
  CFLAGS="$CFLAGS -DLINUX -DEGL_API_FB"
fi

if [[ "$TARGET_FPU" =~ "neon" ]]; then
  RETROARCH_NEON="--enable-neon"
fi

CFLAGS="$CFLAGS -DLAKKA_PROJECT='\"$PROJECT.$TARGET_ARCH\"'"

TARGET_CONFIGURE_OPTS=""
PKG_CONFIGURE_OPTS_TARGET="--disable-vg \
                           --disable-sdl \
                           --disable-xvideo \
                           --disable-al \
                           --disable-oss \
                           $RETROARCH_GL \
                           $RETROARCH_NEON \
                           --enable-fbo \
                           --enable-zlib \
                           --host=$TARGET_NAME \
                           --enable-freetype"

unpack() {
  tar -zxf $SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $BUILD
  mv $BUILD/RetroArch* $BUILD/$PKG_NAME-$PKG_VERSION
}

pre_configure_target() {
  strip_lto # workaround for https://github.com/libretro/RetroArch/issues/1078
  cd $ROOT/$PKG_BUILD
  export PKG_CONF_PATH=$ROOT/$BUILD/toolchain/bin/pkg-config
  echo $PKG_VERSION > .gitversion
}

make_target() {
  make V=1
  # make -C gfx/video_filters compiler=$CC extra_flags="$CFLAGS"
  # make -C audio/audio_filters compiler=$CC extra_flags="$CFLAGS" # da error al compilar
}
