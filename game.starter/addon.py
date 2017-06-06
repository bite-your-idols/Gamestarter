import xbmcaddon
import xbmcgui
import xbmcplugin
import os
import os.path

addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)


frontend = xbmcplugin.getSetting(int(sys.argv[1]),'frontend')
askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')

# xbmcgui.Dialog().yesno("Gamestarter",askConfirmation);

if askConfirmation == "true":
	resultado = xbmcgui.Dialog().yesno("Gamestarter", "Exit Kodi and run "+frontend+"?");
	if resultado:
		xbmc.executebuiltin('ShowPicture(directory+"/fanart.png")')  
		if frontend=="EmulationStation":
			os.system("sh "+directory+"/gamestarter.sh emulationstation")
		else:
			os.system("sh "+directory+"/gamestarter.sh retroarch")
else:
	xbmc.executebuiltin('ShowPicture(directory+"/fanart.png")') 
	if frontend=="EmulationStation": 
		os.system("sh "+directory+"/gamestarter.sh emulationstation")
	else:
		os.system("sh "+directory+"/gamestarter.sh retroarch")