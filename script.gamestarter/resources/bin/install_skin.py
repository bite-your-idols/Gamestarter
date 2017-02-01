import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Downloading custom Estuary skin, please do not power off your Pi. A working internet connection is needed.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

os.system("wget --no-check-certificate -O /storage/install_extras.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_extras.sh && sh /storage/install_extras.sh skin &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")
os.system("rm /storage/install_extras.sh")

xbmcgui.Dialog().ok("Gamestarter", "Custom Estuary skin downloaded, please install from zip located in Storage folder")
