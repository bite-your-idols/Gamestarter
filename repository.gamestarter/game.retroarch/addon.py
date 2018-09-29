import xbmc
import xbmcaddon
import xbmcgui
import xbmcplugin
import os
import os.path
import urlparse

addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)
project=str(os.popen('echo $(head -c 3 /etc/release)').read())

# miramos si hay alguna accion
args = urlparse.parse_qs(sys.argv[2][1:])
command = args['com'][0] if 'com' in args else 'EXEC_ADDON'
# log_debug('command = "{0}"'.format(command))

if command == 'DOWNLOAD_CORES':
	
	# xbmcgui.Dialog().ok("RetroArch", project)
	# descarga de cores
	xbmcgui.Dialog().ok("RetroArch", "Downloading Libretro cores full package, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'RetroArch [ADDON] :: Downloading Libretro cores full package.' $(date) >> /storage/.kodi/temp/retroarch.log")
	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.retroarch/cores")

	if project.find("Pi") >= 0:
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.aa")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.ab")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.ac")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ad https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-RPi.tar.gz.part.ad")
	else:
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.aa")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.ab")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.ac")
		os.system("wget -O /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ad https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/libretro-cores-Gen.tar.gz.part.ad")

	os.system("cat /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.* > /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz")
	os.system("rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.aa && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ab && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ac && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz.part.ad")
	os.system("tar -xf /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz -C /storage/.kodi/userdata/addon_data/game.retroarch/ -xz && rm /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores.tar.gz")
	
	if project.find("Pi") >= 0:
		os.system("cp /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-RPi/* /storage/.kodi/userdata/addon_data/game.retroarch/cores/")
		os.system("rm -rf /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-RPi")
	else:
		os.system("cp /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-Gen/* /storage/.kodi/userdata/addon_data/game.retroarch/cores/")
		os.system("rm -rf /storage/.kodi/userdata/addon_data/game.retroarch/libretro-cores-Gen")

	os.system("echo 'RetroArch [ADDON] :: Libretro cores downloaded.' >> /storage/.kodi/temp/retroarch.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("RetroArch", "Libretro cores downloaded. You must deactivate 'Use RetroPlayer installed cores only' option to use them when launching RetroArch.")

elif command == 'DOWNLOAD_AEL_ASSETS':
	xbmcgui.Dialog().ok("RetroArch", "Downloading assets for Advanced Emulator Launcher, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'RetroArch [ADDON] :: Downloading AEL Assets.' $(date) >> /storage/.kodi/temp/retroarch.log")
	os.system("mkdir -p /storage/emulators/")
	os.system("wget -O /storage/emulators/ael-assets.tar.gz https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/packages/ael-assets.tar.gz")
	os.system("tar -xf /storage/emulators/ael-assets.tar.gz -C /storage/emulators/ -xz && rm /storage/emulators/ael-assets.tar.gz")
	os.system("echo 'RetroArch [ADDON] :: AEL assets downloaded.' >> /storage/.kodi/temp/retroarch.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("RetroArch", "AEL assets downloaded. Go to AEL settings > I/O  > Import category/launcher configuration... and select the systems you want to import one by one or select whole systems import config file (Gamestarter - Category assets.xml).")

elif command == 'OPEN_SETTINGS':
	xbmcaddon.Addon(id='game.retroarch').openSettings()

else:
	# ejecutamos addon
	xbmc.executebuiltin('ActivateWindow(busydialog)')
	os.system("echo 'RetroArch [ADDON] ::' $(date) > /storage/.kodi/temp/retroarch.log")
	os.system("echo '============================================================' >> /storage/.kodi/temp/retroarch.log")

	# primero habria que comprobar si es la primera vez que se lanza entonces hacer la instalacion:
	if os.path.isdir(directory+"/retroarch") == True: 
	 	os.system("echo 'RetroArch [ADDON] :: Firts Run!' >> /storage/.kodi/temp/retroarch.log")
	 	os.system("mount -o remount,rw /flash && if [ -z $(grep 'dtparam=audio=on' /flash/config.txt) ]; then echo 'dtparam=audio=on' >> /flash/config.txt && echo 'RetroArch [ADDON] :: Alsa activated in config.txt' >> /storage/.kodi/temp/retroarch.log ; fi")
	 	os.system("mkdir -p /storage/emulators/roms && mkdir -p /storage/emulators/bios && mkdir -p /storage/emulators/saves")
	 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.retroarch")
	 	os.system("PROJECT=$(head -c 3 /etc/release) && if [[ $PROJECT == 'Gen' ]] ; then mv -n /storage/.kodi/addons/game.retroarch/retroarch/retroarch-Gen.cfg /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg ; else mv -n /storage/.kodi/addons/game.retroarch/retroarch/retroarch-RPi.cfg /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg ; fi")
	 	os.system("if [ ! -f /storage/.kodi/userdata/addon_data/game.retroarch/retroarch.cfg ] ; then cp /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg /storage/.kodi/userdata/addon_data/game.retroarch/retroarch.cfg ; fi && rm -rf /storage/.kodi/addons/game.retroarch/retroarch/retroarch.cfg")
	 	os.system("cp -r /storage/.kodi/addons/game.retroarch/retroarch/* /storage/.kodi/userdata/addon_data/game.retroarch")
	 	os.system("rm -rf /storage/.kodi/addons/game.retroarch/retroarch")
		os.system("if [ -L /storage/.config/retroarch ] ; then rm /storage/.config/retroarch ; fi && ln -s /storage/.kodi/userdata/addon_data/game.retroarch /storage/.config/retroarch")
	 	# os.system("touch /storage/.kodi/addons/game.retroarch/installed && echo $(cat /etc/release) >> /storage/.kodi/addons/game.retroarch/installed")
	 	# os.system("echo $(date) >> /storage/.kodi/addons/game.retroarch/installed")
	 	os.system("chmod a+x /storage/.kodi/addons/game.retroarch/addon.sh && chmod a+x /storage/.kodi/addons/game.retroarch/addon.start && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-RPi && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-Gen")
	 	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")
	 	os.system("PROJECT=$(head -c 3 /etc/release) && if [[ $PROJECT == 'Gen' ]] ; then mv -n /storage/.kodi/addons/game.retroarch/lib-Gen /storage/.kodi/addons/game.retroarch/lib ; else mv -n /storage/.kodi/addons/game.retroarch/lib-RPi /storage/.kodi/addons/game.retroarch/lib ; fi && echo 'RetroArch [ADDON] :: '$PROJECT >> /storage/.kodi/temp/emulationstation.log")

	 # 	if project.find("Pi") >= 0:
		# 	os.system("cp /storage/.kodi/userdata/addon_data/game.retroarch/lib-RPi /storage/.kodi/userdata/addon_data/game.retroarch/lib")
		# else:
		# 	os.system("cp /storage/.kodi/userdata/addon_data/game.retroarch/lib-Gen /storage/.kodi/userdata/addon_data/game.retroarch/lib")
			


	# Despues y las siguientes veces comprobamos que haya cores,
	# habrai que borrar los links y volver a crearlos por si has borrado los cores desde retrpolayer
	retroplayer = xbmcplugin.getSetting(int(sys.argv[1]),'retroplayer')
	if retroplayer == "true":
		os.system("echo 'RetroArch [ADDON] :: Cleaning Cores - RetroPlayer=True.' >> /storage/.kodi/temp/retroarch.log") 
		os.system("rm -rf /storage/.kodi/userdata/addon_data/game.retroarch/cores/")
		os.system("mkdir /storage/.kodi/userdata/addon_data/game.retroarch/cores/")

	total=os.popen('num=0 && for filename in /storage/.kodi/addons/game.libretro.*; do core="${filename##*.}" && if [ ! -L /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ] ; then ln -s /storage/.kodi/addons/game.libretro.$core/game.libretro.$core.so /storage/.kodi/userdata/addon_data/game.retroarch/cores/$core"_"libretro.so ; fi && echo "RetroArch [ADDON] :: RetroPlayer core found: "$core >> /storage/.kodi/temp/retroarch.log && num=$((num+1)) ; done && echo "RetroArch [ADDON] :: Total RetroPlayer cores: "$num >> /storage/.kodi/temp/retroarch.log && echo "$num $core"').read()

	# if total == '0': # no se porque cuando no hay cores pone un asterisco
	if "*" in total and retroplayer == "true": 
		os.system("echo 'RetroArch [ADDON] :: No cores detected. You need to download any Libretro core before launching RetroArch or deactivate Use RetroPlayer cores in settings.' >> /storage/.kodi/temp/retroarch.log")
		# xbmc.executebuiltin('Notification(RetroArch, You need to download any libretro core before launching RetroArch, or deactivate "RetroPlayer cores only" option in settings.,5000,'+directory+'/icon.jpg)')
		xbmcgui.Dialog().ok("RetroArch", "You need to download any Libretro core using Kodi's RetroPlayer before launching RetroArch or you can deactivate 'Use RetroPlayer installed cores only' option in settings.")
		xbmc.executebuiltin('Dialog.Close(busydialog)')

	# Finalmente lanzamos RetroArch
	else:
		askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
		if askConfirmation == "true":
			resultado = xbmcgui.Dialog().yesno("RetroArch", "Exit Kodi and run RetroArch?");
			if resultado:
				xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.retroarch/fanart.jpg")') 
				os.system("echo 'RetroArch [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/retroarch.log") 
				os.system("sh "+directory+"/addon.sh retroarch")
				# os.system("sh /storage/.kodi/addons/script.gamestarter/resources/bin/gamestarter.sh retroarch")
				# os.system("sh "+directory+"/addon.sh fceumm '/storage/emulators/roms/nes/Super Mario Bros. (Europe) (Rev A).zip'")
			else:
				xbmc.executebuiltin('Dialog.Close(busydialog)')
				os.system("echo 'RetroArch [ADDON] :: Abort launch.' >> /storage/.kodi/temp/retroarch.log")
		else:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.retroarch/fanart.jpg")') 
			os.system("echo 'RetroArch [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/retroarch.log")
			os.system("sh "+directory+"/addon.sh retroarch")
