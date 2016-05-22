

import os
import os.path

import xbmcgui
import os


xbmcgui.Dialog().ok("Gamestarter", "Checking for updates, please wait.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)


os.system("sh  /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh")

xbmcgui.Dialog().ok(addonname, "Gamestarter Updated.")

