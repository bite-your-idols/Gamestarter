# Gamestarter Pi
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

English / [Spanish](https://github.com/bite-your-idols/gamestarter/blob/master/README-ES.md) / [German](https://github.com/bite-your-idols/gamestarter/blob/master/README-DE.md)

## Retrogaming Kodi addon for Raspberry Pi 2/3
Do you use your **Raspberry Pi** as a **media center**, running **Kodi** in [LibreELEC](https://libreelec.tv/) or [OpenELEC](http://openelec.tv/), and you want to play your retro games without dual-booting, swaping SD cards or complex installation? **Then this is the perfect solution.**

With this addon you will be able to run **multiple emulators** from [RetroArch](http://libretro.com/) thanks to [Advanced Launcher](http://forum.kodi.tv/showthread.php?tid=85724) / [Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826). Check out the included systems below.

## Installation instructions
- Use [SSH](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=SSH) to connect to your **Raspberry Pi** ([PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) for Windows, [Terminus](https://termius.com/download/) for mobile)
- Download the [latest release](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest) with `wget`
- Go to **Kodi → Settings → System → Add-ons** and enable **Unknown sources**
- Go to **Kodi → Add-ons → Install from zip file** and select the `.zip` (check the **Home folder**)

The first time the addon is launched, it will perform a initial setup. You can then copy your [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) and [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) to `/storage/emulators/` via [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB).

## Optional packages
You can open the addon settings to install additional features.
- **[EmulationStation](http://emulationstation.org/):** a nice frontend also used by [RetroPie](https://retropie.org.uk/) and [Recalbox](https://recalbox.com/) and additional themes
- **[Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/wiki):** addon to launch games from the [Internet Archive](https://archive.org/) (see [#31](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- **Experimental RetroArch cores:** [lr-desmume](https://github.com/libretro/desmume), [lr-mame2010](https://github.com/libretro/mame2010-libretro), [lr-yabause](https://github.com/libretro/yabause)
- **[uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi):** Amiga emulator (see [#34](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- **[Libretro PC ports](https://buildbot.libretro.com/assets/cores/):** Cave Story, Doom, Quake, Dinothawr

You can download [this](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/skin.estuary.zip) **modified Estuary Skin** to get a **Games** section in the home menu (see [#48](https://github.com/bite-your-idols/Gamestarter-Pi/issues/48)).

## Included systems
### Popular systems
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

### Additional systems
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
- WondeSwan / WonderSwan Color ([lr-mednafen-wswan](https://github.com/libretro/beetle-wswan-libretro))
- ZX Spectrum ([lr-fuse](https://github.com/libretro/fuse-libretro))

### Experimental systems (WIP)
- *Arcade* ([lr-mame2010](https://github.com/libretro/mame2010-libretro))
- Amiga ([lr-fsuae](https://github.com/libretro/libretro-fsuae))
- Nintendo DS ([lr-desmume](https://github.com/libretro/desmume))
- Sega Saturn ([lr-yabause](https://github.com/libretro/yabause))

## Credits
- Original **RetroArch** addon by [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **UAE4ARM** & **EmulationStation** compiled by [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Launcher** emulator icons by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
- **ReadMe** german translation by [BrokenCommander](https://github.com/BrokenCommander)

---

![screenshot-advlauncher-mimic](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
**Advanced Launcher** library with the [Mimic Skin](http://kodi.wiki/view/Add-on:mimic)
