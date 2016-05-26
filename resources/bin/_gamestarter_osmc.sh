# https://discourse.osmc.tv/t/script-aborted-after-closing-osmc/2005/12

#!/bin/sh

#clear the virtaul terminal 7 screen
sudo openvt -c 7 -s -f clear
sudo openvt -c 7 -s -f echo "Running Gamestarter from KODI"
sudo openvt -c 7 -s -f echo "Variables: " "$1" $2
    
# Start watchdog
sudo su osmc -c "sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/gamestarter_watchdog.sh &" &
    
# start game/emu on vitrual terminal 7 and detach it
# checkear el tipo de juego/emu que queremos lanzar:

case $1 in
   "retroarch") 
         sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/retroarch_osmc.sh --menu >/dev/null 2>&1 &" &
   ;;
   "emulationstation")  
         sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/emulationstation_osmc.sh $2 >/dev/null 2>&1 &" &
  ;;
   "ports") 
   		sudo su osmc -c "nohup openvt -c 7 -s -f sh $2 >/dev/null 2>&1 &" & 
   ;;
   "amiga") 
   		sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/uae4arm_osmc.sh $2 >/dev/null 2>&1 &" & 
	;;
   *) 
   		sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/retroarch_osmc.sh '$@' >/dev/null 2>&1 &" &
		# sudo su osmc -c "nohup openvt -c 7 -s -f sh /opt/retropie/emulators/retroarch/bin/retroarch -c /home/osmc/RetroPie/configs/retroarch.cfg -L /opt/retropie/libretrocores/lr-$1/$1_libretro.so $2 >/dev/null 2>&1 &" &
	;;
esac

# sudo su osmc -c "nohup openvt -c 7 -s -f sh /home/osmc/.kodi/addons/script.gamestarter/resources/bin/retroarch.sh $1 $2 >/dev/null 2>&1 &" &
# sudo su osmc -c "nohup openvt -c 7 -s -f -s /home/osmc/emulators/roms/ports/MalditaCastilla/MalditaCastilla >/dev/null 2>&1 &" &

# clear the screen again
sudo openvt -c 7 -s -f clear

# wait a bit to make sure game/emu is running detached from kodi
# sleep 2
sleep 0.5
    
# stop kodi to free input devices for game/emu
sudo su -c "systemctl stop mediacenter &" &
    
exit


# /home/osmc/RetroPie/gamestarter/gamestarter.sh mame2003 /home/osmc/RetroPie/roms/mame/ghouls.zip hola
