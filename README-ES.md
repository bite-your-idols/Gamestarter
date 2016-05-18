# Gamestarter Pi
![gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/)/Spanish

Seguir en [twitter](https://twitter.com/gamestarterpi).


## Retrogamig addon para Kodi en Raspberry Pi
Si usas la Raspberry Pi como media center corriendo Kodi en [LibreELEC](https://libreelec.tv/) o [OpenELEC](http://openelec.tv/), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, aqui tienes la solución definitiva.

Con este addon continuarás teniendo tu propia versión de Kodi pero vitaminada incluyendo:
- Multi-emulador RetroArch (actualizado a la versión v1.3.4) con todos los cores y pre-configuraciones para la mayoria de mandos,
- AdvancedLauncher con un listado inicial de emuladores y una apariencia custom,
- Menu de emuladores o frontend EmulationStation,
- emulador de Amiga UAE4ARM Pi incluido en Advanced Launcher y EmulationStation,
- algunos roms gratuitos de muestra.

También tendrás la opción de instalar con un click:
- 3 juegos de GameMaker Pi incluyendo el clásico moderno "Maldita Castilla",
- addon Internet Archive ROM Launcher para lanzar juegos desde la "nube".



## Instrucciones de instalación

Descarga la última versión del addon desde la [Página de Releases](https://github.com/bite-your-idols/gamestarter/releases/download/2.0.0/script.gamestarter-v2.0.0.zip), copialo en tu Raspberry y selecciona "instalar desde zip" en el menu Ajustes>addons. La primera vez que inicies el addon se relaizaran unos ajustes iniciales. Después solo tendrás que copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) y reiniciar.

>Antes de la instalación recomiendo hacer un backup de tu sistema o hacer una imagen de tu tarjeta con [USB Image Tool](http://www.alexpage.de/usb-image-tool/).
>Probado en OpenELEC 6, OpenELEC 7 beta y LibreELEC 7 en una Raspberry Pi 2/3 model B y todo funciona bien. También recomiendo leer todo este texto antes de instalar para saber de que va el tema.

![screenshot-addon](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-gamestarter.png)


##### Ajustes del Addon
En ajustes del addon podrás elegir que frontend quieres usar por defecto cada vez que inicies el addon entre RetroArch y EmulationStation.
Desde aqui también puedes instalar el addon Internet Archive ROM launcher y los juegos de GameMaker Pi. Más opciones en camino...

![screenshot-addon-settings](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-gamestarter-settings-2.png)


.


##### Imagen Pre-Instalada
>Puedes descargar y escribir en una tarjeta SD [esta imagen pre-instalada](https://github.com/bite-your-idols/gamestarter/releases/download/v0.X.X/Gamestarter-0.0.2-OpenELEC-RPi2.arm-6.0.3.zip) de OpenELEC con la instalación ya hecha utilizando [USB Image Tool](http://www.alexpage.de/usb-image-tool/). Incluye algunos extras como una splash screen personalizada y acceso directo de los addons en la pantalla de inicio. 
>Después de iniciar la imagen grabada puedes expandir tu partición "storage" para aprovechar toda tu tarjeta de memoria siguiendo [este truco](forum.kodi.tv/showthread.php?tid=230353&pid=2166080#pid2166080).

>Esta imagen está basada en versiones antiguas de Gamestarter y OpenELEC y no voy a continuar actualizandola, la instalaciónd el addon es muy simple y si estas buscando una imagen pre-configurada para emuladores existen otras alternativas.

.


## Frontends

#### RetroArch:

La forma más sencilla y rápida de usar emuladores es con [Retroarch](http://www.libretro.com/). 
La primera vez que inicies RetroArch recomiendo que actualices todo lo posible (Settings menu> Online Updates), asi podrás crear tus propias listas en el menu, lanzar juegos, seleccionar distintos cores para cada emulador, usar wallpapers dinámicos, boxarts, actualizar los cores... todo como en la distro [Lakka](http://www.lakka.tv/)!!


![screenshot-retroarch](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-retroarch.gif)


Puedes crear un acceso directo del menu en tu skin o [asignarle a un botón del mando de la TV](http://kodi.wiki/view/HOW-TO:Modify_keymaps) la siguiente acción:
```
XBMC.System.Exec("/storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh retroarch")
```


.

#### Advanced Launcher:
La mejor forma de integrar tu colección de juegos en Kodi y lanzar juegos con RetroArch, los juegos de Amiga y GameMaker Pi, es usando el addon [AdvancedLauncher](https://github.com/edwtjo/advanced-launcher), situado en "Addons de Programas".

![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-context.png)

Hay una lista de emuladores como ejemplo con algunos roms gratuitos incluidos. Puedes editar la lista, escanear para buscar tus roms, cambiar los cores de los emuladores... todo usando el menu contextual.

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-edit.png)

Tambien hay creada una categoría llamada "Frontend" desde la que se pueden lanzar RetroArch y EmulationStation.
![screenshot-advlauncher-frontends](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-frontends.png)


.

#### Emulationstation:
Finalmente también puedes utilizar el frontened [EmulationStation](https://github.com/Herdinger/EmulationStation).
Puedes personalizar la lista de emuladores editando el archivo /storage/emulators/emulationstation/es_systems.cfg
![screenshot-emulationstation](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-emulationstation.png)


En lugar de usar el addon, tambien puedes [asignarle a un botón del mando de la TV](http://kodi.wiki/view/HOW-TO:Modify_keymaps) la siguiente acción:
```
XBMC.System.Exec("/storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh emulationstation")
```

>Este frontend no funciona en OE6-

.

## Bonus

### Emulación de Amiga:

Para emular Amiga se usa la versión para Pi del emulador [UAE4ARM Pi](https://www.raspberrypi.org/forums/viewtopic.php?t=110488), de momento no se puede lanzar este emulador a su menu/GUI, pero puedes lanzar directamente los juegos desde kodi con Advanced Launcher y EmulationStation, que deben estar en formato ".adf". Todos los archivos de juegos multi-disco tienen que llamarse igual añadiendo al final "_Disk1.adf", "_Disk2.adf"...:

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

### GameMaker Pi:

Como extra, tienes la opcion de instalar 3 juegos gratuitos de [GameMaker Team](http://yoyogames.com/pi). Para hacerlos funcionar en OpenELEC hay que hacer un pequeño [hack](http://forum.kodi.tv/showthread.php?pid=1481392#pid1481392) en las bibliotecas del sistema. Si notas algun pequeño fallo, relacionado con el downgrade de la versión de CURL, puedes desactivar/activar el hack usando un addon que encontrarás en "Addons de Programas" llamado "hacklib".

![screenshot-gamemaker](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-gamemaker.png)

También puedes salir mediante ssh:
```
pkill MalditaCastilla
pkill SuperCrateBox
pkill TheyNeedToBeFed
```

> Estos juegos sólo funcionan con el mando de Xbox :(

> Estos juegos tienen problemas de sonido en OE7+.

.

#### Internet Archive ROM Launcher:

Finalmente, también puedes instalar el el addon [IARL](https://github.com/zach-morris/plugin.program.iarl/), lanza juegos que están almancenados en Internet Archive.

![screenshot-iarl](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-iarl.jpg)


.






## Créditos

- Original RetroArch addon by [Mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)

- RetroArch, UAE4ARM & EmulationStation compiled by [Escalade](http://openelec.tv/forum/124-raspberry-pi/80543-raspberry-pi2-3-openelec-7-0-kodi-16-0-retroarch)

- AdvancedLauncher "skin" images by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
