import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Installing UAE4ARM, please do not power off or reboot your Raspberry Pi.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

#os.system("sh  https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/install_es.sh")

os.system("wget --no-check-certificate -O /storage/install-uae.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_uae.sh && sh /storage/install-uae.sh &> /storage/.config/gamestarter.log")
os.system("rm /storage/install-uae.sh")

xbmcgui.Dialog().ok("Gamestarter", "UAE4ARM installed, please reboot your system.")
