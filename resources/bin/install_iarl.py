import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Downloading IARL, please do not power off or reboot your Raspberry Pi.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

os.system("sh  /storage/.kodi/addons/script.gamestarter/resources/bin/install_iarl.sh")

xbmcgui.Dialog().ok("Gamestarter", "IARL addon downloaded, please install from zip located in Storage folder")
