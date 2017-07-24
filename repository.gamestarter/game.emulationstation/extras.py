import os
import os.path
import xbmcgui

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)
accion=sys.argv[2]

# project=str(os.popen('$(head -c 3 /etc/release)').read())

if accion == "themes":
	xbmcgui.Dialog().ok("EmulationStation", "Downloading EmulationStation themes, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'EmulationStation [ADDON] :: Downloading EmulationStation themes.' $(date) >> /storage/.kodi/temp/emulationstation.log")
	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation/themes")

	os.system("echo 'Installing Carbon no-meta...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip https://github.com/RetroPie/es-theme-carbon-nometa/archive/master.zip")
	os.system("unzip -o //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip")
	
	os.system("echo 'Installing Carbon...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip https://github.com/RetroPie/es-theme-carbon/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip")

	os.system("echo 'Installing Pixel...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip https://github.com/RetroPie/es-theme-pixel/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip")

	os.system("echo 'Installing Turtle-pi...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip https://github.com/RetroPie/es-theme-turtle-pi/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip")

	os.system("echo 'Installing Canela...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip https://github.com/RetroPie/es-theme-simplified-static-canela/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip")

	os.system("echo 'Installing clean look...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip https://github.com/RetroPie/es-theme-clean-look/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip")

	os.system("echo 'Installing Tronkyfran...'")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip https://github.com/HerbFargus/es-theme-tronkyfran/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip")
	
	os.system("echo 'ES Themes Installed.'")

	os.system("echo 'EmulationStation [ADDON] :: EmulationStation Themes Installed.' >> /storage/.kodi/temp/emulationstation.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("EmulationStation", "EmulationStation themes downloaded. Select your favourite after launching EmulationStation.")
