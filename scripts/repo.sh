#!/bin/bash
#################################################
# ACTUALIZAR REPO
#################################################
ADDONS='./repository.gamestarter/repository.gamestarter-3.0.0.zip ./game.retroarch/game.retroarch-0.0.3.zip ./game.emulationstation/game.emulationstation-0.0.1.zip'

read -r -p "Do you want to update Gamestarter Repo: $ADDONS? [y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
	cd ./repository.gamestarter
	python create_repository.py $ADDONS
esac

echo "done!"