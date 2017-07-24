import os
import os.path
import xbmcgui

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)
accion=sys.argv[2]

project=str(os.popen('$(head -c 3 /etc/release)').read())

if accion == "cores":
	xbmcgui.Dialog().ok("RetroArch", "Downloading Libretro cores full package, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'RetroArch [ADDON] :: Downloading Libretro cores full package.' $(date) >> /storage/.kodi/temp/retroarch.log")

	if project in "Pi":
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.aa")
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.ab")
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.ac")
	else:
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.aa")
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.ab")
		os.system("curl -o /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.ac")

	os.system("cat /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.* > /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz")
	os.system("rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac")
	os.system("tar -xf /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz -C /storage/.kodi/userdata/addon_data/game.retroarch/ -xz && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz")
	os.system("cp /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-RPi/* /storage/.kodi/userdata/addon_data/game.retroarch/cores/")
	os.system("rm -rf /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-RPi")

	os.system("echo 'RetroArch [ADDON] :: Libretro cores downloaded.' >> /storage/.kodi/temp/retroarch.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("RetroArch", "Libretro cores downloaded. You must deactivate 'Use RetroPlayer installed cores only' option to use them when launching RetroArch.")
