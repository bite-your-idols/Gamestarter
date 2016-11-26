# Gamestarter Pi
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

English/[Spanish](https://github.com/bite-your-idols/gamestarter/blob/master/README-ES.md)


## Retrogamig addon for Raspberry Pi's Kodi.

If you use a Raspberry Pi 2/3 as a media center running Kodi on [LibreELEC](https://libreelec.tv/) or [OpenELEC](http://openelec.tv/), you like retrogaming and you want to launch games just as you do with movies and tv shows without dual-booting, swaping SD memories, complex installations... Here you have the definitve solution.

With this addon you will continue with your own customized Kodi but empowered with the awesome [RetroArch](http://www.libretro.com/) multi-emulator integrated in your Kodi library thanks to [AdvacedLauncher](http://forum.kodi.tv/showthread.php?tid=85724)/[Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826) addon.

Cores/Emulators included:
- [AMIGA](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34) (lr uae4arm or UAE4ARM ), ARCADE (lr Mame2003 with hiscores and lr FBA next), Atari 2600 (lr stella), Atari Lynx (lr handy), Sega GameGear (lr picodrive), Sega Master System (lr picodrive), Sega Megadrive/MegaCD (lr picodrive), Nintendo Game Boy/Game Boy Color (lr Gambatte), Nintendo NES (lr fceumm), Super Nintendo (lr pocketsnes), Nintendo Game Boy Advanced (lr gpsp), Nintendo 64 (lr glupen64), MSX (lr bluemsx), Magnavox Odyssey/Phillips Videopac (lr o2em), NeoGeo (lr FBA next), Turbografx/PC Engine/PC Engine CD (lr mednafen_pce_fast), Sony Playstation (lr pcsx_rearmed), Sony PSP (lr ppsspp), ScummVM (lr scummvm), ZX Spectrum (lr fuse), PC Ports (libretro CaveStory, Quake and Doom).


## Installation Instructions

Download the latest release of the addon from [Releases Page](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest), copy into your Raspberry Pi 2/3 and select "install from zip" in Settings>Addons menu. The first time the addon is launched it will perform set-up . Then copy your [roms and bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) to /storage/emulators/ folder via ftp or [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) and reboot.


## Optional Installations

After firts-time-setup you can open addon settings to install additional features such as:
- [EmulationStation](https://github.com/Herdinger/EmulationStation) (the same frontend RetroPie and Recalbox use) and themes (ES does not work in OE6-),
- [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/wiki) addon to launch games from the "cloud",
- UAE4ARM Amiga emulator ([More Info](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34)),
- Libretro PC ports (Cave Story, Quake, Doom & Dinothawr)
- 3 GameMaker Pi ports including modern masterpiece "Maldita Castilla" ([More Info](https://github.com/bite-your-idols/gamemaker-pi)).


## Credits

- Original RetroArch addon by [Mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)

- UAE4ARM & EmulationStation compiled by [Escalade](https://forum.libreelec.tv/thread-302.html)

- AdvancedLauncher "skin" images by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)



## Gallery

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
Example of Kodi's game "library" with [Mimic Skin](http://kodi.wiki/view/Add-on:mimic).

![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-context.png)
Advanced Launcher context menu.

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-edit.png)
Advanced Launcher core edit.



