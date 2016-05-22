import os
import os.path
import xbmcgui
import xbmcaddon

addon       = xbmcaddon.Addon()
addonversion= addon.getAddonInfo('version')

xbmcgui.Dialog().ok("Gamestarter", "Checking for updates, please wait.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)


# os.system("sh  /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh")
os.system("wget --no-check-certificate -O /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/resources/bin/update.sh && sh /storage/.kodi/addons/script.gamestarter/resources/bin/update-gamestarter.sh addonversion")
xbmcgui.Dialog().ok(addonname, "Gamestarter Updated.")

