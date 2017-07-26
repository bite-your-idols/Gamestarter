# Gamestarter
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/packages/assets/gamestarter-logo-dark.jpg)

English / [Spanish](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/script.gamestarter/README-ES.md) / [German](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/script.gamestarter/README-DE.md)

## Retrogaming Kodi addon for Raspberry Pi 2/3
Do you use your **Raspberry Pi** as a **media center**, running **Kodi** in [LibreELEC](https://libreelec.tv/) or [OpenELEC](http://openelec.tv/), and you want to play your retro games without dual-booting, swaping SD cards or complex installation? **Then this is the perfect solution.**

With this addon you will be able to run **multiple emulators** from [RetroArch](https://www.libretro.com/index.php/getting-started-with-retroarch/) thanks to [Advanced Launcher](http://forum.kodi.tv/showthread.php?tid=85724) / [Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826). Check out the included systems below.

> New addon version available for Linux PC running **LibreELEC 8** Generic X86_64

## Installation instructions
- Download the [latest release](https://github.com/bite-your-idols/Gamestarter/releases/tag/2.9) and transfer it to your **Raspberry Pi**
- **[Kodi 17+]** Go to **Kodi → Settings → System → Add-ons** and enable **Unknown sources**
- Go to **Kodi → Add-ons → Install from zip file** and select the downloaded `.zip` file

The first time the addon is launched, it will perform a initial setup. You can then copy your [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) and [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) to `/storage/emulators/` via [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB).

> Since **Kodi 17** you have to activate **Advanced Emulator Launcher** manually:
<br>Go to **Add-ons → My add-ons → Program add-ons → Advanced Emulator Launcher** and click on **Enable**

## Optional packages
You can open the addon settings to install additional features.
- **[EmulationStation](http://emulationstation.org/):** a nice frontend also used by [RetroPie](https://retropie.org.uk/) and [Recalbox](https://recalbox.com/) and additional themes
- **[Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/wiki):** addon to launch games from the [Internet Archive](https://archive.org/) (see [#31](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- **[uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi):** Amiga emulator (see [#34](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- **[DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991):** Experimental Nintendo DS emulator
- **[Libretro PC ports](https://buildbot.libretro.com/assets/cores/):** Cave Story, Doom, Quake, Dinothawr & Rick Dangerous
- **Custom Estuary Skin:** Adds a home menu shortcut for Gamestarter or Advanced Emulator Launcher (see [#48](https://github.com/bite-your-idols/Gamestarter-Pi/issues/48))

## Availabe systems
### Included systems
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

### Additional systems
- Cores from [Libretro buildbot](https://buildbot.libretro.com/nightly/linux/armhf/latest/): Download/update option within RetroArch
- Cores from [Lakka](https://github.com/bite-your-idols/Gamestarter/tree/master/packages/libretro-cores-all): Download/update option from addon settings.


## Credits
- Created by [bite-your-idols](https://github.com/bite-your-idols)
- Original **RetroArch** addon by [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **UAE4ARM** & **EmulationStation** compiled by [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Launcher** emulator icons by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
- **ReadMe** by [BrokenCommander](https://github.com/BrokenCommander)

---

![screenshot-gamestarter-settings](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-settings.png)
**Gamestarter** settings screen

![screenshot-advemulauncher](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-estuary-ael-systems.png)
**Advanced Emulator Launcher** library in **LibreELEC 8**

![screenshot-advlauncher-mimic](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-gamestarter-advlauncher-mimic.png)
**Advanced Launcher** library with [Mimic Skin](http://kodi.wiki/view/Add-on:mimic)
