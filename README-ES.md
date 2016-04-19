# Gamestarter

![gamestarter-logo](https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/assets/gamestarter-logo.jpg)

[English](https://github.com/bite-your-idols/gamestarter-openelec/)/Spanish


### Sobre el proyecto
Me gusta la Raspberry Pi como media center. Me gusta OpenELEC porque es simple, rapido y estable. Me gusta jugar, especialmente a juegos retro. Asi que lo ideal seria poder usar mi media center para jugar a emuladores, pero sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso. Por eso he creado este script de instalación fácil de emuladores y otros juegos para OpenELEC de Raspberry Pi.

Después de la instalación continuarás teniendo tu propia versión de OpenELEC pero habiendole añadido el multi-emulador [RetroArch](http://www.libretro.com/index.php/getting-started-with-retroarch/), el emulador de Amiga UAE4ARM y algunos juegos de [GameMaker Pi](http://yoyogames.com/pi). Todo puede ser lanzado desde kodi y al salir volverás a él. También he incluido un addon para lanzar RetroArch, que puedes añadir a tu pantalla de inicio, algunos roms de prueba o demos, una lista inicial de AdvandeLauncher con los principales emus pre-configurados y un "skin", las configuraciones para RetroArch para la mayoria de mandos del mercado, el addon [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl) para lanzar los juegos desde la nube y más.


Lo único que necesitas es:
- una Raspberry Pi con [OpenELEC](http://openelec.tv/get-openelec)(Recomendado OE6) instalado, 
- un PC, tablet o teléfono móvil con un cliente ssh para ejecutar el script de instalación, 
- un mando para disfrutar.

***


### Instrucciones de instalación:

Antes de la instalación recomiendo hacer un backup de tu sistema con [OpenELEC's Configuration Tool](http://wiki.openelec.tv/index.php/OpenELEC_Configuration_Addon) o hacer una imagen de tu tarjeta con [USB Image Tool](http://www.alexpage.de/usb-image-tool/).

Como es un proyecto en desarrollo algunas cosas pueden no funcionar, no me hago responsable de los daños que puedan surgir, pero esta probado en OpenELEC 6.0.3/6.95.2 en una Raspberry Pi 2/3 model B y todo funciona bien. También recomiendo leer todo este texto antes de instalar para saber de que va el tema.

¡vamos allá!

Descarga el addon [Gamestarter installer](https://goo.gl/FayJ9x), copiarlo en tu Raspberry y seleccionar "instalar desde zip" en el menu Ajustes>addons. Deja que haga su trabajo durante menos de 5 minutos y te avisará cuando haya terminado. Solo tendrás que copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) y reiniciar.

¡Pan comido!



##### Método alternativo: instalación por ssh

Conéctate a tu Raspberry Pi via [ssh](http://wiki.openelec.tv/index.php/OpenELEC_FAQ#How_do_i_use_SSH.3F) y escribe (copia/pega):

```
wget --no-check-certificate -O /storage/installer-menu.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/installer-menu.sh && sh /storage/installer-menu.sh
```

Podrás elegir entre instalar la versión estable recomendada (v.0.0.2) y la version en pruebas (v.0.0.3). Si eliges la segunda, durante la instalación se te preguntará si deseas instalar Emulationstation y los juegos de GameMaker Pi.

relájate y espera 5 minutos...


Al finalizar, deberías reiniciar tu sistema y copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares).

¡Eso es todo!


##### Bonus: Imagen Pre-Instalada
>Hay una forma alternativa de tener Gamestarter, puedes escribir en una tarjeta SD una imagen pre-instalada de OpenELEC con la instalación ya hecha utilizando [USB Image Tool](http://www.alexpage.de/usb-image-tool/):

>https://goo.gl/l9X3rC

![screenshot-kodi](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-kodi-b.png)

>Incluye algunos extras como una splash screen personalizada y acceso directo de los addons en la pantalla de inicio.

>¡¡Es grabar y a jugar!!


***


### Ajustes Post-instalación:

Una vez que la instalación esta completa hay varias maneras de lanzar RetroArch. La más fácil es usando el addon instalado en "Addons de programas" llamado "Gamestarter: RetroArch".

![screenshot-addons](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-addons.png)

La primera vez que inicies RetroArch recomiendo que actualices todo lo posible (Settings menu> Online Updates), asi podrás crear tus propias listas en el menu, lanzar juegos, seleccionar distintos cores para cada emulador, usar wallpapers dinámicos, boxarts, actualizar los cores... todo como en la distro [Lakka](http://www.lakka.tv/)!!

![screenshot-retroarch-](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-retroarch.gif)

En lugar de usar el addon, tambien puedes [asignarle a un botón del mando de la TV](http://kodi.wiki/view/HOW-TO:Modify_keymaps) la siguiente acción:
```
XBMC.System.Exec("/storage/emulators/scripts/gamestarter.sh retroarch")
```

Otra manera de lanzar juegos con RetroArch, y la única manera de lanzar los juegos de Amiga y GameMaker Pi, es usando el addon Advanced Launcher, situado en "Addons de Programas"


![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-context.png)

Hay una lista de emuladores como ejemplo con algunos roms gratuitos incluidos. Puedes editar la lista, escanear para buscar tus roms, cambiar los cores de los emuladores... todo usando el menu contextual.


![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-edit.png)


Finalmente, también puedes usar el addon [IARL](https://github.com/zach-morris/plugin.program.iarl/), lanza juegos que están almancenados en Internet Archive.

![Screen #2](https://raw.githubusercontent.com/zach-morris/plugin.program.iarl/master/support/media/screen2.jpg)

Más info: [IARL](https://github.com/zach-morris/plugin.program.iarl/)


### Emulación de Amiga:

Para emular Amiga se usa la versión para Pi del emulador UAE4ARM, de momento no se puede lanzar este emulador a su menu/GUI, pero puedes lanzar directamente los juegos desde kodi con Advanced Launcher, que deben estar en formato ".adf". Todos los archivos de juegos multi-disco tienen que llamarse igual añadiendo al final "_Disk1.adf", "_Disk2.adf"...:
> name of the game_Disk1.adf

> name of the game_Disk2.adf

> name of the game_Disk3.adf

> ...

Necesitarás un ratón para iniciar algunos juegos y un teclado para salir, salvar partidas, etc...

También puede salir mediante ssh:
```
pkill uae4arm
```
> Hay en desarrollo una versión para RetroArch de este emulador, cuando se publique la idea es cambiarnos a él.


### GameMaker Pi:

Como extra, se descargarán e instalarán 3 juegos gratuitos de GameMaker. Para hacerlos funcionar en OpenELEC hay que hacer un pequeño hack en las bibliotecas del sistema. Si notas algun pequeño fallo, relacionado con el downgrade de la versión de CURL, puedes desactivar/activar el hack usando un addon que encontrarás en Addons de Programas llamado "hacklib".

Estos juegos sólo funcionan con el mando de Xbox :(

También puedes salir mediante ssh:
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

v0.0.2:
- IARL
- Launch "adf" Amiga roms

v0.0.1: 
- Initial Release


### Bugs, fallos, errores...:
- En OE 7 beta los juegos de GameMaker Pi no tienen sonido.

Cualquier mejora, colaboración, corrección o comentario es bienvenido!!!


***



### Créditos:

- Addon original de RetroArch por Mezo:
 http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi

- RetroArch, UAE4ARM & EmulationStation compilados by Escalade:
http://openelec.tv/forum/124-raspberry-pi/80543-raspberry-pi2-3-openelec-7-0-kodi-16-0-retroarch

- Retroarch:
http://www.libretro.com/

- UAE4ARM:
https://www.raspberrypi.org/forums/viewtopic.php?t=110488

- AdvancedLauncher:
https://github.com/edwtjo/advanced-launcher

- Imágenes para AdvancedLauncher & emulationstation por by tronkyfran:
https://github.com/HerbFargus/es-theme-tronkyfran

- Internet Archive ROM Launcher by ZachMorris:
https://github.com/zach-morris/plugin.program.iarl

- GameMaker:
http://yoyogames.com/pi

- Hacklib:
http://forum.kodi.tv/showthread.php?pid=1481392#pid1481392



Venga!
