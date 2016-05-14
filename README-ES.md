# Gamestarter

![gamestarter-logo](https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/assets/gamestarter-logo.jpg)

[English](https://github.com/bite-your-idols/gamestarter-openelec/)/Spanish

Sígueme en [twitter](https://twitter.com/bite_your_idols).


## Sobre el proyecto
Si usas la Raspberry Pi como media center corriendo Kodi en [OpenELEC](http://openelec.tv/get-openelec), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, aqui tienes la solución definitiva.

Después de la instalación continuarás teniendo tu propia versión de OpenELEC pero vitaminada incluyendo:
- multi-emulador RetroArch (actulaizo a la versión v1.3.4) con un addon para lanzarlo y pre-configuraciones para la mayoria de mandos,
- addon AdvancedLauncher con un listado inicial de emuladores y una apariencia custom,
- emulador de Amiga UAE4ARM Pi,
- addon Internet Archive ROM Launcher para lanzar juegos desde la "nube",
- 3 juegos de GameMaker Pi incluyendo el clásico moderno "Maldita Castilla",
- Menu de emuladores Emulationstation* (*sólo disponible en instalación por ssh y solo funciona en OE7),
- algunos roms gratuitos de muestra.


¡vamos allá!


## Instrucciones de instalación


Descarga el addon [Gamestarter installer](https://github.com/bite-your-idols/script.gamestarter.installer/archive/master.zip), copiarlo en tu Raspberry y seleccionar "instalar desde zip" en el menu Ajustes>addons. Deja que haga su trabajo durante menos de 5 minutos y te avisará cuando haya terminado. Solo tendrás que copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) y reiniciar.

¡Pan comido!

>Antes de la instalación recomiendo hacer un backup de tu sistema con [OpenELEC's Configuration Tool](http://wiki.openelec.tv/index.php/OpenELEC_Configuration_Addon) o hacer una imagen de tu tarjeta con [USB Image Tool](http://www.alexpage.de/usb-image-tool/).

>Como es un proyecto en desarrollo algunas cosas pueden no funcionar, no me hago responsable de los daños que puedan surgir, pero esta probado en OpenELEC 6.0.3/6.95.2 en una Raspberry Pi 2/3 model B y todo funciona bien. También recomiendo leer todo este texto antes de instalar para saber de que va el tema.



##### Método alternativo: instalación por ssh

Conéctate a tu Raspberry Pi via [ssh](http://wiki.openelec.tv/index.php/OpenELEC_FAQ#How_do_i_use_SSH.3F) y escribe (copia/pega):

```
wget --no-check-certificate -O /storage/installer-menu.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/installer-menu.sh && sh /storage/installer-menu.sh
```

Podrás elegir entre instalar la versión "standard" (la misma que la del addon instalador) y la version "advanced" que incluye la instalación opcional de Emulationstation (solo funciona en OE7) y los juegos de GameMaker Pi (no suenan en OE7) durante el proceso.

relájate y espera 5 minutos...


Al finalizar, deberías reiniciar tu sistema y copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares).

¡Eso es todo!

.

##### Bonus: Imagen Pre-Instalada
>Hay una forma alternativa de tener Gamestarter, puedes descargar y escribir en una tarjeta SD [esta imagen pre-instalada](https://goo.gl/l9X3rC) de OpenELEC con la instalación ya hecha utilizando [USB Image Tool](http://www.alexpage.de/usb-image-tool/).


![screenshot-kodi](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-kodi-b.png)

Incluye algunos extras como una splash screen personalizada y acceso directo de los addons en la pantalla de inicio.

¡¡Es grabar y a jugar!!

>Después de iniciar la imagen grabada puedes expandir tu partición "storage" para aprovechar toda tu tarjeta de memoria siguiendo [este truco](forum.kodi.tv/showthread.php?tid=230353&pid=2166080#pid2166080).

.


## Ajustes Post-instalación

#### RetroArch:

Una vez que la instalación esta completa hay varias maneras de lanzar RetroArch. La más fácil es usando el addon instalado en "Addons de programas" llamado "Gamestarter: RetroArch".

![screenshot-addons](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-addons.png)

La primera vez que inicies RetroArch recomiendo que actualices todo lo posible (Settings menu> Online Updates), asi podrás crear tus propias listas en el menu, lanzar juegos, seleccionar distintos cores para cada emulador, usar wallpapers dinámicos, boxarts, actualizar los cores... todo como en la distro [Lakka](http://www.lakka.tv/)!!

![screenshot-retroarch-](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-retroarch.gif)

***
###### Consejo:
En lugar de usar el addon, tambien puedes [asignarle a un botón del mando de la TV](http://kodi.wiki/view/HOW-TO:Modify_keymaps) la siguiente acción:
```
XBMC.System.Exec("/storage/emulators/scripts/gamestarter.sh retroarch")
```
***

.

#### AdvancedLauncher:
Otra manera de lanzar juegos con RetroArch, y la única manera de lanzar los juegos de Amiga y GameMaker Pi, es usando el addon Advanced Launcher, situado en "Addons de Programas"


![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-context.png)

Hay una lista de emuladores como ejemplo con algunos roms gratuitos incluidos. Puedes editar la lista, escanear para buscar tus roms, cambiar los cores de los emuladores... todo usando el menu contextual.


![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-advlauncher-edit.png)

.

#### Internet Archive ROM Launcher:

Finalmente, también puedes usar el addon [IARL](https://github.com/zach-morris/plugin.program.iarl/), lanza juegos que están almancenados en Internet Archive.

![Screen #2](https://raw.githubusercontent.com/zach-morris/plugin.program.iarl/master/support/media/screen2.jpg)

Más info: [IARL](https://github.com/zach-morris/plugin.program.iarl/wiki)

.

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


.

#### Emulationstation:
Si usas el método de instalación por ssh y elijes la opción "advanced" (2) tendrás el frontend Emulationstation. Puede ser lanzado utilizando su propio addon que esta situado en "Addons de Programas" > "Gamestarter: Emulationstation".
![screenshot-emulationstation-](https://github.com/bite-your-idols/gamestarter-openelec/raw/master/assets/screenshot-emulationstation.png)

Puedes personalizar la lista de emuladores editando el archivo /storage/emulators/emulationstation/es_systems.cfg

¡Este addon sólo funciona en OE7!

***
###### Consejo:
En lugar de usar el addon, tambien puedes [asignarle a un botón del mando de la TV](http://kodi.wiki/view/HOW-TO:Modify_keymaps) la siguiente acción:
```
XBMC.System.Exec("/storage/emulators/scripts/gamestarter.sh emulationstation")
```
***

.

### GameMaker Pi:

Como extra, se descargarán e instalarán 3 juegos gratuitos de GameMaker. Para hacerlos funcionar en OpenELEC hay que hacer un pequeño hack en las bibliotecas del sistema. Si notas algun pequeño fallo, relacionado con el downgrade de la versión de CURL, puedes desactivar/activar el hack usando un addon que encontrarás en "Addons de Programas" llamado "hacklib".

Estos juegos sólo funcionan con el mando de Xbox :(

También puedes salir mediante ssh:
```
pkill MalditaCastilla
pkill SuperCrateBox
pkill TheyNeedToBeFed
```


.


## Créditos

- [Original RetroArch addon](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi) by Mezo

- RetroArch, UAE4ARM & EmulationStation compiled by [Escalade](http://openelec.tv/forum/124-raspberry-pi/80543-raspberry-pi2-3-openelec-7-0-kodi-16-0-retroarch)

- [Retroarch](http://www.libretro.com/)

- [UAE4ARM Pi](https://www.raspberrypi.org/forums/viewtopic.php?t=110488) by Chips

- [AdvancedLauncher](https://github.com/edwtjo/advanced-launcher)

- AdvancedLauncher "skin" by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)

- [Internet Archive ROM Launcher](https://github.com/zach-morris/plugin.program.iarl) by ZachMorris

- [GameMaker Pi](http://yoyogames.com/pi)

- [Hacklib](http://forum.kodi.tv/showthread.php?pid=1481392#pid1481392) by Milhouse


.


Venga!
