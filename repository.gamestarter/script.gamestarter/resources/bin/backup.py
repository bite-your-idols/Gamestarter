import os
import os.path
import xbmcgui
# import sys

xbmcgui.Dialog().ok("Gamestarter", "You are going to backup your RetroArch, EmulationStation and Advanced(Emulator)Launcher configuration files to /storage/backup.")

#script_file = os.path.realpath(__file__)
#directory = os.path.dirname(script_file)

os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/backup.sh &> /storage/.kodi/temp/gamestarter.log")

#xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")
