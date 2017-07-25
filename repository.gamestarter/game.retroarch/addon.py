import xbmc
import xbmcaddon
import xbmcgui
import xbmcplugin
import os
import os.path

addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)
xbmc.executebuiltin('ActivateWindow(busydialog)')
os.system("echo 'RetroArch [ADDON] ::' $(date) > /storage/.kodi/temp/retroarch.log")
os.system("echo '============================================================' >> /storage/.kodi/temp/retroarch.log")

# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
if os.path.isdir(directory+"/retroarch") == True: 
 	os.system("echo 'RetroArch [ADDON] :: Firts Run!' >> /storage/.kodi/temp/retroarch.log")
 	os.system("mkdir -p /storage/emulators/roms && mkdir -p /storage/emulators/bios && mkdir -p /storage/emulators/saves")
 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.retroarch")
 	os.system("if [ ! -f /storage/.kodi/userdata/addon_data/game.retroarch/retroarch.cfg ] ; then cp /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg /storage/.kodi/userdata/addon_data/game.retroarch/retroarch.cfg ; fi && rm -rf /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg")
 	os.system("cp -r /storage/.kodi/addons/game.retroarch/retroarch/* /storage/.kodi/userdata/addon_data/game.retroarch")
 	os.system("rm -rf /storage/.kodi/addons/game.retroarch/retroarch")
	os.system("if [ ! -L /storage/.config/retroarch ] ; then ln -s /storage/.kodi/userdata/addon_data/game.retroarch /storage/.config/retroarch ; fi")
 	# os.system("touch /storage/.kodi/addons/game.retroarch/installed && echo $(cat /etc/release) >> /storage/.kodi/addons/game.retroarch/installed")
 	# os.system("echo $(date) >> /storage/.kodi/addons/game.retroarch/installed")
 	os.system("chmod a+x /storage/.kodi/addons/game.retroarch/addon.sh && chmod a+x /storage/.kodi/addons/game.retroarch/addon.start && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-RPi && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-Gen")
 	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")


# Despues y las siguientes veces comprobamos que haya cores,
# habrai que borrar los links y volver a crearlos por si has borrado los cores desde retrpolayer
retroplayer = xbmcplugin.getSetting(int(sys.argv[1]),'retroplayer')
if retroplayer == "true":
	os.system("echo 'RetroArch [ADDON] :: Cleaning Cores - RetroPlayer=True.' >> /storage/.kodi/temp/retroarch.log") 
	os.system("rm -rf /storage/.kodi/userdata/addon_data/game.retroarch/cores/")
	os.system("mkdir /storage/.kodi/userdata/addon_data/game.retroarch/cores/")

total=os.popen('num=0 && for filename in /storage/.kodi/addons/game.libretro.*; do core="${filename##*.}" && if [ ! -L /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ] ; then ln -s /storage/.kodi/addons/game.libretro.$core/game.libretro.$core.so /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ; fi && echo "RetroArch [ADDON] :: RetroPlayer core found: "$core >> /storage/.kodi/temp/retroarch.log && num=$((num+1)) ; done && echo "RetroArch [ADDON] :: Total RetroPlayer cores: "$num >> /storage/.kodi/temp/retroarch.log && echo "$num $core"').read()

# if total == '0': # no se porque cuando no hay cores pone un asterisco
if "*" in total and retroplayer == "true": 
	os.system("echo 'RetroArch [ADDON] :: No cores detected. You need to download any Libretro core before launching RetroArch or deactivate Use RetroPlayer cores in settings.' >> /storage/.kodi/temp/retroarch.log")
	# xbmc.executebuiltin('Notification(RetroArch, You need to download any libretro core before launching RetroArch, or deactivate "RetroPlayer cores only" option in settings.,5000,'+directory+'/icon.jpg)')
	xbmcgui.Dialog().ok("RetroArch", "You need to download any Libretro core using Kodi's RetroPlayer before launching RetroArch or you can deactivate 'Use RetroPlayer installed cores only' option in settings.")
	xbmc.executebuiltin('Dialog.Close(busydialog)')

# Finalmente lanzamos RetroArch
else:
	askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
	if askConfirmation == "true":
		resultado = xbmcgui.Dialog().yesno("RetroArch", "Exit Kodi and run RetroArch?");
		if resultado:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.retroarch/fanart.jpg")') 
			os.system("echo 'RetroArch [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/retroarch.log") 
			os.system("sh "+directory+"/addon.sh retroarch")
			# os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh retroarch")
			# os.system("sh "+directory+"/addon.sh fceumm '/storage/emulators/roms/nes/Super Mario Bros. (Europe) (Rev A).zip'")
		else:
			xbmc.executebuiltin('Dialog.Close(busydialog)')
			os.system("echo 'RetroArch [ADDON] :: Abort launch.' >> /storage/.kodi/temp/retroarch.log")
	else:
		xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.retroarch/fanart.jpg")') 
		os.system("echo 'RetroArch [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/retroarch.log")
		os.system("sh "+directory+"/addon.sh retroarch")