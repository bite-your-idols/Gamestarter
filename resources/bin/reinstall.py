

import os
import os.path

import xbmcgui
import os


xbmcgui.Dialog().ok("Gamestarter", "Preparing re-installation setup.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

os.system("sh  /storage/.kodi/addons/script.gamestarter/resources/bin/install.sh")

xbmcgui.Dialog().ok(addonname, "Re-installation done. Please, reboot and enjoy!")

