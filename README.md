# Gamestarter Pi
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

English/[Spanish](https://github.com/bite-your-idols/gamestarter/blob/master/README-ES.md)


## Retrogamig addon for Raspberry Pi's Kodi.

If you use a Raspberry Pi 2/3 as a media center running Kodi on [LibreELEC](https://libreelec.tv/) or [OpenELEC](http://openelec.tv/), you like retrogaming and you want to launch games just as you do with movies and tv shows without dual-booting, swaping SD memories, complex installations... Here you have the ultimate solution.

With this addon you will continue with your own customized Kodi but empowered with the awesome [RetroArch](http://www.libretro.com/) multi-emulator integrated in your Kodi library thanks to [AdvacedLauncher](http://forum.kodi.tv/showthread.php?tid=85724)/[Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826) addon. Check out included systems [here](https://github.com/bite-your-idols/Gamestarter-Pi/issues/35).


## Installation Instructions.

Download the latest release of the addon from [Releases Page](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest), copy into your Raspberry Pi 2/3 and select "install from zip" in Settings>Addons menu. The first time the addon is launched it will perform set-up . Then copy your [roms and bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) to /storage/emulators/ folder via ftp or [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) and reboot.


## Optional Installations.

After firts-time-setup you can open addon settings to install additional features such as:
- [EmulationStation](https://github.com/Herdinger/EmulationStation) (the same frontend RetroPie and Recalbox use) and themes (ES does not work in OE6-)
- [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/wiki) addon to launch games from the "cloud" ([config instructions](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- RetroArch experimental cores (Mame2010, yabause, reicast, desmume...)
- UAE4ARM Amiga emulator ([info about amiga emulation](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- Libretro PC ports (Cave Story, Quake, Doom & Dinothawr)
- 3 GameMaker Pi ports including modern masterpiece "Maldita Castilla" ([More Info](https://github.com/bite-your-idols/gamemaker-pi))


![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
Example of Kodi's game "library" with [Mimic Skin](http://kodi.wiki/view/Add-on:mimic).



## Credits.

- Original RetroArch addon by [Mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)

- UAE4ARM & EmulationStation compiled by [Escalade](https://forum.libreelec.tv/thread-302.html)

- AdvancedLauncher "skin" images by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
