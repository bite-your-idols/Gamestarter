import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Downloading IARL, please do not power off or reboot your Raspberry Pi.")


script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

# xbmcgui.Dialog().ok("Gamestarter", "Done!")
# os.system("sh "+directory+"/resources/bin/install_iarl.sh")

#os.system("sh  https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/assets/install_iarl.sh")

os.system("wget --no-check-certificate -O /storage/install-iarl.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_iarl.sh && sh /storage/install-iarl.sh")
os.system("rm /storage/install-iarl.sh")

xbmcgui.Dialog().ok("Gamestarter", "IARL addon downloaded, please install from zip located in Storage folder")
