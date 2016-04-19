# Gamestarter

![gamestarter-logo](https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/assets/gamestarter-logo.jpg)

English/[Spanish](https://github.com/bite-your-idols/gamestarter-openelec/blob/master/README-ES.md)

### About
I like Raspberry Pi as my media center. I like OpenELEC because it is simple, fast and stable. I like gaming, specially retrogaming, so I wanted to use my media center for playing retrogames. But I didn't like to swap sd cards, dual-booting, etc... So I'm trying to make an easy installation for emulators and other games for Raspberry Pi's OpenELEC.

After instalaltion you will continue with your own customized OpenELEC but with the addition of multi-emulator frontend [RetroArch](http://www.libretro.com/index.php/getting-started-with-retroarch/), Amiga UAE4ARM emulator and some [GameMaker Pi](http://yoyogames.com/pi) ports. Everything can be launched within kodi, and after exit you will get back to kodi again. Also I included a launcher addon for retroarch, some test freeware roms, advanced launcher "skin" and default game list with main emulators, retroarch joypad configs, [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl) addon and many more...

Only things you need:
- a Raspberry Pi with [OpenELEC](http://openelec.tv/get-openelec) (OE6 recommended) installed, 
- a PC, a tablet or a phone with an ssh client to run the installation script, 
- a gamepad to enjoy!

***

### Installation instructions:

Before installation I recommend to backup your system with [OpenELEC's Configuration Tool](http://wiki.openelec.tv/index.php/OpenELEC_Configuration_Addon) or creating an image of your SD card using [USB Image Tool](http://www.alexpage.de/usb-image-tool/).

Since this is still a work in progress project some things may not work, but I have tested into OpenELEC 6.0.3/6.95.2 in a Raspberry Pi 2/3 model B and everything is working ok. I also recommend to read this whole text before installation to understand what is this all about.

So, let's go!!

Download the [Gamestarter installer addon](https://goo.gl/FayJ9x), copy into your Raspberry and select "install from zip" in Settings>Addons menu. Let the installer work for less than 5 minutes and it will notice you when finished. Then copy your [roms and bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) to /storage/emulators/ folder via ftp or [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) and reboot.

Piece of cake!

;)


##### alternative method: ssh installation

Connect to your Raspberry Pi via [ssh](http://wiki.openelec.tv/index.php/OpenELEC_FAQ#How_do_i_use_SSH.3F) and type:

```
wget --no-check-certificate -O /storage/installer-menu.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/installer-menu.sh && sh /storage/installer-menu.sh
```

Then you can choose between current stable version (v.0.0.2) and the Work-In-Progress beta version (v.0.0.3). If you select the second one you will be asked to install or not Emulationstation and Gamemaker Pi ports during installation process.


relax and wait 5 minutes...


After that, you should reboot your system and copy your [roms and bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) to /storage/emulators/ folder via ftp or [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares).

That's all!


##### Bonus: Pre-Installed image 
>There is an alternative way for getting Gamestarter, you can write a pre-installed image with OpenELEC into your SD card using [USB Image Tool](http://www.alexpage.de/usb-image-tool/): 

>https://goo.gl/l9X3rC

![screenshot-kodi-b](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-kodi-b.png)

>It includes some extras like custom splash screen and addon shortcuts on home page.

>It's burn & run!!!


***


### Post-installation setup:

After installation is completed there are several ways of launching RetroArch. The easiest one is using the addon that is located under Program Addons called Gamestarter: Retroarch. 

![screenshot-addons](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-addons.png)

The first time RetroArch is launched I recommend to Update everything (Settings menu> Online Updater). Then you can create your own playlists, start games, change cores, user dynamic wallpapers, boxarts, update cores... just like in [Lakka](http://www.lakka.tv/) distro!!

![screenshot-retroarch-](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-retroarch.gif)


Instead os using this addon you can [remap your remote](http://kodi.wiki/view/HOW-TO:Modify_keymaps) and assign to a key the following action:
```
XBMC.System.Exec("/storage/emulators/scripts/gamestarter.sh retroarch")
```


The other way to launch RetroArch games, and the only one to launch both amiga roms and GameMaker Pi ports, is using AdvancedLauncher, located also under Program Addons.


![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-context.png)


There it is a default/example launchers/games list I created. You can edit list, scan for your games, edit emulator cores... everything using contextual menu.


![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-edit.png)

Finally, you can use [IARL](https://github.com/zach-morris/plugin.program.iarl/) addon, it will launch Games hosted on the Internet Archive.

![Screen #2](https://raw.githubusercontent.com/zach-morris/plugin.program.iarl/master/support/media/screen2.jpg)

More info: [IARL](https://github.com/zach-morris/plugin.program.iarl/)

### Amiga emulation:

Amiga emulation is based on UAE4ARM pi port, You can not launch emulator into GUI by now, but you can launch games from kodi's Advanced Launcher. Games must be ".adf" files. All files from Multi-disk games must be named the same adding "_Disk1.adf", "_Disk2.adf"... like this:
> name of the game_Disk1.adf

> name of the game_Disk2.adf

> name of the game_Disk3.adf

> ...

You will need a mouse in order to start games and a keyboard to exit, save/load states...

Also you can exit using ssh:
```
pkill uae4arm
```
> There is a work in progress libretro core port of this emulator. When it will be released I will use it instead.



### GameMaker Pi:
As an extra feature, the installation will download and extract three free games from GameMaker Team. To make them work I had to make a hacklib in order to downgrade some OpenELEC libs. If you notice that this downgrade is making some curl-related issues to your system, you can toggle the hack on/off using an addon I created and installed under Program addons menu called "hacklib".

These games only work with Xbox Controller :(

You can exit them using ssh too:
```
pkill MalditaCastilla
pkill SuperCrateBox
pkill TheyNeedToBeFed
```


### Internet Archive ROM Launcher:

Go to Video Addons> IARL> settings, select external launchers, and then select OpenElec (Rpi) Gamestarter Addon
On the setup wizard tab, choose setup for 'most playable', 'balanced', and 'accurate' (I have some default cores selected, which can be changed if needed)
Then hit OK. Open up the addon to run it at least once. The addon requires the settings be saved before the wizard can run, I can't really find a way around that.
Reopen the addon settings, then select the wizard tab and hit run. it should setup all archives to work with Gamestarter.


***


### Changelog:
v0.0.3-WIP:
- emulationstation (OE7+)
- installation menu and optional features

v0.0.2:
- IARL
- Launch "adf" Amiga roms
- Installer addon

v0.0.1: 
- Initial Release


### Bugs, issues, errors...:
- in OE 7 beta Gamemaker Pi ports have no sound.

Any improvement, collaborations, corrections are welcome!!!


***


### Credits:

- Original RetroArch addon by Mezo:
 http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi

- RetroArch, UAE4ARM & EmulationStation compiled by Escalade:
http://openelec.tv/forum/124-raspberry-pi/80543-raspberry-pi2-3-openelec-7-0-kodi-16-0-retroarch

- Retroarch:
http://www.libretro.com/

- UAE4ARM:
https://www.raspberrypi.org/forums/viewtopic.php?t=110488

- AdvancedLauncher:
https://github.com/edwtjo/advanced-launcher

- AdvancedLauncher thumbs by tronkyfran:
https://github.com/HerbFargus/es-theme-tronkyfran

- Internet Archive ROM Launcher by ZachMorris:
https://github.com/zach-morris/plugin.program.iarl

- GameMaker:
http://yoyogames.com/pi

- Hacklib:
http://forum.kodi.tv/showthread.php?pid=1481392#pid1481392


Enjoy!
