# Gamestarter Pi
![gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/)/Spanish



## Retrogamig addon para Kodi en Raspberry Pi
Si usas la Raspberry Pi 2/3 como media center corriendo Kodi en [LibreELEC](https://libreelec.tv/) o [OpenELEC](http://openelec.tv/), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, aqui tienes la solución definitiva.

Con este addon continuarás teniendo tu propia versión de Kodi pero vitaminada con el maravilloso multi-emulador [Retroarch](http://www.libretro.com/) integrado en kodi gracias al addon [AdvacedLauncher](http://forum.kodi.tv/showthread.php?tid=85724)/[Advanced Emulator Launcher](http://forum.kodi.tv/showthread.php?tid=287826). Mira la lista de emuladores [aquí](https://github.com/bite-your-idols/Gamestarter-Pi/issues/35).

## Instrucciones de instalación.
Descarga la última versión del addon desde la [Página de Releases](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest), copialo en tu Raspberry Pi 2/3 y selecciona "instalar desde zip" en el menu Ajustes>addons. La primera vez que inicies el addon se relaizaran unos ajustes iniciales. Después solo tendrás que copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) y reiniciar.

## Instalaciones Opcionales.
Despues de iniciar por primera vez tendrás la opción de instalar con un click desde los ajustes del addon:
- [EmulationStation](https://github.com/Herdinger/EmulationStation) (el mismo frontend que usan RetroPie y Recalbox) y algunos temas (ES no funciona en versiones OE6-) 
- [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl/), addon para lanzar juegos desde la "nube" ([instrucciones de config](https://github.com/bite-your-idols/Gamestarter-Pi/issues/31))
- RetroArch cores experimentales (Mame2010, yabause, reicast, desmume...)
- Emulador de Amiga UAE4ARM ([info sobre emulación de amiga](https://github.com/bite-your-idols/Gamestarter-Pi/issues/34))
- 3 juegos de GameMaker Pi incluyendo el clásico moderno "Maldita Castilla" ([Mas info aquí](https://github.com/bite-your-idols/gamemaker-pi))

## Créditos.
- Original RetroArch addon by [Mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)

- UAE4ARM & EmulationStation compiled by [Escalade](https://forum.libreelec.tv/thread-302.html)

- AdvancedLauncher "skin" images by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
Ejemplo de la "biblioteca de juegos" de Kodi con [Mimic Skin](http://kodi.wiki/view/Add-on:mimic).
