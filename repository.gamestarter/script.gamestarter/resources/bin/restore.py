import os
import os.path
import xbmcgui
# import sys

xbmcgui.Dialog().ok("Gamestarter", "To restore your configuration backup, please make sure you have your gamestarter-backup.tar.gz file in /storage/backup.")

# script_file = os.path.realpath(__file__)
# directory = os.path.dirname(script_file)

os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/backup.sh restore &> /storage/.kodi/temp/gamestarter.log")

#xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")
