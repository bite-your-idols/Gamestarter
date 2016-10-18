import os
import os.path
import xbmcgui
# import sys

xbmcgui.Dialog().ok("Gamestarter", "Restoring your configuration backup, please wait...")

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/backup.sh restore &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")

#xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")
