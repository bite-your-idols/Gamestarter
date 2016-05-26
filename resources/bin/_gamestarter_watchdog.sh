#!/bin/bash
sleep 60
while [ true ]; do
    VAR1="$(pgrep retroarch)"
	VAR2="$(pgrep MalditaCastilla)"
	VAR3="$(pgrep SuperCrateBox)"
        if [ ! "$VAR1" ] && [ ! "$VAR2" ] && [ ! "$VAR3" ]; then
            sudo openvt -c 7 -s -f clear
            sudo openvt -c 7 -s -f echo "Gamestarter quit... Starting KODI."
            sleep 1
            sudo openvt -c 7 -f clear
            sudo su -c "sudo systemctl restart mediacenter &" &
            sleep 1
            exit
        else
            sleep 2
fi
done


# Mostrar todos los procesos (en formato largo, ID y nombre) que pertenezcan al grupo otros:
# pgrep -l -G osmc
# Mostrar todos los procesos que no pertenezcan al usuario root:
# pgrep -v -u root
# pgrep -l -u root
