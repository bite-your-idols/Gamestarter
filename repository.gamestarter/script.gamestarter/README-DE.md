# Gamestarter
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/packages/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/Gamestarter/tree/master/repository.gamestarter/script.gamestarter) / [Spanish](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/script.gamestarter/README-ES.md) / German

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

## Verfügbar Systeme
### Unterstützte Systeme
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

### Zusätzliche Systeme
- Cores from [Libretro buildbot](https://buildbot.libretro.com/nightly/linux/armhf/latest/): Download/update option within RetroArch
- Cores from [Lakka](https://github.com/bite-your-idols/Gamestarter/tree/master/packages/libretro-cores-all): Download/update option from addon settings.


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
