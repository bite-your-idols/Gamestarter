#!/bin/bash
# Backup Gamestarter

#Welcome message

echo '::Gamestarter:: -> backup/restore' $(date)
ACTION=$1

USERADDON_DIRECTORY="/storage/.kodi/userdata/addon_data"
CONFIG_DIRECTORY=$USERADDON_DIRECTORY"/script.gamestarter"
BACKUP_DIRECTORY="/storage/backup"


if [ "$ACTION" == "restore" ]
then
	# kodi-send --action=Notification"(Gamestarter,Restoring your configuration backup...,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	if [ -f "$BACKUP_DIRECTORY/gamestarter-backup.tar.gz" ]
	then
		tar -xf $BACKUP_DIRECTORY/gamestarter-backup.tar.gz -C $USERADDON_DIRECTORY/ -xz

		if [ -f "$CONFIG_DIRECTORY/plugin.program.advanced.launcher/launchers.xml" ]
		then
			mv $CONFIG_DIRECTORY/plugin.program.advanced.launcher $USERADDON_DIRECTORY
			echo '::Gamestarter:: -> restore AL' 
		fi

		if [ -f "$CONFIG_DIRECTORY/plugin.program.advanced.emulator.launcher/categories.xml" ]
		then
			mv $CONFIG_DIRECTORY/plugin.program.advanced.emulator.launcher $USERADDON_DIRECTORY
			echo '::Gamestarter:: -> restore AEL'
		fi
		echo '::Gamestarter:: -> backup restored.'
		kodi-send --action=Notification"(Gamestarter,Backup restored,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	else
		echo '::Gamestarter:: -> no backup file found.'
		kodi-send --action=Notification"(Gamestarter,Backup file not found,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	fi
	
else
	#kodi-send --action=Notification"(Gamestarter,Making backup of your config files,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	#comprobamos si hay archivos de configs anteriores para no borrarlos en las actualizaciones
	if [ -f "$CONFIG_DIRECTORY/retroarch/retroarch.cfg" ]
	then
		mkdir -p $BACKUP_DIRECTORY/script.gamestarter/retroarch
		cp $CONFIG_DIRECTORY/retroarch/retroarch.cfg $BACKUP_DIRECTORY/script.gamestarter/retroarch/retroarch.cfg
		cp -ar $CONFIG_DIRECTORY/retroarch/config $BACKUP_DIRECTORY/script.gamestarter/retroarch
		cp -ar $CONFIG_DIRECTORY/retroarch/autoconfig $BACKUP_DIRECTORY/script.gamestarter/retroarch
		cp -ar $CONFIG_DIRECTORY/retroarch/shaders $BACKUP_DIRECTORY/script.gamestarter/retroarch
	fi

	if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems.cfg" ]
	then
		echo '::Gamestarter:: -> backup ES' 
		mkdir -p $BACKUP_DIRECTORY/script.gamestarter/emulationstation
		cp $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $BACKUP_DIRECTORY/script.gamestarter/emulationstation/es_systems.cfg
		cp $CONFIG_DIRECTORY/emulationstation/es_input.cfg $BACKUP_DIRECTORY/script.gamestarter/emulationstation/es_input.cfg
	fi

	if [ -f "$USERADDON_DIRECTORY/plugin.program.advanced.launcher/launchers.xml" ]
	then
		echo '::Gamestarter:: -> backup AL' 
		mkdir -p $BACKUP_DIRECTORY/script.gamestarter/plugin.program.advanced.launcher
		cp $USERADDON_DIRECTORY/plugin.program.advanced.launcher/launchers.xml $BACKUP_DIRECTORY/script.gamestarter/plugin.program.advanced.launcher/launchers.xml
	fi

	if [ -f "$USERADDON_DIRECTORY/plugin.program.advanced.emulator.launcher/categories.xml" ]
	then
		echo '::Gamestarter:: -> backup AEL' 
		mkdir -p $BACKUP_DIRECTORY/script.gamestarter/plugin.program.advanced.emulator.launcher/db_ROMs
		cp $USERADDON_DIRECTORY/plugin.program.advanced.emulator.launcher/categories.xml $BACKUP_DIRECTORY/script.gamestarter/plugin.program.advanced.emulator.launcher/categories.xml
		cp -ar $USERADDON_DIRECTORY/plugin.program.advanced.emulator.launcher/db_ROMs $BACKUP_DIRECTORY/script.gamestarter/plugin.program.advanced.emulator.launcher
	fi

	cd /storage/backup/ && tar -zcvf $BACKUP_DIRECTORY/gamestarter-backup.tar.gz script.gamestarter && cd ../
	rm -rf $BACKUP_DIRECTORY/script.gamestarter
	echo '::Gamestarter:: -> backup completed.'
	kodi-send --action=Notification"(Gamestarter,Backup stored at /storage/backup,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
fi