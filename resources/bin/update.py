#!/usr/bin/python

import os
import os.path
import xbmc
import xbmcgui
import xbmcaddon

# addon       = xbmcaddon.Addon()
# addonversion= addon.getAddonInfo('version')

addon="script.gamestarter"
addonversion= addon.getAddonInfo('version')
# addonversion="2.0.1"

xbmcgui.Dialog().ok("Gamestarter", "Checking for updates, please wait.")


# script_file = os.path.realpath(__file__)
# directory = os.path.dirname(script_file)


# os.system("sh  /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh")
os.system("wget --no-check-certificate -O /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/resources/bin/update.sh && sh /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh addonversion")
# xbmcgui.Dialog().ok("Gamestarter", "Gamestarter is up to date.")
