#!/bin/bash
#################################################
# ACTUALIZAR REPO
#################################################
# desde raiz: sh repository.gamestarter/update.sh
ADDON_1='repository.gamestarter'
ADDON_1_VER='3.0.0'
ADDON_2='game.retroarch'
ADDON_2_VER='8.177.14'
ADDON_3='game.emulationstation'
ADDON_3_VER='8.201.1'
ADDON_4='game.drastic'
ADDON_4_VER='0.0.1'
ADDON_5='plugin.program.advanced.emulator.launcher'
ADDON_5_VER='0.9.7'
ADDON_6='game.ppsspp'
ADDON_6_VER='0.0.1'
ADDON_7='game.retroarch'
ADDON_7_VER='9.185.19'
ADDON_8='game.retroarch'
ADDON_8_VER='9.186.20'


echo ""
echo "-------------------------------------"
echo "GAMESTARTER REPO UPDATE"
echo "-------------------------------------"
echo $ADDON_1' - '$ADDON_1_VER
echo $ADDON_2' - '$ADDON_2_VER
echo $ADDON_3' - '$ADDON_3_VER
echo $ADDON_4' - '$ADDON_4_VER
echo $ADDON_5' - '$ADDON_5_VER
echo $ADDON_6' - '$ADDON_6_VER
echo $ADDON_7' - '$ADDON_7_VER
echo $ADDON_8' - '$ADDON_8_VER
echo "-------------------------------------"
echo ""

ADDONS=./$ADDON_1/$ADDON_1-$ADDON_1_VER.zip' './$ADDON_2/$ADDON_2-$ADDON_2_VER.zip' './$ADDON_3/$ADDON_3-$ADDON_3_VER.zip' './$ADDON_4/$ADDON_4-$ADDON_4_VER.zip' './$ADDON_5/$ADDON_5-$ADDON_5_VER.zip' './$ADDON_6/$ADDON_6-$ADDON_6_VER.zip' './$ADDON_7/$ADDON_7-$ADDON_7_VER.zip' './$ADDON_8/$ADDON_8-$ADDON_8_VER.zip
# ADDONS=./$ADDON_1/$ADDON_1-$ADDON_1_VER.zip' './$ADDON_2/$ADDON_2-$ADDON_2_VER.zip' './$ADDON_3/$ADDON_3-$ADDON_3_VER.zip' './$ADDON_4/$ADDON_4-$ADDON_4_VER.zip' './$ADDON_5/$ADDON_5-$ADDON_5_VER.zip' './$ADDON_6/$ADDON_6-$ADDON_6_VER.zip' './$ADDON_7/$ADDON_7-$ADDON_7_VER.zip

# echo $ADDONS

read -r -p "Do you want to update Gamestarter Repo? [y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
	cd ./repository.gamestarter
	python create_repository.py $ADDONS
esac

echo "done!"