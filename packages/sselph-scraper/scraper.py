import os
import os.path
import xbmcgui
# import sys


# objetivo=str(sys.argv[1])
# # print ("First argument: %s" % str(sys.argv[1]))

# if objetivo == "all":
  	
# elif objetivo == "":
   	

# else:
#    # foo


xbmcgui.Dialog().ok("Gamestarter", "Scraping all your Emulationstation systems, it will take long time...")

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper.sh all &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")

xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")




