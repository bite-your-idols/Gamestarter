import os
import os.path
import xbmcgui
# import sys

xbmcgui.Dialog().ok("Gamestarter", "Making a  backup of your configuration files, please wait...")

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/backup.sh &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")

#xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")
