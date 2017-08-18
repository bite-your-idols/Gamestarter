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

# miramos si hay alguna accion
args = urlparse.parse_qs(sys.argv[2][1:])
command = args['com'][0] if 'com' in args else 'EXEC_ADDON'
# log_debug('command = "{0}"'.format(command))

if command == 'DOWNLOAD_THEMES':
	xbmcgui.Dialog().ok("EmulationStation", "Downloading EmulationStation themes, please do not power off your device.")
	os.system('kodi-send --action="xbmc.ActivateWindow(busydialog)"')
	os.system("echo 'EmulationStation [ADDON] :: Downloading EmulationStation themes.' $(date) >> /storage/.kodi/temp/emulationstation.log")
	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation/themes")

	os.system("echo 'EmulationStation [ADDON] :: Installing Carbon no-meta...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip https://github.com/RetroPie/es-theme-carbon-nometa/archive/master.zip")
	os.system("unzip -o //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm //storage/.kodi/userdata/addon_data/game.emulationstation/carbon-nometa.zip")
	
	os.system("echo 'EmulationStation [ADDON] :: Installing Carbon...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip https://github.com/RetroPie/es-theme-carbon/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/carbon.zip")

	os.system("echo 'EmulationStation [ADDON] :: Installing Pixel...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip https://github.com/RetroPie/es-theme-pixel/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/pixel.zip")

	os.system("echo 'EmulationStation [ADDON] :: Installing Turtle-pi...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip https://github.com/RetroPie/es-theme-turtle-pi/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/turtle.zip")

	os.system("echo 'EmulationStation [ADDON] :: Installing Canela...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip https://github.com/RetroPie/es-theme-simplified-static-canela/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/canela.zip")

	os.system("echo 'EmulationStation [ADDON] :: Installing clean look...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip https://github.com/RetroPie/es-theme-clean-look/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/clean.zip")

	os.system("echo 'EmulationStation [ADDON] :: Installing Tronkyfran...' >> /storage/.kodi/temp/emulationstation.log")
	os.system("wget --no-check-certificate -O  /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip https://github.com/HerbFargus/es-theme-tronkyfran/archive/master.zip")
	os.system("unzip -o /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip -d /storage/.kodi/userdata/addon_data/game.emulationstation/themes/")
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/tronkyfran.zip")

	os.system("echo 'EmulationStation [ADDON] :: EmulationStation Themes Installed.' >> /storage/.kodi/temp/emulationstation.log")
	os.system('kodi-send --action="xbmc.Dialog.Close(busydialog)"')
	xbmcgui.Dialog().ok("EmulationStation", "EmulationStation themes downloaded. Select your favourite after launching EmulationStation.")

elif command == 'UPDATE_SYSTEMS':
	os.system("echo 'EmulationStation [ADDON] :: Updating es_systems.cfg file.' $(date) >> /storage/.kodi/temp/emulationstation.log")
	import xml.etree.ElementTree as ET
	# Writes a XML text tag line, indented 2 spaces by default.
	# Both tag_name and tag_text must be Unicode strings.
	# Returns an Unicode string.
	#
	def XML_text(tag_name, tag_text, num_spaces = 2):
	    if tag_text:
	        tag_text = text_escape_XML(tag_text)
	        line = '{0}<{1}>{2}</{3}>\n'.format(' ' * num_spaces, tag_name, tag_text, tag_name)
	    else:
	        # >> Empty tag    
	        line = '{0}<{1} />\n'.format(' ' * num_spaces, tag_name)

	    return line

	# Some XML encoding of special characters:
	#   {'\n': '&#10;', '\r': '&#13;', '\t':'&#9;'}
	#
	# See http://stackoverflow.com/questions/1091945/what-characters-do-i-need-to-escape-in-xml-documents
	# See https://wiki.python.org/moin/EscapingXml
	# See https://github.com/python/cpython/blob/master/Lib/xml/sax/saxutils.py
	# See http://stackoverflow.com/questions/2265966/xml-carriage-return-encoding
	#
	def text_escape_XML(data_str):
	    # Ampersand MUST BE replaced FIRST
	    data_str = data_str.replace('&', '&amp;')
	    data_str = data_str.replace('>', '&gt;')
	    data_str = data_str.replace('<', '&lt;')

	    data_str = data_str.replace("'", '&apos;')
	    data_str = data_str.replace('"', '&quot;')
	    
	    # --- Unprintable characters ---
	    data_str = data_str.replace('\n', '&#10;')
	    data_str = data_str.replace('\r', '&#13;')
	    data_str = data_str.replace('\t', '&#9;')

	    return data_str

	# archivo = directory.join('es_systems.xml')
	os.system("rm /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg")
	archivo = "/storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg"
	ruta_roms =xbmcaddon.Addon(id='game.emulationstation').getSetting('romspath')
	app_file= '/storage/.kodi/addons/game.retroarch/addon.start'

	emus=[
		["amiga","Commodore Amiga",".adf"],
		["atari2600","Atari 2600",".a26 .bin .rom .zip .gz .A26 .BIN .ROM .ZIP .GZ"],
		["atarilynx","Atari Lynx",".lnx .zip .LNX .ZIP"],
		["gamegear","Game Gear",".gg .bin .sms .zip .GG .BIN .SMS .ZIP"],
		["gba","Game Boy Advance",".gba .zip .GBA .ZIP"],
		["gb","Game Boy/Game Boy Color",".gb .zip .GB .ZIP .gbc .GBC"],
		["mame","MAME",".zip .ZIP"],
		["fba","FBA",".zip .ZIP"],
		["neogeo","NEOGEO",".zip .ZIP"],
		["msx","MSX/MSX2",".rom .mx1 .mx2 .col .dsk .zip .ROM .MX1 .MX2 .COL .DSK .ZIP"],
		["nes","Nintendo NES",".nes .zip .NES .ZIP .fds .FDS"],
		["mastersystem","Sega Master System",".sms .bin .zip .SMS .BIN .ZIP"],
		["snes","Super Nintendo",".bin .smc .sfc .fig .swc .mgd .zip .BIN .SMC .SFC .FIG .SWC .MGD .ZIP"],
		["megadrive","MegaDrive/MegaCD",".smd .bin .gen .md .sg .zip .SMD .BIN .GEN .MD .SG .ZIP"],
		["pcengine","PC Engine/PC Engine CD",".pce .cue .zip .PCE .CUE .ZIP"],
		["psx","PlayStation",".bin .cue .cbn .img .iso .m3u .mdf .pbp .toc .z .znx .BIN .CUE .CBN .IMG .ISO .M3U .MDF .PBP .TOC .Z .ZNX .zip .ZIP"],
		["n64","Nintendo 64",".z64 .n64 .v64 .Z64 .N64 .V64"],
		["psp","PSP",".iso .pbp .cso .ISO .PBP .CSO"],
		["zxspectrum","ZX Spectrum","sna .szx .z80 .tap .tzx .gz .udi .mgt .img .trd .scl .dsk .zip SNA .SZX .Z80 .TAP .TZX .GZ .UDI .MGT .IMG .TRD .SCL .DSK .ZIP"],
		["videopac","Philips Videopac",".bin .zip .BIN .ZIP"],
		["ports","PC Games",".sh .SH"],
		["scummvm","ScummVM",".sh .SH"],
		["saturn","Sega Saturn",".bin .cue .iso"],
		["wonderswan","Wonderswan",".ws .wsc .zip .ZIP"],
		["virtualboy","Virtual Boy",".zip .ZIP .vb .VB"],
		["gw","Game and Watch",".zip .ZIP .mgw .MGW"],
		["sega32x","Sega 32x",".32x .32X .smd .SMD .bin .BIN .zip .ZIP"],
		["segasg1000","Sega SG1000",".sg .SG .zip .ZIP"],
		["segacd","Sega CD",".cue .CUE .iso .ISO"],
		["supergrafx","SuperGrafx",".pce .PCE .cue .CUE .sgx .SGX .zip .ZIP .ccd .CCD"],
		["atari7800","Atari 7800",".a78 .A78 .bin .BIN .zip .ZIP"],
		["ngp","Neo-Geo Pocket/Neo Geo Pocket Color",".zip .ZIP .ngc .NGC .ngp .NGP"],
		["vectrex","Vectrex",".zip .ZIP .vec .VEC .bin .BIN"],
		["lutro","Lutro",".zip .ZIP .lua .LUA"],
		["atarist","Atari ST",".st .ST .stx .STX .zip .ZIP"],
		["amstradcpc","Amstrad CPC",".dsk .DSK .zip .ZIP"],
		["zx81","ZX81",".tzx .TZX .p .P .zip .ZIP"],
		["dreamcast","Dreamcast",".gdi .GDI .cdi .CDI"],
		["nds","Nintendo DS",".nds .zip .NDS .ZIP"]
	]

	str_list = []
	str_list.append('<?xml version="1.0"?>\n')
	str_list.append('<systemList>\n')

	# # --- Write launchers ---
	for emuID in emus:
	# # 	# Data which is not string must be converted to string
		# emu = emus[emuID]
		str_list.append('<system>\n')
		str_list.append(XML_text('name', emuID[0]))
		str_list.append(XML_text('fullname', emuID[1]))
		str_list.append(XML_text('path', ruta_roms+emuID[0]))
		str_list.append(XML_text('extension', emuID[2]))
		str_list.append(XML_text('command', app_file+' '+xbmcaddon.Addon(id='game.emulationstation').getSetting(emuID[0])+' %ROM% ES'))
		str_list.append(XML_text('platform', emuID[0]))
		str_list.append('</system>\n')
	# End of file
	str_list.append('</systemList>\n')

	full_string = ''.join(str_list).encode('utf-8')
	file_obj = open(archivo, 'w')
	file_obj.write(full_string)
	file_obj.close()

	os.system("echo 'EmulationStation [ADDON] :: es_systems.cfg updated.' >> /storage/.kodi/temp/emulationstation.log")
	xbmcgui.Dialog().ok("EmulationStation", "EmulationStation Systems config file (es_systems.cfg) updated.");
	
else:
	xbmc.executebuiltin('ActivateWindow(busydialog)')
	os.system("echo 'EmulationStation [ADDON] ::' $(date) > /storage/.kodi/temp/emulationstation.log")
	os.system("echo '============================================================' >> /storage/.kodi/temp/emulationstation.log")

	# project=str(os.popen('$(head -c 3 /etc/release)').read())

	# primero habria que comprobar si es la priemra vez que se lanza entonces hacer la instalacion:
	if os.path.isdir(directory+"/emulationstation") == True: 
	 	os.system("echo 'EmulationStation [ADDON] :: Firts Run!' >> /storage/.kodi/temp/emulationstation.log")
	 	os.system("mkdir -p /storage/.kodi/userdata/addon_data/game.emulationstation")
	  	os.system("if [ ! -f /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ] ; then cp /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg /storage/.kodi/userdata/addon_data/game.emulationstation/es_systems.cfg ; fi && rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation/es_systems.cfg")
	 	os.system("cp -r /storage/.kodi/addons/game.emulationstation/emulationstation/* /storage/.kodi/userdata/addon_data/game.emulationstation")
	 	# os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
	 	os.system("if [ -L /storage/.config/emulationstation ] ; then rm /storage/.config/emulationstation ; fi && ln -s /storage/.kodi/userdata/addon_data/game.emulationstation /storage/.config/emulationstation")
	 	os.system("rm -rf /storage/.kodi/addons/game.emulationstation/emulationstation")
	 	# os.system("touch /storage/.kodi/addons/game.emulationstation/installed && echo 'EmulationStation [ADDON] :: Firts Run! - ' $(date) >> /storage/.kodi/addons/game.emulationstation/installed")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-RPi")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/game.emulationstation-Gen")
	 	os.system("chmod a+x /storage/.kodi/addons/game.emulationstation/addon.sh && chmod a+x /storage/.kodi/addons/game.retroarch/addon.start && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-RPi && chmod a+x /storage/.kodi/addons/game.retroarch/game.retroarch-Gen")
	 	# xbmcgui.Dialog().ok(addonname, "Done. Copy your roms, reboot and enjoy!")
	 	#renombrar la carpeta de libs para el device
	 	os.system("PROJECT=$(head -c 3 /etc/release) && if [[ $PROJECT == 'Gen' ]] ; then mv -n /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib ; else mv -n /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib ; fi && echo 'EmulationStation [ADDON] :: '$PROJECT >> /storage/.kodi/temp/emulationstation.log")
	 	# if project in "Pi":
	 	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-RPi /storage/.kodi/addons/game.emulationstation/lib")
	 	# else:
	 	# 	os.system("mv -r /storage/.kodi/addons/game.emulationstation/lib-Gen /storage/.kodi/addons/game.emulationstation/lib")

	# Finalmente lanzamos Emulationstation
	# else:
	askConfirmation = xbmcplugin.getSetting(int(sys.argv[1]),'ask')
	if askConfirmation == "true":
		resultado = xbmcgui.Dialog().yesno("EmulationStation", "Exit Kodi and run EmulationStation?");
		if resultado:
			xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/fanart.jpg")')  
			os.system("echo 'EmulationStation [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/emulationstation.log") 
			os.system("sh "+directory+"/addon.sh emulationstation")
		else:
			xbmc.executebuiltin('Dialog.Close(busydialog)')
			os.system("echo 'EmulationStation [ADDON] :: Abort launch.' >> /storage/.kodi/temp/emulationstation.log")
	else:
		xbmc.executebuiltin('ShowPicture("/storage/.kodi/addons/game.emulationstation/fanart.jpg")') 
		os.system("echo 'EmulationStation [ADDON] :: Kodi is ready.' >> /storage/.kodi/temp/emulationstation.log") 
		os.system("sh "+directory+"/addon.sh emulationstation")
