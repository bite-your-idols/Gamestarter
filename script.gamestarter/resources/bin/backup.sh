#!/bin/bash
# Backup Gamestarter

#Welcome message
echo '::Gamestarter:: -> backup user configurations ' $(date)
ACTION=$1

USERADDON_DIRECTORY="/storage/.kodi/userdata/addon_data"
CONFIG_DIRECTORY=$USERADDON_DIRECTORY"/script.gamestarter"
BACKUP_DIRECTORY="/storage/backup"


if [ "$ACTION" = "restore" ]; then
	if [ -f "$BACKUP_DIRECTORY/gamestarter-backup.tar.gz" ]
	then
		tar -xf $BACKUP_DIRECTORY/gamestarter-backup.tar.gz -C $CONFIG_DIRECTORY/ -xz

		echo '::Gamestarter:: -> backup restored.'
		kodi-send --action=Notification"(Gamestarter,Backup restored,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	else
		echo '::Gamestarter:: -> no backup file found.'
		kodi-send --action=Notification"(Gamestarter,No backup file found,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
	fi
	
else
	#comprobamos si hay archivos de configs anteriores para no borrarlos en las actualizaciones
	if [ -f "$CONFIG_DIRECTORY/retroarch/retroarch.cfg" ]
	then
		cp $CONFIG_DIRECTORY/retroarch/retroarch.cfg $BACKUP_DIRECTORY/gamestarter-backup/retroarch/retroarch.cfg
		cp $CONFIG_DIRECTORY/retroarch/config $CONFIG_DIRECTORY/retroarch/config
	fi

	if [ -f "$CONFIG_DIRECTORY/emulationstation/es_systems.cfg" ]
	then
		cp $CONFIG_DIRECTORY/emulationstation/es_systems.cfg $BACKUP_DIRECTORY/gamestarter-backup/emulationstation/es_systems.cfg
		cp $CONFIG_DIRECTORY/emulationstation/es_input.cfg $BACKUP_DIRECTORY/gamestarter-backup/emulationstation/es_input.cfg
	fi

	tar -zcvf $BACKUP_DIRECTORY/gamestarter-backup.tar.gz $BACKUP_DIRECTORY/gamestarter
	rm -rf $BACKUP_DIRECTORY/gamestarter
	echo '::Gamestarter:: -> backup completed.'
	kodi-send --action=Notification"(Gamestarter,Backup completed,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
fi


