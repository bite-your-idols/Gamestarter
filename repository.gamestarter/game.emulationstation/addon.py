import xbmc
import xbmcaddon
import xbmcgui
import xbmcplugin
import os
import os.path
import urlparse

addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# miramos si hay alguna accion
args = urlparse.parse_qs(sys.argv[2][1:])
command = args['com'][0] if 'com' in args else 'EXEC_ADDON'
# log_debug('command = "{0}"'.format(command))

if command == 'DOWNLOAD_THEMES':
	xbmcgui.Dialog().ok("EmulationStation", "Downloading EmulationStation themes, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'EmulationStation [ADDON] :: Downloading EmulationStation themes.' $(date) >> /storage/.kodi/temp/emulationstation.log")
	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation/themes")

	os.system("echo 'Installing Carbon no-meta...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip https://github.com/RetroPie/es-theme-carbon-nometa/archive/master.zip")
	os.system("unzip -o //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip")
	
	os.system("echo 'Installing Carbon...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip https://github.com/RetroPie/es-theme-carbon/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip")

	os.system("echo 'Installing Pixel...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip https://github.com/RetroPie/es-theme-pixel/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip")

	os.system("echo 'Installing Turtle-pi...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip https://github.com/RetroPie/es-theme-turtle-pi/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip")

	os.system("echo 'Installing Canela...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip https://github.com/RetroPie/es-theme-simplified-static-canela/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip")

	os.system("echo 'Installing clean look...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip https://github.com/RetroPie/es-theme-clean-look/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip")

	os.system("echo 'Installing Tronkyfran...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip https://github.com/HerbFargus/es-theme-tronkyfran/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip")
	
	os.system("echo 'ES Themes Installed.'")

	os.system("echo 'EmulationStation [ADDON] :: EmulationStation Themes Installed.' >> /storage/.kodi/temp/emulationstation.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("EmulationStation", "EmulationStation themes downloaded. Select your favourite after launching EmulationStation.")


else:
	xbmc.executebuiltin('ActivateWindow(busydialog)')
	os.system("echo 'EmulationStation [ADDON] ::' $(date) > /storage/.kodi/temp/emulationstation.log")
	os.system("echo '============================================================' >> /storage/.kodi/temp/emulationstation.log")

	# project=str(os.popen('$(head -c 3 /etc/release)').read())

	# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
	if os.path.isdir(directory+"/emulationstation") == True: 
	 	os.system("echo 'EmulationStation [ADDON] :: Firts Run!' >> /storage/.kodi/temp/emulationstation.log")
	 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation")
	  	os.system("if [ ! -f /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ] ; then cp /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ; fi && rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg")
	 	os.system("cp -r /storage/.kodi/addons/game.emulationstation/emulationstation/* /storage/.kodi/userdata/addon_data/game.emulationstation")
	 	# os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
	 	os.system("if [ -L /storage/.config/emulationstation ] ; then rm /storage/.config/emulationstation ; fi && ln -s /storage/.kodi/userdata/addon_data/game.emulationstation /storage/.config/emulationstation")
	 	os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
	 	# os.system("touch /storage/.kodi/addons/game.emulationstation/installed && echo 'EmulationStation [ADDON] :: Firts Run! - ' $(date) >> /storage/.kodi/addons/game.emulationstation/installed")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-RPi")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-Gen")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/addon.sh && chmod a+x /storage/.kodi/addons/game.retroarch/addon.start && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-RPi && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-Gen")
	 	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")
	 	#renombrar la carpeta de libs para el device
	 	os.system("PROJECT=$(head -c 3 /etc/release) && if [[ $PROJECT == 'Gen' ]] ; then mv -n /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib ; else mv -n /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib ; fi && echo 'EmulationStation [ADDON] :: '$PROJECT >> /storage/.kodi/temp/emulationstation.log")
	 	# if project in "Pi":
	 	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib")
	 	# else:
	 	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib")

	# Finalmente lanzamos Emulationstation
	# else:
	askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
	if askConfirmation == "true":
		resultado = xbmcgui.Dialog().yesno("EmulationStation", "Exit Kodi and run EmulationStation?");
		if resultado:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/fanart.jpg")')  
			os.system("echo 'EmulationStation [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/emulationstation.log") 
			os.system("sh "+directory+"/addon.sh emulationstation")
		else:
			xbmc.executebuiltin('Dialog.Close(busydialog)')
			os.system("echo 'EmulationStation [ADDON] :: Abort launch.' >> /storage/.kodi/temp/emulationstation.log")
	else:
		xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/fanart.jpg")') 
		os.system("echo 'EmulationStation [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/emulationstation.log") 
		os.system("sh "+directory+"/addon.sh emulationstation")
