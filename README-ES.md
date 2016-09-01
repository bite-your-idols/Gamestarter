# Gamestarter Pi
![gamestarter-logo](https://github.com/bite-your-idols/gamestarter/raw/master/assets/gamestarter-logo-dark.jpg)

[English](https://github.com/bite-your-idols/gamestarter/)/Spanish



## Retrogamig addon para Kodi en Raspberry Pi
Si usas la Raspberry Pi como media center corriendo Kodi en [LibreELEC](https://libreelec.tv/) o [OpenELEC](http://openelec.tv/), te gusta jugar a juegos retro y quieres lanzarlos como haces con tus pelis o series sin tener que estar cambiado de tarjeta, ni tener arranque dual ni nada de eso, aqui tienes la solución definitiva.

Con este addon continuarás teniendo tu propia versión de Kodi pero vitaminada incluyendo:
- Multi-emulador RetroArch con todos los cores y pre-configuraciones para la mayoria de mandos,
- AdvancedLauncher con un listado inicial de emuladores y una apariencia custom,
- emulador de Amiga UAE4ARM Pi incluido en Advanced Launcher,
- algunos roms gratuitos de muestra.

También tendrás la opción de instalar con un click:
- frontend Emulationstation para gestionar tu colección de juegos.
- 3 juegos de GameMaker Pi incluyendo el clásico moderno "Maldita Castilla",
- addon Internet Archive ROM Launcher para lanzar juegos desde la "nube".



## Instrucciones de instalación

Descarga la última versión del addon desde la [Página de Releases](https://github.com/bite-your-idols/Gamestarter-Pi/releases/latest), copialo en tu Raspberry y selecciona "instalar desde zip" en el menu Ajustes>addons. La primera vez que inicies el addon se relaizaran unos ajustes iniciales. Después solo tendrás que copiar tu [roms y bios](https://github.com/libretro/Lakka/wiki/ROMs-and-BIOSes) en la carpeta /storage/emulators/ usando ftp o [samba](http://wiki.openelec.tv/index.php/Accessing_Samba_Shares) y reiniciar.

Después puedes abrir la ventana de ajustes del addon para instalar otras opciones como el addon Internet Archive ROM Launcher, el frontend EmulationStation y más.

![screenshot-addon](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-gamestarter.png)


##### Ajustes del Addon
En ajustes del addon podrás elegir que frontend quieres usar por defecto cada vez que inicies el addon entre RetroArch y EmulationStation.
Desde aqui también puedes instalar el addon Internet Archive ROM launcher y los juegos de GameMaker Pi. Más opciones en camino...

![screenshot-addon-settings](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-gamestarter-settings-2.png)



.


## Frontends

#### RetroArch:

La forma más sencilla y rápida de usar emuladores es con [Retroarch](http://www.libretro.com/).  Se iniciará por defecto cada vez que lances el addon después del setup de la primera vez. También podrás acceder a él cuando estes jugando a un juego anque lo hayas lanzado desde kodi o emulationstation.

La primera vez que inicies RetroArch recomiendo que actualices (Settings menu> Online Updates) las bases de datos, descargues boxarts/thumbnails y asi podrás crear tus propias listas en el menu... todo como en la distro [Lakka](http://www.lakka.tv/)!!


![screenshot-retroarch](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-retroarch.gif)


.

#### Advanced Launcher:
La mejor forma de integrar y lanzar tu colección de juegos retro es usando el addon [AdvancedLauncher](https://github.com/edwtjo/advanced-launcher), situado en "Addons de Programas".

![screenshot-advlauncher-context](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-context.png)

Hay una lista de emuladores como ejemplo con algunos roms gratuitos incluidos. Puedes editar la lista, escanear para buscar tus roms, cambiar los cores de los emuladores... todo usando el menu contextual.

![screenshot-advlauncher-edit](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-advlauncher-edit.png)


![screenshot-advlauncher-edit](https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/screenshot-gamestarter-advlauncher-mimic.png)
Ejemplo de la "biblioteca de juegos" de Kodi con [Mimic Skin](http://kodi.wiki/view/Add-on:mimic).
.

----


## Bonus

#### Emulationstation:
Desde el menú de ajustes del addon también puedes instalar el frontened [EmulationStation](https://github.com/Herdinger/EmulationStation).
Puedes personalizar la lista de emuladores editando el archivo /storage/emulators/emulationstation/es_systems.cfg
![screenshot-emulationstation](https://github.com/bite-your-idols/gamestarter/raw/master/assets/screenshot-emulationstation.png)


>Este frontend no funciona en OE6-

.


#### Emulación de Amiga:

Para emular Amiga existen 2 opciones seleccionables desde los ajustes del addon. Puedes usar el core de libretro experimental o la versión para Pi del emulador [UAE4ARM Pi](https://www.raspberrypi.org/forums/viewtopic.php?t=110488), de momento no se puede lanzar este emulador a su menu/GUI, pero puedes lanzar directamente los juegos desde kodi con Advanced Launcher y EmulationStation, que deben estar en formato ".adf". Todos los archivos de juegos multi-disco tienen que llamarse igual añadiendo al final "_Disk1.adf", "_Disk2.adf"...:

> name of the game_Disk1.adf

> name of the game_Disk2.adf

> name of the game_Disk3.adf

> ...

Si usas la version no-libretro necesitarás un ratón para iniciar algunos juegos y un teclado para salir, salvar partidas, etc...


.

#### GameMaker Pi:

Como extra, tienes la opcion de instalar 3 juegos gratuitos de [GameMaker Team](http://yoyogames.com/pi) desde el menu de ajustes del addon. 

> Estos juegos sólo funcionan con el mando de Xbox :(

> Estos juegos tienen problemas de sonido en OE7+.

Mas info [aquí](https://github.com/bite-your-idols/gamemaker-pi).

.

#### Internet Archive ROM Launcher:

Finalmente, también puedes instalar el el addon [IARL](https://github.com/zach-morris/plugin.program.iarl/), lanza juegos que están almancenados en Internet Archive.


.



## Créditos

- Original RetroArch addon by [Mezo](http://openelec.tv/forum/128-addons/72972-retroarch-addon-arm-rpi)

- UAE4ARM & EmulationStation compiled by [Escalade](http://openelec.tv/forum/124-raspberry-pi/80543-raspberry-pi2-3-openelec-7-0-kodi-16-0-retroarch)

- AdvancedLauncher "skin" images by [tronkyfran](https://github.com/HerbFargus/es-theme-tronkyfran)
