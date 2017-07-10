# Gamestarter
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/packages/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/) / Spanish / [German](https://github.com/bite-your-idols/gamestarter/blob/master/README-DE.md)

## Retrogaming addon para Kodi en Raspberry Pi
Si usas la **Raspberry Pi 2/3** como **media center** corriendo **Kodi** en [LibreELEC](https://libreelec.tv/) o [OpenELEC](http://openelec.tv/), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, **aqui tienes la solución definitiva**.

Con este addon continuarás teniendo tu propia versión de Kodi pero vitaminada con el maravilloso multi-emulador [Retroarch](http://www.libretro.com/) integrado en kodi gracias al addon [Advanced Launcher](http://forum.kodi.tv/showthread.php?tid=85724) / [Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826). Mira la lista de emuladores más abajo.

> Nueva versión del addon disponible para PC Linux con **LibreELEC 8** Generic X86_64

## Instrucciones de instalación.
- Descarga la [última versión](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest) y cópialo en tu **Raspberry Pi**
- **[Kodi 17+]** Ir a **Kodi → Ajustes → Sistema → Add-ons** y activa **Fuentes desconocidas**
- Ir a **Kodi → Add-ons → Instalar desde un archivo .zip** y elige el archivo `.zip` descargado

La primera vez que inicies el addon se realizaran unos ajustes iniciales. Después solo tendrás que copiar tu [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) y [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) en la carpeta `/storage/emulators/` usando [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB).

> Si usas **Kodi 17**, después de la instalación tendras que activar el addon **Advanced Emulator Launcher** manualmente:
<br>Ir a **Add-ons → Mis add-ons → Add-ons de programas → Advanced Emulator Launcher** y haga clic en **Activar**

## Instalaciones Opcionales.
Puesde abrir los ajustes del addon para instalar.
- **[EmulationStation](https://github.com/Herdinger/EmulationStation):** el mismo frontend que usan [RetroPie](https://retropie.org.uk/) y [Recalbox](https://recalbox.com/) y algunos temas 
- **[Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/):**: addon para lanzar juegos desde la "nube" (ver [#31](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- **[uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi):** Emulador de Amiga (ver [#34](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- **[DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991):** Emulador en fase beta de Nintendo DS
- **[Libretro PC ports](https://buildbot.libretro.com/assets/cores/):** Cave Story, Doom, Quake, Dinothawr & Rick Dangerous
- **Estuary Skin custom:** Con acceso directo en la pantalla de inicio a Advaced Emulator Launcher o Gamestarter (ver [#48](https://github.com/bite-your-idols/Gamestarter-Pi/issues/48))


## Emuladores disponibles
### Sistemas incluidos
- *Arcade* ([mame2003_libretro](https://github.com/libretro/mame2003-libretro))
- Amiga ([uae4arm_libretro](https://github.com/r-type/uae4arm-libretro) / [uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi))
- MSX / MSX2 ([bluemsx_libretro](https://github.com/libretro/blueMSX-libretro))
- Neo Geo ([fbalpha_libretro](https://github.com/libretro/fbalpha))
- Nintendo 64 ([mupen64plus_libretro](https://github.com/libretro/mupen64plus-libretro))
- Nintendo Game Boy / Game Boy Color ([gambatte_libretro](https://github.com/libretro/Gambatte-libretro))
- Nintendo Game Boy Advanced ([gpsp_libretro](https://github.com/libretro/gpsp))
- Nintendo NES ([fceumm_libretro](https://github.com/libretro/libretro-fceumm))
- Nintendo SNES ([snes9x2010_libretro](https://github.com/libretro/snes9x2010))
- Sega Game Gear ([genesis-plus-gx_libretro](https://github.com/libretro/Genesis-Plus-GX))
- Sega Master System ([picodrive_libretro](https://github.com/libretro/picodrive))
- Sega Mega Drive / Mega-CD ([genesis-plus-gx_libretro](https://github.com/libretro/Genesis-Plus-GX))
- Sony Playstation ([pcsx-rearmed_libretro](https://github.com/libretro/pcsx_rearmed))
- Sony PSP ([ppsspp_libretro](https://github.com/libretro/libretro-ppsspp))
- TurboGrafx-16 / PC Engine / PC Engine CD ([mednafen-pce-fast_libretro](https://github.com/libretro/beetle-pce-fast-libretro))
- ZX Spectrum ([fuse_libretro](https://github.com/libretro/fuse-libretro))

### Sistemas adicionales
- Emuladores de [Libretro buildbot](https://buildbot.libretro.com/nightly/linux/armhf/latest/): Se pueden descargar/actualizar desde RetroArch
- Emuladores de [Lakka](https://github.com/bite-your-idols/Gamestarter/tree/master/packages/libretro-cores-all): Se pueden descargar/actualizar desde los ajustes del addon.


## Créditos
- Created by [bite-your-idols](https://github.com/bite-your-idols)
- Original **RetroArch** addon by [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **UAE4ARM** & **EmulationStation** compiled by [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Launcher** emulator icons by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
- **ReadMe** by [BrokenCommander](https://github.com/BrokenCommander)

---

![screenshot-gamestarter-settings](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-settings.png)
Pantalla de **Ajustes del addon**

![screenshot-advemulauncher](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-estuary-ael-systems.png)
Ejemplo de la "biblioteca de juegos" con **Advanced Emulator Launcher** en **LibreELEC 8**

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-gamestarter-advlauncher-mimic.png)
Ejemplo de la "biblioteca de juegos" con [Mimic Skin](http://kodi.wiki/view/Add-on:mimic)
