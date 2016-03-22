#!/bin/bash

# setting up the menu
cmd=(dialog --backtitle "gamestarter installation - Version " --menu "Gamestarter Installation.\nMake your choice:\n " 14 50 16)

options=(1 "Install Gamestarter"
         2 "Install Retroarch Addon"
         3 "WIP"
         4 "WIP")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1) 
        
        wget --no-check-certificate -w 4 -O /storage/downloads/ https://github.com/bite-your-idols/gamestarter-openelec/blob/master/uae4arm.tar.gz
        tar -xf /storage/downloads/uae4arm.tar.gz -C /storage/emulators/
        
	# create directories
        #    mkdir -p /storage/emulators/scripts

	# download the retrosmc scripts and files
           wget --no-check-certificate -w 4 -O /storage/emulators/scripts/gamestarter.sh https://github.com/bite-your-idols/gamestarter-openelec/blob/master/scripts/gamestarter.sh
           wget --no-check-certificate -w 4 -O /storage/emulators/scripts/gamestarter.start https://github.com/bite-your-idols/gamestarter-openelec/blob/master/scripts/gamestarter.start
           chmod a+x /storage/emulators/scripts/gamestarter.sh
           chmod a+x /storage/emulators/scripts/gamestarter.start
        #  chmod a+x /storage/emulators/retroarch/retroarch
           chmod a+x /storage/emulators/uae4arm/uae4arm
            

	# end installation
            dialog --title "FINISHED!" --msgbox "\ndone!\nPress OK to return to the menu.\n" 11 70

	# restart script
            exec /storage/install-gamestarter.sh
            ;;
        2)

	# restart script
            exec /storage/install-gamestarter.sh
            ;;
        3)

	# restart script
            exec /storage/install-gamestarter.sh
            ;;
        4)
        
	# restart script
            exec /storage/install-gamestarter.sh
            ;;

    esac
done
