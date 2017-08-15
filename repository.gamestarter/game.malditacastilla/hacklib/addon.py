import xbmcaddon
import xbmcgui
import os
 
addon       = xbmcaddon.Addon()
addonname   = addon.getAddonInfo('name')

# rename folders to remove/add hacklib 
os.rename("/storage/lib", "/storage/lib_bypass")
os.rename("/storage/lib_off", "/storage/lib")
os.rename("/storage/lib_bypass", "/storage/lib_off")
xbmcgui.Dialog().ok(addonname, "/storage/lib folders switched. Hacklib Toggled. Reboot needed.")
