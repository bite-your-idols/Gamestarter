# Gamestarter add-on repository
![Gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/packages/assets/gamestarter-logo-dark.jpg)

## Retrogaming Kodi add-ons for LibreELEC (RPi2/3 & Generic x86_64)

> If you are looking for old Gamestarter addon please visit [this link](https://goo.gl/KYwp4q).

### Installation instructions
- Download the [repository zip file](https://goo.gl/m36qLT) and transfer it to your device
- Go to **Kodi → Settings → System → Add-ons** and enable **Unknown sources**
- Go to **Kodi → Add-ons → Install from zip file** and select the downloaded `.zip` file
- Go to **Kodi → Add-ons → Download or Install from Repository** and select the addons you want to install


### Available add-ons
- **[RetroArch](http://www.retroarch.com/):** the official frontend for Libretro cores with a lot of features and settings ([changelog](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/game.retroarch/changelog.txt)).
- **[Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826):** Best way to integrate and launch your game collections in Kodi ([changelog](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/plugin.program.advanced.emulator.launcher/changelog.txt)).
- **[EmulationStation](http://emulationstation.org/):** a nice frontend also used by *RetroPie* and *Recalbox* ([changelog](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/game.emulationstation/changelog.txt)).
- **[DraStic RPi](https://www.raspberrypi.org/forums/viewtopic.php?t=170820&p=1104991):** Experimental Nintendo DS emulator port for Raspberry Pi 2/3 ([changelog](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/game.drastic/changelog.txt)).
- **[PPSSPP RPi](http://ppsspp.org/):** PSP emulator for Raspberry Pi 2/3 ([changelog](https://github.com/bite-your-idols/Gamestarter/blob/master/repository.gamestarter/game.ppsspp/changelog.txt)).

## Additional info
- **RetroArch**:
  - Before launching the addon, you can download full *Lakka* core package ([RPi](https://github.com/bite-your-idols/Gamestarter/tree/master/packages/libretro-cores-RPi)/[Generic](https://github.com/bite-your-idols/Gamestarter/tree/master/packages/libretro-cores-Gen)) in settings window.
  - You should copy your [ROMs](https://github.com/libretro/Lakka/wiki/ROMs) and [BIOSes](https://github.com/libretro/Lakka/wiki/BIOSes) to default folder `/storage/emulators/` via [Samba](https://wiki.libreelec.tv/index.php?title=Accessing_LibreELEC#tab=Samba_2FSMB) or FTP.
  - After launching the addon you can enter RetroArch menu with default combo `select + start` in your gamepad or `F1` in your keyboard. Then you can download/update cores from [Libretro buildbot](https://buildbot.libretro.com/nightly/linux/armhf/latest/) and other assets.
  
- **Advanced Emulator Launcher**:
  - After installing this addon you should move `categories.xml` file from `/storage/.kodi/addons/plugin.program.advanced.emulator.launcher/` to `/storage/.kodi/userdata/addon_data/plugin.program.advanced.emulator.launcher/`
  
- **Advanced Emulator Launcher**:
  - Before launching the addon you can edit default roms path from addon settings (default: `/storage/emulators/roms`)
  - Also you can decide what core to use with each system editing the list in addon settings.

## Issues & Help
Please provide log files located in `/storage/.kodi/temp`.


## Credits
- Original **RetroArch** addon by [mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)
- **EmulationStation** compiled by [escalade](https://forum.libreelec.tv/thread-302.html)
- **Advanced Emulator Launcher** "theme artworks" by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)

---
![screenshot-repo](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-addonrepo.png)
Available add-ons installed in **LibreELEC 8**

![screenshot-advemulauncher](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-estuary-ael-systems.png)
**Advanced Emulator Launcher** library in **LibreELEC 8**

![screenshot-ESsettings](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/assets/screenshot-emulationstation-settings.png)
**EmulationStation** add-on Settings
