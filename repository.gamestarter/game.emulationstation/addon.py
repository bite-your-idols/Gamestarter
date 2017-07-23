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
os.system("echo 'EmulationStation [ADDON] ::' $(date) > /storage/.kodi/temp/retroarch.log")
os.system("echo '============================================================' >> /storage/.kodi/temp/retroarch.log")

# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
if os.path.isfile(directory+"/installed") == False: 
 	os.system("echo 'EmulationStation [ADDON] :: Firts Run! >> /storage/.kodi/temp/retroarch.log")
 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation")
 	os.system("mv /storage/.kodi/addons/game.emulationstation/emulationstation/* /storage/.kodi/userdata/addon_data/game.emulationstation")
 	os.system("if [ ! -L /storage/.config/emulationstation ] ; then ln -s /storage/.kodi/userdata/addon_data/game.emulationstation /storage/.config/emulationstation ; fi")
 	os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
 	os.system("touch /storage/.kodi/addons/game.emulationstation/installed && echo 'EmulationStation [ADDON] :: Firts Run! - ' $(date) >> /storage/.kodi/addons/game.emulationstation/installed")
 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation")
 	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")

# Ahora hay que coprobar que retroarch esta instalado
if os.path.isfile("/storage/.kodi/addons/game.retroarch//installed") == False: 
	os.system("echo 'EmulationStation [ADDON] :: RetroArch not detected. Stop.' >> /storage/.kodi/temp/retroarch.log")
	xbmc.executebuiltin('Notification(EmulationStation, You need to install and run RetroArch for a first time before.,5000,'+directory+'/icon.jpg)')
	xbmc.executebuiltin('Dialog.Close(busydialog)')

else:
	# Despues y las siguientes veces comprobamos que haya cores
	# total=os.popen('num=0 && for filename in /storage/.kodi/addons/game.libretro.*; do core="${filename##*.}" && echo "EmulationStation [ADDON] :: Core found: "$core >> /storage/.kodi/temp/retroarch.log && num=$((num+1)) ; done && echo "EmulationStation [ADDON] :: Total cores: "$num >> /storage/.kodi/temp/retroarch.log && echo "$num $core"').read()
	total=os.popen('num=0 && for filename in /storage/.kodi/addons/game.libretro.*; do core="${filename##*.}" && if [ ! -L /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ] ; then ln -s /storage/.kodi/addons/game.libretro.$core/game.libretro.$core.so /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ; fi && echo "EmulationStation [ADDON] :: Core found: "$core >> /storage/.kodi/temp/retroarch.log && num=$((num+1)) ; done && echo "EmulationStation [ADDON] :: Total cores: "$num >> /storage/.kodi/temp/retroarch.log && echo "$num $core"').read()

	# if total == '0': # no se porque cuando no hay cores pone un asterisco
	if "*" in total: 
		os.system("echo 'EmulationStation [ADDON] :: No cores detected. Stop.' >> /storage/.kodi/temp/retroarch.log")
		xbmc.executebuiltin('Notification(EmulationStation, You need to download any libretro core before launching retroarch.,5000,'+directory+'/icon.jpg)')
		xbmc.executebuiltin('Dialog.Close(busydialog)')

	# Finalmente lanzamos Emulationstation
	else:
		askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
		if askConfirmation == "true":
			resultado = xbmcgui.Dialog().yesno("Emulationstation", "Exit Kodi and run Emulationstation?");
			if resultado:
				xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/resources/fanart.jpg")')  
				os.system("sh /storage/.kodi/addons/game.retroarch/addon.sh emulationstation")
				# os.system("sh "+directory+"/addon.sh fceumm '/storage/emulators/roms/nes/Super Mario Bros. (Europe) (Rev A).zip'")
			else:
				xbmc.executebuiltin('Dialog.Close(busydialog)')
		else:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/resources/fanart.jpg")') 
			os.system("sh /storage/.kodi/addons/game.retroarch/addon.sh emulationstation")
