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
os.system("echo 'PPSSPP [ADDON] ::' $(date) > /storage/.kodi/temp/ppsspp.log")
os.system("echo '============================================================' >> /storage/.kodi/temp/ppsspp.log")

# project=str(os.popen('$(head -c 3 /etc/release)').read())

# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
# if os.path.isdir(directory+"/emulationstation") == True: 
#  	os.system("echo 'EmulationStation [ADDON] :: Firts Run!' >> /storage/.kodi/temp/emulationstation.log")
#  	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation")
#   	os.system("if [ ! -f /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ] ; then cp /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ; fi && rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg")
#  	os.system("cp -r /storage/.kodi/addons/game.emulationstation/emulationstation/* /storage/.kodi/userdata/addon_data/game.emulationstation")
#  	# os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
#  	os.system("if [ ! -L /storage/.config/emulationstation ] ; then ln -s /storage/.kodi/userdata/addon_data/game.emulationstation /storage/.config/emulationstation ; fi")
#  	os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
#  	# os.system("touch /storage/.kodi/addons/game.emulationstation/installed && echo 'EmulationStation [ADDON] :: Firts Run! - ' $(date) >> /storage/.kodi/addons/game.emulationstation/installed")
#  	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-RPi")
#  	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-Gen")
#  	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/addon.sh && chmod a+x /storage/.kodi/addons/game.retroarch/addon.start && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-RPi && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-Gen")
#  	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")
#  	#renombrar la carpeta de libs para el device
#  	os.system("PROJECT=$(head -c 3 /etc/release) && if [[ $PROJECT == 'Gen' ]] ; then mv -n /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib ; else mv -n /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib ; fi && echo 'EmulationStation [ADDON] :: '$PROJECT >> /storage/.kodi/temp/emulationstation.log")
#  	# if project in "Pi":
#  	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib")
#  	# else:
#  	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib")

os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.ppsspp")
os.system("if [ -L /storage/.config/ppsspp ] ; then rm /storage/.config/ppsspp ; fi && ln -s /storage/.kodi/userdata/addon_data/game.ppsspp /storage/.config/ppsspp")

os.system("chmod a+x /storage/.kodi/addons/game.ppsspp/addon.sh")
os.system("chmod a+x /storage/.kodi/addons/game.ppsspp/addon.start")
os.system("chmod a+x /storage/.kodi/addons/game.ppsspp/game.ppsspp")

# Finalmente lanzamos DraStic
# else:
askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
if askConfirmation == "true":
	resultado = xbmcgui.Dialog().yesno("PPSSPP", "Exit Kodi and run PPSSPP?");
	if resultado:
		xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.ppsspp/fanart.jpg")')  
		xbmc.executebuiltin('ActivateWindow(busydialog)')
		os.system("echo 'PPSSPP [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/ppsspp.log") 
		os.system("sh "+directory+"/addon.sh gui")
	else:
		# xbmc.executebuiltin('Dialog.Close(busydialog)')
		os.system("echo 'PPSSPP [ADDON] :: Abort launch.' >> /storage/.kodi/temp/ppsspp.log")
else:
	xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.ppsspp/fanart.jpg")') 
	xbmc.executebuiltin('ActivateWindow(busydialog)')
	os.system("echo 'PPSSPP [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/ppsspp.log") 
	os.system("sh "+directory+"/addon.sh gui")

# xbmcgui.Dialog().ok(addonname, "You need to use a frontend like EmulationStation or Advanced Emulator Launcher to run this emulator passing to it a rom file.")