# Gamestarter Pi
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/) / Spanish / [German](https://github.com/bite-your-idols/gamestarter/blob/master/README-DE.md)

## Retrogaming addon para Kodi en Raspberry Pi
Si usas la **Raspberry Pi 2/3** como **media center** corriendo **Kodi** en [LibreELEC](https://libreelec.tv/) o [OpenELEC](http://openelec.tv/), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, **aqui tienes la solución definitiva**.

Con este addon continuarás teniendo tu propia versión de Kodi pero vitaminada con el maravilloso multi-emulador [Retroarch](http://www.libretro.com/) integrado en kodi gracias al addon [Advanced Launcher](http://forum.kodi.tv/showthread.php?tid=85724) / [Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826). Mira la lista de emuladores más abajo.

## Instrucciones de instalación.
- Descarga la [última versión](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest) y cópialo en tu **Raspberry Pi**
- **[Kodi 17+]** Ir a **Kodi → Ajustes → Sistema → Add-ons** y activa **Fuentes desconocidas**
- Ir a **Kodi → Add-ons → Instalar desde un archivo .zip** y elige el archivo `.zip` descargado

La primera vez que inicies el addon se realizaran unos ajustes iniciales. Después solo tendrás que copiar tu [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) y [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) en la carpeta `/storage/emulators/` usando [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB).

> Si usas **Kodi 17**, después de la instalación tendras que activar el addon **Advanced Emulator Launcher** manualmente:
<br>Ir a **Add-ons → Mis add-ons → Add-ons de programas → Advanced Emulator Launcher** y haga clic en **Activar**

## Instalaciones Opcionales.
Puesde abrir los ajustas del addon para instalar.
- **[EmulationStation](https://github.com/Herdinger/EmulationStation):** el mismo frontend que usan [RetroPie](https://retropie.org.uk/) y [Recalbox](https://recalbox.com/) y algunos temas 
- **[Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/):**: addon para lanzar juegos desde la "nube" (ver [#31](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- **RetroArch cores experimentales:** [lr-desmume](https://github.com/libretro/desmume), [lr-mame2010](https://github.com/libretro/mame2010-libretro), [lr-yabause](https://github.com/libretro/yabause) ...
- **[uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi):** Emulador de Amiga (ver [#34](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- **[DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991):** Emulador en fase beta de Nintendo DS
- **[Libretro PC ports](https://buildbot.libretro.com/assets/cores/):** Cave Story, Doom, Quake, Dinothawr
- **Estuary Skin custom:** Con acceso directo en la pantalla de inicio a Advaced Emulator Launcher o Gamestarter (ver [#48](https://github.com/bite-your-idols/Gamestarter-Pi/issues/48))


## Sistemas Incluidos
### Sistemas más Comunes
- *Arcade* ([lr-mame2003](https://github.com/libretro/mame2003-libretro) / [lr-fbalpha](https://github.com/libretro/fbalpha))
- MSX / MSX2 ([lr-bluemsx](https://github.com/libretro/blueMSX-libretro) / [lr-fmsx](https://github.com/libretro/fmsx-libretro))
- Neo Geo ([lr-fbalpha](https://github.com/libretro/fbalpha))
- Nintendo 64 ([lr-glupen64](https://github.com/GLupeN64/GLupeN64) / [lr-mupen64plus](https://github.com/libretro/mupen64plus-libretro))
- Nintendo Game Boy / Game Boy Color ([lr-gambatte](https://github.com/libretro/Gambatte-libretro))
- Nintendo Game Boy Advanced ([lr-gpsp](https://github.com/libretro/gpsp) / [lr-mgba](https://github.com/libretro/mgba))
- Nintendo NES ([lr-fceumm](https://github.com/libretro/libretro-fceumm) / [lr-nestopia](https://github.com/libretro/nestopia) / [lr-quicknes](https://github.com/libretro/QuickNES_Core))
- Nintendo SNES ([lr-snes9x2002](https://github.com/libretro/snes9x2002) / [lr-snes9x2005](https://github.com/libretro/snes9x2005) / [lr-snes9x2010](https://github.com/libretro/snes9x2010))
- Sega Master System ([lr-picodrive](https://github.com/libretro/picodrive) / [lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- Sega Mega Drive / Mega-CD ([lr-picodrive](https://github.com/libretro/picodrive) / [lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- Sony Playstation ([lr-pcsx-rearmed](https://github.com/libretro/pcsx_rearmed))
- Sony PSP ([lr-ppsspp](https://github.com/libretro/libretro-ppsspp))
- TurboGrafx-16 / PC Engine / PC Engine CD ([lr-mednafen-pce-fast](https://github.com/libretro/beetle-pce-fast-libretro) / [lr-mednafen-supergrafx](https://github.com/libretro/beetle-supergrafx-libretro))

### Otros Sistemas
- *Arcade* ([lr-mame2000](https://github.com/libretro/mame2000-libretro))
- Amiga ([lr-uae4arm](https://github.com/r-type/uae4arm-libretro) / [uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi))
- Atari 800 ([lr-atari800](https://github.com/r-type/libretro-atari800))
- Atari 2600 ([lr-stella](https://github.com/libretro/stella-libretro))
- Atari 7800 ([lr-prosystem](https://github.com/libretro/prosystem-libretro))
- Atari Lynx ([lr-handy](https://github.com/libretro/libretro-handy))
- DOSBox ([lr-dosbox](https://github.com/libretro/dosbox-libretro))
- Game & Watch ([lr-gw](https://github.com/libretro/gw-libretro))
- Magnavox Odyssey² / Philips Videopac G7000 ([lr-o2em](https://github.com/libretro/libretro-o2em))
- Neo Geo Pocket / Neo Geo Pocket Color ([lr-mednafen-ngp](https://github.com/libretro/beetle-ngp-libretro))
- Sega Game Gear ([lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- ScummVM ([lr-scummvm](https://github.com/libretro/scummvm))
- Vectrex ([lr-vecx](https://github.com/libretro/libretro-vecx))
- WonderSwan / WonderSwan Color ([lr-mednafen-wswan](https://github.com/libretro/beetle-wswan-libretro))
- ZX Spectrum ([lr-fuse](https://github.com/libretro/fuse-libretro))

### Sistemas Experimentales (en desarrollo)
- *Arcade* ([lr-mame2010](https://github.com/libretro/mame2010-libretro))
- Nintendo DS ([lr-desmume](https://github.com/libretro/desmume) / [DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991))
- Sega Saturn ([lr-yabause](https://github.com/libretro/yabause))

> ¿Echas en falta algún sistema? -> coméntalo [aquí](https://github.com/bite-your-idols/Gamestarter-Pi/issues/35).

## Créditos
- Created by [bite-your-idols](https://github.com/bite-your-idols)
- Original **RetroArch** addon by [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **UAE4ARM** & **EmulationStation** compiled by [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Launcher** emulator icons by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
- **ReadMe** by [BrokenCommander](https://github.com/BrokenCommander)

---

![screenshot-gamestarter-settings](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-settings.png)
Pantalla de **Ajustes del addon**

![screenshot-advemulauncher](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-estuary-ael-systems.png)
Ejemplo de la "biblioteca de juegos" con **Advanced Emulator Launcher** en **LibreELEC 8**

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
Ejemplo de la "biblioteca de juegos" con [Mimic Skin](http://kodi.wiki/view/Add-on:mimic)
