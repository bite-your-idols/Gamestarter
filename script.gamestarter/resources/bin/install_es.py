import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Installing EmulationStation, please do not power off or reboot your Raspberry Pi.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

#os.system("sh  https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/install_es.sh")

os.system("wget --no-check-certificate -O /storage/install-es.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_es.sh && sh /storage/install-es.sh")
os.system("rm /storage/install-es.sh")

xbmcgui.Dialog().ok("Gamestarter", "EmulationStation installed, please reboot your system.")
