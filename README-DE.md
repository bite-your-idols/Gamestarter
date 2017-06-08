# Gamestarter Pi
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/packages/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/blob/master/README.md) / [Spanish](https://github.com/bite-your-idols/gamestarter/blob/master/README-ES.md) / German

## Retrogaming Kodi Addon für Raspberry Pi 2/3
Benutzt du deinen **Raspberry Pi** als **Media Center**, in Verbindung mit **Kodi** in [LibreELEC](https://libreelec.tv/) oder [OpenELEC](http://openelec.tv/), und möchtest deine Retrogames spielen ohne ein Dual-Boot-System, mehrere SD Karten oder komplizierte Installationen? **Dann ist das die perfekte Lösung.**

Mit diesem Addon wird es dir dank [Advanced Launcher](http://forum.kodi.tv/showthread.php?tid=85724) / [Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826) möglich sein, **mehrere Emulatoren** von [RetroArch](http://libretro.com/) zu benutzen.  Siehe unten für eine Liste der unterstützten Systeme.

## Installationsanleitung
- Lade die [neuste Version](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest) herunter und kopiere sie auf deinen **Raspberry Pi**
- **[Kodi 17+]** Öffne **Kodi → Einstellungen → System → Addons** und aktiviere **Unbekannte Quellen**
- Öffne **Kodi → Addons → Aus ZIP-Datei installieren** und wähle deine heruntergeladene `.zip`-Datei

Wenn das Addon zum ersten Mal gestartet wird, erfolgt eine Erstkonfiguration. Danach kannst du deine [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) und [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) über [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB) nach `/storage/emulators/` kopieren.

> Seit **Kodi 17** musst du **Advanced Emulator Launcher** manuell aktivieren:
<br>Öffne **Addons → Benutzer-Addons → Programm-Addons → Advanced Emulator Laucher** und klicke auf **Aktivieren**

## Zusätzliche Programme
Du kannst die Addon Einstellungen aufrufen um zusätzliche Funktionen zu installieren.
- **[EmulationStation](http://emulationstation.org/):** ein schöne Benutzeroberfläche, auch benutzt von [RetroPie](https://retropie.org.uk/) und [Recalbox](https://recalbox.com/), und zusätzliche Designs
- **[Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/wiki):** ein Addon um Spiele vom [Internet Archive](https://archive.org/) zu starten (siehe [#31](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- **[uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi):** Amiga Emulator (siehe [#34](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- **[DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991):** Experimenteller Nintendo DS Emulator
- **[Libretro PC Portierungen](https://buildbot.libretro.com/assets/cores/):** Cave Story, Doom, Quake, Dinothawr & Rick Dangerous
- **Angepasster Estuary Skin:** Fügt einen Menüpunkt für Gamestarter oder Advanced Emulator Launcher im Hauptmenü hinzu (siehe [#48](https://github.com/bite-your-idols/Gamestarter-Pi/issues/48))

## Unterstützte Systeme
### Beliebte Systeme
- *Arcade* ([lr-mame2003](https://github.com/libretro/mame2003-libretro) / [lr-fbalpha](https://github.com/libretro/fbalpha))
- MSX / MSX2 ([lr-bluemsx](https://github.com/libretro/blueMSX-libretro) / [lr-fmsx](https://github.com/libretro/fmsx-libretro))
- Neo Geo ([lr-fbalpha](https://github.com/libretro/fbalpha))
- Nintendo 64 ([lr-mupen64plus](https://github.com/libretro/mupen64plus-libretro) / [lr-parallel_64](https://github.com/libretro/parallel-n64))
- Nintendo Game Boy / Game Boy Color ([lr-gambatte](https://github.com/libretro/Gambatte-libretro))
- Nintendo Game Boy Advanced ([lr-gpsp](https://github.com/libretro/gpsp) / [lr-mgba](https://github.com/libretro/mgba))
- Nintendo NES ([lr-fceumm](https://github.com/libretro/libretro-fceumm) / [lr-nestopia](https://github.com/libretro/nestopia) / [lr-quicknes](https://github.com/libretro/QuickNES_Core))
- Nintendo SNES ([lr-snes9x2002](https://github.com/libretro/snes9x2002) / [lr-snes9x2005](https://github.com/libretro/snes9x2005) / [lr-snes9x2010](https://github.com/libretro/snes9x2010)  / [lr-snes9x](https://github.com/libretro/snes9x))
- Sega Master System ([lr-picodrive](https://github.com/libretro/picodrive) / [lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- Sega Mega Drive / Mega-CD ([lr-picodrive](https://github.com/libretro/picodrive) / [lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- Sony Playstation ([lr-pcsx-rearmed](https://github.com/libretro/pcsx_rearmed))
- Sony PSP ([lr-ppsspp](https://github.com/libretro/libretro-ppsspp))
- TurboGrafx-16 / PC Engine / PC Engine CD ([lr-mednafen-pce-fast](https://github.com/libretro/beetle-pce-fast-libretro) / [lr-mednafen-supergrafx](https://github.com/libretro/beetle-supergrafx-libretro))

### Zusätzliche Systeme
- *Arcade* ([lr-mame2000](https://github.com/libretro/mame2000-libretro) / [lr-mame2010](https://github.com/libretro/mame2010-libretro))
- Amiga ([lr-uae4arm](https://github.com/r-type/uae4arm-libretro) / [uae4arm-rpi](https://github.com/Chips-fr/uae4arm-rpi) / [lr-puae](https://github.com/libretro/libretro-uae))
- Amstard CPC ([lr-caprice32](https://github.com/libretro/libretro-cap32) / [lr-crocods](https://github.com/libretro/libretro-crocods))
- Atari 800 ([lr-atari800](https://github.com/r-type/libretro-atari800))
- Atari 2600 ([lr-stella](https://github.com/libretro/stella-libretro))
- Atari 7800 ([lr-prosystem](https://github.com/libretro/prosystem-libretro))
- Atari Lynx ([lr-handy](https://github.com/libretro/libretro-handy) / [lr-mednafen_lynx](https://github.com/libretro/beetle-lynx-libretro))
- Commodore 64 ([lr-vice](https://github.com/libretro/vice-libretro))
- DOSBox ([lr-dosbox](https://github.com/libretro/dosbox-libretro))
- Game & Watch ([lr-gw](https://github.com/libretro/gw-libretro))
- Magnavox Odyssey² / Philips Videopac G7000 ([lr-o2em](https://github.com/libretro/libretro-o2em))
- Neo Geo Pocket / Neo Geo Pocket Color ([lr-mednafen-ngp](https://github.com/libretro/beetle-ngp-libretro))
- Nintendo DS ([lr-desmume](https://github.com/libretro/desmume) / [DraStic](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991))
- Sega Game Gear ([lr-genesis-plus-gx](https://github.com/libretro/Genesis-Plus-GX))
- Sega Saturn ([lr-yabause](https://github.com/libretro/yabause))
- ScummVM ([lr-scummvm](https://github.com/libretro/scummvm))
- Vectrex ([lr-vecx](https://github.com/libretro/libretro-vecx))
- WonderSwan / WonderSwan Color ([lr-mednafen-wswan](https://github.com/libretro/beetle-wswan-libretro))
- ZX Spectrum ([lr-fuse](https://github.com/libretro/fuse-libretro))
- ZX81 ([lr-81](https://github.com/libretro/81-libretro))
- ...


## Mitwirkende
- Erstellt von [bite-your-idols](https://github.com/bite-your-idols)
- Ursprüngliches **RetroArch** Addon von [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **UAE4ARM** & **EmulationStation** kompiliert von [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Launcher** Emulator Icons von [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
- **ReadMe** von [BrokenCommander](https://github.com/BrokenCommander)

---

![screenshot-gamestarter-settings](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-settings.png)
**Gamestarter** Einstellungen

![screenshot-advemulauncher](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-estuary-ael-systems.png)
**Advanced Emulator Launcher** Bibliothek in **LibreELEC 8**

![screenshot-advlauncher-mimic](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-gamestarter-advlauncher-mimic.png)
**Advanced Launcher** Bibliothek mit [Mimic Skin](http://kodi.wiki/view/Add-on:mimic)
