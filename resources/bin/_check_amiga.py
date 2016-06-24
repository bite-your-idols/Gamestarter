import xbmcaddon
import xbmcgui

addon = xbmcaddon.Addon('script.gamestarter')
addonname   = addon.getAddonInfo('name')

amiga = addon.getSetting('amiga')

# xbmcgui.Dialog().ok(addonname, amiga)

text_file = open("/storage/.kodi/addons/script.gamestarter/resources/bin/amiga.txt", "w")
text_file.write(amiga)
text_file.close()

# print(amiga)
