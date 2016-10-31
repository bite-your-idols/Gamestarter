import xbmcaddon
import xbmcgui
import xbmcplugin
import os
import os.path

addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
if os.path.isfile(directory+"/resources/bin/installed") == False: 
 	xbmcgui.Dialog().ok(addonname, "This is the first time you run Gamestarter. We are going to make a first-time-setup, please do not switch off your Raspberry Pi.")
 	# os.system("sh "+directory+"/resources/bin/install.sh "+directory)
 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/script.gamestarter && sh "+directory+"/resources/bin/install.sh "+directory+" &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")
 	xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")

# las siguientes veces directamente lanzariamos RetroArch o Emulationstation
else:
	frontend = xbmcplugin.getSetting(int(sys.argv[1]),'frontend')
	askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')

	# xbmcgui.Dialog().yesno("Gamestarter",askConfirmation);

	if askConfirmation == "true":
		resultado = xbmcgui.Dialog().yesno("Gamestarter", "Exit Kodi and run "+frontend+"?");
		if resultado:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/userdata/addon_data/script.gamestarter/frontend-assets/gamestarter_fanart.png")') 
			if frontend=="EmulationStation":
				os.system(directory+"/resources/bin/gamestarter.sh emulationstation")
			else:
				os.system(directory+"/resources/bin/gamestarter.sh retroarch")
	else:
		xbmc.executebuiltin('ShowPicture("/storage/.kodi/userdata/addon_data/script.gamestarter/frontend-assets/gamestarter_fanart.png")') 
		if frontend=="EmulationStation": 
			os.system(directory+"/resources/bin/gamestarter.sh emulationstation")
		else:
			os.system(directory+"/resources/bin/gamestarter.sh retroarch")




# WIP 
# import sys
# import xbmcgui
# import xbmcplugin

# addon_handle = int(sys.argv[1])

# xbmcplugin.setContent(addon_handle, 'movies')

# url1 = 'System.Exec(/storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh retroarch)'
# li1 = xbmcgui.ListItem('RetroArch', iconImage='/storage/.kodi/addons/script.gamestarter/resources/media/retroarch.jpg')
# # li.setArt({'fanart': my_addon.getAddonInfo('fanart')})
# xbmcplugin.addDirectoryItem(handle=addon_handle, url=url1, listitem=li1)

# url2 = 'System.Exec(/storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh emulationstation)'
# li2 = xbmcgui.ListItem('EmulationStation', iconImage='/storage/.kodi/addons/script.gamestarter/resources/media/emulationstation.jpg')
# # li.setArt({'fanart': my_addon.getAddonInfo('fanart')})
# xbmcplugin.addDirectoryItem(handle=addon_handle, url=url2, listitem=li2)

# xbmcplugin.endOfDirectory(addon_handle)

# # http://kodi.wiki/view/Audio/video_add-on_tutorial
