import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Updating RetroArch, please do not power off your Pi. A working internet connection is needed.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

#os.system("sh  https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/install_es.sh")

os.system("wget --no-check-certificate -O /storage/install_ra.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_extras.sh && sh /storage/install_ra.sh retroarch &> /storage/.kodi/temp/gamestarter.log")
os.system("rm /storage/install_ra.sh")

xbmcgui.Dialog().ok("Gamestarter", "RetroArch updated.")
