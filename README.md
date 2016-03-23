# Gamestarter

![gamestarter-logo](https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/assets/gamestarter-logo.jpg)


### About
I like Raspberry Pi, it is my Media Center since several years ago. I like OpenELEC because it is simple, fast and stable. I like gaming, specially retrogaming, so I wanted to use my Media Center for playing retrogames but I didn't like to swap sd cards, dual-booting, etc... So I'm trying to make an easy installation for Retroarch and other games or emulators for Raspberry Pi's OpenELEC.

It is based on an addon created by Mezo in OpenELEC official forums and edited by other users.


This is still a work in progress project.



### Installation instructions:

Before installation I recommend to make a backup of your system with [OpenELEC's Configuration Tool](http://wiki.openelec.tv/index.php/OpenELEC_Configuration_Addon) or creating an image of your SD card using [USB Image Tool](http://www.alexpage.de/usb-image-tool/)

Since this is still a work in progress project, some thing may not work, but I have tested into OpenELEC 6.0.3 in a Raspberry Pi 2 model B and everything is working ok. I also recommend to read this whole text before installation to understand what is this all about.

So, let's go!!


Connect to your Raspberry Pi via [ssh](http://wiki.openelec.tv/index.php/OpenELEC_FAQ#How_do_i_use_SSH.3F) and type:

```
wget --no-check-certificate -O /storage/install-gamestarter.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/install-gamestarter.sh
```

Then:
```
sh /storage/install-gamestarter.sh
```

relax and wait 5 minutes...

After that, you should reboot your system and copy your roms, bios and saves to /storage/emulators/ folder via ftp or [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares).




### Post-installation setup:

After installation is completed and reboot, firts thing you have to do is transfer some roms and requiered bios. 
Then, there are two ways of launching RetroArch. The easiest one is using the addon that is located under Program Addons called Gamestarter: Retroarch. 

[screenshot-addons](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-addons.png)

The first time RetroArch is launched I recommend to Update everything (Settings menu> Online Updater). The you can create your own playlists, start games, change cores, user dynamic wallpapers, boxarts, update cores,... just like in [Lakka](http://www.lakka.tv/) distro!!

Instead os using this addon you can [remap your remote](http://kodi.wiki/view/HOW-TO:Modify_keymaps) and assign to a key the following action:
```
XBMC.System.Exec("/storage/emulators/scripts/gamestarter.sh retroarch")
```

The other way to launch RetroArch games, and the only one to launch both amiga roms and GameMaker Pi ports, is using AdvancedLauncher, located also under Program Addons.

There it is a default/example launchers/games list I created. You can edit list



WIP...



### ToDo:
- Include sample roms/games
- Create uninstall and update scripts for libretro cores and RetroArch.
- WIP...



### Bugs, issues, errors...:
- No sound in emualtors:
```
mount -o remount,rw /flash
nano /flash/config.txt 
```
Add this lines:
```
hdmi_force_edid_audio=1
dtparam=audio=on
```
Exit saving and reboot.


WIP...




### Credits:

- Original RetroArch addon by Mezo:
 http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi

- Retroarch:
http://www.libretro.com/

- UAE4ARM:
https://www.raspberrypi.org/forums/viewtopic.php?t=110488

- GameMaker:
http://yoyogames.com/pi

- AdvancedLauncher:
https://github.com/edwtjo/advanced-launcher

- Hacklib:
http://forum.kodi.tv/showthread.php?pid=1481392#pid1481392

- System thumbs by tronkyfran:
https://github.com/HerbFargus/es-theme-tronkyfran


Enjoy!
