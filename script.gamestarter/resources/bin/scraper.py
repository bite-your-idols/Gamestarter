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

os.system("wget --no-check-certificate -O /storage/scraper.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/scraper.sh && sh /storage/scraper.sh all &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")
os.system("rm /storage/scraper.sh")

xbmcgui.Dialog().ok("Gamestarter", "Scraping done.")




