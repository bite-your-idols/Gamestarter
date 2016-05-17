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
 	xbmcgui.Dialog().ok(addonname, "This is the first time you run Gamestarter. We are going to make a first-time-setup, please do not switch off your Raspberry Pi until process is finished.")
 	os.system("sh "+directory+"/resources/bin/install.sh")
 	xbmcgui.Dialog().ok(addonname, "Done. Copy your roms & system bios and enjoy!")

# las siguientes veces directamente lanzariamos RetroArch o Emulationstation
else:
	frontend = xbmcplugin.getSetting(int(sys.argv[1]),'frontend')
	resultado = xbmcgui.Dialog().yesno("Gamestarter", "Exit Kodi and run "+frontend+"?");
	if resultado:
		if frontend=="EmulationStation":
			os.system(directory+"/resources/bin/gamestarter.sh emulationstation")
		else:
			os.system(directory+"/resources/bin/gamestarter.sh retroarch")




# import sys
# import xbmcgui
# import xbmcplugin

# addon_handle = int(sys.argv[1])

# xbmcplugin.setContent(addon_handle, 'movies')

# url = 'http://localhost/some_video.mkv'
# li = xbmcgui.ListItem('My First Video!', iconImage='DefaultVideo.png')
# xbmcplugin.addDirectoryItem(handle=addon_handle, url=url, listitem=li)

# xbmcplugin.endOfDirectory(addon_handle)

# # http://kodi.wiki/view/Audio/video_add-on_tutorial
